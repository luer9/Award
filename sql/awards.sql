/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : awards

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 26/08/2020 17:49:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `adminUser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员账号',
  `adminPwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员密码',
  `adminName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员姓名',
  `adminInstitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员所属学院',
  `adminTel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员电话',
  `adminEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员邮件',
  PRIMARY KEY (`adminUser`, `adminPwd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', '1', 'sss', '软件学院', '13027507869', 'admin@qq.com');

-- ----------------------------
-- Table structure for awardinfor
-- ----------------------------
DROP TABLE IF EXISTS `awardinfor`;
CREATE TABLE `awardinfor`  (
  `awardId` int(10) NOT NULL AUTO_INCREMENT COMMENT '奖项id',
  `awardStuId` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '获奖学生id',
  `awardName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '奖项名称',
  `awardLevel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '奖项级别（院级D，校级C，省级B，国家级A）',
  `awardClassify` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '比赛分类（学科竞赛A，专业技能竞赛B，创新项目C，综合素质（德智体美）D）',
  `awardRate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '获奖等级（参与奖4，三等奖3，二等奖2，一等奖1，特等奖0）',
  `awardOrganization` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '比赛组织者',
  `awardDate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '获奖日期',
  `awardType` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '比赛类型（单人，团体）',
  `awardPeo` int(10) NULL DEFAULT NULL COMMENT '比赛参与人数',
  `awardPic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '证书照片路径',
  `awardTeacherName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '导师名字',
  `awardLeader` int(255) NULL DEFAULT NULL COMMENT '负责人，1是 0不是',
  PRIMARY KEY (`awardId`) USING BTREE,
  INDEX `FK_level`(`awardLevel`) USING BTREE,
  INDEX `FK_rate`(`awardRate`) USING BTREE,
  INDEX `FK_id`(`awardStuId`) USING BTREE,
  CONSTRAINT `FK_id` FOREIGN KEY (`awardStuId`) REFERENCES `student` (`stuId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 20000026 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of awardinfor
-- ----------------------------
INSERT INTO `awardinfor` VALUES (20000002, '1', '第十届计算机设计天梯赛', '国家级', '学科竞赛', '一等奖', '河南省计算机协会', '2019-03-21', '团体赛', 6, NULL, '王震', 0);
INSERT INTO `awardinfor` VALUES (20000003, '1', '第十届计算机设计天梯赛', '省级', '学科竞赛', '二等奖', '计算机协会', '2019-03-20', '团体赛', 10, NULL, '王震', 0);
INSERT INTO `awardinfor` VALUES (20000004, '1', '互联网+', '国家级', '学科竞赛', '三等奖', '计算机协会', '2020.03.18', '团体赛', 5, '/AwardPic/fd1445a89c43447e8be731f478c06175.png', '王震', 1);
INSERT INTO `awardinfor` VALUES (20000023, '1', 'ss', 'ss', '学科竞赛', '3', 'ss', '123', '个人赛', 1, '/AwardPic/dc6f291e8f384679929fde7b6e16e8ac.png', 'yl', 0);
INSERT INTO `awardinfor` VALUES (20000024, '2', '1', '国家级', '学科竞赛', '一等奖', '中国', '2019.03.18', '个人赛', 1, NULL, 'yl', 0);

-- ----------------------------
-- Table structure for checkinfor
-- ----------------------------
DROP TABLE IF EXISTS `checkinfor`;
CREATE TABLE `checkinfor`  (
  `checkId` int(20) NOT NULL AUTO_INCREMENT COMMENT '审核id,为什么会有审核id,因为一个奖项不止审核一次',
  `awardId` int(10) NOT NULL COMMENT '奖项id',
  `checkFlag` int(2) NOT NULL DEFAULT -1 COMMENT '是否通过审核 1 通过，0不通过，-1待审核\r\n',
  `notes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`checkId`, `awardId`) USING BTREE,
  INDEX `FK_awardID`(`awardId`) USING BTREE,
  CONSTRAINT `FK_awardID` FOREIGN KEY (`awardId`) REFERENCES `awardinfor` (`awardId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 17000008 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of checkinfor
-- ----------------------------
INSERT INTO `checkinfor` VALUES (17000003, 20000003, 1, 'good job');
INSERT INTO `checkinfor` VALUES (17000006, 20000002, -1, 'what？');
INSERT INTO `checkinfor` VALUES (17000007, 20000023, -1, 'nononononoowwwwwww');
INSERT INTO `checkinfor` VALUES (17000008, 20000024, 0, 'ssssss');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `stuId` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学生id(学号)',
  `stuName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `stuPwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学生密码',
  `stuMajor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学生专业',
  `stuInstitute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学生学院',
  `stuClass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学生班级',
  `stuEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `stuTel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学生电话',
  `stuSex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学生性别',
  PRIMARY KEY (`stuId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '杨露露', '1', '软件工程', '软件学院', '软件工程二班', '1026533954@qq.com', '13027507869', '女');
INSERT INTO `student` VALUES ('2', 'sss', '1', '软件工程', '软件学院', '软件工程二班', '1153135121', '651231', '女');

-- ----------------------------
-- Triggers structure for table awardinfor
-- ----------------------------
DROP TRIGGER IF EXISTS `tr_insert_checkinfor`;
delimiter ;;
CREATE TRIGGER `tr_insert_checkinfor` AFTER INSERT ON `awardinfor` FOR EACH ROW begin
	set @t_id = NEW.awardId;
	insert into checkinfor(awardId) values(@t_id);
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
