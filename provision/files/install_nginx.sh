#!/bin/bash
# wget -P /tmp http://hg.nginx.org/nginx/archive/tip.zip
# cd /tmp
# unzip /tmp/tip.zip
# cd nginx*
# ./configure
# make
# sudo make install
# rm -rf /tmp/tip.zip

yum groupinstall " Development Tools"  -y
yum install zlib-devel pcre-devel openssl-devel -y
yum install epel-release -y
yum install perl perl-devel perl-ExtUtils-Embed libxslt libxslt-devel libxml2 libxml2-devel gd gd-devel GeoIP GeoIP-devel -y
# wget https://nginx.org/download/nginx-1.13.6.tar.gz
wget -P /tmp https://nginx.org/download/nginx-1.17.1.tar.gz
tar -xzf /tmp/nginx-1.17.1.tar.gz
cd nginx-1.17.1/
./configure --prefix=/etc/nginx --sbin-path=/usr/sbin/nginx --error-log-path=/var/log/nginx/error.log --pid-path=/var/run/nginx.pid --lock-path=/var/run/nginx.lock --user=nginx --group=nginx
make
make install
 nginx -v
 useradd nginx
 chown -R nginx:nginx /etc/nginx/