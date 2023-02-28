/*
 Navicat Premium Data Transfer

 Source Server         : openjianghu02_db
 Source Server Type    : MySQL
 Source Server Version : 50738
 Source Host           : localhost:43302
 Source Schema         : jianghujs_attendance

 Target Server Type    : MySQL
 Target Server Version : 50738
 File Encoding         : 65001

 Date: 01/03/2023 00:17:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for _cache
-- ----------------------------
DROP TABLE IF EXISTS `_cache`;
CREATE TABLE `_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '用户Id',
  `content` longtext COLLATE utf8mb4_bin COMMENT '缓存数据',
  `recordStatus` varchar(255) COLLATE utf8mb4_bin DEFAULT 'active',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='缓存表';

-- ----------------------------
-- Records of _cache
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for _constant
-- ----------------------------
DROP TABLE IF EXISTS `_constant`;
CREATE TABLE `_constant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constantKey` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `constantType` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '常量类型; object, array',
  `desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `constantValue` text COLLATE utf8mb4_bin COMMENT '常量内容; object, array',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='常量表; 软删除未启用;';

-- ----------------------------
-- Records of _constant
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for _group
-- ----------------------------
DROP TABLE IF EXISTS `_group`;
CREATE TABLE `_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT 'groupId',
  `groupName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '群组名',
  `groupDesc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '群组描述',
  `groupAvatar` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '群logo',
  `groupExtend` varchar(1024) COLLATE utf8mb4_bin DEFAULT '{}' COMMENT '拓展字段; { groupNotice: ''xx'' }',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `groupId_index` (`groupId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='群组表; 软删除未启用;';

-- ----------------------------
-- Records of _group
-- ----------------------------
BEGIN;
INSERT INTO `_group` (`id`, `groupId`, `groupName`, `groupDesc`, `groupAvatar`, `groupExtend`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, 'adminGroup', '管理组', '管理组', NULL, '{}', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
COMMIT;

-- ----------------------------
-- Table structure for _page
-- ----------------------------
DROP TABLE IF EXISTS `_page`;
CREATE TABLE `_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'pageId',
  `pageFile` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'page文件指定; 默认使用pageId.html',
  `pageName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'page name',
  `pageType` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '页面类型; showInMenu, dynamicInMenu',
  `sort` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='页面表; 软删除未启用;';

-- ----------------------------
-- Records of _page
-- ----------------------------
BEGIN;
INSERT INTO `_page` (`id`, `pageId`, `pageFile`, `pageName`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, 'help', 'helpV4', '帮助', 'dynamicInMenu', '11', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_page` (`id`, `pageId`, `pageFile`, `pageName`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (2, 'login', 'loginV4', '登录', '', '', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_page` (`id`, `pageId`, `pageFile`, `pageName`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (3, 'studentList', NULL, '学生列表', 'showInMenu', '1', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_page` (`id`, `pageId`, `pageFile`, `pageName`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (4, 'courseList', NULL, '课程列表', 'showInMenu', '2', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_page` (`id`, `pageId`, `pageFile`, `pageName`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (5, 'attendanceList', NULL, '出勤列表', 'showInMenu', '3', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
COMMIT;

-- ----------------------------
-- Table structure for _record_history
-- ----------------------------
DROP TABLE IF EXISTS `_record_history`;
CREATE TABLE `_record_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '表',
  `recordId` int(11) DEFAULT NULL COMMENT '数据在table中的主键id; recordContent.id',
  `recordContent` text COLLATE utf8mb4_bin NOT NULL COMMENT '数据',
  `packageContent` text COLLATE utf8mb4_bin NOT NULL COMMENT '当时请求的 package JSON',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_record_id` (`recordId`) USING BTREE,
  KEY `index_table_action` (`table`,`operation`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='数据历史表';

-- ----------------------------
-- Table structure for _resource
-- ----------------------------
DROP TABLE IF EXISTS `_resource`;
CREATE TABLE `_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accessControlTable` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '数据规则控制表',
  `resourceHook` text COLLATE utf8mb4_bin COMMENT '[ "before": {"service": "xx", "serviceFunction": "xxx"}, "after": [] }',
  `pageId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'page id; E.g: index',
  `actionId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `resourceType` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'resource 类型; E.g: auth service sql',
  `appDataSchema` text COLLATE utf8mb4_bin COMMENT 'appData 参数校验',
  `resourceData` text COLLATE utf8mb4_bin COMMENT 'resource 数据; { "service": "auth", "serviceFunction": "passwordLogin" } or  { "table": "${tableName}", "action": "select", "whereCondition": ".where(function() {this.whereNot( { recordStatus: \\"active\\" })})" }',
  `requestDemo` text COLLATE utf8mb4_bin COMMENT '请求Demo',
  `responseDemo` text COLLATE utf8mb4_bin COMMENT '响应Demo',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='请求资源表; 软删除未启用; resourceId=`${appId}.${pageId}.${actionId}`';

-- ----------------------------
-- Records of _resource
-- ----------------------------
BEGIN;
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, NULL, NULL, 'login', 'passwordLogin', '✅登录', 'service', '{}', '{\"service\": \"user\", \"serviceFunction\": \"passwordLogin\"}', '', '', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (2, NULL, NULL, 'allPage', 'logout', '✅登出', 'service', '{}', '{\"service\": \"user\", \"serviceFunction\": \"logout\"}', '', '', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (3, NULL, NULL, 'allPage', 'userInfo', '✅获取用户信息', 'service', '{}', '{\"service\": \"user\", \"serviceFunction\": \"userInfo\"}', '', '', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (4, NULL, NULL, 'allPage', 'getConstantList', '✅查询常量', 'sql', '{}', '{\"table\": \"_constant\", \"operation\": \"select\"}', '', '', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (5, NULL, NULL, 'studentList', 'selectItemList', '✅学生列表-查询列表', 'sql', '{}', '{ \"table\": \"student\", \"operation\": \"select\" }', '', '', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (6, NULL, '{\"before\":[{\"service\":\"common\",\"serviceFunction\":\"fillInsertItemParamsBeforeHook\"}]}', 'studentList', 'insertItem', '✅学生列表-添加', 'sql', '{}', '{ \"table\": \"student\", \"operation\": \"insert\" }', '', '', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (7, NULL, NULL, 'studentList', 'updateItem', '✅学生列表-更新', 'sql', '{}', '{ \"table\": \"student\", \"operation\": \"jhUpdate\" }', '', '', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (8, NULL, NULL, 'studentList', 'deleteItem', '✅学生列表-删除', 'sql', '{}', '{ \"table\": \"student\", \"operation\": \"jhDelete\" }', '', '', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (9, NULL, NULL, 'courseList', 'selectItemList', '✅课程列表-查询列表', 'sql', '{}', '{ \"table\": \"course\", \"operation\": \"select\" }', NULL, NULL, 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (10, NULL, '{\"before\":[{\"service\":\"common\",\"serviceFunction\":\"fillInsertItemParamsBeforeHook\"}]}', 'courseList', 'insertItem', '✅课程列表-添加', 'sql', '{}', '{ \"table\": \"course\", \"operation\": \"insert\" }', NULL, NULL, 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (11, NULL, NULL, 'courseList', 'updateItem', '✅课程列表-更新', 'sql', '{}', '{ \"table\": \"course\", \"operation\": \"jhUpdate\" }', NULL, NULL, 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (12, NULL, NULL, 'courseList', 'deleteItem', '✅课程列表-删除', 'sql', '{}', '{ \"table\": \"course\", \"operation\": \"jhDelete\" }', NULL, NULL, 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (13, NULL, NULL, 'attendanceList', 'selectItemList', '✅出勤列表-查询列表', 'sql', '{}', '{ \"table\": \"view01_student_attendance\", \"operation\": \"select\" }', NULL, NULL, 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (14, NULL, NULL, 'attendanceList', 'selectCourseList', '✅出勤列表-查询课程列表', 'sql', '{}', '{ \"table\": \"course\", \"operation\": \"select\" }', NULL, NULL, 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (15, NULL, NULL, 'attendanceList', 'updateItem', '✅出勤列表-更新', 'sql', '{}', '{ \"table\": \"attendance\", \"operation\": \"jhUpdate\" }', NULL, NULL, 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
COMMIT;

-- ----------------------------
-- Table structure for _role
-- ----------------------------
DROP TABLE IF EXISTS `_role`;
CREATE TABLE `_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'roleId',
  `roleName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'role name',
  `roleDesc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'role desc',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='角色表; 软删除未启用;';

-- ----------------------------
-- Records of _role
-- ----------------------------
BEGIN;
INSERT INTO `_role` (`id`, `roleId`, `roleName`, `roleDesc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, 'administrator', '系统管理员', '', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
COMMIT;

-- ----------------------------
-- Table structure for _test_case
-- ----------------------------
DROP TABLE IF EXISTS `_test_case`;
CREATE TABLE `_test_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '页面Id',
  `testId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '测试用例Id; 10000 ++',
  `testName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '测试用例名',
  `uiActionIdList` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'uiAction列表; 一个测试用例对应多个uiActionId',
  `testOpeartion` text COLLATE utf8mb4_bin COMMENT '测试用例步骤;',
  `expectedResult` text COLLATE utf8mb4_bin COMMENT '期望结果',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='测试用例表';

-- ----------------------------
-- Records of _test_case
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for _ui
-- ----------------------------
DROP TABLE IF EXISTS `_ui`;
CREATE TABLE `_ui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'page id; E.g: index',
  `uiActionType` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ui 动作类型，如：fetchData, postData, changeUi',
  `uiActionId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `uiActionConfig` text COLLATE utf8mb4_bin COMMENT 'ui 动作数据',
  `appDataSchema` text COLLATE utf8mb4_bin COMMENT 'ui 校验数据',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='ui 施工方案';

-- ----------------------------
-- Records of _ui
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for _user
-- ----------------------------
DROP TABLE IF EXISTS `_user`;
CREATE TABLE `_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSequence` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '自增id; 用于生成userId',
  `userId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '主键id',
  `username` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户名(登陆)',
  `clearTextPassword` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '明文密码',
  `password` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '密码',
  `md5Salt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'md5Salt',
  `userStatus` varchar(255) COLLATE utf8mb4_bin DEFAULT 'active' COMMENT '用户账号状态：活跃或关闭',
  `userType` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户类型; staff, student.',
  `config` mediumtext COLLATE utf8mb4_bin COMMENT '配置信息',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username_index` (`username`) USING BTREE,
  UNIQUE KEY `userId_index` (`userId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户表';

-- ----------------------------
-- Records of _user
-- ----------------------------
BEGIN;
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `clearTextPassword`, `password`, `md5Salt`, `userStatus`, `userType`, `config`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, '26260000\r', 'admin', '系统管理员', '123456', '38d61d315e62546fe7f1013e31d42f57', 'Xs4JSZnhiwsR', 'active', NULL, NULL, 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `clearTextPassword`, `password`, `md5Salt`, `userStatus`, `userType`, `config`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (2, '26260001\r', 'W00001', '张三丰', '123456', '38d61d315e62546fe7f1013e31d42f57', 'Xs4JSZnhiwsR', 'active', NULL, NULL, 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `clearTextPassword`, `password`, `md5Salt`, `userStatus`, `userType`, `config`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (3, '26260002\r', 'W00002', '张无忌', '123456', '38d61d315e62546fe7f1013e31d42f57', 'Xs4JSZnhiwsR', 'active', NULL, NULL, 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `clearTextPassword`, `password`, `md5Salt`, `userStatus`, `userType`, `config`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (4, '26260003\r', 'G00001', '洪七公', '123456', '38d61d315e62546fe7f1013e31d42f57', 'Xs4JSZnhiwsR', 'active', NULL, NULL, 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `clearTextPassword`, `password`, `md5Salt`, `userStatus`, `userType`, `config`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (5, '26260004\r', 'G00002', '郭靖', '123456', '38d61d315e62546fe7f1013e31d42f57', 'Xs4JSZnhiwsR', 'active', NULL, NULL, 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `clearTextPassword`, `password`, `md5Salt`, `userStatus`, `userType`, `config`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (6, '26260005\r', 'H00001', '岳不群', '123456', '38d61d315e62546fe7f1013e31d42f57', 'Xs4JSZnhiwsR', 'active', NULL, NULL, 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `clearTextPassword`, `password`, `md5Salt`, `userStatus`, `userType`, `config`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (7, '26260006\r', 'H00002', '令狐冲', '123456', '38d61d315e62546fe7f1013e31d42f57', 'Xs4JSZnhiwsR', 'active', NULL, NULL, 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
COMMIT;

-- ----------------------------
-- Table structure for _user_group_role
-- ----------------------------
DROP TABLE IF EXISTS `_user_group_role`;
CREATE TABLE `_user_group_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '用户id',
  `groupId` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '群组Id',
  `roleId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '角色Id',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `groupId_index` (`groupId`) USING BTREE,
  KEY `userId_index` (`userId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=579 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户群组角色关联表; 软删除未启用;';

-- ----------------------------
-- Records of _user_group_role
-- ----------------------------
BEGIN;
INSERT INTO `_user_group_role` (`id`, `userId`, `groupId`, `roleId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, 'admin', 'adminGroup', 'administrator', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
COMMIT;

-- ----------------------------
-- Table structure for _user_group_role_page
-- ----------------------------
DROP TABLE IF EXISTS `_user_group_role_page`;
CREATE TABLE `_user_group_role_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `page` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'pageId id',
  `allowOrDeny` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户群组角色 - 页面 映射表; 软删除未启用;';

-- ----------------------------
-- Records of _user_group_role_page
-- ----------------------------
BEGIN;
INSERT INTO `_user_group_role_page` (`id`, `user`, `group`, `role`, `page`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, '*', 'public', '*', 'login', 'allow', '登陆页面; 开放所有用户;', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_user_group_role_page` (`id`, `user`, `group`, `role`, `page`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (2, '*', 'login', '*', 'help,manual', 'allow', '工具页; 开放给登陆用户;', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_user_group_role_page` (`id`, `user`, `group`, `role`, `page`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (3, '*', 'login', '*', '*', 'allow', '所有页面; 开放给登陆用户;', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
COMMIT;

-- ----------------------------
-- Table structure for _user_group_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `_user_group_role_resource`;
CREATE TABLE `_user_group_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `resource` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'resourceId 或者 通配符; 通配符: *, !resourceId',
  `allowOrDeny` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户群组角色 - 请求资源 映射表; 软删除未启用;';

-- ----------------------------
-- Records of _user_group_role_resource
-- ----------------------------
BEGIN;
INSERT INTO `_user_group_role_resource` (`id`, `user`, `group`, `role`, `resource`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, '*', 'public', '*', 'login.passwordLogin', 'allow', '登陆resource, 开放给所有用户', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_user_group_role_resource` (`id`, `user`, `group`, `role`, `resource`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (2, '*', 'login', '*', 'allPage.*', 'allow', '工具类resource, 开放给所有登陆成功的用户', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
INSERT INTO `_user_group_role_resource` (`id`, `user`, `group`, `role`, `resource`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (3, '*', 'login', '*', '*', 'allow', '所有resource, 开放给所有登陆成功的用户', 'insert', 'admin', '系统管理员', '2022-09-15T23:46:04+08:00');
COMMIT;

-- ----------------------------
-- Table structure for _user_session
-- ----------------------------
DROP TABLE IF EXISTS `_user_session`;
CREATE TABLE `_user_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户id',
  `userIp` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户ip',
  `userIpRegion` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户Ip区域',
  `userAgent` text COLLATE utf8mb4_bin COMMENT '请求的 agent',
  `deviceId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '设备id',
  `deviceType` varchar(255) COLLATE utf8mb4_bin DEFAULT 'web' COMMENT '设备类型; flutter, web, bot_databot, bot_chatbot, bot_xiaochengxu',
  `socketStatus` varchar(255) COLLATE utf8mb4_bin DEFAULT 'offline' COMMENT 'socket状态',
  `authToken` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'auth token',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `userId_index` (`userId`) USING BTREE,
  KEY `userId_deviceId_index` (`userId`,`deviceId`) USING BTREE,
  KEY `authToken_index` (`authToken`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户session表; deviceId 维度;软删除未启用;';

-- ----------------------------
-- Table structure for attendance
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '课程ID',
  `lessonNumber` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '第几课',
  `studentId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '学生id;',
  `attendanceDate` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '出勤日期',
  `attendance` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '出勤类型;出勤,缺勤,迟到,早退',
  `markedAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '记录时间',
  `markedByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '记录者ID',
  `markedByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '记录者',
  `remarks` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注；缺勤情况说明',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of attendance
-- ----------------------------
BEGIN;
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, 'KC10000', 'KC10000', 'XS10003', '2022-12-22', '出勤', '2022-12-22 04:15:52', 'admin', '系统管理员', NULL, 'jhInsert', 'admin', '系统管理员', '2022-12-22T16:15:52+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (2, 'KC10000', 'KC10000', 'XS10002', '2022-12-22', '迟到', '2022-12-22 04:15:52', 'admin', '系统管理员', '', 'jhUpdate', 'admin', '系统管理员', '2023-02-28T23:26:30+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (3, 'KC10000', 'KC10000', 'XS10001', '2022-12-22', '迟到', '2022-12-22 04:15:52', 'admin', '系统管理员', '', 'jhUpdate', 'admin', '系统管理员', '2023-02-28T23:41:32+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (4, 'KC10000', 'KC10000', 'XS10000', '2022-12-22', '缺勤', '2022-12-22 04:15:52', 'admin', '系统管理员', '', 'jhUpdate', 'admin', '系统管理员', '2023-02-04T00:42:08+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (5, 'KC10001', 'KC10001', 'XS10003', '2022-12-22', '出勤', '2022-12-22 04:15:59', 'admin', '系统管理员', '', 'jhInsert', 'admin', '系统管理员', '2022-12-22T16:15:59+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (6, 'KC10001', 'KC10001', 'XS10000', '2022-12-22', '缺勤', '2022-12-22 04:15:59', 'admin', '系统管理员', '', 'jhUpdate', 'admin', '系统管理员', '2023-02-28T23:22:37+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (7, 'KC10001', 'KC10001', 'XS10001', '2022-12-22', '缺勤', '2022-12-22 04:15:59', 'admin', '系统管理员', '', 'jhInsert', 'admin', '系统管理员', '2022-12-22T16:15:59+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (8, 'KC10001', 'KC10001', 'XS10002', '2022-12-22', '出勤', '2022-12-22 04:15:59', 'admin', '系统管理员', '', 'jhInsert', 'admin', '系统管理员', '2022-12-22T16:15:59+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (9, 'KC10002', 'KC10002', 'XS10002', '2022-12-22', '缺勤', '2022-12-22 04:20:40', 'admin', '系统管理员', '', 'jhUpdate', 'admin', '系统管理员', '2022-12-22T16:22:36+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (10, 'KC10002', 'KC10002', 'XS10001', '2022-12-22', '出勤', '2022-12-22 04:20:40', 'admin', '系统管理员', '', 'jhUpdate', 'admin', '系统管理员', '2022-12-22T16:22:29+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (11, 'KC10002', 'KC10002', 'XS10000', '2022-12-22', '出勤', '2022-12-22 04:20:40', 'admin', '系统管理员', '', 'jhUpdate', 'admin', '系统管理员', '2022-12-22T16:22:29+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (12, 'KC10002', 'KC10002', 'XS10003', '2022-12-22', '出勤', '2022-12-22 04:20:40', 'admin', '系统管理员', '', 'jhUpdate', 'admin', '系统管理员', '2022-12-22T16:22:29+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (13, 'KC10003', 'KC10003', 'XS10003', '2022-12-22', '缺勤', '2022-12-22 04:20:50', 'admin', '系统管理员', '', 'jhUpdate', 'admin', '系统管理员', '2022-12-22T16:21:17+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (14, 'KC10003', 'KC10003', 'XS10000', '2022-12-22', '出勤', '2022-12-22 04:20:50', 'admin', '系统管理员', '', 'jhUpdate', 'admin', '系统管理员', '2022-12-22T16:21:17+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (15, 'KC10003', 'KC10003', 'XS10002', '2022-12-22', '出勤', '2022-12-22 04:20:50', 'admin', '系统管理员', '', 'jhUpdate', 'admin', '系统管理员', '2022-12-22T16:21:17+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (16, 'KC10003', 'KC10003', 'XS10001', '2022-12-22', '缺勤', '2022-12-22 04:20:50', 'admin', '系统管理员', '', 'jhUpdate', 'admin', '系统管理员', '2022-12-22T16:21:17+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (17, 'KC10004', 'KC10004', 'XS10001', '2022-12-22', '缺勤', '2022-12-22 04:21:44', 'admin', '系统管理员', '', 'jhUpdate', 'admin', '系统管理员', '2023-02-04T00:41:03+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (18, 'KC10004', 'KC10004', 'XS10002', '2022-12-22', '出勤', '2022-12-22 04:21:44', 'admin', '系统管理员', '', 'jhInsert', 'admin', '系统管理员', '2022-12-22T16:21:44+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (19, 'KC10004', 'KC10004', 'XS10000', '2022-12-22', '出勤', '2022-12-22 04:21:44', 'admin', '系统管理员', '', 'jhInsert', 'admin', '系统管理员', '2022-12-22T16:21:44+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (20, 'KC10004', 'KC10004', 'XS10003', '2022-12-22', '出勤', '2022-12-22 04:21:44', 'admin', '系统管理员', '', 'jhInsert', 'admin', '系统管理员', '2022-12-22T16:21:44+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (21, 'KC10005', 'KC10005', 'XS10002', '2022-12-22', '缺勤', '2022-12-22 04:29:37', 'admin', '系统管理员', '', 'jhUpdate', 'admin', '系统管理员', '2022-12-22T16:31:46+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (22, 'KC10005', 'KC10005', 'XS10003', '2022-12-22', '缺勤', '2022-12-22 04:29:37', 'admin', '系统管理员', '', 'jhUpdate', 'admin', '系统管理员', '2022-12-22T16:31:46+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (23, 'KC10005', 'KC10005', 'XS10000', '2022-12-22', '迟到', '2022-12-22 04:29:37', 'admin', '系统管理员', '', 'jhUpdate', 'admin', '系统管理员', '2022-12-22T16:31:46+08:00');
INSERT INTO `attendance` (`id`, `courseId`, `lessonNumber`, `studentId`, `attendanceDate`, `attendance`, `markedAt`, `markedByUserId`, `markedByUser`, `remarks`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (24, 'KC10005', 'KC10005', 'XS10001', '2022-12-22', '早退', '2022-12-22 04:29:37', 'admin', '系统管理员', '', 'jhUpdate', 'admin', '系统管理员', '2022-12-22T16:31:46+08:00');
COMMIT;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSequence` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `courseId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '课程id;',
  `courseName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '课程名称;',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of course
-- ----------------------------
BEGIN;
INSERT INTO `course` (`id`, `idSequence`, `courseId`, `courseName`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, '10000', 'KC10000', 'HTML基础课程', 'insert', 'admin', '系统管理员', '2022-12-22T14:05:05+08:00');
INSERT INTO `course` (`id`, `idSequence`, `courseId`, `courseName`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (2, '10001', 'KC10001', 'CSS基础课程', 'insert', 'admin', '系统管理员', '2022-12-22T14:05:13+08:00');
INSERT INTO `course` (`id`, `idSequence`, `courseId`, `courseName`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (3, '10002', 'KC10002', 'JS基础课程', 'insert', 'admin', '系统管理员', '2022-12-22T14:05:21+08:00');
INSERT INTO `course` (`id`, `idSequence`, `courseId`, `courseName`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (4, '10003', 'KC10003', 'vue课程', 'insert', 'admin', '系统管理员', '2022-12-22T15:29:37+08:00');
INSERT INTO `course` (`id`, `idSequence`, `courseId`, `courseName`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (5, '10004', 'KC10004', 'react课程', 'insert', 'admin', '系统管理员', '2022-12-22T16:21:34+08:00');
INSERT INTO `course` (`id`, `idSequence`, `courseId`, `courseName`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (6, '10005', 'KC10005', 'node课程', 'jhUpdate', 'admin', '系统管理员', '2023-02-01T16:12:58+08:00');
COMMIT;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSequence` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `studentId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '学生ID;',
  `studentName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '学生名称;',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of student
-- ----------------------------
BEGIN;
INSERT INTO `student` (`id`, `idSequence`, `studentId`, `studentName`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, '10000', 'XS10000', '小兵', 'insert', 'admin', '系统管理员', '2022-12-22T14:04:35+08:00');
INSERT INTO `student` (`id`, `idSequence`, `studentId`, `studentName`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (2, '10001', 'XS10001', '小明', 'insert', 'admin', '系统管理员', '2022-12-22T14:04:41+08:00');
INSERT INTO `student` (`id`, `idSequence`, `studentId`, `studentName`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (3, '10002', 'XS10002', '小红', 'insert', 'admin', '系统管理员', '2022-12-22T14:04:49+08:00');
INSERT INTO `student` (`id`, `idSequence`, `studentId`, `studentName`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (4, '10003', 'XS10003', '小花', 'insert', 'admin', '系统管理员', '2022-12-22T14:04:54+08:00');
COMMIT;

-- ----------------------------
-- View structure for view01_student_attendance
-- ----------------------------
DROP VIEW IF EXISTS `view01_student_attendance`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view01_student_attendance` AS select `student`.`studentName` AS `studentName`,`attendance`.`lessonNumber` AS `lessonNumber`,`attendance`.`courseId` AS `courseId`,`attendance`.`attendanceDate` AS `attendanceDate`,`attendance`.`attendance` AS `attendance`,`attendance`.`markedAt` AS `markedAt`,`attendance`.`markedByUserId` AS `markedByUserId`,`attendance`.`markedByUser` AS `markedByUser`,`attendance`.`remarks` AS `remarks`,`attendance`.`operation` AS `operation`,`attendance`.`operationByUserId` AS `operationByUserId`,`attendance`.`operationByUser` AS `operationByUser`,`attendance`.`operationAt` AS `operationAt`,`student`.`studentId` AS `studentId` from (`student` left join `attendance` on((`attendance`.`studentId` = `student`.`studentId`)));

-- ----------------------------
-- View structure for _view01_user
-- ----------------------------
DROP VIEW IF EXISTS `_view01_user`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `_view01_user` AS select `_user`.`id` AS `id`,`_user`.`idSequence` AS `idSequence`,`_user`.`userId` AS `userId`,`_user`.`username` AS `username`,`_user`.`password` AS `password`,`_user`.`md5Salt` AS `md5Salt`,`_user`.`userStatus` AS `userStatus`,`_user`.`userType` AS `userType`,`_user`.`config` AS `config`,`_user`.`operation` AS `operation`,`_user`.`operationByUserId` AS `operationByUserId`,`_user`.`operationByUser` AS `operationByUser`,`_user`.`operationAt` AS `operationAt` from `_user`;

SET FOREIGN_KEY_CHECKS = 1;
