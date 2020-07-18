kubectl <ACTION> <ObjectType> <ObjectName>

## print info of node "docker-desktop"
kubectl get nodes docker-desktop
## print list of all nodes
kubectl get nodes

## Print details of node "docker-desktop"
kubectl describe nodes docker-desktop

## delete a single pod "pod1"
kubectl delete pods pod1

## create a new object from YAML
kubectl apply -f https://github.com/mahendra-shinde/kubernetes-demos/blob/master/09-deployment/deploy-1.yaml

kubectl delete -f https://github.com/mahendra-shinde/kubernetes-demos/blob/master/09-deployment/deploy-1.yaml




