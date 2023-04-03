#!/bin/bash
echo "docker一键脚本，npm改变端口"
echo "-------------------端口文件替换-------------------"
rm -f /usr/local/nginx/conf/conf.d/npm.conf
curl -o /usr/local/nginx/conf/conf.d/npm.conf https://raw.githubusercontent.com/rastyu/ggjjdd/main/nginx/npm.conf
rm -f /usr/local/nginx/conf/conf.d/no-server-name.conf
curl -o /usr/local/nginx/conf/conf.d/no-server-name.conf https://raw.githubusercontent.com/rastyu/ggjjdd/main/nginx/no-server-name.conf
rm -f /usr/local/nginx/conf/conf.d/include/default.conf
curl -o /usr/local/nginx/conf/conf.d/include/default.conf https://raw.githubusercontent.com/rastyu/ggjjdd/main/nginx/include/default.conf
rm -f /app/templates/_listen.conf
curl -o /app/templates/_listen.conf https://raw.githubusercontent.com/rastyu/ggjjdd/main/nginx/templates/_listen.conf
rm -f /app/templates/default.conf
curl -o /app/templates/default.conf https://raw.githubusercontent.com/rastyu/ggjjdd/main/nginx/templates/default.conf
rm -f /app/templates/certbot-request.conf
curl -o /app/templates/certbot-request.conf https://raw.githubusercontent.com/rastyu/ggjjdd/main/nginx/templates/certbot-request.conf
echo "替换端口完成..."
pip install --upgrade pip && pip install certbot-dns-dnspod && pip install zope
rm -rf nginx.sh
echo "-------------------删除脚本完成，请重启容器-------------------"
