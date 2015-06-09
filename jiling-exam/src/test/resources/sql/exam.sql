/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : exam

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2015-06-09 00:31:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `DeptId` varchar(32) collate utf8_bin NOT NULL default '' COMMENT 'uuid',
  `DeptName` varchar(64) collate utf8_bin NOT NULL COMMENT '部门名称',
  `ParentId` bigint(20) default NULL COMMENT '父部门id',
  `AreaCode` varchar(64) collate utf8_bin default NULL COMMENT '地区编码',
  PRIMARY KEY  (`DeptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('111111111', '开发部', null, '10001');
INSERT INTO `department` VALUES ('222222222', '工程部', null, '1002');
INSERT INTO `department` VALUES ('333333333', '人事部', null, '10008');

-- ----------------------------
-- Table structure for `system_group`
-- ----------------------------
DROP TABLE IF EXISTS `system_group`;
CREATE TABLE `system_group` (
  `GroupId` varchar(32) collate utf8_bin NOT NULL COMMENT '组ID',
  `GroupName` varchar(64) collate utf8_bin NOT NULL COMMENT '组名称',
  `EngName` varchar(64) collate utf8_bin default NULL COMMENT '英文名称',
  `ParentId` varchar(32) collate utf8_bin NOT NULL COMMENT '父组',
  `Status` tinyint(2) default NULL COMMENT '状态',
  `Remark` varchar(255) collate utf8_bin default NULL COMMENT '备注',
  `CreateTime` datetime default NULL COMMENT '入库时间',
  `UpdateTime` datetime default NULL COMMENT '变更时间',
  PRIMARY KEY  (`GroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of system_group
-- ----------------------------

-- ----------------------------
-- Table structure for `system_log`
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log` (
  `Id` bigint(20) NOT NULL auto_increment,
  `Content` varchar(500) collate utf8_bin default NULL COMMENT '日志内容',
  `CurrentUser` varchar(32) collate utf8_bin default NULL COMMENT '操作人',
  `Ip` varchar(64) collate utf8_bin default NULL COMMENT 'ip地址',
  `Operate` varchar(64) collate utf8_bin default NULL COMMENT '操作',
  `Remark` varchar(500) collate utf8_bin default NULL COMMENT '备注',
  `CreateTime` datetime default NULL COMMENT '入库时间',
  `UpdateTime` datetime default NULL COMMENT '变更时间',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of system_log
-- ----------------------------
INSERT INTO `system_log` VALUES ('1', '访问了添加用户方法saveUer()10', 'aaaa', '10.1.11.112', null, null, '2015-05-29 01:40:17', null);
INSERT INTO `system_log` VALUES ('2', '访问了添加用户方法saveUer()11', 'aaaa', '10.1.11.112', null, null, '2015-05-29 01:40:17', null);
INSERT INTO `system_log` VALUES ('3', '访问了添加用户方法saveUer()12', 'aaaa', '10.1.11.112', null, null, '2015-05-29 01:40:17', null);
INSERT INTO `system_log` VALUES ('4', '访问了添加用户方法saveUer()13', 'aaaa', '10.1.11.112', null, null, '2015-05-29 01:40:17', null);
INSERT INTO `system_log` VALUES ('5', '访问了添加用户方法saveUer()14', 'aaaa', '10.1.11.112', null, null, '2015-05-29 01:40:17', null);
INSERT INTO `system_log` VALUES ('6', '访问了添加用户方法saveUer()15', 'aaaa', '10.1.11.112', null, null, '2015-05-29 01:40:17', null);
INSERT INTO `system_log` VALUES ('7', '访问了添加用户方法saveUer()16', 'aaaa', '10.1.11.112', null, null, '2015-05-29 01:40:17', null);
INSERT INTO `system_log` VALUES ('8', '访问了添加用户方法saveUer()17', 'aaaa', '10.1.11.112', null, null, '2015-05-29 01:40:17', null);
INSERT INTO `system_log` VALUES ('9', '访问了添加用户方法saveUer()18', 'aaaa', '10.1.11.112', null, null, '2015-05-29 01:40:17', null);
INSERT INTO `system_log` VALUES ('10', '访问了添加用户方法saveUer()19', 'aaaa', '10.1.11.112', null, null, '2015-05-29 01:40:17', null);

-- ----------------------------
-- Table structure for `system_operate`
-- ----------------------------
DROP TABLE IF EXISTS `system_operate`;
CREATE TABLE `system_operate` (
  `OperateId` varchar(32) collate utf8_bin NOT NULL COMMENT '操作uuid',
  `HandleName` varchar(64) collate utf8_bin default NULL COMMENT '名称',
  `EngName` varchar(64) collate utf8_bin default NULL COMMENT '英文名称',
  `Status` tinyint(2) default NULL COMMENT '状态',
  `Remark` varchar(255) collate utf8_bin default NULL COMMENT '备注',
  PRIMARY KEY  (`OperateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of system_operate
-- ----------------------------

-- ----------------------------
-- Table structure for `system_resource`
-- ----------------------------
DROP TABLE IF EXISTS `system_resource`;
CREATE TABLE `system_resource` (
  `ResourceId` varchar(32) collate utf8_bin NOT NULL COMMENT '资源uuid',
  `ResourceName` varchar(64) collate utf8_bin NOT NULL COMMENT '名称',
  `EngName` varchar(64) collate utf8_bin default NULL COMMENT '英文名称',
  `ParentId` varchar(32) collate utf8_bin default NULL COMMENT '父ID',
  `Path` varchar(255) collate utf8_bin default NULL COMMENT 'URL路径',
  `SourceIcon` varchar(255) collate utf8_bin default NULL COMMENT '图标地址',
  `SourceType` varchar(32) collate utf8_bin default NULL COMMENT '类型',
  `Status` tinyint(2) default '1' COMMENT '1应用；２禁用；３已删除',
  `Remark` varchar(255) collate utf8_bin default NULL COMMENT '备注',
  `CreateTime` datetime default NULL COMMENT '入库时间',
  `UpdateTime` datetime default NULL COMMENT '变更时间',
  PRIMARY KEY  (`ResourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of system_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `system_role`
-- ----------------------------
DROP TABLE IF EXISTS `system_role`;
CREATE TABLE `system_role` (
  `RoleId` varchar(32) collate utf8_bin NOT NULL,
  `RoleName` varchar(64) collate utf8_bin NOT NULL,
  `EngName` varchar(64) collate utf8_bin default NULL,
  `Remark` varchar(255) collate utf8_bin default NULL,
  `Status` tinyint(2) default NULL,
  `CreateTime` datetime default NULL,
  `UpdateTime` datetime default NULL,
  PRIMARY KEY  (`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of system_role
-- ----------------------------

-- ----------------------------
-- Table structure for `system_role_group`
-- ----------------------------
DROP TABLE IF EXISTS `system_role_group`;
CREATE TABLE `system_role_group` (
  `Id` varchar(32) collate utf8_bin NOT NULL,
  `RoleId` varchar(32) collate utf8_bin NOT NULL,
  `GroupId` varchar(32) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of system_role_group
-- ----------------------------

-- ----------------------------
-- Table structure for `system_role_resource`
-- ----------------------------
DROP TABLE IF EXISTS `system_role_resource`;
CREATE TABLE `system_role_resource` (
  `Id` varchar(32) collate utf8_bin NOT NULL,
  `RoleId` varchar(32) collate utf8_bin default NULL,
  `ResourceId` varchar(32) collate utf8_bin default NULL,
  `OperateId` varchar(500) collate utf8_bin default NULL COMMENT '操作ＩＤ串，逗号分隔',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of system_role_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `system_user`
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user` (
  `UserId` varchar(32) collate utf8_bin NOT NULL COMMENT '用户uuid',
  `DeptId` varchar(32) collate utf8_bin default NULL COMMENT '部门uuid',
  `LoginName` varchar(32) collate utf8_bin default NULL COMMENT '登陆账号',
  `Password` varchar(64) collate utf8_bin default NULL COMMENT '密码',
  `EngName` varchar(32) collate utf8_bin default NULL COMMENT '英文名称',
  `UserName` varchar(20) collate utf8_bin default NULL COMMENT '用户名',
  `PhoneNumber` varchar(20) collate utf8_bin default NULL COMMENT '电话号码',
  `Email` varchar(32) collate utf8_bin default NULL,
  `Sex` char(1) collate utf8_bin default NULL,
  `Address` varchar(50) collate utf8_bin default NULL,
  `Remark` varchar(255) collate utf8_bin default NULL,
  `Status` tinyint(2) unsigned default '1' COMMENT '1表示已正常登陆,2已禁用登陆，3已被删除',
  `CreateTime` datetime default NULL COMMENT '入库时间',
  `UpdateTime` datetime default NULL COMMENT '变更时间',
  PRIMARY KEY  (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES ('1379FA44BC9E48FE844518D4E7135149', '111111111', 'jhson25', '202CB962AC59075B964B07152D234B70', null, '张三25', '13521361225', 'abc25@163.com', '2', '上海', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('1BA76559547640F8849A31EF5515BFA3', '222222222', 'jhson15', '202CB962AC59075B964B07152D234B70', null, '张三15', '13521361215', 'abc15@163.com', '2', '上海', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('1F024A83FF78485EB0D783922B051853', '111111111', 'jhson24', '202CB962AC59075B964B07152D234B70', null, '张三24', '13521361224', 'abc24@163.com', '1', '北京', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('20E1D038E4DF43DC82714F853EEE1335', '333333333', 'jhson30', '202CB962AC59075B964B07152D234B70', null, '张三30', '13521361230', 'abc30@163.com', '1', '北京', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('20E1D038E4DF43DC82714F853EEE1399', '222222222', 'jhson15', 'E10ADC3949BA59ABBE56E057F20F883E', null, '张三156', '13521361215', 'abc15@163.com', '2', null, null, '1', '2015-06-09 00:18:01', null);
INSERT INTO `system_user` VALUES ('2B20499BA38B4981A59039845F2A0464', '333333333', 'admin', '202CB962AC59075B964B07152D234B70', null, '李四', '158213612', 'abc222237@163.com', null, null, null, '1', '2015-06-08 23:36:47', null);
INSERT INTO `system_user` VALUES ('36B1B4598C064C7FB2F56A8F0CF24E1A', '111111111', 'jhson37', '202CB962AC59075B964B07152D234B70', null, '张三37', '13521361237', 'abc37@163.com', '2', '上海', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('45FA4BE85CC5487890480958CD7DA7C7', '111111111', 'jhson33', '202CB962AC59075B964B07152D234B70', null, '张三33', '13521361233', 'abc33@163.com', '2', '上海', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('46F21E9281CA45449B3505B462B95A05', '111111111', 'jhson20', '202CB962AC59075B964B07152D234B70', null, '张三20', '13521361220', 'abc20@163.com', '1', '北京', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('4F8C544BECF14773932A4793D1ED8E59', '222222222', 'jhson19', '202CB962AC59075B964B07152D234B70', null, '张三19', '13521361219', 'abc19@163.com', '2', '上海', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('5C1AD7D2D79B4946B10EC04D529B8E76', '111111111', 'jhson21', '202CB962AC59075B964B07152D234B70', null, '张三21', '13521361221', 'abc21@163.com', '2', '上海', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('5ED5D3CD400F4F7291C2A44F88254E50', '111111111', 'jhson17', '202CB962AC59075B964B07152D234B70', null, '张三17', '13521361217', 'abc17@163.com', '2', '上海', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('5F6C8EE7AD2C4464BAFB1ADE1DAF170E', '111111111', 'jhson36', '202CB962AC59075B964B07152D234B70', null, '张三36', '13521361236', 'abc36@163.com', '1', '北京', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('6FB22D3660744CFD925B8A151A4D9067', '222222222', 'jhson39', '202CB962AC59075B964B07152D234B70', null, '张三39', '13521361239', 'abc39@163.com', '2', '上海', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('77EBA4C3F494416784FC4235DFAB64B1', '111111111', 'jhson16', '202CB962AC59075B964B07152D234B70', null, '张三16', '13521361216', 'abc16@163.com', '1', '北京', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('7857BE5434794844A9D7ECD0C8E59D07', '111111111', 'jhson18', '202CB962AC59075B964B07152D234B70', null, '张三18', '13521361218', 'abc18@163.com', '1', '北京', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('7A679DD0505F43D4B3A2089BE1EF3414', '222222222', 'hello', 'E10ADC3949BA59ABBE56E057F20F883E', null, '李们', '157123455667', 'ssssss@132.com', '1', null, null, '1', '2015-06-09 00:22:31', null);
INSERT INTO `system_user` VALUES ('81C2973FD5574F4C987100318FDF184C', '222222222', 'jhson35', '202CB962AC59075B964B07152D234B70', null, '张三35', '13521361235', 'abc35@163.com', '2', '上海', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('86AF0C124B7E402F8B0208DB87E40F29', '222222222', 'jhson31', '202CB962AC59075B964B07152D234B70', null, '张三31', '13521361231', 'abc31@163.com', '2', '上海', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('86CCE3C359B54F489DCA43A879E2D8F9', '222222222', 'jhson38', '202CB962AC59075B964B07152D234B70', null, '张三38', '13521361238', 'abc38@163.com', '1', '北京', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('8CFCDB8F1E8642D4861481BD520E7833', '111111111', 'jhson11', '202CB962AC59075B964B07152D234B70', null, '张三11', '13521361211', 'abc11@163.com', '2', '上海', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('932FA2EC864246ACA6A19ED9503FEB8B', '333333333', 'jhson22', '202CB962AC59075B964B07152D234B70', null, '张三22', '13521361222', 'abc22@163.com', '1', '北京', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('9866F45CC82B44FD8913268FD205B3A5', '111111111', 'jhson23', '202CB962AC59075B964B07152D234B70', null, '张三23', '13521361223', 'abc23@163.com', '2', '上海', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('A1B6311159F44734A9409B0FB1414A88', '333333333', 'jhson14', '202CB962AC59075B964B07152D234B70', null, '张三14', '13521361214', 'abc14@163.com', '1', '北京', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('A413D0F303EB498FA12709768DAFBE35', '111111111', 'jhson29', '202CB962AC59075B964B07152D234B70', null, '张三29', '13521361229', 'abc29@163.com', '2', '上海', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('B4022900B1BC4A9A96171B8B9D846C1A', '111111111', 'jhson34', '202CB962AC59075B964B07152D234B70', null, '张三34', '13521361234', 'abc34@163.com', '1', '北京', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('B51E6FD938294AE8A6A08C2E45B8F0BC', '111111111', 'jhson27', '202CB962AC59075B964B07152D234B70', null, '张三27', '13521361227', 'abc27@163.com', '2', '上海', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('C6D63C4E4B8F419E8C7A77B6CD87AD27', '111111111', 'jhson26', '202CB962AC59075B964B07152D234B70', null, '张三26', '13521361226', 'abc26@163.com', '1', '北京', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('C8DF888209834BE2B8ECB60129B0FB1B', '111111111', 'jhson12', '202CB962AC59075B964B07152D234B70', null, '张三12', '13521361212', 'abc12@163.com', '1', '北京', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('D3777811B7D74B40B27EB92D6D9C41FD', '111111111', 'jhson10', '202CB962AC59075B964B07152D234B70', null, '张三10', '13521361210', 'abc10@163.com', '1', '北京', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('E15F1AF1C80B4E4593BFF5A7225C7C6B', '111111111', 'jhson28', '202CB962AC59075B964B07152D234B70', null, '张三28', '13521361228', 'abc28@163.com', '1', '北京', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('EBDD8C57F89D401E86662B538F959000', '111111111', 'jhson13', '202CB962AC59075B964B07152D234B70', null, '张三13', '13521361213', 'abc13@163.com', '2', '上海', null, '1', '2015-06-08 23:35:28', null);
INSERT INTO `system_user` VALUES ('F8B9ED0CB8554FEABF74D4E7275455A0', '111111111', 'jhson32', '202CB962AC59075B964B07152D234B70', null, '张三32', '13521361232', 'abc32@163.com', '1', '北京', null, '1', '2015-06-08 23:35:28', null);

-- ----------------------------
-- Table structure for `system_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `system_user_group`;
CREATE TABLE `system_user_group` (
  `Id` varchar(32) collate utf8_bin NOT NULL,
  `UserId` varchar(32) collate utf8_bin default NULL COMMENT '用户表ID',
  `GroupId` varchar(32) collate utf8_bin default NULL COMMENT '组表ID',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of system_user_group
-- ----------------------------
