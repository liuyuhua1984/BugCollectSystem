/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : bug_list

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-12-01 16:06:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bugs
-- ----------------------------
DROP TABLE IF EXISTS `bugs`;
CREATE TABLE `bugs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(255) DEFAULT '' COMMENT '玩家账号',
  `player_id` varchar(255) DEFAULT '' COMMENT '玩家Id',
  `player_name` varchar(255) DEFAULT '' COMMENT '玩家名字',
  `descs` varchar(255) DEFAULT '' COMMENT '玩家描述',
  `create_time` datetime DEFAULT NULL COMMENT '记录时间',
  `folder` varchar(255) DEFAULT 'jz' COMMENT '项目名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bugs
-- ----------------------------
INSERT INTO `bugs` VALUES ('1', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:06', 'jz');
INSERT INTO `bugs` VALUES ('2', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:07', 'jz');
INSERT INTO `bugs` VALUES ('3', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:07', 'jz');
INSERT INTO `bugs` VALUES ('4', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:07', 'jz');
INSERT INTO `bugs` VALUES ('5', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:07', 'jz');
INSERT INTO `bugs` VALUES ('6', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:07', 'jz');
INSERT INTO `bugs` VALUES ('7', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:07', 'jz');
INSERT INTO `bugs` VALUES ('8', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:07', 'jz');
INSERT INTO `bugs` VALUES ('9', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:07', 'jz');
INSERT INTO `bugs` VALUES ('10', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:07', 'jz');
INSERT INTO `bugs` VALUES ('11', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:07', 'jz');
INSERT INTO `bugs` VALUES ('12', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:07', 'jz');
INSERT INTO `bugs` VALUES ('13', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:07', 'jz');
INSERT INTO `bugs` VALUES ('14', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:07', 'jz');
INSERT INTO `bugs` VALUES ('15', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:07', 'jz');
INSERT INTO `bugs` VALUES ('16', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:07', 'jz');
INSERT INTO `bugs` VALUES ('17', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:07', 'jz');
INSERT INTO `bugs` VALUES ('18', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:07', 'jz');
INSERT INTO `bugs` VALUES ('19', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('20', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('21', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('22', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('23', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('24', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('25', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('26', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('27', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('28', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('29', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('30', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('31', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('32', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('33', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('34', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('35', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('36', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('37', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('38', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('39', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('40', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:08', 'jz');
INSERT INTO `bugs` VALUES ('41', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('42', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('43', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('44', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('45', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('46', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('47', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('48', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('49', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('50', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('51', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('52', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('53', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('54', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('55', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('56', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('57', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('58', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('59', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('60', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('61', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('62', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('63', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('64', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('65', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:09', 'jz');
INSERT INTO `bugs` VALUES ('66', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:10', 'jz');
INSERT INTO `bugs` VALUES ('67', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:10', 'jz');
INSERT INTO `bugs` VALUES ('68', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:10', 'jz');
INSERT INTO `bugs` VALUES ('69', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:10', 'jz');
INSERT INTO `bugs` VALUES ('70', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:10', 'jz');
INSERT INTO `bugs` VALUES ('71', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:10', 'jz');
INSERT INTO `bugs` VALUES ('72', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:10', 'jz');
INSERT INTO `bugs` VALUES ('73', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:10', 'jz');
INSERT INTO `bugs` VALUES ('74', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:10', 'jz');
INSERT INTO `bugs` VALUES ('75', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:10', 'jz');
INSERT INTO `bugs` VALUES ('76', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:10', 'jz');
INSERT INTO `bugs` VALUES ('77', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:10', 'jz');
INSERT INTO `bugs` VALUES ('78', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:10', 'jz');
INSERT INTO `bugs` VALUES ('79', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:10', 'jz');
INSERT INTO `bugs` VALUES ('80', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:10', 'jz');
INSERT INTO `bugs` VALUES ('81', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:10', 'jz');
INSERT INTO `bugs` VALUES ('82', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:10', 'jz');
INSERT INTO `bugs` VALUES ('83', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:11', 'jz');
INSERT INTO `bugs` VALUES ('84', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:11', 'jz');
INSERT INTO `bugs` VALUES ('85', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:11', 'jz');
INSERT INTO `bugs` VALUES ('86', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:11', 'jz');
INSERT INTO `bugs` VALUES ('87', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:11', 'jz');
INSERT INTO `bugs` VALUES ('88', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:11', 'jz');
INSERT INTO `bugs` VALUES ('89', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:11', 'jz');
INSERT INTO `bugs` VALUES ('90', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:11', 'jz');
INSERT INTO `bugs` VALUES ('91', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:11', 'jz');
INSERT INTO `bugs` VALUES ('92', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:11', 'jz');
INSERT INTO `bugs` VALUES ('93', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:11', 'jz');
INSERT INTO `bugs` VALUES ('94', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:11', 'jz');
INSERT INTO `bugs` VALUES ('95', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:11', 'jz');
INSERT INTO `bugs` VALUES ('96', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:11', 'jz');
INSERT INTO `bugs` VALUES ('97', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:11', 'jz');
INSERT INTO `bugs` VALUES ('98', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:11', 'jz');
INSERT INTO `bugs` VALUES ('99', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:11', 'jz');
INSERT INTO `bugs` VALUES ('100', 'ewe1', 'swdeww', '在办fder在', '在ew办在', '2017-12-01 14:11:11', 'jz');
INSERT INTO `bugs` VALUES ('101', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:17', 'jz');
INSERT INTO `bugs` VALUES ('102', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:17', 'jz');
INSERT INTO `bugs` VALUES ('103', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:17', 'jz');
INSERT INTO `bugs` VALUES ('104', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:17', 'jz');
INSERT INTO `bugs` VALUES ('105', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:17', 'jz');
INSERT INTO `bugs` VALUES ('106', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:17', 'jz');
INSERT INTO `bugs` VALUES ('107', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:17', 'jz');
INSERT INTO `bugs` VALUES ('108', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:17', 'jz');
INSERT INTO `bugs` VALUES ('109', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:17', 'jz');
INSERT INTO `bugs` VALUES ('110', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:17', 'jz');
INSERT INTO `bugs` VALUES ('111', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:17', 'jz');
INSERT INTO `bugs` VALUES ('112', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:17', 'jz');
INSERT INTO `bugs` VALUES ('113', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:17', 'jz');
INSERT INTO `bugs` VALUES ('114', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:17', 'jz');
INSERT INTO `bugs` VALUES ('115', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:17', 'jz');
INSERT INTO `bugs` VALUES ('116', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('117', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('118', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('119', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('120', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('121', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('122', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('123', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('124', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('125', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('126', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('127', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('128', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('129', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('130', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('131', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('132', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('133', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('134', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('135', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('136', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('137', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('138', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('139', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('140', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('141', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:18', 'jz');
INSERT INTO `bugs` VALUES ('142', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('143', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('144', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('145', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('146', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('147', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('148', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('149', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('150', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('151', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('152', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('153', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('154', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('155', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('156', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('157', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('158', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('159', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('160', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('161', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('162', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('163', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:19', 'jz');
INSERT INTO `bugs` VALUES ('164', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('165', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('166', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('167', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('168', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('169', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('170', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('171', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('172', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('173', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('174', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('175', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('176', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('177', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('178', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('179', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('180', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('181', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('182', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('183', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('184', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('185', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('186', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('187', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('188', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('189', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:20', 'jz');
INSERT INTO `bugs` VALUES ('190', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:21', 'jz');
INSERT INTO `bugs` VALUES ('191', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:21', 'jz');
INSERT INTO `bugs` VALUES ('192', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:21', 'jz');
INSERT INTO `bugs` VALUES ('193', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:21', 'jz');
INSERT INTO `bugs` VALUES ('194', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:21', 'jz');
INSERT INTO `bugs` VALUES ('195', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:21', 'jz');
INSERT INTO `bugs` VALUES ('196', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:21', 'jz');
INSERT INTO `bugs` VALUES ('197', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:21', 'jz');
INSERT INTO `bugs` VALUES ('198', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:21', 'jz');
INSERT INTO `bugs` VALUES ('199', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:21', 'jz');
INSERT INTO `bugs` VALUES ('200', 'ewfee1', 'sweedeww', '在办fder在', '在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在', '2017-12-01 14:12:21', 'jz');
