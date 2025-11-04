# Use the latest stable Rust image as base
FROM rust:1.89.0

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    pkg-config \
    libssl-dev \
    ca-certificates \
    python3 \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && apt-get update \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# Install additional Rust components
RUN rustup component add clippy rustfmt rust-src

# Note: Modern Cargo (1.62+) has built-in cargo add/remove commands
# No need to install cargo-edit separately

# Install Python package manager and Jupyter
RUN curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py && \
    python3 /tmp/get-pip.py --break-system-packages && \
    rm /tmp/get-pip.py

# Install Jupyter and JupyterLab
RUN python3 -m pip install --break-system-packages --no-warn-script-location \
    jupyter \
    jupyterlab

# Install evcxr_jupyter kernel
RUN cargo install evcxr_jupyter && \
    evcxr_jupyter --install

# Set the default user
USER $USERNAME

# Set working directory
WORKDIR /workspace

# Verify installation
RUN rustc --version && cargo --version
