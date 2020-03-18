#!/bin/bash

#GRIZ 03.18.2020 
# added a build function to allow for rebuilds of the images due to WSL and Docker Windows not mounting local Directpries
#Load Common Functions    
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/_config.sh"

docker-compose -f docker-compose.yml down -v
docker-compose -f docker-compose.yml build 

bash "$DIR/load_sample_data.sh"

if [ "$#" -ne 0 ]
then
    shift
fi
