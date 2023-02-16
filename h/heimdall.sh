#!/bin/bash
echo "docker一键脚本，heimdall改变端口"
echo "-------------------端口文件替换-------------------"
# rm -f /config/nginx/site-confs/default.conf
wget -P /root/defaults/nginx/site-confs/ https://raw.githubusercontent.com/rastyu/ggjjdd/main/heimdall/default.conf
rm -f /etc/php81/php-fpm.d/www.conf
wget -P /etc/php81/php-fpm.d/ https://raw.githubusercontent.com/rastyu/ggjjdd/main/heimdall/www.conf
echo "替换端口完成..."
rm -rf heimdall.sh
echo "-------------------删除脚本完成，请重启容器-------------------"
