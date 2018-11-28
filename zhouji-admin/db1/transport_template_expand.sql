/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : zjds

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-28 17:16:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for transport_template_expand
-- ----------------------------
DROP TABLE IF EXISTS `transport_template_expand`;
CREATE TABLE `transport_template_expand` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `transport_template_id` int(11) DEFAULT NULL COMMENT '运输表id',
  `province_id` int(11) DEFAULT NULL COMMENT '省id',
  `city` int(11) DEFAULT NULL COMMENT '城市id',
  `area` int(11) DEFAULT NULL COMMENT '区域id',
  `first_number` int(11) DEFAULT NULL COMMENT '首件',
  `first_price` decimal(10,0) DEFAULT NULL COMMENT '首次价格',
  `add_number` int(11) DEFAULT NULL COMMENT '增加件数',
  `add_price` decimal(10,0) DEFAULT NULL COMMENT '增加价格',
  `create_person` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_person` varchar(255) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(4) DEFAULT NULL COMMENT '删除表标记，0不删除，1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COMMENT='运费模板拓展表';

-- ----------------------------
-- Records of transport_template_expand
-- ----------------------------
INSERT INTO `transport_template_expand` VALUES ('7', '15', '1', '2', '3', '1', '2', '3', '3', null, null, null, null, null);
INSERT INTO `transport_template_expand` VALUES ('8', '15', '1', '2', '3', '1', '2', '3', '3', null, null, null, null, null);
INSERT INTO `transport_template_expand` VALUES ('11', '15', '1', '22', '33', '11', '12', '33', '33', null, null, null, null, null);
INSERT INTO `transport_template_expand` VALUES ('12', '15', '1', '22', '33', '11', '12', '33', '33', null, null, null, null, null);
