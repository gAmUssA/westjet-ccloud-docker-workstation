ARG TAG
FROM confluentinc/cp-kafka-connect-base:${TAG}

RUN mkdir -p /mnt/sample-data/new
RUN mkdir -p /mnt/sample-data/finished
RUN mkdir -p /mnt/sample-data/error

COPY wait-for-it.sh /etc/confluent/docker/wait-for-it
COPY launch.sh /etc/confluent/docker/launch
COPY connector.properties /etc/kafka/connector.properties
COPY _config.sh /mnt/sample-data/
COPY tiess.sample.csv /mnt/sample-data/
COPY load-sample-data-docker.sh /usr/local/bin/
COPY connectors/ /mnt/connectors/

RUN chmod +x /usr/local/bin/load-sample-data-docker.sh
RUN chmod +x /mnt/sample-data/_config.sh


