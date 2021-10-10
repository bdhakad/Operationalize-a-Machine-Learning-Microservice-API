#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# update the docker image  "dhakadb/prediction:latest" in deployment.yaml

# Step 2
# Run the Docker Hub container with kubernetes
# This will create deployment and a loadbalancer service for accessing the deployed microservice with external ip 
kubectl apply -f kube-deployment.yaml

# step 3
# get the created service external end point  to access the microservice
kubectl get services -n default

# Step 5:
# update the loadbalancer EXTERNAL-IP in make_prediction.sh 

# Step 5:
# List kubernetes pods
kubectl get pods -n default


