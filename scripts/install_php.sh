#!/usr/bin/env bash

apt-get update
apt-get -y install nginx php php-fpm curl
[ -f /etc/nginx/sites-available/default ] && unlink /etc/nginx/sites-available/default
cp /vagrant/conf/nginx.conf /etc/nginx/conf.d/php.conf

systemctl restart nginx