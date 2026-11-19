"""Mechanical reference check (design A2, A10).

Reads references/references.bib, the written chapters (sidebar order) and a snapshot of the Zotero database, and writes
audit/entries.md (entry-level findings) and audit/<tutorial>.md (first pass: per-chapter and per-section findings).
Existing audit records are not overwritten: the per-tutorial output goes to audit/<tutorial>.check.md, which the
audit record (audit/<tutorial>.md) copies from on its first pass.

Run from the repo root:  .venv/bin/python openspec/changes/tutorials-reference-audit/audit/check.py [--arxiv] [chapter ...]
  --arxiv      also check that arXiv identifiers resolve (one batched request to export.arxiv.org)
  chapter ...  limit the per-chapter report to these <tutorial>/<slug> pages (prints a summary for each)
"""

import collections
import pathlib
import re
import shutil
import sqlite3
import sys
import tempfile
import urllib.request

import yaml

ROOT = pathlib.Path(__file__).resolve().parents[5]
OUT = pathlib.Path(__file__).parent
ZOTERO = pathlib.Path.home() / "Zotero" / "zotero.sqlite"
TUTORIALS = [
    "fundamentals-of-mathematics-for-machine-learning",
    "fundamentals-of-machine-learning",
    "kaluza-klein-theories",
    "fundamentals-of-mathematics-for-physicists",
    "fundamentals-of-theoretical-physics",
]
NOT_SUBJECT = {"glossary", "preface", "notation", "conventions"}  # exempt from the A10 minimum
MIN_WORKS, MIN_TEXTBOOKS = 8, 3
XREF = re.compile(r"^(sec|def|thm|prp|lem|cor|exm|exr|eq|fig|tbl|rem|nte|alg|lst|ssec)-")
BRACKET = re.compile(r"\[([^\[\]]*@[^\[\]]*)\]")
CITE = re.compile(r"(?<![\w@.])-?@([A-Za-z][\w:.#$%&+?<>~/-]*[\w])")


def bib_entries():
    text = (ROOT / "references/references.bib").read_text()
    entries = {}
    for m in re.finditer(r"@(\w+)\s*\{\s*([^,\s]+)\s*,(.*?)\n\}", text, re.S):
        kind, key, body = m.groups()
        fields = {k.lower(): v.strip() for k, v in re.findall(r"(\w+)\s*=\s*\{((?:[^{}]|\{[^{}]*\})*)\}", body)}
        fields["_type"] = kind.lower()
        entries[key] = fields
    return entries


def sidebar_pages():
    cfg = yaml.safe_load((ROOT / "_quarto.yml").read_text())
    found = []

    def walk(node):
        if isinstance(node, dict):
            for v in node.values():
                walk(v)
        elif isinstance(node, list):
            for v in node:
                walk(v)
        elif isinstance(node, str) and node.endswith("/index.qmd") and node.count("/") == 2:
            found.append(node)

    walk(cfg.get("website", {}).get("sidebar"))
    return found


def strip_code(text):
    out, code = [], False
    for line in text.split("\n"):
        if re.match(r"^\s*(```+|~~~+)\s*(\{[^}]*\}|[\w.+-]+)?\s*$", line):  # a fence line, not an inline ``` span
            code = not code
            out.append("")
            continue
        out.append("" if code else line)
    return out


def citations(lines, bib):
    """Yield (line_no, key, has_locator) for every bibliographic citation."""
    for i, line in enumerate(lines, 1):
        spans = []
        for m in BRACKET.finditer(line):
            spans.append(m.span())
            for part in m.group(1).split(";"):
                cm = CITE.search(part)
                if cm and not XREF.match(cm.group(1)):
                    rest = part[cm.end():].strip(" ,")
                    yield i, cm.group(1), bool(rest)
        for cm in CITE.finditer(line):
            if any(a <= cm.start() < b for a, b in spans) or XREF.match(cm.group(1)):
                continue
            after = line[cm.end():]
            yield i, cm.group(1), bool(re.match(r"\s*\[[^\]@]+\]", after))


