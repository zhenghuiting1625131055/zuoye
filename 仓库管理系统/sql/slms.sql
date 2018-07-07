/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50149
Source Host           : localhost:3306
Source Database       : slms

Target Server Type    : MYSQL
Target Server Version : 50149
File Encoding         : 65001

Date: 2018-06-07 20:39:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `ccode` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `ctelephone` varchar(255) DEFAULT NULL,
  `cemail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '1', '吴显光', '湖北省', '15607149771', '1062843283@qq.com');

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `ecode` varchar(255) DEFAULT NULL,
  `ename` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `etelephone` varchar(255) DEFAULT NULL,
  `eemail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '1', '郝焕霞', '2017-10-10', '女', '15607149771', '1062843283@qq.com');

-- ----------------------------
-- Table structure for `merchandise`
-- ----------------------------
DROP TABLE IF EXISTS `merchandise`;
CREATE TABLE `merchandise` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `mcode` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `mprice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchandise
-- ----------------------------
INSERT INTO `merchandise` VALUES ('1', '1', '香烟', '20');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `ocode` varchar(255) DEFAULT NULL,
  `merchandisenumber` varchar(255) DEFAULT NULL,
  `orderdata` varchar(255) DEFAULT NULL,
  `customerid` int(50) DEFAULT NULL,
  `merchandiseid` int(50) DEFAULT NULL,
  `employeeid` int(50) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', null, '20', '2017-10-22', '1', '1', '1');

-- ----------------------------
-- Table structure for `stockin`
-- ----------------------------
DROP TABLE IF EXISTS `stockin`;
CREATE TABLE `stockin` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `scode` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `sprice` varchar(255) DEFAULT NULL,
  `stockindate` varchar(255) DEFAULT NULL,
  `customerid` int(50) DEFAULT NULL,
  `merchandiseid` int(50) DEFAULT NULL,
  `employeeid` int(50) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stockin
-- ----------------------------
INSERT INTO `stockin` VALUES ('1', null, '20', '20', '2017-10-22', '1', '1', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `usex` varchar(255) DEFAULT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'wu', '123', '男', '打球');
INSERT INTO `user` VALUES ('2', 'hao', '123', '女', '旅游,写作');
