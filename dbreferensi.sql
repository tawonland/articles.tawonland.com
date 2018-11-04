/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 100136
Source Host           : localhost:3306
Source Database       : dbreferensi

Target Server Type    : MYSQL
Target Server Version : 100136
File Encoding         : 65001

Date: 2018-11-04 16:20:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ms_categories
-- ----------------------------
DROP TABLE IF EXISTS `ms_categories`;
CREATE TABLE `ms_categories` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `date_create` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `ip_create` varchar(35) NOT NULL,
  `date_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ip_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_create` varchar(50) NOT NULL,
  `category_parent_id` bigint(20) DEFAULT NULL,
  `info_left` int(11) DEFAULT NULL,
  `info_right` int(11) DEFAULT NULL,
  `category_shortname` varchar(255) NOT NULL,
  `category_level` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ms_categories
-- ----------------------------
INSERT INTO `ms_categories` VALUES ('1', 'Operating System', '2018-11-04 13:51:06', '', '2018-11-04 13:51:06', '2018-11-04 13:51:06', 'admin', null, '1', '4', 'OS', '0');
INSERT INTO `ms_categories` VALUES ('2', 'Linux', '2018-11-04 13:58:26', '', '2018-11-04 13:58:26', '2018-11-04 13:58:26', 'admin', '1', '2', '3', 'Linux', '1');
INSERT INTO `ms_categories` VALUES ('3', 'Pemrograman', '2018-11-04 13:53:16', '', '2018-11-04 13:53:16', '2018-11-04 13:53:16', 'admin', null, '5', '8', 'Pemrograman', '0');
INSERT INTO `ms_categories` VALUES ('4', 'Android', '2018-11-04 13:58:30', '', '2018-11-04 13:58:30', '2018-11-04 13:58:30', 'admin', null, '6', '7', '', '1');

-- ----------------------------
-- Table structure for tb_references
-- ----------------------------
DROP TABLE IF EXISTS `tb_references`;
CREATE TABLE `tb_references` (
  `reference_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NOT NULL,
  `reference_title` varchar(225) NOT NULL,
  `reference_content` text,
  `date_create` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `ip_create` varchar(35) NOT NULL,
  `date_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ip_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_create` varchar(50) NOT NULL,
  `reference_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_references
-- ----------------------------
