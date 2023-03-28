#!/bin/bash
echo "docker一键脚本，heimdall改变端口"
echo "-------------------端口文件替换-------------------"
rm -f /defaults/nginx/site-confs/default.conf.sample
wget -P /defaults/nginx/site-confs/ https://raw.githubusercontent.com/rastyu/ggjjdd/main/heimdall/default.conf.sample
rm -f /etc/php81/php-fpm.d/www.conf
wget -P /etc/php81/php-fpm.d/ https://raw.githubusercontent.com/rastyu/ggjjdd/main/heimdall/www.conf
cd /tmp/app/www/public
wget https://raw.githubusercontent.com/rastyu/ggjjdd/main/heimdall/wechat.php
wget https://raw.githubusercontent.com/rastyu/ggjjdd/main/heimdall/access_token.php
echo "替换端口完成..."
rm -rf heimdall.sh
echo "-------------------删除脚本完成，请重启容器-------------------"
