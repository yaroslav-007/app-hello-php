#!/usr/bin/env bash
set -x

apt-get update
apt-get -y install nginx php php-fpm curl

[ -d /vagrant ] && pushd /vagrant

[ -f /etc/nginx/sites-available/default ] && unlink /etc/nginx/sites-available/default
cp conf/nginx.conf /etc/nginx/conf.d/php.conf

systemctl restart nginx
