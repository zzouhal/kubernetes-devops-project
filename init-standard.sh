#!/bin/bash

kubectl apply -f clusterissuer.yaml

kubectl apply -f config.yaml -n standard
kubectl apply -f YAML-STANDARD/. -n standard
kubectl get all -n standard