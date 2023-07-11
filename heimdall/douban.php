<?php
  // 获取传递的链接
  $doubanLink = $_GET['link'];
  // 如果是豆瓣图片链接
  if (strpos($doubanLink, "doubanio") !== false) {
    for($i = 2;$i<=9;$i++){
      $doubanLink = str_replace("img".$i, "img1", $doubanLink);
    }
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $doubanLink);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'GET');
    $headers = array();
    $headers[] = 'Referer: https://movie.douban.com';
    $headers[] = 'User-Agent: PostmanRuntime/7.32.3';
    $headers[] = 'Host: img1.doubanio.com';
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    
    $result = curl_exec($ch);
    if (curl_errno($ch)) {
        echo 'Error:' . curl_error($ch);
    }
    curl_close($ch);
  }else{
    // 如果是tmdb图片链接则正常请求
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $doubanLink);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'GET');
    
    $result = curl_exec($ch);
    if (curl_errno($ch)) {
        echo 'Error:' . curl_error($ch);
    }
    curl_close($ch);
  }
  // 将获取的图片内容返回给前端
  header('Content-Type: image/jpeg');
  echo $result;
  // 清除缓冲区
  ob_flush();
  flush();
?>