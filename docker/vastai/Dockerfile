FROM vastai/pytorch:2.6.0-cuda-12.6.3-py312
# This ensures files can be properly synced between instances
WORKDIR /opt/workspace-internal/

# Activate virtual environment from base image 
RUN . /venv/main/bin/activate

# Copy mmaction2 installation script and exec it
COPY /shared/mmaction2_deps.sh /scripts/mmaction2_deps.sh
RUN chmod +x /scripts/mmaction2_deps.sh && /scripts/mmaction2_deps.sh

# The installation of MMAction2 does not contain any custom modifications
# We will have to use the train methods