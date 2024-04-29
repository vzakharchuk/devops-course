#!/bin/bash

# update image
IMAGE=vzak/node-hello-world:${1}
docker build -t ${IMAGE} .
docker push ${IMAGE}

if [ $? -eq 0 ]; then
    echo "Image successfully pushed to Docker Hub."
else
    echo "Failed to push the image to Docker Hub."
fi

# update code & helm chart
git add . && git commit -m "updated version to ${1}"
git push
sed -i "s/\(^\s*tag:\s*\).*/\1\"${1}\"/" helm/values.yaml

echo "Done!"