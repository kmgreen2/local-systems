# My Minikube Notes

This repo is mostly just this README, which just reminds me how to start
minikube locally.  In the future, it may include other things such as k8s
manifests for running the local cluster.

This assumes that minikube is installed locally with hyperkit (VM):

https://github.com/kubernetes/minikube

For now, it is really easy.  Just run this to start:

minikube start --vm-driver hyperkit

If that fails complaining about DHCP leases, run this before starting:

minikube delete

