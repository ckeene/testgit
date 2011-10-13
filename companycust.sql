/*
 Navicat Premium Data Transfer

 Source Server         : mac mysql
 Source Server Type    : MySQL
 Source Server Version : 50515
 Source Host           : localhost
 Source Database       : companycust

 Target Server Type    : MySQL
 Target Server Version : 50515
 File Encoding         : utf-8

 Date: 09/26/2011 12:28:36 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `companyid` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`companyid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `company`
-- ----------------------------
BEGIN;
INSERT INTO `company` VALUES ('1', 'Apple'), ('2', 'IBM'), ('3', 'VMware');
COMMIT;

-- ----------------------------
--  Table structure for `companycustomer`
-- ----------------------------
DROP TABLE IF EXISTS `companycustomer`;
CREATE TABLE `companycustomer` (
  `ccid` int(11) NOT NULL AUTO_INCREMENT,
  `companyid` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  PRIMARY KEY (`ccid`),
  KEY `companyid` (`companyid`),
  KEY `customerid` (`customerid`),
  CONSTRAINT `companyfkey` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`),
  CONSTRAINT `customerfkey` FOREIGN KEY (`customerid`) REFERENCES `customer` (`custid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `companycustomer`
-- ----------------------------
BEGIN;
INSERT INTO `companycustomer` VALUES ('1', '1', '1'), ('2', '1', '2'), ('3', '2', '3'), ('4', '2', '4'), ('5', '3', '2'), ('6', '3', '4');
COMMIT;

-- ----------------------------
--  Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `custid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`custid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `customer`
-- ----------------------------
BEGIN;
INSERT INTO `customer` VALUES ('1', 'user'), ('2', 'elvis'), ('3', 'hank'), ('4', 'ryan');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
