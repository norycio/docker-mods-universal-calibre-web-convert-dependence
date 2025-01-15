# 使用官方的 docker-mods 镜像作为基础镜像
#FROM quay.io/vektorlab/docker-mods:latest
FROM scratch

# 拷贝 mod 配置文件到镜像中
COPY ./universal-calibre-web-convert-dependent.yaml /mod/universal-calibre-web-convert-dependent.yaml