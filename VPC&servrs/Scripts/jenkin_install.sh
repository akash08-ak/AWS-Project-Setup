#!/bin/bash  
# This is a Shebang script using /bin/bash to run commands

################################################################################################
# Jenkins Installation
################################################################################################

sudo apt update -y  # Update package repositories
sudo apt install -y openjdk-17-jre  # Install OpenJDK

# Add Jenkins repository and key
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null  
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null  

sudo apt update -y  # Update repository for Jenkins
sudo apt install -y jenkins  # Install Jenkins

# Grant Jenkins user sudo privileges without password
echo "jenkins ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers

#####################################################################################################
# Terraform Installation
#####################################################################################################

wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update -y
sudo apt install -y terraform

###############################################################################################################
# Docker Installation
###############################################################################################################

sudo apt update -y
sudo apt install -y ca-certificates curl gnupg lsb-release

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update -y
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Add Jenkins user to Docker group
sudo usermod -aG docker jenkins

# Adjust Docker permissions
sudo chmod 666 /var/run/docker.sock

###############################################################################################################
# AWS CLI Installation
###############################################################################################################

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

###############################################################################################################
# Kubectl Installation
###############################################################################################################

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"

echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

chmod +x kubectl
mkdir -p ~/.local/bin
mv ./kubectl ~/.local/bin/kubectl

echo 'export PATH=$PATH:~/.local/bin' >> ~/.bashrc
source ~/.bashrc

###############################################################################################################
# Maven Installation
###############################################################################################################

sudo apt update -y
sudo apt install -y maven unzip

###############################################################################################################
# Restart Services
###############################################################################################################

sudo systemctl restart docker
sudo systemctl restart jenkins

echo "✅ All installations are complete and services restarted successfully."
