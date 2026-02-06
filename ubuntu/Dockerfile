FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Basic VsCode Dependencies
RUN apt update && \
	apt install -y git curl vim make \
		python3 default-jdk \
		&& rm -rf /var/lib/apt/lists/*

# Install VS Code Server on Ubuntu
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Install Pandoc and its dependencies
RUN apt update -y && \
    apt install -y \
    pandoc \
    texlive \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js and npm
RUN apt update -y && \
    apt install -y \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Low overhead keep container running
CMD ["/bin/sleep", "3650d"]
