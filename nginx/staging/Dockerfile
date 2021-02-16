FROM nginx:1.13.3

EXPOSE 80

WORKDIR /config

COPY ./nginx.conf ./nginx.conf.template

COPY ./entrypoint.sh ./entrypoint.sh

CMD './entrypoint.sh'
