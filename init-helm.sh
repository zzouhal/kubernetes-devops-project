#!/bin/bash

kubectl apply -f clusterissuer.yaml

kubectl apply -f config.yaml -n helm
sudo helm install helm-chart ./HELM --values=./HELM/values.yaml -n helm --debug
kubectl get all -n helm
