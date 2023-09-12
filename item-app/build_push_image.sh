#! /bin/bash
docker build -t item-app:v1 .
docker images

echo "Running docker images from local"
docker run -d --name item-app -p 8080:3000 item-app:v1
# WIP