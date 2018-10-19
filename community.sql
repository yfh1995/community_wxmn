/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : community

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-10-19 18:30:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '首页', 'fa-bar-chart', '/', null, '2018-10-09 05:44:19');
INSERT INTO `admin_menu` VALUES ('2', '0', '2', '管理', 'fa-tasks', null, null, '2018-10-09 05:45:54');
INSERT INTO `admin_menu` VALUES ('3', '2', '3', '用户', 'fa-users', 'auth/users', null, '2018-10-09 05:46:09');
INSERT INTO `admin_menu` VALUES ('4', '2', '4', '角色', 'fa-user', 'auth/roles', null, '2018-10-09 05:46:19');
INSERT INTO `admin_menu` VALUES ('5', '2', '5', '权限', 'fa-key', 'auth/permissions', null, '2018-10-09 05:49:20');
INSERT INTO `admin_menu` VALUES ('6', '2', '6', '菜单', 'fa-bars', 'auth/menu', null, '2018-10-09 05:46:40');
INSERT INTO `admin_menu` VALUES ('7', '2', '7', '操作日志', 'fa-history', 'auth/logs', null, '2018-10-09 05:47:01');
INSERT INTO `admin_menu` VALUES ('8', '0', '0', '用户管理', 'fa-tasks', null, '2018-10-14 07:19:49', '2018-10-14 07:19:49');
INSERT INTO `admin_menu` VALUES ('9', '8', '0', '用户基础信息', 'fa-database', '/user/user-base-info', '2018-10-14 07:20:36', '2018-10-14 07:20:36');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-10-08 14:45:04', '2018-10-08 14:45:04');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-08 14:45:15', '2018-10-08 14:45:15');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-10-08 14:46:04', '2018-10-08 14:46:04');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-10-08 14:48:29', '2018-10-08 14:48:29');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-08 14:49:24', '2018-10-08 14:49:24');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-08 14:50:19', '2018-10-08 14:50:19');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-08 14:50:23', '2018-10-08 14:50:23');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-10-08 14:58:56', '2018-10-08 14:58:56');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-08 14:59:03', '2018-10-08 14:59:03');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-08 14:59:06', '2018-10-08 14:59:06');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-08 14:59:07', '2018-10-08 14:59:07');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-08 14:59:12', '2018-10-08 14:59:12');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-08 15:02:32', '2018-10-08 15:02:32');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Index\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"_token\":\"J1nf2r4G6l6NbYWRtwJvrHIMmlazOY63uCR5J90d\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shequ.pqwm.com\\/admin\\/auth\\/menu\"}', '2018-10-08 15:08:47', '2018-10-08 15:08:47');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-08 15:08:47', '2018-10-08 15:08:47');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-08 15:08:56', '2018-10-08 15:08:56');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Index\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"_token\":\"J1nf2r4G6l6NbYWRtwJvrHIMmlazOY63uCR5J90d\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shequ.pqwm.com\\/admin\\/auth\\/menu\"}', '2018-10-08 15:09:01', '2018-10-08 15:09:01');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-08 15:09:01', '2018-10-08 15:09:01');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-08 15:09:27', '2018-10-08 15:09:27');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-08 15:10:15', '2018-10-08 15:10:15');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-08 15:10:33', '2018-10-08 15:10:33');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-08 15:10:39', '2018-10-08 15:10:39');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-08 15:10:41', '2018-10-08 15:10:41');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-10-08 15:11:37', '2018-10-08 15:11:37');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-08 15:11:40', '2018-10-08 15:11:40');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-10-09 05:43:26', '2018-10-09 05:43:26');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:43:38', '2018-10-09 05:43:38');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:44:02', '2018-10-09 05:44:02');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:44:06', '2018-10-09 05:44:06');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"_token\":\"puDZz6sSCPjktHDzkSWbD7yVEF2XtGrOo95VHqEL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/auth\\/menu\"}', '2018-10-09 05:44:19', '2018-10-09 05:44:19');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-09 05:44:20', '2018-10-09 05:44:20');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-09 05:44:23', '2018-10-09 05:44:23');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:44:36', '2018-10-09 05:44:36');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"puDZz6sSCPjktHDzkSWbD7yVEF2XtGrOo95VHqEL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/auth\\/menu\"}', '2018-10-09 05:45:54', '2018-10-09 05:45:54');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-09 05:45:54', '2018-10-09 05:45:54');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:45:58', '2018-10-09 05:45:58');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"_token\":\"puDZz6sSCPjktHDzkSWbD7yVEF2XtGrOo95VHqEL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/auth\\/menu\"}', '2018-10-09 05:46:08', '2018-10-09 05:46:08');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-09 05:46:09', '2018-10-09 05:46:09');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:46:12', '2018-10-09 05:46:12');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"_token\":\"puDZz6sSCPjktHDzkSWbD7yVEF2XtGrOo95VHqEL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/auth\\/menu\"}', '2018-10-09 05:46:19', '2018-10-09 05:46:19');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-09 05:46:20', '2018-10-09 05:46:20');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:46:22', '2018-10-09 05:46:22');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"_token\":\"puDZz6sSCPjktHDzkSWbD7yVEF2XtGrOo95VHqEL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/auth\\/menu\"}', '2018-10-09 05:46:28', '2018-10-09 05:46:28');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-09 05:46:29', '2018-10-09 05:46:29');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:46:31', '2018-10-09 05:46:31');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"_token\":\"puDZz6sSCPjktHDzkSWbD7yVEF2XtGrOo95VHqEL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/auth\\/menu\"}', '2018-10-09 05:46:40', '2018-10-09 05:46:40');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-09 05:46:40', '2018-10-09 05:46:40');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:46:45', '2018-10-09 05:46:45');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"_token\":\"puDZz6sSCPjktHDzkSWbD7yVEF2XtGrOo95VHqEL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/auth\\/menu\"}', '2018-10-09 05:47:01', '2018-10-09 05:47:01');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-09 05:47:02', '2018-10-09 05:47:02');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-09 05:47:05', '2018-10-09 05:47:05');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:47:13', '2018-10-09 05:47:13');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-key\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"_token\":\"puDZz6sSCPjktHDzkSWbD7yVEF2XtGrOo95VHqEL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/auth\\/menu\"}', '2018-10-09 05:49:20', '2018-10-09 05:49:20');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-09 05:49:21', '2018-10-09 05:49:21');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-09 05:49:23', '2018-10-09 05:49:23');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:49:58', '2018-10-09 05:49:58');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:50:03', '2018-10-09 05:50:03');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:50:43', '2018-10-09 05:50:43');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:50:47', '2018-10-09 05:50:47');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:50:51', '2018-10-09 05:50:51');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:51:07', '2018-10-09 05:51:07');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:51:10', '2018-10-09 05:51:10');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:51:15', '2018-10-09 05:51:15');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:51:20', '2018-10-09 05:51:20');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/auth/permissions/1', 'PUT', '127.0.0.1', '{\"slug\":\"*\",\"name\":\"\\u6240\\u6709\\u6743\\u9650\",\"http_method\":[null],\"http_path\":\"*\",\"_token\":\"puDZz6sSCPjktHDzkSWbD7yVEF2XtGrOo95VHqEL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/auth\\/permissions\"}', '2018-10-09 05:51:43', '2018-10-09 05:51:43');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-10-09 05:51:43', '2018-10-09 05:51:43');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:51:51', '2018-10-09 05:51:51');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:51:55', '2018-10-09 05:51:55');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/auth/permissions/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:52:10', '2018-10-09 05:52:10');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/auth/permissions/2', 'PUT', '127.0.0.1', '{\"slug\":\"\\u9996\\u9875\",\"name\":\"\\u9996\\u9875\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/\",\"_token\":\"puDZz6sSCPjktHDzkSWbD7yVEF2XtGrOo95VHqEL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/auth\\/permissions\"}', '2018-10-09 05:52:36', '2018-10-09 05:52:36');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-10-09 05:52:36', '2018-10-09 05:52:36');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/auth/permissions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:53:58', '2018-10-09 05:53:58');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/auth/permissions/3', 'PUT', '127.0.0.1', '{\"slug\":\"\\u767b\\u5f55\\u767b\\u51fa\",\"name\":\"\\u767b\\u5f55\\u767b\\u51fa\",\"http_method\":[null],\"http_path\":\"\\/auth\\/login\\r\\n\\/auth\\/logout\",\"_token\":\"puDZz6sSCPjktHDzkSWbD7yVEF2XtGrOo95VHqEL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/auth\\/permissions\"}', '2018-10-09 05:54:10', '2018-10-09 05:54:10');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-10-09 05:54:10', '2018-10-09 05:54:10');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/auth/permissions/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:54:17', '2018-10-09 05:54:17');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/auth/permissions/4', 'PUT', '127.0.0.1', '{\"slug\":\"\\u4e2a\\u4eba\\u4fe1\\u606f\\u8bbe\\u7f6e\",\"name\":\"\\u4e2a\\u4eba\\u4fe1\\u606f\\u8bbe\\u7f6e\",\"http_method\":[\"GET\",\"PUT\",null],\"http_path\":\"\\/auth\\/setting\",\"_token\":\"puDZz6sSCPjktHDzkSWbD7yVEF2XtGrOo95VHqEL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/auth\\/permissions\"}', '2018-10-09 05:54:39', '2018-10-09 05:54:39');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-10-09 05:54:40', '2018-10-09 05:54:40');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:54:45', '2018-10-09 05:54:45');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/auth/permissions/5', 'PUT', '127.0.0.1', '{\"slug\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"name\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/auth\\/roles\\r\\n\\/auth\\/permissions\\r\\n\\/auth\\/menu\\r\\n\\/auth\\/logs\",\"_token\":\"puDZz6sSCPjktHDzkSWbD7yVEF2XtGrOo95VHqEL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/auth\\/permissions\"}', '2018-10-09 05:55:48', '2018-10-09 05:55:48');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-10-09 05:55:48', '2018-10-09 05:55:48');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:55:55', '2018-10-09 05:55:55');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:55:59', '2018-10-09 05:55:59');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/auth/roles/1', 'PUT', '127.0.0.1', '{\"slug\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\",\"permissions\":[\"1\",null],\"_token\":\"puDZz6sSCPjktHDzkSWbD7yVEF2XtGrOo95VHqEL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/auth\\/roles\"}', '2018-10-09 05:56:16', '2018-10-09 05:56:16');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-10-09 05:56:16', '2018-10-09 05:56:16');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:56:19', '2018-10-09 05:56:19');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:56:28', '2018-10-09 05:56:28');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"\\u8d85\\u7ba1\",\"name\":\"\\u8d85\\u7ba1\",\"password\":\"$2y$10$F7iTnPgNkzb2FkiUgjTsHe7Nt1eizL5PXNf\\/ul7gGkLi3mLLUAI6C\",\"password_confirmation\":\"$2y$10$F7iTnPgNkzb2FkiUgjTsHe7Nt1eizL5PXNf\\/ul7gGkLi3mLLUAI6C\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"puDZz6sSCPjktHDzkSWbD7yVEF2XtGrOo95VHqEL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/auth\\/users\"}', '2018-10-09 05:56:44', '2018-10-09 05:56:44');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-10-09 05:56:45', '2018-10-09 05:56:45');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-10-09 05:56:49', '2018-10-09 05:56:49');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:57:35', '2018-10-09 05:57:35');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:57:37', '2018-10-09 05:57:37');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:57:50', '2018-10-09 05:57:50');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-09 05:57:55', '2018-10-09 05:57:55');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-10-14 02:47:36', '2018-10-14 02:47:36');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 02:47:43', '2018-10-14 02:47:43');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 02:47:47', '2018-10-14 02:47:47');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"admin\",\"name\":\"\\u8d85\\u7ba1\",\"password\":\"$2y$10$F7iTnPgNkzb2FkiUgjTsHe7Nt1eizL5PXNf\\/ul7gGkLi3mLLUAI6C\",\"password_confirmation\":\"$2y$10$F7iTnPgNkzb2FkiUgjTsHe7Nt1eizL5PXNf\\/ul7gGkLi3mLLUAI6C\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"oOPNAkHYcAkxEv98gjZQE4jar4JU6RiKJHpynm5D\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/auth\\/users\"}', '2018-10-14 02:47:53', '2018-10-14 02:47:53');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-10-14 02:47:53', '2018-10-14 02:47:53');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/user/user-base-info/index', 'GET', '127.0.0.1', '[]', '2018-10-14 03:15:26', '2018-10-14 03:15:26');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 06:31:01', '2018-10-14 06:31:01');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 06:51:16', '2018-10-14 06:51:16');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/user/user-base-info/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 06:51:18', '2018-10-14 06:51:18');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/user/user-base-info/create', 'GET', '127.0.0.1', '[]', '2018-10-14 06:52:41', '2018-10-14 06:52:41');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/user/user-base-info', 'POST', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"111111\",\"password_confirmation\":\"111111\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\"}', '2018-10-14 06:54:03', '2018-10-14 06:54:03');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/user/user-base-info/create', 'GET', '127.0.0.1', '[]', '2018-10-14 06:54:04', '2018-10-14 06:54:04');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/user/user-base-info', 'POST', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"111111\",\"password_confirmation\":\"111111\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\"}', '2018-10-14 06:55:08', '2018-10-14 06:55:08');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 06:55:09', '2018-10-14 06:55:09');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 07:09:02', '2018-10-14 07:09:02');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 07:12:40', '2018-10-14 07:12:40');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 07:14:02', '2018-10-14 07:14:02');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/user/user-base-info/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:14:04', '2018-10-14 07:14:04');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:14:07', '2018-10-14 07:14:07');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:15:51', '2018-10-14 07:15:51');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 07:16:48', '2018-10-14 07:16:48');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:17:14', '2018-10-14 07:17:14');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:17:16', '2018-10-14 07:17:16');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 07:18:49', '2018-10-14 07:18:49');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:18:57', '2018-10-14 07:18:57');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\"}', '2018-10-14 07:19:49', '2018-10-14 07:19:49');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-14 07:19:49', '2018-10-14 07:19:49');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u7528\\u6237\\u57fa\\u7840\\u4fe1\\u606f\",\"icon\":\"fa-database\",\"uri\":\"\\/user\\/user-base-info\",\"roles\":[\"1\",null],\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\"}', '2018-10-14 07:20:36', '2018-10-14 07:20:36');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-14 07:20:36', '2018-10-14 07:20:36');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-14 07:20:38', '2018-10-14 07:20:38');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:20:42', '2018-10-14 07:20:42');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-10-14 07:21:26', '2018-10-14 07:21:26');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:21:42', '2018-10-14 07:21:42');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/user\\/user-base-info\"}', '2018-10-14 07:21:50', '2018-10-14 07:21:50');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 07:21:51', '2018-10-14 07:21:51');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 07:22:46', '2018-10-14 07:22:46');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 07:22:46', '2018-10-14 07:22:46');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:22:50', '2018-10-14 07:22:50');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:22:52', '2018-10-14 07:22:52');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:23:53', '2018-10-14 07:23:53');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/user\\/user-base-info\"}', '2018-10-14 07:24:10', '2018-10-14 07:24:10');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/user\\/user-base-info\"}', '2018-10-14 07:26:04', '2018-10-14 07:26:04');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 07:26:04', '2018-10-14 07:26:04');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:26:13', '2018-10-14 07:26:13');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/user\\/user-base-info\"}', '2018-10-14 07:26:29', '2018-10-14 07:26:29');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 07:26:29', '2018-10-14 07:26:29');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:26:34', '2018-10-14 07:26:34');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:26:36', '2018-10-14 07:26:36');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:27:45', '2018-10-14 07:27:45');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:29:15', '2018-10-14 07:29:15');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 07:29:19', '2018-10-14 07:29:19');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:29:22', '2018-10-14 07:29:22');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 07:31:43', '2018-10-14 07:31:43');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/user\\/user-base-info\"}', '2018-10-14 07:31:57', '2018-10-14 07:31:57');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 07:31:58', '2018-10-14 07:31:58');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 07:32:48', '2018-10-14 07:32:48');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 07:32:48', '2018-10-14 07:32:48');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 07:33:21', '2018-10-14 07:33:21');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 07:33:21', '2018-10-14 07:33:21');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:33:25', '2018-10-14 07:33:25');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/user\\/user-base-info\"}', '2018-10-14 07:33:33', '2018-10-14 07:33:33');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 07:33:33', '2018-10-14 07:33:33');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 07:33:51', '2018-10-14 07:33:51');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 07:33:51', '2018-10-14 07:33:51');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:33:53', '2018-10-14 07:33:53');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/user\\/user-base-info\"}', '2018-10-14 07:34:17', '2018-10-14 07:34:17');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 07:34:18', '2018-10-14 07:34:18');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:34:31', '2018-10-14 07:34:31');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/user\\/user-base-info\"}', '2018-10-14 07:39:17', '2018-10-14 07:39:17');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 07:39:17', '2018-10-14 07:39:17');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 07:39:21', '2018-10-14 07:39:21');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 07:53:25', '2018-10-14 07:53:25');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 07:54:03', '2018-10-14 07:54:03');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 07:54:39', '2018-10-14 07:54:39');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 07:57:07', '2018-10-14 07:57:07');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 07:57:28', '2018-10-14 07:57:28');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 07:59:17', '2018-10-14 07:59:17');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:04:54', '2018-10-14 08:04:54');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 08:04:55', '2018-10-14 08:04:55');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:06:36', '2018-10-14 08:06:36');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 08:06:37', '2018-10-14 08:06:37');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:07:06', '2018-10-14 08:07:06');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:10:58', '2018-10-14 08:10:58');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:11:11', '2018-10-14 08:11:11');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:11:25', '2018-10-14 08:11:25');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:12:49', '2018-10-14 08:12:49');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:50', '2018-10-14 08:12:50');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:50', '2018-10-14 08:12:50');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:51', '2018-10-14 08:12:51');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:51', '2018-10-14 08:12:51');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:51', '2018-10-14 08:12:51');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:52', '2018-10-14 08:12:52');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:52', '2018-10-14 08:12:52');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:53', '2018-10-14 08:12:53');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:53', '2018-10-14 08:12:53');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:54', '2018-10-14 08:12:54');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:54', '2018-10-14 08:12:54');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:55', '2018-10-14 08:12:55');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:55', '2018-10-14 08:12:55');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:56', '2018-10-14 08:12:56');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:56', '2018-10-14 08:12:56');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:56', '2018-10-14 08:12:56');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:57', '2018-10-14 08:12:57');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:57', '2018-10-14 08:12:57');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:57', '2018-10-14 08:12:57');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:12:58', '2018-10-14 08:12:58');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:13:18', '2018-10-14 08:13:18');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:19', '2018-10-14 08:13:19');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:19', '2018-10-14 08:13:19');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:20', '2018-10-14 08:13:20');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:20', '2018-10-14 08:13:20');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:20', '2018-10-14 08:13:20');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:21', '2018-10-14 08:13:21');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:21', '2018-10-14 08:13:21');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:22', '2018-10-14 08:13:22');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:22', '2018-10-14 08:13:22');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:22', '2018-10-14 08:13:22');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:23', '2018-10-14 08:13:23');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:23', '2018-10-14 08:13:23');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:24', '2018-10-14 08:13:24');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:24', '2018-10-14 08:13:24');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:25', '2018-10-14 08:13:25');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:25', '2018-10-14 08:13:25');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:25', '2018-10-14 08:13:25');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:26', '2018-10-14 08:13:26');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:26', '2018-10-14 08:13:26');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:13:27', '2018-10-14 08:13:27');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:13:33', '2018-10-14 08:13:33');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:14:20', '2018-10-14 08:14:20');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:20', '2018-10-14 08:14:20');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:21', '2018-10-14 08:14:21');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:21', '2018-10-14 08:14:21');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:22', '2018-10-14 08:14:22');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:22', '2018-10-14 08:14:22');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:23', '2018-10-14 08:14:23');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:23', '2018-10-14 08:14:23');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:24', '2018-10-14 08:14:24');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:24', '2018-10-14 08:14:24');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:25', '2018-10-14 08:14:25');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:25', '2018-10-14 08:14:25');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:25', '2018-10-14 08:14:25');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:26', '2018-10-14 08:14:26');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:26', '2018-10-14 08:14:26');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:27', '2018-10-14 08:14:27');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:27', '2018-10-14 08:14:27');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:28', '2018-10-14 08:14:28');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:28', '2018-10-14 08:14:28');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:28', '2018-10-14 08:14:28');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:29', '2018-10-14 08:14:29');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:14:38', '2018-10-14 08:14:38');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:38', '2018-10-14 08:14:38');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:39', '2018-10-14 08:14:39');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:39', '2018-10-14 08:14:39');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:40', '2018-10-14 08:14:40');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:40', '2018-10-14 08:14:40');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:40', '2018-10-14 08:14:40');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:41', '2018-10-14 08:14:41');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:41', '2018-10-14 08:14:41');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:42', '2018-10-14 08:14:42');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:42', '2018-10-14 08:14:42');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:42', '2018-10-14 08:14:42');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:43', '2018-10-14 08:14:43');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:43', '2018-10-14 08:14:43');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:44', '2018-10-14 08:14:44');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:44', '2018-10-14 08:14:44');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:44', '2018-10-14 08:14:44');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:45', '2018-10-14 08:14:45');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:45', '2018-10-14 08:14:45');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:46', '2018-10-14 08:14:46');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:46', '2018-10-14 08:14:46');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:14:49', '2018-10-14 08:14:49');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:49', '2018-10-14 08:14:49');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:50', '2018-10-14 08:14:50');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:50', '2018-10-14 08:14:50');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:51', '2018-10-14 08:14:51');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:51', '2018-10-14 08:14:51');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:51', '2018-10-14 08:14:51');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:52', '2018-10-14 08:14:52');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:52', '2018-10-14 08:14:52');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:53', '2018-10-14 08:14:53');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:54', '2018-10-14 08:14:54');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:54', '2018-10-14 08:14:54');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:54', '2018-10-14 08:14:54');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:55', '2018-10-14 08:14:55');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:55', '2018-10-14 08:14:55');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:56', '2018-10-14 08:14:56');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:56', '2018-10-14 08:14:56');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:57', '2018-10-14 08:14:57');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:57', '2018-10-14 08:14:57');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:57', '2018-10-14 08:14:57');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:14:58', '2018-10-14 08:14:58');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:16:31', '2018-10-14 08:16:31');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:32', '2018-10-14 08:16:32');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:32', '2018-10-14 08:16:32');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:33', '2018-10-14 08:16:33');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:33', '2018-10-14 08:16:33');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:34', '2018-10-14 08:16:34');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:34', '2018-10-14 08:16:34');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:34', '2018-10-14 08:16:34');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:35', '2018-10-14 08:16:35');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:35', '2018-10-14 08:16:35');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:36', '2018-10-14 08:16:36');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:36', '2018-10-14 08:16:36');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:37', '2018-10-14 08:16:37');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:37', '2018-10-14 08:16:37');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:37', '2018-10-14 08:16:37');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:38', '2018-10-14 08:16:38');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:38', '2018-10-14 08:16:38');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:39', '2018-10-14 08:16:39');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:39', '2018-10-14 08:16:39');
INSERT INTO `admin_operation_log` VALUES ('304', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:40', '2018-10-14 08:16:40');
INSERT INTO `admin_operation_log` VALUES ('305', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:16:40', '2018-10-14 08:16:40');
INSERT INTO `admin_operation_log` VALUES ('306', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:16:47', '2018-10-14 08:16:47');
INSERT INTO `admin_operation_log` VALUES ('307', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:17:08', '2018-10-14 08:17:08');
INSERT INTO `admin_operation_log` VALUES ('308', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:17:10', '2018-10-14 08:17:10');
INSERT INTO `admin_operation_log` VALUES ('309', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:17:13', '2018-10-14 08:17:13');
INSERT INTO `admin_operation_log` VALUES ('310', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:17:32', '2018-10-14 08:17:32');
INSERT INTO `admin_operation_log` VALUES ('311', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:17:32', '2018-10-14 08:17:32');
INSERT INTO `admin_operation_log` VALUES ('312', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:17:49', '2018-10-14 08:17:49');
INSERT INTO `admin_operation_log` VALUES ('313', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/user\\/user-base-info\"}', '2018-10-14 08:17:55', '2018-10-14 08:17:55');
INSERT INTO `admin_operation_log` VALUES ('314', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:17:55', '2018-10-14 08:17:55');
INSERT INTO `admin_operation_log` VALUES ('315', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:17:59', '2018-10-14 08:17:59');
INSERT INTO `admin_operation_log` VALUES ('316', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/user\\/user-base-info\"}', '2018-10-14 08:18:52', '2018-10-14 08:18:52');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:18:52', '2018-10-14 08:18:52');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:18:54', '2018-10-14 08:18:54');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 08:23:07', '2018-10-14 08:23:07');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:23:21', '2018-10-14 08:23:21');
INSERT INTO `admin_operation_log` VALUES ('321', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 08:23:26', '2018-10-14 08:23:26');
INSERT INTO `admin_operation_log` VALUES ('322', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"admin\",\"name\":\"\\u8d85\\u7ba1\",\"password\":\"$2y$10$F7iTnPgNkzb2FkiUgjTsHe7Nt1eizL5PXNf\\/ul7gGkLi3mLLUAI6C\",\"password_confirmation\":\"$2y$10$F7iTnPgNkzb2FkiUgjTsHe7Nt1eizL5PXNf\\/ul7gGkLi3mLLUAI6C\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:23:45', '2018-10-14 08:23:45');
INSERT INTO `admin_operation_log` VALUES ('323', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-10-14 08:23:45', '2018-10-14 08:23:45');
INSERT INTO `admin_operation_log` VALUES ('324', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:23:47', '2018-10-14 08:23:47');
INSERT INTO `admin_operation_log` VALUES ('325', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 08:23:56', '2018-10-14 08:23:56');
INSERT INTO `admin_operation_log` VALUES ('326', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 08:24:25', '2018-10-14 08:24:25');
INSERT INTO `admin_operation_log` VALUES ('327', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 08:28:34', '2018-10-14 08:28:34');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:28:42', '2018-10-14 08:28:42');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '[]', '2018-10-14 08:30:34', '2018-10-14 08:30:34');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:30:44', '2018-10-14 08:30:44');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:30:48', '2018-10-14 08:30:48');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/user\\/user-base-info\"}', '2018-10-14 08:30:57', '2018-10-14 08:30:57');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/user\\/user-base-info\"}', '2018-10-14 08:33:29', '2018-10-14 08:33:29');
INSERT INTO `admin_operation_log` VALUES ('334', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/user\\/user-base-info\"}', '2018-10-14 08:33:35', '2018-10-14 08:33:35');
INSERT INTO `admin_operation_log` VALUES ('335', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:33:36', '2018-10-14 08:33:36');
INSERT INTO `admin_operation_log` VALUES ('336', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:33:39', '2018-10-14 08:33:39');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"admin\",\"name\":\"\\u8d85\\u7ba1\",\"password\":\"$2y$10$F7iTnPgNkzb2FkiUgjTsHe7Nt1eizL5PXNf\\/ul7gGkLi3mLLUAI6C\",\"password_confirmation\":\"$2y$10$F7iTnPgNkzb2FkiUgjTsHe7Nt1eizL5PXNf\\/ul7gGkLi3mLLUAI6C\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:36:51', '2018-10-14 08:36:51');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-10-14 08:36:51', '2018-10-14 08:36:51');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-10-14 08:36:55', '2018-10-14 08:36:55');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-10-14 08:37:57', '2018-10-14 08:37:57');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-10-14 08:38:12', '2018-10-14 08:38:12');
INSERT INTO `admin_operation_log` VALUES ('342', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 08:38:38', '2018-10-14 08:38:38');
INSERT INTO `admin_operation_log` VALUES ('343', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 08:39:14', '2018-10-14 08:39:14');
INSERT INTO `admin_operation_log` VALUES ('344', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 08:39:41', '2018-10-14 08:39:41');
INSERT INTO `admin_operation_log` VALUES ('345', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 08:40:06', '2018-10-14 08:40:06');
INSERT INTO `admin_operation_log` VALUES ('346', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 08:40:20', '2018-10-14 08:40:20');
INSERT INTO `admin_operation_log` VALUES ('347', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\"}', '2018-10-14 08:41:22', '2018-10-14 08:41:22');
INSERT INTO `admin_operation_log` VALUES ('348', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:41:23', '2018-10-14 08:41:23');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin/user/user-base-info/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:41:27', '2018-10-14 08:41:27');
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:41:28', '2018-10-14 08:41:28');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:41:30', '2018-10-14 08:41:30');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:41:36', '2018-10-14 08:41:36');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:45:41', '2018-10-14 08:45:41');
INSERT INTO `admin_operation_log` VALUES ('354', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:41', '2018-10-14 08:45:41');
INSERT INTO `admin_operation_log` VALUES ('355', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:42', '2018-10-14 08:45:42');
INSERT INTO `admin_operation_log` VALUES ('356', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:42', '2018-10-14 08:45:42');
INSERT INTO `admin_operation_log` VALUES ('357', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:42', '2018-10-14 08:45:42');
INSERT INTO `admin_operation_log` VALUES ('358', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:43', '2018-10-14 08:45:43');
INSERT INTO `admin_operation_log` VALUES ('359', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:43', '2018-10-14 08:45:43');
INSERT INTO `admin_operation_log` VALUES ('360', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:43', '2018-10-14 08:45:43');
INSERT INTO `admin_operation_log` VALUES ('361', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:44', '2018-10-14 08:45:44');
INSERT INTO `admin_operation_log` VALUES ('362', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:44', '2018-10-14 08:45:44');
INSERT INTO `admin_operation_log` VALUES ('363', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:44', '2018-10-14 08:45:44');
INSERT INTO `admin_operation_log` VALUES ('364', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:45', '2018-10-14 08:45:45');
INSERT INTO `admin_operation_log` VALUES ('365', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:45', '2018-10-14 08:45:45');
INSERT INTO `admin_operation_log` VALUES ('366', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:45', '2018-10-14 08:45:45');
INSERT INTO `admin_operation_log` VALUES ('367', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:46', '2018-10-14 08:45:46');
INSERT INTO `admin_operation_log` VALUES ('368', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:46', '2018-10-14 08:45:46');
INSERT INTO `admin_operation_log` VALUES ('369', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:46', '2018-10-14 08:45:46');
INSERT INTO `admin_operation_log` VALUES ('370', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:46', '2018-10-14 08:45:46');
INSERT INTO `admin_operation_log` VALUES ('371', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:47', '2018-10-14 08:45:47');
INSERT INTO `admin_operation_log` VALUES ('372', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:47', '2018-10-14 08:45:47');
INSERT INTO `admin_operation_log` VALUES ('373', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:47', '2018-10-14 08:45:47');
INSERT INTO `admin_operation_log` VALUES ('374', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 08:45:48', '2018-10-14 08:45:48');
INSERT INTO `admin_operation_log` VALUES ('375', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 08:46:08', '2018-10-14 08:46:08');
INSERT INTO `admin_operation_log` VALUES ('376', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-10-14 08:46:30', '2018-10-14 08:46:30');
INSERT INTO `admin_operation_log` VALUES ('377', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:46:31', '2018-10-14 08:46:31');
INSERT INTO `admin_operation_log` VALUES ('378', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:46:33', '2018-10-14 08:46:33');
INSERT INTO `admin_operation_log` VALUES ('379', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:46:35', '2018-10-14 08:46:35');
INSERT INTO `admin_operation_log` VALUES ('380', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"admin\",\"name\":\"\\u8d85\\u7ba1\",\"password\":\"$2y$10$F7iTnPgNkzb2FkiUgjTsHe7Nt1eizL5PXNf\\/ul7gGkLi3mLLUAI6C\",\"password_confirmation\":\"$2y$10$F7iTnPgNkzb2FkiUgjTsHe7Nt1eizL5PXNf\\/ul7gGkLi3mLLUAI6C\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/auth\\/users\"}', '2018-10-14 08:46:41', '2018-10-14 08:46:41');
INSERT INTO `admin_operation_log` VALUES ('381', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-10-14 08:46:41', '2018-10-14 08:46:41');
INSERT INTO `admin_operation_log` VALUES ('382', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-10-14 08:46:43', '2018-10-14 08:46:43');
INSERT INTO `admin_operation_log` VALUES ('383', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:47:35', '2018-10-14 08:47:35');
INSERT INTO `admin_operation_log` VALUES ('384', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"admin\",\"name\":\"\\u8d85\\u7ba1\",\"password\":\"$2y$10$F7iTnPgNkzb2FkiUgjTsHe7Nt1eizL5PXNf\\/ul7gGkLi3mLLUAI6C\",\"password_confirmation\":\"$2y$10$F7iTnPgNkzb2FkiUgjTsHe7Nt1eizL5PXNf\\/ul7gGkLi3mLLUAI6C\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/auth\\/users\"}', '2018-10-14 08:47:40', '2018-10-14 08:47:40');
INSERT INTO `admin_operation_log` VALUES ('385', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-10-14 08:47:40', '2018-10-14 08:47:40');
INSERT INTO `admin_operation_log` VALUES ('386', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:47:43', '2018-10-14 08:47:43');
INSERT INTO `admin_operation_log` VALUES ('387', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 08:47:45', '2018-10-14 08:47:45');
INSERT INTO `admin_operation_log` VALUES ('388', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 08:48:28', '2018-10-14 08:48:28');
INSERT INTO `admin_operation_log` VALUES ('389', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-14 08:48:31', '2018-10-14 08:48:31');
INSERT INTO `admin_operation_log` VALUES ('390', '1', 'admin/user/user-base-info/1', 'PUT', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"password_confirmation\":\"$2y$10$zoximjAO.WJ3EYKdo58IUOVxceW8slkApINvovreL\\/BnTtQY\\/agse\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/user\\/user-base-info\"}', '2018-10-14 08:48:46', '2018-10-14 08:48:46');
INSERT INTO `admin_operation_log` VALUES ('391', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:48:47', '2018-10-14 08:48:47');
INSERT INTO `admin_operation_log` VALUES ('392', '1', 'admin/user/user-base-info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:48:49', '2018-10-14 08:48:49');
INSERT INTO `admin_operation_log` VALUES ('393', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:48:51', '2018-10-14 08:48:51');
INSERT INTO `admin_operation_log` VALUES ('394', '1', 'admin/user/user-base-info/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\"}', '2018-10-14 08:50:16', '2018-10-14 08:50:16');
INSERT INTO `admin_operation_log` VALUES ('395', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:50:16', '2018-10-14 08:50:16');
INSERT INTO `admin_operation_log` VALUES ('396', '1', 'admin/user/user-base-info/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:52:21', '2018-10-14 08:52:21');
INSERT INTO `admin_operation_log` VALUES ('397', '1', 'admin/user/user-base-info', 'POST', '127.0.0.1', '{\"nickname\":\"frontend_yfh\",\"name\":\"\\u6768\\u5bcc\\u704f\",\"email\":\"690828339@qq.com\",\"phone\":\"18227687927\",\"password\":\"111111\",\"password_confirmation\":\"111111\",\"_token\":\"5Mo7udNzJVfh7JNHzdBtiMojz1CF6fqQV5N1frGu\",\"_previous_\":\"http:\\/\\/www.community.com\\/admin\\/user\\/user-base-info\"}', '2018-10-14 08:52:40', '2018-10-14 08:52:40');
INSERT INTO `admin_operation_log` VALUES ('398', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:52:40', '2018-10-14 08:52:40');
INSERT INTO `admin_operation_log` VALUES ('399', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:53:01', '2018-10-14 08:53:01');
INSERT INTO `admin_operation_log` VALUES ('400', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2018-10-14 08:53:13', '2018-10-14 08:53:13');
INSERT INTO `admin_operation_log` VALUES ('401', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-14 08:53:27', '2018-10-14 08:53:27');
INSERT INTO `admin_operation_log` VALUES ('402', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2018-10-14 08:53:29', '2018-10-14 08:53:29');
INSERT INTO `admin_operation_log` VALUES ('403', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-14 08:57:21', '2018-10-14 08:57:21');
INSERT INTO `admin_operation_log` VALUES ('404', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-10-19 02:59:58', '2018-10-19 02:59:58');
INSERT INTO `admin_operation_log` VALUES ('405', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-19 03:00:02', '2018-10-19 03:00:02');
INSERT INTO `admin_operation_log` VALUES ('406', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-19 03:01:31', '2018-10-19 03:01:31');
INSERT INTO `admin_operation_log` VALUES ('407', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-19 03:01:48', '2018-10-19 03:01:48');
INSERT INTO `admin_operation_log` VALUES ('408', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-19 09:52:39', '2018-10-19 09:52:39');
INSERT INTO `admin_operation_log` VALUES ('409', '1', 'admin/user/user-base-info', 'GET', '127.0.0.1', '[]', '2018-10-19 10:18:08', '2018-10-19 10:18:08');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', '所有权限', '*', '', '*', null, '2018-10-09 05:51:43');
INSERT INTO `admin_permissions` VALUES ('2', '首页', '首页', 'GET', '/', null, '2018-10-09 05:52:36');
INSERT INTO `admin_permissions` VALUES ('3', '登录登出', '登录登出', '', '/auth/login\r\n/auth/logout', null, '2018-10-09 05:54:10');
INSERT INTO `admin_permissions` VALUES ('4', '个人信息设置', '个人信息设置', 'GET,PUT', '/auth/setting', null, '2018-10-09 05:54:39');
INSERT INTO `admin_permissions` VALUES ('5', '权限管理', '权限管理', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, '2018-10-09 05:55:48');

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', '超级管理员', '超级管理员', '2018-10-08 14:42:27', '2018-10-09 05:56:16');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '8', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '9', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$F7iTnPgNkzb2FkiUgjTsHe7Nt1eizL5PXNf/ul7gGkLi3mLLUAI6C', '超管', '', null, '2018-10-08 14:42:27', '2018-10-14 08:47:40');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for assets
-- ----------------------------
DROP TABLE IF EXISTS `assets`;
CREATE TABLE `assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `imcome` decimal(10,0) unsigned NOT NULL DEFAULT '0' COMMENT '总收入',
  `expenditure` decimal(10,0) unsigned NOT NULL DEFAULT '0' COMMENT '总支出',
  `available` decimal(10,0) unsigned NOT NULL DEFAULT '0' COMMENT '可用资金',
  `frozen` decimal(10,0) unsigned NOT NULL DEFAULT '0' COMMENT '冻结资金',
  `extraction` decimal(10,0) unsigned NOT NULL DEFAULT '0' COMMENT '提现资金',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户资产表';

-- ----------------------------
-- Records of assets
-- ----------------------------

-- ----------------------------
-- Table structure for assets_log
-- ----------------------------
DROP TABLE IF EXISTS `assets_log`;
CREATE TABLE `assets_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `type` smallint(5) unsigned NOT NULL COMMENT '资产日志类型',
  `tradelogid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '引起资产变化的订单id',
  `price` decimal(10,2) NOT NULL COMMENT '变化的资金额度',
  `note` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `user_note` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='资产日志表';

-- ----------------------------
-- Records of assets_log
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for recharge
-- ----------------------------
DROP TABLE IF EXISTS `recharge`;
CREATE TABLE `recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `tradelogid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '订单id',
  `serial_num` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '流水号',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '充值状态（0：未确认，1：成功，2：失败，3：已退款）',
  `pay_platform` smallint(5) unsigned NOT NULL COMMENT '支付平台',
  `refund_date` datetime NOT NULL COMMENT '退款时间',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial_num` (`serial_num`) USING BTREE COMMENT '流水号必须唯一'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='第三方充值表';

-- ----------------------------
-- Records of recharge
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_nickname_unique` (`nickname`) USING BTREE,
  UNIQUE KEY `users_phone_unique` (`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('2', 'frontend_yfh', '杨富灏', '690828339@qq.com', '18227687927', 'images/48ee3a58ff8511e58f92a088785c95dc.jpeg', '$2y$10$tCCJFwAs/tyqxWHSD37ecu6fItvVEOg7mvwHYvpEWQX/fXJ7IHFBe', null, '2018-10-14 08:52:40', '2018-10-14 08:52:40');
