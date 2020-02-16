#!/usr/bin/env bash

# Step 1:
# This is your Docker ID/path
dockerpath="dalvaz/ml-microservice-api"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment ml-microservice-api --image="$dockerpath":1.0
kubectl expose deployment/ml-microservice-api --type=NodePort --port=80 --target-port=80

# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/ml-microservice-api 8000:80

