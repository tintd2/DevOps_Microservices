#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker stop devops
docker rm devops
docker rmi dinhtin12/devops
docker build -t=dinhtin12/devops:0.0.1 .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
# docker run -d -p 8000:80 dinhtin12/devops
docker run -d  -v $(pwd)/output_txt_files:/app/output_txt_files -p 8000:80 --name devops dinhtin12/devops 
docker ps -a
# docker logs devops > output_txt_files/docker_out.txt
