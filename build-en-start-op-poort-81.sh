#!/bin/bash

# Build the Docker image
docker build -t demo-site .

# Stop and remove any existing container with the name "demo-site"
docker stop demo-site 2>/dev/null
docker rm demo-site 2>/dev/null

# Run a new container
docker run -d -p 81:80 --name demo-site demo-site
