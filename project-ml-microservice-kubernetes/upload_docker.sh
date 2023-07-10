#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=dinhtin12/devops

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
# docker login --username dinhtin12

# Step 3:
# Push image to a docker repository
docker push dinhtin12/devops:1.0.0