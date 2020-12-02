/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50626
 Source Host           : localhost:3306
 Source Schema         : ssm_mv

 Target Server Type    : MySQL
 Target Server Version : 50626
 File Encoding         : 65001

 Date: 02/12/2020 16:02:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for classify
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `classifynum` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifyname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifytime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `classifypath` decimal(8, 2) NULL DEFAULT NULL,
  `classifyprice` decimal(8, 2) NULL DEFAULT NULL,
  `classifydesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifystatus` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of classify
-- ----------------------------
INSERT INTO `classify` VALUES (1, 'S001', '长途搬家', '2020-11-16 10:39:58.000000', 5.00, 500.00, '市内、省内之间的搬家活动，距离相对较远。', 1);
INSERT INTO `classify` VALUES (3, 'S002', '行李托运', '2020-11-16 10:45:44.000000', 2.50, 100.00, '简单的行李运送，短距离、远距离均可。', 1);
INSERT INTO `classify` VALUES (4, 'S003', '设备迁移', '2020-11-16 10:45:44.000000', 1.80, 200.00, '居家、办公等一些较重的设备的装运。', 1);
INSERT INTO `classify` VALUES (5, 'S004', '办公室搬迁', '2020-11-16 10:45:45.000000', 4.00, 250.00, '居家楼、办公楼、写字楼的搬运。', 1);
INSERT INTO `classify` VALUES (6, 'S005', '钢琴搬运', '2020-11-16 10:45:45.000000', 0.80, 100.00, '贵重的乐器类的搬运、如钢琴等。', 1);
INSERT INTO `classify` VALUES (7, 'S006', '精品搬家', '2020-11-16 10:45:45.000000', 1.20, 150.00, '市区、较大型的物品，需要包装搬运。', 1);
INSERT INTO `classify` VALUES (8, 'S007', '国际搬家', '2020-11-16 10:45:45.000000', 100.00, 500.00, '跨区域之间的活动。', 1);
INSERT INTO `classify` VALUES (9, 'S008', '居民搬家', '2020-11-16 10:45:45.000000', 1.00, 80.00, '距离较近的搬家。', 1);
INSERT INTO `classify` VALUES (12, 'S010', '企业搬家', '2020-11-16 10:49:23.000000', 3.10, 180.00, '', 0);
INSERT INTO `classify` VALUES (13, 'S011', '个人搬家', '2020-11-16 10:49:25.000000', 1.20, 100.00, '现场有组长指挥，安全周到，让您放心、舒心', 1);
INSERT INTO `classify` VALUES (14, 'S012', '专业拆装家具', '2020-11-16 10:49:25.000000', 0.80, 50.00, '设有家具拆装工程部门，由专业拆装工程队伍负责拆装高中档办公家具，组合家具，台球桌拆装', 1);
INSERT INTO `classify` VALUES (15, 'S013', '专业空调移机', '2020-11-16 10:49:25.000000', 1.20, 250.00, '', 1);
INSERT INTO `classify` VALUES (17, 'S009', '专业清洗', '2020-11-16 10:49:25.000000', 2.30, 50.00, '专业清洗，整洁干净', 0);

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `staffid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `staffname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `staffage` int(11) NULL DEFAULT NULL,
  `staffsex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stafftel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `credentialstype` int(11) NULL DEFAULT NULL,
  `credentialsnum` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `staffaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `staffstatus` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, '0ASDEGI1', '杨阳洋', 22, '男', '18888888888', 0, '411282199610122045', '水泉头常闫村100号', 1);
