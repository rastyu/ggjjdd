#!/bin/bash
echo "docker一键脚本，heimdall改变端口"
echo "-------------------端口文件替换-------------------"
rm -f /config/nginx/site-confs/default.conf
wget -P / 
rm -f /
wget -P /168.10.5:5300/d/%E6%9C%AC%E5%9C%B0%E5%AD%98%E5%82%A8/4.7.11/light/theme.css
echo "替换端口完成..."
rm -rf heimdall.sh
echo "-------------------删除脚本完成，请重启容器-------------------"
