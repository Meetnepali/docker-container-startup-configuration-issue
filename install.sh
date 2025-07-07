#!/bin/bash

# Install necessary system packages
sudo apt-get update -y
sudo apt-get install -y docker.io docker-compose

# Ensure Docker service is started
sudo systemctl start docker
sudo systemctl enable docker

# Build and start the Docker containers
docker-compose up --build -d

# Display status of running containers
docker-compose ps

# Note to the user about environment variables
if ! grep -q "REACT_APP_API_URL" .env; then
  echo "WARNING: The .env file does not contain the REACT_APP_API_URL environment variable."
  echo "Make sure to set it appropriately to resolve issues with the frontend startup."
fi
