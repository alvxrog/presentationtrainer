FROM pytorch/pytorch:2.6.0-cuda12.4-cudnn9-runtime
# This ensures files can be properly synced between instances
WORKDIR /opt/workspace-internal/

RUN apt-get update && apt-get install -y \
    git libgl1 libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Crear y activar un venv
RUN python3 -m venv venv && \
    /opt/workspace-internal/venv/bin/python -m ensurepip && \
    /opt/workspace-internal/venv/bin/pip install --upgrade pip

ENV PATH="/opt/workspace-internal/venv/bin:$PATH"

# Copy mmaction2 installation script and exec it
COPY /shared/mmaction2_deps.sh /scripts/mmaction2_deps.sh
RUN chmod +x /scripts/mmaction2_deps.sh && /scripts/mmaction2_deps.sh
