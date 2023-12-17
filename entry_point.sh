#!/bin/bash

echo "Please mount the /tmp/.X11-unix to host"
echo "Please set DISPLAY env variable"

xhost + local:

if [ "$ENTRY_POINT" != "" ]
then
    "$ENTRY_POINT" $*
fi