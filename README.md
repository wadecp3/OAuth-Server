# OAuth-Server
    Oauth2.0 server
# 基于TP框架与Oauth2.0整合 实现服务端
# 本实例采用 授权码方式授权  带code 
            注： oauth_clients 数据是内置的  实际开发中  让开发者注册 自动生成 client_id(appid)  client_secret(appsecret)
            授权类型 authorization_code  
    scope 标识权限名称  可以写多个权限  权限直接用空格隔开   例如:  userinfo(获取用户信息权限)  getPhoto(获取照片权限) 

隐式授权模式的修改

1 将 response_type=code 改为 response_type=token
2 在数据库oauth_clients的grant_types 加入implicit 模式 空格隔开
3 修改首次授权链接  加入scope=userinfo 加入后兼容code模式

加入token过期刷新功能

加入客户端认证功能
