/*
Navicat MySQL Data Transfer

Source Server         : movieseat
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : movieseat

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-03-05 23:27:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cinema
-- ----------------------------
DROP TABLE IF EXISTS `cinema`;
CREATE TABLE `cinema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '影院名称',
  `addr` varchar(255) DEFAULT NULL COMMENT '影院地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for madmin
-- ----------------------------
DROP TABLE IF EXISTS `madmin`;
CREATE TABLE `madmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for movieinfo
-- ----------------------------
DROP TABLE IF EXISTS `movieinfo`;
CREATE TABLE `movieinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(255) DEFAULT NULL COMMENT '电影名称',
  `price` int(11) DEFAULT NULL COMMENT '电影票价',
  `director` varchar(255) DEFAULT NULL COMMENT '导演',
  `screenwriter` varchar(255) DEFAULT NULL COMMENT '编剧',
  `starring` varchar(255) DEFAULT NULL COMMENT '主演',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `language` varchar(255) DEFAULT NULL COMMENT '语言',
  `releasedate` datetime DEFAULT NULL COMMENT '上映日期',
  `length` int(11) DEFAULT NULL COMMENT '片长',
  `synopsis` varchar(255) DEFAULT NULL COMMENT '剧情简介',
  `img` varchar(255) DEFAULT NULL COMMENT '影片海报',
  `rating` int(255) DEFAULT NULL COMMENT '评分1-5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for movierecord
-- ----------------------------
DROP TABLE IF EXISTS `movierecord`;
CREATE TABLE `movierecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL COMMENT '用户ID',
  `moviesessionid` int(11) DEFAULT NULL COMMENT '场次信息id',
  `movieseatid` int(11) DEFAULT NULL COMMENT '座位信息id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for movieseat
-- ----------------------------
DROP TABLE IF EXISTS `movieseat`;
CREATE TABLE `movieseat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `row` int(11) DEFAULT NULL COMMENT '第几排',
  `col` int(11) DEFAULT NULL COMMENT '第几列',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for moviesession
-- ----------------------------
DROP TABLE IF EXISTS `moviesession`;
CREATE TABLE `moviesession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movieid` int(11) DEFAULT NULL COMMENT '电影id',
  `cinemaid` int(11) DEFAULT NULL COMMENT '影院id',
  `moviedate` date DEFAULT NULL COMMENT '场次日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for movietime
-- ----------------------------
DROP TABLE IF EXISTS `movietime`;
CREATE TABLE `movietime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `moviesessionid` int(11) DEFAULT NULL COMMENT '电影-影院-日期关系表id',
  `starttime` datetime DEFAULT NULL COMMENT '电影开场时间',
  `endtime` datetime DEFAULT NULL COMMENT '电影结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for muser
-- ----------------------------
DROP TABLE IF EXISTS `muser`;
CREATE TABLE `muser` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(255) DEFAULT NULL COMMENT '用户账号',
  `password` varchar(255) DEFAULT NULL COMMENT '用户密码',
  `nickname` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `phone` int(255) DEFAULT NULL COMMENT '手机号码',
  `cardtype` int(255) DEFAULT '0' COMMENT '0=铜卡；1=银卡；2=金卡',
  `integral` int(255) DEFAULT NULL COMMENT '用户积分',
  `money` int(255) DEFAULT NULL COMMENT '用户钱包；单位（元）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for package
-- ----------------------------
DROP TABLE IF EXISTS `package`;
CREATE TABLE `package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
