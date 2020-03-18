#!/bin/bash

set -o nounset \
    -o errexit \
    +o xtrace

#Confluent version to use
export TAG=5.4.0

#Connectors to download and install
export CONNECTORS=( "jcustenborder/kafka-connect-spooldir:latest" )

#Sample Data
export SAMPLE_FILE=tiess.sample.csv

#Schema to use for the value parsing
export SCHEMA=TAAccountingWVIPayments

#Connector Template
export CONNECTOR_TEMPLATE=template_connector.properties
