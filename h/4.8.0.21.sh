#!/bin/bash
echo "docker一键脚本，适4.8.0.21版本"
echo "-------------------web端-------------------"
rm -f /system/Emby.Web.dll
wget -P /system/ http://192.168.10.5:5300/d/%E6%9C%AC%E5%9C%B0%E5%AD%98%E5%82%A8/4.8.0.21/Emby.Web.dll
rm -f /system/MediaBrowser.Model.dll
wget -P /system/ http://192.168.10.5:5300/d/%E6%9C%AC%E5%9C%B0%E5%AD%98%E5%82%A8/4.8.0.21/MediaBrowser.Model.dll
echo "核心替换完成..."
rm -f /system/dashboard-ui/modules/emby-apiclient/connectionmanager.js
wget -P /system/dashboard-ui/modules/emby-apiclient/ http://192.168.10.5:5300/d/%E6%9C%AC%E5%9C%B0%E5%AD%98%E5%82%A8/4.8.0.21/connectionmanager.js
rm -f /system/dashboard-ui/embypremiere/embypremiere.js
wget -P /system/dashboard-ui/embypremiere/ http://192.168.10.5:5300/d/%E6%9C%AC%E5%9C%B0%E5%AD%98%E5%82%A8/4.8.0.21/embypremiere.js
echo "web替换完成..."
rm -f /system/Emby.Server.Implementations.dll
wget -P /system/ http://192.168.10.5:5300/d/%E6%9C%AC%E5%9C%B0%E5%AD%98%E5%82%A8/4.8.0.21/Emby.Server.Implementations.dll
echo "Implementations替换认证..."

echo "完成替换..."
rm -rf 4.8.0.21.sh
echo "-------------------删除脚本完成，预防重运行出错-------------------"
