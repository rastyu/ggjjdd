#!/bin/bash
echo "docker一键脚本，npm改变端口"
echo "-------------------端口文件替换-------------------"
rm -f /app/global/certbot-dns-plugins.js
curl -o /app/global/certbot-dns-plugins.js https://raw.githubusercontent.com/rastyu/ggjjdd/main/nginx/certbot-dns-plugins.js
echo "替换端口完成..."
rm -rf nginx.sh
echo "-------------------删除脚本完成，请重启容器-------------------"
