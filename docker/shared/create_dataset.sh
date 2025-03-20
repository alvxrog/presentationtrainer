#!/bin/bash

# Download and extract the Presentation trainer Dataset
git clone https://github.com/alvxrog/presentationtrainer-dataset
cd ./presentationtrainer-dataset
chmod +x ./ptv1_downloader.sh && ./ptv1_downloader.sh
chmod +x ./ptv1_extractor.sh && ./ptv1_extractor.sh
python format_for_mmaction2.py

# Clone presentationtrainer repo
git clone https://github.com/alvxrog/presentationtrainer