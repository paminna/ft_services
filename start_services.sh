#!/bin/sh

minikube delete
minikube start --vm-driver=virtualbox
eval $(minikube docker-env)
docker build -t nginx-image ./srcs/nginx
docker build -t php-image ./srcs/php
docker build -t wordpress-image ./srcs/wordpress
docker build -t mysql-image ./srcs/mysql
minikube addons enable metallb
# kubectl delete pods

# nginx start
kubectl apply -f ./srcs/nginx/config_map.yaml
kubectl apply -f ./srcs/nginx/nginx.yaml
kubectl apply -f ./srcs/php/php.yaml
kubectl apply -f ./srcs/wordpress/wordpress.yaml
kubectl apply -f ./srcs/mysql/mysql.yaml
docker pull metallb/speaker:v0.8.2
docker pull metallb/controller:v0.8.2

minikube dashboard

sh