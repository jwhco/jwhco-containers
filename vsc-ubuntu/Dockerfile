# Use the official Ubuntu base image
FROM ubuntu:25.10

# Set the environment variable to avoid interaction during package configuration
ENV DEBIAN_FRONTEND=noninteractive

# Update the package listing and install desired packages
RUN apt update -y && \
    apt install -y \
    git curl \
    vim cmake \
    && rm -rf /var/lib/apt/lists/*

# Install VS Code Server on Ubuntu
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Install Python Environment
RUN apt update && \
    apt install python3-venv python3-pip \
    && rm -rf /var/lib/apt/lists/*


# For Better X11 Support
RUN apt update && \
    apt install libxcb-cursor0 \
    && rm -rf /var/lib/apt/lists/*

USER ubuntu
WORKDIR /home/ubuntu
    
# Command to run your application
CMD ["/bin/sleep", "3650d"]
