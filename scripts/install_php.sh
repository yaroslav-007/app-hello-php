#!/usr/bin/env bash
set -x

# install nginx and php
which nginx php curl || {
  apt-get update
  apt-get -y install nginx curl php-fmp
}

systemctl stop nginx

# remove default config
[ -f /etc/nginx/sites-enabled/default ] && unlink /etc/nginx/sites-enabled/default

# change dir to /vagrant if we are in a vagrant vm
[ -d /vagrant ] && pushd /vagrant

# deploy our conf file
cp conf/nginx.conf /etc/nginx/conf.d/php.conf

systemctl start nginx
