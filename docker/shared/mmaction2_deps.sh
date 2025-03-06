#!/bin/bash

# Install openmim and building blocks
pip install -U openmim
mim install mmengine
mim install mmcv
mim install mmdet
mim install mmpose

# Install mmaction2 by source (necessary for some utils it provides)
git clone https://github.com/open-mmlab/mmaction2.git
cd mmaction2
pip install -v -e .
# "-v" means verbose, or more output
# "-e" means installing a project in editable mode,
# thus any local modifications made to the code will take effect without re-installation.