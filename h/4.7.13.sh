#!/bin/bash
echo "docker一键脚本，适4.7.13版本"
echo "-------------------web端-------------------"
rm -f /system/Emby.Web.dll
wget -P /system/ /rastyu/ggjjdd/main/emby/4.7.13/Emby.Web.dll
rm -f /system/MediaBrowser.Model.dll
wget -P /system/ /rastyu/ggjjdd/main/emby/4.7.13/MediaBrowser.Model.dll
echo "核心替换完成..."
rm -f /system/dashboard-ui/modules/emby-apiclient/connectionmanager.js
wget -P /system/dashboard-ui/modules/emby-apiclient/ /rastyu/ggjjdd/main/emby/4.7.13/connectionmanager.js
rm -f /system/dashboard-ui/embypremiere/embypremiere.js
wget -P /system/dashboard-ui/embypremiere/ /rastyu/ggjjdd/main/emby/4.7.13/embypremiere.js
echo "web替换完成..."
rm -f /system/Emby.Server.Implementations.dll
wget -P /system/ /rastyu/ggjjdd/main/emby/4.7.13/Emby.Server.Implementations.dll
echo "Implementations替换认证..."
rm -rf 4.7.13.sh
echo "-------------------删除脚本完成，预防重运行出错-------------------"
