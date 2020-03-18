#!/bin/bash

#GRIZ 03.18.2020
#Load more sample data in connect container
docker-compose exec connect load-sample-data-docker.sh --detach

