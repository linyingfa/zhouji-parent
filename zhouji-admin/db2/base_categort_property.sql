/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : zjds

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-29 18:04:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_categort_property
-- ----------------------------
DROP TABLE IF EXISTS `base_categort_property`;
CREATE TABLE `base_categort_property` (
  `category_property_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `category_id` int(11) DEFAULT NULL COMMENT '品类id',
  `property_id` int(11) DEFAULT NULL COMMENT '属性id',
  PRIMARY KEY (`category_property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='品类属性关联表';

-- ----------------------------
-- Records of base_categort_property
-- ----------------------------
INSERT INTO `base_categort_property` VALUES ('1', '2', '1');
INSERT INTO `base_categort_property` VALUES ('2', '2', '2');
