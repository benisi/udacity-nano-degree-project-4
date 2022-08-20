#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=benocholy/project4:latest

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag project4:latest $dockerpath
docker login --username=benocholy

# Step 3:
# Push image to a docker repository
docker push $dockerpath