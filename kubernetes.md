Containers in Production
1. Scalability
2. Service Discovery & Load Balancing
3. Distribute workload across multiple nodes (HA)
4. Data volumes (External volumes)
5. Rolling Updates 

The tool that provide all above features in addition to containers is called "Container orchestrator"

docker swarm, kubernetes, mesos dc/os

## kubernetes

- Based on Container orchestration platform made by google, and used by google 
    for more than 14 years now!!

- Kubernetes itself was available in 2014. 

- before year 2014, google had their CLOSED-SOURCE container orchestrator
    in year 2014, google open-sources a PART OF their system and re-branded 
    it as "Kubernetes"

## Enable Kubernetes in Docker desktop
1.  Start Docker desktop
2.  Switch to Linux Containers mode
     right click on docker icon in system-tray > switch to "Linux" containers

3.  Right click "docker" in system tray > click "Settings"

4.  Select LAST OPTION "Kubernetes" and then CHECK "Enable Kubernetes" >
    click "Apply" button.

### Benefits of Kubernetes

1. Docker SWARM cannot be (yet) used with other container runtime.
    Other container platforms: LXC, LXD & RKT

2. Apache Mesos (DC/OS) is entirely linux stack, cannot deploy windows containers.

3.  Kubernetes can use ANY container runtime !!
    And, it supports Windows containers as well !!

## Kubernetes Cluster

* One or More MASTER nodes (Production uses 3 masters)
* One or more WORKER nodes (Depends on amount workload)

### Kubernetes in Docker desktop
* Just ONE node who is BOTH master & worker.
* NOT FOR PRODUCTION !

## Open CMD, use following command to view KUBE CONFIG file
cd .kube
notepad config

## Cluster information
kubectl cluster-info

## List all nodes (masters and workers)
kubectl get nodes



