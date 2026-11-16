"""Compute the two-loop Standard Model RGEs with PyR@TE 3, solve them and plot the running couplings.

PyR@TE is not a pip package, so the script fetches it at a pinned commit (or uses PYRATE_DIR if set), runs it on
pyrate/SM.model, and writes:

    pyrate/pyrate_sm.log           what PyR@TE printed while computing the RGEs
    pyrate/SM.pdf                  the RGEs typeset by PyR@TE (needs pdflatex)
    figures/pyrate_sm_running.svg  the running couplings (figures/pyrate_sm_running.sage runs this script)

Usage: python3 scripts/pyrate_sm.py     (needs numpy, scipy, sympy, matplotlib, h5py and PyYAML)
"""
import importlib.util
import os
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt  # noqa: E402
from numpy import pi, sqrt  # noqa: E402

PYRATE_REPO = "https://github.com/LSartore/pyrate.git"
PYRATE_COMMIT = "04b219c2016f3fc4f2371d72607edc26a7e06364"
POST = Path(__file__).resolve().parent.parent


def pyrate_dir(work):
    if os.environ.get("PYRATE_DIR"):
        return Path(os.environ["PYRATE_DIR"])
    d = work / "pyrate"
    subprocess.run(["git", "clone", "-q", PYRATE_REPO, str(d)], check=True)
    subprocess.run(["git", "-C", str(d), "checkout", "-q", PYRATE_COMMIT], check=True)
    return d


def main():
    work = Path(tempfile.mkdtemp(prefix="pyrate-"))
    src = pyrate_dir(work)
    run = work / "run"
    shutil.copytree(src, run, ignore=shutil.ignore_patterns(".git", "results", "log"))
    shutil.copy(POST / "pyrate" / "SM.model", run / "models" / "SM.model")

    # Run PyRate to compute the 2-loop RGEs of the Standard Model
    res = subprocess.run([sys.executable, "pyR@TE.py", "--no-MathematicaOutput", "-m", "models/SM.model", "-l", "2"],
                         cwd=run, capture_output=True, text=True)
    (POST / "pyrate" / "pyrate_sm.log").write_text(res.stdout + res.stderr, encoding="utf-8")
    res.check_returncode()
    out = run / "results" / "SM"
    if (out / "SM.pdf").exists():
        shutil.copy(out / "SM.pdf", POST / "pyrate" / "SM.pdf")

    # Solve the RGEs and plot the results
    sys.path.insert(0, str(out / "PythonOutput"))
    spec = importlib.util.spec_from_file_location("SM", out / "PythonOutput" / "SM.py")
    SM = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(SM)
    RGEsolver = SM.RGEsolver

    # Create solver object
    rge = RGEsolver('rge', tmin=1.9, tmax=20, initialScale=1.9)

    # Running scheme
    rge.loops = {'GaugeCouplings': 2,
                 'Yukawas': 2,
                 'QuarticTerms': 2,
                 'ScalarMasses': 2,
                 'Vevs': 2}

    # Gauge Couplings
    rge.g1.initialValue = sqrt(4*pi/128 / (1-.22)) * sqrt(5/3)
    rge.g2.initialValue = sqrt(4*pi/128 / .22)
    rge.g3.initialValue = sqrt(4*pi*.12)

    # Yukawa Couplings
    rge.yt.initialValue = .9
    rge.yb.initialValue = .03
    rge.ytau.initialValue = .01

    # Quartic Couplings
    rge.lambda_.initialValue = 0.13/2

    # Scalar Mass Couplings
    rge.mu.initialValue = sqrt(.13) * 246

    # Vacuum-expectation values
    rge.v.initialValue = 246

    # Choose Landau gauge
    rge.fixGauge(0)

    # Solve the system of RGEs
    rge.solve(step=.05)

    # Plot the results
    rge.plot(figSize=(1100, 1000), subPlots=True, printLoopLevel=True)
    fig = POST / "figures" / "pyrate_sm_running.svg"
    plt.gcf().savefig(fig, bbox_inches="tight")
    print("saved", fig.relative_to(POST))

    # Checks on the plotted quantities
    sol = {k: [float(x) for x in v] for k, v in rge.solutions.items()}
    g3, g1, lam = sol["g3"], sol["g1"], sol["lambda_"]
    t = [float(x) for x in rge.tList]
    tneg = next(ti for ti, li in zip(t, lam) if li < 0)
    for ok, msg in [
        (all(a > b for a, b in zip(g3, g3[1:])), f"g3 decreases from {g3[0]:.3f} to {g3[-1]:.3f}"),
        (all(a < b for a, b in zip(g1, g1[1:])), f"g1 increases from {g1[0]:.3f} to {g1[-1]:.3f}"),
        (lam[0] > 0 and lam[-1] < 0, f"lambda turns negative at t = {tneg:.2f}, mu = 10^{tneg:.2f} GeV"),
    ]:
        print(("[PASS] " if ok else "[FAIL] ") + msg)
    shutil.rmtree(work, ignore_errors=True)


if __name__ == "__main__":
    main()
