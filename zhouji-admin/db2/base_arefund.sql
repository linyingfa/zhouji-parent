/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : zjds

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-29 18:04:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_arefund
-- ----------------------------
DROP TABLE IF EXISTS `base_arefund`;
CREATE TABLE `base_arefund` (
  `arefund_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `reason` varchar(255) DEFAULT NULL COMMENT '退款原因',
  `srot` int(11) DEFAULT NULL COMMENT '排序',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`arefund_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='退款原因表';

-- ----------------------------
-- Records of base_arefund
-- ----------------------------
