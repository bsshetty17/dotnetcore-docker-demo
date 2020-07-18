## Kubernetes Demo

Using "kubectl" to create new deployment
1. Kubectl uses REST POST request to API server 
2. API Server, validates the request using "config" file and certificates
3. API Server will then update 'etcd' datastore with information you passed from kubectl

1. There are several controllers (Event Loops) inside kubernetes master.
2. ReplicationController, PodController and DeploymentControllers
    They would collect information from etcD datastored.
3. Controllers would then create and send request to "Scheduler"
4. Scheduler then forward given request to "kubelet" inside each worker.


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

4.  Expose the deployment as an service

```
kubectl expose deploy app01 --port=8082 --target-port=80 --type=LoadBalancer
## check the service
kubectl get svc app01
## check the back-end pod ips connected to this service
kubectl get ep app01
## cross verify these pod-ips with actuals pods
kubectl get pods -o wide
```

5.  Open web-browser and visit http://localhost:8082/

