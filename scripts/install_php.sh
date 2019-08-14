#!/usr/bin/env bash
set -x

# install nginx and php
apt-get update
apt-get -y install nginx php php-fpm curl

systemctl stop nginx

# remove default config
[ -f /etc/nginx/sites-available/default ] && unlink /etc/nginx/sites-available/default

# change dir to /vagrant if we are in a vagrant vm
[ -d /vagrant ] && pushd /vagrant

# deploy our conf file
cp conf/nginx.conf /etc/nginx/conf.d/php.conf

systemctl start nginx
