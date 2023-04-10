#!/bin/bash

sudo cp -rf jenkinspro.conf /etc/nginx/conf.d
chmod 710 /var/lib/jenkins/workspace/django-cicd

sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "NGINX has been started"

sudo systemctl status nginx