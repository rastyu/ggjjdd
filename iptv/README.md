## 获取节目列表
```
#!/bin/bash

# 第一步：执行认证请求，保存cookie
curl http://220.186.213.198:33200/EPG/jsp/ValidAuthenticationHWCTC.jsp -c cookie.txt -H 'Content-Type: application/x-www-form-urlencoded' --data 'UserID=1577130287644743&Lang=1&SupportHD=1&NetUserID=tv1577130287644743%40itv&Authenticator=88F14763DE212645E1909AB630FED1C3530D0495323DFC1948F7F1F9A8A58D2E526D2E33BF9815929D80B94E6A168CFC8B92F7B8A05A5CFD94868CA1BFBCE2CDE1FCFA3B11FCBD06214720C5DB8A7B4909871F6621070A6C32F1042089C428CC5D33CA14B2CE8250742A5EEB7E947673D564D0FB874F16B46E80BA0F3361B0A1&STBType=EC6108V9U_pub_zjzdx&STBVersion=V100R005C10LZJD22B011&conntype=4&STBID=00100499006089301827DC9914905CC2&templateName=epg30&areaId=57701&userToken=35E9D4793DB8F0C8DACF785A7D0EA0FB&userGroupId=12&productPackageId=-1&mac=DC%3A99%3A14%3A90%3A5C%3AC2&UserField=2&SoftwareVersion=V100R005C10LZJD22B011&IsSmartStb=0&desktopId=&stbmaker=&VIP='

# 第二步：使用cookie获取频道列表，保存到channel.jsp
sleep 2 && curl http://220.186.213.198:33200/EPG/jsp/getchannellistHWCTC.jsp -b cookie.txt -o channel.jsp

# 使用cookie获取频道列表
#sleep 2 && curl http://220.186.213.198:33200/EPG/jsp/gdhdpublic/Ver.3/common/data.jsp?Action=channelListAll -b cookie.txt -o channelList.txt

# 使用cookie获取频道图标
#sleep 2 && curl http://220.186.213.198:33200/CPS/images/universal/film/logo/202303/20230328/66/202303280139402806pc.png -b cookie.txt -o tv.png

# 使用cookie获取频道预告信息
# 5424 温州一套
#sleep 2 && curl -X POST -d "Action=channelProgramList&channelId=5424&date=20260227" http://220.186.213.198:33200/EPG/jsp/gdhdpublic/Ver.3/common/data.jsp? -b cookie.txt -o epg.txt

```
```
{
  "UserID": "1577130287644743",
  "Lang": "1",
  "SupportHD": "1",
  "NetUserID": "tv1577130287644743@itv",
  "Authenticator": "88F14763DE212645E1909AB630FED1C3530D0495323DFC1948F7F1F9A8A58D2E526D2E33BF9815929D80B94E6A168CFC8B92F7B8A05A5CFD94868CA1BFBCE2CDE1FCFA3B11FCBD06214720C5DB8A7B4909871F6621070A6C32F1042089C428CC5D33CA14B2CE8250742A5EEB7E947673D564D0FB874F16B46E80BA0F3361B0A1",
  "STBType": "EC6108V9U_pub_zjzdx",
  "STBVersion": "V100R005C10LZJD22B011",
  "conntype": "4",
  "STBID": "00100499006089301827DC9914905CC2",
  "templateName": "epg30",
  "areaId": "57701",
  "userToken": "35E9D4793DB8F0C8DACF785A7D0EA0FB",
  "userGroupId": "12",
  "productPackageId": "-1",
  "mac": "DC:99:14:90:5C:C2",
  "UserField": "2",
  "SoftwareVersion": "V100R005C10LZJD22B011",
  "IsSmartStb": "0",
  "desktopId": "",
  "stbmaker": "",
  "VIP": ""
}
```
### 正则查找 替换\n
```
"backTime":(\d+),"playChannelID":(\d+)},
```
```
\n
```
### 正则查找
```
{"code":"(\d+)","timeShift":(\d+),"isTvod":(\d+),"name":"(.+?)","pic":"(.+?)","viewChannelID":(\d+),"channelID":(\d+),
```
### 替换 台标
```
sleep 1 && curl \5 -b cookie.txt -o ./台标/\4.png
```

### 替换 epg
```
sleep 1 && curl -X POST -d "Action=channelProgramList&channelId=\7&date=$data" http://220.186.213.198:33200/EPG/jsp/gdhdpublic/Ver.3/common/data.jsp? -b cookie.txt -o ./epg/\4.txt
```
<img width="959" alt="屏幕截图 2024-11-04 121609" src="https://github.com/user-attachments/assets/b73c2592-45bd-4f83-a9f7-92a0f6ccede4">
## option12
<img width="964" alt="屏幕截图 2024-11-04 122711" src="https://github.com/user-attachments/assets/ae44c917-1a1c-44de-8b80-a1f30856ecc7">
## option60
<img width="959" alt="屏幕截图 2024-11-04 121609" src="https://github.com/user-attachments/assets/b6266725-740c-4c62-809a-244f6cdddc7b">
## option61
<img width="962" alt="屏幕截图 2024-11-04 122712" src="https://github.com/user-attachments/assets/1beea36f-0b2d-4750-8599-ff16717f1e75">
