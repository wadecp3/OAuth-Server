<?php
/**
 * oauth2 认证服务器端
 * @author wade
 *
 */
class OauthAction extends Action {
	/**
	 * 初始化对象
	 * @param unknown $config
	 */
	function __construct($config = array()) {
		parent::__construct ();
		require_once ('./OAuth2/Autoloader.php');
		$config = $dbOptions;
		OAuth2\Autoloader::register ();
		$this->storage = new OAuth2\Storage\Pdo ( array (
				'dsn' => C('dsn'),
				'username' => C('DB_USER'),
				'password' => C('DB_PWD') 
		) );
		$this->server = new OAuth2\Server ( $this->storage, array (
				'allow_implicit' => true //隐式授权
		) );
		$this->request = OAuth2\Request::createFromGlobals ();
		$this->response = new OAuth2\Response ();
	}
	/**
	 * 客户端首次访问获取请求授权页面
	 * 服务器端进行登陆授权  授权成功后重定向到redirect_url
	 */
	public function authorize() {
		$scope = I ( "scope" );
		$state = I ( "state" );
		$client_id = I ( "client_id" );
		$redirect_uri = I ( "redirect_uri" );
		$response_type = I ( "response_type" );
		if (! isset ( $_POST ["authorized"] )) {
			$this->check_client_id ();
			$data = array (
					"scope" => $scope,
					"state" => $state,
					"client_id" => $client_id,
					"redirect_uri" => $redirect_uri,
					"response_type" => $response_type 
			);
			$this->display ();//首次重定向到登陆授权页面
		} else {
			// 验证登陆
			$name = $_POST ['username'];
			$pass = $_POST ['pass'];
			$model = M ( "users" );
			$rs = $model->where ( "username='{$name}' and password='{$pass}'" )->find ();
			if (empty ( $rs )) {
				echo "用户名 密码错误";
				die ();
			}
			$authorized = I ( "authorized" );
			if ($authorized === "yes") {
				$this->authorized ( ($authorized === "yes") );
			} else {
				echo "error";
			}
		}
	}
	//检测参数
	public function check_client_id() {
		if (! $this->server->validateAuthorizeRequest ( $this->request, $this->response )) {
			$this->response->send ();
			die ();
		}
	}
	//生成code 存储 并 回调
	public function authorized($is_authorized) {
		$this->server->addGrantType ( new OAuth2\GrantType\AuthorizationCode ( $this->storage ) );
		$this->server->handleAuthorizeRequest ( $this->request, $this->response, $is_authorized, 'xiaocao' );
		if ($is_authorized) {
			$code = substr ( $this->response->getHttpHeader ( 'Location' ), strpos ( $this->response->getHttpHeader ( 'Location' ), 'code=' ) + 5, 40 );
			header ( "Location: " . $this->response->getHttpHeader ( 'Location' ) );
		}
		$this->response->send ();
	}
	//客户端根据code来获取access_token参数
	function token() {
		$this->authorization_code ( "yes" );
	}
	//生成token参数 并发送给客户端
	public function authorization_code() {
		$this->server->addGrantType ( new OAuth2\GrantType\AuthorizationCode ( $this->storage ) );
		$this->server->handleTokenRequest ( $this->request )->send ();
	}
	//客户端根据token进行api授权 获取用户信息
	public function resource() {
		if ($rs = $this->require_scope ( "userinfo" )) {//授权成功
			$model = M ( 'access_tokens' );
			$data = $model->field ( "user_id" )->where ( "access_token='{$_GET['access_token']}'" )->find ();
			$model = M ( "users" );
			$data = $model->where ( "user_id='{$data['user_id']}'" )->find ();
			$this->arrayRecursive ( $data, 'urlencode', true );
			$json = json_encode ( $data );
			echo urldecode ( $json );
		} else {//授权失败
			echo $rs;
		}
	}
	/**
	 * token校验   
	 * 正确返回 true
	 * 错误返回错误信息
	 * @param string $scope
	 */
	public function require_scope($scope = "") {
		if (! $this->server->verifyResourceRequest ( $this->request, $this->response, $scope )) {
			return $this->server->getResponse ()->send ();
		} else {
			return true;
		}
	}
	/**
	 * token 过期后 刷新token
	 */
	public function refresh_token(){
		$this->server->addGrantType(new OAuth2\GrantType\RefreshToken($this->storage, array(
				"always_issue_new_refresh_token" => true,
				"unset_refresh_token_after_use" => true,
				"refresh_token_lifetime" => 2419200,
		)));
		$this->server->handleTokenRequest($this->request)->send();
	}
	/**
	 * 客户端认证模式
	 */
	public function client_credentials(){
		$this->server->addGrantType(new OAuth2\GrantType\ClientCredentials($this->storage, array(
				"allow_credentials_in_request_body" => true
		)));
		$this->server->handleTokenRequest($this->request)->send();
	}
	//json乱码
	function arrayRecursive(&$array, $function, $apply_to_keys_also = false) {
		foreach ( $array as $key => $value ) {
			if (is_array ( $value )) {
				$this->arrayRecursive ( $array [$key], $function, $apply_to_keys_also );
			} else {
				$array [$key] = $function ( $value );
			}
			
			if ($apply_to_keys_also && is_string ( $key )) {
				$new_key = $function ( $key );
				if ($new_key != $key) {
					$array [$new_key] = $array [$key];
					unset ( $array [$key] );
				}
			}
		}
	}
}