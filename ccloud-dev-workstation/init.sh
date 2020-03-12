#!/bin/bash

#Load Common Functions    
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/_config.sh"

#Download and Install Confluent Hub CLI
if [[ ! -d "confluent-hub-client-latest" ]]
then
    set -o xtrace
    mkdir confluent-hub-client-latest
    curl http://client.hub.confluent.io/confluent-hub-client-latest.tar.gz -o confluent-hub-client-latest.tar.gz
    tar -xf confluent-hub-client-latest.tar.gz -C confluent-hub-client-latest
    rm -f confluent-hub-client-latest.tar.gz
    set +o xtrace  
else
    echo "Confluent Hub CLI already installed"
fi

#Install Required Connectors
for i in "${CONNECTORS[@]}"
do
    install_connector $i
done

#Configure Connector
export _SCHEMA_VALUE=$(cat $DIR/schemas/$SCHEMA.json | tr -d \\n | tr -d \\t)
export _SCHEMA_KEY=$(cat $DIR/schemas/$SCHEMA.key.json | tr -d \\n | tr -d \\t)
cat $CONNECTOR_TEMPLATE | sed "s/SCHEMA_KEY/$_SCHEMA_KEY/g" | sed "s/SCHEMA_VALUE/$_SCHEMA_VALUE/g" > connector.properties