def zotero_snapshot():
    tmp = pathlib.Path(tempfile.mkdtemp())
    for suffix in ("", "-wal", "-shm"):
        src = pathlib.Path(str(ZOTERO) + suffix)
        if src.exists():
            shutil.copy(src, tmp / ("zotero.sqlite" + suffix))
    con = sqlite3.connect(tmp / "zotero.sqlite")
    q = lambda sql, *a: con.execute(sql, a).fetchall()
    ids = dict(q("SELECT key, itemID FROM items"))
    ckey = dict(q("""SELECT i.key, v.value FROM items i JOIN itemData d ON d.itemID=i.itemID
                     JOIN fields f ON f.fieldID=d.fieldID JOIN itemDataValues v ON v.valueID=d.valueID
                     WHERE f.fieldName='citationKey'"""))
    pdfs = collections.defaultdict(list)
    for parent, key in q("""SELECT p.key, a.key FROM itemAttachments t JOIN items a ON a.itemID=t.itemID
                            JOIN items p ON p.itemID=t.parentItemID WHERE t.contentType='application/pdf'"""):
        pdfs[parent].append(key)
    notes = {r[0] for r in q("""SELECT p.key FROM itemNotes n JOIN items p ON p.itemID=n.parentItemID
                                JOIN itemTags it ON it.itemID=n.itemID JOIN tags t ON t.tagID=it.tagID
                                WHERE t.name='tutorial-reading-note'""")}
    textbooks = {r[0] for r in q("""SELECT i.key FROM collectionItems ci JOIN collections c ON c.collectionID=ci.collectionID
                                    JOIN items i ON i.itemID=ci.itemID WHERE c.collectionName='Textbooks'""")}
    deleted = {r[0] for r in q("SELECT i.key FROM deletedItems d JOIN items i ON i.itemID=d.itemID")}
    con.close()
    shutil.rmtree(tmp)
    return ids, ckey, pdfs, notes, textbooks, deleted


def arxiv_unresolved(ids):
    """HEAD each https://arxiv.org/abs/<id>, one per second, backing off on HTTP 429."""
    import time
    import urllib.error

    bad = set()
    for i in sorted(ids):
        for attempt in range(5):
            req = urllib.request.Request(f"https://arxiv.org/abs/{i}", method="HEAD",
                                         headers={"User-Agent": "reference-check/1.0"})
            try:
                urllib.request.urlopen(req, timeout=60)
                break
            except urllib.error.HTTPError as e:
                if e.code == 429:
                    time.sleep(10 * (attempt + 1))
                    continue
                bad.add(i)
                break
            except urllib.error.URLError:
                time.sleep(5)
        time.sleep(1)
    return bad


