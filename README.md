# docker-garrysmodds [![Travis (.org) branch](https://img.shields.io/travis/rbreslow/docker-garrysmodds/master)](http://travis-ci.org/rbreslow/docker-garrysmodds) [![quay.io](https://img.shields.io/badge/quay.io-slim-blue)](https://quay.io/repository/rbreslow/steamcmd)

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

TBD