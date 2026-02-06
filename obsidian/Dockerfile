# Base Ubuntu devcontainer image
FROM ubuntu:25.04

# Avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install basics + GUI deps
RUN apt update && apt install -y --no-install-recommends \
    bash git curl wget unzip sudo \
    libx11-6 libxkbcommon-x11-0 libnss3 \
    libasound2t64 libasound2-plugins \
    libxext6 libxdamage1 libxfixes3 libxcomposite1 libxi6 \
    libxtst6 libglib2.0-0 libgl1-mesa-dri libdrm2 \
    x11-apps pulseaudio \
    && rm -rf /var/lib/apt/lists/*
    
# Install net-tools (for ifconfig)
RUN apt update && apt install -y net-tools \
    && rm -rf /var/lib/apt/lists/*  

# Install FUSE (for AppImage support)
RUN apt update && apt install -y fuse \
    && rm -rf /var/lib/apt/lists/*

# Install VS Code Server
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Create non-root user 1001:1001
RUN useradd -ms /bin/bash obsidian && \
    echo "obsidian ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER obsidian
WORKDIR /home/obsidian

# Install Obsidian (DEB)
RUN wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.9.14/obsidian_1.9.14_amd64.deb -O /home/obsidian/obsidian.deb && \
    sudo dpkg -i /home/obsidian/obsidian.deb || sudo apt install -f -y
# obsidian --no-sandbox &

# Default command: shell
CMD [ "bash" ]
