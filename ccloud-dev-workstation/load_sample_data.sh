#!/bin/bash

export RND=$(( $RANDOM % 1000 + 1 ))

#Load Common Functions    
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/_config.sh"


set -o xtrace

rm -f $DIR/sample-data/finished/*

rm -f $DIR/sample-data/error/*

cp "$DIR/sample-data/$SAMPLE_FILE" "$DIR/sample-data/new/$RND-$SAMPLE_FILE"