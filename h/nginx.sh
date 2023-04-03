#!/bin/bash
echo "docker一键脚本，npm改变端口"
echo "-------------------端口文件替换-------------------"
rm -f /usr/local/nginx/conf/conf.d/npm.conf
wget -P /usr/local/nginx/conf/conf.d/ "https://raw.githubusercontent.com/rastyu/ggjjdd/main/nginx/npm.conf"
rm -f /usr/local/nginx/conf/conf.d/no-server-name.conf
wget -P /usr/local/nginx/conf/conf.d/ "https://raw.githubusercontent.com/rastyu/ggjjdd/main/nginx/no-server-name.conf"
rm -f /usr/local/nginx/conf/conf.d/include/default.conf
wget -P /usr/local/nginx/conf/conf.d/include/ "https://raw.githubusercontent.com/rastyu/ggjjdd/main/nginx/include/default.conf"
rm -f /app/templates/_listen.conf
wget -P /app/templates/ "https://raw.githubusercontent.com/rastyu/ggjjdd/main/nginx/templates/_listen.conf"
rm -f /app/templates/default.conf
wget -P /app/templates/ "https://raw.githubusercontent.com/rastyu/ggjjdd/main/nginx/templates/default.conf"
rm -f /app/templates/certbot-request.conf
wget -P /app/templates/ "https://raw.githubusercontent.com/rastyu/ggjjdd/main/nginx/templates/certbot-request.conf"
echo "替换端口完成..."
pip install certbot-dns-dnspod && pip install zope
rm -rf nginx.sh
echo "-------------------删除脚本完成，请重启容器-------------------"
