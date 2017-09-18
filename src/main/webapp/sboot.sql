/*
Navicat MySQL Data Transfer

Source Server         : 115.159.151.91 
Source Server Version : 50717
Source Host           : 115.159.151.91 :3306
Source Database       : sboot

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-09-18 10:37:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cmg`
-- ----------------------------
DROP TABLE IF EXISTS `cmg`;
CREATE TABLE `cmg` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `ts` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmg
-- ----------------------------
INSERT INTO `cmg` VALUES ('1', 'admin', 'admin', '2017-09-13 13:42:46');

-- ----------------------------
-- Table structure for `kind`
-- ----------------------------
DROP TABLE IF EXISTS `kind`;
CREATE TABLE `kind` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `cts` varchar(255) DEFAULT NULL,
  `ksort` int(11) NOT NULL DEFAULT '0',
  `kind` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of kind
-- ----------------------------
INSERT INTO `kind` VALUES ('1', '1', '2017-09-13 13:34:57', '0', '一见钟情');
INSERT INTO `kind` VALUES ('2', '1', '2017-09-13 13:43:10', '0', '玫瑰人生');
