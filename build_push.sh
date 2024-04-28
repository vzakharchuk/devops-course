#!/bin/bash

IMAGE=vzak/node-hello-world:${1}
docker build -t ${IMAGE} .

echo "Pushing the Docker image to Docker Hub..."
docker push ${IMAGE}

# Check if the push was successful
if [ $? -eq 0 ]; then
    echo "Image successfully pushed to Docker Hub."
else
    echo "Failed to push the image to Docker Hub."
fi
