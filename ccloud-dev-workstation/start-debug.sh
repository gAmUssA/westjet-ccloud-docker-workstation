#!/bin/bash

#GRIZ 03.17.2020
#Use thsi script to start up with logging to console

#Load Common Functions    
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/_config.sh"

docker-compose -f docker-compose.yml down -v
docker-compose -f docker-compose.yml up

bash "$DIR/load_sample_data.sh"

if [ "$#" -ne 0 ]
then
    shift
fi
