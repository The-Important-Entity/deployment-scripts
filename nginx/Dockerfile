
FROM nginx
COPY default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/html
COPY public/ /var/www/html

EXPOSE 80
EXPOSE 443