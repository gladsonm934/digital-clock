FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

Copy . /usr/share/nginx/html

EXPOSE 80