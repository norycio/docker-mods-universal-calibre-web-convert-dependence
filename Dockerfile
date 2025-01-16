# syntax=docker/dockerfile:1

## Buildstage ##
# 使用官方的 docker-mods 镜像作为基础镜像
#FROM quay.io/vektorlab/docker-mods:latest
FROM ghcr.io/linuxserver/baseimage-alpine:3.20 AS buildstage

RUN \
  mkdir -p /root-layer

# copy local files
COPY root/ /root-layer/

RUN chmod+x /root-layer/etc/s6-overlay/s6-rc.d/init-mod-universal-calibre-web-convert-dependence-add-package/run

## Single layer deployed image ##
FROM scratch

# Add files from buildstage
COPY --from=buildstage /root-layer/ /
