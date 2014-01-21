/*
Navicat MySQL Data Transfer

Source Server         : localhost-mysql
Source Server Version : 50613
Source Host           : localhost:3306
Source Database       : captain

Target Server Type    : MYSQL
Target Server Version : 50613
File Encoding         : 65001

Date: 2014-01-21 22:42:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `app_user`
-- ----------------------------
DROP TABLE IF EXISTS `app_user`;
CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_expired` bit(1) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postal_code` varchar(15) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `credentials_expired` bit(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `account_enabled` bit(1) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_hint` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of app_user
-- ----------------------------
INSERT INTO `app_user` VALUES ('-2', '', '', '', 'Denver', 'US', '80210', 'CO', '', 'matt@raibledesigns.com', '', 'Matt', 'Raible', 'a40546cc4fd6a12572828bb803380888ad1bfdab', 'Not a female kitty.', '', 'admin', '1', 'http://raibledesigns.com');
INSERT INTO `app_user` VALUES ('-1', '', '', '', 'Denver', 'US', '80210', 'CO', '', 'matt_raible@yahoo.com', '', 'Tomcat', 'User', 'b6b1f4781776979c0775c71ebdd8bdc084aac5fe', 'A male kitty.', '', 'user', '1', 'http://tomcat.apache.org');

-- ----------------------------
-- Table structure for `hibernate_lilo_comm`
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_lilo_comm`;
CREATE TABLE `hibernate_lilo_comm` (
  `next_hi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_lilo_comm
-- ----------------------------
INSERT INTO `hibernate_lilo_comm` VALUES ('1');

-- ----------------------------
-- Table structure for `hibernate_sequences`
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequences`;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) DEFAULT NULL,
  `sequence_next_hi_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hibernate_sequences
-- ----------------------------

-- ----------------------------
-- Table structure for `hibernate_unique_key`
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_unique_key`;
CREATE TABLE `hibernate_unique_key` (
  `next_hi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hibernate_unique_key
-- ----------------------------
INSERT INTO `hibernate_unique_key` VALUES ('40');

-- ----------------------------
-- Table structure for `hilo_sequence_article`
-- ----------------------------
DROP TABLE IF EXISTS `hilo_sequence_article`;
CREATE TABLE `hilo_sequence_article` (
  `next_hi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hilo_sequence_article
-- ----------------------------
INSERT INTO `hilo_sequence_article` VALUES ('76');

-- ----------------------------
-- Table structure for `hilo_sequence_bricks`
-- ----------------------------
DROP TABLE IF EXISTS `hilo_sequence_bricks`;
CREATE TABLE `hilo_sequence_bricks` (
  `next_hi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hilo_sequence_bricks
-- ----------------------------
INSERT INTO `hilo_sequence_bricks` VALUES ('40');

-- ----------------------------
-- Table structure for `hilo_sequence_qrtz_joblog`
-- ----------------------------
DROP TABLE IF EXISTS `hilo_sequence_qrtz_joblog`;
CREATE TABLE `hilo_sequence_qrtz_joblog` (
  `next_hi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hilo_sequence_qrtz_joblog
-- ----------------------------
INSERT INTO `hilo_sequence_qrtz_joblog` VALUES ('9');

-- ----------------------------
-- Table structure for `qrtz_blob_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_calendars`
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
-- Table structure for `qrtz_cron_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('ClusterJobScheduler', 'g', 'G5', '35 0/5 * * * ? *', 'GMT+08:00');

-- ----------------------------
-- Table structure for `qrtz_fired_triggers`
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
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_job_details`
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
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('ClusterJobScheduler', 'simple5', 'DEFAULT', '', 'com.c306.core.quartz.jobs.SimpleJob', '1', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000007800);
INSERT INTO `qrtz_job_details` VALUES ('ClusterJobScheduler', 'SimpleJob2', 'DEFAULT', '导入交易明细', 'com.c306.core.quartz.jobs.SimpleJob', '1', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000007800);
INSERT INTO `qrtz_job_details` VALUES ('ClusterJobScheduler', 'simplejob_1', 'DEFAULT', '', 'com.c306.core.quartz.jobs.SimpleJob', '1', '0', '0', '1', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000007800);
INSERT INTO `qrtz_job_details` VALUES ('ClusterJobScheduler', 'simplejob_4', 'DEFAULT', '', 'com.c306.core.quartz.jobs.SimpleJob', '1', '0', '0', '1', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400046E616D65740004686168617800);
INSERT INTO `qrtz_job_details` VALUES ('ClusterJobScheduler', 'simple_3', 'DEFAULT', 'haha', 'com.c306.core.quartz.jobs.SimpleJob', '1', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000007800);

-- ----------------------------
-- Table structure for `qrtz_locks`
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
INSERT INTO `qrtz_locks` VALUES ('ClusterJobScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('ClusterJobScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for `qrtz_log`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_log`;
CREATE TABLE `qrtz_log` (
  `oid` bigint(20) NOT NULL,
  `fire_time` bigint(20) NOT NULL,
  `end_time` bigint(20) DEFAULT NULL,
  `job_name` varchar(100) DEFAULT NULL,
  `job_group` varchar(100) DEFAULT NULL,
  `job_data` varchar(100) DEFAULT NULL,
  `trigger_info` varchar(300) DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '0:ready, 1:running, 2:completed, 3:exception',
  `fromTime` datetime DEFAULT NULL,
  `toTime` datetime DEFAULT NULL,
  `fire_ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_log
-- ----------------------------
INSERT INTO `qrtz_log` VALUES ('1', '1383138802010', '1383138802132', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('2', '1383138798012', '1383138803663', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('3', '1383138804009', '1383138804016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('4', '1383138798022', '1383138805240', 'SimpleJob2', 'DEFAULT', '', 'additional.a, Interval: 300000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('5', '1383138800008', '1383138805794', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('6', '1383138806009', '1383138806035', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('7', '1383138808009', '1383138808016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('8', '1383138810009', '1383138810019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('9', '1383138812008', '1383138812015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('10', '1383138814008', '1383138814015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('11', '1383138816008', '1383138816016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('12', '1383138818008', '1383138818017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('13', '1383138820007', '1383138820014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('14', '1383138822009', '1383138822017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('15', '1383138824009', '1383138824016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('16', '1383138826009', '1383138826019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('17', '1383138828008', '1383138828033', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('18', '1383138830008', '1383138830016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('19', '1383138832008', '1383138832016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('20', '1383138834011', '1383138834032', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('21', '1383139185232', '1383139185384', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('22', '1383139185239', '1383139185371', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('23', '1383139188010', '1383139188017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('24', '1383139190009', '1383139190017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('25', '1383139192008', '1383139192043', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('26', '1383139194007', '1383139194015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('27', '1383139196010', '1383139196017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('28', '1383139198008', '1383139198016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('29', '1383139235010', '1383139235018', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('30', '1383139272008', '1383139272016', 'SimpleJob2', 'DEFAULT', '', 'ad.dd, Interval: 321000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('31', '1383139404009', '1383139404021', 'SimpleJob2', 'DEFAULT', '', 'additional.a, Interval: 300000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('32', '1383139535009', '1383139535016', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('33', '1383139593015', '1383139593026', 'SimpleJob2', 'DEFAULT', '', 'ad.dd, Interval: 321000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('42', '1383139712600', '1383139712838', 'SimpleJob2', 'DEFAULT', '', 'additional.a, Interval: 300000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('43', '1383139835016', '1383139835027', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('44', '1383139914011', '1383139914021', 'SimpleJob2', 'DEFAULT', '', 'ad.dd, Interval: 321000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('45', '1383140004014', '1383140004024', 'SimpleJob2', 'DEFAULT', '', 'additional.a, Interval: 300000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('46', '1383140135013', '1383140135021', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('47', '1383140235007', '1383140235015', 'SimpleJob2', 'DEFAULT', '', 'ad.dd, Interval: 321000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('48', '1383140304012', '1383140304022', 'SimpleJob2', 'DEFAULT', '', 'additional.a, Interval: 300000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('49', '1383143542007', '1383143542015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('50', '1383143544010', '1383143544018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('51', '1383143546008', '1383143546015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('52', '1383143548008', '1383143548015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('53', '1383143550007', '1383143550015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('54', '1383143552009', '1383143552015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('63', '1383145144018', '1383145144247', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('64', '1383145146008', '1383145146017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('65', '1383145148008', '1383145148016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('66', '1383145150008', '1383145150015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('67', '1383145560980', '1383145560997', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('68', '1383145561022', '1383145561030', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('69', '1383145561087', '1383145561100', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('70', '1383145561126', '1383145561152', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('71', '1383145561174', '1383145561185', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('72', '1383145561225', '1383145561233', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('73', '1383145561257', '1383145561267', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('74', '1383145561286', '1383145561310', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('75', '1383145561316', '1383145561327', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('76', '1383145561345', '1383145561358', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('77', '1383145561381', '1383145561395', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('78', '1383145561421', '1383145561428', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('79', '1383145561449', '1383145561464', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('80', '1383145561478', '1383145561485', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('81', '1383145561505', '1383145561513', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('82', '1383145561545', '1383145561601', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('83', '1383145561645', '1383145561655', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('84', '1383145561704', '1383145561721', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('85', '1383145561763', '1383145561772', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('86', '1383145561795', '1383145561806', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('87', '1383145561821', '1383145561826', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('88', '1383145561848', '1383145561854', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('89', '1383145561870', '1383145561876', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('90', '1383145561889', '1383145561899', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('91', '1383145561918', '1383145561924', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('92', '1383145561937', '1383145561943', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('93', '1383145561971', '1383145561977', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('94', '1383145561992', '1383145562010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('95', '1383145562022', '1383145562036', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('96', '1383145562046', '1383145562053', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('97', '1383145564007', '1383145564014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('98', '1383145566007', '1383145566021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('99', '1383145568007', '1383145568019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('100', '1383145570007', '1383145570015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('101', '1383145572014', '1383145572029', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('102', '1383145574007', '1383145574014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('103', '1383145576007', '1383145576017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('104', '1383145578008', '1383145578016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('105', '1383145580009', '1383145580024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('106', '1383145582008', '1383145582020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('107', '1383145584007', '1383145584015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('108', '1383145586008', '1383145586017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('109', '1383145588016', '1383145588023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('110', '1383145590007', '1383145590015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('111', '1383145592007', '1383145592015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('112', '1383145594219', '1383145594295', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('113', '1383145596007', '1383145596014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('114', '1383145598009', '1383145598016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('115', '1383145600007', '1383145600015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('116', '1383145621431', '1383145621437', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('117', '1383145621454', '1383145621459', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('118', '1383145621473', '1383145621482', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('119', '1383145621498', '1383145621504', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('120', '1383145621535', '1383145621541', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('121', '1383145621560', '1383145621566', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('122', '1383145621580', '1383145621586', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('123', '1383145621598', '1383145621604', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('124', '1383145621625', '1383145621632', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('125', '1383145621645', '1383145621650', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('126', '1383145622007', '1383145622019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('127', '1383145624008', '1383145624015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('128', '1383145626007', '1383145626015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('129', '1383145628008', '1383145628015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('147', '1383190447801', '1383190448308', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('148', '1383190448247', '1383190448314', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('149', '1383190450036', '1383190450057', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('150', '1383190452008', '1383190452016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('151', '1383190454007', '1383190454017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('152', '1383190456007', '1383190456021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('153', '1383190458007', '1383190458020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('154', '1383190460007', '1383190460014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('155', '1383190462008', '1383190462015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('156', '1383190464007', '1383190464015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('157', '1383190466013', '1383190466034', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('158', '1383190468006', '1383190468014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('168', '1383228763088', '1383228763419', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('169', '1383228935012', '1383228935025', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('170', '1383229235010', '1383229235017', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('171', '1383229535009', '1383229535017', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('172', '1383229835007', '1383229835014', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('173', '1383230135009', '1383230135016', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('174', '1383230435015', '1383230435028', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, null);
INSERT INTO `qrtz_log` VALUES ('65536', '1384268907303', '1384268907888', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65537', '1384268907298', '1384268907869', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65538', '1384268918007', '1384268918017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65539', '1384268925007', '1384268925017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65540', '1384268932006', '1384268932020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65541', '1384268939006', '1384268939037', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65542', '1384268946007', '1384268946037', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65543', '1384268953007', '1384268953020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65544', '1384268960008', '1384268960020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65545', '1384268967017', '1384268967086', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65546', '1384268974006', '1384268974028', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65547', '1384268981007', '1384268981020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65548', '1384268988006', '1384268988015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65549', '1384268995007', '1384268995021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65550', '1384269002006', '1384269002015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65551', '1384269009007', '1384269009016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65552', '1384269016011', '1384269016030', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65553', '1384269016007', '1384269016038', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65554', '1384269023006', '1384269023016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65555', '1384269030008', '1384269030034', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65556', '1384269037005', '1384269037017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65557', '1384269044007', '1384269044020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65558', '1384269051007', '1384269051017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65559', '1384269058006', '1384269058017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65560', '1384269065007', '1384269065017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65561', '1384269072006', '1384269072016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65562', '1384269079006', '1384269079018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65563', '1384269086006', '1384269086016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65564', '1384269093005', '1384269093018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65565', '1384269100007', '1384269100016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65566', '1384269107006', '1384269107023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65567', '1384269114005', '1384269114014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65568', '1384269121006', '1384269121018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65569', '1384269128006', '1384269128024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65570', '1384269135006', '1384269135017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65571', '1384269142005', '1384269142016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65572', '1384269149007', '1384269149027', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65573', '1384269156006', '1384269156018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65574', '1384269163005', '1384269163017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65575', '1384269170006', '1384269170015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65576', '1384269177005', '1384269177015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65577', '1384269184006', '1384269184016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65578', '1384269191007', '1384269191024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65579', '1384269198006', '1384269198020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65580', '1384269205006', '1384269205026', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65581', '1384269212005', '1384269212015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65582', '1384269219007', '1384269219027', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65583', '1384269226007', '1384269226019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65584', '1384269233007', '1384269233018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65585', '1384269240006', '1384269240016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65586', '1384269247006', '1384269247026', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65587', '1384269254014', '1384269254023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65588', '1384269261007', '1384269261024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65589', '1384269268005', '1384269268026', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65590', '1384269275006', '1384269275020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65591', '1384269282006', '1384269282016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65592', '1384269289005', '1384269289017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65593', '1384269296007', '1384269296042', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65594', '1384269303005', '1384269303017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65595', '1384269310006', '1384269310016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65596', '1384269317010', '1384269317019', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65597', '1384269317005', '1384269317030', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65598', '1384269324005', '1384269324018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65599', '1384269331006', '1384269331017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65600', '1384269338005', '1384269338015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65601', '1384269345006', '1384269345018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65602', '1384269352005', '1384269352014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65603', '1384269359006', '1384269359020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65604', '1384269366006', '1384269366016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65605', '1384269373005', '1384269373014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65606', '1384269380006', '1384269380019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65607', '1384269387005', '1384269387014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65608', '1384269394005', '1384269394019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65609', '1384269401006', '1384269401019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65610', '1384269408005', '1384269408019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65611', '1384269415006', '1384269415016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65612', '1384269422006', '1384269422036', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65613', '1384269429005', '1384269429016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65614', '1384269436006', '1384269436017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65615', '1384269443007', '1384269443018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65616', '1384269450006', '1384269450019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65617', '1384269457005', '1384269457016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65618', '1384269464005', '1384269464015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65619', '1384269471006', '1384269471017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65620', '1384269478005', '1384269478015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65621', '1384269485007', '1384269485015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65622', '1384269492005', '1384269492016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65623', '1384269499005', '1384269499014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65624', '1384269506006', '1384269506017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65625', '1384269513005', '1384269513014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65626', '1384269520006', '1384269520017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65627', '1384269527006', '1384269527015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65628', '1384269534005', '1384269534016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65629', '1384269541006', '1384269541017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65630', '1384269548006', '1384269548014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65631', '1384269555006', '1384269555015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65632', '1384269562005', '1384269562017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65633', '1384269569006', '1384269569017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65634', '1384269576005', '1384269576016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65635', '1384269583005', '1384269583015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65636', '1384269590006', '1384269590017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65637', '1384269597005', '1384269597014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65638', '1384269604005', '1384269604018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65639', '1384269611005', '1384269611017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65640', '1384269618005', '1384269618029', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65641', '1384269618010', '1384269618035', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65642', '1384269625006', '1384269625015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65643', '1384269632005', '1384269632017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65644', '1384269639006', '1384269639016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65645', '1384269646005', '1384269646017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65646', '1384269653006', '1384269653029', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65647', '1384269660007', '1384269660030', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65648', '1384269667005', '1384269667016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65649', '1384269674006', '1384269674016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65650', '1384269681005', '1384269681012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65651', '1384269688007', '1384269688031', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65652', '1384269695006', '1384269695014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65653', '1384269702005', '1384269702016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65654', '1384269709006', '1384269709016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65655', '1384269716005', '1384269716014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65656', '1384269723005', '1384269723018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65657', '1384269730006', '1384269730015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65658', '1384269737005', '1384269737020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65659', '1384269744006', '1384269744018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65660', '1384269751005', '1384269751015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65661', '1384269758006', '1384269758015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65662', '1384269765006', '1384269765017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65663', '1384269772005', '1384269772017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65664', '1384269779007', '1384269779018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65665', '1384269786005', '1384269786013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65666', '1384269793005', '1384269793025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65667', '1384269800010', '1384269800021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65668', '1384269807005', '1384269807019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65669', '1384269814006', '1384269814017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65670', '1384269821006', '1384269821016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65671', '1384269828005', '1384269828016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65672', '1384269835006', '1384269835014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65673', '1384269842005', '1384269842016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65674', '1384269849007', '1384269849019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65675', '1384269856005', '1384269856017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65676', '1384269863006', '1384269863014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65677', '1384269870006', '1384269870015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65678', '1384269877009', '1384269877021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65679', '1384269884006', '1384269884016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('65680', '1384269891005', '1384269891016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98304', '1384269955427', '1384269955845', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98305', '1384269955509', '1384269955843', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98306', '1384269955555', '1384269955848', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98307', '1384269955490', '1384269955847', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98308', '1384269955419', '1384269955845', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98309', '1384269955924', '1384269955934', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98310', '1384269955945', '1384269955964', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98311', '1384269955996', '1384269956004', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98312', '1384269956062', '1384269956099', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98313', '1384269956025', '1384269956124', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98314', '1384269961006', '1384269961016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98315', '1384269968005', '1384269968013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98316', '1384269975006', '1384269975026', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98317', '1384269982006', '1384269982014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98318', '1384269989008', '1384269989016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98319', '1384269996005', '1384269996016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98320', '1384270003006', '1384270003015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98321', '1384270010007', '1384270010015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98322', '1384270017005', '1384270017018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98323', '1384270024006', '1384270024017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98324', '1384270031005', '1384270031014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98325', '1384270038007', '1384270038031', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('98326', '1384270045006', '1384270045015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('131072', '1384270129014', '1384270129160', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('131073', '1384270136008', '1384270136051', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('131074', '1384270143007', '1384270143031', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('131075', '1384270150007', '1384270150016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('131076', '1384270157005', '1384270157016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('131077', '1384270164006', '1384270164015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('131078', '1384270171005', '1384270171016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('131079', '1384270178005', '1384270178014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('163840', '1384319290010', '1384319290410', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('163841', '1384319290002', '1384319290410', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('163842', '1384319297006', '1384319297015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('163843', '1384319304005', '1384319304015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('163844', '1384319311007', '1384319311016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('163845', '1384319318006', '1384319318018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('163846', '1384319325006', '1384319325030', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('163847', '1384319332006', '1384319332016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('163848', '1384319339005', '1384319339018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('163849', '1384319346006', '1384319346015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('163850', '1384319353005', '1384319353017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('163851', '1384319360005', '1384319360022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('163852', '1384319367006', '1384319367015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('163853', '1384319374005', '1384319374022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('196608', '1384324956016', '1384324956445', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('196609', '1384324956023', '1384324956445', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('196610', '1384324967008', '1384324967022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('196611', '1384324974005', '1384324974015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('196612', '1384324981011', '1384324981049', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('196613', '1384324988005', '1384324988016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('196614', '1384324995006', '1384324995016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('196615', '1384325002005', '1384325002019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('196616', '1384325009005', '1384325009019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('196617', '1384325016024', '1384325016077', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('196618', '1384325023020', '1384325023133', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('196619', '1384325030006', '1384325030018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('196620', '1384325037012', '1384325037038', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('196621', '1384325044005', '1384325044022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('196622', '1384325051006', '1384325051016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('229376', '1384325750098', '1384325750511', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('229377', '1384325750105', '1384325750507', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('229378', '1384325758007', '1384325758027', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('262144', '1384331916002', '1384331916326', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('262145', '1384331916009', '1384331916326', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('262146', '1384331925007', '1384331925081', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('262147', '1384331932007', '1384331932021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('262148', '1384331939007', '1384331939017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('262149', '1384331946005', '1384331946018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('262150', '1384331953007', '1384331953016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('262151', '1384331960006', '1384331960017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('262152', '1384331967005', '1384331967017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('262153', '1384331974008', '1384331974020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('262154', '1384331981006', '1384331981014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('262155', '1384331988009', '1384331988035', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('262156', '1384331995007', '1384331995041', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('262157', '1384332002008', '1384332002029', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('294912', '1384332089148', '1384332089407', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('294913', '1384332093008', '1384332093018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('294914', '1384332100007', '1384332100023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327680', '1384398660332', '1384398660720', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327681', '1384398660323', '1384398660709', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327682', '1384398670006', '1384398670013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327683', '1384398677007', '1384398677023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327684', '1384398684009', '1384398684018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327685', '1384398691006', '1384398691014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327686', '1384398698009', '1384398698230', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327687', '1384398705030', '1384398705042', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327688', '1384398712007', '1384398712030', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327689', '1384398719005', '1384398719015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327690', '1384398726007', '1384398726021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327691', '1384398733012', '1384398733028', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327692', '1384398740009', '1384398740017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327693', '1384398747007', '1384398747029', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327694', '1384398754009', '1384398754016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327695', '1384398761008', '1384398761016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327696', '1384398768009', '1384398768036', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327697', '1384398775006', '1384398775014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327698', '1384398782012', '1384398782022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327699', '1384398789010', '1384398789030', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327700', '1384398796007', '1384398796014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327701', '1384398803008', '1384398803017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327702', '1384398810008', '1384398810022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327703', '1384398817007', '1384398817017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327704', '1384398824006', '1384398824013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327705', '1384398831006', '1384398831017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327706', '1384398838009', '1384398838020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327707', '1384398845005', '1384398845015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327708', '1384398852008', '1384398852046', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327709', '1384398859006', '1384398859013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327710', '1384398866007', '1384398866027', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327711', '1384398873009', '1384398873023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327712', '1384398880006', '1384398880022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327713', '1384398887006', '1384398887015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327714', '1384398894007', '1384398894020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327715', '1384398901006', '1384398901017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327716', '1384398908006', '1384398908021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327717', '1384398915007', '1384398915022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327718', '1384398915016', '1384398915049', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327719', '1384398922007', '1384398922020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327720', '1384398929006', '1384398929021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327721', '1384398936007', '1384398936023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327722', '1384398943006', '1384398943015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327723', '1384398950006', '1384398950017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327724', '1384398957009', '1384398957019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327725', '1384398964006', '1384398964018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327726', '1384398971006', '1384398971017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327727', '1384398978008', '1384398978016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327728', '1384398985005', '1384398985017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327729', '1384398992008', '1384398992016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327730', '1384398999019', '1384398999033', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327731', '1384399006006', '1384399006018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327732', '1384399013013', '1384399013022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327733', '1384399020006', '1384399020022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327734', '1384399027011', '1384399027019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327735', '1384399034006', '1384399034015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327736', '1384399041006', '1384399041026', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327737', '1384399048009', '1384399048016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327738', '1384399055008', '1384399055019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327739', '1384399062007', '1384399062015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327740', '1384399069006', '1384399069017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327741', '1384399076007', '1384399076016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327742', '1384399083007', '1384399083034', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327743', '1384399090007', '1384399090017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327744', '1384399097006', '1384399097013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327745', '1384399104008', '1384399104016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327746', '1384399111006', '1384399111022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327747', '1384399118006', '1384399118016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327748', '1384399125008', '1384399125018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327749', '1384399132007', '1384399132014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327750', '1384399139006', '1384399139016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327751', '1384399146010', '1384399146025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327752', '1384399153007', '1384399153015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327753', '1384399160010', '1384399160040', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327754', '1384399167011', '1384399167018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327755', '1384399174006', '1384399174013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327756', '1384399181006', '1384399181015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327757', '1384399188007', '1384399188024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327758', '1384399195005', '1384399195032', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327759', '1384399202008', '1384399202014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327760', '1384399209007', '1384399209017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327761', '1384399216010', '1384399216018', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327762', '1384399216006', '1384399216018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327763', '1384399223007', '1384399223015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327764', '1384399230007', '1384399230016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327765', '1384399237006', '1384399237017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327766', '1384399244007', '1384399244015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327767', '1384399251005', '1384399251023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327768', '1384399258007', '1384399258015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327769', '1384399265005', '1384399265012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327770', '1384399272007', '1384399272014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327771', '1384399279006', '1384399279013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327772', '1384399286007', '1384399286024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327773', '1384399293006', '1384399293037', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327774', '1384399300007', '1384399300014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327775', '1384399307006', '1384399307015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327776', '1384399314007', '1384399314027', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327777', '1384399321007', '1384399321019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327778', '1384399328007', '1384399328017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327779', '1384399335005', '1384399335019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327780', '1384399342006', '1384399342016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327781', '1384399349006', '1384399349020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327782', '1384399356006', '1384399356053', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327783', '1384399363007', '1384399363020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327784', '1384399370005', '1384399370012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327785', '1384399377008', '1384399377017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327786', '1384399384010', '1384399384021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327787', '1384399391007', '1384399391017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327788', '1384399398008', '1384399398024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327789', '1384399405005', '1384399405012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327790', '1384399412007', '1384399412014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327791', '1384399419006', '1384399419021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327792', '1384399426005', '1384399426017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327793', '1384399433006', '1384399433016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327794', '1384399440005', '1384399440018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327795', '1384399447008', '1384399447024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327796', '1384399454005', '1384399454011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327797', '1384399461005', '1384399461013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327798', '1384399468008', '1384399468021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327799', '1384399475005', '1384399475013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327800', '1384399482006', '1384399482016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327801', '1384399489005', '1384399489013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327802', '1384399496006', '1384399496017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327803', '1384399503005', '1384399503019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327804', '1384399510005', '1384399510012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327805', '1384399517007', '1384399517019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327806', '1384399517011', '1384399517026', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327807', '1384399524006', '1384399524025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327808', '1384399531005', '1384399531013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327809', '1384399538014', '1384399538038', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('327810', '1384399545006', '1384399545017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360448', '1384487326170', '1384487326597', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360449', '1384487326181', '1384487326597', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360450', '1384487339009', '1384487339022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360451', '1384487346006', '1384487346022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360452', '1384487353007', '1384487353017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360453', '1384487360006', '1384487360016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360454', '1384487367007', '1384487367016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360455', '1384487374007', '1384487374018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360456', '1384487381005', '1384487381014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360457', '1384487388006', '1384487388017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360458', '1384487395005', '1384487395015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360459', '1384487402006', '1384487402015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360460', '1384487409007', '1384487409020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360461', '1384487416005', '1384487416025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360462', '1384487416010', '1384487416046', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360463', '1384487423007', '1384487423015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360464', '1384487430007', '1384487430025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360465', '1384487437006', '1384487437017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360466', '1384487444006', '1384487444021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360467', '1384487451006', '1384487451025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360468', '1384487458007', '1384487458017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360469', '1384487465005', '1384487465018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360470', '1384487472005', '1384487472023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360471', '1384487479006', '1384487479016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360472', '1384487486005', '1384487486019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360473', '1384487493006', '1384487493026', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360474', '1384487500006', '1384487500018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360475', '1384487507005', '1384487507019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360476', '1384487514006', '1384487514024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360477', '1384487521005', '1384487521017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360478', '1384487528006', '1384487528021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360479', '1384487535005', '1384487535021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360480', '1384487542005', '1384487542019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360481', '1384487549006', '1384487549019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360482', '1384487556005', '1384487556016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360483', '1384487563006', '1384487563020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360484', '1384487570005', '1384487570030', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360485', '1384487577005', '1384487577016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360486', '1384487584006', '1384487584018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360487', '1384487591006', '1384487591036', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360488', '1384487598007', '1384487598017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360489', '1384487605005', '1384487605015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360490', '1384487612005', '1384487612018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360491', '1384487619006', '1384487619025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360492', '1384487626009', '1384487626031', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360493', '1384487633007', '1384487633019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360494', '1384487640006', '1384487640021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360495', '1384487647005', '1384487647014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360496', '1384487654006', '1384487654016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360497', '1384487661005', '1384487661019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360498', '1384487668111', '1384487668133', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360499', '1384487675012', '1384487675021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360500', '1384487682005', '1384487682025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360501', '1384487689006', '1384487689018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360502', '1384487696005', '1384487696014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360503', '1384487703006', '1384487703016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360504', '1384487710005', '1384487710013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360505', '1384487717006', '1384487717025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360506', '1384487717011', '1384487717022', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360507', '1384487724006', '1384487724026', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360508', '1384487731007', '1384487731017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360509', '1384487738007', '1384487738021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360510', '1384487745006', '1384487745017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360511', '1384487752005', '1384487752015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360512', '1384487759006', '1384487759019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360513', '1384487766005', '1384487766015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360514', '1384487773006', '1384487773016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360515', '1384487780005', '1384487780016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360516', '1384487787005', '1384487787014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360517', '1384487794006', '1384487794018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360518', '1384487801005', '1384487801015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360519', '1384487808006', '1384487808017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360520', '1384487815005', '1384487815016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360521', '1384487822008', '1384487822036', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360522', '1384487829006', '1384487829018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360523', '1384487836005', '1384487836017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360524', '1384487843006', '1384487843013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360525', '1384487850013', '1384487850024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360526', '1384487857005', '1384487857019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360527', '1384487864006', '1384487864015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360528', '1384487871005', '1384487871016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360529', '1384487878006', '1384487878017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360530', '1384487885005', '1384487885013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360531', '1384487892005', '1384487892015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360532', '1384487899006', '1384487899015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360533', '1384487906005', '1384487906014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360534', '1384487913006', '1384487913016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360535', '1384487920005', '1384487920015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360536', '1384487927005', '1384487927016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360537', '1384487934006', '1384487934018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360538', '1384487941005', '1384487941013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360539', '1384487948006', '1384487948018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360540', '1384487955005', '1384487955014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360541', '1384487962005', '1384487962015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360542', '1384487969006', '1384487969015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360543', '1384487976005', '1384487976015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360544', '1384487983006', '1384487983019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360545', '1384487990005', '1384487990016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360546', '1384487997005', '1384487997017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360547', '1384488004005', '1384488004015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360548', '1384488011005', '1384488011016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360549', '1384488018010', '1384488018019', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360550', '1384488018006', '1384488018019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360551', '1384488025005', '1384488025021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360552', '1384488032005', '1384488032017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360553', '1384488039015', '1384488039034', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360554', '1384488046005', '1384488046038', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360555', '1384488053007', '1384488053016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360556', '1384488060006', '1384488060016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360557', '1384488067006', '1384488067024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360558', '1384488074006', '1384488074027', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360559', '1384488081005', '1384488081145', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360560', '1384488088006', '1384488088029', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360561', '1384488095005', '1384488095015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360562', '1384488102005', '1384488102022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360563', '1384488109006', '1384488109027', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360564', '1384488116005', '1384488116014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360565', '1384488123007', '1384488123017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360566', '1384488130005', '1384488130017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360567', '1384488137005', '1384488137013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360568', '1384488144006', '1384488144015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360569', '1384488151005', '1384488151016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360570', '1384488158006', '1384488158013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360571', '1384488165005', '1384488165020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360572', '1384488172005', '1384488172013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360573', '1384488179006', '1384488179015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360574', '1384488186006', '1384488186014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360575', '1384488193006', '1384488193017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360576', '1384488200004', '1384488200015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360577', '1384488207005', '1384488207020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360578', '1384488214006', '1384488214015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360579', '1384488221006', '1384488221018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360580', '1384488228006', '1384488228022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360581', '1384488235005', '1384488235013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360582', '1384488242005', '1384488242016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360583', '1384488249006', '1384488249015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360584', '1384488256005', '1384488256014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360585', '1384488263006', '1384488263017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360586', '1384488270005', '1384488270016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360587', '1384488277007', '1384488277018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360588', '1384488284006', '1384488284034', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360589', '1384488291005', '1384488291014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360590', '1384488298008', '1384488298017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360591', '1384488305005', '1384488305029', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360592', '1384488312009', '1384488312018', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360593', '1384488312005', '1384488312024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360594', '1384488319007', '1384488319020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360595', '1384488326005', '1384488326013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360596', '1384488333005', '1384488333015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360597', '1384488340005', '1384488340018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360598', '1384488347006', '1384488347023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360599', '1384488354005', '1384488354016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360600', '1384488361005', '1384488361017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360601', '1384488368006', '1384488368033', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360602', '1384488375005', '1384488375013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360603', '1384488382005', '1384488382018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360604', '1384488389006', '1384488389016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360605', '1384488396005', '1384488396017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360606', '1384488403006', '1384488403015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360607', '1384488410004', '1384488410014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360608', '1384488417006', '1384488417078', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360609', '1384488424006', '1384488424013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360610', '1384488431017', '1384488431037', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360611', '1384488438006', '1384488438014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360612', '1384488445005', '1384488445016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360613', '1384488452004', '1384488452015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360614', '1384488459007', '1384488459018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360615', '1384488466005', '1384488466014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360616', '1384488473005', '1384488473020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360617', '1384488480008', '1384488480020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360618', '1384488487005', '1384488487018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360619', '1384488494006', '1384488494020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360620', '1384488501006', '1384488501017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360621', '1384488508006', '1384488508016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360622', '1384488515005', '1384488515014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360623', '1384488522005', '1384488522022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360624', '1384488529005', '1384488529014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360625', '1384488536004', '1384488536014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360626', '1384488543005', '1384488543015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360627', '1384488550005', '1384488550014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360628', '1384488557005', '1384488557016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360629', '1384488564006', '1384488564014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360630', '1384488571005', '1384488571017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360631', '1384488578008', '1384488578017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360632', '1384488585004', '1384488585013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360633', '1384488592004', '1384488592015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360634', '1384488599005', '1384488599014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360635', '1384488606004', '1384488606012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360636', '1384488613005', '1384488613018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360637', '1384488613010', '1384488613022', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360638', '1384488620004', '1384488620012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360639', '1384488627004', '1384488627013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360640', '1384488634006', '1384488634022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360641', '1384488641004', '1384488641011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360642', '1384488648006', '1384488648018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360643', '1384488655005', '1384488655016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360644', '1384488662005', '1384488662017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360645', '1384488669006', '1384488669013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360646', '1384488676006', '1384488676015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360647', '1384488683006', '1384488683027', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360648', '1384488690004', '1384488690029', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360649', '1384488697005', '1384488697016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360650', '1384488704005', '1384488704016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360651', '1384488711004', '1384488711016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360652', '1384488718007', '1384488718019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360653', '1384488725004', '1384488725014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360654', '1384488732004', '1384488732015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360655', '1384488739007', '1384488739014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360656', '1384488746004', '1384488746015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360657', '1384488753006', '1384488753015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360658', '1384488760004', '1384488760015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360659', '1384488767004', '1384488767015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360660', '1384488774006', '1384488774016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360661', '1384488781005', '1384488781013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360662', '1384488788005', '1384488788014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360663', '1384488795004', '1384488795014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360664', '1384488802005', '1384488802028', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360665', '1384488809007', '1384488809270', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360666', '1384488816005', '1384488816027', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360667', '1384488823005', '1384488823013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360668', '1384488830004', '1384488830015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360669', '1384488837005', '1384488837038', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360670', '1384488844005', '1384488844013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360671', '1384488851004', '1384488851015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360672', '1384488858005', '1384488858015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360673', '1384488865004', '1384488865014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360674', '1384488872006', '1384488872018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360675', '1384488879005', '1384488879016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360676', '1384488886004', '1384488886016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360677', '1384488893005', '1384488893016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360678', '1384488900005', '1384488900018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360679', '1384488907004', '1384488907015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360680', '1384488914005', '1384488914021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360681', '1384488914009', '1384488914022', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360682', '1384488921006', '1384488921018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360683', '1384488928005', '1384488928015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360684', '1384488935004', '1384488935020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360685', '1384488942004', '1384488942013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360686', '1384488949006', '1384488949016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360687', '1384488956004', '1384488956013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360688', '1384488963005', '1384488963013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360689', '1384488970005', '1384488970014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360690', '1384488977004', '1384488977016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360691', '1384488984007', '1384488984015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360692', '1384488991005', '1384488991024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360693', '1384488998005', '1384488998015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360694', '1384489005004', '1384489005015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360695', '1384489012005', '1384489012016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360696', '1384489019005', '1384489019031', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360697', '1384489026004', '1384489026012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360698', '1384489033005', '1384489033014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360699', '1384489040007', '1384489040020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360700', '1384489047004', '1384489047014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360701', '1384489054005', '1384489054017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360702', '1384489061005', '1384489061017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360703', '1384489068005', '1384489068015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360704', '1384489075004', '1384489075016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360705', '1384489082004', '1384489082013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360706', '1384489089005', '1384489089015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360707', '1384489096004', '1384489096014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360708', '1384489103005', '1384489103016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360709', '1384489110004', '1384489110012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360710', '1384489117004', '1384489117015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360711', '1384489124005', '1384489124016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360712', '1384489131004', '1384489131016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360713', '1384489138005', '1384489138013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360714', '1384489145004', '1384489145011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360715', '1384489152004', '1384489152013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360716', '1384489159005', '1384489159012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360717', '1384489166004', '1384489166012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360718', '1384489173005', '1384489173014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360719', '1384489180004', '1384489180013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360720', '1384489187004', '1384489187013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360721', '1384489194006', '1384489194014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360722', '1384489201004', '1384489201011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360723', '1384489208005', '1384489208013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360724', '1384489215005', '1384489215019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360725', '1384489215009', '1384489215022', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360726', '1384489222004', '1384489222011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360727', '1384489229005', '1384489229012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360728', '1384489236004', '1384489236014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360729', '1384489243006', '1384489243023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360730', '1384489250005', '1384489250013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360731', '1384489257005', '1384489257015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360732', '1384489264004', '1384489264013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360733', '1384489271005', '1384489271014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360734', '1384489278006', '1384489278017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360735', '1384489285004', '1384489285014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360736', '1384489292006', '1384489292016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360737', '1384489299005', '1384489299014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360738', '1384489306005', '1384489306013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360739', '1384489313005', '1384489313014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360740', '1384489320004', '1384489320015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360741', '1384489327005', '1384489327015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360742', '1384489334004', '1384489334014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360743', '1384489341004', '1384489341028', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360744', '1384489348005', '1384489348015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360745', '1384489355005', '1384489355015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360746', '1384489362006', '1384489362015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360747', '1384489369005', '1384489369012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360748', '1384489376005', '1384489376016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360749', '1384489383005', '1384489383013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360750', '1384489390004', '1384489390011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360751', '1384489397005', '1384489397023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360752', '1384489404004', '1384489404012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360753', '1384489411005', '1384489411014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360754', '1384489418005', '1384489418013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360755', '1384489425004', '1384489425014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360756', '1384489432005', '1384489432019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360757', '1384489439006', '1384489439015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360758', '1384489446004', '1384489446013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360759', '1384489453005', '1384489453014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360760', '1384489460004', '1384489460013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360761', '1384489467005', '1384489467014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360762', '1384489474005', '1384489474016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360763', '1384489481004', '1384489481015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360764', '1384489488006', '1384489488015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360765', '1384489495004', '1384489495014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360766', '1384489502005', '1384489502014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360767', '1384489509004', '1384489509013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360768', '1384489516008', '1384489516018', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360769', '1384489516004', '1384489516024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360770', '1384489523005', '1384489523015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360771', '1384489530005', '1384489530014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360772', '1384489537005', '1384489537015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360773', '1384489544005', '1384489544013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360774', '1384489551004', '1384489551016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360775', '1384489558005', '1384489558013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360776', '1384489565004', '1384489565016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360777', '1384489572005', '1384489572026', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360778', '1384489579005', '1384489579013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360779', '1384489586005', '1384489586015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360780', '1384489593005', '1384489593014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360781', '1384489600004', '1384489600012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360782', '1384489607006', '1384489607015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360783', '1384489614004', '1384489614014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360784', '1384489621004', '1384489621013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360785', '1384489628005', '1384489628013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360786', '1384489635005', '1384489635029', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360787', '1384489642006', '1384489642014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360788', '1384489649004', '1384489649014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360789', '1384489656004', '1384489656012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360790', '1384489663005', '1384489663015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360791', '1384489670005', '1384489670017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360792', '1384489677006', '1384489677015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360793', '1384489684004', '1384489684012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360794', '1384489691005', '1384489691015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360795', '1384489698005', '1384489698015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360796', '1384489705004', '1384489705012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360797', '1384489712006', '1384489712016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360798', '1384489719006', '1384489719015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360799', '1384489726005', '1384489726015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360800', '1384489733009', '1384489733019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360801', '1384489740004', '1384489740015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360802', '1384489747007', '1384489747016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360803', '1384489754005', '1384489754015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360804', '1384489761004', '1384489761014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360805', '1384489768005', '1384489768015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360806', '1384489775004', '1384489775014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360807', '1384489782005', '1384489782020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360808', '1384489789004', '1384489789012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360809', '1384489796008', '1384489796018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360810', '1384489803005', '1384489803025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360811', '1384489810004', '1384489810016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360812', '1384489817005', '1384489817018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360813', '1384489817010', '1384489817021', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360814', '1384489824004', '1384489824013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360815', '1384489831006', '1384489831015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360816', '1384489838007', '1384489838022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360817', '1384489845005', '1384489845067', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360818', '1384489852006', '1384489852016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360819', '1384489859005', '1384489859017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360820', '1384489866004', '1384489866016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360821', '1384489873005', '1384489873019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360822', '1384489880004', '1384489880013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360823', '1384489887005', '1384489887020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360824', '1384489894004', '1384489894026', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360825', '1384489901005', '1384489901015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360826', '1384489908006', '1384489908017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360827', '1384489915004', '1384489915013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360828', '1384489922005', '1384489922017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360829', '1384489929006', '1384489929023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360830', '1384489936004', '1384489936015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360831', '1384489943005', '1384489943013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360832', '1384489950008', '1384489950017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360833', '1384489957006', '1384489957015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360834', '1384489964004', '1384489964015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360835', '1384489971005', '1384489971014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360836', '1384489978020', '1384489978030', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360837', '1384489985004', '1384489985016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360838', '1384489992006', '1384489992029', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360839', '1384489999006', '1384489999033', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360840', '1384490006005', '1384490006036', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360841', '1384490013009', '1384490013020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360842', '1384490020005', '1384490020016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360843', '1384490027006', '1384490027016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360844', '1384490034004', '1384490034013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360845', '1384490041004', '1384490041013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360846', '1384490048006', '1384490048017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360847', '1384490055004', '1384490055015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360848', '1384490062006', '1384490062018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360849', '1384490069005', '1384490069022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360850', '1384490076004', '1384490076013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360851', '1384490083009', '1384490083025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360852', '1384490090032', '1384490090052', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360853', '1384490097006', '1384490097016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360854', '1384490104009', '1384490104020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360855', '1384490111004', '1384490111014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360856', '1384490118009', '1384490118020', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360857', '1384490118005', '1384490118026', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360858', '1384490125005', '1384490125013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360859', '1384490132005', '1384490132016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360860', '1384490139004', '1384490139014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360861', '1384490146004', '1384490146013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360862', '1384490153005', '1384490153015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360863', '1384490160004', '1384490160015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360864', '1384490167005', '1384490167013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360865', '1384490174004', '1384490174011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360866', '1384490181004', '1384490181013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360867', '1384490188005', '1384490188027', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360868', '1384490195004', '1384490195013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360869', '1384490202005', '1384490202014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360870', '1384490209005', '1384490209013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360871', '1384490216004', '1384490216018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360872', '1384490223008', '1384490223031', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360873', '1384490230004', '1384490230014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360874', '1384490237006', '1384490237014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360875', '1384490244004', '1384490244014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360876', '1384490251005', '1384490251016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360877', '1384490258006', '1384490258016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360878', '1384490265004', '1384490265012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360879', '1384490272006', '1384490272014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360880', '1384490279005', '1384490279040', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360881', '1384490286005', '1384490286017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360882', '1384490293007', '1384490293018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360883', '1384490300004', '1384490300012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360884', '1384490307005', '1384490307014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360885', '1384490314006', '1384490314017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360886', '1384490321006', '1384490321022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360887', '1384490328005', '1384490328014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360888', '1384490335005', '1384490335013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360889', '1384490342007', '1384490342022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360890', '1384490349006', '1384490349024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360891', '1384490356004', '1384490356015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360892', '1384490363006', '1384490363016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360893', '1384490370005', '1384490370015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360894', '1384490377004', '1384490377018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360895', '1384490384005', '1384490384014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360896', '1384490391005', '1384490391016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360897', '1384490398006', '1384490398017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360898', '1384490405005', '1384490405015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360899', '1384490412005', '1384490412020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360900', '1384490412008', '1384490412028', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360901', '1384490419013', '1384490419041', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360902', '1384490426005', '1384490426015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360903', '1384490433006', '1384490433016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360904', '1384490440004', '1384490440013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360905', '1384490447005', '1384490447015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360906', '1384490454005', '1384490454019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360907', '1384490461005', '1384490461014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360908', '1384490468005', '1384490468013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360909', '1384490475004', '1384490475011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360910', '1384490482005', '1384490482011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360911', '1384490489005', '1384490489012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360912', '1384490496004', '1384490496012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360913', '1384490503005', '1384490503015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360914', '1384490510004', '1384490510013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360915', '1384490517005', '1384490517021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360916', '1384490524006', '1384490524022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360917', '1384490531004', '1384490531014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360918', '1384490538006', '1384490538016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360919', '1384490545004', '1384490545021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360920', '1384490552005', '1384490552020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360921', '1384490559006', '1384490559019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360922', '1384490566006', '1384490566040', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360923', '1384490573004', '1384490573016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360924', '1384490580004', '1384490580023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360925', '1384490587005', '1384490587015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360926', '1384490594004', '1384490594015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360927', '1384490601004', '1384490601015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360928', '1384490608005', '1384490608015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360929', '1384490615005', '1384490615013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360930', '1384490622006', '1384490622024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360931', '1384490629004', '1384490629014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360932', '1384490636004', '1384490636011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360933', '1384490643005', '1384490643013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360934', '1384490650004', '1384490650013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360935', '1384490657006', '1384490657014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360936', '1384490664004', '1384490664013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360937', '1384490671004', '1384490671019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360938', '1384490678005', '1384490678015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360939', '1384490685005', '1384490685019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360940', '1384490692006', '1384490692027', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360941', '1384490699004', '1384490699023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360942', '1384490706005', '1384490706042', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360943', '1384490713008', '1384490713030', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360944', '1384490713012', '1384490713032', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360945', '1384490720005', '1384490720016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360946', '1384490727006', '1384490727017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360947', '1384490734005', '1384490734014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360948', '1384490741004', '1384490741013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360949', '1384490748005', '1384490748015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360950', '1384490755005', '1384490755016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360951', '1384490762006', '1384490762017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360952', '1384490769005', '1384490769028', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360953', '1384490776008', '1384490776027', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360954', '1384490783005', '1384490783020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360955', '1384490790004', '1384490790028', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360956', '1384490797005', '1384490797021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360957', '1384490804004', '1384490804012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360958', '1384490811004', '1384490811014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360959', '1384490818005', '1384490818015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360960', '1384490825005', '1384490825017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360961', '1384490832006', '1384490832022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360962', '1384490839004', '1384490839015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360963', '1384490846004', '1384490846016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360964', '1384490853005', '1384490853029', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360965', '1384490860005', '1384490860014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360966', '1384490867005', '1384490867014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360967', '1384490874004', '1384490874013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360968', '1384490881004', '1384490881026', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360969', '1384490888005', '1384490888013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360970', '1384490895004', '1384490895013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360971', '1384490902005', '1384490902016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360972', '1384490909004', '1384490909013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360973', '1384490916004', '1384490916013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360974', '1384490923005', '1384490923016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360975', '1384490930004', '1384490930014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360976', '1384490937005', '1384490937014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360977', '1384490944009', '1384490944051', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360978', '1384490951005', '1384490951030', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360979', '1384490958008', '1384490958053', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360980', '1384490965004', '1384490965012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360981', '1384490972005', '1384490972014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360982', '1384490979006', '1384490979033', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360983', '1384490986007', '1384490986017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360984', '1384490993008', '1384490993022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360985', '1384491000011', '1384491000025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360986', '1384491007009', '1384491007027', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360987', '1384491014014', '1384491014024', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360988', '1384491014006', '1384491014027', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360989', '1384491021007', '1384491021020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360990', '1384491028006', '1384491028021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360991', '1384491035008', '1384491035022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360992', '1384491042009', '1384491042018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360993', '1384491049012', '1384491049024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360994', '1384491056005', '1384491056020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360995', '1384491063011', '1384491063024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360996', '1384491070020', '1384491070031', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360997', '1384491077005', '1384491077031', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360998', '1384491084007', '1384491084023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('360999', '1384491091008', '1384491091029', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361000', '1384491098009', '1384491098021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361001', '1384491105008', '1384491105024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361002', '1384491112013', '1384491112024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361003', '1384491119005', '1384491119029', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361004', '1384491126006', '1384491126029', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361005', '1384491133010', '1384491133022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361006', '1384491140008', '1384491140018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361007', '1384491147010', '1384491147023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361008', '1384491154004', '1384491154018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361009', '1384491161005', '1384491161021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361010', '1384491168005', '1384491168014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361011', '1384491175004', '1384491175012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361012', '1384491182005', '1384491182014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361013', '1384491189005', '1384491189016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361014', '1384491196004', '1384491196014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361015', '1384491203007', '1384491203015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361016', '1384491210004', '1384491210012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361017', '1384491217005', '1384491217014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361018', '1384491224004', '1384491224014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361019', '1384491231004', '1384491231014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361020', '1384491238005', '1384491238014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361021', '1384491245004', '1384491245013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361022', '1384491252005', '1384491252029', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361023', '1384491259005', '1384491259014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361024', '1384491266004', '1384491266013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361025', '1384491273005', '1384491273015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361026', '1384491280007', '1384491280019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361027', '1384491287005', '1384491287015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361028', '1384491294004', '1384491294016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361029', '1384491301004', '1384491301012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361030', '1384491308005', '1384491308015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361031', '1384491315004', '1384491315019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361032', '1384491315007', '1384491315021', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361033', '1384491322005', '1384491322012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361034', '1384491329004', '1384491329011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361035', '1384491336004', '1384491336012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361036', '1384491343024', '1384491343082', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361037', '1384491350006', '1384491350017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361038', '1384491357007', '1384491357018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361039', '1384491364004', '1384491364014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361040', '1384491371006', '1384491371027', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361041', '1384491378007', '1384491378025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361042', '1384491385004', '1384491385014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361043', '1384491392005', '1384491392014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361044', '1384491399004', '1384491399018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361045', '1384491406004', '1384491406015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361046', '1384491413005', '1384491413016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361047', '1384491420004', '1384491420030', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361048', '1384491427005', '1384491427013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361049', '1384491434005', '1384491434017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361050', '1384491441004', '1384491441016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361051', '1384491448005', '1384491448015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361052', '1384491455004', '1384491455019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361053', '1384491462006', '1384491462014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361054', '1384491469004', '1384491469017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361055', '1384491476005', '1384491476017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361056', '1384491483005', '1384491483014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361057', '1384491490005', '1384491490015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361058', '1384491497006', '1384491497017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361059', '1384491504006', '1384491504015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361060', '1384491511006', '1384491511016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361061', '1384491518006', '1384491518019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361062', '1384491525005', '1384491525014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361063', '1384491532004', '1384491532014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361064', '1384491539004', '1384491539015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361065', '1384491546004', '1384491546013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361066', '1384491553006', '1384491553016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361067', '1384491560004', '1384491560012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361068', '1384491567005', '1384491567013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361069', '1384491574005', '1384491574015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361070', '1384491581004', '1384491581013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361071', '1384491588005', '1384491588015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361072', '1384491595004', '1384491595013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361073', '1384491602005', '1384491602013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361074', '1384491609004', '1384491609013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361075', '1384491616007', '1384491616016', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361076', '1384491616004', '1384491616040', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361077', '1384491623005', '1384491623015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361078', '1384491630004', '1384491630013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361079', '1384491637005', '1384491637013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361080', '1384491644004', '1384491644013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361081', '1384491651004', '1384491651014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361082', '1384491658005', '1384491658017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361083', '1384491665007', '1384491665014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361084', '1384491672005', '1384491672014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361085', '1384491679005', '1384491679014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361086', '1384491686004', '1384491686013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361087', '1384491693005', '1384491693013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361088', '1384491700004', '1384491700012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361089', '1384491707005', '1384491707015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361090', '1384491714006', '1384491714014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361091', '1384491721006', '1384491721020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361092', '1384491728005', '1384491728024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361093', '1384491735004', '1384491735013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361094', '1384491742005', '1384491742015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361095', '1384491749004', '1384491749013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361096', '1384491756004', '1384491756013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361097', '1384491763005', '1384491763013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361098', '1384491770004', '1384491770012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361099', '1384491777005', '1384491777012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361100', '1384491784004', '1384491784011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361101', '1384491791005', '1384491791030', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361102', '1384491798007', '1384491798041', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361103', '1384491805004', '1384491805013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361104', '1384491812005', '1384491812016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361105', '1384491819005', '1384491819013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361106', '1384491826004', '1384491826014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361107', '1384491833005', '1384491833014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361108', '1384491840004', '1384491840015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361109', '1384491847005', '1384491847014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361110', '1384491854004', '1384491854011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361111', '1384491861005', '1384491861015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361112', '1384491868005', '1384491868014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361113', '1384491875004', '1384491875012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361114', '1384491882006', '1384491882128', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361115', '1384491889004', '1384491889014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361116', '1384491896004', '1384491896013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361117', '1384491903005', '1384491903014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361118', '1384491910004', '1384491910014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361119', '1384491917005', '1384491917018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361120', '1384491917008', '1384491917022', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361121', '1384491924004', '1384491924013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361122', '1384491931004', '1384491931013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361123', '1384491938005', '1384491938012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361124', '1384491945004', '1384491945013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361125', '1384491952005', '1384491952014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361126', '1384491959004', '1384491959013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361127', '1384491966004', '1384491966012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361128', '1384491973005', '1384491973015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361129', '1384491980004', '1384491980018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361130', '1384491987006', '1384491987015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361131', '1384491994004', '1384491994012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361132', '1384492001004', '1384492001011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361133', '1384492008005', '1384492008014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361134', '1384492015004', '1384492015013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361135', '1384492022005', '1384492022014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361136', '1384492029004', '1384492029014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361137', '1384492036004', '1384492036013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361138', '1384492043005', '1384492043014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361139', '1384492050004', '1384492050013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361140', '1384492057005', '1384492057013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361141', '1384492064004', '1384492064011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361142', '1384492071005', '1384492071014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361143', '1384492078005', '1384492078015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361144', '1384492085004', '1384492085012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361145', '1384492092005', '1384492092013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361146', '1384492099004', '1384492099012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361147', '1384492106004', '1384492106012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361148', '1384492113006', '1384492113016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361149', '1384492120004', '1384492120011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361150', '1384492127005', '1384492127014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361151', '1384492134004', '1384492134013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361152', '1384492141004', '1384492141011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361153', '1384492148005', '1384492148013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361154', '1384492155004', '1384492155011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361155', '1384492162005', '1384492162015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361156', '1384492169004', '1384492169013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361157', '1384492176004', '1384492176013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361158', '1384492183005', '1384492183017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361159', '1384492190004', '1384492190018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361160', '1384492197005', '1384492197015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361161', '1384492204004', '1384492204013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361162', '1384492211004', '1384492211014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361163', '1384492218011', '1384492218051', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361164', '1384492218006', '1384492218055', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361165', '1384492225004', '1384492225012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361166', '1384492232006', '1384492232016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361167', '1384492239004', '1384492239030', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361168', '1384492246004', '1384492246014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361169', '1384492253005', '1384492253013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361170', '1384492260004', '1384492260013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361171', '1384492267005', '1384492267021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361172', '1384492274004', '1384492274014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361173', '1384492281004', '1384492281012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361174', '1384492288006', '1384492288015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361175', '1384492295004', '1384492295015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361176', '1384492302005', '1384492302015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361177', '1384492309004', '1384492309019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361178', '1384492316004', '1384492316012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361179', '1384492323004', '1384492323013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361180', '1384492330004', '1384492330014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361181', '1384492337005', '1384492337011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361182', '1384492344004', '1384492344011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361183', '1384492351004', '1384492351011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361184', '1384492358005', '1384492358013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361185', '1384492365004', '1384492365012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361186', '1384492372005', '1384492372016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361187', '1384492379004', '1384492379011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361188', '1384492386004', '1384492386014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361189', '1384492393005', '1384492393014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361190', '1384492400004', '1384492400012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361191', '1384492407005', '1384492407012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361192', '1384492414004', '1384492414012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361193', '1384492421004', '1384492421017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361194', '1384492428005', '1384492428012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361195', '1384492435004', '1384492435020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361196', '1384492442005', '1384492442013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361197', '1384492449004', '1384492449014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361198', '1384492456004', '1384492456018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361199', '1384492463005', '1384492463014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361200', '1384492470004', '1384492470011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361201', '1384492477005', '1384492477015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361202', '1384492484004', '1384492484012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361203', '1384492491004', '1384492491012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361204', '1384492498005', '1384492498016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361205', '1384492505005', '1384492505013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361206', '1384492512008', '1384492512016', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361207', '1384492512005', '1384492512017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361208', '1384492519004', '1384492519012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361209', '1384492526004', '1384492526011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361210', '1384492533005', '1384492533014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361211', '1384492540004', '1384492540012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361212', '1384492547005', '1384492547012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361213', '1384492554003', '1384492554013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361214', '1384492561004', '1384492561011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361215', '1384492568005', '1384492568012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361216', '1384492575005', '1384492575015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361217', '1384492582005', '1384492582013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361218', '1384492589003', '1384492589019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361219', '1384492596004', '1384492596012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361220', '1384492603005', '1384492603013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361221', '1384492610003', '1384492610013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361222', '1384492617005', '1384492617013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361223', '1384492624004', '1384492624012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361224', '1384492631003', '1384492631012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361225', '1384492638005', '1384492638015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361226', '1384492645003', '1384492645013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361227', '1384492652004', '1384492652011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361228', '1384492659004', '1384492659013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361229', '1384492666004', '1384492666013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361230', '1384492673004', '1384492673011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361231', '1384492680004', '1384492680011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361232', '1384492687005', '1384492687013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361233', '1384492694004', '1384492694014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361234', '1384492701004', '1384492701012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361235', '1384492708005', '1384492708013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361236', '1384492715003', '1384492715014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361237', '1384492722005', '1384492722013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361238', '1384492729004', '1384492729012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361239', '1384492736004', '1384492736012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361240', '1384492743005', '1384492743012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361241', '1384492750004', '1384492750013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361242', '1384492757004', '1384492757011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361243', '1384492764004', '1384492764012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361244', '1384492771004', '1384492771013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361245', '1384492778008', '1384492778020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361246', '1384492785004', '1384492785012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361247', '1384492792005', '1384492792012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361248', '1384492799004', '1384492799012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361249', '1384492806004', '1384492806011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361250', '1384492813008', '1384492813034', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361251', '1384492813005', '1384492813017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361252', '1384492820004', '1384492820011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361253', '1384492827005', '1384492827015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361254', '1384492834004', '1384492834013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361255', '1384492841004', '1384492841012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361256', '1384492848006', '1384492848017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361257', '1384492855004', '1384492855013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361258', '1384492862005', '1384492862014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361259', '1384492869004', '1384492869013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361260', '1384492876004', '1384492876012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361261', '1384492883005', '1384492883012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361262', '1384492890004', '1384492890013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361263', '1384492897005', '1384492897012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361264', '1384492904004', '1384492904012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361265', '1384492911004', '1384492911023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361266', '1384492918005', '1384492918013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361267', '1384492925004', '1384492925012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361268', '1384492932005', '1384492932013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361269', '1384492939004', '1384492939012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361270', '1384492946004', '1384492946012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361271', '1384492953004', '1384492953024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361272', '1384492960004', '1384492960013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361273', '1384492967006', '1384492967016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361274', '1384492974004', '1384492974012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361275', '1384492981005', '1384492981016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361276', '1384492988004', '1384492988013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361277', '1384492995003', '1384492995015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361278', '1384493002005', '1384493002012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361279', '1384493009004', '1384493009012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361280', '1384493016005', '1384493016013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361281', '1384493023004', '1384493023013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361282', '1384493030004', '1384493030013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361283', '1384493037004', '1384493037013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361284', '1384493044004', '1384493044012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361285', '1384493051006', '1384493051013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361286', '1384493058003', '1384493058017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361287', '1384493065004', '1384493065011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361288', '1384493072005', '1384493072013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361289', '1384493079004', '1384493079012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361290', '1384493086005', '1384493086014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361291', '1384493093004', '1384493093013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361292', '1384493100004', '1384493100032', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361293', '1384493107004', '1384493107013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361294', '1384493114004', '1384493114017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361295', '1384493114007', '1384493114021', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361296', '1384493121005', '1384493121014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361297', '1384493128003', '1384493128012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361298', '1384493135003', '1384493135014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361299', '1384493142005', '1384493142013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361300', '1384493149003', '1384493149011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361301', '1384493156005', '1384493156014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361302', '1384493163004', '1384493163013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361303', '1384493170004', '1384493170011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361304', '1384493177005', '1384493177013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361305', '1384493184003', '1384493184020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361306', '1384493191004', '1384493191015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361307', '1384493198004', '1384493198013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361308', '1384493205004', '1384493205013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361309', '1384493212004', '1384493212013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361310', '1384493219004', '1384493219011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361311', '1384493226005', '1384493226013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361312', '1384493233003', '1384493233012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361313', '1384493240003', '1384493240012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361314', '1384493247005', '1384493247014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361315', '1384493254003', '1384493254012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361316', '1384493261005', '1384493261012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361317', '1384493268004', '1384493268019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361318', '1384493275004', '1384493275013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361319', '1384493282006', '1384493282014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361320', '1384493289004', '1384493289012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361321', '1384493296005', '1384493296014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361322', '1384493303004', '1384493303012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361323', '1384493310004', '1384493310012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361324', '1384493317004', '1384493317018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361325', '1384493324004', '1384493324014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361326', '1384493331004', '1384493331014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361327', '1384493338003', '1384493338011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361328', '1384493345003', '1384493345011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361329', '1384493352005', '1384493352012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361330', '1384493359003', '1384493359011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361331', '1384493366006', '1384493366016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361332', '1384493373004', '1384493373012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361333', '1384493380007', '1384493380016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361334', '1384493387004', '1384493387015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361335', '1384493394004', '1384493394013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361336', '1384493401005', '1384493401013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361337', '1384493408004', '1384493408013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361338', '1384493415006', '1384493415016', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361339', '1384493415003', '1384493415021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361340', '1384493422004', '1384493422013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361341', '1384493429004', '1384493429012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361342', '1384493436005', '1384493436013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361343', '1384493443004', '1384493443012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361344', '1384493450004', '1384493450013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361345', '1384493457005', '1384493457013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361346', '1384493464004', '1384493464011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361347', '1384493471005', '1384493471012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361348', '1384493478003', '1384493478015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361349', '1384493485004', '1384493485011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361350', '1384493492005', '1384493492021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361351', '1384493499003', '1384493499013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361352', '1384493506005', '1384493506012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361353', '1384493513004', '1384493513010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361354', '1384493520004', '1384493520013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361355', '1384493527004', '1384493527016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361356', '1384493534006', '1384493534035', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361357', '1384493541005', '1384493541012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361358', '1384493548013', '1384493548064', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361359', '1384493555003', '1384493555014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361360', '1384493562007', '1384493562017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361361', '1384493569003', '1384493569012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('361362', '1384493576089', '1384493576106', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393216', '1384496666104', '1384496666372', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393217', '1384496666110', '1384496666382', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393218', '1384496677007', '1384496677019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393219', '1384496684004', '1384496684014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393220', '1384496691005', '1384496691014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393221', '1384496698006', '1384496698018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393222', '1384496705006', '1384496705028', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393223', '1384496712010', '1384496712020', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393224', '1384496712006', '1384496712020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393225', '1384496719007', '1384496719040', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393226', '1384496726007', '1384496726019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393227', '1384496733005', '1384496733013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393228', '1384496740006', '1384496740014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393229', '1384496747006', '1384496747014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393230', '1384496754005', '1384496754014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393231', '1384496761007', '1384496761032', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393232', '1384496768006', '1384496768014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393233', '1384496775007', '1384496775015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393234', '1384496782005', '1384496782013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393235', '1384496789005', '1384496789019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393236', '1384496796006', '1384496796017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393237', '1384496803005', '1384496803015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393238', '1384496810006', '1384496810015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393239', '1384496817005', '1384496817016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393240', '1384496824006', '1384496824013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393241', '1384496831008', '1384496831022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393242', '1384496838005', '1384496838013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393243', '1384496845006', '1384496845015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393244', '1384496852006', '1384496852016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393245', '1384496859005', '1384496859022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393246', '1384496866006', '1384496866016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393247', '1384496873005', '1384496873014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393248', '1384496880006', '1384496880015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393249', '1384496887005', '1384496887020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393250', '1384496894005', '1384496894016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393251', '1384496901006', '1384496901032', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393252', '1384496908007', '1384496908047', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393253', '1384496915006', '1384496915014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393254', '1384496922005', '1384496922018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393255', '1384496929005', '1384496929014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393256', '1384496936006', '1384496936016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393257', '1384496943007', '1384496943016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393258', '1384496950006', '1384496950014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393259', '1384496957005', '1384496957023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393260', '1384496964005', '1384496964017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393261', '1384496971006', '1384496971014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393262', '1384496978005', '1384496978012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393263', '1384496985006', '1384496985017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393264', '1384496992006', '1384496992025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393265', '1384496999005', '1384496999017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393266', '1384497006006', '1384497006019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393267', '1384497013016', '1384497013026', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393268', '1384497013011', '1384497013032', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393269', '1384497020006', '1384497020013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393270', '1384497027005', '1384497027012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393271', '1384497034005', '1384497034012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393272', '1384497041006', '1384497041020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393273', '1384497048005', '1384497048014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393274', '1384497055007', '1384497055015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393275', '1384497062005', '1384497062017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393276', '1384497069005', '1384497069012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393277', '1384497076006', '1384497076017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393278', '1384497083005', '1384497083016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393279', '1384497090006', '1384497090017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393280', '1384497097005', '1384497097013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393281', '1384497104005', '1384497104016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393282', '1384497111006', '1384497111027', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393283', '1384497118007', '1384497118032', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393284', '1384497125006', '1384497125016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393285', '1384497132005', '1384497132014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393286', '1384497139005', '1384497139012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393287', '1384497146007', '1384497146021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393288', '1384497153005', '1384497153018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393289', '1384497160006', '1384497160017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393290', '1384497167005', '1384497167032', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393291', '1384497174005', '1384497174017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393292', '1384497181006', '1384497181030', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393293', '1384497188005', '1384497188016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393294', '1384497195006', '1384497195016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393295', '1384497202005', '1384497202016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393296', '1384497209005', '1384497209015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393297', '1384497216006', '1384497216019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393298', '1384497223005', '1384497223014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393299', '1384497230006', '1384497230017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393300', '1384497237005', '1384497237015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393301', '1384497244005', '1384497244018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393302', '1384497251006', '1384497251016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393303', '1384497258005', '1384497258018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393304', '1384497265006', '1384497265017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393305', '1384497272005', '1384497272015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393306', '1384497279005', '1384497279016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393307', '1384497286006', '1384497286017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393308', '1384497293005', '1384497293019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393309', '1384497300006', '1384497300018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393310', '1384497307005', '1384497307014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393311', '1384497314005', '1384497314028', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393312', '1384497314009', '1384497314019', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393313', '1384497321006', '1384497321019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393314', '1384497328005', '1384497328015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393315', '1384497335006', '1384497335017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393316', '1384497342005', '1384497342014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393317', '1384497349005', '1384497349015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393318', '1384497356006', '1384497356013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393319', '1384497363005', '1384497363011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393320', '1384497370006', '1384497370013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393321', '1384497377005', '1384497377014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393322', '1384497384005', '1384497384019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393323', '1384497391006', '1384497391022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393324', '1384497398005', '1384497398016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393325', '1384497405006', '1384497405020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393326', '1384497412004', '1384497412018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393327', '1384497419007', '1384497419041', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393328', '1384497426006', '1384497426019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393329', '1384497433006', '1384497433024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393330', '1384497440006', '1384497440023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393331', '1384497447006', '1384497447028', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393332', '1384497454005', '1384497454016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393333', '1384497461006', '1384497461016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393334', '1384497468005', '1384497468018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393335', '1384497475006', '1384497475021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393336', '1384497482005', '1384497482019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393337', '1384497489005', '1384497489013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393338', '1384497496006', '1384497496019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393339', '1384497503005', '1384497503017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393340', '1384497510006', '1384497510015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393341', '1384497517005', '1384497517016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393342', '1384497524005', '1384497524015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393343', '1384497531006', '1384497531016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393344', '1384497538004', '1384497538015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393345', '1384497545006', '1384497545023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393346', '1384497552005', '1384497552018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393347', '1384497559005', '1384497559017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393348', '1384497566005', '1384497566013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393349', '1384497573005', '1384497573017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393350', '1384497580006', '1384497580016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393351', '1384497587005', '1384497587015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393352', '1384497594005', '1384497594016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393353', '1384497601027', '1384497601084', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393354', '1384497608005', '1384497608026', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393355', '1384497615006', '1384497615039', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393356', '1384497615010', '1384497615026', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393357', '1384497622005', '1384497622030', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393358', '1384497629005', '1384497629015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393359', '1384497636006', '1384497636012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393360', '1384497643005', '1384497643015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393361', '1384497650006', '1384497650014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393362', '1384497657005', '1384497657015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393363', '1384497664005', '1384497664017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393364', '1384497671006', '1384497671029', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393365', '1384497678005', '1384497678016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393366', '1384497685006', '1384497685014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393367', '1384497692005', '1384497692014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393368', '1384497699005', '1384497699016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393369', '1384497706006', '1384497706019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393370', '1384497713005', '1384497713016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393371', '1384497720005', '1384497720016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393372', '1384497727005', '1384497727020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393373', '1384497734005', '1384497734017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393374', '1384497741006', '1384497741018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393375', '1384497748005', '1384497748014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393376', '1384497755005', '1384497755016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393377', '1384497762005', '1384497762041', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393378', '1384497769004', '1384497769012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393379', '1384497776006', '1384497776018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393380', '1384497783005', '1384497783030', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393381', '1384497790006', '1384497790018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393382', '1384497797005', '1384497797013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393383', '1384497804005', '1384497804014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393384', '1384497811006', '1384497811014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393385', '1384497818004', '1384497818013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393386', '1384497825005', '1384497825014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393387', '1384497832005', '1384497832017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393388', '1384497839004', '1384497839013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393389', '1384497846005', '1384497846014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393390', '1384497853004', '1384497853013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393391', '1384497860006', '1384497860013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393392', '1384497867004', '1384497867012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393393', '1384497874004', '1384497874015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393394', '1384497881006', '1384497881024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393395', '1384497888005', '1384497888013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393396', '1384497895005', '1384497895019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393397', '1384497902006', '1384497902013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393398', '1384497909005', '1384497909025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393399', '1384497916011', '1384497916032', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393400', '1384497916005', '1384497916022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393401', '1384497923007', '1384497923023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393402', '1384497930005', '1384497930013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393403', '1384497937006', '1384497937018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393404', '1384497944005', '1384497944016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393405', '1384497951006', '1384497951018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393406', '1384497958004', '1384497958015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393407', '1384497965005', '1384497965014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393408', '1384497972006', '1384497972016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393409', '1384497979005', '1384497979015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393410', '1384497986005', '1384497986016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393411', '1384497993004', '1384497993011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393412', '1384498000005', '1384498000017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393413', '1384498007004', '1384498007015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393414', '1384498014006', '1384498014022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393415', '1384498021005', '1384498021019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393416', '1384498028004', '1384498028016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393417', '1384498035006', '1384498035022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393418', '1384498042005', '1384498042035', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393419', '1384498049005', '1384498049013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393420', '1384498056005', '1384498056015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393421', '1384498063004', '1384498063028', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393422', '1384498070005', '1384498070011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393423', '1384498077004', '1384498077015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393424', '1384498084004', '1384498084014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393425', '1384498091005', '1384498091017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393426', '1384498098004', '1384498098013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393427', '1384498105005', '1384498105018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393428', '1384498112004', '1384498112016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393429', '1384498119004', '1384498119012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393430', '1384498126006', '1384498126015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393431', '1384498133004', '1384498133012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393432', '1384498140006', '1384498140022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393433', '1384498147004', '1384498147018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393434', '1384498154006', '1384498154019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393435', '1384498161005', '1384498161017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393436', '1384498168004', '1384498168015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393437', '1384498175005', '1384498175017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393438', '1384498182226', '1384498182244', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393439', '1384498189004', '1384498189014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393440', '1384498196006', '1384498196017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393441', '1384498203008', '1384498203018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393442', '1384498210005', '1384498210012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393443', '1384498217004', '1384498217017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393444', '1384498217008', '1384498217021', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393445', '1384498224004', '1384498224011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393446', '1384498231005', '1384498231010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393447', '1384498238004', '1384498238012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393448', '1384498245005', '1384498245012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393449', '1384498252005', '1384498252017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393450', '1384498259004', '1384498259013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393451', '1384498266005', '1384498266012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393452', '1384498273005', '1384498273016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393453', '1384498280007', '1384498280014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393454', '1384498287004', '1384498287011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393455', '1384498294004', '1384498294013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393456', '1384498301005', '1384498301014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393457', '1384498308004', '1384498308014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393458', '1384498315005', '1384498315013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393459', '1384498322005', '1384498322017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393460', '1384498329005', '1384498329023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393461', '1384498336005', '1384498336013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393462', '1384498343004', '1384498343012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393463', '1384498350006', '1384498350013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393464', '1384498357004', '1384498357011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393465', '1384498364004', '1384498364013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393466', '1384498371006', '1384498371013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393467', '1384498378005', '1384498378047', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393468', '1384498385006', '1384498385016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393469', '1384498392004', '1384498392013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393470', '1384498399004', '1384498399011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393471', '1384498406005', '1384498406014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393472', '1384498413005', '1384498413017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393473', '1384498420006', '1384498420016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393474', '1384498427004', '1384498427015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393475', '1384498434004', '1384498434012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393476', '1384498441005', '1384498441014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393477', '1384498448004', '1384498448013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393478', '1384498455006', '1384498455014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393479', '1384498462004', '1384498462018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393480', '1384498469005', '1384498469012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393481', '1384498476005', '1384498476016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393482', '1384498483004', '1384498483026', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393483', '1384498490005', '1384498490012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393484', '1384498497004', '1384498497015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393485', '1384498504004', '1384498504012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393486', '1384498511005', '1384498511012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393487', '1384498518004', '1384498518014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393488', '1384498518007', '1384498518018', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393489', '1384498525005', '1384498525018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393490', '1384498532004', '1384498532014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393491', '1384498539006', '1384498539034', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393492', '1384498546005', '1384498546015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393493', '1384498553005', '1384498553019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393494', '1384498560007', '1384498560046', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393495', '1384498567005', '1384498567018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 7000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393496', '1384498835004', '1384498835012', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393497', '1384499135005', '1384499135012', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('393498', '1384499435006', '1384499435013', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('425984', '1384501542501', '1384501542839', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('425985', '1384501835007', '1384501835016', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('425986', '1384502135007', '1384502135015', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('425987', '1384502435007', '1384502435016', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('425988', '1384502735005', '1384502735013', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('425989', '1384503035006', '1384503035014', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('425990', '1384503335007', '1384503335015', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('458752', '1384520918748', '1384520918998', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('458753', '1384521035006', '1384521035016', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('458754', '1384521335006', '1384521335014', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('458755', '1384521635005', '1384521635014', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('458756', '1384521935007', '1384521935015', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('458757', '1384522235006', '1384522235015', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('458758', '1384522535006', '1384522535015', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('458759', '1384522835005', '1384522835013', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('491520', '1384523135014', '1384523135250', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('491521', '1384523435007', '1384523435016', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('491522', '1384523735008', '1384523735017', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('491523', '1384524035007', '1384524035015', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('491524', '1384524335007', '1384524335015', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('491525', '1384524635007', '1384524635016', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('524288', '1384526595287', '1384526595678', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('524289', '1384526735006', '1384526735015', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('557056', '1384567218250', '1384567218491', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('557057', '1384567235007', '1384567235016', 'SimpleJob2', 'DEFAULT', '', 'G5.g, Cron: 35 0/5 * * * ? *', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884736', '1388424926117', '1388424926271', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884737', '1388424928032', '1388424928056', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884738', '1388424930006', '1388424930012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884739', '1388424932006', '1388424932014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884740', '1388424934005', '1388424934015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884741', '1388424936004', '1388424936013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884742', '1388424938008', '1388424938022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884743', '1388424940005', '1388424940016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884744', '1388424942005', '1388424942015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884745', '1388424944005', '1388424944016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884746', '1388424946024', '1388424946039', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884747', '1388424948028', '1388424948040', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884748', '1388424950005', '1388424950012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884749', '1388424952004', '1388424952010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884750', '1388424954005', '1388424954014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884751', '1388424956005', '1388424956012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884752', '1388424958004', '1388424958011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884753', '1388424960005', '1388424960012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884754', '1388424962004', '1388424962021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884755', '1388424964006', '1388424964014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884756', '1388424966055', '1388424966074', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884757', '1388424968004', '1388424968012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884758', '1388424970004', '1388424970012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884759', '1388424972004', '1388424972012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884760', '1388424974004', '1388424974011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884761', '1388424976005', '1388424976013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884762', '1388424978005', '1388424978011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884763', '1388424980005', '1388424980016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884764', '1388424982006', '1388424982013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884765', '1388424984004', '1388424984011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884766', '1388424986004', '1388424986011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884767', '1388424988005', '1388424988020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884768', '1388424990004', '1388424990010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884769', '1388424992005', '1388424992013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884770', '1388424994004', '1388424994021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884771', '1388424996006', '1388424996014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884772', '1388424998004', '1388424998013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884773', '1388425000005', '1388425000013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884774', '1388425002004', '1388425002011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884775', '1388425004004', '1388425004013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884776', '1388425006004', '1388425006012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884777', '1388425008006', '1388425008016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884778', '1388425010004', '1388425010011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884779', '1388425012004', '1388425012012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884780', '1388425014004', '1388425014020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884781', '1388425016006', '1388425016018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884782', '1388425018004', '1388425018012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884783', '1388425020004', '1388425020009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884784', '1388425022005', '1388425022012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884785', '1388425024010', '1388425024018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884786', '1388425026004', '1388425026011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884787', '1388425028004', '1388425028010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884788', '1388425030004', '1388425030010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884789', '1388425032004', '1388425032015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884790', '1388425034005', '1388425034011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884791', '1388425036004', '1388425036010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884792', '1388425038004', '1388425038010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884793', '1388425040004', '1388425040011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884794', '1388425042004', '1388425042012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884795', '1388425044004', '1388425044011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884796', '1388425046005', '1388425046011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884797', '1388425048004', '1388425048011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884798', '1388425050004', '1388425050013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884799', '1388425052005', '1388425052013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884800', '1388425054004', '1388425054011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884801', '1388425056005', '1388425056009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884802', '1388425058004', '1388425058017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884803', '1388425060004', '1388425060009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884804', '1388425062005', '1388425062017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884805', '1388425064005', '1388425064013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884806', '1388425066004', '1388425066010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884807', '1388425068006', '1388425068014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884808', '1388425070007', '1388425070016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884809', '1388425072004', '1388425072011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884810', '1388425074005', '1388425074014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884811', '1388425076004', '1388425076011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884812', '1388425078004', '1388425078012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884813', '1388425080009', '1388425080014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884814', '1388425082005', '1388425082014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884815', '1388425084004', '1388425084010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884816', '1388425086005', '1388425086013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884817', '1388425088006', '1388425088015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884818', '1388425090005', '1388425090012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884819', '1388425092004', '1388425092019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884820', '1388425094004', '1388425094012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884821', '1388425096005', '1388425096013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884822', '1388425098011', '1388425098018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884823', '1388425100004', '1388425100012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884824', '1388425102004', '1388425102011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884825', '1388425104005', '1388425104019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884826', '1388425106004', '1388425106012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884827', '1388425108010', '1388425108018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884828', '1388425110004', '1388425110010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884829', '1388425112005', '1388425112013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884830', '1388425114004', '1388425114011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884831', '1388425116004', '1388425116017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884832', '1388425118007', '1388425118015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884833', '1388425120005', '1388425120010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884834', '1388425122005', '1388425122011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884835', '1388425124004', '1388425124010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884836', '1388425126004', '1388425126012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884837', '1388425128004', '1388425128010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884838', '1388425130004', '1388425130012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884839', '1388425132004', '1388425132011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884840', '1388425134004', '1388425134010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884841', '1388425136004', '1388425136014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884842', '1388425138005', '1388425138012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884843', '1388425140004', '1388425140015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884844', '1388425142005', '1388425142014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884845', '1388425144005', '1388425144010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884846', '1388425146004', '1388425146009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884847', '1388425148004', '1388425148013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884848', '1388425150004', '1388425150012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884849', '1388425152005', '1388425152016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884850', '1388425154004', '1388425154010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884851', '1388425156006', '1388425156014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884852', '1388425158005', '1388425158011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884853', '1388425160004', '1388425160010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884854', '1388425162005', '1388425162010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884855', '1388425164004', '1388425164016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884856', '1388425166005', '1388425166010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884857', '1388425168012', '1388425168017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884858', '1388425170004', '1388425170009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884859', '1388425172008', '1388425172014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884860', '1388425174008', '1388425174013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884861', '1388425176010', '1388425176015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884862', '1388425178004', '1388425178012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884863', '1388425180011', '1388425180016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884864', '1388425182004', '1388425182010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884865', '1388425184012', '1388425184030', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884866', '1388425186006', '1388425186013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884867', '1388425188006', '1388425188011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884868', '1388425190011', '1388425190016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884869', '1388425192005', '1388425192012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884870', '1388425194004', '1388425194012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884871', '1388425196004', '1388425196011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884872', '1388425198012', '1388425198108', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884873', '1388425200004', '1388425200010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884874', '1388425202004', '1388425202013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884875', '1388425204004', '1388425204012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884876', '1388425206004', '1388425206010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884877', '1388425208005', '1388425208013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884878', '1388425210004', '1388425210010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884879', '1388425212004', '1388425212012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884880', '1388425214004', '1388425214010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884881', '1388425216004', '1388425216010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884882', '1388425218004', '1388425218010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884883', '1388425220004', '1388425220019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884884', '1388425222005', '1388425222013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884885', '1388425224004', '1388425224012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884886', '1388425226006', '1388425226033', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884887', '1388425228004', '1388425228014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884888', '1388425230005', '1388425230010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884889', '1388425232004', '1388425232013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884890', '1388425234004', '1388425234011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884891', '1388425236004', '1388425236014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884892', '1388425238004', '1388425238018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884893', '1388425240004', '1388425240010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884894', '1388425242004', '1388425242012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884895', '1388425244005', '1388425244011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884896', '1388425246004', '1388425246010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884897', '1388425248004', '1388425248012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884898', '1388425250004', '1388425250011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884899', '1388425252006', '1388425252013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884900', '1388425254004', '1388425254010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884901', '1388425256004', '1388425256010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884902', '1388425258004', '1388425258012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884903', '1388425260004', '1388425260014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884904', '1388425262005', '1388425262012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884905', '1388425264004', '1388425264011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884906', '1388425266004', '1388425266010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884907', '1388425268004', '1388425268012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884908', '1388425270004', '1388425270010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884909', '1388425272004', '1388425272010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884910', '1388425274004', '1388425274011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884911', '1388425276004', '1388425276015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884912', '1388425278005', '1388425278013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884913', '1388425280004', '1388425280013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884914', '1388425282004', '1388425282015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884915', '1388425284004', '1388425284012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884916', '1388425286004', '1388425286010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884917', '1388425288006', '1388425288015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884918', '1388425290004', '1388425290014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884919', '1388425292008', '1388425292020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884920', '1388425294004', '1388425294009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884921', '1388425296005', '1388425296010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884922', '1388425298004', '1388425298026', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884923', '1388425300142', '1388425300162', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884924', '1388425302004', '1388425302012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884925', '1388425304004', '1388425304012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884926', '1388425306004', '1388425306010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884927', '1388425308004', '1388425308012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884928', '1388425310004', '1388425310010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884929', '1388425312005', '1388425312011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884930', '1388425314005', '1388425314019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884931', '1388425316004', '1388425316011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884932', '1388425318004', '1388425318011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884933', '1388425320004', '1388425320011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884934', '1388425322010', '1388425322025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884935', '1388425324003', '1388425324008', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884936', '1388425326003', '1388425326014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884937', '1388425328004', '1388425328013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884938', '1388425330004', '1388425330010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884939', '1388425332006', '1388425332016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884940', '1388425334003', '1388425334012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884941', '1388425336003', '1388425336014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884942', '1388425338004', '1388425338012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884943', '1388425340004', '1388425340011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884944', '1388425342004', '1388425342010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884945', '1388425344004', '1388425344009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884946', '1388425346004', '1388425346017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884947', '1388425348005', '1388425348014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884948', '1388425350003', '1388425350018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884949', '1388425352004', '1388425352015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884950', '1388425354003', '1388425354010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884951', '1388425356004', '1388425356010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884952', '1388425358004', '1388425358016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884953', '1388425360013', '1388425360025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884954', '1388425362004', '1388425362011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884955', '1388425364004', '1388425364011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884956', '1388425366005', '1388425366011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884957', '1388425368004', '1388425368012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884958', '1388425370005', '1388425370017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884959', '1388425372004', '1388425372012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884960', '1388425374004', '1388425374012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884961', '1388425376004', '1388425376012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884962', '1388425378004', '1388425378011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884963', '1388425380004', '1388425380012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884964', '1388425382005', '1388425382020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884965', '1388425384005', '1388425384010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884966', '1388425386004', '1388425386010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884967', '1388425388004', '1388425388011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884968', '1388425390004', '1388425390010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884969', '1388425392004', '1388425392011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884970', '1388425394004', '1388425394010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884971', '1388425396004', '1388425396010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884972', '1388425398003', '1388425398012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884973', '1388425400004', '1388425400012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884974', '1388425402004', '1388425402012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884975', '1388425404169', '1388425404175', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884976', '1388425406018', '1388425406043', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884977', '1388425408325', '1388425408950', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884978', '1388425410004', '1388425410011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('884979', '1388425412004', '1388425412011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.100');
INSERT INTO `qrtz_log` VALUES ('917504', '1388935548010', '1388935548503', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917505', '1388935550005', '1388935550012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917506', '1388935552006', '1388935552012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917507', '1388935554005', '1388935554014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917508', '1388935556005', '1388935556014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917509', '1388935558005', '1388935558012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917510', '1388935560007', '1388935560018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917511', '1388935562005', '1388935562011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917512', '1388935564004', '1388935564012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917513', '1388935566006', '1388935566011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917514', '1388935568005', '1388935568010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917515', '1388935570040', '1388935570095', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917516', '1388935572011', '1388935572026', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917517', '1388935574008', '1388935574026', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917518', '1388935576013', '1388935576029', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917519', '1388935578005', '1388935578011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917520', '1388935580005', '1388935580017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917521', '1388935582005', '1388935582012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917522', '1388935584005', '1388935584011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917523', '1388935586006', '1388935586011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917524', '1388935588009', '1388935588016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917525', '1388935590004', '1388935590009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917526', '1388935592004', '1388935592008', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917527', '1388935594004', '1388935594014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917528', '1388935596005', '1388935596009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917529', '1388935598004', '1388935598009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917530', '1388935600006', '1388935600013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917531', '1388935602005', '1388935602017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917532', '1388935604005', '1388935604023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917533', '1388935606005', '1388935606013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917534', '1388935608004', '1388935608014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917535', '1388935610005', '1388935610010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917536', '1388935612004', '1388935612009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917537', '1388935614004', '1388935614011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917538', '1388935616005', '1388935616036', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917539', '1388935618007', '1388935618020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917540', '1388935620006', '1388935620031', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917541', '1388935622004', '1388935622011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917542', '1388935624004', '1388935624011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917543', '1388935626004', '1388935626014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917544', '1388935628004', '1388935628009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917545', '1388935630004', '1388935630022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917546', '1388935632004', '1388935632015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917547', '1388935634004', '1388935634013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917548', '1388935636006', '1388935636013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917549', '1388935638004', '1388935638010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917550', '1388935640004', '1388935640011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917551', '1388935642005', '1388935642011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917552', '1388935644004', '1388935644011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917553', '1388935646004', '1388935646011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917554', '1388935648005', '1388935648024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917555', '1388935650004', '1388935650010', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917556', '1388935652004', '1388935652009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917557', '1388935654005', '1388935654012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917558', '1388935656006', '1388935656011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917559', '1388935658004', '1388935658009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917560', '1388935660050', '1388935660142', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917561', '1388935662005', '1388935662025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917562', '1388935664005', '1388935664009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917563', '1388935666005', '1388935666009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917564', '1388935669010', '1388935669055', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917565', '1388935670007', '1388935670025', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917566', '1388935672004', '1388935672009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917567', '1388935674004', '1388935674011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917568', '1388935676004', '1388935676009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('917569', '1388935678004', '1388935678009', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950272', '1389324680009', '1389324680417', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950273', '1389324682006', '1389324682042', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950274', '1389324684005', '1389324684014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950275', '1389324686005', '1389324686014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950276', '1389324688005', '1389324688019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950277', '1389324690006', '1389324690014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950278', '1389324692005', '1389324692017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950279', '1389324694005', '1389324694017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950280', '1389324696005', '1389324696022', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950281', '1389324698005', '1389324698013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950282', '1389324700005', '1389324700020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950283', '1389324702005', '1389324702015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950284', '1389324704005', '1389324704017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950285', '1389324706006', '1389324706016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950286', '1389324708005', '1389324708019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950287', '1389324710005', '1389324710016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950288', '1389324712005', '1389324712016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950289', '1389324714005', '1389324714020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950290', '1389324716005', '1389324716013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950291', '1389324718005', '1389324718014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950292', '1389324720005', '1389324720021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950293', '1389324722005', '1389324722013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950294', '1389324724006', '1389324724023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950295', '1389324726004', '1389324726014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950296', '1389324728005', '1389324728016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950297', '1389324730005', '1389324730018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950298', '1389324732006', '1389324732019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950299', '1389324734004', '1389324734024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950300', '1389324736004', '1389324736013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950301', '1389324738005', '1389324738017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950302', '1389324740004', '1389324740013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950303', '1389324742005', '1389324742017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950304', '1389324744005', '1389324744017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950305', '1389324746005', '1389324746016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950306', '1389324748005', '1389324748023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950307', '1389324750005', '1389324750012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('950308', '1389324752006', '1389324752021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('983040', '1389326212009', '1389326212328', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('983041', '1389326214005', '1389326214020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('983042', '1389326216010', '1389326216019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1015808', '1389326768010', '1389326768264', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1015809', '1389326770005', '1389326770020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1048576', '1389327338009', '1389327338264', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1048577', '1389327340005', '1389327340014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1081344', '1389327860009', '1389327860263', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1081345', '1389327862005', '1389327862015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114112', '1389328082009', '1389328082261', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114113', '1389328084005', '1389328084016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114114', '1389328086006', '1389328086012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114115', '1389328088005', '1389328088016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114116', '1389328090005', '1389328090016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114117', '1389328092005', '1389328092020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114118', '1389328094005', '1389328094013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114119', '1389328096005', '1389328096016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114120', '1389328098005', '1389328098029', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114121', '1389328100005', '1389328100013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114122', '1389328102005', '1389328102012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114123', '1389328104006', '1389328104014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114124', '1389328106012', '1389328106041', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114125', '1389328108005', '1389328108016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114126', '1389328110005', '1389328110011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114127', '1389328112005', '1389328112012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114128', '1389328114005', '1389328114011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114129', '1389328116005', '1389328116013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114130', '1389328118005', '1389328118015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114131', '1389328120006', '1389328120011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114132', '1389328122005', '1389328122011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114133', '1389328124005', '1389328124015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114134', '1389328126005', '1389328126013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114135', '1389328128007', '1389328128014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1114136', '1389328130005', '1389328130011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1146880', '1389328366009', '1389328366266', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1146881', '1389328368005', '1389328368016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1146882', '1389328370005', '1389328370016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1179648', '1389328514012', '1389328514294', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1179649', '1389328516005', '1389328516021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1179650', '1389328518005', '1389328518021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1179651', '1389328520006', '1389328520017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1212416', '1389328828011', '1389328828282', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245184', '1389329030013', '1389329030288', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245185', '1389329032007', '1389329032020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245186', '1389329034006', '1389329034013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245187', '1389329036007', '1389329036016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245188', '1389329038005', '1389329038018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245189', '1389329040006', '1389329040016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245190', '1389329042005', '1389329042017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245191', '1389329044005', '1389329044015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245192', '1389329046006', '1389329046019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245193', '1389329048006', '1389329048021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245194', '1389329050005', '1389329050018', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245195', '1389329052009', '1389329052057', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245196', '1389329054006', '1389329054020', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245197', '1389329056006', '1389329056011', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245198', '1389329058006', '1389329058088', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245199', '1389329060005', '1389329060017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245200', '1389329062005', '1389329062019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245201', '1389329064007', '1389329064024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245202', '1389329066005', '1389329066016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245203', '1389329068005', '1389329068015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245204', '1389329070005', '1389329070023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245205', '1389329072007', '1389329072015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245206', '1389329074005', '1389329074014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245207', '1389329076009', '1389329076021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245208', '1389329078004', '1389329078015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1245209', '1389329080005', '1389329080015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277952', '1389798220111', '1389798220382', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277953', '1389798222063', '1389798222116', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277954', '1389798224005', '1389798224015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277955', '1389798226007', '1389798226042', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277956', '1389798228005', '1389798228017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277957', '1389798230005', '1389798230014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277958', '1389798232005', '1389798232014', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277959', '1389798234005', '1389798234013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277960', '1389798236005', '1389798236013', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277961', '1389798238006', '1389798238093', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277962', '1389798240008', '1389798240019', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277963', '1389798242008', '1389798242032', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277964', '1389798244007', '1389798244038', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277965', '1389798246005', '1389798246015', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277966', '1389798248006', '1389798248016', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277967', '1389798250005', '1389798250023', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277968', '1389798252005', '1389798252012', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277969', '1389798254009', '1389798254024', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277970', '1389798256007', '1389798256021', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277971', '1389798258018', '1389798258033', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277972', '1389798260008', '1389798260060', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277973', '1389798262008', '1389798262109', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');
INSERT INTO `qrtz_log` VALUES ('1277974', '1389798264007', '1389798264017', 'simple_3', 'DEFAULT', 'haha=yes', 'haha.h, Interval: 2000, Count: -1', '3', null, null, '10.168.0.101');

-- ----------------------------
-- Table structure for `qrtz_paused_trigger_grps`
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
-- Table structure for `qrtz_scheduler_state`
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
INSERT INTO `qrtz_scheduler_state` VALUES ('ClusterJobScheduler', 'chens-PC1389800581513', '1389800664269', '7500');

-- ----------------------------
-- Table structure for `qrtz_simple_triggers`
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
INSERT INTO `qrtz_simple_triggers` VALUES ('ClusterJobScheduler', 'a', 'additional', '-1', '300000', '544');
INSERT INTO `qrtz_simple_triggers` VALUES ('ClusterJobScheduler', 'dd', 'ad', '-1', '321000', '346');
INSERT INTO `qrtz_simple_triggers` VALUES ('ClusterJobScheduler', 'h', 'haha', '-1', '2000', '3414505');
INSERT INTO `qrtz_simple_triggers` VALUES ('ClusterJobScheduler', 't', 'test', '-1', '54321000', '30');

-- ----------------------------
-- Table structure for `qrtz_simprop_triggers`
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
-- Table structure for `qrtz_triggers`
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
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('ClusterJobScheduler', 'a', 'additional', 'SimpleJob2', 'DEFAULT', '', '1383190704000', '1383140304000', '5', 'PAUSED', 'SIMPLE', '1383027504000', '0', null, '0', '');
INSERT INTO `qrtz_triggers` VALUES ('ClusterJobScheduler', 'dd', 'ad', 'SimpleJob2', 'DEFAULT', '', '1383140556000', '1383140235000', '5', 'PAUSED', 'SIMPLE', '1383029490000', '0', null, '0', '');
INSERT INTO `qrtz_triggers` VALUES ('ClusterJobScheduler', 'g', 'G5', 'SimpleJob2', 'DEFAULT', '', '1384567535000', '1384567235000', '5', 'PAUSED', 'CRON', '1382956841000', '0', null, '0', '');
INSERT INTO `qrtz_triggers` VALUES ('ClusterJobScheduler', 'h', 'haha', 'simple_3', 'DEFAULT', '', '1389798266000', '1389798264000', '5', 'PAUSED', 'SIMPLE', '1382969256000', '0', null, '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C77080000001000000001740004686168617400037965737800);
INSERT INTO `qrtz_triggers` VALUES ('ClusterJobScheduler', 't', 'test', 'SimpleJob2', 'DEFAULT', '', '1384602690000', '-1', '5', 'PAUSED', 'SIMPLE', '1382973060000', '0', null, '0', '');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(64) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('-2', 'Default role for all Users', 'ROLE_USER');
INSERT INTO `role` VALUES ('-1', 'Administrator role (can edit Users)', 'ROLE_ADMIN');

-- ----------------------------
-- Table structure for `sec_resc`
-- ----------------------------
DROP TABLE IF EXISTS `sec_resc`;
CREATE TABLE `sec_resc` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `res_type` varchar(50) DEFAULT NULL,
  `res_string` varchar(200) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `descn` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=851974 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sec_resc
-- ----------------------------
INSERT INTO `sec_resc` VALUES ('1', null, 'URL', '/admin/**', '0', '', null, null, '2013-11-21 10:59:47');
INSERT INTO `sec_resc` VALUES ('2', null, 'URL', '/admin/*', '-1', 'a', null, null, '2013-11-21 11:00:47');
INSERT INTO `sec_resc` VALUES ('10000', null, 'URL', '/quartz/**', '0', 'asdf', null, null, '2013-11-21 11:01:04');
INSERT INTO `sec_resc` VALUES ('10001', null, 'URL', '/acegi/**', '0', 'aa', null, null, '2013-11-21 11:02:03');
INSERT INTO `sec_resc` VALUES ('10008', null, 'URL', '/123', null, '', null, '2013-11-20 12:24:32', '2013-11-20 12:24:32');
INSERT INTO `sec_resc` VALUES ('819200', 'loadResource', 'URL', '/admin/html_loadResource', null, '', null, '2013-11-22 23:26:14', '2013-11-22 23:26:14');
INSERT INTO `sec_resc` VALUES ('851968', 'wee', 'URL', '/wee', null, '', null, '2013-11-23 10:34:13', '2013-11-23 10:51:48');
INSERT INTO `sec_resc` VALUES ('851969', 'sdsd', 'URL', '/sd', null, '', null, '2013-11-23 10:34:20', '2013-11-23 10:50:48');
INSERT INTO `sec_resc` VALUES ('851970', 'tes', 'URL', '/tes', null, '', null, '2013-11-23 10:34:27', '2013-11-23 10:50:55');
INSERT INTO `sec_resc` VALUES ('851971', 'weder', 'URL', '/weder', null, '', null, '2013-11-23 10:34:34', '2013-11-23 10:51:38');
INSERT INTO `sec_resc` VALUES ('851972', 'asc', 'URL', '/asc', null, '', null, '2013-11-23 10:34:42', '2013-11-23 10:50:34');
INSERT INTO `sec_resc` VALUES ('851973', 'hee', 'URL', '/eee', null, '', null, '2013-11-23 10:34:57', '2013-11-23 10:50:41');

-- ----------------------------
-- Table structure for `sec_resc_role`
-- ----------------------------
DROP TABLE IF EXISTS `sec_resc_role`;
CREATE TABLE `sec_resc_role` (
  `resc_id` bigint(20) NOT NULL DEFAULT '0',
  `role_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`resc_id`,`role_id`),
  KEY `fk_resc_role_role` (`role_id`) USING BTREE,
  CONSTRAINT `sec_resc_role_ibfk_1` FOREIGN KEY (`resc_id`) REFERENCES `sec_resc` (`id`),
  CONSTRAINT `sec_resc_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `sec_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 9216 kB; (`resc_id`) REFER `lynchandsong/sec_resc`(`id`); (`role_id';

-- ----------------------------
-- Records of sec_resc_role
-- ----------------------------
INSERT INTO `sec_resc_role` VALUES ('1', '1');
INSERT INTO `sec_resc_role` VALUES ('2', '1');
INSERT INTO `sec_resc_role` VALUES ('10000', '1');
INSERT INTO `sec_resc_role` VALUES ('10001', '1');
INSERT INTO `sec_resc_role` VALUES ('10008', '1');
INSERT INTO `sec_resc_role` VALUES ('819200', '1');
INSERT INTO `sec_resc_role` VALUES ('851971', '1');
INSERT INTO `sec_resc_role` VALUES ('1', '622593');
INSERT INTO `sec_resc_role` VALUES ('2', '622593');
INSERT INTO `sec_resc_role` VALUES ('10000', '622593');
INSERT INTO `sec_resc_role` VALUES ('10001', '622593');
INSERT INTO `sec_resc_role` VALUES ('10008', '622593');
INSERT INTO `sec_resc_role` VALUES ('819200', '786432');

-- ----------------------------
-- Table structure for `sec_role`
-- ----------------------------
DROP TABLE IF EXISTS `sec_role`;
CREATE TABLE `sec_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `descn` varchar(200) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=786433 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sec_role
-- ----------------------------
INSERT INTO `sec_role` VALUES ('1', 'ROLE_ADMIN', null, '管理员角色', null, null);
INSERT INTO `sec_role` VALUES ('2', 'adf', '2', 'asdf', '2013-11-20 16:54:13', '2013-11-20 16:54:25');
INSERT INTO `sec_role` VALUES ('4', 'a', '2', 'sd', '2013-11-20 16:56:49', '2013-11-20 16:58:56');
INSERT INTO `sec_role` VALUES ('622592', 'adsf', '2', 'adsf', '2013-11-20 23:53:09', '2013-11-20 23:53:09');
INSERT INTO `sec_role` VALUES ('622593', 'ROLE_ASDFAA', '2', 'asdfaa', '2013-11-20 23:53:44', '2013-11-21 11:15:01');
INSERT INTO `sec_role` VALUES ('786432', 'ROLE_WELL', '2', 'ROLE_well', '2013-11-22 22:52:46', '2013-11-22 22:52:46');

-- ----------------------------
-- Table structure for `sec_user`
-- ----------------------------
DROP TABLE IF EXISTS `sec_user`;
CREATE TABLE `sec_user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `nicename` varchar(250) DEFAULT NULL,
  `firstName` varchar(250) DEFAULT NULL,
  `lastName` varchar(250) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `passwordHint` varchar(250) DEFAULT NULL,
  `avatar` varchar(150) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `msn` varchar(100) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `descn` varchar(200) DEFAULT NULL,
  `invitcode` varchar(150) DEFAULT NULL,
  `createtime` datetime NOT NULL COMMENT '????',
  `updatetime` datetime NOT NULL COMMENT '??????',
  `enabled` tinyint(1) NOT NULL,
  `accountExpired` tinyint(1) NOT NULL,
  `accountLocked` tinyint(1) NOT NULL,
  `credentialsExpired` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sec_user
-- ----------------------------
INSERT INTO `sec_user` VALUES ('1', 'admin', 'admin', null, null, '75ab692b4e4908ee514222511611027f00baa6ed61b00ebadf9b280ee4f798363b3ebad7a4da7aad', null, null, null, null, null, null, null, null, null, null, null, null, null, '2013-11-21 22:57:35', '2013-11-21 22:57:40', '1', '0', '0', '0');
INSERT INTO `sec_user` VALUES ('688128', 'hi', 'hi', 'hi', 'hi', '75ab692b4e4908ee514222511611027f00baa6ed61b00ebadf9b280ee4f798363b3ebad7a4da7aad', null, '', 'hi@qq.com', '', '', '', '', '', '', '', '', '', '', '2013-11-21 23:03:30', '2013-11-21 23:03:30', '1', '0', '0', '0');
INSERT INTO `sec_user` VALUES ('688129', 'ok', 'ok', 'ok', 'ok', '75ab692b4e4908ee514222511611027f00baa6ed61b00ebadf9b280ee4f798363b3ebad7a4da7aad', null, '', 'ok@sina.com', '', '', '', '', '', '', '', '', '', '', '2013-11-21 23:04:06', '2013-11-21 23:04:06', '1', '0', '0', '0');
INSERT INTO `sec_user` VALUES ('720896', 'hello', 'hello', 'hello', 'hello', '75ab692b4e4908ee514222511611027f00baa6ed61b00ebadf9b280ee4f798363b3ebad7a4da7aad', null, '', 'hello@qq.com', '', '', '', '', '', '', '', '', '', '', '2013-11-22 11:28:52', '2013-11-22 11:28:52', '1', '0', '0', '0');
INSERT INTO `sec_user` VALUES ('753664', 'well', 'well', 'well', 'well', '8a994b6f370c5314286de9ecaf0f1005ac9e6590fff501d81a294657ce423feefae49b89a56efd09', null, '', 'well@ad.com', '', '', '', '', '', '', '', '', '', '', '2013-11-22 22:49:54', '2013-11-22 22:49:54', '1', '0', '0', '0');

-- ----------------------------
-- Table structure for `sec_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sec_user_role`;
CREATE TABLE `sec_user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_gbjxy45gdoyjjskfv4lx10ef7` (`role_id`),
  KEY `FK_ltjxt102lg9nu9ep8jn7iybmu` (`user_id`),
  CONSTRAINT `FK_gbjxy45gdoyjjskfv4lx10ef7` FOREIGN KEY (`role_id`) REFERENCES `sec_role` (`id`),
  CONSTRAINT `FK_ltjxt102lg9nu9ep8jn7iybmu` FOREIGN KEY (`user_id`) REFERENCES `sec_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sec_user_role
-- ----------------------------
INSERT INTO `sec_user_role` VALUES ('1', '1');
INSERT INTO `sec_user_role` VALUES ('688128', '1');
INSERT INTO `sec_user_role` VALUES ('688129', '1');
INSERT INTO `sec_user_role` VALUES ('720896', '1');
INSERT INTO `sec_user_role` VALUES ('688128', '4');
INSERT INTO `sec_user_role` VALUES ('688129', '4');
INSERT INTO `sec_user_role` VALUES ('688129', '622592');
INSERT INTO `sec_user_role` VALUES ('688128', '622593');
INSERT INTO `sec_user_role` VALUES ('688129', '622593');
INSERT INTO `sec_user_role` VALUES ('753664', '786432');

-- ----------------------------
-- Table structure for `sys_dir`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dir`;
CREATE TABLE `sys_dir` (
  `oid` bigint(20) NOT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `ename` varchar(255) NOT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `resc_id` bigint(20) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `fk_sys_dir_resc` (`resc_id`),
  KEY `fk_sys_dir_pid` (`pid`),
  CONSTRAINT `fk_sys_dir_pid` FOREIGN KEY (`pid`) REFERENCES `sys_dir` (`oid`),
  CONSTRAINT `fk_sys_dir_resc` FOREIGN KEY (`resc_id`) REFERENCES `sys_resc` (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_dir
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_resc`
-- ----------------------------
DROP TABLE IF EXISTS `sys_resc`;
CREATE TABLE `sys_resc` (
  `oid` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ename` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_resc
-- ----------------------------

-- ----------------------------
-- Table structure for `t_article`
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article` (
  `oid` varchar(32) NOT NULL,
  `type` varchar(100) DEFAULT NULL COMMENT '类型（比如联系我们，关于我们，人员等等）',
  `typePath` varchar(300) DEFAULT NULL COMMENT '类型path',
  `title` varchar(300) DEFAULT NULL,
  `etitle` varchar(300) DEFAULT NULL,
  `content` mediumtext,
  `econtent` mediumtext,
  `price` varchar(300) DEFAULT NULL,
  `author` varchar(300) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL COMMENT '产地',
  `eaddress` varchar(300) DEFAULT NULL,
  `objid` varchar(32) DEFAULT NULL COMMENT '和导航关联',
  `colorurl` varchar(300) DEFAULT NULL COMMENT '有颜色封面',
  `blackurl` varchar(300) DEFAULT NULL COMMENT '黑白封面',
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `ordinal` int(11) DEFAULT NULL COMMENT '按升序排列',
  `status` int(11) DEFAULT NULL COMMENT '0无效 1有效 默认1',
  `emap` longtext COMMENT 'baidu google',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES ('000000000001', '4', '|001|004|', null, null, '<div>\r\n	hh</div>\r\n', '<div>\r\n	<div style=\"text-align: justify\">\r\n		<strong>Lynch + Song</strong> is committed to sustainability, craft, and culture. Our company assists clients who share these values. Our work is distinguished by its originality, precision, and quality. We have received numerous awards including the Progressive Architecture Award, Emerging Voices Award, Museum of Modern Art Young Architects Program, and the American Academy Rome Prize Award. Lynch + Song has experience at all scales of design practice&mdash;from urban planning and community development to architectural, interior, and furniture design. In all our endeavors we are committed to the health of the planet, to the preservation of craft knowledge, and to the advancement of culture&mdash;to a vibrant, refined, creative, and ethical society. This promotes the long-term success of our business clients, and the long-term prosperity and well-being of our private clients.&nbsp;</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '', null, null, null, null, null, '2013-07-01 00:00:00', '2013-11-13 14:43:24', '100', '3', null);
INSERT INTO `t_article` VALUES ('201306140070', '8', '|002|008|', '布拉格城堡公园', 'Prague Pheasantry', '', '<div>\r\n	<div>\r\n		Prague Castle Pheasantry Garden Competition, Prague, 1997</div>\r\n	<div>\r\n		Collaborator: Artist Dagmar Frinta</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		The competition requested design ideas for an underutilized public park northwest of Prague Castle. The park, separated from the main complex by a bridge and moat, was originally the castle&rsquo;s kitchen garden and stables. Directly east of the park is the most important Renaissance garden in the Czech Republic. The Castle itself is an architectural masterpiece from three eras: gothic, baroque, and early modern. Our design proposed a new architectural language, one that reconciled the spirit of these three periods.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		In the 1960&rsquo;s the Communist government installed an electrical substation in the park, disrupting views and circulation routes. Repair of this damage was a central challenge of the competition.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Our design created a new square atop the transformer station, to be paved in tapered bricks. The individual pavers and the geometric rule for their arrangement is simple, but the overall result is a complex swirling pattern. Along the south side of the square a perforated wall of stone blocks frames views of Male Strana (while shielding views of the substation service court). A six-towered pavilion at the west end of the square serves ice cream in summer and chestnuts in winter: it also hides vent shafts for the substation below. This tower is constructed by wrapping curving bands of dark blue stainless steel edge-to-edge: the tapered funnel shape is an inevitable geometric result.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		To the west of the square paths lead onward to the park. To the north is a nested set of elliptical paths for dog walking, aimless strolling, and baby-carriage perambulation. Northwest of the square is the &ldquo;Garden of Europe&rdquo;; branching paths are lined with all of Europe&rsquo;s flowering species, divided into West and East (with innumerable paths in between).</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-06-14 00:00:00', '2013-09-19 23:00:34', '3', '1', null);
INSERT INTO `t_article` VALUES ('201306170076', '9', '|002|009|', '乾坤堂', 'M&C Gallery', '', '<div>\r\n	<div align=\"left\">\r\n		<div align=\"left\">\r\n			M &amp; C Gallery, Hollywood Road, Sheung Wan, Hong Kong, 2012</div>\r\n		<div align=\"left\">\r\n			Project Architect: Tao Wei</div>\r\n		<div>\r\n			Project Team: Pu Shengyi, Ahti Westphal, Lai Zhiwei, Kim Mccleary&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>\r\n		<div>\r\n			The clients are important collectors and dealers in Chinese antique sculptures, artifacts, and paintings. They have run a well-established gallery at this location on Hollywood Road for more than 18 years. One of the clients plays the guqin, the traditional Chinese harp. Both are scholars of traditional Chinese culture. Their gallery functions as a salon, a cultural site. The clients&rsquo; intent is to reacquaint contemporary Chinese with their own tradition; to show them how the knowledge of man and nature expressed in traditional Chinese painting, writing, music, and medicine can contribute to a healthy, fulfilled, modern life. Visitors to the gallery are received in that spirit. They are served tea in an ancient kettle, listen to the guqin, and engage in conversation about art and culture, which often lasts through the night. Time seems to move slowly within the space; the gallery is an oasis. The main responsibility of the designers was to embody this same spirit: to express a highly refined traditional sensibility in a contemporary way.</div>\r\n	</div>\r\n	<div align=\"left\">\r\n		&nbsp;</div>\r\n	<div align=\"left\">\r\n		Because the purpose of the space is cultural, not commercial, a conventional design approach was not appropriate. For example, the design could not expose conventional industrial products&mdash;no commercial light fixtures, hardware, electrical outlets, etc. Not even an electric doorbell. The air conditioning system needed to be silent and invisible. The dimensions of rooms, doors, portals, and windows had to be set according to feng shui principles. &nbsp;&nbsp;&nbsp;</div>\r\n	<div align=\"left\">\r\n		&nbsp;</div>\r\n	<div>\r\n		Since the clients&rsquo; goal is not to sell things to passers-by, they do not need to fill the shop window with objects. They display only one item at a time, located at the focus point of the fa&ccedil;ade. Fangzhou Lydia Song designed the storefront to be an eye, with central display as the pupil. Surrounding the window is a hammered brass frame enclosed by a deeply carved, polished granite frame. A roll-down security gate protects the door and window. It closes over the pupil like an eyelid, protecting the glass and the brass surround. The frame of the entrance door, set in a niche, is angled for good feng shui. (Niches are encountered throughout the project; sometimes they create spaces for objects, sometimes for people.) To the right of the wood door, set into the entry recess, is a carved wood pull for a mechanical doorbell. Beside the entrance is a smaller niche for a votive statue.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Visitors enter into a small exhibition gallery detailed in travertine and teak. Directly ahead is a glass and teak guqin pavilion, a practice and performance room for the client-musician, which separates the gallery from the salon. This pavilion is the heart of the project. Tatami mats on the floor, woven straw wallpaper, a red lacquer cove ceiling and display cabinet, custom brass hardware, and sound-proof teak and glass folding doors with custom brass cremone bolts create a color-saturated, materially rich, meticulously detailed space. The salon beyond the pavilion is the clients&rsquo; private meeting space. One wall of the salon is lined with the clients&rsquo; extensive collection of reference books; the other side is a long storage cabinet with inset display niches, which has the spirit an old apothecary shop. Cabinet door hinges are custom-detailed in solid brass. Some cabinets unfold into additional display areas. Custom-designed track lights in the salon recall traditional dougong (cap and block) construction, but are, at the same time, highly abstract and modern.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	The designers&rsquo; goal was to create an interior that was completely dimensionally resolved. The general contractor and his team of carpenters understood the design intent and were able to maintain a tight tolerance throughout the project&mdash; dimensions were often controlled to one millimeter. Cabinet joints align with floor paving joints, horizontal baselines align throughout, cabinets and doors are carefully proportioned.</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-06-17 00:00:00', '2013-09-19 22:56:39', '1', '1', null);
INSERT INTO `t_article` VALUES ('201306180079', '9', '|002|009|', '企业家私宅 II', 'Villa For An Industrialist II', '', '<div>\r\n	<div style=\"text-align: justify;\">\r\n		Villa for an Industrialist II, Shenzhen, 2009</div>\r\n	<div style=\"text-align: justify;\">\r\n		Collaborator: Designer Ahlaiya Yung</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		For the lower-level entertainment room of the Villa we used a different set of materials&mdash;glazed ceramic, colored glass, metallic tiles, and white marble. In this room surfaces are more reflective and sculptural and colors are richer. As in the rest of the villa, we explored repetitive patterns with a high degree of variation.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-06-18 00:00:00', '2013-09-19 22:58:09', '5', '1', null);
INSERT INTO `t_article` VALUES ('201306190082', '11', '|002|011|', 'Highline', 'Highline', '', '<div>\r\n	<div>\r\n		&ldquo;High Line&rdquo; Competition, New York City, 2003</div>\r\n	<div>\r\n		Sponsor: Friends of the High Line</div>\r\n	<div>\r\n		Collaborator: Artist Mary Kim</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<em>Nature spreads horizontally; New York sprouts vertically.</em> Our proposal for development of the High Line, an abandoned elevated freight line on Manhattan&rsquo;s West Side, wished to reconcile two contradictory pressures&mdash;the life-force of Nature, which spreads outwards, and the life-force of New Yorkers, who are compelled to build upwards. The reconciliation of these directions, geometrically, is the diagonal.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		We hoped that the High Line would remain much as it was for twenty years&mdash;a linear meadow of native and adopted wildflowers, grasses, shrubs, and small trees.&nbsp; Our project populated this meadow with a family of eccentric elements with vertical aspirations. Their oblique character is an expression of the city&rsquo;s unsettled, shifting goals&mdash;upwards, but to where and what?</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		To preserve the pastoral quality of the High Line, which passes through the city like a magnificent dream, while opening it to lively public use, we proposed that:</div>\r\n	<ul>\r\n		<li>\r\n			Paths should be constructed of interlocking pavers that allow water percolation and expanded green cover, following the contours of small rolling hills introduced into the terrain. In off-hours (when the park is closed to the public) robotic security trains on small-gauge rails shuttle back and forth along the High Line, ghostly reminders of its former life.</li>\r\n		<li>\r\n			All other constructions&mdash;stair towers, observation platforms, ramps, elevators, gates, light bollards, garden sheds, benches, emergency phone booths, windmills, cisterns, and garages for emergency vehicles&mdash;should be eccentric vertical elements with minimal footprint and visual mass.</li>\r\n		<li>\r\n			Storm water from roofs of adjacent structures and city-owned properties could be collected for irrigation of the High Line, where it would be filtered and purified in constructed wetlands and watercourses. When required, wind-powered pumps would fill the High-Line&rsquo;s cisterns.</li>\r\n	</ul>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Possible Elements:</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<ol>\r\n		<li>\r\n			Stair Tower</li>\r\n		<li>\r\n			Elevator Tower</li>\r\n		<li>\r\n			Ramp Tower</li>\r\n		<li>\r\n			Garden / Service Shed</li>\r\n		<li>\r\n			Information Kiosk</li>\r\n		<li>\r\n			Telephone Booth</li>\r\n		<li>\r\n			Light Bollard</li>\r\n		<li>\r\n			Plus-Shaped Pavers</li>\r\n		<li>\r\n			Family Bench</li>\r\n		<li>\r\n			Rubber Guide Tracks</li>\r\n		<li>\r\n			Constructed Wetlands</li>\r\n		<li>\r\n			Recessed Planter</li>\r\n	</ol>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-06-19 00:00:00', '2013-09-02 08:42:14', '100', '1', null);
INSERT INTO `t_article` VALUES ('201307020110', '3', '|003|', 'Architecture as a Cultural Practice', 'Architecture as a Cultural Practice', '', '<div>\r\n	<div style=\"text-align: justify;\">\r\n		Architecture as a Cultural Practice</div>\r\n	<div style=\"text-align: justify;\">\r\n		Peter Lynch</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		<em>Polimorfo</em>, Journal of the Polytechnic University of Puerto Rico</div>\r\n	<div style=\"text-align: justify;\">\r\n		Anticipated publication date: August 2013</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Part of this paper was a lecture at the KTH School of Architecture, Stockholm, on May 31 2012.</div>\r\n	<div style=\"text-align: justify;\">\r\n		_____________</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Team 10, a small circle of architects whose core members met as participants in the 9<sup>th</sup> CIAM Congress in Aix-en-Provence in 1953, and who convened occasionally over more than two decades to critique each other&rsquo;s work, cast doubt upon the principles of CIAM and the values of their orthodox modernist contemporaries. Their view: modernist architects and planners had forgotten their actual subjects&mdash;people, communities, and citizens living in particular places, with specific needs and desires&mdash;and replaced them with abstractions. Team 10 offered no manifesto or agenda, with the exception of a few public statements which focused on aspirations and working methods.<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftn1\" name=\"_ftnref1\" title=\"\">[1]</a> Rather than challenging one ideology with another, Team 10 challenged one type of speech&mdash;the authoritative voice of CIAM&mdash;with another, discourse. Team 10&rsquo;s critique spread quickly within architecture culture, among architects, teachers, and students. The persuasiveness of their argument rested on the spirit of exploration, curiosity and uncertainty evident in the work, not necessarily on its resolution or demonstration of mastery.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Suggestion and influence are subtle forces: it is impossible to measure to what degree Team 10&rsquo;s actors were responsible for the loss of credibility of &ldquo;received modernism&rdquo;, or to point to the group&rsquo;s specific effect on the practice of architecture. There is no way to know if Team 10 was a symptom or an agent of transformation. Like a letter in a bottle, thrown on shore by the tides, architecture is propelled by general forces of movement and change. If those forces were not already aligned&mdash;if a critique was not imminent&mdash;how could the future protagonists of Team 10, architects from different cultural circles with different modes of practice, have recognized each other at the eighth and ninth CIAM congresses and formed a bond so quickly? How could their critique, offered up in such a mild and non-confrontational manner, have had such a pervasive effect? Disenchantment with ideology must have been widespread in postwar Europe. In Nigel Hendersen&rsquo;s photos of children playing on the streets of postwar London&rsquo;s East End, part the &ldquo;grid&rdquo; Peter and Alison Smithson offered at CIAM 9, one senses an overwhelming need for joy: for a repaired world, one that rejects grand ideologies and abstractions, and makes a place for everyday happiness. Looking at these photos, one understands the change that Western Europe was undergoing on a political level, the creation of social democracy. Other transformations of late modernism also ran parallel to political change: consider the work of Louis Kahn and Le Corbusier in East Pakistan and India, a region of the world throwing off colonial control.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Emergence of social democracy, movements for national independence: these are examples of the tidal forces that propel changes in architecture. Digital technology has undoubtedly been the most recent propelling force for architecture&mdash;but that does not contradict this perspective. Digital technology is revolutionary because it allows deep changes in political and social structures.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Like a letter in a bottle, a work of architecture is a message. A storm is needed to toss it ashore.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Changes in architecture do not provoke social change. In fact it is the other way around. Social change, the possibility of social change, or even <em>the belief in the possibility of social change</em> is what makes creative architecture practice (and creative ferment in any of the arts) possible.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Perhaps it is time for a &ldquo;Team 11&rdquo; to ask questions about architecture as currently practiced. The obstacle to architecture as a cultural practice, this time, is not ideological control or an insistence on universal rational principles, but a lack of curiosity, nimbleness, and courage. Those who believe the contrary&mdash;that architecture is enjoying a golden age of avant-garde experimentation, radical formal invention, and refined performance, driven by digital design technology&mdash;should wake up. Tropes of contemporary design continue to be served to architecture students, clients, and consumers as avant-garde ideas, but in fact they are over a decade old; they are formulaic, the opposite of risk-taking. This stagnation is not specific to architecture, however. It is endemic in China, North America, Russia, and much of Europe. &ldquo;Zombie institutions&rdquo; rule everywhere (Ulrich Beck).<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftn2\" name=\"_ftnref2\" title=\"\">[2]</a></div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Contemporary architecture reduces the capacity of its subjects to attend to the world and take delight in it, because most architects have lost this capacity themselves. The world is a subtle and deep place: as architects we should be curious about this complex reality, take delight in it, have the ability to examine it, and reflect it in our work. We expect no less of painting, poetry, music, or literature. Why do we expect so little of our own practice? If we continue along this path, what architects do will become nothing more than styling plus technique. Strong form, efficient performance, tight detailing&hellip; is that all there is to architecture? Our expectations are impoverished.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		I would like to describe an aspiration for architecture&mdash;a hope that our discipline will reclaim its full capacity as a cultural practice. The architects I admire most, including Alvaro Siza, Carl-Vigo Holmebakk in Norway, Bijoy Jain and Studio Mumbai, OBRA Architects in New York, and historically Mies, Aalto, Asplund, and Lewerentz, can serve as examples. Their aspiration is different from the aspiration of the architects who are the most loudly promoted and celebrated today&mdash;although the respect surrounding the work of Siza and Studio Mumbai suggest that our cultural situation is not as bleak as I am portraying. One speaks of sensitivity, subtlety, joy, care, humor, precision, honesty, and other such qualities, encountering their work. Their approach is rare because it requires a personal and disciplinary capacity for these things. Today a very different and more expedient idea of architecture&mdash;transposed from product design, engineering, fashion, and marketing&mdash;has taken hold.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		It isn&rsquo;t difficult to determine which approach you follow as an architectural designer. Ask yourself: Is my work based in a concept? Do I speak about design in terms of strategies? Do I think of work as a kind of rational problem-solving? Do I expect my work to be evaluated in the terms it was conceived? Are my sketches mostly diagrams? Do I speak about generating form? Can fundamental aspects of the design process be optimized or scripted? Do I speak about end-users, stakeholders, or consumers of the buildings I design?<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftn3\" name=\"_ftnref3\" title=\"\">[3]</a> If you say yes to most of these you are following a contemporary approach, one that dominates most US schools.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		You may think that the approach pictured above is a caricature of design. It <em>is</em> a caricature, but unfortunately it is also the norm. On the other hand, you may practice in other ways. You may be refining ideas, not concepts. Your design intention may emerge over the course of the work. The form may result from your work, not drive it. Your sketches may require inflection, gesture, dimensions, or scale to be meaningful&mdash;in other words, they may be drawings, not diagrams. There may be multiple, radically different reasons why aspects of your design are the way they are. You may consider material to have various kinds of properties, including dimensional and structural limiting characteristics, not only generic properties or surface properties. You may be inspired by architects from very different times and places and consider your work to be in conversation with them. Your may recognize that there are different kinds of precision, depending upon circumstances. Your buildings may be intended for people who are committed to that place on earth&mdash; for citizens and inhabitants. Did Lewerentz, Asplund, or Aalto talk about end-users or rely upon concepts, strategies, and diagrams?</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		What we do as architects is difficult, and it&rsquo;s understandable that some architects and critics would like to simplify our purpose and our methods. But the difficulty, and indirectness, of architecture is inherent in the work. Many architects acknowledge this in their writings about architecture.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Schinkel:</div>\r\n	<div style=\"text-align: justify; margin-left: 36pt;\">\r\n		I&hellip; soon found myself trapped in a great labyrinth where I had to ponder how far the rational principle should be applied in defining the trivial concept of the object, and how far, on the other hand, those higher influences of the historical and artistic-poetic purposes should be allowed in order to raise it to a work of art. In this regard it was not difficult to recognize that the governing relation of such different principles had to be different in each concrete case, and it was equally clear to me that in this regard we can speak of architecture only where the true artistic element assumes its place in this art, and that in all other cases it is and remains and objective handiwork. Therefore here, as everywhere else in the fine arts, an effective theory is difficult and reduces itself in the end to the cultivation of feeling. From what was said above it should also be evident that feeling in architecture certainly embraces a very wide circle, and&hellip; should be cultivated from the most varied and different sources&hellip;<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftn4\" name=\"_ftnref4\" title=\"\">[4]</a></div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Gio Ponti:</div>\r\n	<div style=\"text-align: justify; margin-left: 36pt;\">\r\n		I think I am not the only one to have reached suddenly one fine day certain obviously rational results and to have reached them not through logic&mdash;as would appear natural and intellectually right&mdash;but through a strange and tiring sequence of deviations, mistakes, tentative approaches, and mere chance.</div>\r\n	<div style=\"text-align: justify; margin-left: 36pt;\">\r\n		There seems to exist an episodic logic, a logic that is basically illogical and proceeds along difficult roads, not by a priori reckonings as in glorious, directly logical thought but rather by a posteriori recognitions and recoveries&mdash;a logic that is empirical. The a priori logic leads by logical processes to indisputably logical results. Through its byways and imaginings, empirical logic leads us to conclusions of which we finally recognize the logical substance. <a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftn5\" name=\"_ftnref5\" title=\"\">[5]</a></div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Alvar Aalto:</div>\r\n	<div style=\"text-align: justify; margin-left: 36pt;\">\r\n		When I personally have to solve some architectural problem I am constantly&mdash;indeed, almost without exception&mdash;faced with an obstacle difficult to surmount, a kind of &ldquo;three in the morning feeling.&rdquo; The reason seems to be the complicated, heavy burden resulting from the way that architectural design operates with countless, often mutually discordant elements. Social, humanitarian, economic, and technical requirements combined with psychological problems affecting both the individual and the group, the movements and internal friction of both crowds of people and individuals&mdash;all this builds up into a tangled web that cannot be straightened out rationally or mechanically. The sheer number of various demands and problems forms a barrier that makes it hard for the basic architectural idea to emerge.<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftn6\" name=\"_ftnref6\" title=\"\">[6]</a></div>\r\n	<div style=\"text-align: justify;\">\r\n		<br />\r\n		Alvaro Siza:</div>\r\n	<div style=\"text-align: justify; margin-left: 36pt;\">\r\n		An architectonic proposition, whose aim is to go deep</div>\r\n	<div style=\"text-align: justify; margin-left: 36pt;\">\r\n		into the existing transformation trends,</div>\r\n	<div style=\"text-align: justify; margin-left: 36pt;\">\r\n		into the clashes and strains that make up reality;</div>\r\n	<div style=\"text-align: justify; margin-left: 36pt;\">\r\n		a proposition that intends to be more than</div>\r\n	<div style=\"text-align: justify; margin-left: 36pt;\">\r\n		a passive materialization, refusing to reduce</div>\r\n	<div style=\"text-align: justify; margin-left: 36pt;\">\r\n		that same reality,</div>\r\n	<div style=\"text-align: justify; margin-left: 36pt;\">\r\n		analyzing each of its aspects, one by one,</div>\r\n	<div style=\"text-align: justify; margin-left: 36pt;\">\r\n		that proposition can&rsquo;t find support in a fixed image,</div>\r\n	<div style=\"text-align: justify; margin-left: 36pt;\">\r\n		can&rsquo;t follow a linear evolution&hellip;</div>\r\n	<div style=\"text-align: justify; margin-left: 36pt;\">\r\n		It is more vulnerable as it is true.<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftn7\" name=\"_ftnref7\" title=\"\">[7]</a></div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		The intractability of our work isn&rsquo;t a problem at all, it is actually something marvelous. As the saying goes: to whom much is given, much is expected. Architecture gives form to our shared human life. It is provisional because all the expectations and demands that bear upon a project cannot be rectified in a formulaic way. The architect seeks a resolution, but the criteria, and therefore the outcome, are never simple. Limitations, obstructions, regulations, and requirements push us to a formal solution that had no previous existence. Gio Ponti explained that the architect&rsquo;s thinking is a posteriori, not a priori. The difficulty of our work forces us to invent new relationships, to speak new words. In this way architecture does justice to life.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		If we are not afraid of life, of this irreducible world, we would be thirsting for such architecture, one that recognizes strange order, strange beauty, and strange harmonies as well as simple orders and forms. Familiarity, comprehensibility, clarity, and spectacle can be desirable qualities, but are they sufficient in the end? &ldquo;After all,&rdquo; Antonioni asked, in response to a critique of his films, &ldquo;this difficulty of reading, this lack of clarity, aren&rsquo;t they&mdash;how shall I put it&mdash;a quality?&rdquo;<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftn8\" name=\"_ftnref8\" title=\"\">[8]</a></div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Modern life is shaped by abstract institutions (finance, food, religion, law, politics, science, industry, medicine, education&hellip;). They are disembodied forces, but each of them does have a physical outpost which we call bank, farm, church, court, congress, laboratory, factory, hospital, and school. Each of these architectural programs is the visible outcropping of an invisible conceptual iceberg. If we, as architects, want to shed light on the institutions that define and control modern life&mdash;if we want to do more than house, facilitate, and cover up for them&mdash;what is the best design approach?</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		A work of architecture, in my opinion, does not comment on anything, although it may allude to or elicit many things. Architecture does not denote: is not a semantic system. A work of architecture doesn&rsquo;t symbolize anything. Victor Hugo was right, the book killed architecture as a symbolic system, and we should be grateful for that. The only disembodied representations, the only ideological messages, which architecture continues to specialize in telling are myths and lies. Telling lies is a large part of what architecture does: the 9/11 memorial in New York is a good example. If a story isn&rsquo;t accepted as true, make it bigger, heavier, and more expensive: maybe then people will believe it. But even this &ldquo;brute force&rdquo; ideological application of architecture seems obsolete today, contrasted with the power of digital images, so much more persuasive, with so much less physical effort.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		If an architect wishes to &ldquo;tell truth to power,&rdquo; to represent, in his or her work, the reality of the institutions he or she is serving, including unfavorable aspects, he or she must resort to irony and give the work a double face. An ironic gesture may have a virtuous motive&mdash;it may puncture the lie, point out the falseness of something that is widely accepted as true. But irony is corrosive in architecture. Irony goes against the fundamentally affirmative aspect of construction. Something that is meant to last a long time should be positive, life-affirming. Irony is a personal stance&mdash;an individual&rsquo;s opinion is expressed by it. The architect&rsquo;s or artist&rsquo;s view is emblazoned on an ironic work. In fine art, authorship is central; irony can play a powerful role. In architecture an emphatic assertion of authorship is an obstacle to the work. Ronchamp is a better chapel, one that better serves its purpose of devotion, for pilgrims who have no interest in Le Corbusier. At the ribbon-cutting of a new public building, or when new construction is reported in the popular press, the architect often goes unmentioned, at least in the US. I used to think this was disrespectful; now I think it is very interesting.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		There <em>is</em> a positive but critical stance that architecture can take vis-&agrave;-vis institutions. Each of these institutions exists to serve us&mdash;living, breathing people. When the buildings that embody these institutions are capacious, beautiful, and well built, we affirm that basic fact. The further we stray from this, the more we are lost and our profession is perverted.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		In each type of building there are specific bodily attitudes, movements, stances, and mental/emotional states that are beneficial, that best support the action taking place. For example, in a church a state of reverence and reflection corresponds to certain positions of the body, certain ways that sound reflects, and so on. The architect&rsquo;s design should anticipate and receive that way of occupying a space. In a library one should feel concentration, rumination, intellectual solidarity, daydreaming; these qualities correspond to particular positions and movements of the body, and to certain conditions of light, space, sound, color, and material. Our job is to create the framework for this appropriate emotional encounter.</div>\r\n	<div style=\"text-align: justify;\">\r\n		<br />\r\n		Robert Venturi&rsquo;s <em>Complexity and Contradiction in Architecture</em>, first published in 1962, speaks eloquently in favor of a complex, non-schematic architecture.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify; margin-left: 21pt;\">\r\n		I speak of a complex and contradictory architecture based on the richness and ambiguity of modern experience, including that experience which is inherent in art&hellip; today the wants of program, structure, mechanical equipment, and expression, even in single buildings in simple contexts, are diverse and conflicting in ways previously unimaginable. The increasing dimension and scale of architecture in urban and regional planning add to the difficulties&hellip;</div>\r\n	<div style=\"text-align: justify; margin-left: 21pt;\">\r\n		&hellip;I like elements which are hybrid rather than &ldquo;pure,&rdquo; compromising rather than &ldquo;clean,&rdquo; distorted rather than &ldquo;straightforward,&rdquo; ambiguous rather than &ldquo;articulated,&rdquo; perverse as well as impersonal, boring as well as &ldquo;interesting,&rdquo; conventional rather than &ldquo;designed,&rdquo; accommodating rather than excluding, redundant rather than simple, vestigial as well as innovating, inconsistent and equivocal as well as direct and clear. I am for messy vitality over obvious unity. I include the non sequitur and proclaim the duality.<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftn9\" name=\"_ftnref9\" title=\"\">[9]</a></div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		His position is convincing&mdash;how could one disagree? But &ldquo;by their fruits ye shall know them,&rdquo; and the fruits of the architectural Post-modern movement were spoiled. So to uphold my argument I feel that I must make a distinction between Venturi&rsquo;s position and my own.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		For Venturi, as I understand him, the value of an architectural work lies in the play of associations and meanings. A work of architecture that is complex, for example one that combines unity and polyvalence, simplicity and multiplicity, is better than one that is less complex. His interests are fundamentally formal, as he admits in the book,<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftn10\" name=\"_ftnref10\" title=\"\">[10]</a> and, I would suggest, rhetorical: for him architecture seems to convey meaning in a linguistic way. Elements gather significance through their presence, absence, association, disassociation, distortion, and so on. For Venturi, architecture is capable of creating complex and contradictory propositions. If a tectonic assembly or architectonic composition is not able to convey the meaning, the project may employ symbolism, conventional associations, written words, or ironical juxtaposition of elements of different types and classes.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Venturi has confidence, intelligence, wit, and a remarkable depth of historical references. One walks away from his book as one walks away from a very persuasive, literate person at a dinner party. I met a student like that at Cranbrook: he always had something apropos to offer&mdash;a sharp citation or reference. I was impressed and did what I could to support him&mdash;writing letters of recommendation and inviting him to critiques. But the last review he attended was a disaster. He used his wit to disguise his ignorance of the subject we were addressing. I couldn&rsquo;t help thinking, he seems to know everything but he really doesn&rsquo;t know the most important thing. The value of a conversation, or of a work of architecture, does not lie in the play of references and associations. This becomes obvious when someone crosses a line that should not be crossed&mdash;makes a pun about a family tragedy, for example. When that happens our shocked reaction reveals the existence of something unspoken below the level of conversation.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		In <em>Complexity and Contradiction</em> Venturi advocates using &ldquo;conventional elements in an unconventional way.&rdquo; Non-architectural elements, like a television antenna, are composed in relationship with traditional elements, like a pediment. The result is shocking and troubling. Before knowing anything about architecture, I saw a picture of Venturi&rsquo;s Guild House in an old issue of <em>Life Magazine</em> and felt uneasy about it. Even if architecture were a symbolic system, that does not mean that different kinds of signs can coexist in one proposition.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		The significance of architecture does not reside in the play of allusion, reference, paradox, etc. It is the other way around. The meaning does not lie in the presence of the paradox; the paradox holds (or rather withholds) the meaning. I would like to give an example. I was in Finland in the summer of 2003. One evening I was invited to a sauna with a friend&rsquo;s family. After the sauna we jumped into the lake. It had a muddy bottom; the mud oozed between our toes. I asked my friend&rsquo;s seven-year-old if he liked the sensation. He puzzled over the question for a little while and then told me that he both liked and disliked it. He told me that there is a word in Finnish, with no English translation, which describes this state of both liking and disliking: <em>ristiriitainen</em>. I thought that his response was remarkable: it is still the only Finnish word I know. Back in the US I asked a Finnish friend; he told me that &ldquo;ristiriitainen&rdquo; in fact does have an English equivalent, &ldquo;contradictory.&rdquo; Somehow I hope that the young person&rsquo;s understanding was right&mdash;that the word is fundamentally untranslatable.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		It is not the presence of a paradox per se, but that feeling of liking and disliking at the same time, the feeling of mud between the toes, which we can bring forward as architects. Emotion and intuition manifest themselves in a form, and form offers itself to emotion and intuition.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		I would like to offer a few examples from music. In the first movement of the Mendelssohn <em>Violin Concerto</em>, Anne-Sophie Mutter, who is a bravura performer, pushing the orchestra, relents.<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftn11\" name=\"_ftnref11\" title=\"\">[11]</a> For a moment the confidence is withdrawn. Her playing becomes weak and scratchy, like a child practicing Wohlfahrt exercises. This lasts for a few phrases, and then her playing returns full-force with a crescendo. The result is very playful: she makes herself vulnerable, and when her authority is restored, her strength becomes playful in turn.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Another example: the <em>Goldberg Variations</em>. Listen to Gustav Leonhardt play the aria and the first variation.<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftn12\" name=\"_ftnref12\" title=\"\">[12]</a> Bach&rsquo;s aria is filled with ornaments, whose main purpose, I think, is not to decorate and embellish the theme, as the word ornament would imply. It is to destabilize the meter, to put the tempo divisions into play. Where do the beats fall in the second phrase of the aria&mdash;before, during, or after the ornaments? Often it is impossible to say. The ornaments allow Bach to shape the tempo without rubato, without sentimentality, the way a Tai Chi master moves his energy around.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		In both examples the music establishes something perfect, simple, or direct, with a clear intention, which the composer and performer, working with shared understanding, unravel for a time. Listening, we understand this falling away and recuperation of structure as something significant, and we evaluate the performer by how sensitively this is done (and also by his or her technical perfection). An inflection that is natural and unstudied is always the rarest and most precious. For a connoisseur, inflection is significant because it is difficult. For a music lover it is important because it is acknowledges something we understand deeply&mdash;it points to an emotional truth. As Alvaro Siza wrote in the quote above, &ldquo;It is more vulnerable as it is true.&rdquo;</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		<img src=\"/song/userfiles/images/1(2).jpg\" style=\"width: 156px; height: 145px;\" /></div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		A few examples from architecture. Why does this ceramic figurine, a smiling man riding a hen, terminate the ridges of the official halls and residences in the Forbidden City? One explanation, which I read in a tour guide, is that he represents a historical figure&mdash;an insurrectionist who was hung from the eaves of an official building, reproduced in terra cotta as a warning to others. That doesn&rsquo;t make any sense. This guy and the other creatures on parade with him are as intimidating as teddy bears. What are these cute figures doing in a landscape of power&mdash;of total control&mdash;a landscape so strict that symmetry is absolute along the main axis and plants and trees are excluded? I think that their function is the same as the function of the uplifted roof eaves: without these details the space would become oppressive, unbearable. They give levity, a breath of life. It&rsquo;s like this: a Manchu children&rsquo;s toy sits on the eaves of the center of power, in compensation for the strict control established by the rest of the architectural program&mdash; symmetry, modularity, regularity, and so on. Through a kind of double reflection, the state gains more authority by this absurd figure. It&rsquo;s like the wigs in the House of Parliament and Old Bailey.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Mies&rsquo; Barcelona Pavilion, which might be the most pure, crystalline, and perfect work of modern architecture, is the abstraction of a villa. Most of the functionality of a house, including enclosure and heating, is missing. Only one event was choreographed to take place there: a reception for the King and Queen of Spain. On the back wall of the largest space, which would be the living room if this were a house, where the King and Queen held their reception, is an onyx wall with flamboyant veining. This arrangement is repeated in the Villa Tugendhat. At Tugendhat the onyx veining is even more flame-like. In both places, the onyx wall is located where the fireplace would be, if there were one. The veining is a surrogate for fire, as my friend the architect Chris Bardt, principal of Studio 3Six0 and professor at RISD, pointed out. Mies has given us fire and withdrawn the heat. It would be beside the point to call this a paradox. One feels the cold intensely, sitting and looking at the marble, because the fire is trapped in the stone. And by extension, the entire life of the Pavilion, an immanent life, is trapped on the surfaces of the walls and floors in reflections and shadows.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		In these examples we see playfulness, vulnerability, transmutation, wit, allusion. These are possible because the architect has gone to great effort to define and resolve a field of spatial relationships. The field can be &ldquo;homotopic,&rdquo; characterized by an overriding singular order, as in Mies, or it can be &ldquo;heterotopic,&rdquo; established by the coming-together of dissimilar elements, as in Aalto. These are Foucault&rsquo;s terms, which Dimitri Porphyrios uses in his remarkable book on Aalto, <em>Sources of Modern Eclecticism</em>. Within these highly resolved fields, unexpected qualities and relationships are planted and discovered. All these qualities, taken together, give the work its necessary emotional and intellectual range&mdash;sensitivity, subtlety, joy, carefulness, complexity, precision. These are the qualities I mentioned at the beginning of the lecture. Architecture of this kind is still possible&mdash;it is just difficult.</div>\r\n	<div style=\"text-align: justify;\">\r\n		____</div>\r\n	<div style=\"text-align: justify;\">\r\n		I would like to show you projects by me and my design partners that are recently completed, or still in construction. Hopefully you will see them as evidence of the position I am putting forward. If you judge that my work is not a very good example, if it falls short, that doesn&rsquo;t mean that such an architecture as I&rsquo;m describing isn&rsquo;t possible and worthwhile.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		House for a Classicist and Antiques Restorer, Sea Cliff, Long Island</div>\r\n	<div style=\"text-align: justify;\">\r\n		<img src=\"/song/userfiles/images/2.jpg\" style=\"width: 169px; height: 113px;\" /></div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		The clients, retired schoolteachers, asked me to help them transform their small summer cottage, substandard and falling apart, built in 1917, into a year-round residence. The house was a tiny gable-roofed box on a very small lot, with ad hoc additions, at the bottom of a slope, surrounded by tall trees and neighbor&rsquo;s houses. The clients are very cultured. She teaches and researches Latin and Roman history, received a Rome Prize, and is working on a book about Rome in the Gilded Age. He collects and restores American antique furniture.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Sea Cliff was founded in the 19<sup>th</sup> Century as a summer colony for Methodist religious revival meetings. In a second wave of settlement, merchants built rambling Queen Anne houses with towers and irregular roofscapes. In the 1950&rsquo;s professionals built Modernist houses. Artists moved there in the 1970&rsquo;s and brought a counterculture element. So there has always been something different, eccentric, and not-quite-real about the town in the context of suburban Long Island. If every house is a mind, then the houses of Sea Cliff are daydreaming. They dream varied dreams, from pompous to meek, but most of the houses believe that they are someone else, somewhere else, in some other time. I wanted to give the clients a house that had such a fairy-tale quality. Part of the way I tried to achieve this is the site plan: the path to the house slopes and winds. For such a small lot, the arrival sequence is quite drawn out. One must travel the S-shaped path to the end before one sees the entrance. But the most important aspect of the design, in terms of the fable quality, is a two-story addition. On the second floor is a studio for the classicist, with an irregular faceted skylight. I thought of this element <em>geometrically, architecturally, </em>and<em> allegorically</em>&mdash;as a cylinder, tower, and broken column. Considered <em>geometrically</em>, the skylight slices the cylinder along two planes&mdash;the setback plane of the zoning envelope, and a plane perpendicular to the sun&rsquo;s rays at noon on winter solstice. <em>Architecturally</em> considered, these planes are a-historical. They make the tower less nostalgic. This goes back to an insight that arose from earlier projects, methods of constructions for domes. Almost every dome profile has a historical association: it is impossible to look at an out-bulging dome and not think of an Iranian dome, for instance. Even a purely hemispherical dome is historical. But I discovered that if a hemisphere dome is dented&mdash;if there are flat spots on the surface&mdash;it has no historical association, it becomes just the thing itself, like bruised fruit in a still life. Considered <em>allegorically</em>, the addition is a broken column, like the famous ruined column folly at Desert de Retz: a symbol of time passing, hubris, or fortitude. The classicist/scholar who uses the studio was delighted at the association&mdash;and so was the local architectural review board, since, one block from the house, in a public park, is a Civil War monument in the shape of a broken column. In my opinion, the relationship between the house and the monument is nonsensical. On the interior of the studio the 3x6 joists framing the skylight are exposed, painted white. The effect is at once crude and sophisticated. I was inspired by the work of Smiljan Radic, who used this idea for a house in Vilches, Chile.<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftn13\" name=\"_ftnref13\" title=\"\">[13]</a> Because of the compound miters, this was the most difficult part of the house to construct: the carpenters had to rebuild it three times. No contractor would touch the skylight&mdash;I had to build it myself.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		The original house was built non-reflectively in an ad-hoc manner. It was not very beautiful, as vernacular buildings generally are. In its ugliness the house raised a question I have been pondering for a while: why are vernacular buildings usually so beautiful? One reason, which I first heard expressed by the architect W.G. Clark, is the fitness arising from correction and adjustment over time. In architecture, design requires a long gestation period. There is no way to speed up thinking, even if the production of drawings, forms, and buildings can be accelerated. An arc of thought takes a certain length of time to complete. No one wants to hear this&mdash;not architects, clients, or contractors&mdash;but it is inescapable. Traditional vernacular buildings, subject to modification over time, eventually receive their necessary span of attention. Why, then, was the pre-renovation cottage in Sea Cliff ugly? Perhaps it needed one more &ldquo;turn of the wheel&rdquo; for the accumulated ad hoc decisions to fall into place. I wanted the addition to be, not something extra and aberrant, but rather a way to gather all the elements of the house together into relation and resolve them compositionally. The planes of the skylight are important because they allow the tower to be integrated compositionally with the roof planes of the rest of the house.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Villa for an Industrialist, Shenzhen (2006-2008)</div>\r\n	<div style=\"text-align: justify;\">\r\n		<img src=\"/song/userfiles/images/3.jpg\" style=\"width: 264px; height: 102px;\" /></div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		The project is an interior renovation of a cast concrete villa, one of hundreds of developer houses in a gated community. The three floor plans and the roof structure were designed by the developer in a &ldquo;picturesque&rdquo; way, as independent design problems. As a consequence the structural system is irregular. To carry the loads from floor to floor, the engineer was forced to introduce concrete columns and transfer beams in seemingly random locations. The developer presumed that this structure would be hidden by poch&eacute; and drop ceilings. When my partner, Ahlaiya Yung, and I visited the house we told the client that we would be happy to take the project if she was willing to expose the columns and beams in certain places.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		On the first and second floors we approached the design as a series of installations: each of the rooms has a special ceiling, a meditation on pattern and order. Many ceilings are domes. I thought of the project in a musical way: one encounters a series of domes and patterns as one moves from the entry vestibule to the lobby, living room, and the dining room, and upstairs to the second floor hall (which has a collapsible dome hanging like a ghostly bell within the pre-existing structure). From the hall one can overlook the vestibule dome that one first encountered. Vaults in the bedrooms conclude the sequence: these are made of white plaster with seamless corners. The effect is impossible to photograph: lying in bed it is difficult to see how deep the vault is.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		On the lower level there is a hexagonal mosaic floor made of shattered tiles: I asked the contractor to arrange the tile fragments to create the illusion of curvature. In this way the story of the domes is brought to an end, flattened like a fossil. One passes through a pair of doors into a different type of space: if this were a musical composition it would be the scherzo. Wall tiles are custom-made, slip-cast out of porcelain with very high relief. These walls are capped by a cove that is doubly curved&mdash;which means that it is impossible to lay a regular grid of tiles on the surface. So as the tiles are laid on the cove, each course is rotated clockwise a little more. That allows the tiles to accommodate the curving surface. There are also &frac12; and &frac14; tiles: here the regular grid pattern breaks down. The floor is covered in marble tiles with glass tile strips in an intersecting ripple pattern. The branching columns, which incorporate structural columns required by the ill-fitting dining room above, have integrated light fixtures. The house has many more details and ideas about pattern and order. It took a few years to complete: there are custom furniture pieces as well. China has a reputation for building quickly, so it is at first surprising, but then perhaps understandable, that the client was willing to support such slow work. We seem to attract clients who have become disenchanted by the expediency of the environment that surrounds them. They want someone to work attentively on their own projects.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		M &amp; C Gallery, Hong Kong (completed November 2012)</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		The clients are collectors and dealers in Chinese antique sculptures, artifacts, and paintings, who have run a well-established antiques gallery at this location on Hollywood Road for many years. One partner plays the guqin, the traditional Chinese harp. The project isn&rsquo;t a shop in a conventional sense: they have made only one sale to a walk-in client in 17 years. The gallery is their cultural site. They want to reacquaint contemporary Chinese with their own tradition, and show them how many aspects of ancient Chinese culture are relevant today and can contribute to a cultured and fulfilling life. The furnishings are antique, the teacups and kettles they use are ancient. The clients wish to show people how to live in continuity with their history.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		This brief meant that a normal commercial approach was not appropriate. For example, the clients told us that they do not want to see any products in the space&mdash;no commercial light fixtures, hardware, air conditioning grilles, etc. Not even an electric doorbell.</div>\r\n	<div style=\"text-align: justify;\">\r\n		My business partner Lydia Song had a clear intention for the fa&ccedil;ade: it should be like an eye. Since the clients&rsquo; goal is not to sell things to passers-by, they don&rsquo;t need to fill the storefront with objects. They want to display only one item at a time&mdash;which Lydia located in the pupil of the eye. The store window is ringed by a hammered brass frame, enclosed by a stone cove frame. The door has two peepholes, one at the height of each of the clients. There are storage cabinets and closets everywhere: in the entrance gallery, under the guqin pavilion (a sound-insulated room with glass doors where the client practices and performs the harp), in the main meeting place, the salon, and in the service spaces at the back of the shop. As with every renovation project, there were many limitations and shortcomings to the raw space. Despite the obstacles and irregularities, our goal was to create an interior that was dimensionally resolved. As Aalto once said, famously, his design module is the millimeter, or less. Dimensional resolution is not something esoteric: it means that cabinet divisions align with floor joints, baseboards align, cabinet doors are properly proportioned, and so on. It turns out that that perfection is impossible to achieve. But this is not a problem. The most unexpected and precious qualities arise when regularity must give way. For example, we made the floor tiles in the entrance gallery and salon slightly rectangular, not square. The folding glass doors on the north and south sides of the pavilion have different widths. Ceiling coves do not align with cabinets below. I think that these irregularities will be the most subtle and important aspects of the design. For example, looking to the end of the space from the entrance door, through the layered doors of the guqin pavilion, the differing widths of the doors will create a subtle perspectival illusion. There are many other details that I could describe about the design. For example, in place of an electric doorbell, a door knocker imbedded in the entrance alcove pulls a cord which rings brass &ldquo;butler&rsquo;s bells&rdquo; deep within the space. It is more pleasurable to operate, and more beautiful-sounding, than a buzzer. The light fixtures for the salon are, at the same time, very abstract&mdash;made of geometric solids connecting corner-to-corner, in what the architect John Hejduk, my teacher, called a &ldquo;pointal touch&rdquo;&mdash;and tactile, speckled with exposed fasteners and wires. The clients are grateful that we are working so carefully. The trust that they placed in us is humbling.</div>\r\n	<div style=\"text-align: justify;\">\r\n		<img src=\"/song/userfiles/images/4.jpg\" style=\"width: 519px; height: 360px;\" /></div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Kwan Kee Restaurant, Sanlitun Village, Beijing (2012, opening June 2013)</div>\r\n	<div style=\"text-align: justify;\">\r\n		<img src=\"/song/userfiles/images/5.jpg\" style=\"width: 175px; height: 311px;\" /></div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		This project, a restaurant on the second floor of Nali Patio in Sanlitun district, Beijing, will be completed in a month. It will be open 24 hours a day, serving traditional Cantonese food for breakfast, lunch, and dinner. This means that the space will be occupied in all light conditions. Our goal was to make a space that had the sense of drama and encounter of a grand public concourse, like a train station. Daylight is necessary for this experience. We added as many windows as possible on the south wall; enough sunlight streams in to eliminate the need for electric light during most of the day. We added a mezzanine on the south, glazed wall. When you enter on axis from the north side, you are confronted with two stacked layers, a double frieze, of people, benches, and tables, strongly backlit. At night, seen from the outside, the tableau of diners on two levels will be very dramatic. Our goal is to create a space that people will look very attractive in. As architects know, certain architectural elements, like curving grand stairs, and certain spatial angles, like diagonal views from above, are ideal for people-watching. The effect is theatrical and cinematographic. As you enter, the space opens in a fan shape: there are stairs to left and right, slightly different. To the northwest and northeast the mezzanine level is raised higher than along the south side. Diners sitting on the higher mezzanines feel like they are pressed up against the ceiling: they have a privileged outlook (a trick I learned from Philippe Starck&rsquo;s Paramount Hotel lobby in New York). The view seems like a dramatic camera angle, for example the last scene of <em>Citizen Kane</em>.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		This project also required careful dimensional control. The size and spacing of the battens on the curving walls, the alignment of soffits and edges, the slender steelwork; controlling all these details was the most critical aspect of the construction process. For example, the contractor erroneously built the mezzanine an extra 10 cm deep in plan, measured from the south wall. This 10cm was enough to ruin the sense of openness of the main central space. He obliged us by cutting down the framing and rebuilding the mezzanine. Would that happen in the US? The ceiling was an important surface to tame: as you know ceilings in most commercial spaces are out of control, covered with air conditioning grilles and units, down-lights, sprinklers, exit lights, alarm lights, and who knows what else. We designed the ceiling as a series of independent vaults. All the service elements are located within, or hung from, gaps between the vaults. The main light fixtures are custom-made plaster medallions with wood hoops, handing from the ceiling. They function as indirect light sources&mdash;a ring of LED lights shines upward onto the ceiling vaults. Some light also passes through a baffle to illuminate the sculpted lower surface of the medallion.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		The thinking of the architect, and therefore the work of architecture which traces that thought, moves back and forth from the specific to the general, from concrete to abstract, from the definite to the elusive. There are different tracks for this back-and-forth movement. One is the relationship of means and ends: in the light fixtures at M&amp;C Gallery, the fasteners are needed to create the abstraction of the &ldquo;pointal touch.&rdquo; Another track runs between fact and allusion or association. The faceted skylight of the Sea Cliff House is the consequence of a zoning setback plane plus the winter sun angle&mdash;an equation of two completely different types of facts&mdash;and it is also something allusive, the truncated face of a broken column. One must also consider the repartee between precision and error. Because architecture is a human artifact, and because it is an attempt to resolve completely different, ultimately irreconcilable forces and requirements, it is always imperfect. But architecture, like a human life, is a kind of sublation: contingency and error are transformed into their opposite&mdash;intention and perfection. In a great work of architecture, things are exactly as they should be. If one is not at home with this kind of thinking, the meaning of architecture is restricted to the satisfaction of aims and the achievement of effects.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div>\r\n		<div style=\"text-align: justify;\">\r\n			&nbsp;</div>\r\n		<hr align=\"left\" size=\"1\" width=\"33%\" />\r\n		<div id=\"ftn1\">\r\n			<div style=\"text-align: justify;\">\r\n				<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftnref1\" name=\"_ftn1\" title=\"\">[1]</a> Dirk van den Heuvel and Max Risselada, &ldquo;Introduction: Looking into the Mirror of Team 10&rdquo;, http://www.team10online.org/</div>\r\n		</div>\r\n		<div id=\"ftn2\">\r\n			<div style=\"text-align: justify;\">\r\n				<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftnref2\" name=\"_ftn2\" title=\"\">[2]</a> Ulrich Beck, &ldquo;The Cosmopolitan Society and its Enemies&rdquo;, <em>Theory Culture &amp; Society 19 (1&amp;2)</em>, 2002, p. 17-44.</div>\r\n		</div>\r\n		<div id=\"ftn3\">\r\n			<div style=\"text-align: justify;\">\r\n				<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftnref3\" name=\"_ftn3\" title=\"\">[3]</a> This criterion was added by Professor Mark West, University of Manitoba.</div>\r\n		</div>\r\n		<div id=\"ftn4\">\r\n			<div style=\"text-align: justify;\">\r\n				<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftnref4\" name=\"_ftn4\" title=\"\">[4]</a> Karl Friedrich Schinkel, &ldquo;Notes for a Textbook on Architecture&rdquo;, trans. By Mallgrave, from <em>Das architecktonische Lehrbuch</em>, ed. Goerd Peschken (Berlin: Deutscher Kunstverlag, 1979), p 414-415.</div>\r\n			<div style=\"text-align: justify;\">\r\n				&nbsp;</div>\r\n		</div>\r\n		<div id=\"ftn5\">\r\n			<div style=\"text-align: justify;\">\r\n				<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftnref5\" name=\"_ftn5\" title=\"\">[5]</a> Gio Ponti, <em>In Praise of Architecture</em> (New York: F. W. Dodge Corp., 1960).</div>\r\n		</div>\r\n		<div id=\"ftn6\">\r\n			<div style=\"text-align: justify;\">\r\n				<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftnref6\" name=\"_ftn6\" title=\"\">[6]</a> Alvar Aalto in G&ouml;ran Schildt, ed., <em>Alvar Aalto in his own Words</em> (New York: Rizzoli, 1997), p.108.</div>\r\n		</div>\r\n		<div id=\"ftn7\">\r\n			<div style=\"text-align: justify;\">\r\n				<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftnref7\" name=\"_ftn7\" title=\"\">[7]</a> Alvaro Siza Vieira in Kenneth Frampton, <em>Alvaro Siza: Complete Works</em> (London: Phaidon, 2000), p. 20.</div>\r\n		</div>\r\n		<div id=\"ftn8\">\r\n			<div style=\"text-align: justify;\">\r\n				<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftnref8\" name=\"_ftn8\" title=\"\">[8]</a> From Giorgio Tinazzi, &ldquo;The Gaze and the Story,&rdquo; in Michelangelo Antonioni, <em>The Architecture of Vision: Writings and Interviews on Cinema</em> (Chicago: University of Chicago Press, 2007), p. xiii.</div>\r\n		</div>\r\n		<div id=\"ftn9\">\r\n			<div style=\"text-align: justify;\">\r\n				<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftnref9\" name=\"_ftn9\" title=\"\">[9]</a> Robert Venturi, <em>Complexity and Contradiction in Architecture</em> (New York: Museum of Modern Art, 1966), p.16.</div>\r\n		</div>\r\n		<div id=\"ftn10\">\r\n			<div style=\"text-align: justify;\">\r\n				<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftnref10\" name=\"_ftn10\" title=\"\">[10]</a> Note to the Second Edition: &ldquo;I now wish the title had been <em>Complexity and Contradiction in Architectural Form</em>&hellip;&rdquo; Ibid, p. 14.</div>\r\n		</div>\r\n		<div id=\"ftn11\">\r\n			<div style=\"text-align: justify;\">\r\n				<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftnref11\" name=\"_ftn11\" title=\"\">[11]</a> http://www.youtube.com/watch?v=faoYIW1Hrvs&amp;feature=related</div>\r\n		</div>\r\n		<div id=\"ftn12\">\r\n			<div style=\"text-align: justify;\">\r\n				<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftnref12\" name=\"_ftn12\" title=\"\">[12]</a> http://www.youtube.com/watch?v=iSXj48lkFew</div>\r\n		</div>\r\n		<div id=\"ftn13\">\r\n			<div style=\"text-align: justify;\">\r\n				<a href=\"file:///M:/01%20Lynch+Song/website/01%20Content%20Upload/Writings%20%E8%91%97%E8%BF%B0/Architecture%20as%20a%20Cultural%20Practice%209.doc#_ftnref13\" name=\"_ftn13\" title=\"\">[13]</a> Marc Kristal, <em>Re-Crafted: Interpretations of Craft in Contemporary Architecture and Interiors</em> (New York: Monacelli Press, 2010) p.50.</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-07-02 00:00:00', '2013-10-10 22:12:43', '100', '1', null);
INSERT INTO `t_article` VALUES ('201307040111', '22', '|002|022|', 'Ørestad', 'Ørestad', '', '', null, '', null, null, null, null, null, '2013-07-04 00:00:00', '2013-11-13 14:43:10', '100', '1', null);
INSERT INTO `t_article` VALUES ('201307040112', '6', '|001|006|', '纽约', 'New York', '', '<div>\r\n	#88 35 St.</div>\r\n<div>\r\n	Suite 5C</div>\r\n<div>\r\n	Brooklyn, NY 11232</div>\r\n<div>\r\n	USA</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	T +1 646 744 5010</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	enquiry@lynchandsong.com</div>\r\n', null, '1', '美国纽约布鲁克林区圣马克大街239号', '#88 35 St. Suite 5C Brooklyn, NY 11232 USA', null, null, 'google', '2013-07-04 00:00:00', '2013-08-26 18:32:27', '2', '3', 'google');
INSERT INTO `t_article` VALUES ('201307040113', '6', '|001|006|', '??', 'Beijing', '<div>\r\n	<div>\r\n		?????????180?</div>\r\n	<div>\r\n		????4??1401? &nbsp;</div>\r\n	<div>\r\n		?? 100101</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		T +86 10 6497 4928</div>\r\n	<div>\r\n		F +86 10 8499 0636</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', '<div>\r\n	<div>\r\n		180 Beiyuan Road</div>\r\n	<div>\r\n		Building 4 Room 1401</div>\r\n	<div>\r\n		Chaoyang District</div>\r\n	<div>\r\n		Beijing, China 100101</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		T +86 10 6497 4928</div>\r\n	<div>\r\n		F +86 10 8499 0636</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		enquiry@lynchandsong.com</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '', '?????????180?????4??1401?', '180 Beiyuan Road Building 4 Room 1401 Chaoyang District Beijing', null, null, 'google', '2013-07-15 00:00:00', '2013-11-12 22:40:09', '1', '3', 'baidu');
INSERT INTO `t_article` VALUES ('201307040114', '5', '|001|005|', '彼得·林奇', 'Peter Lynch', '<div>\r\n	<strong>彼得&middot;林奇,&nbsp;合伙人/ 总监</strong></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<div>\r\n		彼得.林奇毕业于纽约库伯联盟学院建筑系。1984年－1990年之间在Steven&nbsp;Holl建筑设计事务所工作。1991年创办了自己的工作室。分别在2003年和2005年获得了纽约建筑联盟颁发的&ldquo;建筑新声奖&rdquo;和&ldquo;建筑先锋奖&rdquo;，并在2004－2005年之间获得美国建筑学院的罗马大奖。2010年，他与宋方舟共同创办Lynch+Song建筑设计工作室，致力于包括家具,室内,建筑和景观在内的各种尺度的设计创新。1996年-2005年之间，他在美国匡溪艺术学院建筑系担任系主任。他曾经在哈佛大学建筑系教授建筑绘画；在罗德岛设计学院、帕森设计学院和纽约城市大学教授建筑设计和建筑历史／理论。2003年－2012年之间，他在加拿大戴尔豪斯大学担任建筑系客座教授。他曾在日本东京、阿根廷科尔多瓦,&nbsp;韩国木浦和西班牙桑坦德带领过多个国际城市设计工作营，也在世界上超过40个建筑学院里做过讲评、讲课和展览。</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<a href=\"mailto:lynch@lynchandsong.com\">lynch@lynchandsong.com</a></div>\r\n', '<div>\r\n	<div>\r\n		<div style=\"text-align: justify\">\r\n			<strong>Peter Lynch, Partner / Director</strong></div>\r\n		<div style=\"text-align: justify\">\r\n			&nbsp;</div>\r\n		<div style=\"text-align: justify\">\r\n			Peter Lynch opened his office &quot;Peter Lynch Architect PLLC&quot; in New York in 1991.&nbsp;<a href=\"http://www.studiothem.com/\">www.studiothem.com</a>&nbsp;He has taught architectural hand drawing at Harvard&nbsp;Graduate School of Design; has taught architectural drawing, history, and design at Parsons The New School, The City College of NY, and RISD since 1992; and has been external examiner at Dalhousie University, Nova Scotia, since 2003. He directed the graduate architecture program at Cranbook Academy of Art, Bloomfield Hills, Michigan from 1996-2005. He has led architecture design workshops in Cordoba Argentina, Mokpo Korea, Santander Spain, and Tokyo, and has exhibited, lectured, and participated in reviews at dozens of architecture schools throughout the world. He was chosen as an &quot;Emerging Voice in Architecture&quot; by the Architectural League of New York in 2003, received a Progressive Architecture Award in 2005, won a Rome Prize in 2004-05, and was a finalist in the Young Architects Program sponsored by PS1/Museum of Modern Art in 2008 (with Gustavo Crembil). Recent projects include a house in Sea Cliff NY (2010) and &quot;Villa for an Industrialist&quot;, published in Marc Kristal,&nbsp;<em>Re:Crafted</em>&nbsp;(New York: Monacelli Press, 2010). Publications include&nbsp;<em>Peter Lynch</em>&nbsp;(Bristol, England: Telos Art Publishing, 2003) and &quot;No Resistance&quot;,&nbsp;<em>Journal of Architecture Education 62:4</em>, May 2009 (with Gustavo Crembil), winner 2009-2010 JAE Best Design as Scholarship Award.</div>\r\n		<div style=\"text-align: justify\">\r\n			&nbsp;</div>\r\n		<div style=\"text-align: justify\">\r\n			<a href=\"mailto:lynch@lynchandsong.com\">lynch@lynchandsong.com</a></div>\r\n		<div style=\"text-align: justify\">\r\n			&nbsp;</div>\r\n	</div>\r\n	<div style=\"text-align: justify\">\r\n		&nbsp;</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, 'upload/temp/2013-07-04/411372916493358.JPG', null, '2013-07-04 00:00:00', '2013-09-18 10:55:37', '1', '3', null);
INSERT INTO `t_article` VALUES ('201307050119', '15', '|015|', '', 'Block Lights', '', '<div>\r\n	<img alt=\"\" src=\"/song/userfiles/images/B+W-Slide 02.png\" style=\"width: 168px; height: 97px;\" /></div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-07-05 00:00:00', '2013-07-05 15:08:19', '100', '1', null);
INSERT INTO `t_article` VALUES ('201307050120', '9', '|002|009|', '铃木食堂北新桥店', 'Suzuki Kitchen Beixinqiao', '', '<div>\r\n	Location: Beixinqiao, Beijing, 2013</div>\r\n<div>\r\n	Scope of Work: Entry addition and interior design</div>\r\n<div>\r\n	Project Architect/Lead Designer: Ahti Westphal</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Located within a new commercial complex in central Beijing above Beixinqiao subway station, the design for this 150 square meter restaurant was conceived as an extension of the surrounding, vernacular, Hutong neighborhoods. Beginning with a raw concrete interior, the space was subdivided into the requisite programmatic areas including: main entrance, employee office and cashier area, waiting area, main dining hall, kitchen, water closet, public sink, and exterior annex. Abstracted from a traditional Siheyuan courtyard dwelling, five interior elevations were shaped around a flexible, open plan according to various atmospheric and functional needs. Throughout the project, the warmth of recycled wood lends a strong presence, providing a sense of refinement to offset the cool coarseness of the existing concrete canvas. A small budget required an exhaustive; yet, rewarding iterative approach to detailing; balancing economic constraints whilst maintaining a rigorous design intent.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	A vermilion red entry door was recessed into a nine square meter cube addition clad in refractory ceramic tiles. Typically used in ovens and kilns, the tiles were chosen for their weight and durability in the, often times, harsh Beijing environment. Also chosen for their soft, inviting materiality, the tiles simultaneously account for the weight restrictions imposed by the subway below. The yellow, earthen color and scale of the tiled cube deliberately differentiates itself from the surroundings while maintaining the distinctly earth bound character of the hutongs. &nbsp;&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Once inside, a large gridded wall of wood and seeded glass rests atop a waiting bench composed of antique hardwood boards reclaimed from heated masonry beds found throughout northern China. Echoing and inverting the masonry shadow walls (yǐng b&igrave;), or privacy screens, found in traditional courtyard homes, the textured glass generates a dynamic and atmospheric veil separating the dining hall from new arrivals.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Through further procession, a ninety degree turn reveals the dining hall as one open space. To the north, a deep wooden wall consolidates the functional requirements of the restaurant into a series of niches, windows, doors, and vents separating and activating the partition between cooking and dining. Beyond a tall glimmering box of polished brass houses an optically ethereal public sink followed by a sliding bathroom door reclaimed from an ancient dwelling. &nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	To the east, daylight permeates a traditional handmade wood framed window exhibiting the skill of the carpenter&rsquo;s hands and an element from Beijing&#39;s local building cannon. &nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	To the South, a linear ribbon window and bar seating and creates a selective and modern form of visual interaction with the subway entrance and pedestrians. Solo diners may enjoy dining while observing the city as theater and passersby are permitted enticing but fleeting glimpses into the heart of the restaurant. &nbsp;&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	The fifth, and final, elevation (tian hua) of the ceiling aims to subtly evoke the feeling of a courtyard space. The polished concrete ceiling plane reflects the room below and a floating white steel truss, concealing lighting tracks, is strung with antique glass pendent lamps. In this form, the rectangular frame of the truss playfully suggests the edges of a traditional courtyard&rsquo;s roof lines with its perpendicular network of laundry lines and cables.</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-07-05 00:00:00', '2013-09-19 22:57:45', '3', '1', null);
INSERT INTO `t_article` VALUES ('201307050121', '11', '|002|011|', 'Scripps', 'Scripps', '', '', null, '1', null, null, null, null, null, '2013-07-05 00:00:00', '2013-07-05 17:12:38', '100', '1', null);
INSERT INTO `t_article` VALUES ('201307080122', '5', '|001|005|', '???', 'Fangzhou Lydia Song', '<div>\r\n	<strong>???,&nbsp;???/ ??</strong></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<div>\r\n		???????????????????????????????.??????&nbsp;Lynch+Song?????????????????????????????512????????????????????????????????2009???????????????????????????????????????????????????????????????????????????????????????????</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<a href=\"mailto:song@lynchandsong.com\">song@lynchandsong.com</a></div>\r\n', '<div>\r\n	<div style=\"text-align: justify\">\r\n		<strong>Fangzhou Lydia Song, Partner / Director</strong></div>\r\n	<div style=\"text-align: justify\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify\">\r\n		Fangzhou Lydia Song received her Master of Architecture in Urban Design from Graduate School of Design in Harvard University (2008). She also holds Bachelor of Architecture and Bachelor of Fine Arts from Rhode Island School of Design (2004). Prior to co-founding Lynch+Song Architectural Design with Peter Lynch in 2010, she has accumulated extensive experience from practicing in large international design firms. While at EDAW, she was one of the lead designers on the Post Earthquake Reconstruction of Longchi Town in Sichuan Dujiangyan. Because of its comprehensive approach to social, economic and environmental development, the project has won the 2009 AIA Asia Urban Design Award. Born in China and educated in the US, Lydia has a deep connection to both cultures, which has generated a cultural sensitivity that greatly influences her work. Upon the establishment of Lynch+Song, she has been exploring the dynamic relationship between design and urban life, in which urban culture inspires design and in turn being shaped by it.</div>\r\n	<div style=\"text-align: justify\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify\">\r\n		<div>\r\n			<a href=\"mailto:song@lynchandsong.com\">song@lynchandsong.com</a></div>\r\n	</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '', null, null, null, 'upload/temp/2013-09-18/391379471952616.PNG', null, '2013-07-08 00:00:00', '2013-11-12 23:29:00', '2', '3', null);
INSERT INTO `t_article` VALUES ('201307080123', '5', '|001|005|', '丛岛', 'Ahti Westphal', '<div>\r\n	<div>\r\n		<strong>丛岛，高级建筑设计师</strong></div>\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', '<div>\r\n	<div style=\"text-align: justify\">\r\n		<strong>Ahti Westphal, Senior Architectural Designer</strong></div>\r\n	<div style=\"text-align: justify\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify\">\r\n		Westphal received his Bachelor of Architecture from the Rhode Island School of Design and a Master of Science in Architecture and Sustainable Design from the University of Minnesota. He is a co-founder of the Cambodian Center for Cham Studies and the Outlier Design Network. Westphal has given talks on the topics of social and environmental sustainability in architecture and international development to audiences in the U.S. and South East Asia. Previously his extensive research and work for the American artist and architect Maya Lin lead him to Cambodia in 2008 where he played a pivotal role in the programing and master planning of a new national park system in the South Cardamom Mountains. Over the past decade he has built and refined a small body of work in the border region of Northern Minnesota. Westphal is committed to the study and promulgation of architectures position in society as a bastion of culture and the intrinsic wealth of knowledge it carries.</div>\r\n	<div style=\"text-align: justify\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify\">\r\n		<a href=\"mailto:westphal@lynchandsong.com\">westphal@lynchandsong.com</a></div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, 'upload/temp/2013-07-08/541373255644958.PNG', null, '2013-07-08 00:00:00', '2013-09-18 10:58:27', '3', '3', null);
INSERT INTO `t_article` VALUES ('201307120130', '9', '|002|009|', '香舍法餐厅', 'Belle Epoque', '', '<div>\r\n	<div style=\"text-align: justify;\">\r\n		&ldquo;Belle Epoque&rdquo; Restaurant, Shenzhen, 2005</div>\r\n	<div style=\"text-align: justify;\">\r\n		Collaborator: Designer Ahlaiya Yung</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		The design of Belle Epoque is a meditation on the industrial era in Continental Europe, a period where tradition met scientific development and handcraft techniques were challenged by industrial processes. In the late 19th Century designers began to explore creative possibilities latent in new methods and materials; the result was a synthesis of artistic sensibility and mechanical power. At this stage, when industrialization showed its potential to dominate society and threaten the natural environment, a counteracting dream, art nouveau, began to take hold&mdash;an expression of the desire for a world dominated and transformed by the organic life force. Our design for Belle Epoque Restaurant expresses the spirit of that complex time in a modern way. &nbsp;The project is a showcase for the tremendous fabrication and craft resources of China today. It draws upon a broad range of fabrication knowledge&mdash;ranging from digital technology to traditional handwork&mdash;and integrates these techniques into a totally designed space. &ldquo;Belle Epoque&rdquo; is both Western and Eastern, traditional and avantgarde, masculine and feminine. It is a fruit of the time we are living in&mdash;a time when complementary approaches are brought together.</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-07-12 00:00:00', '2013-09-19 22:58:55', '8', '1', null);
INSERT INTO `t_article` VALUES ('201308260134', '9', '|002|009|', '卡思契纳餐厅', 'La Cascina Restaurant', '', '<div>\r\n	<div style=\"text-align: justify;\">\r\n		La Cascina Restaurant, Beijing, 2013</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		This restaurant on the second floor of Nali Patio in Sanlitun district was originally planned as a Cantonese caf&eacute;, open 24 hours a day. It was designed to be occupied in all light conditions. Our goal was to make a space with the sense of drama and encounter of a grand public concourse, like a train station. Daylight is central to this experience. We maximized the window area and added a mezzanine on the south wall. Entering from the north, guests are confronted with two stacked layers of booth seating on this south side&mdash;a double-layer frieze of people, benches, and tables, strongly backlit. At night, seen from the outside, the tableau of diners on two levels is dramatic. Our goal was to create a space that people look very attractive in. The layout is theatrical and cinematographic. As one enters, the space opens in a fan-shape, with grand staircases to left and right. On the north side of the space the mezzanine level is three steps higher. Diners sitting here have a privileged outlook&mdash;their view down into the space has the spirit of a movie camera shot, like the last scene of<em> Citizen Kane</em>. We learned this trick from Philippe Starck&rsquo;s lobby of the Paramount Hotel in New York.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		It was important to control the size and spacing of battens on the curving walls, to align soffits and edges, and to minimize the thickness of the mezzanine steelwork. To avoid the chaotic scattering of air conditioning grilles, down-lights, sprinklers, exit lights, fire alarms, security cameras, and so on, which ruins the appearance of ceilings in most commercial spaces, we designed the ceiling as a series of independent vaults. All service elements are located within, or hung from, gaps between the vaults. The main light fixtures are custom-made pendant medallions, which&nbsp;bounce light off of the vaulted ceiling. Some light passes through a baffle in the fixture to illuminate the sculpted plaster surface of the medallion.</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-08-26 00:00:00', '2013-09-19 22:57:34', '2', '1', null);
INSERT INTO `t_article` VALUES ('201308260135', '23', '|002|023|', '匹兹堡城市住宅竞赛', 'Pittsburgh New Urban Housing', '', '<div>\r\n	<div>\r\n		New Urban Housing Competition, Pittsburgh, 1992</div>\r\n	<div>\r\n		Collaborator: Architect William Wilson</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		In an atomized neighborhood of working-class houses, a visitor would come across a group of 2- and 2&frac12;-story homes gathered around a courtyard, an orchard, and a playground. The houses are held together by the spaces they form, the diagonal views they frame, and the interconnected visual play of dormers and wind scoops. These spatial relations could be taken by the residents as an invitation to form&nbsp;a community.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Property is privately owned; however,&nbsp;for the courtyard, orchard, and playground, neighbors have shared easement rights. Neighbors could agree to use these areas cooperatively or could divide them into private strips--or could leave them fallow.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		The standard &ldquo;colonial&rdquo; house plan was modified to allow for flexible family sizes and cohabitation arrangements. By opening or closing a hallway door, the 2&frac12;-story house becomes a 4-bedroom unit, two 2-bedroom units, or one barrier-free 1-bedroom unit with a 3-bedroom unit above. The sloping site allows independent access for second-story units. In fair weather the upper hall, vented by roof scoops, becomes a breezeway.</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-08-26 00:00:00', '2013-09-19 23:02:11', '100', '1', null);
INSERT INTO `t_article` VALUES ('201308260136', '23', '|002|023|', '奈良会议中心', 'Nara Convention Center', '', '<div>\r\n	<div style=\"text-align: justify;\">\r\n		Competition entry for Nara Convention Center, Nara, Japan, 1991</div>\r\n	<div style=\"text-align: justify;\">\r\n		Collaborators: Architects Donna Seftel, Peter Shinoda, William Wilson</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		We proposed housing the required performance halls in separate pillbox-shaped buildings, set in a landscape of berms and gravel walks.&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		The silhouettes of all the elements are bold, but their surfaces are grainy or fuzzy.&nbsp; As in traditional Japanese garden design, the scale of things is called into question by the quality of surfaces and by the arrangement of elements in closed perspective views.&nbsp; Berms are loosely clad in stone, with moss and grass growing between the joints.&nbsp; Halls are wrapped in a curtain wall of trapezoidal glass panels, arranged in a non-periodic (Penrose tile)&nbsp;pattern.&nbsp; These panels are set in web-shaped neoprene gaskets.&nbsp; Nibs projecting from each intersection point in the web enclose anchor rods, tied back to a supporting frame.&nbsp; From a distance, these nibs would form a kind of haze or fuzz around the buildings.&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		The large and medium halls are organized vertically to open up as much of the site as possible.&nbsp; Visitors enter the large hall through a clear-span lobby at ground level, which also serves for receptions and exhibits.&nbsp; A field of escalators rises from the lobby to a series of ambulatories.&nbsp; From here, short runs of stairs, set between pairs of curving trusses and running perpendicular to the axis of the auditorium, lead upward to the seating area.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		The walls of the auditorium are covered in undulating plasterwork.&nbsp; Without side exits, the space loses its scale reference; the stage becomes the focus and the only spatial release.&nbsp; Emergency stairs cascade down the side exterior walls of the structure.</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-08-26 00:00:00', '2013-09-19 23:04:00', '100', '1', null);
INSERT INTO `t_article` VALUES ('201308260137', '23', '|002|023|', '乌鲁伯格文化中心', 'Ulugh Beg Cultural Center', '', '<div>\r\n	<div>\r\n		International Architecture Competition on Ideas for the Ulugh Begh Cultural Centre, Samarkand, Uzbekistan, May 1991</div>\r\n	<div>\r\n		Sponsors: Aga Khan Trust for Culture, USSR Union of Architects, Uzbeck Union of Architects</div>\r\n	<div>\r\n		Collaborators: Architects Meta Brunzema, William Wilson; Artist Heidi Brant</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Site: a shallow valley and archaeological site west of the medieval city center. The sponsors requested proposals for a new cultural center. Our project is an early example of built structure as &ldquo;landform.&rdquo; Portions of the star-shaped site would be covered by vaults with varying cross-sections, containing markets, exhibition halls, and a covered amphitheater for 5000 people. The upper roof surface would be become publicly accessible terrain. One arm of the star extends south to the city&rsquo;s university, another north to a proposed athletic center, and another east to the Registan, a monumental complex of three madrassas.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Tell me, draftsman of the desert,<br />\r\n		Surveyor of the shifting sands,<br />\r\n		Is a confluence of lines<br />\r\n		Stronger than the blowing wind?</div>\r\n	<div>\r\n		(from <em>Octets IX</em>, Osip Mandelstam)</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-08-26 00:00:00', '2013-09-19 23:03:27', '100', '1', null);
INSERT INTO `t_article` VALUES ('201308260138', '23', '|002|023|', '梅尼蒙坦公寓', 'Menilmontant', '', '<div>\r\n	<div>\r\n		<div style=\"text-align: justify;\">\r\n			<div>\r\n				Menilmontant Apartment Building and Garden, Menilmontant, Paris, France, 1995/1997</div>\r\n			<div>\r\n				Type: Invitational Exhibition &ldquo;Jeu de L&rsquo;oie/Jeu de Loi&rdquo;</div>\r\n			<div>\r\n				Client: Claire Robinson&nbsp;&nbsp;&nbsp;</div>\r\n			<div>\r\n				Site Area: 320 sqm</div>\r\n			<div>\r\n				Building Area: 960 gross sqm</div>\r\n			<div>\r\n				Collaborator: Artist Dagmar Frinta</div>\r\n			<div>\r\n				&nbsp;</div>\r\n			<div>\r\n				As part of an exhibit to raise awareness about demolition, gentrification and social displacement in the Menilmontant district of Paris, we proposed a small walk-up apartment building on the site of a newly demolished building. The project carried different lines of research forward: investigation into new housing types, new types of concrete formwork, and development of precast concrete facade units. &nbsp;</div>\r\n			<div>\r\n				&nbsp;</div>\r\n			<div>\r\n				<div>\r\n					The building is supported by north-south bearing walls in reinforced concrete.&nbsp; Floor slabs spanning between walls are concrete, cast in fabric forms. Closely-spaced trusses temporarily bridge between the bearing walls to support the fabric.&nbsp; The resulting floor slab has a corrugated surface on its underside. The corrugations or &ldquo;bellies&rdquo; &nbsp;increase the structural depth of the slab at midspan and scatter the southern light entering the apartments.</div>\r\n				<div>\r\n					&nbsp;</div>\r\n				<div>\r\n					&nbsp;</div>\r\n				<div>\r\n					In the garden on the south side, trees are to be weeping cherry, ground cover is moss and ivy, and shrubs are boxwood.&nbsp; Benches and walks are to be made from materials reclaimed from demolished buildings in the neighborhood.&nbsp; The gardener/stonecutter/superintendent would maintain the grounds, carve the benches, and live in the back apartment, whose bedroom is above the gardening shed.</div>\r\n				<div>\r\n					&nbsp;</div>\r\n				<div>\r\n					As part of an exhibit to raise awareness about demolition, gentrification and social displacement in the Menilmontant district of Paris, we proposed a small walk-up apartment building on the site of a newly demolished building. The project carried two lines of research forward: investigation into new housing types and development of precast concrete facade units.</div>\r\n				<div>\r\n					&nbsp;</div>\r\n				<div>\r\n					The plan/section has two important characteristics:</div>\r\n				<div>\r\n					&nbsp;</div>\r\n				<div>\r\n					1)&nbsp; Major rooms with south exposure are 11&rsquo; 4&rdquo; cubes; other rooms are 8&rsquo; 6&rdquo; high.&nbsp; The living room of a typical unit is raised or lowered four steps to accommodate the shifting section</div>\r\n				<div>\r\n					&nbsp;</div>\r\n				<div>\r\n					2)&nbsp; Units may be reorganized in two ways: one-bedroom units can be divided into two apartments, and rooms may be swapped between apartments which adjoin in plan or section. A few possible modifications are shown in the plans, in dotted lines.&nbsp; We hope that such a building could become a home for extended families; would become, in some ways, a colony, as units are combined and extended, and the entire layout is reconfigured.</div>\r\n				<div>\r\n					&nbsp;</div>\r\n				<div>\r\n					The building is supported by paired CMU bearing walls, which enclosed the stairways and bathroom stacks.&nbsp; Slabs spanning between walls are to be cast in tarpaulins, slung between temporary trusses.&nbsp; The resulting &ldquo;bellies&rdquo; on the underside of a slab increase its effective depth, without requiring additional concrete; and would help modulate the southern light entering the apartments.</div>\r\n				<div>\r\n					&nbsp;</div>\r\n				<div>\r\n					Elevations are self-supporting, non-load-bearing rain screens built of special concrete blocks.&nbsp; These can be laid up regularly in a running bond, or in such a way that a slight eccentricity mounts, so that the blocks from arched openings.&nbsp; Clay cylinders with annular drip channels are stacked in the irregular spaces between the blocks.&nbsp; Vines and wildflowers would hopefully grow in the chinks.</div>\r\n				<div>\r\n					&nbsp;</div>\r\n				<div>\r\n					In the garden on the south side, trees are to be weeping cherry, ground cover is moss and ivy, and shrubs are boxwood.&nbsp; Benches and walks are to be made from materials reclaimed from demolished buildings in the neighborhood.&nbsp; The gardener/stonecutter/superintendent would maintain the grounds, carve the benches, and live in the back apartment, whose bedroom is above the gardening shed.</div>\r\n				<div>\r\n					&nbsp;</div>\r\n			</div>\r\n			<div>\r\n				&nbsp;</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-08-26 00:00:00', '2013-09-19 23:05:07', '100', '1', null);
INSERT INTO `t_article` VALUES ('201308260139', '23', '|002|023|', '布什维克校园', 'Bushwick', '', '<div>\r\n	<div>\r\n		<div style=\"text-align: justify;\">\r\n			Bushwick Community College, High School &amp; Day Care Center, 1992</div>\r\n		<div style=\"text-align: justify;\">\r\n			Bushwick, Brooklyn, New York, USA</div>\r\n		<div style=\"text-align: justify;\">\r\n			Type: Competition Proposal</div>\r\n		<div style=\"text-align: justify;\">\r\n			Client: Architectural League of New York</div>\r\n		<div style=\"text-align: justify;\">\r\n			Design Team: William Wilson, Bill Sharples, Cory Denningham, Anna Liu</div>\r\n		<div style=\"text-align: justify;\">\r\n			&nbsp;</div>\r\n		<div style=\"text-align: justify;\">\r\n			In 1992 the Architectural League of New York invited proposals for a vacant triangular site in Bushwick, Brooklyn. The site was bordered by a wastepaper dump, police headquarters, public elementary school, and sweater factory. The largest empty lot in central Bushwick was one block away. At the time, this neighborhood in New York City was suffering from poverty, unemployment, and disinvestment.</div>\r\n		<div style=\"text-align: justify;\">\r\n			&nbsp;</div>\r\n		<div style=\"text-align: justify;\">\r\n			We proposed a high school and day care center for the triangular site.&nbsp; Entrances to day care, gymnasium, auditorium, and student counseling offices would face a central bow-tie-shaped space. Fences and gates divide the central courtyard from adjacent streets, as per traditional NYC public schools.</div>\r\n		<div style=\"text-align: justify;\">\r\n			&nbsp;</div>\r\n		<div style=\"text-align: justify;\">\r\n			On the adjacent large parcel we proposed a small community college.&nbsp; U-shaped academic buildings would create an upper and lower quadrangle, tied together by a garland of arcades and low-rise administrative and community service buildings.</div>\r\n		<div style=\"text-align: justify;\">\r\n			&nbsp;</div>\r\n		<div style=\"text-align: justify;\">\r\n			We proposed a construction system which could employ unskilled local residents as well as unionized tradespeople. Perimeter bearing walls were to be made of precast M-shaped concrete blocks, stacked in a running bond, joined by vertical post-tensioned rods. These blocks would be installed by skilled tradespeople. Cavities within these precast units would be filled with recycled rubble brick and masonry. The infill work would be performed by community residents.</div>\r\n		<div style=\"text-align: justify;\">\r\n			&nbsp;</div>\r\n	</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-08-26 00:00:00', '2013-09-19 23:06:13', '100', '1', null);
INSERT INTO `t_article` VALUES ('201308260140', '23', '|002|023|', '柯米拉斯城市设计', 'Comillas', '', '<div>\r\n	<div>\r\n		<div style=\"text-align: justify;\">\r\n			Project: Comillas Rural/Urban Design Proposal</div>\r\n		<div style=\"text-align: justify;\">\r\n			Location: Comillas, Spain</div>\r\n		<div style=\"text-align: justify;\">\r\n			Year: July 1995 &amp; January 1997</div>\r\n		<div style=\"text-align: justify;\">\r\n			Type: Design Proposal</div>\r\n		<div style=\"text-align: justify;\">\r\n			Client: Taller de Architectura en Santander</div>\r\n		<div style=\"text-align: justify;\">\r\n			Collaborator: Artist Dagmar Frinta (gouache painting)</div>\r\n		<div style=\"text-align: justify;\">\r\n			&nbsp;</div>\r\n		<div style=\"text-align: justify;\">\r\n			Site: pastureland on the western slope of a valley in Comillas, Spain, directly south of the Bay of Biscay. The owner of the land planned to build a conventional suburban subdivision. As an alternative, we offered a set of rules for laying out streets and lots over time. One of our goals was to encourage flexibility and gradual adjustment of the street/lot layout&mdash;to allow the district to evolve in a quasi-historical manner. Another goal was to find a settlement pattern that integrated residential and agricultural uses.</div>\r\n		<div style=\"text-align: justify;\">\r\n			Proposed growth rules:</div>\r\n		<div style=\"text-align: justify;\">\r\n			&nbsp;</div>\r\n		<div style=\"text-align: justify;\">\r\n			1. No construction would be permitted on the valley ridge, in gullies, or on the valley floor.&nbsp; Existing farm buildings on the hilltops would remain.</div>\r\n		<div style=\"text-align: justify;\">\r\n			&nbsp;</div>\r\n		<div style=\"text-align: justify;\">\r\n			2. A collector road would be laid out 10m below the highest elevation on the site, following the contour of the land.&nbsp; Within 40m of the collector road, at three hilltops on the site, five-story apartment buildings with ground-floor shops would be built.&nbsp; These buildings would be oriented perpendicular to the slope in a radial configuration.&nbsp;</div>\r\n		<div style=\"text-align: justify;\">\r\n			&nbsp;</div>\r\n		<div style=\"text-align: justify;\">\r\n			3. The developer would establish residential building lots by building access roads, branching off the collector road. These would be built gradually and incrementally, for example over a span of ten years. These roads would spiral down the valley at a slope of 10% to 12%. Single-family houses, maximum 2 1/2 stories tall, would be permitted within 8m of the downhill side of the road.</div>\r\n		<div style=\"text-align: justify;\">\r\n			&nbsp;</div>\r\n		<div style=\"text-align: justify;\">\r\n			4. End walls of buildings need to align with each other. The first vacation house would need to align with the end wall of an apartment building at the hilltop; the second vacation house would need to align with or abut the end wall of the first house: and so on. In this way the development would spread down the slope.</div>\r\n		<div style=\"text-align: justify;\">\r\n			&nbsp;</div>\r\n		<div style=\"text-align: justify;\">\r\n			5. Access roads would be permitted no closer than 70m together, measured perpendicular to the slope.&nbsp; This rule creates green spaces between spiraling bands of housing. These green spaces could be used as pastureland.&nbsp; Crossed by footpaths, they would extend from the higher-density apartment buildings at the hilltops to the valley floor.</div>\r\n		<div style=\"text-align: justify;\">\r\n			&nbsp;</div>\r\n		<div style=\"text-align: justify;\">\r\n			As a sample apartment building, we proposed a building with single-loaded open-air circulation and a split section. 1) Each apartment has 3.6-meter-high major rooms and 2.6 meter-high minor rooms. 2) Covered walkways on the south fa&ccedil;ade, which also act as sunscreens, are lower than adjacent units to ensure privacy. The eye level of a passer-by is below the window sill height of adjacent apartments. 3) Elevators, corridors and stairs are integrated. The layout encourages residents to use both elevator and stairs. 4) We proposed cladding the buildings in precast concrete fa&ccedil;ade blocks. Dry-laid units would be joined to each other by post-tensioned rods.</div>\r\n	</div>\r\n	<div>\r\n		&nbsp;</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-08-26 00:00:00', '2013-09-19 23:08:14', '100', '1', null);
INSERT INTO `t_article` VALUES ('201308260141', '8', '|002|008|', '海崖小筑', 'Sea Cliff House', '', '<div>\r\n	<div style=\"text-align: justify;\">\r\n		Sea Cliff House</div>\r\n	<div style=\"text-align: justify;\">\r\n		Village of Sea Cliff, New York, 2012</div>\r\n	<div style=\"text-align: justify;\">\r\n		Project Architect: Kate Cahill</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		This addition/interior renovation completely transformed a small cottage in a heavily wooded neighborhood on Long Island Sound. A cramped beach house built in 1917 on a steeply sloping lot was re-shaped into a year-round residence for a classicist and a furniture restorer. A sloping path winds from the parking area past a sunken terrace. The entrance porch, initially hidden from view by a cylindrical tower, is revealed at the end of the path.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		The two-story tower with sloping skylight evokes the spirit of a nearby monument, a broken column. On the upper floor of the tower, the scholar&rsquo;s studio overlooks Hempstead Harbor and a neighborhood of eccentric Victorian houses. White light floods into the studio through a polycarbonate skylight, composed of two sloping planes: one perpendicular to the sun at noon on winter solstice, the other parallel to the setback plane of the zoning envelope. As a visitor walks through this modestly-sized house, he or she is surprised by long diagonal views that expand the sense of space. The lead carpenter, Carmine Tufano, collaborated on the design of the interior and was responsible for its dramatic spatial transformation. Kate Cahill, the project architect, was instrumental in the architectural realization of the project.</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-08-26 00:00:00', '2013-09-19 23:00:00', '1', '1', null);
INSERT INTO `t_article` VALUES ('201308260142', '9', '|002|009|', '企业家私宅 I', 'Villa For An Industrialist I', '', '<div>\r\n	<div style=\"text-align: justify;\">\r\n		Villa for an Industrialist I, Shenzhen, 2009</div>\r\n	<div style=\"text-align: justify;\">\r\n		Collaborator: Designer Ahlaiya Yung</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		General text: This interior renovation of a conventional suburban villa was an exploration of craft, geometry, and ornament. Installations on the ceilings, floors, and walls are built up of hundreds of custom-fabricated multiple elements. The patterns have a high degree of variation within repetition. As visitors pass from the entry vestibule to the most private spaces of the house, they discover various types of domes. We structured the visitors&rsquo; encounter with materials and forms in a musical way. One goal of the project was to demonstrate the high level of craft still existing in China.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-08-26 00:00:00', '2013-09-19 22:57:58', '4', '1', null);
INSERT INTO `t_article` VALUES ('201308260143', '23', '|002|023|', '匡溪夏日音乐节', 'Cranbrook Festival', '', '<div>\r\n	<div style=\"text-align: justify;\">\r\n		Cranbrook Festival Project, Bloomfield Hills, Michigan, 2005</div>\r\n	<div style=\"text-align: justify;\">\r\n		Collaborator: Architect Gustavo Crembil</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		The central quad of Cranbrook Academy of Art, a landmark school of fine and applied arts founded in 1932 by Finnish architect Eliel Saarinen, was planned to host an annual summer dance and music festival. A demountable orchestra enclosure (&ldquo;OE&rdquo;) &nbsp;with a translucent tension membrane roof was to close the southern end of Triton Pools&mdash; an axis of cascading reflecting pools bordered by chestnut trees. Eight sponsors&rsquo; pavilions (&ldquo;brellas&rdquo;) would dot the lawn. Since walls, buildings and trees restrict the site of the OE, a unique &ldquo;ship in a bottle&rdquo; approach&nbsp;was planned for erection and de-installation. Designs for the OE and &ldquo;brellas&rdquo; would&nbsp;incorporate a number of green and fair trade provisions. The Cranbrook Festival Project was never funded.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		Main Orchestra Enclosure: steel frame w/ 6500 sq.ft. PVDF/PVDF structural fabric enclosure. This fabric, which is 60% translucent,&nbsp;was recently employed in Europe. Because substrate and coating are identical, the fabric is less prone to delamination and is easily recyclable. The internal frame supporting the fabric enclosure is composed of four cones attached to corners of a collapsible trestle. The trestle, which also supports stage lighting, is made of two A-frames connected by cross beams. Modular acoustical panels, made of stressed-skin wood veneer, line the back of the stage.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		&ldquo;Brella&rdquo; Sponsors&rsquo; Pavilions: demountable tubular steel frames with woven recycled PET cladding. The complex shape of the &ldquo;brella,&rdquo; a vertical flaring trumpet with a rippled edge, is generated by joining curving annular bands of constant radius edge-to-edge. The similarity to a flower is no coincidence, since certain natural forms, like the cone of a morning glory, are generated by analogous growth patterns. Early full-scale test bands in woven palm were prepared by an indigenous community of weavers in Cordoba, Argentina and shipped to Cranbrook for prototypes and testing. The weavers were to have fashioned the final panels out of PET strips, made from recycled water bottles. Cooperatives of recyclers in Rosario and Cordoba offered to gather bottles and prepare the plastic strips. Our goal was to use community-based production as a seed for local economic development.&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-08-26 00:00:00', '2013-09-02 08:24:24', '100', '1', null);
INSERT INTO `t_article` VALUES ('201308270144', '8', '|002|008|', '承德高尔夫俱乐部', 'Chengde Golf Club', '', '', null, '1', null, null, null, null, null, '2013-08-27 00:00:00', '2013-09-19 23:00:10', '2', '1', null);
INSERT INTO `t_article` VALUES ('201308270145', '23', '|002|023|', '江南馆街遗址保护及展示方案', 'Chengdu Heritage Protection and Exhibition', '', '', null, '1', null, null, null, null, null, '2013-08-27 00:00:00', '2013-09-19 23:10:08', '100', '1', null);
INSERT INTO `t_article` VALUES ('201308270146', '9', '|002|009|', '苦艾酒俱乐部', 'Absinthe Club', '', '<div style=\"text-align: justify;\">\r\n	Absinthe Club, Shenzhen, 2012</div>\r\n<div style=\"text-align: justify;\">\r\n	&nbsp;</div>\r\n<div style=\"text-align: justify;\">\r\n	Private club for the growing circle of absinthe drinkers in Shenzhen. Entry vestibule, caf&eacute;, salon, restaurant, arcade with boutiques for name-brand luxury goods, exhibition/cultural event hall, consulting rooms for fashion consultants and personal stylists. Visitors encounter four frescoes dedicated to the seasons: summer (red), spring (green), winter (blue),&nbsp;fall (yellow).</div>\r\n', null, '1', null, null, null, null, null, '2013-08-27 00:00:00', '2013-09-19 22:58:33', '6', '1', null);
INSERT INTO `t_article` VALUES ('201308270147', '8', '|002|008|', '亚克林业总部', 'Ark Forestry Headquarter', '', '', null, '1', null, null, null, null, null, '2013-08-27 00:00:00', '2013-09-19 23:00:43', '4', '1', null);
INSERT INTO `t_article` VALUES ('201309010148', '9', '|002|009|', '十号沙龙', 'No. 10 Salone', '', '<div>\r\n	<div>\r\n		No. 10 Salone, Central, Hong Kong, 2009</div>\r\n	<div>\r\n		Collaborator: Designer Ahlaiya Yung</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		No. 10 Salone is a private club&mdash;a refuge for reflective businesspeople, artists, and professionals within the clamor of Central Hong Kong. Passing through the massive, hatch-like front door, one feels as if one has entered another space and time. The noise and traffic of Arbuthnot Road, visible through the window, seems distant and unreal, as if one has dropped twenty fathoms under the sea. Ahlaiya Yung designed custom dining tables, chairs, and side tables and directed/commissioned the mural design.</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', null, '1', null, null, null, null, null, '2013-09-01 00:00:00', '2013-09-19 22:58:44', '7', '1', null);
INSERT INTO `t_article` VALUES ('201309190149', '7', '|001|007|', '谢英俊', 'Hsieh Yingjun', '', '', null, '1', null, null, null, null, null, '2013-09-19 23:14:15', '2013-09-19 23:16:07', '1', '3', null);
INSERT INTO `t_article` VALUES ('201309190150', '7', '|001|007|', '北京绿十字', 'Green Cross Beijing', '', '', null, '1', null, null, null, null, null, '2013-09-19 23:15:41', '2013-09-19 23:16:15', '2', '3', null);

-- ----------------------------
-- Table structure for `t_article_category`
-- ----------------------------
DROP TABLE IF EXISTS `t_article_category`;
CREATE TABLE `t_article_category` (
  `oid` varchar(32) NOT NULL,
  `objtype` varchar(100) DEFAULT NULL COMMENT '同文章表中type',
  `title` varchar(300) DEFAULT NULL,
  `etitle` varchar(300) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `ordinal` int(11) DEFAULT NULL COMMENT '按升序排列',
  `status` int(11) DEFAULT NULL COMMENT '0无效 1有效 默认1',
  `pid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of t_article_category
-- ----------------------------
INSERT INTO `t_article_category` VALUES ('1', '2', '关于', 'About', null, null, null, '1', null);
INSERT INTO `t_article_category` VALUES ('10', '15', '产品', 'Products', null, null, null, '1', '2');
INSERT INTO `t_article_category` VALUES ('11', '16', '研究', 'Research', null, null, null, '1', '2');
INSERT INTO `t_article_category` VALUES ('12', '17', '椅子', 'Seating', null, null, null, '1', '10');
INSERT INTO `t_article_category` VALUES ('13', '18', '桌子', 'Tables', null, null, null, '1', '10');
INSERT INTO `t_article_category` VALUES ('14', '27', '储物', 'Storage', null, null, null, '1', '10');
INSERT INTO `t_article_category` VALUES ('15', '23', '灯具', 'Lighting', null, null, null, '1', '10');
INSERT INTO `t_article_category` VALUES ('16', '26', '洁具', 'Bath', null, null, null, '1', '10');
INSERT INTO `t_article_category` VALUES ('17', '28', '装置', 'Installations', null, null, null, '1', '10');
INSERT INTO `t_article_category` VALUES ('18', '25', '饰面', 'Finishes', null, null, null, '1', '10');
INSERT INTO `t_article_category` VALUES ('19', '24', '金工', 'Hardware', null, null, null, '1', '10');
INSERT INTO `t_article_category` VALUES ('2', '3', '作品', 'Work', null, null, null, '1', null);
INSERT INTO `t_article_category` VALUES ('20', '', '北京', 'BEIJING', null, null, null, '1', '6');
INSERT INTO `t_article_category` VALUES ('21', '', '纽约', 'NEWYORK', null, null, null, '1', '6');
INSERT INTO `t_article_category` VALUES ('22', '29', '城市设计', 'Urban Design', null, null, null, '1', '2');
INSERT INTO `t_article_category` VALUES ('23', '19', '项目档案', 'Archive', null, null, null, '1', '2');
INSERT INTO `t_article_category` VALUES ('3', '4', '著述', 'Writings', null, null, null, '1', null);
INSERT INTO `t_article_category` VALUES ('4', '7', '公司', 'Practice', null, null, null, '1', '1');
INSERT INTO `t_article_category` VALUES ('5', '8', '人员', 'People', null, null, null, '1', '1');
INSERT INTO `t_article_category` VALUES ('6', '9', '联系', 'Contact', null, null, null, '1', '1');
INSERT INTO `t_article_category` VALUES ('7', '10', '合作', 'Collaboration', null, null, null, '1', '1');
INSERT INTO `t_article_category` VALUES ('8', '13', '建筑', 'Architecture', null, null, null, '1', '2');
INSERT INTO `t_article_category` VALUES ('9', '14', '室内', 'Interiors', null, null, null, '1', '2');

-- ----------------------------
-- Table structure for `t_attachments`
-- ----------------------------
DROP TABLE IF EXISTS `t_attachments`;
CREATE TABLE `t_attachments` (
  `oid` varchar(32) NOT NULL,
  `objid` varchar(32) DEFAULT NULL COMMENT '业务实体id',
  `nodepath` varchar(300) DEFAULT NULL COMMENT 'Tree Node Path',
  `moduleid` varchar(32) DEFAULT NULL COMMENT '模块id',
  `uri` longtext COMMENT '附件路径',
  `title` longtext COMMENT '标题',
  `sdesc` longtext COMMENT '内容',
  `ordinal` double DEFAULT '100' COMMENT '序号',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `isvisible` int(11) DEFAULT '0' COMMENT '是否首页展示',
  `width` int(11) DEFAULT '0' COMMENT '宽',
  `heigh` int(11) DEFAULT '0' COMMENT '高',
  `status` int(11) DEFAULT NULL COMMENT '0无效 1有效 默认1',
  PRIMARY KEY (`oid`),
  KEY `idx_attachments_objid` (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_attachments
-- ----------------------------
INSERT INTO `t_attachments` VALUES ('aae0243d3f3e084a013f424cc7a80003', '201306140070', '|002|008|', '1', 'upload/temp/2013-06-14/481371206892528.PNG', '03-icon.png', null, '0', null, '1', '1', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f4d42e7013f502d82ae0002', '201306140070', '|002|008|', '1', 'upload/temp/2013-06-17/281371439721824.PNG', '01 icon.png', null, '1', null, '1', '2', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f527a28013f552cec280000', '201306170076', '|002|009|', '1', 'upload/temp/2013-06-18/461371523572371.PNG', '03 icon.png', null, '0', null, '1', '2', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f527a28013f55de4f990018', '201306140070', '|002|008|', '4', 'upload/temp/2013-06-18/591371535195262.PNG', '01 slide.png', null, '4', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f527a28013f56712e3b002c', '201306180079', '|002|009|', '1', 'upload/temp/2013-06-18/401371544822762.PNG', '01 icon.png', null, '0', null, '1', '1', '1', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f527a28013f5699fa33002e', '201306180079', '|002|009|', '4', 'upload/temp/2013-06-18/241371547493918.PNG', '02 slide.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f527a28013f569dd5710030', '201306180079', '|002|009|', '4', 'upload/temp/2013-06-18/291371547746731.PNG', '01 slide.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f527a28013f5b06535d0039', '201306190082', '|002|011|', '4', 'upload/temp/2013-06-19/011371621674121.PNG', '01 slide.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f527a28013f5b06535d003a', '201306190082', '|002|011|', '4', 'upload/temp/2013-06-19/011371621679449.PNG', '02 slide.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f527a28013f5b06535d003b', '201306190082', '|002|011|', '4', 'upload/temp/2013-06-19/011371621684840.PNG', '03 slide.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f527a28013f5b1b56f1003c', '201306190082', '|002|011|', '1', 'upload/temp/2013-06-19/241371623083809.PNG', '01 icon.png', null, '0', null, '1', '1', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f527a28013f5b4f5aad003d', '201306190082', '|002|011|', '1', 'upload/temp/2013-06-19/211371626492699.PNG', '02 icon.png', null, '1', null, '1', '1', '1', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f527a28013f75a0f992004a', '201306140070', '|002|008|', '1', 'upload/temp/2013-06-24/001372068045002.PNG', '02-icon.png', null, '2', null, '1', '1', '1', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fa7b5f1f30003', '201307040111', '|002|022|', '1', 'upload/temp/2013-07-04/231372908211529.PNG', 'icon 01.png', null, '0', '2013-11-13 14:43:10', '1', '0', '0', '1');
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fa7b5f1f30005', '201307040111', '|002|022|', '4', 'upload/temp/2013-07-04/241372908243373.PNG', 'slide 01.png', null, '0', '2013-11-13 14:43:10', '1', '0', '0', '1');
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fa7b5f1f30006', '201307040111', '|002|022|', '4', 'upload/temp/2013-07-04/241372908247498.PNG', 'slide 02.png', null, '1', '2013-11-13 14:43:10', '1', '0', '0', '1');
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fa7b5f1f30007', '201307040111', '|002|022|', '4', 'upload/temp/2013-07-04/241372908251842.PNG', 'slide 03.png', null, '2', '2013-11-13 14:43:10', '1', '0', '0', '1');
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fa7b5f1f30008', '201307040111', '|002|022|', '4', 'upload/temp/2013-07-04/241372908257139.PNG', 'slide 04.png', null, '3', '2013-11-13 14:43:10', '1', '0', '0', '1');
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fa7b5f1f30009', '201307040111', '|002|022|', '4', 'upload/temp/2013-07-04/241372908259389.PNG', 'slide 05.png', null, '4', '2013-11-13 14:43:10', '1', '0', '0', '1');
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fa7b5f1f3000a', '201307040111', '|002|022|', '4', 'upload/temp/2013-07-04/241372908264498.PNG', 'slide 06.png', null, '5', '2013-11-13 14:43:10', '1', '0', '0', '1');
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fa7b5f1f3000b', '201307040111', '|002|022|', '4', 'upload/temp/2013-07-04/241372908275139.PNG', 'slide 08.png', null, '6', '2013-11-13 14:43:10', '1', '0', '0', '1');
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fa7b5f1f3000c', '201307040111', '|002|022|', '4', 'upload/temp/2013-07-04/241372908269233.PNG', 'slide 07.png', null, '7', '2013-11-13 14:43:10', '1', '0', '0', '1');
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fa8333788000f', '201307040114', '|001|005|', '', 'upload/temp/2013-07-04/411372916493358.JPG', 'Peter-Lynch(1).jpg', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fad087a530022', '201307050119', '|015|', '4', 'upload/temp/2013-07-05/121372997559801.PNG', 'Slide 01.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fad087a530023', '201307050119', '|015|', '4', 'upload/temp/2013-07-05/121372997562442.PNG', 'Slide 02.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fad7d743f0024', '201307050119', '|015|', '4', 'upload/temp/2013-07-05/201373005230473.PNG', 'Color-Slide 03.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fad7d743f0025', '201307050119', '|015|', '4', 'upload/temp/2013-07-05/201373005231395.PNG', 'Color-Slide 04.png', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fada3e5300026', '201307050119', '|015|', '2', 'upload/temp/2013-07-05/021373007762832.PNG', 'Icon B+W 01.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fada8fa850027', '201307050119', '|015|', '3', 'upload/temp/2013-07-05/081373008093067.PNG', 'Icon Color 02.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fada8fa850028', '201307050119', '|015|', '3', 'upload/temp/2013-07-05/081373008091707.PNG', 'Icon Color 01.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fadc90bcf0029', '201307050120', '|002|009|', '1', 'upload/temp/2013-07-05/311373009512348.PNG', '01 icon.png', null, '0', null, '1', '2', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fadf3a7960035', '201307050120', '|002|009|', '4', 'upload/temp/2013-07-05/291373012944785.PNG', '01 slide.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fadf3a7960036', '201307050120', '|002|009|', '4', 'upload/temp/2013-07-05/291373012950254.PNG', '02 slide.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fadf3a7960037', '201307050120', '|002|009|', '4', 'upload/temp/2013-07-05/291373012955317.PNG', '03 slide.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fadf3a7960038', '201307050120', '|002|009|', '4', 'upload/temp/2013-07-05/291373012960676.PNG', '04 slide.png', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fadf3a7960039', '201307050120', '|002|009|', '4', 'upload/temp/2013-07-05/291373012965395.PNG', '05 slide.png', null, '4', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fadf3a796003a', '201307050120', '|002|009|', '4', 'upload/temp/2013-07-05/291373012969457.PNG', '06 slide.png', null, '5', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fadf3a796003b', '201307050120', '|002|009|', '4', 'upload/temp/2013-07-05/291373012974145.PNG', '07 slide.png', null, '6', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fadf3a796003c', '201307050120', '|002|009|', '4', 'upload/temp/2013-07-05/291373012978363.PNG', '08 slide.png', null, '7', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fadf3a796003d', '201307050120', '|002|009|', '4', 'upload/temp/2013-07-05/291373012983723.PNG', '09 slide.png', null, '8', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fadf3a796003e', '201307050120', '|002|009|', '4', 'upload/temp/2013-07-05/291373012988848.PNG', '10 slide.png', null, '9', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae0e1aa4003f', '201307050121', '|002|011|', '1', 'upload/temp/2013-07-05/581373014712879.PNG', 'Icon 01.png', null, '0', null, '1', '2', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae1054770040', '201307050121', '|002|011|', '4', 'upload/temp/2013-07-05/011373014860426.PNG', 'Slide 01.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae1acaef0041', '201307050121', '|002|011|', '4', 'upload/temp/2013-07-05/121373015549910.PNG', 'Slide 02.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae343bef0042', '201306170076', '|002|009|', '4', 'upload/temp/2013-07-05/341373016859832.PNG', '01 slide.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae343bef0043', '201306170076', '|002|009|', '4', 'upload/temp/2013-07-05/341373016865488.PNG', '02 slide.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae343bef0044', '201306170076', '|002|009|', '4', 'upload/temp/2013-07-05/341373016871098.PNG', '03 slide.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae343bef0045', '201306170076', '|002|009|', '4', 'upload/temp/2013-07-05/341373016876082.PNG', '04 slide.png', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae343bef0046', '201306170076', '|002|009|', '4', 'upload/temp/2013-07-05/341373016881770.PNG', '05 slide.png', null, '4', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae343bef0047', '201306170076', '|002|009|', '4', 'upload/temp/2013-07-05/341373016887113.PNG', '06 slide.png', null, '5', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae343bef0048', '201306170076', '|002|009|', '4', 'upload/temp/2013-07-05/341373016891285.PNG', '07 slide.png', null, '6', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae343bef0049', '201306170076', '|002|009|', '4', 'upload/temp/2013-07-05/341373016895176.PNG', '08 slide.png', null, '7', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae343bef004a', '201306170076', '|002|009|', '4', 'upload/temp/2013-07-05/351373016900238.PNG', '9 slide.png', null, '8', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae343bef004b', '201306170076', '|002|009|', '4', 'upload/temp/2013-07-05/351373016904973.PNG', '10 slide.png', null, '9', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae343bef004c', '201306170076', '|002|009|', '4', 'upload/temp/2013-07-05/351373016909129.PNG', '11 slide.png', null, '10', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae343bef004d', '201306170076', '|002|009|', '4', 'upload/temp/2013-07-05/351373016914067.PNG', '12 slide.png', null, '11', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae343bef004e', '201306170076', '|002|009|', '4', 'upload/temp/2013-07-05/351373016916051.PNG', '13 slide.png', null, '12', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae343bef004f', '201306170076', '|002|009|', '4', 'upload/temp/2013-07-05/351373016919754.PNG', '14 slide.png', null, '13', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae343bef0050', '201306170076', '|002|009|', '4', 'upload/temp/2013-07-05/351373016923457.PNG', '15 slide.png', null, '14', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae343bef0051', '201306170076', '|002|009|', '4', 'upload/temp/2013-07-05/351373016927426.PNG', '16 slide.png', null, '15', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae43743c0052', '201306140070', '|002|008|', '4', 'upload/temp/2013-07-05/561373018198145.PNG', 'slide 02.png', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3f9a794f013fae43743c0055', '201306140070', '|002|008|', '4', 'upload/temp/2013-07-05/571373018221770.PNG', 'slide 05.png', null, '5', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3fb81db1013fbc6a3df40004', '201307080123', '|001|005|', '', 'upload/temp/2013-07-08/541373255644958.PNG', 'Ahti Westphal.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3fb81db1013fc178a8be0008', '201306140070', '|002|008|', '1', 'upload/temp/2013-07-09/271373340471802.PNG', 'icon 04.png', null, '3', null, '1', '1', '1', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3fc8de68013fd120f2ef0000', '201307120130', '|002|009|', '4', 'upload/temp/2013-07-12/221373602930739.PNG', 'slide 01.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3fc8de68013fd120f2ef0001', '201307120130', '|002|009|', '4', 'upload/temp/2013-07-12/221373602938505.PNG', 'slide 02.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3fc8de68013fd120f2ef0002', '201307120130', '|002|009|', '4', 'upload/temp/2013-07-12/221373602944443.PNG', 'slide 03.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3fc8de68013fd120f2ef0003', '201307120130', '|002|009|', '4', 'upload/temp/2013-07-12/221373602951396.PNG', 'slide 04.png', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3fc8de68013fd120f2ef0004', '201307120130', '|002|009|', '4', 'upload/temp/2013-07-12/221373602958161.PNG', 'slide 05.png', null, '4', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3fc8de68013fd120f2ef0005', '201307120130', '|002|009|', '4', 'upload/temp/2013-07-12/221373602963693.PNG', 'slide 06.png', null, '5', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3fc8de68013fd120f2ef0006', '201307120130', '|002|009|', '4', 'upload/temp/2013-07-12/221373602971099.PNG', 'slide 07.png', null, '6', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3fc8de68013fd120f2ef0007', '201307120130', '|002|009|', '4', 'upload/temp/2013-07-12/221373602977864.PNG', 'slide 08.png', null, '7', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3fc8de68013fd120f2ef0008', '201307120130', '|002|009|', '4', 'upload/temp/2013-07-12/231373602984177.PNG', 'slide 09.png', null, '8', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d3fc8de68013fd120f2ef0009', '201307120130', '|002|009|', '4', 'upload/temp/2013-07-12/231373602991958.PNG', 'slide 10.png', null, '9', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b88ec7360003', '201308260134', '|002|009|', '1', 'upload/temp/2013-08-26/561377485769886.PNG', 'icon 02 smaller.png', null, '0', null, '1', '2', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b88ec7360004', '201308260134', '|002|009|', '4', 'upload/temp/2013-08-26/561377485790746.PNG', 'slide 01.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b88ec7360005', '201308260134', '|002|009|', '4', 'upload/temp/2013-08-26/561377485793855.PNG', 'slide 02.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b88ec7360006', '201308260134', '|002|009|', '4', 'upload/temp/2013-08-26/561377485796558.PNG', 'slide 03.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b88ec7360007', '201308260134', '|002|009|', '4', 'upload/temp/2013-08-26/561377485801136.PNG', 'slide 04.png', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b88ec7360008', '201308260134', '|002|009|', '4', 'upload/temp/2013-08-26/561377485803746.PNG', 'slide 05.png', null, '4', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b88ec7360009', '201308260134', '|002|009|', '4', 'upload/temp/2013-08-26/561377485807980.PNG', 'slide 06.png', null, '5', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b88ec736000a', '201308260134', '|002|009|', '4', 'upload/temp/2013-08-26/561377485813855.PNG', 'slide 07.png', null, '6', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b88ec736000b', '201308260134', '|002|009|', '4', 'upload/temp/2013-08-26/561377485818511.PNG', 'slide 08.png', null, '7', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b88ec736000c', '201308260134', '|002|009|', '4', 'upload/temp/2013-08-26/571377485823058.PNG', 'slide 09.png', null, '8', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b88ec736000d', '201308260134', '|002|009|', '4', 'upload/temp/2013-08-26/571377485825011.PNG', 'slide 10.png', null, '9', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b88ec736000e', '201308260134', '|002|009|', '4', 'upload/temp/2013-08-26/571377485830386.PNG', 'slide 11.png', null, '10', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8e511ba0011', '201308260135', '|002|023|', '1', 'upload/temp/2013-08-26/311377491518121.PNG', 'icon 03.png', null, '0', null, '1', '1', '1', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8e511ba0012', '201308260135', '|002|023|', '4', 'upload/temp/2013-08-26/321377491545011.PNG', 'slide 01.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8e511ba0013', '201308260135', '|002|023|', '4', 'upload/temp/2013-08-26/321377491547230.PNG', 'slide 02.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8eb31990014', '201308260136', '|002|023|', '1', 'upload/temp/2013-08-26/371377491875886.PNG', '01 icon.png', null, '0', null, '1', '2', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8eb31990015', '201308260136', '|002|023|', '4', 'upload/temp/2013-08-26/381377491888011.PNG', '00 slide.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8eb31990016', '201308260136', '|002|023|', '4', 'upload/temp/2013-08-26/381377491891715.PNG', '01 slide.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8eb31990017', '201308260136', '|002|023|', '4', 'upload/temp/2013-08-26/381377491895261.PNG', '02 slide.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8eb31990018', '201308260136', '|002|023|', '4', 'upload/temp/2013-08-26/381377491902183.PNG', '03 slide.png', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8eb31990019', '201308260136', '|002|023|', '4', 'upload/temp/2013-08-26/381377491906261.PNG', '04 slide.png', null, '4', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8eb3199001a', '201308260136', '|002|023|', '4', 'upload/temp/2013-08-26/381377491909246.PNG', '05 slide.png', null, '5', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8eb3199001b', '201308260136', '|002|023|', '4', 'upload/temp/2013-08-26/381377491916668.PNG', '06 slide.png', null, '6', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8eb3199001c', '201308260136', '|002|023|', '4', 'upload/temp/2013-08-26/381377491924730.PNG', '07 slide.png', null, '7', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f0bfe6001d', '201308260137', '|002|023|', '1', 'upload/temp/2013-08-26/441377492257949.PNG', 'icon 01.png', null, '0', null, '1', '3', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f0bfe6001e', '201308260137', '|002|023|', '4', 'upload/temp/2013-08-26/441377492271621.PNG', 'slide 01.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f0bfe6001f', '201308260137', '|002|023|', '4', 'upload/temp/2013-08-26/441377492276449.PNG', 'slide 02.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f0bfe60020', '201308260137', '|002|023|', '4', 'upload/temp/2013-08-26/441377492278558.PNG', 'slide 03.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f0bfe60021', '201308260137', '|002|023|', '4', 'upload/temp/2013-08-26/441377492281090.PNG', 'slide 04.png', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f0bfe60022', '201308260137', '|002|023|', '4', 'upload/temp/2013-08-26/441377492287340.PNG', 'slide 05.png', null, '4', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f58bce0023', '201308260138', '|002|023|', '1', 'upload/temp/2013-08-26/491377492570496.PNG', '01 icon.png', null, '0', null, '1', '2', '1', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f58bce0024', '201308260138', '|002|023|', '4', 'upload/temp/2013-08-26/491377492593621.PNG', '01 slide.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f58bce0025', '201308260138', '|002|023|', '4', 'upload/temp/2013-08-26/491377492598386.PNG', '02 slide.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f58bce0026', '201308260138', '|002|023|', '4', 'upload/temp/2013-08-26/501377492604293.PNG', '03 slide.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f58bce0027', '201308260138', '|002|023|', '4', 'upload/temp/2013-08-26/501377492606980.PNG', '04 slide.png', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f58bce0028', '201308260138', '|002|023|', '4', 'upload/temp/2013-08-26/501377492617074.PNG', '05 slide.png', null, '4', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f58bce0029', '201308260138', '|002|023|', '4', 'upload/temp/2013-08-26/501377492621636.PNG', '06 slide.png', null, '5', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f79450002a', '201308260139', '|002|023|', '1', 'upload/temp/2013-08-26/511377492713027.PNG', '01 icon.png', null, '0', null, '1', '2', '1', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f79450002b', '201308260139', '|002|023|', '1', 'upload/temp/2013-08-26/511377492715480.PNG', '02 icon.png', null, '1', null, '1', '2', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f79450002c', '201308260139', '|002|023|', '4', 'upload/temp/2013-08-26/521377492730308.PNG', '01 slide.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f79450002d', '201308260139', '|002|023|', '4', 'upload/temp/2013-08-26/521377492740527.PNG', '02 slide.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f79450002e', '201308260139', '|002|023|', '4', 'upload/temp/2013-08-26/521377492745621.PNG', '03 slide.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f79450002f', '201308260139', '|002|023|', '4', 'upload/temp/2013-08-26/521377492748840.PNG', '04 slide.png', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8f794500030', '201308260139', '|002|023|', '4', 'upload/temp/2013-08-26/521377492756543.PNG', '05 slide.png', null, '4', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8fe05e90031', '201308260140', '|002|023|', '1', 'upload/temp/2013-08-26/571377493060043.PNG', 'icon 01.png', null, '0', null, '1', '2', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8fe05e90032', '201308260140', '|002|023|', '4', 'upload/temp/2013-08-26/571377493071668.PNG', 'slide 01.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8fe05e90033', '201308260140', '|002|023|', '4', 'upload/temp/2013-08-26/571377493075277.PNG', 'slide 02.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8fe05e90034', '201308260140', '|002|023|', '4', 'upload/temp/2013-08-26/571377493078605.PNG', 'slide 03.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8fe05e90035', '201308260140', '|002|023|', '4', 'upload/temp/2013-08-26/581377493084058.PNG', 'slide 04.png', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8fe05e90036', '201308260140', '|002|023|', '4', 'upload/temp/2013-08-26/581377493089340.PNG', 'slide 05.png', null, '4', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8fe05e90037', '201308260140', '|002|023|', '4', 'upload/temp/2013-08-26/581377493093683.PNG', 'slide 06.png', null, '5', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8fe05e90038', '201308260140', '|002|023|', '4', 'upload/temp/2013-08-26/581377493096558.PNG', 'slide 07.png', null, '6', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b8fe05e90039', '201308260140', '|002|023|', '4', 'upload/temp/2013-08-26/581377493098621.PNG', 'slide 08.png', null, '7', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af003a', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/381377499086527.PNG', 'slide 01.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af003b', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/381377499105605.PNG', 'slide 02.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af003c', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/381377499120590.PNG', 'slide 03.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af003d', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/381377499138730.PNG', 'slide 04.png', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af003e', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/391377499156746.PNG', 'slide 05.png', null, '4', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af003f', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/391377499167090.PNG', 'slide 06.png', null, '5', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af0040', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/391377499187730.PNG', 'slide 07.png', null, '6', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af0041', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/391377499199746.PNG', 'slide 08.png', null, '7', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af0042', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/401377499207590.PNG', 'slide 09.png', null, '8', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af0043', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/401377499223918.PNG', 'slide 10.png', null, '9', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af0044', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/401377499240246.PNG', 'slide 11.png', null, '10', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af0045', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/401377499248183.PNG', 'slide 12.png', null, '11', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af0046', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/401377499259183.PNG', 'slide 13.png', null, '12', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af0047', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/411377499274168.PNG', 'slide 14.png', null, '13', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af0048', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/411377499280980.PNG', 'slide 15.png', null, '14', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af0049', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/411377499287840.PNG', 'slide 16.png', null, '15', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af004a', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/411377499292824.PNG', 'slide 17.png', null, '16', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af004b', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/411377499303246.PNG', 'slide 18.png', null, '17', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af004c', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/411377499309621.PNG', 'slide 19.png', null, '18', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af004d', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/411377499314886.PNG', 'slide 20.png', null, '19', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b95c85af004e', '201308260141', '|002|008|', '4', 'upload/temp/2013-08-26/411377499318590.PNG', 'slide 21.png', null, '20', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b96008f9004f', '201308260141', '|002|008|', '1', 'upload/temp/2013-08-26/461377499605230.PNG', 'icon 01.png', null, '0', null, '1', '2', '1', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b98c6a6d0050', '201308260142', '|002|009|', '4', 'upload/temp/2013-08-26/341377502453183.PNG', 'slide 01.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b98c6a6d0051', '201308260142', '|002|009|', '4', 'upload/temp/2013-08-26/341377502462355.PNG', 'slide 02.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b98c6a6d0052', '201308260142', '|002|009|', '4', 'upload/temp/2013-08-26/341377502470605.PNG', 'slide 03.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b98c6a6d0053', '201308260142', '|002|009|', '4', 'upload/temp/2013-08-26/341377502478293.PNG', 'slide 04.png', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b98c6a6d0054', '201308260142', '|002|009|', '4', 'upload/temp/2013-08-26/341377502485121.PNG', 'slide 05.png', null, '4', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b98c6a6d0055', '201308260142', '|002|009|', '4', 'upload/temp/2013-08-26/341377502491996.PNG', 'slide 06.png', null, '5', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b98c6a6d0056', '201308260142', '|002|009|', '4', 'upload/temp/2013-08-26/341377502497293.PNG', 'slide 07.png', null, '6', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b98c6a6d0057', '201308260142', '|002|009|', '4', 'upload/temp/2013-08-26/351377502504933.PNG', 'slide 08.png', null, '7', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b99b6f070058', '201308260143', '|002|023|', '1', 'upload/temp/2013-08-26/501377503432777.PNG', '01 icon.png', null, '0', null, '1', '3', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b9b56c69005f', '201307050120', '|002|009|', '1', 'upload/temp/2013-08-26/191377505199074.PNG', '02 icon.png', null, '1', null, '1', '2', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140b9dd3ecf0060', '201307050120', '|002|009|', '1', 'upload/temp/2013-08-26/031377507798824.PNG', '03 icon.png', null, '2', null, '1', '1', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140ba25f81e0061', '201308260134', '|002|009|', '1', 'upload/temp/2013-08-26/221377512550058.PNG', 'icon 03.png', null, '1', null, '1', '1', '1', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140bde4d904006a', '201308270144', '|002|008|', '1', 'upload/temp/2013-08-27/501377575420949.PNG', 'icon 01.png', null, '0', null, '1', '3', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140bde4d904006b', '201308270144', '|002|008|', '4', 'upload/temp/2013-08-27/441377575076980.PNG', 'slide 01.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140bde4d904006c', '201308270144', '|002|008|', '4', 'upload/temp/2013-08-27/441377575083355.PNG', 'slide 02.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140bde4d904006d', '201308270144', '|002|008|', '4', 'upload/temp/2013-08-27/441377575084996.PNG', 'slide 03.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140bde4d904006e', '201308270144', '|002|008|', '4', 'upload/temp/2013-08-27/441377575086574.PNG', 'slide 04.png', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140bde4d904006f', '201308270144', '|002|008|', '4', 'upload/temp/2013-08-27/441377575091386.PNG', 'slide 05.png', null, '4', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140bde4d9040070', '201308270144', '|002|008|', '4', 'upload/temp/2013-08-27/441377575097183.PNG', 'slide 06.png', null, '5', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140bdef281e0071', '201307120130', '|002|009|', '1', 'upload/temp/2013-08-27/011377576097402.PNG', 'icon 02.png', null, '0', null, '1', '1', '1', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140bdf693f50072', '201308270145', '|002|023|', '4', 'upload/temp/2013-08-27/061377576390683.PNG', 'slide 01.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140bdf693f50073', '201308270145', '|002|023|', '4', 'upload/temp/2013-08-27/061377576394449.PNG', 'slide 02.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140bdf693f50074', '201308270145', '|002|023|', '4', 'upload/temp/2013-08-27/061377576398183.PNG', 'slide 03.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140bdf693f50075', '201308270145', '|002|023|', '4', 'upload/temp/2013-08-27/061377576406074.PNG', 'slide 04.png', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140bdf984950076', '201308270145', '|002|023|', '1', 'upload/temp/2013-08-27/121377576777293.PNG', 'icon 01.png', null, '0', null, '1', '2', '4', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be234231007e', '201308270146', '|002|009|', '4', 'upload/temp/2013-08-27/281377577684605.PNG', 'slide 01.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be234231007f', '201308270146', '|002|009|', '4', 'upload/temp/2013-08-27/281377577688465.PNG', 'slide 02.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be2342310080', '201308270146', '|002|009|', '4', 'upload/temp/2013-08-27/281377577694293.PNG', 'slide 03.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be2342310081', '201308270146', '|002|009|', '4', 'upload/temp/2013-08-27/281377577700152.PNG', 'slide 04.png', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be2342310082', '201308270146', '|002|009|', '4', 'upload/temp/2013-08-27/281377577707074.PNG', 'slide 05.png', null, '4', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be2342310083', '201308270146', '|002|009|', '4', 'upload/temp/2013-08-27/281377577719965.PNG', 'slide 06.png', null, '5', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be2342310084', '201308270146', '|002|009|', '4', 'upload/temp/2013-08-27/281377577726386.PNG', 'slide 07.png', null, '6', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be4122a10085', '201308270147', '|002|008|', '4', 'upload/temp/2013-08-27/301377581437793.PNG', 'slide 01.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be4122a10086', '201308270147', '|002|008|', '4', 'upload/temp/2013-08-27/301377581444996.PNG', 'slide 02.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be4122a10087', '201308270147', '|002|008|', '4', 'upload/temp/2013-08-27/301377581451480.PNG', 'slide 03.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be4122a10088', '201308270147', '|002|008|', '4', 'upload/temp/2013-08-27/301377581454355.PNG', 'slide 04.png', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be4122a10089', '201308270147', '|002|008|', '4', 'upload/temp/2013-08-27/301377581457824.PNG', 'slide 05.png', null, '4', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be4122a1008a', '201308270147', '|002|008|', '4', 'upload/temp/2013-08-27/311377581461355.PNG', 'slide 06.png', null, '5', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be4122a1008b', '201308270147', '|002|008|', '4', 'upload/temp/2013-08-27/311377581463980.PNG', 'slide 07.png', null, '6', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be5586c8008c', '201308270147', '|002|008|', '1', 'upload/temp/2013-08-27/341377581689699.PNG', 'icon 01.png', null, '0', null, '1', '3', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be5586c8008d', '201308270147', '|002|008|', '1', 'upload/temp/2013-08-27/531377582805465.PNG', 'icon 02.png', null, '1', null, '1', '2', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be5cff90008e', '201308260143', '|002|023|', '4', 'upload/temp/2013-08-27/001377583218590.PNG', '01 slide.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be5cff90008f', '201308260143', '|002|023|', '4', 'upload/temp/2013-08-27/001377583222886.PNG', '02 slide.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be5cff900090', '201308260143', '|002|023|', '4', 'upload/temp/2013-08-27/001377583228308.PNG', '03 slide.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be5cff900091', '201308260143', '|002|023|', '4', 'upload/temp/2013-08-27/001377583239277.PNG', '04 slide.png', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be5cff900092', '201308260143', '|002|023|', '4', 'upload/temp/2013-08-27/001377583247027.PNG', '05 slide.png', null, '4', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be5cff900093', '201308260143', '|002|023|', '4', 'upload/temp/2013-08-27/011377583277996.PNG', '07 slide.png', null, '5', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be5cff900094', '201308260143', '|002|023|', '4', 'upload/temp/2013-08-27/011377583283699.PNG', '08 slide.png', null, '6', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be5cff900095', '201308260143', '|002|023|', '4', 'upload/temp/2013-08-27/001377583254480.PNG', '06 slide.png', null, '7', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be5faf1f0096', '201308260143', '|002|023|', '1', 'upload/temp/2013-08-27/041377583470558.PNG', 'icon 02.png', null, '1', null, '1', '1', '1', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be6742450097', '201308260142', '|002|009|', '1', 'upload/temp/2013-08-27/121377583961433.PNG', 'icon 01.png', null, '0', null, '1', '2', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140be74a9ba0098', '201306170076', '|002|009|', '1', 'upload/temp/2013-08-27/271377584841902.PNG', 'icon 02.png', null, '1', null, '1', '1', '1', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140c4449e3b009a', '201308260143', '|002|023|', '1', 'upload/temp/2013-08-28/321377682361855.PNG', 'icon 03.png', null, '2', null, '1', '1', '1', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140c446e2ad009b', '201308270146', '|002|009|', '1', 'upload/temp/2013-08-28/351377682510121.PNG', 'icon 01.png', null, '0', null, '1', '3', '1', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140d8dad8f6009c', '201306170076', '|002|009|', '1', 'upload/temp/2013-09-01/161378027011048.PNG', 'icon-03.png', null, '2', null, '1', '2', '1', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140d8dad8f6009d', '201306170076', '|002|009|', '4', 'upload/temp/2013-09-01/191378027196313.PNG', 'section-icon-thru-eye-large-scale.png', null, '16', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140d924a30a009e', '201309010148', '|002|009|', '1', 'upload/temp/2013-09-01/491378032557860.PNG', 'icon-1.png', null, '0', null, '1', '1', '2', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140d924a30a00a0', '201309010148', '|002|009|', '4', 'upload/temp/2013-09-01/491378032573813.JPG', 'image-01.jpg', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140d924a30a00a1', '201309010148', '|002|009|', '4', 'upload/temp/2013-09-01/491378032574954.JPG', 'image-02.jpg', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140d924a30a00a2', '201309010148', '|002|009|', '4', 'upload/temp/2013-09-01/491378032575954.JPG', 'image-03.jpg', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140d924a30a00a3', '201309010148', '|002|009|', '4', 'upload/temp/2013-09-01/491378032576782.JPG', 'image-04.jpg', null, '3', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140d924a30a00a4', '201309010148', '|002|009|', '4', 'upload/temp/2013-09-01/491378032577813.JPG', 'image-05.jpg', null, '4', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140d924a30a00a5', '201309010148', '|002|009|', '4', 'upload/temp/2013-09-01/491378032578923.JPG', 'image-06.jpg', null, '5', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140d924a30a00a6', '201309010148', '|002|009|', '4', 'upload/temp/2013-09-01/491378032579813.JPG', 'image-07.jpg', null, '6', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140d924a30a00a7', '201309010148', '|002|009|', '4', 'upload/temp/2013-09-01/491378032581048.JPG', 'image-08.jpg', null, '7', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140d9a88f8000a8', '201306140070', '|002|008|', '4', 'upload/temp/2013-09-01/131378041209157.PNG', 'slide-03.png', null, '0', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140d9a88f8000a9', '201306140070', '|002|008|', '4', 'upload/temp/2013-09-01/131378041198516.PNG', 'prague-02.png', null, '1', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140d9a88f8000aa', '201306140070', '|002|008|', '4', 'upload/temp/2013-09-01/131378041203626.PNG', 'prague-03.png', null, '2', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a0140dc1745e100ab', '201308270146', '|002|009|', '4', 'upload/temp/2013-09-02/341378082044847.PNG', 'slide-08.png', null, '7', null, '1', '0', '0', null);
INSERT INTO `t_attachments` VALUES ('aae0243d4006670a01412eefa17e00ac', '201307080122', '|001|005|', '', 'upload/temp/2013-09-18/391379471952616.PNG', 'Headshot_Song_Web.png', null, '0', '2013-11-12 23:29:01', '1', '0', '0', '1');

-- ----------------------------
-- Table structure for `t_dictionary`
-- ----------------------------
DROP TABLE IF EXISTS `t_dictionary`;
CREATE TABLE `t_dictionary` (
  `oid` int(11) NOT NULL,
  `k` varchar(145) DEFAULT NULL,
  `cname` varchar(145) DEFAULT NULL,
  `ename` varchar(145) DEFAULT NULL,
  `cdesc` varchar(255) DEFAULT NULL,
  `edesc` varchar(255) DEFAULT NULL,
  `ordinal` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dictionary
-- ----------------------------

-- ----------------------------
-- Table structure for `t_masonrybrick`
-- ----------------------------
DROP TABLE IF EXISTS `t_masonrybrick`;
CREATE TABLE `t_masonrybrick` (
  `oid` bigint(20) NOT NULL,
  `article_id` varchar(32) DEFAULT NULL COMMENT 'Article ID',
  `url` longtext,
  `w` int(11) DEFAULT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `h` int(11) DEFAULT NULL,
  `objid` varchar(32) DEFAULT NULL COMMENT '和导航关联',
  `type` varchar(32) DEFAULT NULL COMMENT '类型（比如联系我们，关于我们，人员等等）',
  `ordinal` int(11) DEFAULT NULL COMMENT '按升序排列',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_masonrybrick
-- ----------------------------
INSERT INTO `t_masonrybrick` VALUES ('3996', '201308260140', '/upload/temp/2013-08-26/571377493060043.PNG', '2', '0', '0', '2', 'aae0243d4006670a0140b8fe05e90031', '|002|023|', '0');
INSERT INTO `t_masonrybrick` VALUES ('3997', '201306140070', '/upload/temp/2013-06-14/481371206892528.PNG', '1', '2', '0', '2', 'aae0243d3f3e084a013f424cc7a80003', '|002|008|', '2');
INSERT INTO `t_masonrybrick` VALUES ('3998', '201307050120', '/upload/temp/2013-07-05/311373009512348.PNG', '2', '3', '0', '2', 'aae0243d3f9a794f013fadc90bcf0029', '|002|009|', '3');
INSERT INTO `t_masonrybrick` VALUES ('3999', '201306190082', '/upload/temp/2013-06-19/211371626492699.PNG', '1', '5', '0', '1', 'aae0243d3f527a28013f5b4f5aad003d', '|002|011|', '5');
INSERT INTO `t_masonrybrick` VALUES ('4000', '201308260138', '/upload/temp/2013-08-26/491377492570496.PNG', '2', '6', '0', '1', 'aae0243d4006670a0140b8f58bce0023', '|002|023|', '6');
INSERT INTO `t_masonrybrick` VALUES ('4001', '201306190082', '/upload/temp/2013-06-19/241371623083809.PNG', '1', '5', '1', '2', 'aae0243d3f527a28013f5b1b56f1003c', '|002|011|', '15');
INSERT INTO `t_masonrybrick` VALUES ('4002', '201306170076', '/upload/temp/2013-06-18/461371523572371.PNG', '2', '6', '1', '2', 'aae0243d3f527a28013f552cec280000', '|002|009|', '16');
INSERT INTO `t_masonrybrick` VALUES ('4003', '201308260139', '/upload/temp/2013-08-26/511377492715480.PNG', '2', '0', '2', '2', 'aae0243d4006670a0140b8f79450002b', '|002|023|', '20');
INSERT INTO `t_masonrybrick` VALUES ('4004', '201306140070', '/upload/temp/2013-06-24/001372068045002.PNG', '1', '2', '2', '1', 'aae0243d3f527a28013f75a0f992004a', '|002|008|', '22');
INSERT INTO `t_masonrybrick` VALUES ('4005', '201307050121', '/upload/temp/2013-07-05/581373014712879.PNG', '2', '3', '2', '2', 'aae0243d3f9a794f013fae0e1aa4003f', '|002|011|', '23');
INSERT INTO `t_masonrybrick` VALUES ('4006', '201306180079', '/upload/temp/2013-06-18/401371544822762.PNG', '1', '5', '10', '1', 'aae0243d3f527a28013f56712e3b002c', '|002|009|', '105');
INSERT INTO `t_masonrybrick` VALUES ('4007', '201308260137', '/upload/temp/2013-08-26/441377492257949.PNG', '3', '5', '7', '2', 'aae0243d4006670a0140b8f0bfe6001d', '|002|023|', '75');
INSERT INTO `t_masonrybrick` VALUES ('4008', '201307050120', '/upload/temp/2013-08-26/031377507798824.PNG', '1', '0', '4', '2', 'aae0243d4006670a0140b9dd3ecf0060', '|002|009|', '40');
INSERT INTO `t_masonrybrick` VALUES ('4009', '201308260135', '/upload/temp/2013-08-26/311377491518121.PNG', '1', '1', '4', '1', 'aae0243d4006670a0140b8e511ba0011', '|002|023|', '41');
INSERT INTO `t_masonrybrick` VALUES ('4010', '201308260143', '/upload/temp/2013-08-26/501377503432777.PNG', '3', '2', '4', '2', 'aae0243d4006670a0140b99b6f070058', '|002|023|', '42');
INSERT INTO `t_masonrybrick` VALUES ('4011', '201306140070', '/upload/temp/2013-07-09/271373340471802.PNG', '1', '1', '5', '1', 'aae0243d3fb81db1013fc178a8be0008', '|002|008|', '51');
INSERT INTO `t_masonrybrick` VALUES ('4012', '201308260134', '/upload/temp/2013-08-26/221377512550058.PNG', '1', '2', '5', '1', 'aae0243d4006670a0140ba25f81e0061', '|002|009|', '52');
INSERT INTO `t_masonrybrick` VALUES ('4013', '201308260136', '/upload/temp/2013-08-26/371377491875886.PNG', '2', '4', '5', '2', 'aae0243d4006670a0140b8eb31990014', '|002|023|', '54');
INSERT INTO `t_masonrybrick` VALUES ('4014', '201308260142', '/upload/temp/2013-08-27/121377583961433.PNG', '2', '6', '5', '2', 'aae0243d4006670a0140be6742450097', '|002|009|', '56');
INSERT INTO `t_masonrybrick` VALUES ('4015', '201307050120', '/upload/temp/2013-08-26/191377505199074.PNG', '2', '0', '6', '2', 'aae0243d4006670a0140b9b56c69005f', '|002|009|', '60');
INSERT INTO `t_masonrybrick` VALUES ('4016', '201308260139', '/upload/temp/2013-08-26/511377492713027.PNG', '2', '2', '6', '1', 'aae0243d4006670a0140b8f79450002a', '|002|023|', '62');
INSERT INTO `t_masonrybrick` VALUES ('4017', '201308260141', '/upload/temp/2013-08-26/461377499605230.PNG', '2', '2', '7', '1', 'aae0243d4006670a0140b96008f9004f', '|002|008|', '72');
INSERT INTO `t_masonrybrick` VALUES ('4018', '201309010148', '/upload/temp/2013-09-01/491378032557860.PNG', '1', '4', '7', '2', 'aae0243d4006670a0140d924a30a009e', '|002|009|', '74');
INSERT INTO `t_masonrybrick` VALUES ('4019', '201308270144', '/upload/temp/2013-08-27/501377575420949.PNG', '3', '5', '3', '2', 'aae0243d4006670a0140bde4d904006a', '|002|008|', '35');
INSERT INTO `t_masonrybrick` VALUES ('4020', '201307040111', '/upload/temp/2013-07-04/231372908211529.PNG', '2', '0', '8', '1', 'aae0243d3f9a794f013fa7b5f1f30003', '|002|022|', '80');
INSERT INTO `t_masonrybrick` VALUES ('4021', '201308260143', '/upload/temp/2013-08-28/321377682361855.PNG', '1', '2', '8', '1', 'aae0243d4006670a0140c4449e3b009a', '|002|023|', '82');
INSERT INTO `t_masonrybrick` VALUES ('4022', '201308260143', '/upload/temp/2013-08-27/041377583470558.PNG', '1', '3', '8', '1', 'aae0243d4006670a0140be5faf1f0096', '|002|023|', '83');
INSERT INTO `t_masonrybrick` VALUES ('4023', '201308260134', '/upload/temp/2013-08-26/561377485769886.PNG', '2', '0', '9', '2', 'aae0243d4006670a0140b88ec7360003', '|002|009|', '90');
INSERT INTO `t_masonrybrick` VALUES ('4024', '201308270147', '/upload/temp/2013-08-27/341377581689699.PNG', '3', '2', '9', '2', 'aae0243d4006670a0140be5586c8008c', '|002|008|', '92');
INSERT INTO `t_masonrybrick` VALUES ('4025', '201307120130', '/upload/temp/2013-08-27/011377576097402.PNG', '1', '5', '9', '1', 'aae0243d4006670a0140bdef281e0071', '|002|009|', '95');
INSERT INTO `t_masonrybrick` VALUES ('4026', '201308270147', '/upload/temp/2013-08-27/531377582805465.PNG', '2', '6', '9', '2', 'aae0243d4006670a0140be5586c8008d', '|002|008|', '96');
INSERT INTO `t_masonrybrick` VALUES ('4027', '201306170076', '/upload/temp/2013-08-27/271377584841902.PNG', '1', '2', '3', '1', 'aae0243d4006670a0140be74a9ba0098', '|002|009|', '32');
INSERT INTO `t_masonrybrick` VALUES ('4028', '201306140070', '/upload/temp/2013-06-17/281371439721824.PNG', '2', '0', '11', '2', 'aae0243d3f4d42e7013f502d82ae0002', '|002|008|', '110');
INSERT INTO `t_masonrybrick` VALUES ('4029', '201308270146', '/upload/temp/2013-08-28/351377682510121.PNG', '3', '3', '11', '1', 'aae0243d4006670a0140c446e2ad009b', '|002|009|', '113');
INSERT INTO `t_masonrybrick` VALUES ('4030', '201308270145', '/upload/temp/2013-08-27/121377576777293.PNG', '2', '6', '11', '4', 'aae0243d4006670a0140bdf984950076', '|002|023|', '116');
INSERT INTO `t_masonrybrick` VALUES ('4031', '201306170076', '/upload/temp/2013-09-01/161378027011048.PNG', '2', '0', '13', '1', 'aae0243d4006670a0140d8dad8f6009c', '|002|009|', '130');

-- ----------------------------
-- Table structure for `t_navigation`
-- ----------------------------
DROP TABLE IF EXISTS `t_navigation`;
CREATE TABLE `t_navigation` (
  `oid` varchar(32) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `ename` varchar(300) DEFAULT NULL,
  `objid` varchar(32) DEFAULT NULL COMMENT '分多级',
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `ordinal` int(11) DEFAULT NULL COMMENT '按升序排列',
  `status` int(11) DEFAULT NULL COMMENT '0无效 1有效 默认1',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='导航表';

-- ----------------------------
-- Records of t_navigation
-- ----------------------------
INSERT INTO `t_navigation` VALUES ('1', '主页', 'Home', '0', null, null, null, '1');
INSERT INTO `t_navigation` VALUES ('10', '合作', 'Collaboration', '2', null, null, null, '1');
INSERT INTO `t_navigation` VALUES ('13', '建筑', 'Architecture', '3', null, null, '1', '1');
INSERT INTO `t_navigation` VALUES ('14', '室内', 'Interiors', '3', null, null, '2', '1');
INSERT INTO `t_navigation` VALUES ('15', '产品', 'Products', '3', null, null, '4', '0');
INSERT INTO `t_navigation` VALUES ('16', '研究', 'Research', '3', null, null, '5', '1');
INSERT INTO `t_navigation` VALUES ('17', '椅子', 'Seating', '15', null, null, null, '1');
INSERT INTO `t_navigation` VALUES ('18', '桌子', 'Tables', '15', null, null, null, '1');
INSERT INTO `t_navigation` VALUES ('19', '项目档案', 'Archive', '3', null, null, '6', '1');
INSERT INTO `t_navigation` VALUES ('2', '关于', 'About', '0', null, null, null, '1');
INSERT INTO `t_navigation` VALUES ('23', '灯具', 'Lighting', '15', null, null, null, '1');
INSERT INTO `t_navigation` VALUES ('24', '金工', 'Hardware', '15', null, null, null, '1');
INSERT INTO `t_navigation` VALUES ('25', '饰面', 'Finishes', '15', null, null, null, '1');
INSERT INTO `t_navigation` VALUES ('26', '洁具', 'Bath', '15', null, null, null, '1');
INSERT INTO `t_navigation` VALUES ('27', '储物', 'Storage', '15', null, null, null, '1');
INSERT INTO `t_navigation` VALUES ('28', '装置', 'Installations', '15', null, null, null, '1');
INSERT INTO `t_navigation` VALUES ('29', '城市设计', 'Urban Design', '3', null, null, '3', '1');
INSERT INTO `t_navigation` VALUES ('3', '作品', 'Work', '0', null, null, null, '1');
INSERT INTO `t_navigation` VALUES ('4', '著述', 'Writings', '0', null, null, null, '1');
INSERT INTO `t_navigation` VALUES ('5', '中文', '中文', '1', null, null, null, '1');
INSERT INTO `t_navigation` VALUES ('6', 'English', 'English', '1', null, null, null, '1');
INSERT INTO `t_navigation` VALUES ('7', '公司', 'Practice', '2', null, null, null, '1');
INSERT INTO `t_navigation` VALUES ('8', '人员', 'People', '2', null, null, null, '1');
INSERT INTO `t_navigation` VALUES ('9', '联系', 'Contact', '2', null, null, null, '1');

-- ----------------------------
-- Table structure for `t_orderinfo`
-- ----------------------------
DROP TABLE IF EXISTS `t_orderinfo`;
CREATE TABLE `t_orderinfo` (
  `oid` bigint(20) NOT NULL AUTO_INCREMENT,
  `objid` varchar(32) DEFAULT NULL COMMENT '文章表id',
  `title` varchar(300) DEFAULT NULL COMMENT '文章标题在中文提交就是中文，英文提交就是英文',
  `note` varchar(1000) DEFAULT NULL,
  `issend` int(11) DEFAULT NULL COMMENT '0未发送 1已发送 默认0',
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=utf8 COMMENT='用户提交购买信息表 这个表是把用户提交信';

-- ----------------------------
-- Records of t_orderinfo
-- ----------------------------
INSERT INTO `t_orderinfo` VALUES ('5', '201306160073', 'Beijing', 'dsfsfs', '1', '2013-06-16 18:36:00', '2013-06-16 18:36:00');
INSERT INTO `t_orderinfo` VALUES ('6', '201306160073', 'Beijing', 'dsfsfs', '1', '2013-06-16 18:35:58', '2013-06-16 18:35:58');
INSERT INTO `t_orderinfo` VALUES ('7', '201306160073', '北京', '测试数据', '1', '2013-06-16 20:18:07', '2013-06-16 20:18:07');
INSERT INTO `t_orderinfo` VALUES ('8', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:32:41', '2013-06-18 17:32:41');
INSERT INTO `t_orderinfo` VALUES ('9', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:32:44', '2013-06-18 17:32:44');
INSERT INTO `t_orderinfo` VALUES ('10', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:32:46', '2013-06-18 17:32:46');
INSERT INTO `t_orderinfo` VALUES ('11', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:32:47', '2013-06-18 17:32:47');
INSERT INTO `t_orderinfo` VALUES ('12', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:32:54', '2013-06-18 17:32:54');
INSERT INTO `t_orderinfo` VALUES ('13', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:32:56', '2013-06-18 17:32:56');
INSERT INTO `t_orderinfo` VALUES ('14', '201305290038\"\"()))\'\'()', '北京', '测试数据', '1', '2013-06-18 17:32:57', '2013-06-18 17:32:57');
INSERT INTO `t_orderinfo` VALUES ('15', '201305290038 AnD 1491=8317', '北京', '测试数据', '1', '2013-06-18 17:32:59', '2013-06-18 17:32:59');
INSERT INTO `t_orderinfo` VALUES ('16', '201305290038 aND 7796=7796', '北京', '测试数据', '1', '2013-06-18 17:33:00', '2013-06-18 17:33:00');
INSERT INTO `t_orderinfo` VALUES ('17', '201305290038) AnD (1491=8317', '北京', '测试数据', '1', '2013-06-18 17:33:01', '2013-06-18 17:33:01');
INSERT INTO `t_orderinfo` VALUES ('18', '201305290038) aND (7796=7796', '北京', '测试数据', '1', '2013-06-18 17:33:03', '2013-06-18 17:33:03');
INSERT INTO `t_orderinfo` VALUES ('19', '/etc/passwd', '北京', '测试数据', '1', '2013-06-18 17:33:10', '2013-06-18 17:33:10');
INSERT INTO `t_orderinfo` VALUES ('20', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:33:14', '2013-06-18 17:33:14');
INSERT INTO `t_orderinfo` VALUES ('21', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:33:15', '2013-06-18 17:33:15');
INSERT INTO `t_orderinfo` VALUES ('22', '201305290038', '北京\"\"()))\'\'()', '测试数据', '1', '2013-06-18 17:33:16', '2013-06-18 17:33:16');
INSERT INTO `t_orderinfo` VALUES ('23', '201305290038', '北京 AnD 1491=8317', '测试数据', '1', '2013-06-18 17:33:18', '2013-06-18 17:33:18');
INSERT INTO `t_orderinfo` VALUES ('24', '201305290038', '/etc/passwd', '测试数据', '1', '2013-06-18 17:33:18', '2013-06-18 17:33:18');
INSERT INTO `t_orderinfo` VALUES ('25', '201305290038', '北京 aND 7796=7796', '测试数据', '1', '2013-06-18 17:33:19', '2013-06-18 17:33:19');
INSERT INTO `t_orderinfo` VALUES ('26', '201305290038', '北京) AnD (1491=8317', '测试数据', '1', '2013-06-18 17:33:20', '2013-06-18 17:33:20');
INSERT INTO `t_orderinfo` VALUES ('27', '201305290038', '../../../../../../../../etc/passwd', '测试数据', '1', '2013-06-18 17:33:19', '2013-06-18 17:33:19');
INSERT INTO `t_orderinfo` VALUES ('28', '201305290038', '北京) aND (7796=7796', '测试数据', '1', '2013-06-18 17:33:20', '2013-06-18 17:33:20');
INSERT INTO `t_orderinfo` VALUES ('29', '201305290038', '../../../../../../../../etc/passwd\0.jpg', '测试数据', '1', '2013-06-18 17:33:21', '2013-06-18 17:33:21');
INSERT INTO `t_orderinfo` VALUES ('30', '201305290038', '${@print(md5(this_is_a_test_string))}', '测试数据', '1', '2013-06-18 17:33:21', '2013-06-18 17:33:21');
INSERT INTO `t_orderinfo` VALUES ('31', '201305290038', '北京\' AND 57=53 AND \'NNvf\'=\'NNvf', '测试数据', '1', '2013-06-18 17:33:21', '2013-06-18 17:33:21');
INSERT INTO `t_orderinfo` VALUES ('32', '201305290038', '../../../../../../../../../../etc/passwd%00', '测试数据', '1', '2013-06-18 17:33:22', '2013-06-18 17:33:22');
INSERT INTO `t_orderinfo` VALUES ('33', '201305290038', '${@print(md5(this_is_a_test_string))}\\', '测试数据', '1', '2013-06-18 17:33:22', '2013-06-18 17:33:22');
INSERT INTO `t_orderinfo` VALUES ('34', '201305290038', '北京\' AND 57=57 AND \'NNvf\'=\'NNvf', '测试数据', '1', '2013-06-18 17:33:22', '2013-06-18 17:33:22');
INSERT INTO `t_orderinfo` VALUES ('35', '201305290038', '../../../../../../../../windows/win.ini', '测试数据', '1', '2013-06-18 17:33:23', '2013-06-18 17:33:23');
INSERT INTO `t_orderinfo` VALUES ('36', '201305290038', 'print(md5(this_is_a_test_string));die();/*', '测试数据', '1', '2013-06-18 17:33:23', '2013-06-18 17:33:23');
INSERT INTO `t_orderinfo` VALUES ('37', '201305290038', '北京\') AND 2557=7731 AND (\'mQKg\'=\'mQKg', '测试数据', '1', '2013-06-18 17:33:23', '2013-06-18 17:33:23');
INSERT INTO `t_orderinfo` VALUES ('38', '201305290038', '../../../../../../../../windows/win.ini\0.jpg', '测试数据', '1', '2013-06-18 17:33:24', '2013-06-18 17:33:24');
INSERT INTO `t_orderinfo` VALUES ('39', '201305290038', '北京', '${@print(md5(this_is_a_test_string))}', '1', '2013-06-18 17:33:24', '2013-06-18 17:33:24');
INSERT INTO `t_orderinfo` VALUES ('40', '201305290038', '北京\') AND 7796=7796 AND (\'jqFx\'=\'jqFx', '测试数据', '1', '2013-06-18 17:33:24', '2013-06-18 17:33:24');
INSERT INTO `t_orderinfo` VALUES ('41', '201305290038', '北京', '/etc/passwd', '1', '2013-06-18 17:33:25', '2013-06-18 17:33:25');
INSERT INTO `t_orderinfo` VALUES ('42', '201305290038', '北京', '${@print(md5(this_is_a_test_string))}\\', '1', '2013-06-18 17:33:25', '2013-06-18 17:33:25');
INSERT INTO `t_orderinfo` VALUES ('43', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:33:25', '2013-06-18 17:33:25');
INSERT INTO `t_orderinfo` VALUES ('44', '201305290038', '北京', '../../../../../../../../etc/passwd', '1', '2013-06-18 17:33:26', '2013-06-18 17:33:26');
INSERT INTO `t_orderinfo` VALUES ('45', '201305290038', '北京', 'print(md5(this_is_a_test_string));die();/*', '1', '2013-06-18 17:33:26', '2013-06-18 17:33:26');
INSERT INTO `t_orderinfo` VALUES ('46', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:33:26', '2013-06-18 17:33:26');
INSERT INTO `t_orderinfo` VALUES ('47', '201305290038', '北京', '../../../../../../../../etc/passwd\0.jpg', '1', '2013-06-18 17:33:27', '2013-06-18 17:33:27');
INSERT INTO `t_orderinfo` VALUES ('48', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:33:27', '2013-06-18 17:33:27');
INSERT INTO `t_orderinfo` VALUES ('49', '201305290038', '北京', '测试数据\"\"()))\'\'()', '1', '2013-06-18 17:33:27', '2013-06-18 17:33:27');
INSERT INTO `t_orderinfo` VALUES ('50', '201305290038', '北京', '../../../../../../../../../../etc/passwd%00', '1', '2013-06-18 17:33:28', '2013-06-18 17:33:28');
INSERT INTO `t_orderinfo` VALUES ('51', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:33:28', '2013-06-18 17:33:28');
INSERT INTO `t_orderinfo` VALUES ('52', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:33:28', '2013-06-18 17:33:28');
INSERT INTO `t_orderinfo` VALUES ('53', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:33:29', '2013-06-18 17:33:29');
INSERT INTO `t_orderinfo` VALUES ('54', '201305290038', '北京', '../../../../../../../../windows/win.ini', '1', '2013-06-18 17:33:29', '2013-06-18 17:33:29');
INSERT INTO `t_orderinfo` VALUES ('55', '201305290038', '北京', '测试数据 AnD 1491=8317', '1', '2013-06-18 17:33:29', '2013-06-18 17:33:29');
INSERT INTO `t_orderinfo` VALUES ('56', '201305290038', '北京', '../../../../../../../../windows/win.ini\0.jpg', '1', '2013-06-18 17:33:30', '2013-06-18 17:33:30');
INSERT INTO `t_orderinfo` VALUES ('57', '201305290038', '北京', '测试数据 aND 7796=7796', '1', '2013-06-18 17:33:30', '2013-06-18 17:33:30');
INSERT INTO `t_orderinfo` VALUES ('58', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:33:31', '2013-06-18 17:33:31');
INSERT INTO `t_orderinfo` VALUES ('59', '201305290038', '北京', '测试数据) AnD (1491=8317', '1', '2013-06-18 17:33:31', '2013-06-18 17:33:31');
INSERT INTO `t_orderinfo` VALUES ('60', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:33:32', '2013-06-18 17:33:32');
INSERT INTO `t_orderinfo` VALUES ('61', '201305290038', '北京', '测试数据) aND (7796=7796', '1', '2013-06-18 17:33:32', '2013-06-18 17:33:32');
INSERT INTO `t_orderinfo` VALUES ('62', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:33:33', '2013-06-18 17:33:33');
INSERT INTO `t_orderinfo` VALUES ('63', '201305290038', '北京', '测试数据\' AND 57=53 AND \'NNvf\'=\'NNvf', '1', '2013-06-18 17:33:33', '2013-06-18 17:33:33');
INSERT INTO `t_orderinfo` VALUES ('64', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:33:34', '2013-06-18 17:33:34');
INSERT INTO `t_orderinfo` VALUES ('65', '201305290038', '北京', '测试数据\' AND 57=57 AND \'NNvf\'=\'NNvf', '1', '2013-06-18 17:33:34', '2013-06-18 17:33:34');
INSERT INTO `t_orderinfo` VALUES ('66', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:33:35', '2013-06-18 17:33:35');
INSERT INTO `t_orderinfo` VALUES ('67', '201305290038', '北京', '测试数据\') AND 2557=7731 AND (\'mQKg\'=\'mQKg', '1', '2013-06-18 17:33:36', '2013-06-18 17:33:36');
INSERT INTO `t_orderinfo` VALUES ('68', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:33:36', '2013-06-18 17:33:36');
INSERT INTO `t_orderinfo` VALUES ('69', '201305290038', '北京', '测试数据\') AND 7796=7796 AND (\'jqFx\'=\'jqFx', '1', '2013-06-18 17:33:37', '2013-06-18 17:33:37');
INSERT INTO `t_orderinfo` VALUES ('70', '201305290038', '北京', '测试数据', '1', '2013-06-18 17:33:38', '2013-06-18 17:33:38');
INSERT INTO `t_orderinfo` VALUES ('71', '201306160073', 'Beijing', '<br>', '1', '2013-06-19 10:17:46', '2013-06-19 10:17:46');
INSERT INTO `t_orderinfo` VALUES ('72', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:31:24', '2013-06-25 17:31:24');
INSERT INTO `t_orderinfo` VALUES ('73', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:31:27', '2013-06-25 17:31:27');
INSERT INTO `t_orderinfo` VALUES ('74', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:31:52', '2013-06-25 17:31:52');
INSERT INTO `t_orderinfo` VALUES ('75', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:31:54', '2013-06-25 17:31:54');
INSERT INTO `t_orderinfo` VALUES ('76', '201306160073\"\"()))\'\'()', '北京', '测试数据', '1', '2013-06-25 17:31:55', '2013-06-25 17:31:55');
INSERT INTO `t_orderinfo` VALUES ('77', '201306160073 AnD 1491=8317', '北京', '测试数据', '1', '2013-06-25 17:31:57', '2013-06-25 17:31:57');
INSERT INTO `t_orderinfo` VALUES ('78', '201306160073 aND 7796=7796', '北京', '测试数据', '1', '2013-06-25 17:31:58', '2013-06-25 17:31:58');
INSERT INTO `t_orderinfo` VALUES ('79', '201306160073) AnD (1491=8317', '北京', '测试数据', '1', '2013-06-25 17:31:59', '2013-06-25 17:31:59');
INSERT INTO `t_orderinfo` VALUES ('80', '201306160073) aND (7796=7796', '北京', '测试数据', '1', '2013-06-25 17:32:00', '2013-06-25 17:32:00');
INSERT INTO `t_orderinfo` VALUES ('81', '/etc/passwd', '北京', '测试数据', '1', '2013-06-25 17:32:00', '2013-06-25 17:32:00');
INSERT INTO `t_orderinfo` VALUES ('82', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:32:06', '2013-06-25 17:32:06');
INSERT INTO `t_orderinfo` VALUES ('83', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:32:07', '2013-06-25 17:32:07');
INSERT INTO `t_orderinfo` VALUES ('84', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:32:07', '2013-06-25 17:32:07');
INSERT INTO `t_orderinfo` VALUES ('85', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:32:08', '2013-06-25 17:32:08');
INSERT INTO `t_orderinfo` VALUES ('86', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:32:08', '2013-06-25 17:32:08');
INSERT INTO `t_orderinfo` VALUES ('87', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:32:09', '2013-06-25 17:32:09');
INSERT INTO `t_orderinfo` VALUES ('88', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:32:09', '2013-06-25 17:32:09');
INSERT INTO `t_orderinfo` VALUES ('89', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:32:10', '2013-06-25 17:32:10');
INSERT INTO `t_orderinfo` VALUES ('90', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:32:10', '2013-06-25 17:32:10');
INSERT INTO `t_orderinfo` VALUES ('91', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:32:11', '2013-06-25 17:32:11');
INSERT INTO `t_orderinfo` VALUES ('92', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:32:11', '2013-06-25 17:32:11');
INSERT INTO `t_orderinfo` VALUES ('93', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:32:12', '2013-06-25 17:32:12');
INSERT INTO `t_orderinfo` VALUES ('94', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:32:12', '2013-06-25 17:32:12');
INSERT INTO `t_orderinfo` VALUES ('95', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:32:13', '2013-06-25 17:32:13');
INSERT INTO `t_orderinfo` VALUES ('96', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:32:18', '2013-06-25 17:32:18');
INSERT INTO `t_orderinfo` VALUES ('97', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:32:20', '2013-06-25 17:32:20');
INSERT INTO `t_orderinfo` VALUES ('98', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:32:21', '2013-06-25 17:32:21');
INSERT INTO `t_orderinfo` VALUES ('99', '201306160073', '北京', '测试数据', '1', '2013-06-25 17:32:24', '2013-06-25 17:32:24');
INSERT INTO `t_orderinfo` VALUES ('100', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:32:37', '2013-07-02 17:32:37');
INSERT INTO `t_orderinfo` VALUES ('101', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:32:40', '2013-07-02 17:32:40');
INSERT INTO `t_orderinfo` VALUES ('102', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:32:41', '2013-07-02 17:32:41');
INSERT INTO `t_orderinfo` VALUES ('103', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:32:42', '2013-07-02 17:32:42');
INSERT INTO `t_orderinfo` VALUES ('104', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:32:43', '2013-07-02 17:32:43');
INSERT INTO `t_orderinfo` VALUES ('105', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:33:13', '2013-07-02 17:33:13');
INSERT INTO `t_orderinfo` VALUES ('106', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:33:14', '2013-07-02 17:33:14');
INSERT INTO `t_orderinfo` VALUES ('107', '201306160073\"\"()))\'\'()', '北京', '测试数据', '1', '2013-07-02 17:33:15', '2013-07-02 17:33:15');
INSERT INTO `t_orderinfo` VALUES ('108', '201306160073 AnD 1491=8317', '北京', '测试数据', '1', '2013-07-02 17:33:17', '2013-07-02 17:33:17');
INSERT INTO `t_orderinfo` VALUES ('109', '201306160073 aND 7796=7796', '北京', '测试数据', '1', '2013-07-02 17:33:18', '2013-07-02 17:33:18');
INSERT INTO `t_orderinfo` VALUES ('110', '201306160073) AnD (1491=8317', '北京', '测试数据', '1', '2013-07-02 17:33:19', '2013-07-02 17:33:19');
INSERT INTO `t_orderinfo` VALUES ('111', '201306160073) aND (7796=7796', '北京', '测试数据', '1', '2013-07-02 17:33:20', '2013-07-02 17:33:20');
INSERT INTO `t_orderinfo` VALUES ('112', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:33:25', '2013-07-02 17:33:25');
INSERT INTO `t_orderinfo` VALUES ('113', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:33:26', '2013-07-02 17:33:26');
INSERT INTO `t_orderinfo` VALUES ('114', '201306160073', '北京\"\"()))\'\'()', '测试数据', '1', '2013-07-02 17:33:27', '2013-07-02 17:33:27');
INSERT INTO `t_orderinfo` VALUES ('115', '201306160073', '北京 AnD 1491=8317', '测试数据', '1', '2013-07-02 17:33:29', '2013-07-02 17:33:29');
INSERT INTO `t_orderinfo` VALUES ('116', '201306160073', '北京 aND 7796=7796', '测试数据', '1', '2013-07-02 17:33:30', '2013-07-02 17:33:30');
INSERT INTO `t_orderinfo` VALUES ('117', '201306160073', '北京) AnD (1491=8317', '测试数据', '1', '2013-07-02 17:33:31', '2013-07-02 17:33:31');
INSERT INTO `t_orderinfo` VALUES ('118', '201306160073', '北京) aND (7796=7796', '测试数据', '1', '2013-07-02 17:33:32', '2013-07-02 17:33:32');
INSERT INTO `t_orderinfo` VALUES ('119', '201306160073', '北京\' AND 57=53 AND \'NNvf\'=\'NNvf', '测试数据', '1', '2013-07-02 17:33:33', '2013-07-02 17:33:33');
INSERT INTO `t_orderinfo` VALUES ('120', '201306160073', '北京\' AND 57=57 AND \'NNvf\'=\'NNvf', '测试数据', '1', '2013-07-02 17:33:35', '2013-07-02 17:33:35');
INSERT INTO `t_orderinfo` VALUES ('121', '201306160073', '北京\') AND 2557=7731 AND (\'mQKg\'=\'mQKg', '测试数据', '1', '2013-07-02 17:33:36', '2013-07-02 17:33:36');
INSERT INTO `t_orderinfo` VALUES ('122', '201306160073', '北京\') AND 7796=7796 AND (\'jqFx\'=\'jqFx', '测试数据', '1', '2013-07-02 17:33:37', '2013-07-02 17:33:37');
INSERT INTO `t_orderinfo` VALUES ('123', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:33:39', '2013-07-02 17:33:39');
INSERT INTO `t_orderinfo` VALUES ('124', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:33:40', '2013-07-02 17:33:40');
INSERT INTO `t_orderinfo` VALUES ('125', '201306160073', '北京', '测试数据\"\"()))\'\'()', '1', '2013-07-02 17:33:41', '2013-07-02 17:33:41');
INSERT INTO `t_orderinfo` VALUES ('126', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:33:42', '2013-07-02 17:33:42');
INSERT INTO `t_orderinfo` VALUES ('127', '201306160073', '北京', '测试数据 AnD 1491=8317', '1', '2013-07-02 17:33:43', '2013-07-02 17:33:43');
INSERT INTO `t_orderinfo` VALUES ('128', '201306160073', '北京', '测试数据 aND 7796=7796', '1', '2013-07-02 17:33:44', '2013-07-02 17:33:44');
INSERT INTO `t_orderinfo` VALUES ('129', '201306160073', '北京', '测试数据) AnD (1491=8317', '1', '2013-07-02 17:33:45', '2013-07-02 17:33:45');
INSERT INTO `t_orderinfo` VALUES ('130', '201306160073', '北京', '测试数据) aND (7796=7796', '1', '2013-07-02 17:33:46', '2013-07-02 17:33:46');
INSERT INTO `t_orderinfo` VALUES ('131', '201306160073', '北京', '测试数据\' AND 57=53 AND \'NNvf\'=\'NNvf', '1', '2013-07-02 17:33:47', '2013-07-02 17:33:47');
INSERT INTO `t_orderinfo` VALUES ('132', '201306160073', '北京', '测试数据\' AND 57=57 AND \'NNvf\'=\'NNvf', '1', '2013-07-02 17:33:48', '2013-07-02 17:33:48');
INSERT INTO `t_orderinfo` VALUES ('133', '201306160073', '北京', '测试数据\') AND 2557=7731 AND (\'mQKg\'=\'mQKg', '1', '2013-07-02 17:33:49', '2013-07-02 17:33:49');
INSERT INTO `t_orderinfo` VALUES ('134', '201306160073', '北京', '测试数据\') AND 7796=7796 AND (\'jqFx\'=\'jqFx', '1', '2013-07-02 17:33:50', '2013-07-02 17:33:50');
INSERT INTO `t_orderinfo` VALUES ('135', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:33:51', '2013-07-02 17:33:51');
INSERT INTO `t_orderinfo` VALUES ('136', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:33:52', '2013-07-02 17:33:52');
INSERT INTO `t_orderinfo` VALUES ('137', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:33:53', '2013-07-02 17:33:53');
INSERT INTO `t_orderinfo` VALUES ('138', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:33:57', '2013-07-02 17:33:57');
INSERT INTO `t_orderinfo` VALUES ('139', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:33:58', '2013-07-02 17:33:58');
INSERT INTO `t_orderinfo` VALUES ('140', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:33:59', '2013-07-02 17:33:59');
INSERT INTO `t_orderinfo` VALUES ('141', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:00', '2013-07-02 17:34:00');
INSERT INTO `t_orderinfo` VALUES ('142', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:02', '2013-07-02 17:34:02');
INSERT INTO `t_orderinfo` VALUES ('143', '/etc/passwd', '北京', '测试数据', '1', '2013-07-02 17:34:10', '2013-07-02 17:34:10');
INSERT INTO `t_orderinfo` VALUES ('144', '201306160073', '/etc/passwd', '测试数据', '1', '2013-07-02 17:34:17', '2013-07-02 17:34:17');
INSERT INTO `t_orderinfo` VALUES ('145', '201306160073', '../../../../../../../../etc/passwd', '测试数据', '1', '2013-07-02 17:34:18', '2013-07-02 17:34:18');
INSERT INTO `t_orderinfo` VALUES ('146', '201306160073', '../../../../../../../../etc/passwd\0.jpg', '测试数据', '1', '2013-07-02 17:34:19', '2013-07-02 17:34:19');
INSERT INTO `t_orderinfo` VALUES ('147', '201306160073', '../../../../../../../../../../etc/passwd%00', '测试数据', '1', '2013-07-02 17:34:20', '2013-07-02 17:34:20');
INSERT INTO `t_orderinfo` VALUES ('148', '201306160073', '../../../../../../../../windows/win.ini', '测试数据', '1', '2013-07-02 17:34:21', '2013-07-02 17:34:21');
INSERT INTO `t_orderinfo` VALUES ('149', '201306160073', '../../../../../../../../windows/win.ini\0.jpg', '测试数据', '1', '2013-07-02 17:34:22', '2013-07-02 17:34:22');
INSERT INTO `t_orderinfo` VALUES ('150', '201306160073', '北京', '/etc/passwd', '1', '2013-07-02 17:34:23', '2013-07-02 17:34:23');
INSERT INTO `t_orderinfo` VALUES ('151', '201306160073', '北京', '../../../../../../../../etc/passwd', '1', '2013-07-02 17:34:24', '2013-07-02 17:34:24');
INSERT INTO `t_orderinfo` VALUES ('152', '201306160073', '北京', '../../../../../../../../etc/passwd\0.jpg', '1', '2013-07-02 17:34:25', '2013-07-02 17:34:25');
INSERT INTO `t_orderinfo` VALUES ('153', '201306160073', '北京', '../../../../../../../../../../etc/passwd%00', '1', '2013-07-02 17:34:26', '2013-07-02 17:34:26');
INSERT INTO `t_orderinfo` VALUES ('154', '201306160073', '${@print(md5(this_is_a_test_string))}', '测试数据', '1', '2013-07-02 17:34:27', '2013-07-02 17:34:27');
INSERT INTO `t_orderinfo` VALUES ('155', '201306160073', '北京', '../../../../../../../../windows/win.ini', '1', '2013-07-02 17:34:27', '2013-07-02 17:34:27');
INSERT INTO `t_orderinfo` VALUES ('156', '201306160073', '${@print(md5(this_is_a_test_string))}\\', '测试数据', '1', '2013-07-02 17:34:28', '2013-07-02 17:34:28');
INSERT INTO `t_orderinfo` VALUES ('157', '201306160073', '北京', '../../../../../../../../windows/win.ini\0.jpg', '1', '2013-07-02 17:34:28', '2013-07-02 17:34:28');
INSERT INTO `t_orderinfo` VALUES ('158', '201306160073', 'print(md5(this_is_a_test_string));die();/*', '测试数据', '1', '2013-07-02 17:34:29', '2013-07-02 17:34:29');
INSERT INTO `t_orderinfo` VALUES ('159', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:29', '2013-07-02 17:34:29');
INSERT INTO `t_orderinfo` VALUES ('160', '201306160073', '北京', '${@print(md5(this_is_a_test_string))}', '1', '2013-07-02 17:34:30', '2013-07-02 17:34:30');
INSERT INTO `t_orderinfo` VALUES ('161', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:30', '2013-07-02 17:34:30');
INSERT INTO `t_orderinfo` VALUES ('162', '201306160073', '北京', '${@print(md5(this_is_a_test_string))}\\', '1', '2013-07-02 17:34:31', '2013-07-02 17:34:31');
INSERT INTO `t_orderinfo` VALUES ('163', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:31', '2013-07-02 17:34:31');
INSERT INTO `t_orderinfo` VALUES ('164', '201306160073', '北京', 'print(md5(this_is_a_test_string));die();/*', '1', '2013-07-02 17:34:32', '2013-07-02 17:34:32');
INSERT INTO `t_orderinfo` VALUES ('165', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:32', '2013-07-02 17:34:32');
INSERT INTO `t_orderinfo` VALUES ('166', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:33', '2013-07-02 17:34:33');
INSERT INTO `t_orderinfo` VALUES ('167', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:33', '2013-07-02 17:34:33');
INSERT INTO `t_orderinfo` VALUES ('168', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:34', '2013-07-02 17:34:34');
INSERT INTO `t_orderinfo` VALUES ('169', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:34', '2013-07-02 17:34:34');
INSERT INTO `t_orderinfo` VALUES ('170', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:35', '2013-07-02 17:34:35');
INSERT INTO `t_orderinfo` VALUES ('171', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:35', '2013-07-02 17:34:35');
INSERT INTO `t_orderinfo` VALUES ('172', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:36', '2013-07-02 17:34:36');
INSERT INTO `t_orderinfo` VALUES ('173', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:36', '2013-07-02 17:34:36');
INSERT INTO `t_orderinfo` VALUES ('174', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:37', '2013-07-02 17:34:37');
INSERT INTO `t_orderinfo` VALUES ('175', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:37', '2013-07-02 17:34:37');
INSERT INTO `t_orderinfo` VALUES ('176', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:38', '2013-07-02 17:34:38');
INSERT INTO `t_orderinfo` VALUES ('177', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:39', '2013-07-02 17:34:39');
INSERT INTO `t_orderinfo` VALUES ('178', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:40', '2013-07-02 17:34:40');
INSERT INTO `t_orderinfo` VALUES ('179', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:41', '2013-07-02 17:34:41');
INSERT INTO `t_orderinfo` VALUES ('180', '201306160073', '北京', '测试数据', '1', '2013-07-02 17:34:59', '2013-07-02 17:34:59');
INSERT INTO `t_orderinfo` VALUES ('181', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:32:46', '2013-07-09 17:32:46');
INSERT INTO `t_orderinfo` VALUES ('182', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:32:48', '2013-07-09 17:32:48');
INSERT INTO `t_orderinfo` VALUES ('183', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:32:49', '2013-07-09 17:32:49');
INSERT INTO `t_orderinfo` VALUES ('184', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:32:50', '2013-07-09 17:32:50');
INSERT INTO `t_orderinfo` VALUES ('185', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:32:51', '2013-07-09 17:32:51');
INSERT INTO `t_orderinfo` VALUES ('186', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:32:52', '2013-07-09 17:32:52');
INSERT INTO `t_orderinfo` VALUES ('187', '/etc/passwd', '北京', '测试数据', '1', '2013-07-09 17:32:53', '2013-07-09 17:32:53');
INSERT INTO `t_orderinfo` VALUES ('188', '201305290038\"\"()))\'\'()', '北京', '测试数据', '1', '2013-07-09 17:32:53', '2013-07-09 17:32:53');
INSERT INTO `t_orderinfo` VALUES ('189', '201305290038 AnD 1491=8317', '北京', '测试数据', '1', '2013-07-09 17:32:56', '2013-07-09 17:32:56');
INSERT INTO `t_orderinfo` VALUES ('190', '201305290038 aND 7796=7796', '北京', '测试数据', '1', '2013-07-09 17:32:57', '2013-07-09 17:32:57');
INSERT INTO `t_orderinfo` VALUES ('191', '201305290038) AnD (1491=8317', '北京', '测试数据', '1', '2013-07-09 17:32:58', '2013-07-09 17:32:58');
INSERT INTO `t_orderinfo` VALUES ('192', '201305290038) aND (7796=7796', '北京', '测试数据', '1', '2013-07-09 17:32:59', '2013-07-09 17:32:59');
INSERT INTO `t_orderinfo` VALUES ('193', '201305290038', '${@print(md5(this_is_a_test_string))}', '测试数据', '1', '2013-07-09 17:32:59', '2013-07-09 17:32:59');
INSERT INTO `t_orderinfo` VALUES ('194', '201305290038', '/etc/passwd', '测试数据', '1', '2013-07-09 17:32:59', '2013-07-09 17:32:59');
INSERT INTO `t_orderinfo` VALUES ('195', '201305290038', '${@print(md5(this_is_a_test_string))}\\', '测试数据', '1', '2013-07-09 17:33:00', '2013-07-09 17:33:00');
INSERT INTO `t_orderinfo` VALUES ('196', '201305290038', '../../../../../../../../etc/passwd', '测试数据', '1', '2013-07-09 17:33:00', '2013-07-09 17:33:00');
INSERT INTO `t_orderinfo` VALUES ('197', '201305290038', 'print(md5(this_is_a_test_string));die();/*', '测试数据', '1', '2013-07-09 17:33:01', '2013-07-09 17:33:01');
INSERT INTO `t_orderinfo` VALUES ('198', '201305290038', '../../../../../../../../etc/passwd\0.jpg', '测试数据', '1', '2013-07-09 17:33:01', '2013-07-09 17:33:01');
INSERT INTO `t_orderinfo` VALUES ('199', '201305290038', '北京', '${@print(md5(this_is_a_test_string))}', '1', '2013-07-09 17:33:02', '2013-07-09 17:33:02');
INSERT INTO `t_orderinfo` VALUES ('200', '201305290038', '../../../../../../../../../../etc/passwd%00', '测试数据', '1', '2013-07-09 17:33:02', '2013-07-09 17:33:02');
INSERT INTO `t_orderinfo` VALUES ('201', '201305290038', '北京', '${@print(md5(this_is_a_test_string))}\\', '1', '2013-07-09 17:33:03', '2013-07-09 17:33:03');
INSERT INTO `t_orderinfo` VALUES ('202', '201305290038', '../../../../../../../../windows/win.ini', '测试数据', '1', '2013-07-09 17:33:03', '2013-07-09 17:33:03');
INSERT INTO `t_orderinfo` VALUES ('203', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:33:04', '2013-07-09 17:33:04');
INSERT INTO `t_orderinfo` VALUES ('204', '201305290038', '北京', 'print(md5(this_is_a_test_string));die();/*', '1', '2013-07-09 17:33:04', '2013-07-09 17:33:04');
INSERT INTO `t_orderinfo` VALUES ('205', '201305290038', '../../../../../../../../windows/win.ini\0.jpg', '测试数据', '1', '2013-07-09 17:33:04', '2013-07-09 17:33:04');
INSERT INTO `t_orderinfo` VALUES ('206', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:33:05', '2013-07-09 17:33:05');
INSERT INTO `t_orderinfo` VALUES ('207', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:33:05', '2013-07-09 17:33:05');
INSERT INTO `t_orderinfo` VALUES ('208', '201305290038', '北京', '/etc/passwd', '1', '2013-07-09 17:33:05', '2013-07-09 17:33:05');
INSERT INTO `t_orderinfo` VALUES ('209', '201305290038', '北京\"\"()))\'\'()', '测试数据', '1', '2013-07-09 17:33:06', '2013-07-09 17:33:06');
INSERT INTO `t_orderinfo` VALUES ('210', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:33:06', '2013-07-09 17:33:06');
INSERT INTO `t_orderinfo` VALUES ('211', '201305290038', '北京', '../../../../../../../../etc/passwd', '1', '2013-07-09 17:33:06', '2013-07-09 17:33:06');
INSERT INTO `t_orderinfo` VALUES ('212', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:33:07', '2013-07-09 17:33:07');
INSERT INTO `t_orderinfo` VALUES ('213', '201305290038', '北京', '../../../../../../../../etc/passwd\0.jpg', '1', '2013-07-09 17:33:07', '2013-07-09 17:33:07');
INSERT INTO `t_orderinfo` VALUES ('214', '201305290038', '北京 AnD 1491=8317', '测试数据', '1', '2013-07-09 17:33:08', '2013-07-09 17:33:08');
INSERT INTO `t_orderinfo` VALUES ('215', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:33:08', '2013-07-09 17:33:08');
INSERT INTO `t_orderinfo` VALUES ('216', '201305290038', '北京', '../../../../../../../../../../etc/passwd%00', '1', '2013-07-09 17:33:08', '2013-07-09 17:33:08');
INSERT INTO `t_orderinfo` VALUES ('217', '201305290038', '北京 aND 7796=7796', '测试数据', '1', '2013-07-09 17:33:09', '2013-07-09 17:33:09');
INSERT INTO `t_orderinfo` VALUES ('218', '201305290038', '北京', '../../../../../../../../windows/win.ini', '1', '2013-07-09 17:33:09', '2013-07-09 17:33:09');
INSERT INTO `t_orderinfo` VALUES ('219', '201305290038', '北京) AnD (1491=8317', '测试数据', '1', '2013-07-09 17:33:10', '2013-07-09 17:33:10');
INSERT INTO `t_orderinfo` VALUES ('220', '201305290038', '北京', '../../../../../../../../windows/win.ini\0.jpg', '1', '2013-07-09 17:33:10', '2013-07-09 17:33:10');
INSERT INTO `t_orderinfo` VALUES ('221', '201305290038', '北京) aND (7796=7796', '测试数据', '1', '2013-07-09 17:33:11', '2013-07-09 17:33:11');
INSERT INTO `t_orderinfo` VALUES ('222', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:33:11', '2013-07-09 17:33:11');
INSERT INTO `t_orderinfo` VALUES ('223', '201305290038', '北京\' AND 57=53 AND \'NNvf\'=\'NNvf', '测试数据', '1', '2013-07-09 17:33:12', '2013-07-09 17:33:12');
INSERT INTO `t_orderinfo` VALUES ('224', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:33:13', '2013-07-09 17:33:13');
INSERT INTO `t_orderinfo` VALUES ('225', '201305290038', '北京\' AND 57=57 AND \'NNvf\'=\'NNvf', '测试数据', '1', '2013-07-09 17:33:13', '2013-07-09 17:33:13');
INSERT INTO `t_orderinfo` VALUES ('226', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:33:14', '2013-07-09 17:33:14');
INSERT INTO `t_orderinfo` VALUES ('227', '201305290038', '北京\') AND 2557=7731 AND (\'mQKg\'=\'mQKg', '测试数据', '1', '2013-07-09 17:33:14', '2013-07-09 17:33:14');
INSERT INTO `t_orderinfo` VALUES ('228', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:33:15', '2013-07-09 17:33:15');
INSERT INTO `t_orderinfo` VALUES ('229', '201305290038', '北京\') AND 7796=7796 AND (\'jqFx\'=\'jqFx', '测试数据', '1', '2013-07-09 17:33:15', '2013-07-09 17:33:15');
INSERT INTO `t_orderinfo` VALUES ('230', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:33:16', '2013-07-09 17:33:16');
INSERT INTO `t_orderinfo` VALUES ('231', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:33:16', '2013-07-09 17:33:16');
INSERT INTO `t_orderinfo` VALUES ('232', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:33:17', '2013-07-09 17:33:17');
INSERT INTO `t_orderinfo` VALUES ('233', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:33:17', '2013-07-09 17:33:17');
INSERT INTO `t_orderinfo` VALUES ('234', '201305290038', '北京', '测试数据\"\"()))\'\'()', '1', '2013-07-09 17:33:19', '2013-07-09 17:33:19');
INSERT INTO `t_orderinfo` VALUES ('235', '201305290038', '北京', '测试数据', '1', '2013-07-09 17:33:20', '2013-07-09 17:33:20');
INSERT INTO `t_orderinfo` VALUES ('236', '201305290038', '北京', '测试数据 AnD 1491=8317', '1', '2013-07-09 17:33:21', '2013-07-09 17:33:21');
INSERT INTO `t_orderinfo` VALUES ('237', '201305290038', '北京', '测试数据 aND 7796=7796', '1', '2013-07-09 17:33:22', '2013-07-09 17:33:22');
INSERT INTO `t_orderinfo` VALUES ('238', '201305290038', '北京', '测试数据) AnD (1491=8317', '1', '2013-07-09 17:33:23', '2013-07-09 17:33:23');
INSERT INTO `t_orderinfo` VALUES ('239', '201305290038', '北京', '测试数据) aND (7796=7796', '1', '2013-07-09 17:33:24', '2013-07-09 17:33:24');
INSERT INTO `t_orderinfo` VALUES ('240', '201305290038', '北京', '测试数据\' AND 57=53 AND \'NNvf\'=\'NNvf', '1', '2013-07-09 17:33:25', '2013-07-09 17:33:25');
INSERT INTO `t_orderinfo` VALUES ('241', '201305290038', '北京', '测试数据\' AND 57=57 AND \'NNvf\'=\'NNvf', '1', '2013-07-09 17:33:26', '2013-07-09 17:33:26');
INSERT INTO `t_orderinfo` VALUES ('242', '201305290038', '北京', '测试数据\') AND 2557=7731 AND (\'mQKg\'=\'mQKg', '1', '2013-07-09 17:33:27', '2013-07-09 17:33:27');
INSERT INTO `t_orderinfo` VALUES ('243', '201305290038', '北京', '测试数据\') AND 7796=7796 AND (\'jqFx\'=\'jqFx', '1', '2013-07-09 17:33:28', '2013-07-09 17:33:28');
INSERT INTO `t_orderinfo` VALUES ('244', '201307040113', 'Beijing', 'test', '1', '2013-07-10 15:24:20', '2013-07-10 15:24:20');
INSERT INTO `t_orderinfo` VALUES ('245', '201307040113', 'Beijing', 'test', '1', '2013-07-10 15:24:29', '2013-07-10 15:24:29');
INSERT INTO `t_orderinfo` VALUES ('246', '201307040112', 'New York', 'test', '1', '2013-07-10 15:24:38', '2013-07-10 15:24:38');
INSERT INTO `t_orderinfo` VALUES ('247', '201307040112', 'New York', 'test', '1', '2013-07-10 15:24:40', '2013-07-10 15:24:40');
INSERT INTO `t_orderinfo` VALUES ('248', '201307050119', 'Block Lights', 'test', '1', '2013-07-10 15:30:05', '2013-07-10 15:30:05');
INSERT INTO `t_orderinfo` VALUES ('249', '201307040113', 'Beijing', 'test<div><br></div>', '1', '2013-07-12 12:40:34', '2013-07-12 12:40:34');
INSERT INTO `t_orderinfo` VALUES ('250', '201307040113', 'Beijing', 'test', '1', '2013-07-15 11:33:46', '2013-07-15 11:33:46');
INSERT INTO `t_orderinfo` VALUES ('251', '201305290038', '北京', '测试数据', '1', '2013-07-16 17:31:53', '2013-07-16 17:31:53');
INSERT INTO `t_orderinfo` VALUES ('252', '201305290038', '北京', '测试数据', '1', '2013-07-16 17:31:56', '2013-07-16 17:31:56');
INSERT INTO `t_orderinfo` VALUES ('253', '201305290038', '北京', '测试数据', '1', '2013-07-16 17:31:57', '2013-07-16 17:31:57');
INSERT INTO `t_orderinfo` VALUES ('254', '201305290038', '北京', '测试数据', '1', '2013-07-16 17:31:58', '2013-07-16 17:31:58');
INSERT INTO `t_orderinfo` VALUES ('255', '201305290038', '北京', '测试数据', '1', '2013-07-16 17:32:02', '2013-07-16 17:32:02');
INSERT INTO `t_orderinfo` VALUES ('256', '201305290038', '北京', '测试数据', '1', '2013-07-16 17:32:03', '2013-07-16 17:32:03');
INSERT INTO `t_orderinfo` VALUES ('257', '201305290038\"\"()))\'\'()', '北京', '测试数据', '1', '2013-07-16 17:32:04', '2013-07-16 17:32:04');
INSERT INTO `t_orderinfo` VALUES ('258', '201305290038 AnD 1491=8317', '北京', '测试数据', '1', '2013-07-16 17:32:07', '2013-07-16 17:32:07');
INSERT INTO `t_orderinfo` VALUES ('259', '201305290038 aND 7796=7796', '北京', '测试数据', '1', '2013-07-16 17:32:08', '2013-07-16 17:32:08');
INSERT INTO `t_orderinfo` VALUES ('260', '201305290038) AnD (1491=8317', '北京', '测试数据', '1', '2013-07-16 17:32:09', '2013-07-16 17:32:09');
INSERT INTO `t_orderinfo` VALUES ('261', '201305290038) aND (7796=7796', '北京', '测试数据', '1', '2013-07-16 17:32:10', '2013-07-16 17:32:10');
INSERT INTO `t_orderinfo` VALUES ('262', '201305290038', '北京', '测试数据', '1', '2013-07-16 17:32:25', '2013-07-16 17:32:25');
INSERT INTO `t_orderinfo` VALUES ('263', '201305290038', '北京', '测试数据', '1', '2013-07-16 17:32:26', '2013-07-16 17:32:26');
INSERT INTO `t_orderinfo` VALUES ('264', '201305290038', '北京\"\"()))\'\'()', '测试数据', '1', '2013-07-16 17:32:27', '2013-07-16 17:32:27');
INSERT INTO `t_orderinfo` VALUES ('265', '201305290038', '北京 AnD 1491=8317', '测试数据', '1', '2013-07-16 17:32:29', '2013-07-16 17:32:29');
INSERT INTO `t_orderinfo` VALUES ('266', '201305290038', '北京 aND 7796=7796', '测试数据', '1', '2013-07-16 17:32:30', '2013-07-16 17:32:30');
INSERT INTO `t_orderinfo` VALUES ('267', '201305290038', '北京) AnD (1491=8317', '测试数据', '1', '2013-07-16 17:32:33', '2013-07-16 17:32:33');
INSERT INTO `t_orderinfo` VALUES ('268', '201305290038', '北京) aND (7796=7796', '测试数据', '1', '2013-07-16 17:32:34', '2013-07-16 17:32:34');
INSERT INTO `t_orderinfo` VALUES ('269', '201305290038', '北京\' AND 57=53 AND \'NNvf\'=\'NNvf', '测试数据', '1', '2013-07-16 17:32:35', '2013-07-16 17:32:35');
INSERT INTO `t_orderinfo` VALUES ('270', '201305290038', '北京\' AND 57=57 AND \'NNvf\'=\'NNvf', '测试数据', '1', '2013-07-16 17:32:36', '2013-07-16 17:32:36');
INSERT INTO `t_orderinfo` VALUES ('271', '201305290038', '北京\') AND 2557=7731 AND (\'mQKg\'=\'mQKg', '测试数据', '1', '2013-07-16 17:32:37', '2013-07-16 17:32:37');
INSERT INTO `t_orderinfo` VALUES ('272', '201305290038', '北京\') AND 7796=7796 AND (\'jqFx\'=\'jqFx', '测试数据', '1', '2013-07-16 17:32:38', '2013-07-16 17:32:38');
INSERT INTO `t_orderinfo` VALUES ('273', '201305290038', '北京', '测试数据', '1', '2013-07-16 17:32:40', '2013-07-16 17:32:40');
INSERT INTO `t_orderinfo` VALUES ('274', '201305290038', '北京', '测试数据', '1', '2013-07-16 17:32:41', '2013-07-16 17:32:41');
INSERT INTO `t_orderinfo` VALUES ('275', '201305290038', '北京', '测试数据\"\"()))\'\'()', '1', '2013-07-16 17:32:42', '2013-07-16 17:32:42');
INSERT INTO `t_orderinfo` VALUES ('276', '201305290038', '北京', '测试数据', '1', '2013-07-16 17:32:43', '2013-07-16 17:32:43');
INSERT INTO `t_orderinfo` VALUES ('277', '201305290038', '北京', '测试数据 AnD 1491=8317', '1', '2013-07-16 17:32:44', '2013-07-16 17:32:44');
INSERT INTO `t_orderinfo` VALUES ('278', '201305290038', '北京', '测试数据 aND 7796=7796', '1', '2013-07-16 17:32:46', '2013-07-16 17:32:46');
INSERT INTO `t_orderinfo` VALUES ('279', '201305290038', '北京', '测试数据) AnD (1491=8317', '1', '2013-07-16 17:32:47', '2013-07-16 17:32:47');
INSERT INTO `t_orderinfo` VALUES ('280', '201305290038', '北京', '测试数据) aND (7796=7796', '1', '2013-07-16 17:32:48', '2013-07-16 17:32:48');
INSERT INTO `t_orderinfo` VALUES ('281', '201305290038', '北京', '测试数据\' AND 57=53 AND \'NNvf\'=\'NNvf', '1', '2013-07-16 17:32:49', '2013-07-16 17:32:49');
INSERT INTO `t_orderinfo` VALUES ('282', '201305290038', '北京', '测试数据\' AND 57=57 AND \'NNvf\'=\'NNvf', '1', '2013-07-16 17:32:50', '2013-07-16 17:32:50');
INSERT INTO `t_orderinfo` VALUES ('283', '201305290038', '北京', '测试数据\') AND 2557=7731 AND (\'mQKg\'=\'mQKg', '1', '2013-07-16 17:32:51', '2013-07-16 17:32:51');
INSERT INTO `t_orderinfo` VALUES ('284', '201305290038', '北京', '测试数据\') AND 7796=7796 AND (\'jqFx\'=\'jqFx', '1', '2013-07-16 17:32:52', '2013-07-16 17:32:52');
INSERT INTO `t_orderinfo` VALUES ('285', '/etc/passwd', '北京', '测试数据', '1', '2013-07-16 17:35:23', '2013-07-16 17:35:23');
INSERT INTO `t_orderinfo` VALUES ('286', '201306160073', '北京', '测试数据', '1', '2013-07-16 17:35:34', '2013-07-16 17:35:34');
INSERT INTO `t_orderinfo` VALUES ('287', '201306160073', '北京', '测试数据', '1', '2013-07-16 17:35:35', '2013-07-16 17:35:35');
INSERT INTO `t_orderinfo` VALUES ('288', '201306160073', '北京', '测试数据', '1', '2013-07-16 17:35:37', '2013-07-16 17:35:37');
INSERT INTO `t_orderinfo` VALUES ('289', '201306160073', '北京', '测试数据', '1', '2013-07-16 17:35:39', '2013-07-16 17:35:39');
INSERT INTO `t_orderinfo` VALUES ('290', '201306160073', '北京', '测试数据', '1', '2013-07-16 17:35:40', '2013-07-16 17:35:40');
INSERT INTO `t_orderinfo` VALUES ('291', '201306160073', '北京', '测试数据', '1', '2013-07-16 17:35:41', '2013-07-16 17:35:41');
INSERT INTO `t_orderinfo` VALUES ('292', '201306160073', '北京', '测试数据', '1', '2013-07-16 17:35:42', '2013-07-16 17:35:42');
INSERT INTO `t_orderinfo` VALUES ('293', '201306160073', '北京', '测试数据', '1', '2013-07-16 17:35:43', '2013-07-16 17:35:43');
INSERT INTO `t_orderinfo` VALUES ('294', '201306160073', '北京', '测试数据', '1', '2013-07-16 17:35:46', '2013-07-16 17:35:46');
INSERT INTO `t_orderinfo` VALUES ('295', '201306160073', '北京', '测试数据', '1', '2013-07-16 17:35:45', '2013-07-16 17:35:45');
INSERT INTO `t_orderinfo` VALUES ('296', '201306160073', '北京', '测试数据', '1', '2013-07-23 17:34:00', '2013-07-23 17:34:00');
INSERT INTO `t_orderinfo` VALUES ('297', '201306160073', '北京', '测试数据', '1', '2013-07-23 17:34:14', '2013-07-23 17:34:14');
INSERT INTO `t_orderinfo` VALUES ('298', '201306160073', '北京', '测试数据', '1', '2013-07-23 17:34:14', '2013-07-23 17:34:14');
INSERT INTO `t_orderinfo` VALUES ('299', '201305290038', '北京', '测试数据', '1', '2013-07-23 17:34:14', '2013-07-23 17:34:14');
INSERT INTO `t_orderinfo` VALUES ('300', '201306160073', '北京', '测试数据', '1', '2013-07-23 17:34:15', '2013-07-23 17:34:15');
INSERT INTO `t_orderinfo` VALUES ('301', '201306160073', '北京', '测试数据', '1', '2013-07-23 17:34:15', '2013-07-23 17:34:15');
INSERT INTO `t_orderinfo` VALUES ('302', '201306160073', '北京', '测试数据', '1', '2013-07-23 17:34:16', '2013-07-23 17:34:16');
INSERT INTO `t_orderinfo` VALUES ('303', '201306160073', '北京', '测试数据', '1', '2013-07-23 17:34:16', '2013-07-23 17:34:16');
INSERT INTO `t_orderinfo` VALUES ('304', '201306160073', '北京', '测试数据', '1', '2013-07-23 17:34:17', '2013-07-23 17:34:17');
INSERT INTO `t_orderinfo` VALUES ('305', '201306160073', '北京', '测试数据', '1', '2013-07-23 17:34:18', '2013-07-23 17:34:18');
INSERT INTO `t_orderinfo` VALUES ('306', '201306160073', '北京', '测试数据', '1', '2013-07-23 17:34:19', '2013-07-23 17:34:19');
INSERT INTO `t_orderinfo` VALUES ('307', '201307040113', 'Beijing', 'does this work? PL just testing.', '1', '2013-09-20 00:52:19', '2013-09-20 00:52:19');
INSERT INTO `t_orderinfo` VALUES ('308', '201307040113', 'Beijing', ';palskdjfalksdjfalkdsjf', '1', '2013-09-22 10:26:17', '2013-09-22 10:26:17');
INSERT INTO `t_orderinfo` VALUES ('309', '201307040113', 'Beijing', 'asdlkfjalksdjf', '1', '2013-09-22 10:26:53', '2013-09-22 10:26:53');

-- ----------------------------
-- Table structure for `t_systemargs`
-- ----------------------------
DROP TABLE IF EXISTS `t_systemargs`;
CREATE TABLE `t_systemargs` (
  `oid` int(11) NOT NULL,
  `k` varchar(145) DEFAULT NULL,
  `v` varchar(145) DEFAULT NULL,
  `cdesc` varchar(255) DEFAULT NULL,
  `edesc` varchar(255) DEFAULT NULL,
  `ordinal` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_systemargs
-- ----------------------------
INSERT INTO `t_systemargs` VALUES ('1', 'application.background.gridline', '1', null, null, '100', '1', null, '2013-06-16 11:45:04', '2013-08-26 11:36:34');
INSERT INTO `t_systemargs` VALUES ('2', 'application.background.image', '0', null, null, '100', '1', null, '2013-06-16 11:45:04', '2013-08-26 11:36:34');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK143BF46A5190D456` (`role_id`),
  KEY `FK143BF46AF6BB9836` (`user_id`),
  CONSTRAINT `FK143BF46A5190D456` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK143BF46AF6BB9836` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('-1', '-2');
INSERT INTO `user_role` VALUES ('-2', '-1');
