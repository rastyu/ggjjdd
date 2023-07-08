#!/bin/bash
echo "docker一键脚本，适4.8.0.39版本"
echo "-------------------web端-------------------"
rm -f /system/Emby.Web.dll
wget -P /system/ https://raw.githubusercontent.com/rastyu/ggjjdd/main/emby/test/Emby.Web.dll
rm -f /system/MediaBrowser.Model.dll
wget -P /system/ https://raw.githubusercontent.com/rastyu/ggjjdd/main/emby/test/MediaBrowser.Model.dll
echo "核心替换完成..."
rm -f /system/dashboard-ui/embypremiere/embypremiere.js
wget -P /system/dashboard-ui/embypremiere/ https://raw.githubusercontent.com/rastyu/ggjjdd/main/emby/test/embypremiere.js
echo "web替换完成..."
rm -f /system/Emby.Server.Implementations.dll
wget -P /system/ https://raw.githubusercontent.com/rastyu/ggjjdd/main/emby/test/Emby.Server.Implementations.dll
echo "Implementations替换认证..."
rm -rf 4.8.0.39.sh
echo "-------------------删除脚本完成，预防重运行出错-------------------"
