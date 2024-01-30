#!/bin/bash

namespaces=("standard" "helm" "kustomize")

for namespace in "${namespaces[@]}"; do
    kubectl delete deployments --all -n "$namespace"
    kubectl delete services --all -n "$namespace"
    kubectl delete statefulsets --all -n "$namespace"
    kubectl delete configmaps --all -n "$namespace"
    kubectl delete secrets --all -n "$namespace"
    kubectl delete hpa --all -n "$namespace"
    kubectl delete ingress --all -n "$namespace"
    kubectl delete persistentvolumes --all -n "$namespace"
    kubectl delete persistentvolumeclaims --all -n "$namespace"
done