#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub

# Assumes that an image is built in `run_docker.sh`

# Step 1:
# Create your own docker ID here
# dockerpath=<your docker ID/path>
dockerpath="rawanhassan/first-repo"

# Step 2:  
# Authenticate & Tag
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker image tag tomcat rawanhassan/first-repo

# Step 3:
# Push Image
docker image push rawanhassan/first-repo
