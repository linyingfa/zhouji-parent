/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : zjds

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-28 17:16:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for transport_template
-- ----------------------------
DROP TABLE IF EXISTS `transport_template`;
CREATE TABLE `transport_template` (
  `transport_template_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '运费模板id',
  `pay_type` int(11) DEFAULT '1' COMMENT '计价方式，1重量，2件数',
  `transport_type` int(11) DEFAULT '1' COMMENT '运送方式 , 1快递，2平邮，3EMS 4货运',
  `desc` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '说明',
  `create_person` varchar(56) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_person` varchar(56) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '删除标记，0不删除，1删除',
  `default_number` int(11) DEFAULT NULL COMMENT '默认件数',
  `default_price` decimal(10,0) DEFAULT NULL COMMENT '默认运费价格',
  `default_add_number` int(11) DEFAULT NULL COMMENT '增加件数',
  `default_add_price` decimal(10,0) DEFAULT NULL COMMENT '增加的价格',
  `transport_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '模版名称',
  PRIMARY KEY (`transport_template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COMMENT='运费模板表';

-- ----------------------------
-- Records of transport_template
-- ----------------------------
INSERT INTO `transport_template` VALUES ('9', '2', '2', '2', null, null, null, null, '0', '2', '2', '2', '2', '2');
INSERT INTO `transport_template` VALUES ('10', '1', '1', '首次', null, null, null, null, '0', '1', '12', '2', '23', '便宜货');
INSERT INTO `transport_template` VALUES ('11', '1', '1', '首次', null, null, null, null, '0', '1', '12', '2', '23', '便宜货');
INSERT INTO `transport_template` VALUES ('12', '1', '1', '首次', null, null, null, null, '0', '1', '12', '2', '23', '便宜货');
INSERT INTO `transport_template` VALUES ('13', '1', '1', '首次', null, null, null, null, '0', '1', '12', '2', '23', '便宜货');
INSERT INTO `transport_template` VALUES ('14', '1', '1', '首次', null, null, null, null, '0', '1', '12', '2', '23', '便宜货');
INSERT INTO `transport_template` VALUES ('15', '1', '1', '首次11', null, null, null, null, '0', '1', '12', '2', '23', '便宜货111');
