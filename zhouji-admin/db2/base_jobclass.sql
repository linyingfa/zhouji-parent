/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : zjds

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-29 18:03:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_jobclass
-- ----------------------------
DROP TABLE IF EXISTS `base_jobclass`;
CREATE TABLE `base_jobclass` (
  `jobclass_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sort` int(11) DEFAULT NULL,
  `jobclass_code` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `create_person` varchar(255) DEFAULT NULL,
  `jobclass_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`jobclass_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='职类管理表';

-- ----------------------------
-- Records of base_jobclass
-- ----------------------------
