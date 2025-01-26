#!/bin/bash  

###############################################################################################################
#                   Docker Installation and Nexus Setup Script
###############################################################################################################

# Step 1: Update system packages
echo "Updating system packages..."
apt update -y

# Step 2: Install dependencies for Docker
echo "Installing dependencies for Docker..."
apt install -y ca-certificates curl gnupg lsb-release

# Step 3: Install Docker (docker.io for Ubuntu)
echo "Installing Docker..."
apt install -y docker.io

# Step 4: Add current user to Docker group (optional, for running Docker without sudo)
echo "Adding user to Docker group..."
sudo usermod -aG docker $USER

# Step 5: Enable Docker to start on boot and start the Docker service
echo "Starting Docker service..."
sudo systemctl enable --now docker

# Step 6: Run Nexus container on port 8081
echo "Running Nexus container on port 8081..."
docker run -d -p 8081:8081 --name nexus-server sonatype/nexus3

# Step 7: Verify if Nexus container is running
echo "Displaying running Docker containers..."
docker ps

# Additional message for user to log out and log back in for Docker group changes
echo "Note: You may need to log out and log back in for Docker group changes to take effect."

# Step 8: Access Nexus UI at the public IP of your EC2 instance
echo "Access Nexus UI at http://<EC2_PUBLIC_IP>:8081"
