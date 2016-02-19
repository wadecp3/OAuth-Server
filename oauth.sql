/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : oauth

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2016-02-19 09:24:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `oauth_access_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL COMMENT '获取资源的access_token',
  `client_id` varchar(80) NOT NULL COMMENT '开发者Appid',
  `user_id` varchar(255) DEFAULT NULL COMMENT '开发者用户id',
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '认证的时间date("Y-m-d H:i:s")',
  `scope` varchar(2000) DEFAULT NULL COMMENT '权限容器',
  PRIMARY KEY (`access_token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('0cc62bddbb17080a98d37a10ec7d6c8cfdea6383', 'lijie', 'xiaocao', '2016-02-18 20:44:56', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('1fa0c93161c2583a19a2934842c6faa4b03abb0d', 'lijie', 'xiaocao', '2016-02-18 18:22:11', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('282aac32fe010ddaf21c1dde17f41827add51cf5', 'lijie', 'xiaocao', '2016-02-19 10:13:48', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('2daa5b6a6212cb3563f7c17c5ac63779575a49d4', 'lijie', 'xiaocao', '2016-02-18 18:24:35', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('428192e344f1b33afa102881164fca796a93b15a', 'lijie', 'xiaocao', '2016-02-18 18:32:16', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('43dc47c16056f40225bc07feb82f34de6102af8d', 'lijie', 'xiaocao', '2016-02-18 18:25:25', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('488c352b37dcbde33f79127840e77134aa0150cb', 'lijie', 'xiaocao', '2016-02-18 19:04:30', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('49134740978260154e00fece1f151cc4dfa3a364', 'lijie', 'xiaocao', '2016-02-18 20:01:19', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('4bcdbfd43dd5676bfa962b8f86b2f565f7beb615', 'lijie', 'xiaocao', '2016-02-18 19:58:41', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('50add8bbee590e703478af91ede17d84145f5a70', 'lijie', 'xiaocao', '2016-02-18 20:05:29', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('5f9b4bb297918fec4867bdc2e3fae0f1f3927e79', 'lijie', 'xiaocao', '2016-02-18 19:57:55', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('63475ac5514eb0abb83a37cd3261e4e2cd779e4b', 'lijie', 'xiaocao', '2016-02-18 20:08:45', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('64517fa4cd664aa4a80c050af791dd0da2b91654', 'lijie', 'xiaocao', '2016-02-18 20:44:33', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('6aa1ac6feb0629e5fdb44f3569144711453c2a13', 'lijie', 'xiaocao', '2016-02-18 18:33:53', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('7ff80f0d911c1933edd2a72eee6400d9c8fb1896', 'lijie', 'xiaocao', '2016-02-18 19:04:56', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('842d4b69f33e8f860365b89f8b9439cbfcaa2a7f', 'lijie', 'xiaocao', '2016-02-18 19:59:11', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('8d1c0256dbf936aee6ca4ad477ebfc3d1647b09a', 'lijie', 'xiaocao', '2016-02-18 19:04:01', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('9785c44eaa98e3a6db1df28794535099a13c8eba', 'lijie', 'xiaocao', '2016-02-18 19:01:47', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('998201fb49ab052e113bf8e024cda2e4c99bca7f', 'lijie', 'xiaocao', '2016-02-18 18:24:16', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('9d436612485852d031b8e4b09bf96d207d394602', 'lijie', 'xiaocao', '2016-02-18 20:49:53', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('a364330f9fbff3cb4542cf947fd156abdfd83a9b', 'lijie', 'xiaocao', '2016-02-18 20:07:33', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('aa0ca3dc6d817a185f3c47996e44b837be3ec0ce', 'lijie', 'xiaocao', '2016-02-18 20:48:06', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('b22458a79c32745ffeeeb75717e24e2bc7839726', 'lijie', 'xiaocao', '2016-02-19 10:22:11', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('b249d8ceda50a052f0b062b1fb73608882084f30', 'lijie', 'xiaocao', '2016-02-18 20:01:51', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('b6960f68f490006f1acb6cffa7f7c8aef02a8978', 'lijie', 'xiaocao', '2016-02-18 20:05:52', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('c4b4fc61dc63c57a6e048037a2e62b7df6936e00', 'lijie', 'xiaocao', '2016-02-18 20:03:34', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('d1b1fbf0eed7b4bc4f6d0fb52cc2d5d0f30825b7', 'lijie', 'xiaocao', '2016-02-18 20:03:02', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('e091d459e8ff1303a5e23abef7dcf66be39db229', 'lijie', 'xiaocao', '2016-02-18 18:25:05', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('e642d4db998fe07051175c8ebcd0b418c079478b', 'lijie', 'xiaocao', '2016-02-18 20:07:08', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('f5b754a2181673db5bdb871c1e367c5155c81b41', 'lijie', 'xiaocao', '2016-02-18 18:47:59', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('f60f03831e8ba0877225a45a8c85ab466caf1ba0', 'lijie', 'xiaocao', '2016-02-18 18:23:48', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('f7a3fa9b4ae9150503638b7d8111a2ae8af3a5a1', 'lijie', 'xiaocao', '2016-02-18 20:11:11', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('fcf04fb5bde637a60a722b6f1bb4289f8705d917', 'lijie', 'xiaocao', '2016-02-18 20:53:12', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('fe577b4a97e692afd72ed8c29b9d478bdf13f15f', 'lijie', 'xiaocao', '2016-02-18 18:35:40', 'userinfo');

-- ----------------------------
-- Table structure for `oauth_authorization_codes`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_authorization_codes`;
CREATE TABLE `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL COMMENT '通过Authorization 获取到的code，用于获取access_token',
  `client_id` varchar(80) NOT NULL COMMENT '开发者Appid',
  `user_id` varchar(255) DEFAULT NULL COMMENT '开发者用户id',
  `redirect_uri` varchar(2000) DEFAULT NULL COMMENT '认证后跳转的url',
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '认证的时间date("Y-m-d H:i:s")',
  `scope` varchar(2000) DEFAULT NULL COMMENT '权限容器',
  PRIMARY KEY (`authorization_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oauth_authorization_codes
-- ----------------------------
INSERT INTO `oauth_authorization_codes` VALUES ('0155d6c48212b247c12982c112b0a7279b997b5a', 'lijie', 'xiaocao', 'http://localhost:8030/Index/code', '2016-02-18 17:12:31', null);
INSERT INTO `oauth_authorization_codes` VALUES ('b6fcfb003c5f15ed184bf47f533f8de1c7ba16d3', 'lijie', 'xiaocao', 'http://localhost:8030/Index/code', '2016-02-18 17:20:58', null);

-- ----------------------------
-- Table structure for `oauth_clients`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) NOT NULL COMMENT '开发者AppId',
  `client_secret` varchar(80) NOT NULL COMMENT '开发者AppSecret',
  `redirect_uri` varchar(2000) NOT NULL COMMENT '认证后跳转的url',
  `grant_types` varchar(80) DEFAULT NULL COMMENT '认证的方式，client_credentials、password、refresh_token、authorization_code、authorization_access_token',
  `scope` varchar(100) DEFAULT NULL COMMENT '权限容器',
  `user_id` varchar(80) DEFAULT NULL COMMENT '开发者用户id',
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES ('lijie', '123456', 'http://localhost:8030/Index/code', 'authorization_code', 'userinfo', 'xiaocao');

-- ----------------------------
-- Table structure for `oauth_refresh_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL COMMENT '跟新access_token的token',
  `client_id` varchar(80) NOT NULL COMMENT '开发者AppId',
  `user_id` varchar(255) DEFAULT NULL COMMENT '开发者用户id',
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '认证的时间date("Y-m-d H:i:s")',
  `scope` varchar(2000) DEFAULT NULL COMMENT '权限容器',
  PRIMARY KEY (`refresh_token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
INSERT INTO `oauth_refresh_tokens` VALUES ('04a844b29e1625f873ccf4c6691d35422572f85f', 'lijie', 'xiaocao', '2016-03-03 17:23:48', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('1995d30c6e375f668b9a0d12a2f9b11ab5ece009', 'lijie', 'xiaocao', '2016-03-03 17:22:11', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('1de1a95ce50c20d9b300de658dce7538adb748b1', 'lijie', 'xiaocao', '2016-03-04 09:13:48', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('1e38a13a54c83c2d6447922bdeb859fdc9b6a6d0', 'lijie', 'xiaocao', '2016-03-03 19:44:56', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('2221badb94028ae929d519653676487e65a9509a', 'lijie', 'xiaocao', '2016-03-03 19:11:11', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('2497212ac76d77c4e53ab8d4531b9c85e581e3b5', 'lijie', 'xiaocao', '2016-03-03 19:07:33', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('292af09d020840f855d6a818ef9f76be4116f346', 'lijie', 'xiaocao', '2016-03-03 17:24:16', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('2b32d809cb458a33c094536ac49e7dc10566bb1e', 'lijie', 'xiaocao', '2016-03-03 19:53:12', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('3228aaae8a160105f73a1196410711cb8620e7bb', 'lijie', 'xiaocao', '2016-03-03 17:33:53', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('3564ffc5cd1e0b5096b4df72eeca5a9947b975a8', 'lijie', 'xiaocao', '2016-03-03 19:44:34', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('4b8bec7ce321c4e131295b07c19c27ef11da2ca0', 'lijie', 'xiaocao', '2016-03-03 19:08:45', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('573d068b5b9331fb312f13becc6395c55b1a1547', 'lijie', 'xiaocao', '2016-03-03 19:05:52', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('607653fee0b60cafb8eada1f62c3b27cc9a9e3f0', 'lijie', 'xiaocao', '2016-03-03 17:25:25', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('612a29207ceee11cc8631362ce7468b03ab07f06', 'lijie', 'xiaocao', '2016-03-03 19:05:29', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('6590d10b16d01bcdf0b786e3d3625e4d3f068841', 'lijie', 'xiaocao', '2016-03-03 19:03:02', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('68249bd5481e2e5744aded8f3df608860f991b11', 'lijie', 'xiaocao', '2016-03-03 18:58:41', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('7133c011fe4bc5223de0dca5d9cc1ab0bccb8d60', 'lijie', 'xiaocao', '2016-03-03 17:35:40', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('72d7272d8b777eeb33e03b21da48eaa8725b872b', 'lijie', 'xiaocao', '2016-03-03 19:49:53', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('7afd43de04921cd691fcb361a90ddd50863baad6', 'lijie', 'xiaocao', '2016-03-03 19:07:09', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('852f6d3a44de9ea9fe27d5d7190bd19c3740c0fa', 'lijie', 'xiaocao', '2016-03-03 18:04:01', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('9029d8123175a4c01e8f706c082c1b6ce05efc2f', 'lijie', 'xiaocao', '2016-03-03 18:01:47', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('9c7cf71f47293d6ae9489b76e1f9fab4da8ebf9d', 'lijie', 'xiaocao', '2016-03-03 18:04:30', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('bec35dca6c3305fc1bf624552bf958082cdb9f22', 'lijie', 'xiaocao', '2016-03-03 19:01:51', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('c2c7a4163a48e77935a989c64dfbba55c77a0c81', 'lijie', 'xiaocao', '2016-03-03 17:25:05', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('ceefee187856055d929d5e65ff8cc70b0940b501', 'lijie', 'xiaocao', '2016-03-04 09:22:11', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('cfbe25a7c8e5e2a228b950babd9d178a41e880a7', 'lijie', 'xiaocao', '2016-03-03 18:57:55', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('d1588c362c3cb2e4a2d538e6004da47b87f1ee9d', 'lijie', 'xiaocao', '2016-03-03 19:48:06', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('d3cbaf92727071f75bbd9a7ad13c6bf7bf9d784e', 'lijie', 'xiaocao', '2016-03-03 19:01:19', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('d5b951785eeb5a3af9867023efafa06db8f2339a', 'lijie', 'xiaocao', '2016-03-03 17:32:16', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('d7b6ffb48fc5e7661773acd83d3e75c78c20e024', 'lijie', 'xiaocao', '2016-03-03 17:24:35', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('ddfcb1382194a7a5d21ae247a26b8accd40d60ed', 'lijie', 'xiaocao', '2016-03-03 17:47:59', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('df140933faa5bae557bbeabbef97ce4376f0b195', 'lijie', 'xiaocao', '2016-03-03 18:59:11', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('fa5ab94e0d14f989f524f547f52239ea07592164', 'lijie', 'xiaocao', '2016-03-03 18:04:56', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('fcc119a70d806f36abc5f9903b040b7af9bd59da', 'lijie', 'xiaocao', '2016-03-03 19:03:34', 'userinfo');

-- ----------------------------
-- Table structure for `oauth_scopes`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_scopes`;
CREATE TABLE `oauth_scopes` (
  `scope` text COMMENT '容器名字',
  `is_default` tinyint(1) DEFAULT NULL COMMENT '是否默认拥有，1=>是，0=>否'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oauth_scopes
-- ----------------------------

-- ----------------------------
-- Table structure for `oauth_users`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_users`;
CREATE TABLE `oauth_users` (
  `username` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '内部时候使用的认证用户名',
  `password` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '内部时候使用的认证用户密码',
  `first_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内部时候使用',
  `last_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内部时候使用',
  `user_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oauth_users
-- ----------------------------
INSERT INTO `oauth_users` VALUES ('李杰', '123456', '男', '28', 'xiaocao');
