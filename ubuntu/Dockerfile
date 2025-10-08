# Use the official Ubuntu base image
FROM ubuntu:latest

# Set the environment variable to avoid interaction during package configuration
ENV DEBIAN_FRONTEND=noninteractive

# Update the package listing and install desired packages
RUN apt-get update -y && \
    apt-get install -y \
    git \
    curl \
    vim \
    && rm -rf /var/lib/apt/lists/*
    
# Command to run your application
CMD ["/bin/sleep", "3650d"]
