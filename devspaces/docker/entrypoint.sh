#!/bin/bash

# This shell script executes on docker container start.  

# Copying it  to /data folder since devspaces removes everything from /data folder during the devspaces creation
cp /start.sh /data/start.sh

tail -f /dev/null