ARG _TAG=0.76.3-ext-alpine
FROM klakegg/hugo:${_TAG}
# https://hub.docker.com/r/klakegg/hugo/tags?page=1&name=-alpine

MAINTAINER iganari

### OS Prepare
# Setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

RUN apk add nginx 
RUN mkdir /run/nginx && \
    chmod 0777 -R /run/nginx

ADD nginx/nginx.conf /etc/nginx/nginx.conf
ADD nginx/sites-enabled/service.conf /etc/nginx/sites-enabled/service.conf


ENTRYPOINT nginx -g "daemon off;"
