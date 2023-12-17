# X11 Pod

X11 docker image

## Usage

```dockefile
FROM x11pod:latest
WORKDIR "/tmp"
COPY "myentry_point.sh" "/tmp/myentry_point.sh"
ENV "ENTRY_POINT"="/tmp/myentry_point.sh"
```

Please don't use `ENTRY_POINT` command.

You also need to set `$IBUS_ADDRESS` in host.

## Build

```bash
make image
```

## Start a X11 image

```bash
docker run --rm -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix:rw YOUR_IMAGE
```