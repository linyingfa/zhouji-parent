/*
Navicat MySQL Data Transfer

Source Server         : 530
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : zjds

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2018-11-27 23:35:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for transport_ems
-- ----------------------------
DROP TABLE IF EXISTS `transport_ems`;
CREATE TABLE `transport_ems` (
  `ems_id` int(11) NOT NULL AUTO_INCREMENT,
  `ems_name` varchar(255) DEFAULT NULL COMMENT '快递公司名称',
  `ems_remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ems_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='物流公司表';

-- ----------------------------
-- Records of transport_ems
-- ----------------------------
