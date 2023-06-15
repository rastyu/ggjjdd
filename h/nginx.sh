#!/bin/bash
echo "docker一键脚本，npm改变端口"
echo "-------------------端口文件替换-------------------"
rm -f /opt/nginx-proxy-manager/global/certbot-dns-plugins.js
curl -o /opt/nginx-proxy-manager/global/certbot-dns-plugins.js https://raw.githubusercontent.com/rastyu/ggjjdd/main/nginx/certbot-dns-plugins.js
apt update
apt install build-essential libssl-dev libffi-dev python3-dev
pip install -r https://zopefoundation.github.io/Zope/releases/5.8.1/requirements-full.txt
echo "替换端口完成..."
rm -rf nginx.sh
echo "-------------------删除脚本完成，请重启容器-------------------"
