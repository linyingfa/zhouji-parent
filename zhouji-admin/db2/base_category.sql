/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : zjds

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-29 18:04:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_category
-- ----------------------------
DROP TABLE IF EXISTS `base_category`;
CREATE TABLE `base_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `category_code` varchar(255) DEFAULT NULL COMMENT '品类编号',
  `category_name` varchar(255) DEFAULT NULL COMMENT '品类名称',
  `category_sort` int(11) DEFAULT NULL COMMENT '排序',
  `category_url` varchar(255) DEFAULT NULL COMMENT '品类封面图',
  `category_parent_id` int(11) DEFAULT NULL COMMENT '树，父id,0代表没有父级',
  `category_child_id` int(11) DEFAULT NULL COMMENT '树，子id，',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='品类表';

-- ----------------------------
-- Records of base_category
-- ----------------------------
INSERT INTO `base_category` VALUES ('1', 'A01', '饮料', '1', 'http://', '1', '0');
INSERT INTO `base_category` VALUES ('2', 'A01-01', '橙汁', '1', 'http://', '1', '0');
INSERT INTO `base_category` VALUES ('3', 'A01-01', '雪碧', '1', 'http://', '1', '0');
