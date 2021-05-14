#!/bin/sh

minikube start --vm-driver=virtualbox
eval $(minikube docker-env)
docker build -t nginx-image ./srcs/nginx
minikube addons enable metallb
# kubectl delete pods

# nginx start
kubectl apply -f ./srcs/nginx/config_map.yaml
kubectl apply -f ./srcs/nginx/nginx.yaml
docker pull metallb/speaker:v0.8.2
docker pull metallb/controller:v0.8.2

# wordpress start


minikube dashboard

sh