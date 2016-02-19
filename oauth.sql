/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : oauth

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2016-02-19 15:44:54
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
INSERT INTO `oauth_access_tokens` VALUES ('26a5a675f6bdfd185c7925bfbc6bca6c78508f18', 'lijie', 'xiaocao', '2016-02-19 16:43:27', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('309446b510405ef440502a28c2930f54e2fca981', 'lijie', 'xiaocao', '2016-02-19 16:38:33', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('3f8f87df907b7a39eb089d677f39625c90a9c641', 'lijie', 'xiaocao', '2016-02-19 16:43:16', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('42a8c1b2648420537a42ea717ea917971a322193', 'lijie', 'xiaocao', '2016-02-19 16:24:31', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('9023df503d321a38c30fa867e496419f7ba1c318', 'lijie', 'xiaocao', '2016-02-19 16:42:54', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('ac8c930b7ba70ced511c185f29fcc87988c0e389', 'lijie', 'xiaocao', '2016-02-19 16:39:01', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('be0575fa5d37e85c6ff2a47bca630c12544bebc9', 'lijie', 'xiaocao', '2016-02-19 16:41:20', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('bf49a07acda33eed8de4b7fab7af7b0d026a686f', 'lijie', 'xiaocao', '2016-02-19 16:33:47', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('cb5b1f5e98b151c504764fc3820b8e7716a0761e', 'lijie', 'xiaocao', '2016-02-19 16:42:12', 'userinfo');
INSERT INTO `oauth_access_tokens` VALUES ('ee7c3a6573f6123482bc062a17d7ba417ca1f9bc', 'lijie', 'xiaocao', '2016-02-19 16:20:48', 'userinfo');

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
INSERT INTO `oauth_clients` VALUES ('lijie', '123456', 'http://localhost:8030/Index/code', 'authorization_code implicit refresh_token client_credentials', 'userinfo userinfo2', 'xiaocao');

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
INSERT INTO `oauth_refresh_tokens` VALUES ('185d20e85d91824509ef31581b9240baf9c97c24', 'lijie', 'xiaocao', '2016-03-04 15:42:54', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('55087d13857e82ded57253fcb26c98a9a5dccee0', 'lijie', 'xiaocao', '2016-03-04 15:42:12', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('587368e65ecae7d925b7b1b651cd5429ffebb0ed', 'lijie', 'xiaocao', '2016-03-04 15:43:16', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('8acc52f5a194444d4530469317703d375b99675a', 'lijie', 'xiaocao', '2016-03-04 15:24:31', 'userinfo');
INSERT INTO `oauth_refresh_tokens` VALUES ('cfec98dc0faed5d125abc91e0e9255ae2f59c0d4', 'lijie', 'xiaocao', '2016-03-04 15:41:20', 'userinfo');

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
