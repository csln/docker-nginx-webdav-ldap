#!/bin/bash

NGINX_VERSION_STRING="ENV NGINX_VERSION"

get_version() {
    URL=https://raw.githubusercontent.com/nginxinc/docker-nginx/master/$1/alpine/Dockerfile
    curl $URL 2> /dev/null | grep "$NGINX_VERSION_STRING" | cut -d' ' -f3
}

update_version() {
    sed -i -e "s/^${NGINX_VERSION_STRING}.*/${NGINX_VERSION_STRING} $1/g" $2/alpine/Dockerfile
    sed -i -e "s/^${NGINX_VERSION_STRING}.*/${NGINX_VERSION_STRING} $1/g" $2/alpine/Dockerfile.min
}

update_version $(get_version stable) stable
update_version $(get_version mainline) mainline
