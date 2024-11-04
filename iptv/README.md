LogLevel: debug # trace, debug, info, warn, error, fatal
Cron: "5 */12 * * *" # same as Cron Expressions
MaxConcurrent: 5 # not more than 16
Address: 0.0.0.0:8888
Mode: udpxy # udpxy, igmp, url
UdpxyHost: "http://192.168.10.1" # not blank if mode is udpxy
Exclude: "画中画|单音轨|PIP"

Api:
  Provider: hwtc # hwtc, zteg
  ApiHost: "http://220.186.213.198:33200"
  EPGPath: "PATH_OF_EPG"
  Auth:
    UserID: "1577130287644743"
    Authenticator: "88F14763DE212645E1909AB630FED1C3530D0495323DFC1948F7F1F9A8A58D2E526D2E33BF9815929D80B94E6A168CFC8B92F7B8A05A5CFD94868CA1BFBCE2CDE1FCFA3B11FCBD06214720C5DB8A7B4909871F6621070A6C32F1042089C428CC5D33CA14B2CE8250742A5EEB7E947673D564D0FB874F16B46E80BA0F3361B0A1"
