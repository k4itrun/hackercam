# Dockerfile for HackerCam

# Dockerfile author and contact information
# Author       : k4itrun
# GitHub       : https://github.com/k4itrun
# Telegram     : https://t.me/k4itrun
# Email        : k4itrun@6889.fun
# Date         : 20-10-2023
# Main Lang    : Shell

# Use the latest Debian base image
FROM debian:latest

# Set the maintainer label to provide contact information
LABEL MAINTAINER="https://github.com/k4itrun/HackerCam"

# Set the working directory inside the container to /HackerCam/
WORKDIR /HackerCam/

# Copy the contents of the current directory (the build context) to /HackerCam/ in the container
COPY . /HackerCam/

# Update the package repositories and install necessary packages
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y curl unzip wget && \
    apt-get install --no-install-recommends php -y && \
    apt-get clean

# Define the main command to run when the container starts
CMD ["./hcam.sh", "--no-update"]

# Instructions for building and running the Docker container
# Build the container with:
#   "sudo docker build . -t k4itrun/hackercam:latest"
# Run the container interactively with automatic cleanup after it exits:
#   "sudo docker run --rm -it k4itrun/hackercam:latest"
# Pull the pre-built container image from Docker Hub and run it interactively:
#   "sudo docker pull k4itrun/hackercam"
#   "sudo docker run --rm -it k4itrun/hackercam"
