## Kubernetes Demo


1. Create a new kubernetes deployment `app01` and test it!

```
# Create and launch 'app01' with container image `mahendrshinde/myweb` and
# I want 3 instances
kubectl run app01 --image=mahendrshinde/myweb --port=80 --replicas=3
## Verify
kubectl get deploy
```

2.  Test the `self healing` feature of kubernetes. 

```
## check number of pods
kubectl get pods
## delete them all
kubectl delete pods --all
## check number of pods
kubectl get pods
```

3.  Scaling the application deployment

```
kubectl scale deploy app01 --replicas=5
kubectl get pods
kubectl scale deploy app01 --replicas=1
kubectl get pods
```