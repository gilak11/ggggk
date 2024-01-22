# Use a base image with your desired Linux distribution
FROM ubuntu:latest

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    sudo \
    curl \
    bash

# Switch to root user
USER root

# Download and run the installation script
RUN curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh | bash

# Expose any necessary ports
# EXPOSE <port_number>

# Set the default command to run your application
# CMD ["/path/to/your/application"]