INSERT INTO `employee` VALUES (2, '0ASDEGI2', '王强', 28, '男', '18798774450', 1, '411223199003195022', '焦村镇焦村村13号', 1);
INSERT INTO `employee` VALUES (3, '0SDEGTB3', '刘华烨', 30, '男', '18798056877', 1, '411223198806290313', '焦村镇坪村15号', 1);
INSERT INTO `employee` VALUES (4, '0SDEGTB4', '韩林林', 25, '男', '15537386613', 1, '41121319930810330x', '阳平镇贾村105号', 1);
INSERT INTO `employee` VALUES (5, '0WFRGYU5', '李刚', 24, '男', '15988906573', 1, '411282199405154123', '', 1);
INSERT INTO `employee` VALUES (6, '0WFRGYU6', '孙启维', 26, '男', '15987874820', 1, '411233199209295015', '西闫乡大闫村111号', 1);
INSERT INTO `employee` VALUES (7, '0BTRGEH7', '李春芳', 28, '女', '15567873390', 1, '41121319900409336x', '焦村镇西漳15号', 1);
INSERT INTO `employee` VALUES (8, '0BTRGEH8', '王丽艳', 29, '女', '19936377865', 1, '411242198907206043', '豫灵镇水泉村22号', 1);
INSERT INTO `employee` VALUES (9, '0ASDEGI9', '赵芸儿', 23, '女', '16587470480', 1, '41125319951125354x', '安家底东关村30号', 1);
INSERT INTO `employee` VALUES (10, '0SDEGTB10', '邹蝶', 27, '女', '17798660025', 1, '411283199107214028', '西站西村60号', 1);
INSERT INTO `employee` VALUES (11, '0WFRGYU11', '赵六', 30, '男', '19976877865', 0, '41121319900409336x', '大字营村1号', 1);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `messagedate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `messages` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `replymessage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `messagestatus` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, '企业咨询方面', '2020-11-16 11:05:22.000000', '<p>公司成立多久了</p>', '<p>10多年了!</p>', 1);

-- ----------------------------
-- Table structure for order_employee
-- ----------------------------
DROP TABLE IF EXISTS `order_employee`;
CREATE TABLE `order_employee`  (
  `orderid` int(32) NOT NULL,
  `employeeid` int(32) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order_employee
-- ----------------------------
INSERT INTO `order_employee` VALUES (1, 1);
INSERT INTO `order_employee` VALUES (2, 2);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `ordernum` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ordername` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ordertime` date NULL DEFAULT NULL,
  `ordermile` decimal(8, 2) NULL DEFAULT NULL,
  `ordertel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderlevel` int(11) NULL DEFAULT NULL,
  `orderaddress` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ordermaddress` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderdate` date NULL DEFAULT NULL,
  `orderstatus` int(11) NULL DEFAULT NULL,
  `paytype` int(11) NULL DEFAULT NULL,
  `orderdesc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifyid` int(32) NULL DEFAULT NULL,
  `toolid` int(32) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 'S553001', '浩贤闲', '2020-11-16', 1.20, '15576894460', 3, '河南省新乡市金穗大道新乡学院', '河南省新乡市河南科技学院', '2020-11-16', 0, 0, '春节，想搬点东西', 1, 1);
INSERT INTO `orders` VALUES (2, 'S553012', '刘蓓蓓', '2020-11-16', 1.30, '18790456678', 0, '北京市中关村123号', '北京市海鞘区66号', '2020-11-16', 2, 2, '行李较少，已提前打包好，到时候直接来装车就可以啦', 2, 2);
INSERT INTO `orders` VALUES (3, 'S280010', '刘东', '2020-11-16', 3.00, '17789500467', 2, '南阳市风海小区66号', '开封市太阳小区2栋', '2020-11-16', 3, 0, '东西很多，希望搬家人员提早来些', 3, 3);
INSERT INTO `orders` VALUES (4, '5', '王菲菲', '2020-11-16', 1.20, '11111111111', 1, 'ddvfbgbi', 'dghgh', '2020-11-16', 1, 1, '速度', 4, 4);
INSERT INTO `orders` VALUES (5, '123', '小可爱', '2020-11-16', 5.00, '110', 0, '天津市/河东区', '天津市/河西区', '2020-11-16', 0, 0, '								\r\n							小可爱', 1, 1);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `permissionname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, '查询所有用户', '/user/findAll.do');
INSERT INTO `permission` VALUES (2, '通过id查询指定用户', '/user/findById.do');
INSERT INTO `permission` VALUES (3, '查询所有角色', '/role/findAll.do');
INSERT INTO `permission` VALUES (4, '删除用户', 'user/deleteUser.do');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roledesc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '333333', '公司测试人员');
INSERT INTO `role` VALUES (2, 'ADMIN', '系统管理员');
INSERT INTO `role` VALUES (3, 'ADMIN_SVIP', 'Boss');
INSERT INTO `role` VALUES (4, 'USER', '软件维护人员');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `permissionid` int(32) NOT NULL,
  `roleid` int(32) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES (1, 2);
INSERT INTO `role_permission` VALUES (2, 2);
INSERT INTO `role_permission` VALUES (3, 2);
INSERT INTO `role_permission` VALUES (4, 2);

-- ----------------------------
-- Table structure for syslog
-- ----------------------------
DROP TABLE IF EXISTS `syslog`;
CREATE TABLE `syslog`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `visittime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `executiontime` int(11) NULL DEFAULT NULL,
  `method` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 136 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of syslog
