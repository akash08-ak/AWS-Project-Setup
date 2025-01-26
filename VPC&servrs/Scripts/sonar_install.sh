#!/bin/bash  

###############################################################################################################
#                   Docker and SonarQube Installation Script
###############################################################################################################

# Update system packages
echo "Updating system packages..."
apt update -y

# Install dependencies for Docker
echo "Installing dependencies for Docker..."
apt install -y ca-certificates curl gnupg lsb-release

# Install Docker
echo "Installing Docker..."
apt install -y docker.io

# Add current user to Docker group (optional: for running Docker without sudo)
echo "Adding user to Docker group..."
sudo usermod -aG docker $USER

# Enable Docker service to start on boot and start the Docker service
echo "Starting Docker service..."
sudo systemctl enable --now docker

# Pull and run SonarQube container on port 9000
echo "Running SonarQube container on port 9000..."
docker run -d -p 9000:9000 --name sonar-server sonarqube:latest

# Display Docker status to verify installation
echo "Displaying running Docker containers..."
docker ps

# Inform user about logging out and back in for Docker group changes
echo "Note: You may need to log out and log back in for Docker group changes to take effect."
echo "Access SonarQube UI at http://<EC2_PUBLIC_IP>:9000"
