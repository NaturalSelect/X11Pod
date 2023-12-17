#!/bin/bash

echo "Please mount the /tmp/.X11-unix to host"
echo "Please set DISPLAY env variable"

xhost + local:
if [ "${IBUS_DEAMON_ADDRESS}" = "" ]
then
    echo "Using container ibus"
    ibus-daemon -drx
fi

ibus engine pinyin

if [ "$ENTRY_POINT" != "" ]
then
    "$ENTRY_POINT" $*
fi