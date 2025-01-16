# 使用官方的 docker-mods 镜像作为基础镜像
#FROM quay.io/vektorlab/docker-mods:latest
FROM scratch

COPY root/ /