-- ----------------------------
INSERT INTO `syslog` VALUES (1, '2020-11-16 11:46:36.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/findAll.do', 60, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]findAll');
INSERT INTO `syslog` VALUES (2, '2020-11-16 11:46:42.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/update.do', 4, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]update');
INSERT INTO `syslog` VALUES (3, '2020-11-16 11:46:46.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/findAll.do', 5, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]findAll');
INSERT INTO `syslog` VALUES (4, '2020-11-16 11:46:48.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/update.do', 4, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]update');
INSERT INTO `syslog` VALUES (5, '2020-11-16 11:46:50.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/findAll.do', 8, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]findAll');
INSERT INTO `syslog` VALUES (6, '2020-11-16 11:46:52.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/findById.do', 2, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]findById');
INSERT INTO `syslog` VALUES (7, '2020-11-16 11:46:54.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/findAll.do', 9, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]findAll');
INSERT INTO `syslog` VALUES (8, '2020-11-16 11:46:59.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/findAll.do', 7, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]findAll');
INSERT INTO `syslog` VALUES (9, '2020-11-16 11:47:39.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 9, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (10, '2020-11-16 11:47:57.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 10, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (11, '2020-11-16 11:48:05.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 3, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (12, '2020-11-16 11:48:07.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 7, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (13, '2020-11-16 11:48:13.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 3, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (14, '2020-11-16 11:48:26.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findById.do', 3, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findById');
INSERT INTO `syslog` VALUES (15, '2020-11-16 11:48:33.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 5, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (16, '2020-11-16 11:48:38.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 3, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (17, '2020-11-16 11:48:45.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 4, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (18, '2020-11-16 11:48:45.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 10, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (19, '2020-11-16 11:48:46.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 3, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (20, '2020-11-16 11:48:46.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 8, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (21, '2020-11-16 11:48:46.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 3, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (22, '2020-11-16 11:48:47.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 6, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (23, '2020-11-16 11:48:47.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 3, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (24, '2020-11-16 11:48:47.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 4, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (25, '2020-11-16 11:48:48.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 6, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (26, '2020-11-16 11:48:48.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 5, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (27, '2020-11-16 11:48:48.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 4, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (28, '2020-11-16 11:48:48.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 4, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (29, '2020-11-16 11:48:49.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 4, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (30, '2020-11-16 11:48:49.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 3, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (31, '2020-11-16 11:48:50.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 4, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (32, '2020-11-16 11:48:50.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 8, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (33, '2020-11-16 11:48:50.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 3, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (34, '2020-11-16 11:48:50.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 3, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (35, '2020-11-16 11:48:50.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 3, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (36, '2020-11-16 11:48:50.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 4, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (37, '2020-11-16 11:48:51.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 3, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (38, '2020-11-16 11:48:51.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 4, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (39, '2020-11-16 11:48:51.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 4, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (40, '2020-11-16 11:48:52.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 2, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (41, '2020-11-16 11:48:52.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 3, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (42, '2020-11-16 11:48:52.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 4, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (43, '2020-11-16 11:48:53.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 4, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (44, '2020-11-16 11:48:53.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 3, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (45, '2020-11-16 11:48:53.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 3, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (46, '2020-11-16 11:48:54.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 4, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (47, '2020-11-16 11:48:54.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 3, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (48, '2020-11-16 11:48:54.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 4, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (49, '2020-11-16 11:48:55.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 4, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (50, '2020-11-16 11:48:55.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 3, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (51, '2020-11-16 11:48:55.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 2, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (52, '2020-11-16 11:48:55.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 3, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (53, '2020-11-16 11:48:55.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 6, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (54, '2020-11-16 11:48:56.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 3, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (55, '2020-11-16 11:48:56.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 5, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (56, '2020-11-16 11:48:59.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 4, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (57, '2020-11-16 11:49:04.000000', 'Tom', '0:0:0:0:0:0:0:1', '/tool/findAll.do', 13, '[类名]com.itheima.ssm.controller.ToolController[方法名]findAll');
INSERT INTO `syslog` VALUES (58, '2020-11-16 13:06:31.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 59, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (59, '2020-11-16 13:06:33.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findById.do', 4, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findById');
INSERT INTO `syslog` VALUES (60, '2020-11-16 13:20:14.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 8, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (61, '2020-11-16 13:20:17.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findById.do', 5, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findById');
INSERT INTO `syslog` VALUES (62, '2020-11-16 13:20:19.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 8, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (63, '2020-11-16 13:20:21.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findById.do', 4, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findById');
INSERT INTO `syslog` VALUES (64, '2020-11-16 13:20:22.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 7, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (65, '2020-11-16 13:20:23.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findById.do', 4, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findById');
INSERT INTO `syslog` VALUES (66, '2020-11-16 13:20:25.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 6, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (67, '2020-11-16 13:20:26.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 3, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (68, '2020-11-16 13:20:28.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findById.do', 4, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findById');
INSERT INTO `syslog` VALUES (69, '2020-11-16 13:20:30.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 3, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (70, '2020-11-16 13:20:31.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findById.do', 3, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findById');
INSERT INTO `syslog` VALUES (71, '2020-11-16 13:20:33.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 4, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (72, '2020-11-16 13:20:33.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findById.do', 2, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findById');
INSERT INTO `syslog` VALUES (73, '2020-11-16 13:20:35.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 4, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (74, '2020-11-16 13:20:35.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findById.do', 2, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findById');
INSERT INTO `syslog` VALUES (75, '2020-11-16 13:20:37.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 4, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (76, '2020-11-16 13:20:38.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 3, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (77, '2020-11-16 13:20:39.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findById.do', 2, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findById');
INSERT INTO `syslog` VALUES (78, '2020-11-16 13:20:40.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 3, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (79, '2020-11-16 13:20:41.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findById.do', 2, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findById');
INSERT INTO `syslog` VALUES (80, '2020-11-16 13:20:44.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 6, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (81, '2020-11-16 13:20:46.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 3, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (82, '2020-11-16 13:21:00.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findById.do', 3, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findById');
INSERT INTO `syslog` VALUES (83, '2020-11-16 13:21:42.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 8, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (84, '2020-11-16 13:28:40.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findById.do', 2, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findById');
INSERT INTO `syslog` VALUES (85, '2020-11-16 15:13:16.000000', 'Tom', '0:0:0:0:0:0:0:1', '/message/findAll.do', 22, '[类名]com.itheima.ssm.controller.MessageController[方法名]findAll');
INSERT INTO `syslog` VALUES (86, '2020-11-16 15:13:25.000000', 'Tom', '0:0:0:0:0:0:0:1', '/message/update.do', 3, '[类名]com.itheima.ssm.controller.MessageController[方法名]update');
INSERT INTO `syslog` VALUES (87, '2020-11-16 15:13:44.000000', 'Tom', '0:0:0:0:0:0:0:1', '/message/findAll.do', 5, '[类名]com.itheima.ssm.controller.MessageController[方法名]findAll');
INSERT INTO `syslog` VALUES (88, '2020-11-16 15:14:04.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/findAll.do', 17, '[类名]com.itheima.ssm.controller.OrderController[方法名]findAll');
INSERT INTO `syslog` VALUES (89, '2020-11-16 15:14:13.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/findById.do', 12, '[类名]com.itheima.ssm.controller.OrderController[方法名]findById');
INSERT INTO `syslog` VALUES (90, '2020-11-16 15:14:46.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/findAll.do', 10, '[类名]com.itheima.ssm.controller.OrderController[方法名]findAll');
INSERT INTO `syslog` VALUES (91, '2020-11-16 15:14:57.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/findAll.do', 14, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]findAll');
INSERT INTO `syslog` VALUES (92, '2020-11-16 15:15:01.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/findById.do', 3, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]findById');
INSERT INTO `syslog` VALUES (93, '2020-11-16 15:15:05.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/findAll.do', 6, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]findAll');
INSERT INTO `syslog` VALUES (94, '2020-11-16 15:15:06.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/findById.do', 2, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]findById');
INSERT INTO `syslog` VALUES (95, '2020-11-16 15:15:08.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/findAll.do', 6, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]findAll');
INSERT INTO `syslog` VALUES (96, '2020-11-16 15:15:10.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/findById.do', 3, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]findById');
INSERT INTO `syslog` VALUES (97, '2020-11-16 15:15:11.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/findAll.do', 3, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]findAll');
INSERT INTO `syslog` VALUES (98, '2020-11-16 15:15:19.000000', 'Tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 10, '[类名]com.itheima.ssm.controller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (99, '2020-11-16 15:19:24.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/findAll.do', 7, '[类名]com.itheima.ssm.controller.OrderController[方法名]findAll');
INSERT INTO `syslog` VALUES (100, '2020-11-16 15:19:28.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/findAll.do', 2, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]findAll');
INSERT INTO `syslog` VALUES (101, '2020-11-16 15:19:32.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 5, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (102, '2020-11-16 15:19:34.000000', 'Tom', '0:0:0:0:0:0:0:1', '/tool/findAll.do', 10, '[类名]com.itheima.ssm.controller.ToolController[方法名]findAll');
INSERT INTO `syslog` VALUES (103, '2020-11-16 15:54:50.000000', 'Tom', '0:0:0:0:0:0:0:1', '/tool/findAll.do', 4, '[类名]com.itheima.ssm.controller.ToolController[方法名]findAll');
INSERT INTO `syslog` VALUES (104, '2020-11-16 15:55:26.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/findAll.do', 15, '[类名]com.itheima.ssm.controller.OrderController[方法名]findAll');
INSERT INTO `syslog` VALUES (105, '2020-11-16 15:55:29.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/findAllId.do', 5, '[类名]com.itheima.ssm.controller.OrderController[方法名]findAllId');
INSERT INTO `syslog` VALUES (106, '2020-11-16 15:56:29.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/save.do', 1814, '[类名]com.itheima.ssm.controller.OrderController[方法名]save');
INSERT INTO `syslog` VALUES (107, '2020-11-16 15:56:31.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/findAll.do', 11, '[类名]com.itheima.ssm.controller.OrderController[方法名]findAll');
INSERT INTO `syslog` VALUES (108, '2020-11-16 15:56:35.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/findAll.do', 5, '[类名]com.itheima.ssm.controller.OrderController[方法名]findAll');
INSERT INTO `syslog` VALUES (109, '2020-11-16 15:56:40.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/update.do', 10, '[类名]com.itheima.ssm.controller.OrderController[方法名]update');
INSERT INTO `syslog` VALUES (110, '2020-11-16 15:56:56.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/findAll.do', 5, '[类名]com.itheima.ssm.controller.OrderController[方法名]findAll');
INSERT INTO `syslog` VALUES (111, '2020-11-16 15:56:58.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/update.do', 13, '[类名]com.itheima.ssm.controller.OrderController[方法名]update');
INSERT INTO `syslog` VALUES (112, '2020-11-16 15:57:01.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/findAll.do', 7, '[类名]com.itheima.ssm.controller.OrderController[方法名]findAll');
INSERT INTO `syslog` VALUES (113, '2020-11-16 15:57:02.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/update.do', 6, '[类名]com.itheima.ssm.controller.OrderController[方法名]update');
INSERT INTO `syslog` VALUES (114, '2020-11-16 15:57:26.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/getOrder.do', 207, '[类名]com.itheima.ssm.controller.OrderController[方法名]getOrder');
INSERT INTO `syslog` VALUES (115, '2020-11-16 15:57:26.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/findAll.do', 23, '[类名]com.itheima.ssm.controller.OrderController[方法名]findAll');
INSERT INTO `syslog` VALUES (116, '2020-11-16 15:57:32.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/findAll.do', 14, '[类名]com.itheima.ssm.controller.OrderController[方法名]findAll');
INSERT INTO `syslog` VALUES (117, '2020-11-16 15:57:36.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/findById.do', 7, '[类名]com.itheima.ssm.controller.OrderController[方法名]findById');
INSERT INTO `syslog` VALUES (118, '2020-11-16 16:01:17.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/findAll.do', 3, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]findAll');
INSERT INTO `syslog` VALUES (119, '2020-11-16 16:02:33.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/findById.do', 3, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]findById');
INSERT INTO `syslog` VALUES (120, '2020-11-16 16:02:42.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/findAll.do', 5, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]findAll');
INSERT INTO `syslog` VALUES (121, '2020-11-16 16:03:18.000000', 'Tom', '0:0:0:0:0:0:0:1', '/classify/findById.do', 5, '[类名]com.itheima.ssm.controller.ClassifyController[方法名]findById');
INSERT INTO `syslog` VALUES (122, '2020-11-27 14:39:29.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 211, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (123, '2020-11-27 14:39:39.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/findAll.do', 88, '[类名]com.itheima.ssm.controller.OrderController[方法名]findAll');
INSERT INTO `syslog` VALUES (124, '2020-11-27 14:39:42.000000', 'Tom', '0:0:0:0:0:0:0:1', '/order/findAllId.do', 9, '[类名]com.itheima.ssm.controller.OrderController[方法名]findAllId');
INSERT INTO `syslog` VALUES (125, '2020-11-27 14:49:24.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 4, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (126, '2020-11-27 14:49:29.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 6, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (127, '2020-11-27 14:49:37.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 5, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (128, '2020-11-27 14:49:52.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 6, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (129, '2020-11-27 14:49:58.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 6, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (130, '2020-11-27 14:50:03.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findById.do', 4, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findById');
INSERT INTO `syslog` VALUES (131, '2020-11-27 14:50:20.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 6, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (132, '2020-11-27 14:50:26.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 5, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (133, '2020-11-27 14:50:29.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 6, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');
INSERT INTO `syslog` VALUES (134, '2020-11-27 14:50:35.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findById.do', 4, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findById');
INSERT INTO `syslog` VALUES (135, '2020-11-27 14:50:42.000000', 'Tom', '0:0:0:0:0:0:0:1', '/employee/findAll.do', 4, '[类名]com.itheima.ssm.controller.EmployeeController[方法名]findAll');

-- ----------------------------
-- Table structure for tool
-- ----------------------------
DROP TABLE IF EXISTS `tool`;
CREATE TABLE `tool`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `toolid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tooldriver` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `toolname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `toolimg` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `toolcz` decimal(8, 2) NULL DEFAULT NULL,
  `toolnum` int(11) NULL DEFAULT NULL,
  `tooldesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tool
-- ----------------------------
INSERT INTO `tool` VALUES (1, 'C66666', '赵师傅', '金杯车', '3.png', 2.00, 20, '适合普通家庭搬家');
INSERT INTO `tool` VALUES (2, 'MJ4K55', '王师傅', '敞车', '4.png', 3.00, 10, '适合大型家具，钢琴、实木床、大衣柜等');
INSERT INTO `tool` VALUES (3, 'GFT388', '孙师傅', '东风厢式火车', '5.png', 100.00, 5, '适合长途搬家');
INSERT INTO `tool` VALUES (4, 'WLP9191', '魏师傅', '封闭半封闭厢式货车', '6.png', 200.00, 8, '适合搬运贵重的家具，能够确保运输安全');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phonenum` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Xmm', '$2a$10$llZ0gBmOR1BRhSi155s2Hug6ONh77I/KPWXWlGjOHaf4K7GQmu3VK', '女', '18790456673', 'Xmm@itcast.cn', 'admin_icon.jpg', 0);
INSERT INTO `users` VALUES (2, 'tth', '$2a$10$iaPz433eRqTYLIERhjQAPuxsLBahXtdRumkzHBJRfpkKFrZLeEFt6', '女', '1111111111', '5@itcast.com', NULL, 1);
INSERT INTO `users` VALUES (3, 'Marry', '$2a$10$l6J3QwnmOtAsT7yTH8FU8.bMk1mkOVu2pbQtr.poN1moqk4QgQVaC', '女', '15225923055', 'Marry@itcast.cn', 'user2-160x160.jpg', 1);
INSERT INTO `users` VALUES (4, 'Tom', '$2a$10$bAtXhHsWqYpy0ot7OE4yL.vDH4tGyTby3I/U17.D9AnK1.Se8jUFG', '男', '17734475530', 'Tom@itcast.cn', 'admin_icon.jpg', 1);

-- ----------------------------
-- Table structure for users_role
-- ----------------------------
DROP TABLE IF EXISTS `users_role`;
CREATE TABLE `users_role`  (
  `userid` int(32) NOT NULL,
  `roleid` int(32) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users_role
-- ----------------------------
INSERT INTO `users_role` VALUES (4, 2);

SET FOREIGN_KEY_CHECKS = 1;
