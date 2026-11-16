# Figure: the two-loop running of the Standard Model couplings, computed and solved with PyR@TE 3. PyR@TE needs
# h5py, which Sage's Python does not ship, so this runs scripts/pyrate_sm.py with the Python named by PYTHON (default
# python3), which must have numpy, scipy, sympy, matplotlib, h5py and PyYAML.
# Output: figures/pyrate_sm_running.svg (and pyrate/pyrate_sm.log, pyrate/SM.pdf).
import os, subprocess
HERE = os.path.dirname(os.path.abspath(__file__))
subprocess.run([os.environ.get("PYTHON", "python3"), os.path.join(HERE, "..", "scripts", "pyrate_sm.py")], check=True)
