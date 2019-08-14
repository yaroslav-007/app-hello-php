#!/usr/bin/env bash
set -x

[ -d /vagrant ] && pushd /vagrant

rm -Rf /var/www/html 
cp -R html /var/www/
