FROM pedroespindula/letsencrypt:latest

ARG URL=
ARG SUBDOMAINS=

ARG EMAIL=email@email.com
ARG TZ=America/Recife
ARG STAGING=false

ENV PUID=1000
ENV PGID=1000
ENV VALIDATION=http

WORKDIR /etc/nginx

COPY ./nginx.conf ./nginx.conf

