/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : community

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-10-09 18:32:21
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `admin_users` VALUES ('1', '超管', '$2y$10$F7iTnPgNkzb2FkiUgjTsHe7Nt1eizL5PXNf/ul7gGkLi3mLLUAI6C', '超管', null, null, '2018-10-08 14:42:27', '2018-10-09 05:56:44');

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
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_nickname_unique` (`nickname`) USING BTREE,
  UNIQUE KEY `users_phone_unique` (`phone`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
