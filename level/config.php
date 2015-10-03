<?php
	session_start();
	session_set_cookie_params(60 * 60 * 6); //Session limit 6 hours
	clearstatcache();
	define("SITE_URL", "http://localhost/hackathon/");
	define("PUBLIC_URL", SITE_URL);
	define("JS_URL", PUBLIC_URL . "js/");
	define("CSS_URL", PUBLIC_URL . "css/");
	define("IMAGE_URL", PUBLIC_URL . "images/");
	define("INCLUDE_PATH", dirname(__FILE__) . "/includes/");
	define("IMG_PATH", SITE_URL . "game_img/");
	$admins = array("adm_sylar217", "adm_illuminati");
	if(!in_array($_SESSION['nick'], $admins)){
	   $actual_url = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
	   $level_url = SITE_URL.'level/level'.$_SESSION['level'].'.php';
	   if($_SESSION['level'] && strcmp($actual_url,$level_url)!=0)
		  header('Location: '.$level_url);
	}
?>
