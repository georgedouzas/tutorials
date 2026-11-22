"""Shared style for the tutorials' Python figure scripts, ported from figstyle.sage
(openspec/changes/complexity-and-system-design-tutorials, design C5).

A figure script lives next to its figure as <chapter>/figures/<name>.py and runs from the chapter folder with the
tutorial's environment, for example
    ../../.venv-complexity/bin/python figures/<name>.py
(`check_content.py <tutorial> --figures` runs it with the profile's runner). It starts with
    import os, sys
    sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
    from figstyle import *
then draws with matplotlib and saves with save_figure / save_plotly below, which write figures/<name>.svg (or .png)
and figures/interactive/<name>.html, as the Sage scripts do.

Figures are drawn for a light page. In dark mode the site shows them on a light card (--site-figure-card in
theme-dark.scss), so one version serves both themes: dark ink, the site's block colours, transparent background.
Labels follow the site notation (_notation/). Only matplotlib is needed; plotly is optional (save_plotly also accepts
a plotly Figure).
"""
import json as _json
import os as _os

import matplotlib as _mpl

_mpl.use("Agg")
import matplotlib.pyplot as plt  # noqa: E402  (re-exported for the scripts)

# The site palette (theme.scss): accent and the three block colours, then neutral inks. Same values as figstyle.sage.
INK = "#1f2328"
MUTED = "#6b7280"
GRID = "#d0d5dc"
ACCENT = "#1d5b99"      # blue: the main object
STATEMENT = "#a33a2c"   # red: the second object, or what is highlighted
EXAMPLE = "#2b7448"     # green
EXERCISE = "#6247a8"    # violet
ORANGE = "#b8650f"      # a fifth series colour, for plots with many curves
SERIES = [ACCENT, STATEMENT, EXAMPLE, EXERCISE, ORANGE, MUTED]

FONT_SIZE = 11

_mpl.rcParams.update({
    "font.family": "sans-serif",
    "font.sans-serif": ["Helvetica Neue", "Helvetica", "Arial", "DejaVu Sans"],
    "mathtext.fontset": "cm",
    "font.size": FONT_SIZE,
    "text.color": INK,
    "axes.labelcolor": INK,
    "axes.edgecolor": MUTED,
    "xtick.color": MUTED,
    "ytick.color": MUTED,
    "axes.prop_cycle": _mpl.cycler(color=SERIES),
    "svg.fonttype": "path",
    "svg.hashsalt": "tutorials",   # stable ids, so a re-run with the same data gives the same file
    "figure.figsize": (5, 4),
    "savefig.transparent": True,
})

__all__ = ["plt", "INK", "MUTED", "GRID", "ACCENT", "STATEMENT", "EXAMPLE", "EXERCISE", "ORANGE", "SERIES",
           "FONT_SIZE", "save_figure", "save_matplotlib", "save_plotly", "floats"]


def _path(name, ext, sub=""):
    d = _os.path.join("figures", sub) if sub else "figures"
    _os.makedirs(d, exist_ok=True)
    return _os.path.join(d, name + ext)


def save_figure(fig, name, raster=False):
    """Save a matplotlib Figure as figures/<name>.svg (figures/<name>.png if raster), transparent, and close it."""
    path = _path(name, ".png" if raster else ".svg")
    fig.savefig(path, transparent=True, bbox_inches="tight", dpi=200 if raster else None,
                metadata=None if raster else {"Date": None})
    plt.close(fig)
    print("wrote", path)
    return path


save_matplotlib = save_figure  # the name figstyle.sage uses for matplotlib figures


def _plain(x):
    """JSON fallback for NumPy numbers and arrays."""
    if hasattr(x, "tolist"):
        return x.tolist()
    try:
        return int(x) if x == int(x) else float(x)
    except (TypeError, ValueError):
        return float(x)


def save_plotly(traces, name, layout=None):
    """Write an interactive Plotly.js page figures/interactive/<name>.html, in the same form as figstyle.sage's.

    traces is a list of plain trace dicts (NumPy arrays are converted), or a plotly Figure, whose data and layout are
    used (layout then updates the figure's own)."""
    lay = {"margin": {"l": 40, "r": 10, "t": 10, "b": 40}, "paper_bgcolor": "rgba(0,0,0,0)",
           "plot_bgcolor": "rgba(0,0,0,0)", "font": {"color": INK, "size": 13}, "showlegend": True}
    if hasattr(traces, "to_plotly_json"):
        spec = traces.to_plotly_json()
        traces = spec.get("data", [])
        own = dict(spec.get("layout", {}))
        own.pop("template", None)
        lay.update(own)
    lay.update(layout or {})
    html = ("<!DOCTYPE html><html><head><meta charset='utf-8'>"
            "<script src='https://cdn.plot.ly/plotly-2.35.2.min.js'></script></head><body style='margin:0'>"
            "<div id='fig' style='width:100%;height:100vh'></div><script>Plotly.newPlot('fig', "
            + _json.dumps(traces, default=_plain) + ", " + _json.dumps(lay, default=_plain)
            + ", {responsive: true});</script></body></html>")
    path = _path(name, ".html", "interactive")
    with open(path, "w") as f:
        f.write(html)
    print("wrote", path)
    return path


def floats(xs):
    """Numbers to plain floats, for JSON."""
    return [float(x) for x in xs]
