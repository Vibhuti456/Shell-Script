#!/bin/bash

# Exit immediately if any command fails

set -e 

# Update system packages

sudo apt-get install -y
sudo apt-get install -y gnupg software-properties-common curl unzip

# Add HashiCorp GPG key

echo "Adding the HashiCorp key"
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

#Add official Terraform repository

echo "Adding HashiCorp folder"
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list

# Update and install Terraform

echo "Installing Terraform"
sudo apt-get update -y
sudo apt-get install -y terraform

#Verify installation

echo "Terraform installed Successfully"
terraform --version




