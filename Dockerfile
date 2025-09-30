# Use Ubuntu 25.04 as base image
FROM ubuntu:25.04

# Avoid interactive prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies and mlpack
RUN apt-get update && apt-get install -y \
    git \
    make \
    g++ \
    libcurl4-openssl-dev \
    libmlpack-dev \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /workspace

# Clone your repository
RUN git clone https://github.com/taylanot/lcpp.git

# Move into the repo and run install.sh
WORKDIR /workspace/lcpp
RUN ./install.sh && cd .. && rm -r lcpp

# Go back to workspace as default
WORKDIR /workspace

# Default command
CMD ["bash"]
