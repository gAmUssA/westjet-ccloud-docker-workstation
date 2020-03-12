#!/bin/bash

#Load Common Functions    
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm -rf $DIR/ccloud-dev-workstation/confluent-hub-client-latest
rm -rf $DIR/ccloud-dev-workstation/connector.properties
rm -rf $DIR/ccloud-dev-workstation/connect/connectors/*

tar -cf ccloud-dev-workstation.tar ccloud-dev-workstation
gzip ccloud-dev-workstation.tar