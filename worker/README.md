# cloudflare的worker配置

## github
```
https://github.com/hunshcn/gh-proxy/blob/master/index.js
```
## clash
```
https://github.com/3Kmfi6HP/EDtunnel/blob/main/_worker.js
```

修改uuid  
let userID = 'cae9d245-31c2-46e2-bc74-3fc54cbac7d2'

## subconverter
```
https://github.com/bulianglin/psub/blob/main/worker.js
```

环境变量名：`BACKEND`

KV或R2变量名：`SUB_BUCKET`

## 微信通知
https://wechat.75969207.xyz/?secert=xxxxxxx&agentId=xxxxxxx&media=xxx&title=xxxx&msg=text

secert：`应用秘钥`  
agentId：`应用id`  
msg：`消息内容`  
title：`主题内容`  
web：`网站内容`

```
   "touser": "CaiYang",
   "msgtype": "textcard",
   "agentid": agentId,
   "textcard":{
            "title": title,
            "description": msg,
            "url": web
   }
```
```
    "touser": "CaiYang",
    "msgtype": "text",
    "agentid": agentId,
    "safe": 0,
    "text": {
      "content": msg
    }
```
```
    "touser": "CaiYang",
    "msgtype": "markdown",
    "agentid": agentId,
    "safe": 0,
    "markdown": {
      "content": msg
    }
```
```
   "touser": "CaiYang",
   "msgtype": "mpnews",
   "agentid": agentId,
   "safe":0
   "mpnews": {
       "articles":[
           {
               "title": title,
               "thumb_media_id": media,
               "content": msg,
               "digest": msg
            }
       ]
   }
```
