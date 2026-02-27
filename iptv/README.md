## 获取节目列表
```
#!/bin/bash

# 第一步：执行认证请求，保存cookie
curl http://220.186.213.198:33200/EPG/jsp/ValidAuthenticationHWCTC.jsp -c cookie.txt -H 'Content-Type: application/x-www-form-urlencoded' --data 'UserID=1577130287644743&Lang=1&SupportHD=1&NetUserID=tv1577130287644743%40itv&Authenticator=88F14763DE212645E1909AB630FED1C3530D0495323DFC1948F7F1F9A8A58D2E526D2E33BF9815929D80B94E6A168CFC8B92F7B8A05A5CFD94868CA1BFBCE2CDE1FCFA3B11FCBD06214720C5DB8A7B4909871F6621070A6C32F1042089C428CC5D33CA14B2CE8250742A5EEB7E947673D564D0FB874F16B46E80BA0F3361B0A1&STBType=EC6108V9U_pub_zjzdx&STBVersion=V100R005C10LZJD22B011&conntype=4&STBID=00100499006089301827DC9914905CC2&templateName=epg30&areaId=57701&userToken=35E9D4793DB8F0C8DACF785A7D0EA0FB&userGroupId=12&productPackageId=-1&mac=DC%3A99%3A14%3A90%3A5C%3AC2&UserField=2&SoftwareVersion=V100R005C10LZJD22B011&IsSmartStb=0&desktopId=&stbmaker=&VIP='

# 等待5秒
sleep 2

# 第二步：使用cookie获取频道列表，保存到res.html
curl http://220.186.213.198:33200/EPG/jsp/getchannellistHWCTC.jsp -b cookie.txt -o channel.jsp
```
```
HTML Form URL Encoded: application/x-www-form-urlencoded
    Form item: "UserID" = "1577130287644743"
    Form item: "Lang" = "1"
    Form item: "SupportHD" = "1"
    Form item: "NetUserID" = "tv1577130287644743@itv"
     [truncated]Form item: "Authenticator" = "88F14763DE212645E1909AB630FED1C3530D0495323DFC1948F7F1F9A8A58D2E526D2E33BF9815929D80B94E6A168CFC8B92F7B8A05A5CFD94868CA1BFBCE2CDE1FCFA3B11FCBD06214720C5DB8A7B4909871F6621070A6C32F1042089C428CC5D33CA14B2CE8250742A5EEB7E947673D564D0FB874F16B46E80BA0F3361B0A1
    Form item: "STBType" = "EC6108V9U_pub_zjzdx"
    Form item: "STBVersion" = "V100R005C10LZJD22B011"
    Form item: "conntype" = "4"
    Form item: "STBID" = "00100499006089301827DC9914905CC2"
    Form item: "templateName" = "epg30"
    Form item: "areaId" = "57701"
    Form item: "userToken" = "35E9D4793DB8F0C8DACF785A7D0EA0FB"
    Form item: "userGroupId" = "12"
    Form item: "productPackageId" = "-1"
    Form item: "mac" = "DC:99:14:90:5C:C2"
    Form item: "UserField" = "2"
    Form item: "SoftwareVersion" = "V100R005C10LZJD22B011"
    Form item: "IsSmartStb" = "0"
    Form item: "desktopId" = ""
    Form item: "stbmaker" = ""
    Form item: "VIP" = ""
```
<img width="959" alt="屏幕截图 2024-11-04 121609" src="https://github.com/user-attachments/assets/b73c2592-45bd-4f83-a9f7-92a0f6ccede4">
## option12
<img width="964" alt="屏幕截图 2024-11-04 122711" src="https://github.com/user-attachments/assets/ae44c917-1a1c-44de-8b80-a1f30856ecc7">
## option60
<img width="959" alt="屏幕截图 2024-11-04 121609" src="https://github.com/user-attachments/assets/b6266725-740c-4c62-809a-244f6cdddc7b">
## option61
<img width="962" alt="屏幕截图 2024-11-04 122712" src="https://github.com/user-attachments/assets/1beea36f-0b2d-4750-8599-ff16717f1e75">
