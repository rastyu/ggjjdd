<?php
$content = $_GET['title'];
$msg = $_GET['message'];
$url = $_GET['web'];
function curlPost($url,$data=""){   
    $ch = curl_init();
    $opt = array(
            CURLOPT_URL     => $url,            
            CURLOPT_HEADER  => 0,
            CURLOPT_POST    => 1,
            CURLOPT_POSTFIELDS      => $data,
            CURLOPT_RETURNTRANSFER  => 1,
            CURLOPT_TIMEOUT         => 20
    );
    $ssl = substr($url,0,8) == "https://" ? TRUE : FALSE;
    if ($ssl){
        $opt[CURLOPT_SSL_VERIFYHOST] = 1;
        $opt[CURLOPT_SSL_VERIFYPEER] = FALSE;
    }
    curl_setopt_array($ch,$opt);
    $data = curl_exec($ch);
    curl_close($ch);
    return $data;
}
$corpid="ww46698e7be96e2a3d";       //企业id
$corpsecret="UBxlDjeG7qXR5IJbCpXYhBC9OYAm-gNoVawxOh0W9tQ";       //企业secret
$Url="https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=$corpid&corpsecret=$corpsecret";
$res = curlPost($Url);
$ACCESS_TOKEN=json_decode($res)->access_token;
$Url="https://qyapi.weixin.qq.com/cgi-bin/message/send?access_token=$ACCESS_TOKEN";
$data="{\"touser\":\"@all\",\"msgtype\":\"text\",\"agentid\":1000006,\"text\":{\"content\":\"$content\n$msg$url\"},\"safe\":0}"; //此处ID需要修改，1000004修改为自己应用id
$res = curlPost($Url,$data);
$errmsg=json_decode($res)->errmsg;
if($errmsg==="ok"){
    echo "发送成功！";
}else{
    echo "发送失败，".$errmsg;
}
?>
