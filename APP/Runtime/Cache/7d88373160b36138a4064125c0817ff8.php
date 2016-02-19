<?php if (!defined('THINK_PATH')) exit();?><div class="form-group">
                <label for="authorize">
                    <h3>第三种：授权码通过code获取access_token（Authorization Code）:</h3>
                    <div>发送的数据：<code>{code: "Authorize 跳转后得到的code", appid: 'testclient', appsecret:'testpass', password:'testpass', grant_type: 'authorization_code', scope:'user pass'}</code></div><br>
                    <div>收到的数据：<code id="return-Authorize"></code></div><br>
                    <div>code参数 请通过`<a target="_blank" href="/Oauth/authorize?response_type=code&client_id=lijie&redirect_uri=http://localhost:8010/Oauth/code&state=xyz&scope=">/Oauth/authorize?response_type=code&client_id=lijie&redirect_uri=http://localhost:8010/Oauth/code&state=xxx&scope=</a>`跳转后取得。</div><br>
                </label><br>
                <input type="text" class="form-control" id="authorize-code" placeholder="Authorize code">
                <a id="btn-authorize" class="btn btn-success" onclick="go()">Get Authorize Access Token</a>
            </div>
            <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
            <script>
            function go(){
            	 var data = {code: $("#authorize-code").val(), client_id: 'lijie', client_secret:'123456', redirect_uri:"http://localhost:8010/Oauth/code", grant_type: 'authorization_code', scope:'userinfo'};
                 console.log(data);
            	 $.post('/Oauth/token', data, function (d){
                     $(".refresh-token").val(d.refresh_token);
                     console.log("Get Authorize Access Token => ", d);
                     $('#return-Authorize').html(JSON.stringify(d));
                 },"json");
            }
            </script>