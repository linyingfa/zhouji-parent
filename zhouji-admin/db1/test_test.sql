/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : zjds

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-28 17:16:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for test_test
-- ----------------------------
DROP TABLE IF EXISTS `test_test`;
CREATE TABLE `test_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` char(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of test_test
-- ----------------------------
INSERT INTO `test_test` VALUES ('3', '1', '1', '1', '1');
INSERT INTO `test_test` VALUES ('4', '2', '2', '2', '2');
INSERT INTO `test_test` VALUES ('5', '3', '3', '3', '4');
