# Scripts for building and running a standalone Kafka instance in Docker

# To Build

Run ./build.sh in this directory (kafka/)

# To Run

Run: docker run -d kmgreen2/zk-kafka

# To Interact

To interact with Kafka you can either exec into the container and use the tools
in /opt/kafka/bin, or you can interact from outside the conatiner using
localhost:9092.
