#!/bin/bash

# Download and extract the Presentation trainer Dataset
cd /workspace
git clone https://github.com/alvxrog/presentationtrainer-dataset
cd ./presentationtrainer-dataset
chmod +x ./ptv1_downloader.sh && ./ptv1_downloader.sh
chmod +x ./ptv1_extractor.sh && ./ptv1_extractor.sh
python format_for_mmaction2.py

# Move the swin config to the mmaction2 config dir
cp ./mmaction2/swin_ptv2.py ../mmaction2/configs/recognition/swin/swin_ptv1.py