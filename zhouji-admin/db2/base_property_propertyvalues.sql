/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : zjds

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-29 18:03:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_property_propertyvalues
-- ----------------------------
DROP TABLE IF EXISTS `base_property_propertyvalues`;
CREATE TABLE `base_property_propertyvalues` (
  `property_propertyvalues_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `property_id` int(11) DEFAULT NULL COMMENT '属性值id',
  `propertyvalues_id` int(11) DEFAULT NULL COMMENT '属性值id',
  PRIMARY KEY (`property_propertyvalues_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='属性属性值关联表';

-- ----------------------------
-- Records of base_property_propertyvalues
-- ----------------------------
INSERT INTO `base_property_propertyvalues` VALUES ('1', '1', '1');
INSERT INTO `base_property_propertyvalues` VALUES ('2', '1', '2');
INSERT INTO `base_property_propertyvalues` VALUES ('3', '1', '3');
