<?php
return array(
	'URL_HTML_SUFFIX'=>'html|shtml', //伪静态
	'TMPL_TEMPLATE_SUFFIX'=>'.html',
    'VAR_FILTERS'=>'htmlspecialchars',
    'URL_MODEL'          => '2', //URL模式
    'SESSION_AUTO_START' => false, //是否开启session
	//模块方法的路径访问方式配置
	'TMPL_FILE_DEPR'=>'/',
	//数据库配置信息
    'DB_TYPE'   => 'mysql', // 数据库类型
	'DB_HOST'   => 'localhost',
    'DB_NAME'   => 'oauth', // 数据库名
    'DB_USER'   => 'root',
	'DB_PWD'    => 'root',
    'DB_PORT'   => 3306, // 端口
    'DB_PREFIX' => 'oauth_', // 数据库表前缀 
	'dsn'=>'mysql:host=localhost;dbname=oauth;',
	//公共路径配置
	'TMPL_PARSE_STRING'=>array(  
			'__PUBLIC__'=>__ROOT__.'/Public',
			'__CSS__'=>__ROOT__.'/Public/Common/Css',
			'__JS__'=>__ROOT__.'/Public/Common/Js',
			'__IMG__'=>__ROOT__.'/Public/Common/Images',
			'__ADMINCSS__'=>__ROOT__.'/Public/Admin/Css',
			'__ADMINJS__'=>__ROOT__.'/Public/Admin/Js',
			'__ADMINIMG__'=>__ROOT__.'/Public/Admin/Images',
            '__ADMIN__'=>__ROOT__.'/Public/Admin/',
			'__ADMINFT__'=>__ROOT__.'/Public/Admin/fonts',
			'__HOMECSS__'=>__ROOT__.'/Public/Home/Css',
			'__HOMEJS__'=>__ROOT__.'/Public/Home/Js',
			'__HOMEIMG__'=>__ROOT__.'/Public/Home/Images',
	),
);
?>
