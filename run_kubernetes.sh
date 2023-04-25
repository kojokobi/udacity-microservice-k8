#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="kojokobi/app"
imagename="app"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment $imagename --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/$imagename 8000:80


