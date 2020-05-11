#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub

# Assumes that an image is built in `run_docker.sh`

# Step 1:
# Create your own docker ID here
# dockerpath=<your docker ID/path>
dockerpath="rawanmoustafa/capstone-repo"

docker build -t project5 .
# Step 2:  
# Authenticate & Tag
echo "Docker ID and Image: rawanmoustafa/capstone-repo"
docker login &&\
    docker image tag project5 rawanmoustafa/capstone-repo

# Step 3:
# Push Image
docker image push rawanmoustafa/capstone-repo
