# X11 Pod

X11 docker image

## Usage

```dockefile
FROM x11pod:latest
WORKDIR "/tmp"
COPY "./myentry_point.sh" "/tmp/myentry_point.sh"
ENV "ENTRY_POINT"="/tmp/myentry_point.sh"
```

Please don't use `ENTRY_POINT` command.

## Build

```bash
make image
```

## Start a X11 image

```bash
docker run --rm -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix:rw IMAGE
```