#!/bin/bash

#Load Common Functions    
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/_config.sh"

docker-compose -f docker-compose.yml down -v
docker-compose -f docker-compose.yml up -d

bash "$DIR/load_sample_data.sh"

if [ "$#" -ne 0 ]
then
    shift
fi