<?php
header("Content-Type:text/html;charset=utf-8");
define("APP_NAME", 'APP');
define("APP_PATH", './APP/');
define("APP_DEBUG", true);
define('BUILD_DIR_SECURE',true);
define('DIR_SECURE_FILENAME', 'default.html');
define('DIR_SECURE_CONTENT', 'deney Access!');
require './ThinkPHP/ThinkPHP.php';

///server端