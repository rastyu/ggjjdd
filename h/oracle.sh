#!/bin/bash
echo "docker一键脚本，npm改变端口"
echo "-------------------端口文件替换-------------------"
rm -f /etc/nginx/conf.d/production.conf
curl -o /etc/nginx/conf.d/production.conf https://raw.githubusercontent.com/rastyu/ggjjdd/main/oracle/production.conf
echo "替换端口完成..."
pip install certbot-dns-dnspod && pip install zope
rm -rf oracle.sh
echo "-------------------删除脚本完成，请重启容器-------------------"
