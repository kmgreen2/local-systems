# Scripts for packaing and deploying Ethereum P2P network in Kubernetes

## To Build 

Run ./build.sh in this directory (ethereum/)

This will build three images:

### kmgreen2/ethereum-base

This is the base images for the Ethereum images.  It includes from one of the
Go base images, installs some utilities, set the envvars, adds some bootstrap
files, clones go-ethereum and installs the Ethereum binaries.

### kmgreen2/ethereum-boot

This includes from kmgreen2/ethereum-base and starts the bootstrap server, which is
used to bootstrap nodes into a private Ethereum network (id=1337)

### kmgreen2/ethereum-member

This includes from kmgreen2/ethereum-base and starts a member server in an
ethereum network.

### kmgreen2/ethereum-miner

This includes from kmgreen2/ethereum-base and starts a miner server in an
ethereum network.

## To Run

Apply the Kubernetes manifests for each component (kubectl apply -f <manifest>):

### ethereum/k8s-ethereum-base.yaml

Base manifest containing shared objects, such as the namespace the deployments run in

### ethereum/k8s-bootnode-manifest.yaml

Deployment and service objects for the bootnode

### ethereum/k8s-membernode-manifest.yaml

Deployment and service objects for the member nodes

### ethereum/k8s-miner-manifest.yaml

Deployment and service objects for the miners
