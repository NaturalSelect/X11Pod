#!/bin/bash

echo "Please mount the /tmp/.X11-unix to host"
echo "Please set DISPLAY env variable"

xhost + local:
if [ "${IBUS_ADDRESS}" = "" ]
then
    echo "Using container ibus"
    ibus-daemon -drx
    ibus engine pinyin
fi

if [ "$ENTRY_POINT" != "" ]
then
    "$ENTRY_POINT" $*
fi