FROM pedroespindula/letsencrypt-envsubst:1.0

EXPOSE 80
EXPOSE 443

ARG URL=
ARG SUBDOMAINS=

ARG EMAIL=email@email.com
ARG TZ=America/Recife
ARG STAGING=false

ENV PUID=1000
ENV PGID=1000
ENV VALIDATION=http

WORKDIR /config/nginx

COPY ./nginx.conf ./nginx.conf.template

COPY ./entrypoint.sh ./entrypoint.sh

CMD './entrypoint.sh'
