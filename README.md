# docker-garrysmodds [![CI](https://github.com/rbreslow/docker-garrysmodds/workflows/CI/badge.svg?branch=master)](https://github.com/rbreslow/docker-garrysmodds/actions?query=workflow%3ACI)

This repository contains a `Dockerfile` designed to support Garry's Mod Dedicated Server.

## Usage

First, build the container image with:

```bash
docker build -t quay.io/rbreslow/garrysmodds:slim .
```

Then, run the server and expose ports:

```bash
docker run -ti \
    -p 27015:27015 \
    -p 27015:27015/udp \
    --rm quay.io/rbreslow/garrysmodds:slim
```

## Testing

TBD.
