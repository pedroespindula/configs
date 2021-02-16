#!/usr/bin/env bash
export DOLLAR='$'
envsubst < /config/nginx.conf.template > /etc/nginx/nginx.conf
nginx -g "daemon off;"
