/*
Navicat MySQL Data Transfer

Source Server         : 杰
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : sougou

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2020-03-14 21:21:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart_record
-- ----------------------------
DROP TABLE IF EXISTS `cart_record`;
CREATE TABLE `cart_record` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checked_flag` int(11) NOT NULL,
  `pic_path` varchar(100) DEFAULT NULL,
  `p_num` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`c_id`),
  KEY `fk_uname` (`user_id`),
  KEY `fk_id` (`pro_id`),
  CONSTRAINT `fk_id` FOREIGN KEY (`pro_id`) REFERENCES `product` (`P_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_uid` FOREIGN KEY (`user_id`) REFERENCES `user` (`U_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart_record
-- ----------------------------
INSERT INTO `cart_record` VALUES ('2', '8', '6', '1', null, '3', '2020-03-11 19:27:39');
INSERT INTO `cart_record` VALUES ('5', '6', '6', '1', null, '4', '2020-03-14 13:51:53');
INSERT INTO `cart_record` VALUES ('6', '10', '6', '2', null, '1', '2020-03-14 00:00:00');
INSERT INTO `cart_record` VALUES ('7', '1', '6', '2', null, '7', '2020-03-14 21:05:46');
INSERT INTO `cart_record` VALUES ('8', '9', '6', '1', null, '1', '2020-03-14 21:15:49');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `P_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `P_name` varchar(50) NOT NULL COMMENT '商品名',
  `P_des` varchar(50) NOT NULL COMMENT '商品描述',
  `P_picpath` varchar(100) DEFAULT NULL COMMENT '商品图片路径',
  `P_price` int(11) NOT NULL COMMENT '价格',
  `P_res` int(11) DEFAULT '10' COMMENT '限购数量',
  `P_type` int(11) NOT NULL COMMENT '商品类型表编号',
  `p_rec_picpath` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`P_id`),
  KEY `uniq_type` (`P_type`),
  CONSTRAINT `fk_type` FOREIGN KEY (`P_type`) REFERENCES `shoptype` (`S_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '糖猫Y1大嘴猴联名款', '512MB系统内存 4G存储空间', 'tangmao1.jpg', '598', '10', '2', 'tangmao1.jpg');
INSERT INTO `product` VALUES ('4', '糖猫JOY2 能学口语的儿童手表', '4G高速网络，高清视频通话，AI多重定位，英语口语学习', 'tangmao2.jpg', '379', '10', '2', 'tangmao2.jpg');
INSERT INTO `product` VALUES ('6', '糖猫Plus2 变声讲故事', '双向高清通话 7天超长待机 AI七重定位 魔法变声故事 AI智能问答', 'tangmao3.jpg', '199', '10', '2', 'tangmao3.jpg');
INSERT INTO `product` VALUES ('7', '糖猫color', '美颜拍照，五重定位', 'tangmao4.jpg', '268', '10', '2', 'tangmao4.jpg');
INSERT INTO `product` VALUES ('8', '糖猫书包', '搭配糖猫儿童电话手表', 'peijian1.jpg', '99', '10', '3', 'peijian1.jpg');
INSERT INTO `product` VALUES ('9', 'Color专用手表', '备用表带，双色可选', 'peijian2.png', '59', '10', '3', 'peijian2.png');
INSERT INTO `product` VALUES ('10', 'T2/basic专用原装表带', '备用表带，双色可选', 'peijian3.jpg', '80', '10', '3', 'peijian3.jpg');
INSERT INTO `product` VALUES ('11', 'E1好友版专用表扣', '小朋友之间的礼物', 'peijian4.jpg', '20', '10', '3', 'peijian4.jpg');
INSERT INTO `product` VALUES ('12', '搜狗AI录音笔', '免费转写，高清录音，16G+云存储', 'peijian1.jpg', '398', '10', '1', 'recommend1.png');
INSERT INTO `product` VALUES ('13', '搜狗翻译宝Pro', '翻译宝在手，走遍世界都不怕', 'peijian1.jpg', '2499', '10', '1', 'recommend2.png');
INSERT INTO `product` VALUES ('56', '搜狗AI录音笔S1', '超越专业翻译机 9种语言离线翻译 8麦克风超强拾音 录音实时转写文字准确率98%', 'peijian1.jpg', '2698', '10', '1', null);
INSERT INTO `product` VALUES ('57', '糖猫书包', '搭配糖猫儿童电话手表', 'peijian1.jpg', '99', '10', '1', null);
INSERT INTO `product` VALUES ('58', '糖猫书包', '搭配糖猫儿童电话手表', 'peijian1.jpg', '99', '10', '1', null);
INSERT INTO `product` VALUES ('59', '商品名', '商品描述', 'peijian1.jpg', '2999', '10', '1', null);
INSERT INTO `product` VALUES ('60', '糖猫书包', '搭配糖猫儿童电话手表', 'peijian1.jpg', '99', '10', '1', null);
INSERT INTO `product` VALUES ('61', '商品名字', '商品描述', 'peijian1.jpg', '999', '10', '1', null);
INSERT INTO `product` VALUES ('62', '糖猫书包', '搭配糖猫儿童电话手表', 'peijian1.jpg', '99', '10', '1', null);
INSERT INTO `product` VALUES ('63', '糖猫书包', '搭配糖猫儿童电话手表', 'peijian1.jpg', '99', '10', '1', null);
INSERT INTO `product` VALUES ('64', '糖猫书包', '搭配糖猫儿童电话手表', 'peijian1.jpg', '99', '10', '1', null);
INSERT INTO `product` VALUES ('65', '123', '123', 'peijian1.jpg', '99', '10', '1', null);
INSERT INTO `product` VALUES ('66', '糖猫书包', '搭配糖猫儿童电话手表', 'peijian1.jpg', '99', '10', '1', null);
INSERT INTO `product` VALUES ('67', '糖猫书包', '搭配糖猫儿童电话手表', 'peijian1.jpg', '99', '10', '1', null);
INSERT INTO `product` VALUES ('68', '糖猫书包', '搭配糖猫儿童电话手表', 'peijian1.jpg', '99', '10', '1', null);
INSERT INTO `product` VALUES ('69', '糖猫书包', '搭配糖猫儿童电话手表', 'peijian1.jpg', '99', '10', '1', null);
INSERT INTO `product` VALUES ('70', '糖猫书包', '搭配糖猫儿童电话手表', 'peijian1.jpg', '99', '10', '1', null);
INSERT INTO `product` VALUES ('71', '糖猫书包', '搭配糖猫儿童电话手表', 'peijian1.jpg', '99', '10', '1', null);
INSERT INTO `product` VALUES ('72', '糖猫书包', '搭配糖猫儿童电话手表', 'peijian1.jpg', '99', '10', '1', null);
INSERT INTO `product` VALUES ('73', '糖猫书包', '搭配糖猫儿童电话手表', 'peijian1.jpg', '99', '10', '1', null);
INSERT INTO `product` VALUES ('74', '糖猫书包', '搭配糖猫儿童电话手表', 'peijian1.jpg', '99', '10', '1', null);
INSERT INTO `product` VALUES ('75', '糖猫书包', '搭配糖猫儿童电话手表', 'peijian1.jpg', '99', '10', '1', null);
INSERT INTO `product` VALUES ('76', '糖猫书包', '搭配糖猫儿童电话手表', 'peijian1.jpg', '99', '10', '1', null);

-- ----------------------------
-- Table structure for shequ_rec
-- ----------------------------
DROP TABLE IF EXISTS `shequ_rec`;
CREATE TABLE `shequ_rec` (
  `SR_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `SR_picpath` varchar(50) NOT NULL COMMENT '图片路径',
  `SR_des` varchar(50) NOT NULL COMMENT '描述',
  PRIMARY KEY (`SR_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shequ_rec
-- ----------------------------
INSERT INTO `shequ_rec` VALUES ('1', 'shequ_right_img1.jpeg', '高规不贵，这或许就是你最称心的4G智能电话');
INSERT INTO `shequ_rec` VALUES ('2', 'shequ_right_img2.png', '智能C1录音笔亮相全国政协新闻发布会，新华');

-- ----------------------------
-- Table structure for shequ_xinwen
-- ----------------------------
DROP TABLE IF EXISTS `shequ_xinwen`;
CREATE TABLE `shequ_xinwen` (
  `SX_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `SX_des` varchar(50) NOT NULL COMMENT '描述',
  `SX_click` bigint(20) NOT NULL COMMENT '点击量',
  `SX_pinglun` bigint(20) NOT NULL COMMENT '评论量',
  `SX_u_name` varchar(20) NOT NULL COMMENT '用户表外键',
  `SX_moddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '修改日期',
  PRIMARY KEY (`SX_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shequ_xinwen
-- ----------------------------
INSERT INTO `shequ_xinwen` VALUES ('1', '智能录音笔C1亮相两会，新华记者都在用!', '10845', '1', 'test', '2020-02-12 10:02:50');
INSERT INTO `shequ_xinwen` VALUES ('2', '速记王者、录音转文字、同声传译、搜狗录音笔C1首发体验', '128580', '0', 'test', '2020-02-27 16:32:39');
INSERT INTO `shequ_xinwen` VALUES ('3', '智能录音笔C1亮相全国政协新闻发布会，新华社记者强烈推荐', '84902', '5', 'test', '2020-03-11 16:33:03');
INSERT INTO `shequ_xinwen` VALUES ('4', '你用录音笔遇到过困扰么，文件丢失？整理录音麻烦？', '83900', '0', 'test', '2020-03-11 16:33:41');
INSERT INTO `shequ_xinwen` VALUES ('6', '抗击疫情，搜狗在行动', '70698', '0', 'test', '2020-03-11 16:34:14');
INSERT INTO `shequ_xinwen` VALUES ('7', '尽管新华社都说TA好，但我还是决定公开这些秘密', '62130', '2', 'test', '2019-03-11 16:34:43');
INSERT INTO `shequ_xinwen` VALUES ('8', '微信扫码，全场商品免费领！', '45493', '0', 'test', '2020-03-11 16:35:09');
INSERT INTO `shequ_xinwen` VALUES ('9', '国内首款能学口语的视频电话手表糖猫JOY2首发 仅需379元', '6169', '4', 'test', '2020-03-02 10:50:05');
INSERT INTO `shequ_xinwen` VALUES ('10', '搜狗又出新硬件 智能录音笔C1上手体验', '3333', '0', 'test', '2019-06-20 10:50:24');
INSERT INTO `shequ_xinwen` VALUES ('11', '搜狗智能录音笔C1亲测：录音秒转换文字 无一错字', '2556', '0', 'test', '2019-12-12 10:50:48');
INSERT INTO `shequ_xinwen` VALUES ('12', '畅享音与字的转换 搜狗智能录音笔C1生活好助手', '2280', '9', 'test', '2020-01-15 10:51:09');

-- ----------------------------
-- Table structure for shoptype
-- ----------------------------
DROP TABLE IF EXISTS `shoptype`;
CREATE TABLE `shoptype` (
  `S_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `S_name` varchar(20) NOT NULL,
  `S_des` varchar(100) DEFAULT NULL COMMENT '商品类型描述',
  PRIMARY KEY (`S_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoptype
-- ----------------------------
INSERT INTO `shoptype` VALUES ('1', '智能翻译', null);
INSERT INTO `shoptype` VALUES ('2', '糖猫手表', null);
INSERT INTO `shoptype` VALUES ('3', '配件', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `U_id` int(11) NOT NULL AUTO_INCREMENT,
  `U_login_name` varchar(20) NOT NULL COMMENT '用户名',
  `U_password` varchar(20) NOT NULL COMMENT '密码',
  `U_phone` varchar(11) NOT NULL COMMENT '真名',
  PRIMARY KEY (`U_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'test', '123', '12345678');
INSERT INTO `user` VALUES ('2', '120213162154', '123456', '12345678');
INSERT INTO `user` VALUES ('3', '12021316251', '123456', '1234567890');
INSERT INTO `user` VALUES ('4', '120213162557', '123456', '123');
INSERT INTO `user` VALUES ('5', '120213163917', '123456', '1234567890');
INSERT INTO `user` VALUES ('6', '120213164643', '123456', '12312312311');
