/*
 Navicat Premium Data Transfer

 Source Server         : MySQL57
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : studentms

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 26/01/2023 19:16:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for c
-- ----------------------------
DROP TABLE IF EXISTS `c`;
CREATE TABLE `c`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ccredit` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c
-- ----------------------------
INSERT INTO `c` VALUES (7, 'C语言数据结构', 6);
INSERT INTO `c` VALUES (8, '高等数学上', 3);
INSERT INTO `c` VALUES (9, '计算机网络', 5);
INSERT INTO `c` VALUES (10, '计算机组成原理', 5);
INSERT INTO `c` VALUES (11, '软件工程毕业论文', 20);
INSERT INTO `c` VALUES (12, '高等数学下', 3);
INSERT INTO `c` VALUES (13, '计算机操作系统', 5);
INSERT INTO `c` VALUES (14, '软件工程导论', 10);
INSERT INTO `c` VALUES (15, 'Android手机应用开发', 5);
INSERT INTO `c` VALUES (16, 'Redis', 10);
INSERT INTO `c` VALUES (17, 'Java高级程序设计', 20);

-- ----------------------------
-- Table structure for ct
-- ----------------------------
DROP TABLE IF EXISTS `ct`;
CREATE TABLE `ct`  (
  `ctid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NULL DEFAULT NULL,
  `tid` int(11) NULL DEFAULT NULL,
  `term` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ctid`) USING BTREE,
  INDEX `cid`(`cid`) USING BTREE,
  INDEX `tid`(`tid`) USING BTREE,
  CONSTRAINT `ct_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `c` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ct_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `t` (`tid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ct
-- ----------------------------
INSERT INTO `ct` VALUES (5, 8, 4, '22-春季学期');
INSERT INTO `ct` VALUES (6, 7, 4, '22-春季学期');
INSERT INTO `ct` VALUES (7, 10, 13, '22-春季学期');
INSERT INTO `ct` VALUES (8, 9, 13, '22-春季学期');
INSERT INTO `ct` VALUES (9, 11, 4, '22-春季学期');

-- ----------------------------
-- Table structure for s
-- ----------------------------
DROP TABLE IF EXISTS `s`;
CREATE TABLE `s`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s
-- ----------------------------
INSERT INTO `s` VALUES (2, '张四', '123');
INSERT INTO `s` VALUES (4, '彭昊辉', '123456');
INSERT INTO `s` VALUES (24, '张某人', '123456789..');
INSERT INTO `s` VALUES (25, '张三', '123..');

-- ----------------------------
-- Table structure for sct
-- ----------------------------
DROP TABLE IF EXISTS `sct`;
CREATE TABLE `sct`  (
  `sctid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  `tid` int(11) NULL DEFAULT NULL,
  `grade` float NULL DEFAULT NULL,
  `term` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sctid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `tid`(`tid`) USING BTREE,
  INDEX `cid`(`cid`) USING BTREE,
  CONSTRAINT `sct_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `s` (`sid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sct_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `ct` (`tid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sct_ibfk_3` FOREIGN KEY (`cid`) REFERENCES `ct` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sct
-- ----------------------------
INSERT INTO `sct` VALUES (10, 2, 8, 4, 1, '22-春季学期');
INSERT INTO `sct` VALUES (11, 2, 10, 13, NULL, '22-春季学期');
INSERT INTO `sct` VALUES (12, 2, 7, 4, NULL, '22-春季学期');
INSERT INTO `sct` VALUES (13, 4, 8, 4, 10, '22-春季学期');
INSERT INTO `sct` VALUES (14, 4, 7, 4, NULL, '22-春季学期');
INSERT INTO `sct` VALUES (15, 4, 10, 13, NULL, '22-春季学期');

-- ----------------------------
-- Table structure for t
-- ----------------------------
DROP TABLE IF EXISTS `t`;
CREATE TABLE `t`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t
-- ----------------------------
INSERT INTO `t` VALUES (4, '张三强', '123456789..');
INSERT INTO `t` VALUES (6, 'admin', '123');
INSERT INTO `t` VALUES (13, '李四', '123');

SET FOREIGN_KEY_CHECKS = 1;
