#!/bin/bash
echo "docker一键脚本，npm改变端口"
echo "-------------------端口文件替换-------------------"
rm -f /etc/nginx/conf.d/default.conf
curl -fsSL  /etc/nginx/conf.d/ https://ghproxy.com/https://raw.githubusercontent.com/rastyu/ggjjdd/main/npm/default.conf
rm -f /etc/nginx/conf.d/production.conf
curl -fsSL  /etc/nginx/conf.d/ https://ghproxy.com/https://raw.githubusercontent.com/rastyu/ggjjdd/main/npm/production.conf
rm -f /app/templates/_listen.conf
curl -fsSL  /app/templates/ https://ghproxy.com/https://raw.githubusercontent.com/rastyu/ggjjdd/main/npm/templates/_listen.conf
rm -f /app/templates/default.conf
curl -fsSL  /app/templates/ https://ghproxy.com/https://raw.githubusercontent.com/rastyu/ggjjdd/main/npm/templates/default.conf
rm -f /app/templates/letsencrypt-request.conf
curl -fsSL  /app/templates/ https://ghproxy.com/https://raw.githubusercontent.com/rastyu/ggjjdd/main/npm/templates/letsencrypt-request.conf
echo "替换端口完成..."
rm -rf npm.sh
echo "-------------------删除脚本完成，请重启容器-------------------"
