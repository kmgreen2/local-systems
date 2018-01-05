FROM kmgreen2/zookeeper:3.4.11

ENV SCALA_VERSION 2.11
ENV KAFKA_VERSION 0.10.2.1

RUN mkdir /opt

RUN  wget -q -O - http://www.eu.apache.org/dist/kafka/$KAFKA_VERSION/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz | tar -xzf - -C /opt \
       && mv /opt/kafka_$SCALA_VERSION-$KAFKA_VERSION /opt/kafka

ENV PATH /opt/kafka/bin:$PATH

COPY kafka-docker-entrypoint.sh /kafka-docker-entrypoint.sh
COPY main-docker-entrypoint.sh /main-docker-entrypoint.sh
ENTRYPOINT ["/main-docker-entrypoint.sh"]

COPY ./image/conf /opt/kafka/config
VOLUME ["/opt/kafka/config"]

EXPOSE 9092
