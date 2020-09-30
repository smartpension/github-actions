#!/bin/sh

export HEROKU_API_KEY=$1
export APP=$2
export PROCESS=$3

heroku container:release -a $APP $PROCESS