def main(argv):
    check_arxiv = "--arxiv" in argv
    only = {a for a in argv if not a.startswith("--")}
    bib = bib_entries()
    ids, ckey, pdfs, notes, zot_textbooks, deleted = zotero_snapshot()
    is_textbook = lambda k: "textbook" in bib[k].get("keywords", "") or bib[k].get("zotero") in zot_textbooks

    pages = [p for p in sidebar_pages() if p.split("/")[0] in TUTORIALS]
    cited_anywhere = collections.Counter()
    missing_keys = collections.defaultdict(set)
    report = {}
    for page in pages:
        tutorial, slug, _ = page.split("/")
        text = (ROOT / page).read_text()
        if "This chapter is in preparation." in text:
            continue
        lines = strip_code(text)
        cites = list(citations(lines, bib))
        works, no_loc = set(), []
        for ln, key, loc in cites:
            if key not in bib:
                missing_keys[key].add(f"{tutorial}/{slug}:{ln}")
                continue
            works.add(key)
            cited_anywhere[key] += 1
            if not loc:
                no_loc.append((ln, key))
        sections, current = [], None
        for i, line in enumerate(lines, 1):
            m = re.match(r"^##\s+(.*?)\s*(\{#(sec-[\w-]+)[^}]*\})?\s*$", line)
            if m and not line.startswith("###"):
                current = {"title": m.group(1), "id": m.group(3) or "", "start": i, "works": set()}
                sections.append(current)
        for ln, key, _ in cites:
            for s in reversed(sections):
                if s["start"] <= ln and key in bib:
                    s["works"].add(key)
                    break
        report[(tutorial, slug)] = {
            "works": works,
            "textbooks": {k for k in works if is_textbook(k)},
            "no_locator": no_loc,
            "sections": sections,
            "subject": slug not in NOT_SUBJECT,
        }

    # entry-level findings
    arx = {}
    for k, f in bib.items():
        eid = f.get("eprint") if f.get("archiveprefix", "").lower() == "arxiv" or "arxiv" in f.get("journal", "").lower() else None
        if eid:
            arx[eid] = k
    unresolved = arxiv_unresolved(set(arx)) if check_arxiv else set()
    E = []
    for k, f in sorted(bib.items()):
        z = f.get("zotero")
        problems = []
        if not cited_anywhere[k]:
            problems.append("cited nowhere")
        if not z:
            problems.append("no `zotero` field")
        elif z not in ids or z in deleted:
            problems.append(f"zotero item {z} missing or in trash")
        else:
            if ckey.get(z) != k:
                problems.append(f"citation key in Zotero is `{ckey.get(z)}`")
            if not pdfs.get(z):
                problems.append("no PDF in Zotero")
            elif f.get("zoteropdf") not in pdfs[z]:
                problems.append(f"`zoteropdf` {f.get('zoteropdf')} is not a PDF of the item ({', '.join(pdfs[z])})")
            if z not in notes:
                problems.append("no reading note")
        if f.get("eprint") in unresolved:
            problems.append(f"arXiv {f.get('eprint')} does not resolve")
        if problems:
            E.append((k, problems))

    n_tb = sum(1 for k in bib if is_textbook(k))
    lines = [
        "# Entry-level findings",
        "",
        "Generated by `check.py`" + (" (arXiv checked)" if check_arxiv else " (arXiv not checked; run with --arxiv)") + ".",
        "",
        f"- Bibliography entries: {len(bib)}; textbooks (bib keyword or Zotero Textbooks collection): {n_tb}.",
        f"- Entries cited nowhere: {sum(1 for k in bib if not cited_anywhere[k])}.",
        f"- Keys cited but missing from the bib: {len(missing_keys)}.",
        "",
        "## Keys cited but missing from the bib",
        "",
    ]
    lines += [f"- `{k}`: {', '.join(sorted(v))}" for k, v in sorted(missing_keys.items())] or ["None."]
    lines += ["", "## Entries with findings", "", "| Key | Findings | Resolution |", "|---|---|---|"]
    kept = {}  # keep the Resolution column of the previous run
    if (OUT / "entries.md").exists():
        for m in re.finditer(r"^\| `([^`]+)` \| [^|]*\| (.*?) \|$", (OUT / "entries.md").read_text(), re.M):
            kept[m.group(1)] = m.group(2).strip()
    lines += [f"| `{k}` | {'; '.join(p)} | {kept.get(k, '')} |" for k, p in E]
    (OUT / "entries.md").write_text("\n".join(lines) + "\n")

    for tutorial in TUTORIALS:
        L = [f"# Mechanical findings: {tutorial}", "", "Generated by `check.py`. Copied into the audit record's first pass.", "",
             "| Chapter | Works | Textbooks | Meets A10 | Citations without locator | Sections citing nothing |",
             "|---|---|---|---|---|---|"]
        detail = []
        for (t, slug), r in report.items():
            if t != tutorial:
                continue
            empty = [s for s in r["sections"] if not s["works"] and not s["title"].startswith("Exercises")]
            meets = "exempt" if not r["subject"] else ("yes" if len(r["works"]) >= MIN_WORKS and len(r["textbooks"]) >= MIN_TEXTBOOKS else "no")
            L.append(f"| {slug} | {len(r['works'])} | {len(r['textbooks'])} | {meets} | {len(r['no_locator'])} | {len(empty)} |")
            detail += ["", f"## {slug}", "", f"Works cited: {', '.join(f'`{k}`' for k in sorted(r['works'])) or 'none'}.", "",
                       "| Section | Works cited |", "|---|---|"]
            detail += [f"| {s['title']} (`{s['id']}`) | {', '.join(sorted(s['works'])) or '**none**'} |" for s in r["sections"]]
            if r["no_locator"]:
                detail += ["", "Citations without a locator: " + ", ".join(f"`{k}` (line {ln})" for ln, k in r["no_locator"]) + "."]
        (OUT / f"{tutorial}.check.md").write_text("\n".join(L + detail) + "\n")

    for (t, slug), r in report.items():
        if only and f"{t}/{slug}" not in only:
            continue
        empty = sum(1 for s in r["sections"] if not s["works"] and not s["title"].startswith("Exercises"))
        print(f"{t}/{slug}: works {len(r['works'])}, textbooks {len(r['textbooks'])}, "
              f"no locator {len(r['no_locator'])}, sections citing nothing {empty}")
    print(f"bib entries {len(bib)}, textbooks {n_tb}, cited nowhere {sum(1 for k in bib if not cited_anywhere[k])}, "
          f"missing keys {len(missing_keys)}, entries with findings {len(E)}")


if __name__ == "__main__":
    main(sys.argv[1:])
