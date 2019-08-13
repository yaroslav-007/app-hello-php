#!/usr/bin/env bash

[ -d /vagrant ] && pushd /vagrant

rm -Rf /var/www/html 
cp -R html /var/www/
