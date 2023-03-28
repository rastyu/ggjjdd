<?php
//群晖nas发送告警
$agentid = $_GET['agentid'];
$title = $_GET['title'];
$description = $_GET['mssage'];
$web = $_GET['web'];
// 声明页面 header
header("Content-type:text/html;charset=utf-8");
// 获取 access_token
function getToken(){
    // 定义 id 和 secret
    $corpid='ww46698e7be96e2a3d';//这里填写你的企业 ID
    $corpsecret = $_GET['corpsecret'];//这里填写你刚创建的应用 secret
    // 读取 access_token
    include './access_token.php';
    // 判断是否过期
    if (time() > $access_token['expires']){
        // 如果已经过期就得重新获取并缓存
        $access_token = array();
        $access_token['access_token'] = getNewToken($corpid,$corpsecret);
        $access_token['expires']=time()+7000;
        // 将数组写入 php 文件
        $arr = '<?php'.PHP_EOL.'$access_token = '.var_export($access_token,true).';'.PHP_EOL.'?>';
        $arrfile = fopen("./access_token.php","w");
        fwrite($arrfile,$arr);
        fclose($arrfile);
        // 返回当前的 access_token
        return $access_token['access_token'];
    }else{
        // 如果没有过期就直接读取缓存文件
        return $access_token['access_token'];
    }
}
// 获取新的 access_token
function getNewToken($corpid,$corpsecret){
    $url = "https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid={$corpid}&corpsecret={$corpsecret}";
    $access_token_Arr =  https_request($url);
    return $access_token_Arr['access_token'];
}
// curl 请求函数
function https_request ($url){
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    $out = curl_exec($ch);
    curl_close($ch);
    return  json_decode($out,true);
}
// 发送应用消息函数
function send($data){
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, 'https://qyapi.weixin.qq.com/cgi-bin/message/send?access_token='.getToken());
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    return curl_exec($ch);
}
 // 文本卡片消息体
 $postdata = array(
    'touser' => '@all',          //不需要写联系人，会发送给所有人
    'msgtype' => 'textcard',
    'agentid' => $agentid,//这里填写你刚创建的应用 AgentId
    'textcard' => array(
        'title' => $title,
        'description' => $description,
        'url' => $web,  //这里的域名写不写都可以，可以写成群晖nas的域名
    ),
    'enable_id_trans' => 0,
    'enable_duplicate_check' => 0,
    'duplicate_check_interval' => 1800
);
// 调用发送函数
 echo send(json_encode($postdata));
// echo "$title, $description"
?>
