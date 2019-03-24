/*
Navicat MySQL Data Transfer

Source Server         : movieseat
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : movieseat

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-03-10 22:24:21
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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cinema
-- ----------------------------

-- ----------------------------
-- Table structure for iteminfo
-- ----------------------------
DROP TABLE IF EXISTS `iteminfo`;
CREATE TABLE `iteminfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '物品名称',
  `img` varchar(255) DEFAULT NULL COMMENT '物品图片',
  `desc` varchar(255) DEFAULT NULL COMMENT '物品描述',
  `cost` int(10) DEFAULT NULL COMMENT '消耗积分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of iteminfo
-- ----------------------------

-- ----------------------------
-- Table structure for madmin
-- ----------------------------
DROP TABLE IF EXISTS `madmin`;
CREATE TABLE `madmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '管理员账号',
  `password` varchar(255) DEFAULT NULL COMMENT '管理员密码',
  `role` int(255) DEFAULT NULL COMMENT '0=admin；1=经理；2=员工',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of madmin
-- ----------------------------

-- ----------------------------
-- Table structure for movieinfo
-- ----------------------------
DROP TABLE IF EXISTS `movieinfo`;
CREATE TABLE `movieinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(255) DEFAULT NULL COMMENT '电影名称',
  `director` varchar(255) DEFAULT NULL COMMENT '导演',
  `screenwriter` varchar(255) DEFAULT NULL COMMENT '编剧',
  `starring` varchar(255) DEFAULT NULL COMMENT '主演',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `language` varchar(255) DEFAULT NULL COMMENT '语言',
  `releasedate` date DEFAULT NULL COMMENT '上映日期',
  `length` int(11) DEFAULT NULL COMMENT '片长',
  `synopsis` text DEFAULT NULL COMMENT '剧情简介',
  `img` varchar(255) DEFAULT NULL COMMENT '影片海报',
  `rating` int(255) DEFAULT NULL COMMENT '评分1-5',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movieinfo
-- ----------------------------

-- ----------------------------
-- Table structure for movierecord
-- ----------------------------
DROP TABLE IF EXISTS `movierecord`;
CREATE TABLE `movierecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL COMMENT '用户ID',
  `moviesessionid` int(11) DEFAULT NULL COMMENT '场次信息id',
  `movieseatid` int(11) DEFAULT NULL COMMENT '座位信息id',
  `movietimeid` int(11) DEFAULT NULL COMMENT '电影价格/开始结束时间信息id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movierecord
-- ----------------------------

-- ----------------------------
-- Table structure for movieseat
-- ----------------------------
DROP TABLE IF EXISTS `movieseat`;
CREATE TABLE `movieseat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `row` int(11) DEFAULT NULL COMMENT '第几排',
  `col` int(11) DEFAULT NULL COMMENT '第几列',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movieseat
-- ----------------------------

-- ----------------------------
-- Table structure for moviesession
-- ----------------------------
DROP TABLE IF EXISTS `moviesession`;
CREATE TABLE `moviesession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movieid` int(11) DEFAULT NULL COMMENT '电影id',
  `cinemaid` int(11) DEFAULT NULL COMMENT '影院id',
  `moviedate` date DEFAULT NULL COMMENT '场次日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of moviesession
-- ----------------------------

-- ----------------------------
-- Table structure for movietime
-- ----------------------------
DROP TABLE IF EXISTS `movietime`;
CREATE TABLE `movietime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `moviesessionid` int(11) DEFAULT NULL COMMENT '电影-影院-日期关系表id',
  `starttime` datetime DEFAULT NULL COMMENT '电影开场时间',
  `endtime` datetime DEFAULT NULL COMMENT '电影结束时间',
  `price` double(10,2) DEFAULT NULL COMMENT '电影票价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movietime
-- ----------------------------

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of muser
-- ----------------------------

-- ----------------------------
-- Table structure for package
-- ----------------------------
DROP TABLE IF EXISTS `package`;
CREATE TABLE `package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '套餐名称',
  `price` double(10,2) DEFAULT NULL COMMENT '套餐价格',
  `desc` varchar(255) DEFAULT NULL COMMENT '套餐介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of package
-- ----------------------------

-- ----------------------------
-- Table structure for packageitem
-- ----------------------------
DROP TABLE IF EXISTS `packageitem`;
CREATE TABLE `packageitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `packageid` int(11) DEFAULT NULL COMMENT '套餐id',
  `itemid` int(11) DEFAULT NULL COMMENT '物品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of packageitem
-- ----------------------------
