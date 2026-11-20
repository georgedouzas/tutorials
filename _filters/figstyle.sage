# Shared style for the tutorials' figure scripts (openspec/changes/maths-physicists-content, design M5).
#
# A figure script lives next to its figure as <chapter>/figures/<name>.sage, runs from the chapter folder with
#     sage figures/<name>.sage
# and starts with
#     load("../../_filters/figstyle.sage")
# It then draws with Sage and saves with save_figure / save_threejs / save_plotly below, which write
# figures/<name>.svg (or .png), figures/interactive/<name>.html.
#
# Figures are drawn for a light page. In dark mode the site shows them on a light card (--site-figure-card in
# theme-dark.scss), so one version serves both themes: dark ink, the site's block colours, transparent background.
# Labels follow the site notation (_notation/).

import json as _json
import os as _os

import matplotlib as _mpl

# The site palette (theme.scss): accent and the three block colours, then neutral inks.
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
})


def _path(name, ext, sub=""):
    d = _os.path.join("figures", sub) if sub else "figures"
    _os.makedirs(d, exist_ok=True)
    return _os.path.join(d, name + ext)


def save_figure(g, name, figsize=(5, 4), raster=False, **kw):
    """Save a 2D Sage Graphics object as figures/<name>.svg (figures/<name>.png if raster)."""
    path = _path(name, ".png" if raster else ".svg")
    opts = dict(figsize=figsize, fontsize=FONT_SIZE, transparent=True, axes_labels_size=1.0)
    if raster:
        opts["dpi"] = 200
    opts.update(kw)
    g.save(path, **opts)
    print("wrote", path)
    return path


def save_matplotlib(fig, name, raster=False):
    """Save a matplotlib Figure (for layouts Sage's Graphics cannot express) as figures/<name>.svg or .png."""
    path = _path(name, ".png" if raster else ".svg")
    fig.savefig(path, transparent=True, bbox_inches="tight", dpi=200 if raster else None)
    print("wrote", path)
    return path


def save_threejs(g, name, still=None, **kw):
    """Save a 3D Sage Graphics3d object as an interactive threejs page figures/interactive/<name>.html, and, if
    still is given (a 2D Graphics or a callable returning one), the static figures/<name>.svg for the PDF."""
    path = _path(name, ".html", "interactive")
    opts = dict(viewer="threejs", frame=False, online=True)
    opts.update(kw)
    g.save(path, **opts)
    print("wrote", path)
    if still is not None:
        save_figure(still() if callable(still) else still, name)
    return path


def _plain(x):
    """JSON fallback for Sage numbers: an exact integer becomes an int, anything else numeric a float."""
    try:
        return int(x) if x == int(x) else float(x)
    except (TypeError, ValueError):
        return float(x)


def save_plotly(traces, name, layout=None):
    """Write an interactive Plotly.js page figures/interactive/<name>.html from plain trace dicts (lists of
    floats, not Sage numbers), in the same form as the existing interactive figures."""
    lay = {"margin": {"l": 40, "r": 10, "t": 10, "b": 40}, "paper_bgcolor": "rgba(0,0,0,0)",
           "plot_bgcolor": "rgba(0,0,0,0)", "font": {"color": INK, "size": 13}, "showlegend": True}
    lay.update(layout or {})
    html = ("<!DOCTYPE html><html><head><meta charset='utf-8'>"
            "<script src='https://cdn.plot.ly/plotly-2.35.2.min.js'></script></head><body style='margin:0'>"
            "<div id='fig' style='width:100%;height:100vh'></div><script>Plotly.newPlot('fig', "
            + _json.dumps(traces, default=_plain) + ", " + _json.dumps(lay, default=_plain) + ", {responsive: true});</script></body></html>")
    path = _path(name, ".html", "interactive")
    open(path, "w").write(html)
    print("wrote", path)
    return path


def floats(xs):
    """Sage numbers to plain floats, for JSON."""
    return [float(x) for x in xs]
