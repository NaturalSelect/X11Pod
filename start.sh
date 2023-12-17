#!/bin/bash

docker run --rm -it \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix/:/tmp/.X11-unix:rw \
    -v /run/dbus/system_bus_socket:/run/dbus/system_bus_socket \
    -v /run/user/$(id -u):/run/user/$(id -u) \
    -v /dev/dri/card0:/dev/dri/card0 \
    -e DBUS_SESSION_BUS_ADDRESS="${DBUS_SESSION_BUS_ADDRESS}" \
    -e XDG_RUNTIME_DIR=/run/user/$(id -u) \
    -e ENTRY_POINT=bash \
    x11pod:latest

