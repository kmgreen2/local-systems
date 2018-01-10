FROM golang:1.9.2

ENV ETH_DATA_DIR=/var/lib/ethereum/data \
    ETH_LOG_DIR=/var/log/ethereum \
    ETH_PORT=30301 \
    ETH_RPC_PORT=8101 \
    ETH_USER=ethereum \
    ETH_BOOT_NODE="enode://587cff403bd9286ea1db03f04dc0fe90250eb3f8aefc9a436d4e269a3d179916eb6a379c9ebfa84890072db41a343245e0452669c309ee740a5a02d00f2f1b04@[::]:30301"

# Add a user and make dirs
RUN set -ex; \
    adduser --system "$ETH_USER"; \
    addgroup --system "$ETH_USER"; \
    mkdir -p "$ETH_DATA_DIR $ETH_LOG_DIR"; \
    chown "$ETH_USER:$ETH_USER" "$ETH_DATA_DIR $ETH_LOG_DIR"

RUN git clone https://github.com/kmgreen2/go-ethereum.git $GOPATH/src/github.com/ethereum/go-ethereum

WORKDIR $GOPATH/src/github.com/ethereum/go-ethereum

RUN go install -v ./...

WORKDIR /

VOLUME ["$ETH_DATA_DIR", "$ETH_LOG_DIR"]

COPY genesis.json $ETH_DATA_DIR/
COPY boot.key $ETH_DATA_DIR/

ENTRYPOINT bootnode --nodekey=boot.key

EXPOSE $ETH_PORT $ETH_RPC_PORT

ENV PATH=$PATH:$GOPATH/src/github.com/ethereum/go-ethereum

RUN geth --datadir="$ETH_DATA_DIR" init $ETH_DATA_DIR/genesis.json

ENTRYPOINT geth --datadir="$ETH_DATA_DIR" -verbosity 6 --ipcdisable --port $ETH_PORT --rpcport $ETH_RPC_PORT --networkid 1337 >> $ETH_LOG_DIR/ethereum.log 2>&1
