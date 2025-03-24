```
addEventListener('fetch', event => {
    event.respondWith(handleRequest(event.request))
})

async function handleRequest(request) {
    const phone = '17774030951'; // 车主的手机号

    const htmlContent = `
      <!DOCTYPE html>
      <html lang="zh-CN">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>通知车主挪车</title>
          <style>
            * { box-sizing: border-box; margin: 0; padding: 0; }
            body { font-family: Arial, sans-serif; display: flex; align-items: center; justify-content: center; height: 100vh; background: #f0f2f5; color: #333; }
            .container { text-align: center; padding: 20px; width: 100%; max-width: 400px; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); background: #fff; }
            h1 { font-size: 24px; margin-bottom: 20px; color: #007bff; }
            p { margin-bottom: 20px; font-size: 16px; color: #555; }
            button { 
              width: 100%; 
              padding: 15px; 
              margin: 10px 0; 
              font-size: 18px; 
              font-weight: bold; 
              color: #fff; 
              border: none; 
              border-radius: 6px; 
              cursor: pointer; 
              transition: background 0.3s; 
            }
            .notify-btn { background: #28a745; }
            .notify-btn:hover { background: #218838; }
            .call-btn { background: #17a2b8; }
            .call-btn:hover { background: #138496; }
          </style>
        </head>
        <body>
          <div class="container">
            <h1>通知车主挪车</h1>
            <p>如需通知车主，请点击以下按钮</p>
            <button class="notify-btn" onclick="notifyOwner()">通知车主挪车</button>
            <button class="call-btn" onclick="callOwner()">拨打车主电话</button>
          </div>

          <script>
            // 获取或设置最后通知的时间戳
            function getLastNotifyTime() {
              return localStorage.getItem('lastNotifyTime') || 0;
            }

            function setLastNotifyTime(time) {
              localStorage.setItem('lastNotifyTime', time);
            }

            // 检查是否可以发送通知
            function canNotify() {
              const lastNotifyTime = getLastNotifyTime();
              const currentTime = Date.now();
              const fiveMinutesAgo = currentTime - 1 * 60 * 1000;
              return lastNotifyTime < fiveMinutesAgo;
            }

            // 调用 企业微信API 来发送挪车通知
            function notifyOwner() {
              if (!canNotify()) {
                alert("请等待1分钟后再次尝试通知。");
                return;
              }

              fetch("https://wechat.75969207.xyz/?secert=Gy2VJkwpOdTdkfjSYbSl7HWdIzYcRokWOKIovYNqk30&agentId=1000009&media=2UPNxm5sXZ7949CiMziBEr099vjrZqbzSUq8iYnJra0TdTbZeSlfrTyGTwQSMVHXe&title=挪车提醒&msg=您好阿维塔车主，有人需要您挪车，请及时处理。", {
                method: "POST",
                headers: { "Content-Type": "application/json" }})
                  alert("通知已发送！");
                  setLastNotifyTime(Date.now());
            }

            // 拨打车主电话
            function callOwner() {
              window.location.href = "tel:${phone}";
            }
          </script>
        </body>
      </html>
    `

    return new Response(htmlContent, {
      headers: { 'Content-Type': 'text/html;charset=UTF-8' },
    })
}
```
