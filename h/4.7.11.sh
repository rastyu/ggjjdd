#!/bin/bash
echo "docker一键脚本，适4.7.11版本"
echo "-------------------web端-------------------"
rm -f /system/Emby.Web.dll
wget -P /system/ http://192.168.10.5:5300/d/%E6%9C%AC%E5%9C%B0%E5%AD%98%E5%82%A8/4.7.11/Emby.Web.dll
rm -f /system/MediaBrowser.Model.dll
wget -P /system/ http://192.168.10.5:5300/d/%E6%9C%AC%E5%9C%B0%E5%AD%98%E5%82%A8/4.7.11/MediaBrowser.Model.dll
echo "核心替换完成..."
rm -f /system/dashboard-ui/modules/emby-apiclient/connectionmanager.js
wget -P /system/dashboard-ui/modules/emby-apiclient/ http://192.168.10.5:5300/d/%E6%9C%AC%E5%9C%B0%E5%AD%98%E5%82%A8/4.7.11/connectionmanager.js
rm -f /system/dashboard-ui/embypremiere/embypremiere.js
wget -P /system/dashboard-ui/embypremiere/ http://192.168.10.5:5300/d/%E6%9C%AC%E5%9C%B0%E5%AD%98%E5%82%A8/4.7.11/embypremiere.js
echo "web替换完成..."
rm -f /system/Emby.Server.Implementations.dll
wget -P /system/ http://192.168.10.5:5300/d/%E6%9C%AC%E5%9C%B0%E5%AD%98%E5%82%A8/4.7.11/Emby.Server.Implementations.dll
echo "Implementations替换认证..."


echo "网页播放器背景图片透明度微调，背景图片稍微会清楚一点。"
rm -f /system/dashboard-ui/modules/themes/dark/theme.css
wget -P /system/dashboard-ui/modules/themes/dark/ http://192.168.10.5:5300/d/%E6%9C%AC%E5%9C%B0%E5%AD%98%E5%82%A8/4.7.11/dark/theme.css
rm -f /system/dashboard-ui/modules/themes/light/theme.css
wget -P /system/dashboard-ui/modules/themes/light/ http://192.168.10.5:5300/d/%E6%9C%AC%E5%9C%B0%E5%AD%98%E5%82%A8/4.7.11/light/theme.css
echo "替换主题css完成..."
rm -rf 4.7.11.sh
echo "-------------------删除脚本完成，预防重运行出错-------------------"
