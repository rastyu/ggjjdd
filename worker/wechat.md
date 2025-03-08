```
addEventListener('fetch', event => {
  event.respondWith(handleRequest(event.request))
})

// 获取Token
async function getTocken(secert, msg, agentId) {
  const url = `https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=ww46698e7be96e2a3d&corpsecret=${secert}`;

  const response = await fetch(url);
  const data = await response.json();
  const token = data.access_token;
  return sendText(token, agentId, msg);
}

// 发送文本信息
async function sendText(token, agentId, msg) {
  const sendUrl = `https://qyapi.weixin.qq.com/cgi-bin/message/send?access_token=${token}`;
  const data = JSON.stringify({
    "safe": 0,
    "touser": "CaiYang",
    "msgtype": "text",
    "agentid": agentId,
    "text": {
      "content": msg
    }
  });

  const response = await fetch(sendUrl, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: data
  });
  return response.json();
}

async function handleRequest(request) {
  const { searchParams } = new URL(request.url);
  let status = 0, apimsg = '';

  // 读取参数
  const apiSecert = searchParams.get('secert');
  const apiAgentId = searchParams.get('agentId');
  const apiMsgParam = searchParams.get('msg');

  if (!apiSecert || !apiAgentId || !apiMsgParam) {
    apimsg = '有必填参数没有填写，请检查是否填写正确和格式是否错误。';
    status = 1;
  } else {
    try {
      // 执行主程序
      await getTocken(apiSecert, apiMsgParam, apiAgentId);
    } catch (error) {
      status = 1;
      apimsg = '主程序运行时出现错误，请检查参数是否填写正确。';
    }
  }

  return new Response(JSON.stringify({
    "status": status,
    "msg": apimsg
  }), {
    headers: { 'Content-Type': 'application/json' },
  });
}
```
