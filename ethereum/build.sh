docker build . -f Dockerfile.base -t kmgreen2/ethereum-base:latest
docker build . -f Dockerfile.bootnode -t kmgreen2/ethereum-boot:latest
docker build . -f Dockerfile.membernode -t kmgreen2/ethereum-member:latest
