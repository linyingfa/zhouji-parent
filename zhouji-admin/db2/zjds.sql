/*
Navicat MySQL Data Transfer

Source Server         : 530
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : zjds

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2018-11-29 23:18:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_arefund
-- ----------------------------
DROP TABLE IF EXISTS `base_arefund`;
CREATE TABLE `base_arefund` (
  `arefund_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `reason` varchar(255) DEFAULT NULL COMMENT '退款原因',
  `srot` int(11) DEFAULT NULL COMMENT '排序',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`arefund_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='退款原因表';

-- ----------------------------
-- Records of base_arefund
-- ----------------------------

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

-- ----------------------------
-- Table structure for base_jobclass
-- ----------------------------
DROP TABLE IF EXISTS `base_jobclass`;
CREATE TABLE `base_jobclass` (
  `jobclass_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sort` int(11) DEFAULT NULL,
  `jobclass_code` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `create_person` varchar(255) DEFAULT NULL,
  `jobclass_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`jobclass_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='职类管理表';

-- ----------------------------
-- Records of base_jobclass
-- ----------------------------

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

-- ----------------------------
-- Table structure for goods_adjust_price
-- ----------------------------
DROP TABLE IF EXISTS `goods_adjust_price`;
CREATE TABLE `goods_adjust_price` (
  `adjust_price_id` int(11) NOT NULL COMMENT '价格调整表id',
  `platform_price` decimal(10,0) DEFAULT NULL COMMENT '平台价格',
  `market_price` decimal(10,0) DEFAULT NULL COMMENT '市场价格',
  `inventory` int(11) DEFAULT NULL COMMENT '库存',
  PRIMARY KEY (`adjust_price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='价格调整表';

-- ----------------------------
-- Records of goods_adjust_price
-- ----------------------------

-- ----------------------------
-- Table structure for goods_category
-- ----------------------------
DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category` (
  `goods_category_id` int(11) NOT NULL COMMENT '商品品类表id',
  `category_id` int(11) DEFAULT NULL COMMENT '品类id',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id',
  PRIMARY KEY (`goods_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品品类关联表';

-- ----------------------------
-- Records of goods_category
-- ----------------------------
INSERT INTO `goods_category` VALUES ('1', '2', '1');

-- ----------------------------
-- Table structure for goods_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_info`;
CREATE TABLE `goods_info` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品表id',
  `goods_category_id` int(11) DEFAULT NULL COMMENT '商品品类关联表id',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `jobclass_id` int(11) DEFAULT NULL COMMENT '职类标签id',
  `sku_id` varchar(255) DEFAULT NULL COMMENT '规格id,多个以，分开',
  `goods_des` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `shelves_type` int(11) DEFAULT NULL COMMENT '上架方式',
  `shelves_time` datetime DEFAULT NULL COMMENT '上架时间',
  `selete_shelves` int(11) DEFAULT NULL COMMENT '设置生效后，商品审核完成后，系统会在您设置的时间点自动进行上架操作',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of goods_info
-- ----------------------------
INSERT INTO `goods_info` VALUES ('1', '1', '好好喝的橙汁', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for goods_picture
-- ----------------------------
DROP TABLE IF EXISTS `goods_picture`;
CREATE TABLE `goods_picture` (
  `goods_picture_id` int(11) NOT NULL COMMENT '商品图片id',
  `goods_pic_url` varchar(255) CHARACTER SET latin1 DEFAULT NULL COMMENT '图片链接',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id',
  PRIMARY KEY (`goods_picture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品图片表';

-- ----------------------------
-- Records of goods_picture
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', '0 0/30 * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RenrenScheduler', 'TASK_2', 'DEFAULT', '0 0/30 * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', null, 'com.zhouji.modules.job.utils.ScheduleJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002F636F6D2E7A686F756A692E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158BAF593307874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787000000000000000017400047465737474000672656E72656E74000FE69C89E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800);
INSERT INTO `qrtz_job_details` VALUES ('RenrenScheduler', 'TASK_2', 'DEFAULT', null, 'com.zhouji.modules.job.utils.ScheduleJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002F636F6D2E7A686F756A692E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158C377C4607874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000274000574657374327074000FE697A0E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000017800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RenrenScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RenrenScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RenrenScheduler', 'DESKTOP-T0RAS0O1543411726159', '1543420611728', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', 'TASK_1', 'DEFAULT', null, '1543420800000', '1543419000000', '5', 'WAITING', 'CRON', '1543243750000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002F636F6D2E7A686F756A692E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158BAF593307874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787000000000000000017400047465737474000672656E72656E74000FE69C89E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800);
INSERT INTO `qrtz_triggers` VALUES ('RenrenScheduler', 'TASK_2', 'DEFAULT', 'TASK_2', 'DEFAULT', null, '1543244400000', '-1', '5', 'PAUSED', 'CRON', '1543243750000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002F636F6D2E7A686F756A692E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158C377C4607874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000274000574657374327074000FE697A0E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000017800);

-- ----------------------------
-- Table structure for schedule_job
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job`;
CREATE TABLE `schedule_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron表达式',
  `status` tinyint(4) DEFAULT NULL COMMENT '任务状态  0：正常  1：暂停',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='定时任务';

-- ----------------------------
-- Records of schedule_job
-- ----------------------------
INSERT INTO `schedule_job` VALUES ('1', 'testTask', 'test', 'renren', '0 0/30 * * * ?', '0', '有参数测试', '2016-12-01 23:16:46');
INSERT INTO `schedule_job` VALUES ('2', 'testTask', 'test2', null, '0 0/30 * * * ?', '1', '无参数测试', '2016-12-03 14:55:56');

-- ----------------------------
-- Table structure for schedule_job_log
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job_log`;
CREATE TABLE `schedule_job_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `job_id` bigint(20) NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `status` tinyint(4) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`log_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='定时任务日志';

-- ----------------------------
-- Records of schedule_job_log
-- ----------------------------
INSERT INTO `schedule_job_log` VALUES ('1', '1', 'testTask', 'test', 'renren', '0', null, '1027', '2018-11-26 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('2', '1', 'testTask', 'test', 'renren', '0', null, '1019', '2018-11-27 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('3', '1', 'testTask', 'test', 'renren', '0', null, '1018', '2018-11-27 20:50:12');
INSERT INTO `schedule_job_log` VALUES ('4', '1', 'testTask', 'test', 'renren', '0', null, '1021', '2018-11-27 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('5', '1', 'testTask', 'test', 'renren', '0', null, '1030', '2018-11-27 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('6', '1', 'testTask', 'test', 'renren', '0', null, '1043', '2018-11-27 23:30:01');
INSERT INTO `schedule_job_log` VALUES ('7', '1', 'testTask', 'test', 'renren', '0', null, '1021', '2018-11-28 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('8', '1', 'testTask', 'test', 'renren', '0', null, '1018', '2018-11-28 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('9', '1', 'testTask', 'test', 'renren', '0', null, '1023', '2018-11-28 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('10', '1', 'testTask', 'test', 'renren', '0', null, '1003', '2018-11-28 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('11', '1', 'testTask', 'test', 'renren', '0', null, '1003', '2018-11-28 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('12', '1', 'testTask', 'test', 'renren', '0', null, '1003', '2018-11-28 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('13', '1', 'testTask', 'test', 'renren', '0', null, '1003', '2018-11-28 23:30:00');

-- ----------------------------
-- Table structure for sku
-- ----------------------------
DROP TABLE IF EXISTS `sku`;
CREATE TABLE `sku` (
  `goods_skuid` int(11) NOT NULL AUTO_INCREMENT,
  `goods_skuname` varchar(255) DEFAULT NULL COMMENT '规格名称',
  `goods_specifica` varchar(255) DEFAULT NULL COMMENT '规格属性',
  PRIMARY KEY (`goods_skuid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品规格';

-- ----------------------------
-- Records of sku
-- ----------------------------
INSERT INTO `sku` VALUES ('1', '颜色', '太空灰、极夜黑、太空银');
INSERT INTO `sku` VALUES ('2', '版本', '标准');
INSERT INTO `sku` VALUES ('3', '内存', '4G+36G、4G+125G、8G+125G');

-- ----------------------------
-- Table structure for sku_adjust_price
-- ----------------------------
DROP TABLE IF EXISTS `sku_adjust_price`;
CREATE TABLE `sku_adjust_price` (
  `sku_pice_id` int(11) NOT NULL COMMENT '库存规格关联表id',
  `sku_id` int(11) DEFAULT NULL COMMENT '规格表id',
  `adjust_price_id` int(11) DEFAULT NULL COMMENT '商品调整价格表id',
  PRIMARY KEY (`sku_pice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存规格关联表';

-- ----------------------------
-- Records of sku_adjust_price
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `param_key` varchar(50) DEFAULT NULL COMMENT 'key',
  `param_value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `param_key` (`param_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置信息表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', 'CLOUD_STORAGE_CONFIG_KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', '0', '云存储配置信息');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='部门管理';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '0', '人人开源集团', '0', '0');
INSERT INTO `sys_dept` VALUES ('2', '1', '长沙分公司', '1', '0');
INSERT INTO `sys_dept` VALUES ('3', '1', '上海分公司', '2', '0');
INSERT INTO `sys_dept` VALUES ('4', '3', '技术部', '0', '0');
INSERT INTO `sys_dept` VALUES ('5', '3', '销售部', '1', '0');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '字典名称',
  `type` varchar(100) NOT NULL COMMENT '字典类型',
  `code` varchar(100) NOT NULL COMMENT '字典码',
  `value` varchar(1000) NOT NULL COMMENT '字典值',
  `order_num` int(11) DEFAULT '0' COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '删除标记  -1：已删除  0：正常',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='数据字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '性别', 'sex', '0', '女', '0', null, '0');
INSERT INTO `sys_dict` VALUES ('2', '性别', 'sex', '1', '男', '1', null, '0');
INSERT INTO `sys_dict` VALUES ('3', '性别', 'sex', '2', '未知', '3', null, '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', 'admin', '保存菜单', 'com.zhouji.modules.sys.controller.SysMenuController.save()', '{\"menuId\":41,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"物流管理\",\"type\":0,\"orderNum\":2}', '76', '0:0:0:0:0:0:0:1', '2018-11-26 22:50:44');
INSERT INTO `sys_log` VALUES ('2', 'admin', '保存菜单', 'com.zhouji.modules.sys.controller.SysMenuController.save()', '{\"menuId\":42,\"parentId\":41,\"parentName\":\"物流管理\",\"name\":\"运费模版管理\",\"url\":\"modules/transport/transporttemplate.html\",\"perms\":\"\",\"type\":1,\"orderNum\":0}', '60', '0:0:0:0:0:0:0:1', '2018-11-26 22:52:55');
INSERT INTO `sys_log` VALUES ('3', 'admin', '保存菜单', 'com.zhouji.modules.sys.controller.SysMenuController.save()', '{\"menuId\":43,\"parentId\":42,\"parentName\":\"运费模版管理\",\"name\":\"新增\",\"type\":2,\"orderNum\":0}', '76', '0:0:0:0:0:0:0:1', '2018-11-26 22:54:50');
INSERT INTO `sys_log` VALUES ('4', 'admin', '修改菜单', 'com.zhouji.modules.sys.controller.SysMenuController.update()', '{\"menuId\":43,\"parentId\":42,\"parentName\":\"运费模版管理\",\"name\":\"新增\",\"perms\":\"transport:transporttemplate:save\",\"type\":2,\"orderNum\":0}', '72', '0:0:0:0:0:0:0:1', '2018-11-26 22:55:32');
INSERT INTO `sys_log` VALUES ('5', 'admin', '保存菜单', 'com.zhouji.modules.sys.controller.SysMenuController.save()', '{\"menuId\":44,\"parentId\":42,\"parentName\":\"运费模版管理\",\"name\":\"查询\",\"type\":2,\"orderNum\":0}', '67', '0:0:0:0:0:0:0:1', '2018-11-26 23:00:46');
INSERT INTO `sys_log` VALUES ('6', 'admin', '修改菜单', 'com.zhouji.modules.sys.controller.SysMenuController.update()', '{\"menuId\":44,\"parentId\":42,\"parentName\":\"运费模版管理\",\"name\":\"查询\",\"perms\":\"sys:role:list,sys:role:info\",\"type\":2,\"orderNum\":0}', '65', '0:0:0:0:0:0:0:1', '2018-11-26 23:10:07');
INSERT INTO `sys_log` VALUES ('7', 'admin', '修改菜单', 'com.zhouji.modules.sys.controller.SysMenuController.update()', '{\"menuId\":44,\"parentId\":42,\"parentName\":\"运费模版管理\",\"name\":\"查询\",\"perms\":\"\",\"type\":2,\"orderNum\":0}', '67', '0:0:0:0:0:0:0:1', '2018-11-26 23:10:39');
INSERT INTO `sys_log` VALUES ('8', 'admin', '保存菜单', 'com.zhouji.modules.sys.controller.SysMenuController.save()', '{\"menuId\":45,\"parentId\":42,\"parentName\":\"运费模版管理\",\"name\":\"查看\",\"type\":2,\"orderNum\":0}', '92', '0:0:0:0:0:0:0:1', '2018-11-27 20:34:00');
INSERT INTO `sys_log` VALUES ('9', 'admin', '删除菜单', 'com.zhouji.modules.sys.controller.SysMenuController.delete()', '45', '46', '0:0:0:0:0:0:0:1', '2018-11-27 20:34:25');
INSERT INTO `sys_log` VALUES ('10', 'admin', '修改菜单', 'com.zhouji.modules.sys.controller.SysMenuController.update()', '{\"menuId\":44,\"parentId\":42,\"parentName\":\"运费模版管理\",\"name\":\"查询\",\"perms\":\"transport:transporttemplate:list,transport:transporttemplate:info\",\"type\":2,\"orderNum\":0}', '86', '0:0:0:0:0:0:0:1', '2018-11-27 20:35:02');
INSERT INTO `sys_log` VALUES ('11', 'admin', '保存菜单', 'com.zhouji.modules.sys.controller.SysMenuController.save()', '{\"menuId\":46,\"parentId\":42,\"parentName\":\"运费模版管理\",\"name\":\"修改\",\"perms\":\"transport:transporttemplate:update\",\"type\":2,\"orderNum\":0}', '100', '0:0:0:0:0:0:0:1', '2018-11-27 20:37:40');
INSERT INTO `sys_log` VALUES ('12', 'admin', '保存菜单', 'com.zhouji.modules.sys.controller.SysMenuController.save()', '{\"menuId\":47,\"parentId\":42,\"parentName\":\"运费模版管理\",\"name\":\"删除\",\"perms\":\"transport:transporttemplate:delete\",\"type\":2,\"orderNum\":0}', '80', '0:0:0:0:0:0:0:1', '2018-11-27 20:38:00');
INSERT INTO `sys_log` VALUES ('13', 'admin', '立即执行任务', 'com.zhouji.modules.job.controller.ScheduleJobController.run()', '[1]', '152', '0:0:0:0:0:0:0:1', '2018-11-27 20:50:12');
INSERT INTO `sys_log` VALUES ('14', 'admin', '保存菜单', 'com.zhouji.modules.sys.controller.SysMenuController.save()', '{\"menuId\":48,\"parentId\":42,\"parentName\":\"运费模版管理\",\"name\":\"删除默认地址\",\"perms\":\"transport:transporttemplateexpand:delete\",\"type\":2,\"orderNum\":0}', '80', '0:0:0:0:0:0:0:1', '2018-11-28 20:47:23');
INSERT INTO `sys_log` VALUES ('15', 'admin', '保存菜单', 'com.zhouji.modules.sys.controller.SysMenuController.save()', '{\"menuId\":49,\"parentId\":42,\"parentName\":\"运费模版管理\",\"name\":\"修改默认地址\\t\",\"perms\":\"transport:transporttemplateexpand:update\",\"type\":2,\"orderNum\":0}', '76', '0:0:0:0:0:0:0:1', '2018-11-28 20:49:27');
INSERT INTO `sys_log` VALUES ('16', 'admin', '保存菜单', 'com.zhouji.modules.sys.controller.SysMenuController.save()', '{\"menuId\":50,\"parentId\":41,\"parentName\":\"物流管理\",\"name\":\"发货地址管理\",\"url\":\"modules/transport/transportaddressmanagement.html\",\"type\":1}', '36', '0:0:0:0:0:0:0:1', '2018-11-28 21:25:33');
INSERT INTO `sys_log` VALUES ('17', 'admin', '保存菜单', 'com.zhouji.modules.sys.controller.SysMenuController.save()', '{\"menuId\":51,\"parentId\":50,\"parentName\":\"发货地址管理\",\"name\":\"新增\",\"perms\":\"transport:transportaddressmanagement:save\",\"type\":2,\"orderNum\":0}', '85', '0:0:0:0:0:0:0:1', '2018-11-28 21:26:33');
INSERT INTO `sys_log` VALUES ('18', 'admin', '保存菜单', 'com.zhouji.modules.sys.controller.SysMenuController.save()', '{\"menuId\":52,\"parentId\":50,\"parentName\":\"发货地址管理\",\"name\":\"修改\",\"perms\":\"transport:transportaddressmanagement:update\",\"type\":2,\"orderNum\":0}', '72', '0:0:0:0:0:0:0:1', '2018-11-28 21:26:53');
INSERT INTO `sys_log` VALUES ('19', 'admin', '保存菜单', 'com.zhouji.modules.sys.controller.SysMenuController.save()', '{\"menuId\":53,\"parentId\":50,\"parentName\":\"发货地址管理\",\"name\":\"删除\",\"perms\":\"transport:transportaddressmanagement:delete\",\"type\":2,\"orderNum\":0}', '77', '0:0:0:0:0:0:0:1', '2018-11-28 21:27:21');
INSERT INTO `sys_log` VALUES ('20', 'admin', '保存菜单', 'com.zhouji.modules.sys.controller.SysMenuController.save()', '{\"menuId\":54,\"parentId\":50,\"parentName\":\"发货地址管理\",\"name\":\"查看\",\"perms\":\"transport:transportaddressmanagement:list,transport:transportaddressmanagement:info\",\"type\":2,\"orderNum\":0}', '72', '0:0:0:0:0:0:0:1', '2018-11-28 21:27:59');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', null, null, '0', 'fa fa-cog', '0');
INSERT INTO `sys_menu` VALUES ('2', '1', '管理员管理', 'modules/sys/user.html', null, '1', 'fa fa-user', '1');
INSERT INTO `sys_menu` VALUES ('3', '1', '角色管理', 'modules/sys/role.html', null, '1', 'fa fa-user-secret', '2');
INSERT INTO `sys_menu` VALUES ('4', '1', '菜单管理', 'modules/sys/menu.html', null, '1', 'fa fa-th-list', '3');
INSERT INTO `sys_menu` VALUES ('5', '1', 'SQL监控', 'druid/sql.html', null, '1', 'fa fa-bug', '4');
INSERT INTO `sys_menu` VALUES ('6', '1', '定时任务', 'modules/job/schedule.html', null, '1', 'fa fa-tasks', '5');
INSERT INTO `sys_menu` VALUES ('7', '6', '查看', null, 'sys:schedule:list,sys:schedule:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('8', '6', '新增', null, 'sys:schedule:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('9', '6', '修改', null, 'sys:schedule:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('10', '6', '删除', null, 'sys:schedule:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('11', '6', '暂停', null, 'sys:schedule:pause', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('12', '6', '恢复', null, 'sys:schedule:resume', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('13', '6', '立即执行', null, 'sys:schedule:run', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('14', '6', '日志列表', null, 'sys:schedule:log', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('15', '2', '查看', null, 'sys:user:list,sys:user:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '2', '新增', null, 'sys:user:save,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '2', '修改', null, 'sys:user:update,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('18', '2', '删除', null, 'sys:user:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('19', '3', '查看', null, 'sys:role:list,sys:role:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '3', '新增', null, 'sys:role:save,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('21', '3', '修改', null, 'sys:role:update,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '3', '删除', null, 'sys:role:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('23', '4', '查看', null, 'sys:menu:list,sys:menu:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('24', '4', '新增', null, 'sys:menu:save,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('25', '4', '修改', null, 'sys:menu:update,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('26', '4', '删除', null, 'sys:menu:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('27', '1', '参数管理', 'modules/sys/config.html', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', '1', 'fa fa-sun-o', '6');
INSERT INTO `sys_menu` VALUES ('29', '1', '系统日志', 'modules/sys/log.html', 'sys:log:list', '1', 'fa fa-file-text-o', '7');
INSERT INTO `sys_menu` VALUES ('30', '1', '文件上传', 'modules/oss/oss.html', 'sys:oss:all', '1', 'fa fa-file-image-o', '6');
INSERT INTO `sys_menu` VALUES ('31', '1', '部门管理', 'modules/sys/dept.html', null, '1', 'fa fa-file-code-o', '1');
INSERT INTO `sys_menu` VALUES ('32', '31', '查看', null, 'sys:dept:list,sys:dept:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('33', '31', '新增', null, 'sys:dept:save,sys:dept:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('34', '31', '修改', null, 'sys:dept:update,sys:dept:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('35', '31', '删除', null, 'sys:dept:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('36', '1', '字典管理', 'modules/sys/dict.html', null, '1', 'fa fa-bookmark-o', '6');
INSERT INTO `sys_menu` VALUES ('37', '36', '查看', null, 'sys:dict:list,sys:dict:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('38', '36', '新增', null, 'sys:dict:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('39', '36', '修改', null, 'sys:dict:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('40', '36', '删除', null, 'sys:dict:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('41', '0', '物流管理', null, null, '0', null, '2');
INSERT INTO `sys_menu` VALUES ('42', '41', '运费模版管理', 'modules/transport/transporttemplate.html', '', '1', null, '0');
INSERT INTO `sys_menu` VALUES ('43', '42', '新增', null, 'transport:transporttemplate:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('44', '42', '查询', null, 'transport:transporttemplate:list,transport:transporttemplate:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('46', '42', '修改', null, 'transport:transporttemplate:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('47', '42', '删除', null, 'transport:transporttemplate:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('48', '42', '删除默认地址', null, 'transport:transporttemplateexpand:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('49', '42', '修改默认地址	', null, 'transport:transporttemplateexpand:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('50', '41', '发货地址管理', 'modules/transport/transportaddressmanagement.html', null, '1', null, null);
INSERT INTO `sys_menu` VALUES ('51', '50', '新增', null, 'transport:transportaddressmanagement:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('52', '50', '修改', null, 'transport:transportaddressmanagement:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('53', '50', '删除', null, 'transport:transportaddressmanagement:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('54', '50', '查看', null, 'transport:transportaddressmanagement:list,transport:transportaddressmanagement:info', '2', null, '0');

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件上传';

-- ----------------------------
-- Records of sys_oss
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与部门对应关系';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(20) DEFAULT NULL COMMENT '盐',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'e1153123d7d180ceeb820d577ff119876678732a68eef4e6ffc0b1f06a01f91b', 'YzcmCZNvbXocrsz9dm8e', 'root@renren.io', '13612345678', '1', '1', '2016-11-11 11:11:11');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for test_test
-- ----------------------------
DROP TABLE IF EXISTS `test_test`;
CREATE TABLE `test_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` char(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of test_test
-- ----------------------------
INSERT INTO `test_test` VALUES ('3', '1', '1', '1', '1');
INSERT INTO `test_test` VALUES ('4', '2', '2', '2', '2');
INSERT INTO `test_test` VALUES ('5', '3', '3', '3', '4');

-- ----------------------------
-- Table structure for transport_address_management
-- ----------------------------
DROP TABLE IF EXISTS `transport_address_management`;
CREATE TABLE `transport_address_management` (
  `sender_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sender` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '发送人',
  `province_id` int(11) DEFAULT NULL COMMENT '省份id',
  `city` int(11) DEFAULT NULL COMMENT '城市id',
  `area` int(11) DEFAULT NULL COMMENT '区域id',
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '详细地址',
  `postcode` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '邮编',
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号码',
  `mobile` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '电话号码',
  `is_default` tinyint(4) DEFAULT NULL COMMENT '是否默认地址，0否，1是',
  PRIMARY KEY (`sender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='地址管理表';

-- ----------------------------
-- Records of transport_address_management
-- ----------------------------
INSERT INTO `transport_address_management` VALUES ('2', '林英发', '1', '2', '3', '广东阳江', '529943', '15112004467', '15112004467', '1');
INSERT INTO `transport_address_management` VALUES ('3', '530', '1', '2', '3', '广东阳江', '529943', '15112004467', '15112004467', '1');
INSERT INTO `transport_address_management` VALUES ('4', 'lyf', '1', '2', '3', '广东阳江', '529943', '15112004467', '15112004467', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COMMENT='运费模板表';

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
INSERT INTO `transport_template` VALUES ('19', '1', '1', '品类', null, null, null, null, '0', null, null, null, null, null);
INSERT INTO `transport_template` VALUES ('20', '1', '1', 'android', null, null, null, null, '0', null, null, null, null, null);
INSERT INTO `transport_template` VALUES ('21', '1', '1', 'ios', null, null, null, null, '0', null, null, null, null, null);
INSERT INTO `transport_template` VALUES ('22', '1', '1', '电脑', null, null, null, null, '0', null, null, null, null, null);
INSERT INTO `transport_template` VALUES ('23', '1', '1', '手机', null, null, null, null, '0', null, null, null, null, null);

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
INSERT INTO `transport_template_expand` VALUES ('8', '15', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `transport_template_expand` VALUES ('11', '15', '1', '22', '33', '11', '12', '33', '33', null, null, null, null, null);
INSERT INTO `transport_template_expand` VALUES ('12', '15', '1', '22', '33', '11', '12', '33', '33', null, null, null, null, null);
