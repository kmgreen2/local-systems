docker build . -f Dockerfile.base -t kmgreen2/ethereum-base:latest
docker build . -f Dockerfile.bootnode -t kmgreen2/ethereum-boot:latest
docker build . -f Dockerfile.enode_bootstrap -t kmgreen2/ethereum-enode-bootstrap:latest
docker build . -f Dockerfile.membernode -t kmgreen2/ethereum-member:latest
docker build . -f Dockerfile.miner -t kmgreen2/ethereum-miner:latest

if [[ $1 == "push" ]]; then
    docker push kmgreen2/ethereum-base
    docker push kmgreen2/ethereum-boot
    docker push kmgreen2/ethereum-enode-bootstrap
    docker push kmgreen2/ethereum-member
    docker push kmgreen2/ethereum-miner
fi

