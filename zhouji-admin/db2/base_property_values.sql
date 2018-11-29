/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : zjds

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-29 18:03:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_property_values
-- ----------------------------
DROP TABLE IF EXISTS `base_property_values`;
CREATE TABLE `base_property_values` (
  `property_values_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `property_values_code` varchar(255) DEFAULT NULL COMMENT '属性值编号',
  `property_values_name` varchar(255) DEFAULT NULL COMMENT '属性值名称',
  `property_values_url` varchar(255) DEFAULT NULL COMMENT '属性值图片',
  `property_id` int(11) DEFAULT NULL COMMENT '属性id',
  PRIMARY KEY (`property_values_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='属性值表';

-- ----------------------------
-- Records of base_property_values
-- ----------------------------
INSERT INTO `base_property_values` VALUES ('1', 'B1', '100毫升', 'http://', '1');
INSERT INTO `base_property_values` VALUES ('2', 'B1', '200毫升', 'http://', '1');
INSERT INTO `base_property_values` VALUES ('3', 'B1', '300毫升', 'http://', '1');
INSERT INTO `base_property_values` VALUES ('4', 'c1', '红色', 'http://', '3');
INSERT INTO `base_property_values` VALUES ('5', 'c2', '白色', 'http://', '3');
INSERT INTO `base_property_values` VALUES ('6', 'c3', '黑色', 'http://', '3');
