# docker-garrysmodds [![CI](https://github.com/rbreslow/docker-garrysmodds/workflows/CI/badge.svg?branch=master)](https://github.com/rbreslow/docker-garrysmodds/actions?query=workflow%3ACI)

This repository contains a `Dockerfile` designed to support Garry's Mod Dedicated Server.

## Usage

You can start Garry's Mod with the default launch options (16 max players, Sandbox, and `gm_flatgrass`) with the following:

```console
$ docker run -it -p 27015:27015 -p 27015:27015/udp --rm quay.io/rbreslow/garrysmodds:slim

. . .

Connection to Steam servers successful.
   Public IP is 1.1.1.1.
Assigned anonymous gameserver Steam ID [A-1:0123456789(01234)].
VAC secure mode is activated.
```

See [rbreslow/zs](https://github.com/rbreslow/zs) for an example that uses [Docker Compose](https://docs.docker.com/compose/).

## Testing

An example of how to use `cibuild` to build and test an image:

```console
$ CI=1 ./scripts/cibuild
```
