execute_broker(){
    set -o xtrace
    docker-compose exec broker $1
}

execute_topics(){
    execute_broker "kafka-topics --bootstrap-server localhost:9091 $1" 
}

execute_consume(){
    execute_broker "kafka-console-consumer --bootstrap-server localhost:9091 --consumer.config /etc/kafka/client.properties $1"
}

execute_consume_avro(){
    #These properties are to configure  
    execute_consume "--formatter io.confluent.kafka.formatter.AvroMessageFormatter \
    --property schema.registry.url=http://schema-registry:8081 \
    --property basic.auth.credentials.source=USER_INFO
    --property basic.auth.user.info=schemaregistry:schemaregistry-secret
    $1"
}

install_connector(){
    set -o xtrace
    $DIR/confluent-hub-client-latest/bin/confluent-hub install --no-prompt --component-dir $DIR/connect/connectors $1
}