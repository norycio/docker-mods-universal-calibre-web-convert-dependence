# 使用官方的 docker-mods 镜像作为基础镜像
#FROM quay.io/vektorlab/docker-mods:latest
FROM scratch

COPY root/ /
RUN chmod+x /etc/s6-overlay/s6-rc.d/init-mod-universal-calibre-web-convert-dependence-add-package/run
