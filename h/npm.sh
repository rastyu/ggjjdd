#!/bin/bash
echo "docker一键脚本，npm改变端口"
echo "-------------------端口文件替换-------------------"
rm -f /etc/nginx/conf.d/default.conf
curl -o /etc/nginx/conf.d/default.conf https://ghproxy.com/https://raw.githubusercontent.com/rastyu/ggjjdd/main/npm/default.conf
rm -f /etc/nginx/conf.d/production.conf
curl -o /etc/nginx/conf.d/production.conf https://ghproxy.com/https://raw.githubusercontent.com/rastyu/ggjjdd/main/npm/production.conf
rm -f /app/templates/_listen.conf
curl -o /app/templates/_listen.conf https://ghproxy.com/https://raw.githubusercontent.com/rastyu/ggjjdd/main/npm/templates/_listen.conf
rm -f /app/templates/default.conf
curl -o /app/templates/default.conf https://ghproxy.com/https://raw.githubusercontent.com/rastyu/ggjjdd/main/npm/templates/default.conf
rm -f /app/templates/letsencrypt-request.conf
curl -o /app/templates/letsencrypt-request.conf https://ghproxy.com/https://raw.githubusercontent.com/rastyu/ggjjdd/main/npm/templates/letsencrypt-request.conf
echo "替换端口完成..."
pip install certbot-dns-dnspod
pip install zope
rm -rf npm.sh
echo "-------------------删除脚本完成，请重启容器-------------------"
