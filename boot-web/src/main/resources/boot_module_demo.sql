/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : springboot2

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-12-04 17:25:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `system_config`
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
  `id` varchar(50) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `enable` varchar(255) NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 NOT NULL,
  `value` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES ('20546fc269c84b1d9a2687a9f595fa01', '2017-11-06 16:04:17', null, null, null, 'email_config', 'Y', '邮箱配置', '{\'serverHost\':\'smtp.163.com\',\'serverPort\':25,\'serverHost\':\'smtp.163.com\',\'protocol\':\'smtp\',\'auth\':true,\'fromEmail\':\'xwbing2009@163.com\',\'password\':\'xwbing900417\',\'subject\':\'注册成功\',\'centent\':\'注册成功\'}');
INSERT INTO `system_config` VALUES ('e3754c17af7f40de833e443dc9f47f50', '2017-11-06 16:27:58', null, '2017-11-13 16:19:33', null, '44', 'N', '3344', '44');

-- ----------------------------
-- Table structure for `sys_authority`
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority`;
CREATE TABLE `sys_authority` (
  `id` varchar(50) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 NOT NULL,
  `parent_id` varchar(50) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `enable` varchar(255) DEFAULT NULL,
  `is_enable` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_authority
-- ----------------------------
INSERT INTO `sys_authority` VALUES ('0f8e513001134f8cbe646181c7b5558f', '2017-11-15 14:24:10', null, null, null, 'roleManage', '角色管理', 'root', '2', 'role/listAllByEnable', 'Y', '');
INSERT INTO `sys_authority` VALUES ('10f9e7a25f834ec2be0aa6dd55344724', '2017-11-15 14:25:47', null, '2017-11-15 15:59:58', null, 'roleUpdate', '修改角色', '0f8e513001134f8cbe646181c7b5558f', '1', 'role/update', 'Y', '');
INSERT INTO `sys_authority` VALUES ('13092bea9c124111bedcb20aaafcdc4c', '2017-11-15 14:25:00', null, '2017-11-15 16:00:00', null, 'roleSave', '保存角色', '0f8e513001134f8cbe646181c7b5558f', '1', 'role/save', 'Y', '');
INSERT INTO `sys_authority` VALUES ('62ceb6ea33ce425fb98248201148578a', '2017-11-15 14:22:24', null, null, null, 'resetPassWord', '重置密码', 'bf1937cf97fb4eeda39c41ca76139a8f', '1', 'user/resetPassWord', 'N', '');
INSERT INTO `sys_authority` VALUES ('803547685be4448bb4896b46581bb9d9', '2017-11-15 14:21:40', null, null, null, 'userUpdate', '修改用户', 'bf1937cf97fb4eeda39c41ca76139a8f', '1', 'user/update', 'Y', '');
INSERT INTO `sys_authority` VALUES ('a1e4018a5d354401b9bf4a2ac9dd2d01', '2017-11-15 14:20:14', null, null, null, 'userSave', '添加用户', 'bf1937cf97fb4eeda39c41ca76139a8f', '1', 'user/save', 'Y', '');
INSERT INTO `sys_authority` VALUES ('b002e0119a1940f6b673faa7534e4a0e', '2017-11-15 14:21:13', null, null, null, 'userRemove', '删除用户', 'bf1937cf97fb4eeda39c41ca76139a8f', '1', 'user/removeById', 'Y', '');
INSERT INTO `sys_authority` VALUES ('bf1937cf97fb4eeda39c41ca76139a8f', '2017-11-15 14:18:10', null, null, null, 'manage', '管理员管理', 'root', '2', 'user/listAll', 'Y', '');
INSERT INTO `sys_authority` VALUES ('f944e1848abc401ca1e00d8247d484c7', '2017-11-15 14:25:28', null, '2017-11-15 16:00:01', null, 'roleRemove', '删除角色', '0f8e513001134f8cbe646181c7b5558f', '1', 'role/removeById', 'Y', '');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(50) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `enable` varchar(255) DEFAULT NULL,
  `is_enable` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('491e0d8765ac43bfa017940bde47c90b', '2017-11-15 14:12:21', null, null, null, 'business', '业务员', '业务员', 'N', '');
INSERT INTO `sys_role` VALUES ('72a50656b534436f89665bcb6cfdd620', '2017-11-14 11:30:21', null, null, null, 'admin', '管理员', '管理人员', 'Y', '');
INSERT INTO `sys_role` VALUES ('76ff321b45404849ac2f04ce710b2e25', '2017-11-14 11:31:14', null, null, null, 'protector', '安保人员', '安保人员', 'Y', '');
INSERT INTO `sys_role` VALUES ('c71040053f6a4728805f7a163b65129d', '2017-11-14 11:33:14', null, null, null, 'cleanner', '保洁人员', '保洁人员', 'Y', '');
INSERT INTO `sys_role` VALUES ('e6cd98be7f384eba946a8895ece97d96', '2017-11-14 11:32:08', null, null, null, 'maintenance', '维修人员', '维修人员', 'Y', '');

-- ----------------------------
-- Table structure for `sys_role_authority`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_authority`;
CREATE TABLE `sys_role_authority` (
  `id` varchar(50) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `authority_id` varchar(255) NOT NULL,
  `role_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_role_authority
-- ----------------------------
INSERT INTO `sys_role_authority` VALUES ('45ad3ec5e6544c78b5094943d0125860', null, null, '2017-11-15 14:41:47', null, 'a1e4018a5d354401b9bf4a2ac9dd2d01', '72a50656b534436f89665bcb6cfdd620');
INSERT INTO `sys_role_authority` VALUES ('746d4d6d24324b04b7963d5b08a1285c', null, null, '2017-11-15 14:41:47', null, 'bf1937cf97fb4eeda39c41ca76139a8f', '72a50656b534436f89665bcb6cfdd620');
INSERT INTO `sys_role_authority` VALUES ('85ff93de81714838a846c189e036ed88', null, null, '2017-11-15 14:41:47', null, 'b002e0119a1940f6b673faa7534e4a0e', '72a50656b534436f89665bcb6cfdd620');
INSERT INTO `sys_role_authority` VALUES ('8fb9a02f9e274777bff9c684f2e748ec', null, null, '2017-11-15 14:41:47', null, 'f944e1848abc401ca1e00d8247d484c7', '72a50656b534436f89665bcb6cfdd620');
INSERT INTO `sys_role_authority` VALUES ('9fe1dffd8c464d5ab3b181a5919e2339', null, null, '2017-11-15 14:41:47', null, '0f8e513001134f8cbe646181c7b5558f', '72a50656b534436f89665bcb6cfdd620');
INSERT INTO `sys_role_authority` VALUES ('cd4599070dd8435ead12371526190ece', null, null, '2017-11-15 14:41:47', null, '62ceb6ea33ce425fb98248201148578a', '72a50656b534436f89665bcb6cfdd620');
INSERT INTO `sys_role_authority` VALUES ('e32d89aef7eb45ba9b85dee51a9279b9', null, null, '2017-11-15 14:41:47', null, '10f9e7a25f834ec2be0aa6dd55344724', '72a50656b534436f89665bcb6cfdd620');
INSERT INTO `sys_role_authority` VALUES ('e5920b542e0c4094b9f348a78f3de37d', null, null, '2017-11-15 14:41:47', null, '13092bea9c124111bedcb20aaafcdc4c', '72a50656b534436f89665bcb6cfdd620');
INSERT INTO `sys_role_authority` VALUES ('f62c00ac745e4a6db0ff01143339837d', null, null, '2017-11-15 14:41:47', null, '803547685be4448bb4896b46581bb9d9', '72a50656b534436f89665bcb6cfdd620');

-- ----------------------------
-- Table structure for `sys_user_info`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_info`;
CREATE TABLE `sys_user_info` (
  `id` varchar(50) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `sex` varchar(255) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `admin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_user_info
-- ----------------------------
INSERT INTO `sys_user_info` VALUES ('0c5e88ea04de4a3d8db4099387f3bb77', '2017-11-21 15:42:05', null, null, null, '786461501@qq.com', 'httptest', '62f90411d4ba339c5a83409e179238aaf8841974', 'f9e85e7fd8ca7b5a073a', '1', 'httptest3', 'N');
INSERT INTO `sys_user_info` VALUES ('44dad0e4f1934112bec0cff69b3f1cac', '2017-11-06 13:54:52', null, '2017-11-06 13:55:53', null, '786461501@qq.com', '王亚', '0ced021c7b7f16533dfef5a126c39418c1660d01', 'de9b2a362b490e051f3a', '0', 'wangy', 'N');
INSERT INTO `sys_user_info` VALUES ('4adfaecc725843928eb8268a2b84f0f6', '2017-11-06 16:19:21', null, null, null, '785@145.com', 'sdfs', 'e86093432da2db2b9f5113acbf90ee92dfa0f517', 'ec8fb86d1b3d455e653c', '0', 'x', 'N');
INSERT INTO `sys_user_info` VALUES ('78425d59a2d64e49abe563d4de013d22', '2017-11-06 13:25:19', null, '2017-11-06 14:02:08', null, '786461501@qq.com', '项伟兵', '31002bc701a94519b2eb68a6872f96597ea23d9e', '67b749c4c2b09675b9b4', '1', 'xwbing', 'Y');
INSERT INTO `sys_user_info` VALUES ('87bf8d568dc64885abcdba8a4e6033d1', '2017-11-06 17:02:10', null, null, null, '786461501@qq.com', '临安', 'eaec849f61c5c9e3c46cf4e5c50842d85d1228af', '9645cd47d6bdcc72b364', '1', 'sdd', 'N');
INSERT INTO `sys_user_info` VALUES ('9648cf32a75d4d1999a70e7749780ec1', '2017-11-06 13:27:01', null, '2017-11-07 09:33:03', null, '786461501@qq.com', '李涛', '710a5f73d6ea51ffda3e8aac89cc13c4347822ab', 'a4c9b6960b25ffdfa72e', '1', 'lit', 'N');
INSERT INTO `sys_user_info` VALUES ('a12ac022515c47e6a878751bd51a7a95', '2017-11-06 16:51:41', null, '2017-11-07 09:34:27', null, '786461501@qq.com', '临安', '6701399fdf14aaa16084d61507ca252d5a3a2229', '8e0af0a7177a503902f6', '1', 'sgdd', 'N');
INSERT INTO `sys_user_info` VALUES ('eef0743114434d6fbf83123431599296', '2017-11-21 15:40:01', null, null, null, '786461501@qq.com', 'httptest', 'ca5ed563423211ec615f20af3d60e48b96806835', 'd2e7d2fcbddf7ec72d39', '1', 'httptest1', 'N');
INSERT INTO `sys_user_info` VALUES ('efbc60092762432dbaa40866f012d436', '2017-11-21 15:40:15', null, null, null, '786461501@qq.com', 'httptest', 'ee7959343885476491037a3f1985c6a5ada5edbe', '25483d5ce699c6489a2f', '1', 'httptest2', 'N');
INSERT INTO `sys_user_info` VALUES ('f2ee3e6aee5b48dcb0b8350ccecad0ae', '2017-11-21 15:39:21', null, null, null, '786461501@qq.com', 'httptest', 'f8aa1331effc6a0b623ccfa019c34d2ebd311cce', '6878c5036f17983bfcff', '1', 'httptest', 'N');

-- ----------------------------
-- Table structure for `sys_user_login_in_out`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_login_in_out`;
CREATE TABLE `sys_user_login_in_out` (
  `id` varchar(50) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `inout_type` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_user_login_in_out
-- ----------------------------
INSERT INTO `sys_user_login_in_out` VALUES ('0460f826e04c4d2da19f31c058f5f8d2', '2017-11-20 17:44:36', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('050ebe87af89489aaee03d5e453af1e3', '2017-11-21 11:52:44', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('07d73e1757cd42648f94851ac5ba945a', '2017-11-21 13:26:13', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('080ef23ffe504dc29003903793068d7b', '2017-11-21 10:07:34', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('08219900c09042888c0373f5f325f4c8', '2017-11-17 13:59:42', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('093f5de630c64b9ba4db5724fdcd0848', '2017-11-09 14:01:39', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('0c3a72b540404cc48cbe5105ddaf707b', '2017-11-17 14:15:13', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('0c50c27a0c66444cbf5affa064c42046', '2017-11-20 16:16:52', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('0deb202e5c0b48c3be4cfb1a723d3e33', '2017-11-17 13:55:59', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('0eac88f6b2cf4f2aa8400f6e6eb15fae', '2017-11-13 17:48:17', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('0fe2d3f8f443489bbb6da25809a05470', '2017-11-20 17:03:35', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('10f18ba33039496a8a9e82b39c0aa7c9', '2017-11-20 15:57:45', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('126f5c95a92b433497ee231eeb0d3ea1', '2017-11-20 09:27:33', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('12f87b95b8854f3ebb969065b9872a67', '2017-11-09 13:43:48', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('155343491396478eb4153e50a36b5186', '2017-11-15 14:10:35', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('176c59e0ee8d468dabfc938bdc16533c', '2017-11-20 17:00:25', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('1acb9b016aeb4cb39fed927cbcac517f', '2017-11-13 16:58:48', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('1c544050869f440fba4146dcd624f4a0', '2017-11-17 16:47:17', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('1e88acbd31b64d5c825e2f7995e6d1ec', '2017-11-17 11:25:36', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('2492117274db45bca496003230961bee', '2017-11-21 11:54:11', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('2a855ad248814f92b9ce71ed653e7baa', '2017-11-13 16:16:40', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('2a92954b48f54c80981142791dec6d8d', '2017-11-14 11:23:39', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('2e7703d09e5d412bb263436318431127', '2017-11-14 11:47:19', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('306aa9bee040455dbf25d24ae0f6000b', '2017-11-20 09:17:31', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('342743757d1f48de9562eba9ad0f85a5', '2017-11-21 12:18:40', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('349d6809fe304c3298e0578b32a92563', '2017-11-09 14:57:22', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('35573c3c2ed84bb697d82f51ab57c4c8', '2017-11-20 16:13:38', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('35dfd53563b84460a8f7462bcc25f3b2', '2017-11-17 14:01:36', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('37cf05c78c1943e98a46bb8e2b73f1b0', '2017-11-21 11:56:45', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('386916477f944efc8159342de980820e', '2017-11-13 16:37:41', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('3cd5b2e56c864b0b9adec48e1541c722', '2017-11-16 16:42:11', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('40447ae688eb48a58b9c01aa106b6659', '2017-11-13 17:15:28', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('43538984b3764b8eab7cdac725c711eb', '2017-11-15 15:37:55', null, null, null, '1', '172.16.10.130', '9648cf32a75d4d1999a70e7749780ec1');
INSERT INTO `sys_user_login_in_out` VALUES ('4df60e3fd3fa49d99ac2187088931c9d', '2017-11-13 17:59:37', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('4e9d3cc52b3145a0b45562847f0a1339', '2017-11-21 15:51:37', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('50fb80ebbe1b42d5b9a2560e63ede656', '2017-11-21 09:26:41', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('515c496f93744310b2e11d08426fed17', '2017-11-13 13:58:36', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('5424a307caf0400ea8b758bb5434c0fa', '2017-11-14 10:39:10', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('552113884854434c9deb2efa8d01793a', '2017-11-17 15:48:04', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('556430783ac54bd39a91137c38dd9f5b', '2017-11-20 09:38:26', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('5bc057b352a342e9a1309e8a75a6b463', '2017-11-13 16:27:23', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('5cb7b1cd5f15407b8131dbe75c8c2fa0', '2017-11-15 15:03:36', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('5d8f55da746e4290b2e334834ae32691', '2017-11-15 16:24:49', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('5de2f44586b94c3ab9fed5ec99826583', '2017-11-09 13:56:48', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('5ecd1a6a3bf34b75b6de5e4605e236f8', '2017-11-07 11:26:26', null, null, null, '1', '172.16.10.130', '9648cf32a75d4d1999a70e7749780ec1');
INSERT INTO `sys_user_login_in_out` VALUES ('6037f1e515864dbaad799aaee397d396', '2017-11-17 16:18:47', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('63e00dcd1c1a4939a991cc5b487ff174', '2017-11-17 16:48:51', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('6460d0298857454794b9da170c0aaac9', '2017-11-20 17:41:44', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('6a41e079214741f79c9ca21cd10ece6d', '2017-11-17 16:26:02', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('6b0bd88d38f2478b8920603241f19850', '2017-11-09 15:13:29', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('6c85f1d8f47c4d088a6ccb1cc21b8b41', '2017-11-17 10:12:16', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('71504140cf51491480a1696ac25bd89b', '2017-11-07 11:35:08', null, null, null, '1', '172.16.10.130', '9648cf32a75d4d1999a70e7749780ec1');
INSERT INTO `sys_user_login_in_out` VALUES ('73a5aa754d214bf28e893a292dc7de78', '2017-11-07 11:42:30', null, null, null, '1', '172.16.10.130', '9648cf32a75d4d1999a70e7749780ec1');
INSERT INTO `sys_user_login_in_out` VALUES ('788997ea634e43dda67f338f53b84f1b', '2017-11-20 10:26:43', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('7b6da6a0435f4e2eb294d51dded6f6c7', '2017-11-15 15:13:12', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('7bb8489e68344d018c430b76761b3950', '2017-11-07 11:38:57', null, null, null, '1', '172.16.10.130', '9648cf32a75d4d1999a70e7749780ec1');
INSERT INTO `sys_user_login_in_out` VALUES ('7c2b253c3b9544e1a1d57a939c6fb4d7', '2017-11-07 17:18:51', null, null, null, '2', '172.16.10.130', '9648cf32a75d4d1999a70e7749780ec1');
INSERT INTO `sys_user_login_in_out` VALUES ('801825a0200849f1b4608d88286f2cdf', '2017-11-13 17:51:44', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('806c7868b7a54b1f80fca315484a8138', '2017-11-21 13:34:26', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('82d590d3bc434dc3ab46a9b5ee469b29', '2017-11-16 16:27:32', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('83127be2aadd4dc3a2c47def2da7a74a', '2017-11-09 15:11:49', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('84e3bdb0a4eb48b2addb99698171e45a', '2017-11-20 10:25:29', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('8d6bae942b394a78b9b7ede436267bbd', '2017-11-17 11:26:51', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('97c30786d1e44822aff4bd373f1a1e2e', '2017-11-15 15:09:12', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('988710612b264d8eb53737ff7303f0b6', '2017-11-13 16:34:37', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('9d23a2053a7740e1b359b4d189d483e7', '2017-11-15 14:47:40', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('9fecfd1b36404348ad181da03d0fe227', '2017-11-14 11:42:01', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('a6df6f69842b453992f333195a859e5a', '2017-11-21 11:46:39', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('a8d612aa4d194427b6ef7a6c0b83644e', '2017-11-17 11:21:16', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('a9ee5ddbb69e401ea1ad4b14c14fb57b', '2017-11-17 14:18:56', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('ab5dd0fc66834fab8c369bea8c0420d0', '2017-11-09 14:04:54', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('abf51162e97343849b5266bee042a72f', '2017-11-07 11:20:21', null, null, null, '1', '172.16.10.130', '9648cf32a75d4d1999a70e7749780ec1');
INSERT INTO `sys_user_login_in_out` VALUES ('ad729e9a42974cdcb746d89d3976f6db', '2017-11-17 14:05:22', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('b00f3496348b486e820af3753ea9f7bf', '2017-11-17 15:20:39', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('b51257ad9e5747308b424e26d304be2f', '2017-11-16 16:52:41', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('b55d4ce4e12744d89cf48e8403ec4379', '2017-11-07 10:44:18', null, null, null, '1', '172.16.10.130', '9648cf32a75d4d1999a70e7749780ec1');
INSERT INTO `sys_user_login_in_out` VALUES ('b5b6d49f908a49b0ad71ee604b0b497f', '2017-11-17 11:18:14', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('b5c8f695b415475880d670589c7dc099', '2017-11-21 15:38:35', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('b8150c3534534017ae409f49ea7d0f37', '2017-11-21 10:23:02', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('ba1eff82586d40b8b9396f52fab2af0f', '2017-11-16 17:35:33', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('bb41c71359044b218c843b8744b1e4d5', '2017-11-13 16:12:44', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('bd6efcc4888c442fb0ab183c5fe82880', '2017-11-16 16:29:20', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('c0496386b1fd4f96a4129339eebb9a49', '2017-11-17 15:50:53', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('c3abf191f0e2486cbc7b627e74de9d85', '2017-11-20 17:37:09', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('c437586a16de45a0a7d6a4be55400dca', '2017-11-13 17:38:34', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('c5f69a6215c1440b90042d5348a6a1ae', '2017-11-20 17:30:45', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('c6ca8c91d939470f92d2fe4fe1e1fd91', '2017-11-17 10:20:37', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('c846e4f53cc64cd7843d73a492edce60', '2017-11-21 11:59:24', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('c8e7399f88b3460e9e93a8eceec9aa2c', '2017-11-09 14:22:46', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('cea2895a1c3f4e57b4db052dedc2e0c6', '2017-11-07 10:46:40', null, null, null, '2', '172.16.10.130', '9648cf32a75d4d1999a70e7749780ec1');
INSERT INTO `sys_user_login_in_out` VALUES ('cf5c0f0fa1ee4aa79e14ed18563bf716', '2017-11-22 15:21:57', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('d36ba7987c094de39af274ede6867c8d', '2017-11-15 14:55:36', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('d45908184e774e9e8cba4940a273c959', '2017-11-13 16:56:09', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('d4fd57e00a8a4ef7a8ed6c8c33e770e2', '2017-11-17 16:02:15', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('d93ec0fc4ec04224b949e89f222edac5', '2017-11-14 16:32:40', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('db699363110f4d5fbbb908942a7f4e72', '2017-11-14 16:45:54', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('dbdbb82ed7ac4cfe9fca57eb0628150b', '2017-11-14 11:21:27', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('dd9c6bcdc5e643cab6818567f12cc6a1', '2017-11-21 10:13:23', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('de37a950837049e0884744730afab082', '2017-11-17 16:06:38', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('df315a330ab445ad8a1670c6feed978f', '2017-11-07 17:17:51', null, null, null, '1', '172.16.10.130', '9648cf32a75d4d1999a70e7749780ec1');
INSERT INTO `sys_user_login_in_out` VALUES ('e0aab289418745e3a8b6f1355d503a7c', '2017-11-20 09:35:40', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('e1363c25f3ce49a88e6bf7c54e025fc6', '2017-11-15 15:28:12', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('e16b07b217c0416ca257e54a15ed7c99', '2017-11-13 16:19:06', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('e8ef51ab2a8841188759ef51166894e7', '2017-11-17 13:58:13', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('eabc703b1da64683b61f5a946f0a5a6f', '2017-11-20 09:22:24', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('eac83be1f64848349b70d85ca4b65bce', '2017-11-17 16:33:51', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('eb51929337214b28a4833992ecd532a0', '2017-11-15 17:16:50', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('ebb16cdc5c18485789ba9dc5f753ad59', '2017-11-13 17:40:39', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('ec27008160b14fa0aa0c8f7d9cb530de', '2017-11-16 16:31:19', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('ef557b7628ed4275b2bafcaded304bd0', '2017-11-14 16:52:08', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('f7b88a6dad244e57a73a97639c090052', '2017-11-16 16:56:14', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('f7c9e20c103a4e4c839591dd9a81d96d', '2017-11-15 14:57:16', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('f85672e881134d57b5a3da3f21233cdb', '2017-11-17 10:00:08', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');
INSERT INTO `sys_user_login_in_out` VALUES ('f95ce11b0c6847f98c8a963d9531e969', '2017-11-17 10:18:41', null, null, null, '1', '172.16.10.130', '78425d59a2d64e49abe563d4de013d22');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` varchar(50) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('62d46da696e349d7a65840dd43d55397', '2017-11-15 14:43:21', null, null, null, '72a50656b534436f89665bcb6cfdd620', '9648cf32a75d4d1999a70e7749780ec1');
