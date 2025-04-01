# Presentation trainer
Repository for hosting the presentation trainer.

The *docker* directory contains the Dockerfiles needed for building the image with MMAction2 and the required dependencies

# Execution steps
You can follow this steps to get mmaction2 up and running on a system
```bash
sudo apt-get update && apt-get install -y git libgl1 libglib2.0-0
python3 -m venv mma2venv
source ./mma2venv/bin/activate
which python            # Should be the one in the venv
git clone https://github.com/alvxrog/presentationtrainer
bash ./docker/shared/mmaction2_deps.sh
bash ./create-dataset
```