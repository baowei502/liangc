/*
Navicat MariaDB Data Transfer

Source Server         : lc
Source Server Version : 100119
Source Host           : localhost:3306
Source Database       : lc

Target Server Type    : MariaDB
Target Server Version : 100119
File Encoding         : 65001

Date: 2020-10-09 13:01:07
*/

SET FOREIGN_KEY_CHECKS=0;
SET NAMES UTF8;
DROP DATABASE IF EXISTS lc;
CREATE DATABASE lc CHARSET=UTF8;
USE lc;

-- ----------------------------
-- Table structure for lc_index_carousel
-- ----------------------------
DROP TABLE IF EXISTS `lc_index_carousel`;
CREATE TABLE `lc_index_carousel` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lc_index_carousel
-- ----------------------------
INSERT INTO `lc_index_carousel` VALUES ('1', 'img/carousel/1570.jpg', '轮播广告商品1');
INSERT INTO `lc_index_carousel` VALUES ('2', 'img/carousel/1580.jpg', '轮播广告商品2');
INSERT INTO `lc_index_carousel` VALUES ('3', 'img/carousel/1582.jpg', '轮播广告商品3');
INSERT INTO `lc_index_carousel` VALUES ('4', 'img/carousel/1583.jpg', '轮播广告商品4');
INSERT INTO `lc_index_carousel` VALUES ('5', 'img/carousel/1584.jpg', '轮播广告商品5');
INSERT INTO `lc_index_carousel` VALUES ('6', 'img/carousel/1585.jpg', '轮播广告商品6');
INSERT INTO `lc_index_carousel` VALUES ('7', 'img/carousel/1586.jpg', '轮播广告商品7');
INSERT INTO `lc_index_carousel` VALUES ('8', 'img/carousel/1587.jpg', '轮播广告商品8');
INSERT INTO `lc_index_carousel` VALUES ('9', 'img/carousel/1588.jpg', '轮播广告商品9');

-- ----------------------------
-- Table structure for lc_index_product
-- ----------------------------
DROP TABLE IF EXISTS `lc_index_product`;
CREATE TABLE `lc_index_product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `count` varchar(128) DEFAULT NULL,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lc_index_product
-- ----------------------------
INSERT INTO `lc_index_product` VALUES ('1', 'DOWNLAND', ' 智能调温的四季被 | 春秋、夏季都能用  ', '1.jpg', '999.00', '套装', '1');
INSERT INTO `lc_index_product` VALUES ('2', '贝医生', '小米生态链巴氏牙刷 | 净白牙齿进口刷丝科学布局温柔给力 旅行装四色  ', '2.jpg', '59.00', '套装', '1');
INSERT INTO `lc_index_product` VALUES ('3', 'PILO', ' 云梦专业音频助眠枕头 | 获2016德国红点设计奖【古典灰】  ', '3.jpg', '699.00', '一只', '1');
INSERT INTO `lc_index_product` VALUES ('4', 'DOWNLAND', ' 智能调温的四季被 | 春秋、夏季都能用  ', '1.jpg', '999.00', '套装', '1');
INSERT INTO `lc_index_product` VALUES ('5', '贝医生', '小米生态链巴氏牙刷 | 净白牙齿进口刷丝科学布局温柔给力 旅行装四色  ', '2.jpg', '59.00', '套装', '1');
INSERT INTO `lc_index_product` VALUES ('6', 'PILO', ' 云梦专业音频助眠枕头 | 获2016德国红点设计奖【古典灰】  ', '3.jpg', '699.00', '一只', '1');
INSERT INTO `lc_index_product` VALUES ('7', 'DOWNLAND', ' 智能调温的四季被 | 春秋、夏季都能用  ', '1.jpg', '999.00', '套装', '1');
INSERT INTO `lc_index_product` VALUES ('8', '贝医生', '小米生态链巴氏牙刷 | 净白牙齿进口刷丝科学布局温柔给力 旅行装四色  ', '2.jpg', '59.00', '套装', '1');
INSERT INTO `lc_index_product` VALUES ('9', 'PILO', ' 云梦专业音频助眠枕头 | 获2016德国红点设计奖【古典灰】  ', '3.jpg', '699.00', '一只', '1');

-- ----------------------------
-- Table structure for lc_user
-- ----------------------------
DROP TABLE IF EXISTS `lc_user`;
CREATE TABLE `lc_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lc_user
-- ----------------------------
INSERT INTO `lc_user` VALUES ('1', '13350818898', 'bao123456');
INSERT INTO `lc_user` VALUES ('2', '13350818897', 'luo123456');
INSERT INTO `lc_user` VALUES ('3', '13350818896', 'zhang123456');
INSERT INTO `lc_user` VALUES ('4', '13350818895', 'li123456');
INSERT INTO `lc_user` VALUES ('5', '13350818898', 'bw123456');
INSERT INTO `lc_user` VALUES ('6', '13350812222', 'bw123456');
