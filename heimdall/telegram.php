<?PHP
$token = $_GET['token'];
$chat_id = "1805662925";
$message = $_GET['message'];
$bot_url    = "https://api.telegram.org/bot$token/";
$url = $bot_url."sendMessage?chat_id=".$chat_id."&text=".urlencode($message);
file_get_contents($url);
?>