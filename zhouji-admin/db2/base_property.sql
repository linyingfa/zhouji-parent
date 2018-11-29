/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : zjds

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-29 18:03:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_property
-- ----------------------------
DROP TABLE IF EXISTS `base_property`;
CREATE TABLE `base_property` (
  `property_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `property_code` varchar(255) DEFAULT NULL COMMENT '属性编号',
  `property_name` varchar(255) DEFAULT NULL COMMENT '属性名称',
  `property_show_type` int(11) DEFAULT NULL COMMENT '展示方式',
  PRIMARY KEY (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='属性表';

-- ----------------------------
-- Records of base_property
-- ----------------------------
INSERT INTO `base_property` VALUES ('1', 'A01', '毫升', '1');
INSERT INTO `base_property` VALUES ('2', 'A02', '含糖量', '1');
INSERT INTO `base_property` VALUES ('3', 'A03', '颜色', '1');
INSERT INTO `base_property` VALUES ('4', 'A03', '品牌', '1');
