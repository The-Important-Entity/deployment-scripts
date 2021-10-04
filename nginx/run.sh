#!/bin/bash

# sudo docker pull certbot/certbot


sudo docker run -d --restart=always --name nginx-temp \
    -p 80:80 \
    -p 443:443 \
    -v /mnt/dcimages/data/certbot/letsencrypt:/etc/letsencrypt \
    -v /mnt/dcimages/data/certbot/www:/var/www/certbot \
    nginx

# sudo docker run --rm --name temp_certbot \
#     -v /mnt/dcimages/data/certbot/letsencrypt:/etc/letsencrypt \
#     -v /mnt/dcimages/data/certbot/www:/tmp/letsencrypt \
#     -v /mnt/dcimages/data/certbot/log:/var/log \
#     certbot/certbot:v1.8.0 \
#     certonly --webroot --agree-tos --renew-by-default \
#     --preferred-challenges http-01 --server https://acme-v02.api.letsencrypt.org/directory \
#     --text --email joseph.scalera1@gmail.com \
#     -w /tmp/letsencrypt -d josephscalera.com -d storage.josephscalera.com -d mail.josephscalera.com