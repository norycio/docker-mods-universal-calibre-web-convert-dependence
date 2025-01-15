# Docker Mods for Universal Calibre-web ebook-Convert Dependence

This repository contains a Docker mod that enhances `linuxserver/calibre-web` by adding support for optional the plugins dependence(ebook-Convert) and installing additional Python packages.

## Features

- Installs required Python packages using `pip`.
- Copies plugin files from the mod image to `/app/plugins/`(if you have).

## Usage
### When
If you want to run `-e DOCKER_MODS=linuxserver/mods:universal-calibre` to use calibre-web ebook-convert on Docker.
### How
To use this mod, simply set the `DOCKER_MODS` environment variable when running your container:

```bash
docker run -d \
  --name mycontainer \
  -e DOCKER_MODS=linuxserver/mods:universal-calibre|ghcr.io/norycio/mods:universal-calibre-web-convert-dependent \
  linuxserver/calibre-web