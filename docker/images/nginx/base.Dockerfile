FROM nginx:latest

EXPOSE 80
EXPOSE 443

WORKDIR /etc/nginx

COPY ./nginx.conf ./nginx.conf
