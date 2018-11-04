/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 100136
Source Host           : localhost:3306
Source Database       : dbsysadmin

Target Server Type    : MYSQL
Target Server Version : 100136
File Encoding         : 65001

Date: 2018-11-04 16:20:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ref_roles
-- ----------------------------
DROP TABLE IF EXISTS `ref_roles`;
CREATE TABLE `ref_roles` (
  `role_id` varchar(7) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `isaktif` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ref_roles
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) NOT NULL,
  `isactive` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Super User', '1');
INSERT INTO `roles` VALUES ('2', 'Administrator', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `google_id` varchar(200) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_gender` varchar(5) DEFAULT NULL,
  `user_firstname` varchar(20) DEFAULT NULL,
  `user_lastname` varchar(20) DEFAULT NULL,
  `user_fullname` varchar(200) DEFAULT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_mobile` varchar(20) DEFAULT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_photo` varchar(200) DEFAULT NULL,
  `user_active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`user_name`),
  UNIQUE KEY `user_mobile` (`user_mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('5', '114746095932612758526', 'landungpujisantoso2@gmail.com', null, 'Landung', 'Puji Santoso', 'Landung Puji Santoso', '', null, '$2y$10$nnlJNvUtWl4SUktrJ/ZNrew7P/tIAP2znlL4m8ZT6XLhRldBn/sY6', null, '1');

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES ('1', '2');
