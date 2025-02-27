FROM vastai/pytorch:2.6.0-cuda-12.6.3-py312
# This ensures files can be properly synced between instances
WORKDIR /opt/workspace-internal/

# Activate virtual environment from base image 
RUN . /venv/main/bin/activate

# Copy mmaction2 installation script and exec it
COPY ../shared/mmaction2_deps.sh /scripts/mmaction2_deps.sh
RUN chmod +x /scripts/mmaction2.sh && /scripts/mmaction2.sh

# Pull dataset and extract it
COPY ../shared/create_dataset.sh /scripts/create_dataset.sh
RUN chmod +x /scripts/create_dataset.sh && /scripts/create_dataset.sh