"""Rebuild _filters/cross-references.json from the tutorial sources.

Run it from the project root after adding, removing or renaming a label:

    .venv/bin/python _filters/harvest.py

It reads the pages listed in the sidebar of _quarto.yml, numbers each kind of block per page in order (as Quarto does,
with number-sections off), and writes one label group per set of tutorials that link to each other. It reports labels
defined on two pages of a group and references that resolve nowhere, and exits non-zero if there are any.
"""
import json
import re
import sys
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent
GROUPS = {
    "physics": ["fundamentals-of-mathematics-for-physicists", "fundamentals-of-theoretical-physics", "kaluza-klein-theories"],
    "machine-learning": ["fundamentals-of-mathematics-for-machine-learning", "fundamentals-of-machine-learning"],
}
KINDS = {"def": "Definition", "thm": "Theorem", "lem": "Lemma", "cor": "Corollary", "prp": "Proposition",
         "cnj": "Conjecture", "exm": "Example", "exr": "Exercise", "rem": "Remark", "alg": "Algorithm",
         "fig": "Figure", "tbl": "Table", "eq": "Equation"}
PREFIXES = "|".join(["sec", *KINDS])
LABEL = re.compile(r"\{#((?:" + "|".join(KINDS) + r")-[\w-]+)(?=[\s}]|$)")
HEADING = re.compile(r"^(#{1,6})\s+(.*?)\s*\{#(sec-[\w-]+)[^}]*\}\s*$")
USE = re.compile(r"(?<![\w.])@((?:" + PREFIXES + r")-[\w-]*\w)")


def pages():
    """Every page of the sidebar, as paths relative to the project root."""
    config = yaml.safe_load((ROOT / "_quarto.yml").read_text())

    def walk(items):
        for item in items:
            if isinstance(item, str):
                yield item
            else:
                if "href" in item:
                    yield item["href"]
                yield from walk(item.get("contents", []))

    for sidebar in config["website"]["sidebar"]:
        yield from walk(sidebar["contents"])


def plain(markdown):
    """Heading text without markup."""
    text = re.sub(r"\[([^\]]*)\]\([^)]*\)", r"\1", markdown)
    text = re.sub(r"\*\*|`|\$", "", text).replace("\\*", "*")
    return text.replace("'", "’").strip()


def without_code(text):
    return re.sub(r"^(```|~~~).*?^\1\s*$", "", text, flags=re.S | re.M)


def harvest(path):
    text = path.read_text(encoding="utf-8")
    front = re.match(r"^---\n(.*?)\n---\n", text, re.S)
    meta = yaml.safe_load(front.group(1)) if front else {}
    title = meta.get("pagetitle") or meta.get("title") or ""
    body = without_code(text[front.end():] if front else text)
    labels, counts = {}, {}
    for line in body.split("\n"):
        heading = HEADING.match(line)
        if heading:
            labels[heading.group(3)] = plain(heading.group(2))
        for label in LABEL.findall(line):
            kind = label.split("-")[0]
            counts[kind] = counts.get(kind, 0) + 1
            labels[label] = f"{KINDS[kind]} {counts[kind]} of {title}"
    return labels, set(USE.findall(body))


def dump(out):
    """The index as JSON with one label per line, sorted, so that a change shows as a short diff."""
    lines = ['{"groups": {']
    for g, (name, group) in enumerate(out["groups"].items()):
        lines.append(f'"{name}": {{"tutorials": {json.dumps(group["tutorials"])}, "labels": {{')
        items = sorted(group["labels"].items())
        lines += [f"{json.dumps(k)}: {json.dumps(v, ensure_ascii=False)}" + ("," if i < len(items) - 1 else "")
                  for i, (k, v) in enumerate(items)]
        lines.append("}}" + ("," if g < len(out["groups"]) - 1 else ""))
    return "\n".join(lines + ["}}"]) + "\n"


def main():
    out, problems = {"groups": {}}, []
    for group, tutorials in GROUPS.items():
        labels, used = {}, set()
        for page in pages():
            tutorial, _, rest = page.partition("/")
            if tutorial not in tutorials or not rest:
                continue
            found, uses = harvest(ROOT / page)
            used |= uses
            target = rest.replace(".qmd", ".html")
            for label, text in found.items():
                if label in labels and labels[label]["page"] != target:
                    problems.append(f"{group}: {label} defined on {labels[label]['page']} and {target}")
                labels.setdefault(label, {"post": tutorial, "page": target, "text": text})
        problems += [f"{group}: @{label} is used but defined nowhere" for label in sorted(used - set(labels))]
        out["groups"][group] = {"tutorials": tutorials, "labels": labels}
        print(f"{group}: {len(labels)} labels")
    (ROOT / "_filters" / "cross-references.json").write_text(dump(out), encoding="utf-8")
    print("\n".join(problems) or "no problems")
    return 1 if problems else 0


if __name__ == "__main__":
    sys.exit(main())
