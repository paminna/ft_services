#!/bin/sh

minikube start --vm-driver=virtualbox
eval $(minikube docker-env)
docker build -t nginx-image .
kubectl delete pods
kubectl apply -f nginx.yaml
minikube addons enable metallb


sh