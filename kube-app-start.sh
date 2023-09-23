#!/bin/bash

# Deploy MongoDB
echo "Deploying MongoDB..."
kubectl apply -f kubernetes/mongodb/mongo-secret.yml
kubectl apply -f kubernetes/mongodb/mongo-configmap.yml
kubectl apply -f kubernetes/mongodb/mongo-pv-pvc.yml
kubectl apply -f kubernetes/mongodb/mongo-service.yml
kubectl apply -f kubernetes/mongodb/mongo-statefulset.yml

# Wait for MongoDB to be ready (adjust the sleep duration as needed)
echo "Waiting for MongoDB to be ready..."
sleep 5

# Deploy Backend
echo "Deploying Backend..."
kubectl apply -f kubernetes/backend/karsajobs-service.yaml
kubectl apply -f kubernetes/backend/karsajobs-deployment.yml

# Deploy Frontend
echo "Deploying Frontend..."
kubectl apply -f kubernetes/frontend/karsajobs-ui-service.yml
kubectl apply -f kubernetes/frontend/karsajobs-ui-deployment.yml

echo "Application deployment complete."
