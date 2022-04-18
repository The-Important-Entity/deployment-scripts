#!/bin/bash

# sudo docker run -d --restart=always --name nginx-temp \
#     -p 80:80 \
#     -p 443:443 \
#     -v /mnt/dcimages/data/certbot/letsencrypt:/etc/letsencrypt \
#     -v /mnt/dcimages/data/certbot/www:/var/www/certbot \
#     nginx_certbot

# sudo docker run --rm --name temp_certbot \
#     -v /mnt/dcimages/data/certbot/letsencrypt:/etc/letsencrypt \
#     -v /mnt/dcimages/data/certbot/www:/tmp/letsencrypt \
#     -v /mnt/dcimages/data/certbot/log:/var/log \
#     certbot/certbot:v1.8.0 \
#     certonly --webroot --agree-tos --renew-by-default \
#     --preferred-challenges http-01 --server https://acme-v02.api.letsencrypt.org/directory \
#     --text --email joseph.scalera1@gmail.com \
#     -w /tmp/letsencrypt -d joescalera.com -d storage.joescalera.com -d gitlab.joescalera.com

# sudo docker ps -f name=nginx-temp -aq | sudo xargs docker rm -f
# sudo docker ps -f name=temp_certbot -aq | sudo xargs docker rm -f

sudo docker run -d --restart=always --name nginx \
    -p 80:80 \
    -p 443:443 \
    -v /mnt/dcimages/data/certbot/letsencrypt:/etc/letsencrypt \
    -v /mnt/dcimages/data/certbot/www:/var/www/certbot \
    -v /mnt/dcimages/gitlab/config/ssl:/etc/gitlab/ssl \
    nginx