kubectl apply -f config.yaml -n standard
for file in $(ls *-deployment.yaml); do kubectl apply -f $file -n standard; done
#kubectl apply -f ingress.yaml -n standard
kubectl get all -n standard

# kubectl describe deployment.apps/fastapi -n standard
# kubectl logs deployment.apps/fastapi -n standard