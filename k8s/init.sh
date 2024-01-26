#!/bin/bash

docker build ../ -t fastapi
namespaces=("standard" "helm" "kustomize")

for namespace in "${namespaces[@]}"; do
    kubectl create namespace "$namespace"
    kubectl apply -f config.yaml -n "$namespace"
    
    kubectl get pods -n "$namespace"
    echo "----------------------"
done
