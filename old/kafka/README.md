# Scripts for standalone and distributed Kafka

This contains scripts for building and running either standalone Kafka instance
in Docker or separate statefulsets of ZK and Kafka in Kubernetes

# Standalone

## To Build 

Run ./build.sh in this directory (kafka/)

## To Run

Run: docker run -d kmgreen2/zk-kafka

## To Interact

To interact with Kafka you can either exec into the container and use the tools
in /opt/kafka/bin, or you can interact from outside the conatiner using
localhost:9092.

# Kubernetes Stateful Sets

## To Build 

Run ./build.sh in this directory (kafka/)

Be sure to push to the public kmgreen2 repos in Docker Hub, so k8s can find them

## To Run

kubectl -f apply zk/k8s-zk-manifest.yaml

kubectl -f apply kafka/k8s-kafka-manifest.yaml

## To verify the services are running

kubectl get pods -n kafka 

You should see a single pod for the ZK statefulset and two Kafka pods
