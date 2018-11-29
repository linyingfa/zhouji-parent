/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : zjds

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-29 18:03:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_hotcity
-- ----------------------------
DROP TABLE IF EXISTS `base_hotcity`;
CREATE TABLE `base_hotcity` (
  `hotcity_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) DEFAULT NULL COMMENT '城市名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `cteate_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`hotcity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='热门城市表';

-- ----------------------------
-- Records of base_hotcity
-- ----------------------------
