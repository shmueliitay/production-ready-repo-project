#!/bin/bash

echo "Starting mock deployment..."

# Step 1: Activate the virtual environment
if [ ! -d "venv" ]; then
    echo "Virtual environment not found. Please run setup.sh first."
    exit 1
fi

source venv/bin/activate

# Step 2: Install dependencies for both services
echo "Installing dependencies..."
pip install -r microservices/service1/requirements.txt
pip install -r microservices/service2/requirements.txt

# Step 3: Simulate deploying the Flask app (mock)
echo "Deploying Service 1..."
echo "Starting Service 1 on port 5000..."
# You can use `nohup` or `&` to simulate running the service in the background (just for the mock).
nohup python microservices/service1/app.py &

echo "Deploying Service 2..."
echo "Starting Service 2 on port 5001..."
# Simulate starting the second service as well.
nohup python microservices/service2/app.py &

# Step 4: Simulate checking if the services are running
echo "Checking if services are running..."

# Checking the processes for service1 and service2 (mock check)
ps aux | grep 'python microservices/service1/app.py'
ps aux | grep 'python microservices/service2/app.py'

# Step 5: Simulate logging or handling the deployment status
echo "Deployment complete!"

# Optional: Log the mock deployment
echo "Deployment Log - $(date)" >> deployment.log
echo "Deployed Service 1 and Service 2" >> deployment.log

echo "Mock deployment finished successfully!"

# Exit with status 0
exit 0
