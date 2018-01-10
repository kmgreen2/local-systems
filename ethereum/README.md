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

### ToDo: Add image for miners: https://github.com/ethereum/go-ethereum/wiki/Private-network

## To Run

ToDo: Add instructions when k8s manifests are ready
