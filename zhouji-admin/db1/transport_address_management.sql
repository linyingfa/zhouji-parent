/*
Navicat MySQL Data Transfer

Source Server         : 530
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : zjds

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2018-11-27 23:34:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for transport_address_management
-- ----------------------------
DROP TABLE IF EXISTS `transport_address_management`;
CREATE TABLE `transport_address_management` (
  `sender_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sender` varchar(255) DEFAULT NULL COMMENT '发送人',
  `province_id` int(11) DEFAULT NULL COMMENT '省份id',
  `city` int(11) DEFAULT NULL COMMENT '城市id',
  `area` int(11) DEFAULT NULL COMMENT '区域id',
  `address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `postcode` varchar(255) DEFAULT NULL COMMENT '邮编',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `mobile` varchar(255) DEFAULT NULL COMMENT '电话号码',
  `is_default` tinyint(4) DEFAULT NULL COMMENT '是否默认地址，0否，1是',
  PRIMARY KEY (`sender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='地址管理表';

-- ----------------------------
-- Records of transport_address_management
-- ----------------------------
