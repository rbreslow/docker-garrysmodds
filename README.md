# docker-garrysmodds

This repository contains a `Dockerfile` designed to support Garry's Mod Dedicated Server.

## Usage

First, build the container image with:

```bash
$ docker build -t quay.io/rbreslow/garrysmodds:slim .
```

Then, run the server and expose ports:

```bash
$ docker run -ti \
    -p 27015:27015 \
    -p 27015:27015/udp \
    -p 27020:27020/udp \
    -p 27005:27005/udp \
    -p 26900:26900/udp \
    -p 51840:51840/udp \
    --rm quay.io/rbreslow/garrysmodds:slim
```

## Testing

todo