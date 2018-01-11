# My Minikube Notes

This repo is mostly just this README, which just reminds me how to start
minikube locally.  In the future, it may include other things such as k8s
manifests for running the local cluster.

This assumes that minikube is installed locally with virtualbox (VM):

https://github.com/kubernetes/minikube

There is an issue with install Virtualbox on Mac OS X High Sierra:

https://developer.apple.com/library/content/technotes/tn2459/_index.html

The best workaround is to run virtbox_osx_workaround.sh with the
Security&Privacy settings open.  Click approve in the setting window.  Once you
can run the script without an entry in the S&P window, installing Virtualbox
via brew should work fine.

Once VirtualBox is installed, run this to start:

minikube start --vm-driver virtualbox --bootstrapper kubeadm

If that fails complaining about DHCP leases, run this before starting:

minikube delete

# Helpers

To ssh into the VM, just run 'minikube ssh'
