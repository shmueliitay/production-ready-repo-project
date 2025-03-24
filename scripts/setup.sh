#!/bin/bash

# Update and install dependencies
echo "Updating package list and installing system dependencies..."
sudo apt-get update
sudo apt-get install -y python3 python3-pip python3-venv git

# Create and activate a virtual environment
echo "Creating and activating virtual environment..."
python3 -m venv venv
source venv/bin/activate

# Install Python dependencies for both services
echo "Installing dependencies from requirements.txt..."
pip install -r microservices/service1/requirements.txt
pip install -r microservices/service2/requirements.txt

echo "setup complete!"
