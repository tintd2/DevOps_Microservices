#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
# minikube start --extra-config=kubeadm.ignore-preflight-errors=NumCPU --force --cpus=1
# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=dinhtin12/devops

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run k8s-devops --image=dinhtin12/devops:1.0.0 --port=5001

# Step 3:
# List kubernetes pods
unset http_proxy
unset https_proxy
kubectl get pods -n default

# Step 4:
# Forward the container port to a host
kubectl port-forward k8s-devops 7080:5001


# kubectl get pods -n default
# kubectl describe pods