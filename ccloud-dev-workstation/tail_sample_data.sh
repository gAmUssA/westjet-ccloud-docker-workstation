#!/bin/bash

#Load Common Functions    
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/_config.sh"

execute_consume_avro "--topic sample-data --from-beginning"