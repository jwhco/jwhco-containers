# Use the official Ubuntu base image
FROM ubuntu:25.04

# Set the environment variable to avoid interaction during package configuration
ENV DEBIAN_FRONTEND=noninteractive

# Update the package listing and install desired packages
RUN apt-get update -y && \
    apt-get install -y \
    git \
    curl \
    vim \
    cmake \
    && rm -rf /var/lib/apt/lists/*

# Install VS Code Server on Ubuntu
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Install Pandoc and its dependencies
RUN apt-get update -y && \
    apt-get install -y \
    pandoc \
    texlive-full \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js and npm
RUN apt-get update -y && \
    apt-get install -y \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Install Mermaid filters
RUN npm install --global mermaid-filter
    
# Command to run your application
CMD ["/bin/sleep", "3650d"]
