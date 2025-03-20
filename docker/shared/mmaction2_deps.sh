#!/bin/bash

# Install PyTorch
pip3 install torch torchvision torchaudio

# Install openmim and building blocks
pip install -U openmim
mim install mmengine
mim install "mmcv==2.1.0"
mim install mmdet
mim install mmpose
pip install importlib-metadata

# Install mmaction2 by source (necessary for some utils it provides)
git clone https://github.com/open-mmlab/mmaction2.git
cd mmaction2
pip install -v -e .
# "-v" means verbose, or more output
# "-e" means installing a project in editable mode,
# thus any local modifications made to the code will take effect without re-installation.