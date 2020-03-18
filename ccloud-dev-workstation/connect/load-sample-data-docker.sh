#!/bin/bash

export RND=$(( $RANDOM % 1000 + 1 ))

#Load Common Functions    
#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#DIR="/usr/local/bin"
#Griz 03.18.2020 just hardcoded since this has to run on the docker image due to issues with WSL and Docker Windows
#Not sure why it is not picking up the environment varibales 
DIR="/mnt"

source "$DIR/sample-data/_config.sh"

#Connectors to download and install
export CONNECTORS=( "jcustenborder/kafka-connect-spooldir:latest" )

#Sample Data
export SAMPLE_FILE=tiess.sample.csv

#Schema to use for the value parsing
export SCHEMA=TAAccountingWVIPayments

#Connector Template
export CONNECTOR_TEMPLATE=template_connector.properties

set -o xtrace

rm -f $DIR/sample-data/finished/*

rm -f $DIR/sample-data/error/*

cp "$DIR/sample-data/$SAMPLE_FILE" "$DIR/sample-data/new/$RND-$SAMPLE_FILE"