/*
 Navicat Premium Data Transfer

 Source Server         : 47.100.101.79
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : 47.100.101.79:53306
 Source Schema         : lv6

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 12/12/2019 10:51:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ga_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `ga_admin_menu`;
CREATE TABLE `ga_admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ga_admin_menu
-- ----------------------------
INSERT INTO `ga_admin_menu` VALUES (1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL);
INSERT INTO `ga_admin_menu` VALUES (2, 0, 5, '权限管理', 'fa-tasks', NULL, NULL, NULL, '2019-12-10 08:22:50');
INSERT INTO `ga_admin_menu` VALUES (3, 2, 6, '管理员', 'fa-users', 'auth/users', NULL, NULL, '2019-12-10 08:22:50');
INSERT INTO `ga_admin_menu` VALUES (4, 2, 7, '角色', 'fa-user', 'auth/roles', NULL, NULL, '2019-12-10 08:22:50');
INSERT INTO `ga_admin_menu` VALUES (5, 2, 8, '权限', 'fa-ban', 'auth/permissions', NULL, NULL, '2019-12-10 08:22:50');
INSERT INTO `ga_admin_menu` VALUES (6, 2, 9, '菜单', 'fa-bars', 'auth/menu', NULL, NULL, '2019-12-10 08:22:50');
INSERT INTO `ga_admin_menu` VALUES (7, 2, 10, '日志', 'fa-history', 'auth/logs', NULL, NULL, '2019-12-10 08:22:50');
INSERT INTO `ga_admin_menu` VALUES (8, 0, 2, '用户管理', 'fa-user', NULL, NULL, '2019-12-10 02:23:02', '2019-12-10 08:22:49');
INSERT INTO `ga_admin_menu` VALUES (9, 8, 3, '用户', 'fa-users', 'users', NULL, '2019-12-10 02:24:20', '2019-12-10 08:22:49');
INSERT INTO `ga_admin_menu` VALUES (10, 0, 4, '配置管理', 'fa-cog', 'configs', NULL, '2019-12-10 02:37:06', '2019-12-10 08:22:49');

-- ----------------------------
-- Table structure for ga_admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `ga_admin_operation_log`;
CREATE TABLE `ga_admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ga_admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 590 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ga_admin_operation_log
-- ----------------------------
INSERT INTO `ga_admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-12-10 01:42:21', '2019-12-10 01:42:21');
INSERT INTO `ga_admin_operation_log` VALUES (2, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:42:29', '2019-12-10 01:42:29');
INSERT INTO `ga_admin_operation_log` VALUES (3, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:42:32', '2019-12-10 01:42:32');
INSERT INTO `ga_admin_operation_log` VALUES (4, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:42:35', '2019-12-10 01:42:35');
INSERT INTO `ga_admin_operation_log` VALUES (5, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:42:38', '2019-12-10 01:42:38');
INSERT INTO `ga_admin_operation_log` VALUES (6, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:43:14', '2019-12-10 01:43:14');
INSERT INTO `ga_admin_operation_log` VALUES (7, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:43:18', '2019-12-10 01:43:18');
INSERT INTO `ga_admin_operation_log` VALUES (8, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-12-10 01:44:33', '2019-12-10 01:44:33');
INSERT INTO `ga_admin_operation_log` VALUES (9, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:44:39', '2019-12-10 01:44:39');
INSERT INTO `ga_admin_operation_log` VALUES (10, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:44:42', '2019-12-10 01:44:42');
INSERT INTO `ga_admin_operation_log` VALUES (11, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:45:16', '2019-12-10 01:45:16');
INSERT INTO `ga_admin_operation_log` VALUES (12, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:45:20', '2019-12-10 01:45:20');
INSERT INTO `ga_admin_operation_log` VALUES (13, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:47:37', '2019-12-10 01:47:37');
INSERT INTO `ga_admin_operation_log` VALUES (14, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:47:40', '2019-12-10 01:47:40');
INSERT INTO `ga_admin_operation_log` VALUES (15, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:47:49', '2019-12-10 01:47:49');
INSERT INTO `ga_admin_operation_log` VALUES (16, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"c8S0jBJq2ZQoqSATfNZhA2vOLzrFnaY9km9MzAeO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-12-10 01:48:02', '2019-12-10 01:48:02');
INSERT INTO `ga_admin_operation_log` VALUES (17, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 01:48:04', '2019-12-10 01:48:04');
INSERT INTO `ga_admin_operation_log` VALUES (18, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 01:48:10', '2019-12-10 01:48:10');
INSERT INTO `ga_admin_operation_log` VALUES (19, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:48:17', '2019-12-10 01:48:17');
INSERT INTO `ga_admin_operation_log` VALUES (20, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"c8S0jBJq2ZQoqSATfNZhA2vOLzrFnaY9km9MzAeO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-12-10 01:48:35', '2019-12-10 01:48:35');
INSERT INTO `ga_admin_operation_log` VALUES (21, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 01:48:37', '2019-12-10 01:48:37');
INSERT INTO `ga_admin_operation_log` VALUES (22, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:48:42', '2019-12-10 01:48:42');
INSERT INTO `ga_admin_operation_log` VALUES (23, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:48:45', '2019-12-10 01:48:45');
INSERT INTO `ga_admin_operation_log` VALUES (24, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:48:48', '2019-12-10 01:48:48');
INSERT INTO `ga_admin_operation_log` VALUES (25, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:48:51', '2019-12-10 01:48:51');
INSERT INTO `ga_admin_operation_log` VALUES (26, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:48:54', '2019-12-10 01:48:54');
INSERT INTO `ga_admin_operation_log` VALUES (27, 1, 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"c8S0jBJq2ZQoqSATfNZhA2vOLzrFnaY9km9MzAeO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-12-10 01:49:06', '2019-12-10 01:49:06');
INSERT INTO `ga_admin_operation_log` VALUES (28, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 01:49:08', '2019-12-10 01:49:08');
INSERT INTO `ga_admin_operation_log` VALUES (29, 1, 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:49:14', '2019-12-10 01:49:14');
INSERT INTO `ga_admin_operation_log` VALUES (30, 1, 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"c8S0jBJq2ZQoqSATfNZhA2vOLzrFnaY9km9MzAeO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-12-10 01:49:21', '2019-12-10 01:49:21');
INSERT INTO `ga_admin_operation_log` VALUES (31, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 01:49:24', '2019-12-10 01:49:24');
INSERT INTO `ga_admin_operation_log` VALUES (32, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:49:30', '2019-12-10 01:49:30');
INSERT INTO `ga_admin_operation_log` VALUES (33, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"c8S0jBJq2ZQoqSATfNZhA2vOLzrFnaY9km9MzAeO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-12-10 01:49:39', '2019-12-10 01:49:39');
INSERT INTO `ga_admin_operation_log` VALUES (34, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 01:49:42', '2019-12-10 01:49:42');
INSERT INTO `ga_admin_operation_log` VALUES (35, 1, 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:50:03', '2019-12-10 01:50:03');
INSERT INTO `ga_admin_operation_log` VALUES (36, 1, 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"c8S0jBJq2ZQoqSATfNZhA2vOLzrFnaY9km9MzAeO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-12-10 01:50:31', '2019-12-10 01:50:31');
INSERT INTO `ga_admin_operation_log` VALUES (37, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 01:50:33', '2019-12-10 01:50:33');
INSERT INTO `ga_admin_operation_log` VALUES (38, 1, 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:50:39', '2019-12-10 01:50:39');
INSERT INTO `ga_admin_operation_log` VALUES (39, 1, 'admin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"c8S0jBJq2ZQoqSATfNZhA2vOLzrFnaY9km9MzAeO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-12-10 01:50:50', '2019-12-10 01:50:50');
INSERT INTO `ga_admin_operation_log` VALUES (40, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 01:50:52', '2019-12-10 01:50:52');
INSERT INTO `ga_admin_operation_log` VALUES (41, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 01:51:10', '2019-12-10 01:51:10');
INSERT INTO `ga_admin_operation_log` VALUES (42, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:51:17', '2019-12-10 01:51:17');
INSERT INTO `ga_admin_operation_log` VALUES (43, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 01:51:28', '2019-12-10 01:51:28');
INSERT INTO `ga_admin_operation_log` VALUES (44, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-12-10 02:17:43', '2019-12-10 02:17:43');
INSERT INTO `ga_admin_operation_log` VALUES (45, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-12-10 02:19:00', '2019-12-10 02:19:00');
INSERT INTO `ga_admin_operation_log` VALUES (46, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:19:35', '2019-12-10 02:19:35');
INSERT INTO `ga_admin_operation_log` VALUES (47, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:19:39', '2019-12-10 02:19:39');
INSERT INTO `ga_admin_operation_log` VALUES (48, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:22:15', '2019-12-10 02:22:15');
INSERT INTO `ga_admin_operation_log` VALUES (49, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"ETQszYVhDpf8qogJUAJKOQWwEcsmuaeoMuUHMbNt\"}', '2019-12-10 02:23:01', '2019-12-10 02:23:01');
INSERT INTO `ga_admin_operation_log` VALUES (50, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 02:23:03', '2019-12-10 02:23:03');
INSERT INTO `ga_admin_operation_log` VALUES (51, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa-users\",\"uri\":\"admin\\/auth\\/user\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"ETQszYVhDpf8qogJUAJKOQWwEcsmuaeoMuUHMbNt\"}', '2019-12-10 02:24:19', '2019-12-10 02:24:19');
INSERT INTO `ga_admin_operation_log` VALUES (52, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 02:24:21', '2019-12-10 02:24:21');
INSERT INTO `ga_admin_operation_log` VALUES (53, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 02:24:26', '2019-12-10 02:24:26');
INSERT INTO `ga_admin_operation_log` VALUES (54, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:24:47', '2019-12-10 02:24:47');
INSERT INTO `ga_admin_operation_log` VALUES (55, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa-users\",\"uri\":\"auth\\/user\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"ETQszYVhDpf8qogJUAJKOQWwEcsmuaeoMuUHMbNt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-12-10 02:24:55', '2019-12-10 02:24:55');
INSERT INTO `ga_admin_operation_log` VALUES (56, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 02:24:57', '2019-12-10 02:24:57');
INSERT INTO `ga_admin_operation_log` VALUES (57, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 02:25:14', '2019-12-10 02:25:14');
INSERT INTO `ga_admin_operation_log` VALUES (58, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:31:13', '2019-12-10 02:31:13');
INSERT INTO `ga_admin_operation_log` VALUES (59, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:31:31', '2019-12-10 02:31:31');
INSERT INTO `ga_admin_operation_log` VALUES (60, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:31:34', '2019-12-10 02:31:34');
INSERT INTO `ga_admin_operation_log` VALUES (61, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:31:37', '2019-12-10 02:31:37');
INSERT INTO `ga_admin_operation_log` VALUES (62, 1, 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:31:44', '2019-12-10 02:31:44');
INSERT INTO `ga_admin_operation_log` VALUES (63, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:31:55', '2019-12-10 02:31:55');
INSERT INTO `ga_admin_operation_log` VALUES (64, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:32:09', '2019-12-10 02:32:09');
INSERT INTO `ga_admin_operation_log` VALUES (65, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"ETQszYVhDpf8qogJUAJKOQWwEcsmuaeoMuUHMbNt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-12-10 02:32:35', '2019-12-10 02:32:35');
INSERT INTO `ga_admin_operation_log` VALUES (66, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 02:32:38', '2019-12-10 02:32:38');
INSERT INTO `ga_admin_operation_log` VALUES (67, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:32:41', '2019-12-10 02:32:41');
INSERT INTO `ga_admin_operation_log` VALUES (68, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:32:45', '2019-12-10 02:32:45');
INSERT INTO `ga_admin_operation_log` VALUES (69, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:32:52', '2019-12-10 02:32:52');
INSERT INTO `ga_admin_operation_log` VALUES (70, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa-users\",\"uri\":\"auth\\/user\",\"roles\":[null],\"permission\":null,\"_token\":\"ETQszYVhDpf8qogJUAJKOQWwEcsmuaeoMuUHMbNt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-12-10 02:33:00', '2019-12-10 02:33:00');
INSERT INTO `ga_admin_operation_log` VALUES (71, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 02:33:03', '2019-12-10 02:33:03');
INSERT INTO `ga_admin_operation_log` VALUES (72, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 02:34:52', '2019-12-10 02:34:52');
INSERT INTO `ga_admin_operation_log` VALUES (73, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2019-12-10 02:35:20', '2019-12-10 02:35:20');
INSERT INTO `ga_admin_operation_log` VALUES (74, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:35:35', '2019-12-10 02:35:35');
INSERT INTO `ga_admin_operation_log` VALUES (75, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:35:38', '2019-12-10 02:35:38');
INSERT INTO `ga_admin_operation_log` VALUES (76, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:35:49', '2019-12-10 02:35:49');
INSERT INTO `ga_admin_operation_log` VALUES (77, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa-users\",\"uri\":\"users\",\"roles\":[null],\"permission\":null,\"_token\":\"ETQszYVhDpf8qogJUAJKOQWwEcsmuaeoMuUHMbNt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-12-10 02:35:59', '2019-12-10 02:35:59');
INSERT INTO `ga_admin_operation_log` VALUES (78, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 02:36:01', '2019-12-10 02:36:01');
INSERT INTO `ga_admin_operation_log` VALUES (79, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u914d\\u7f6e\\u7ba1\\u7406\",\"icon\":\"fa-cog\",\"uri\":\"configs\",\"roles\":[null],\"permission\":null,\"_token\":\"ETQszYVhDpf8qogJUAJKOQWwEcsmuaeoMuUHMbNt\"}', '2019-12-10 02:37:05', '2019-12-10 02:37:05');
INSERT INTO `ga_admin_operation_log` VALUES (80, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 02:37:08', '2019-12-10 02:37:08');
INSERT INTO `ga_admin_operation_log` VALUES (81, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-12-10 02:37:22', '2019-12-10 02:37:22');
INSERT INTO `ga_admin_operation_log` VALUES (82, 1, 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:37:30', '2019-12-10 02:37:30');
INSERT INTO `ga_admin_operation_log` VALUES (83, 1, 'admin', 'GET', '192.168.1.6', '[]', '2019-12-10 02:56:11', '2019-12-10 02:56:11');
INSERT INTO `ga_admin_operation_log` VALUES (84, 1, 'admin', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:56:15', '2019-12-10 02:56:15');
INSERT INTO `ga_admin_operation_log` VALUES (85, 1, 'admin/auth/users', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:56:18', '2019-12-10 02:56:18');
INSERT INTO `ga_admin_operation_log` VALUES (86, 1, 'admin/auth/roles', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:56:20', '2019-12-10 02:56:20');
INSERT INTO `ga_admin_operation_log` VALUES (87, 1, 'admin/users', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:56:26', '2019-12-10 02:56:26');
INSERT INTO `ga_admin_operation_log` VALUES (88, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 02:57:55', '2019-12-10 02:57:55');
INSERT INTO `ga_admin_operation_log` VALUES (89, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 02:58:01', '2019-12-10 02:58:01');
INSERT INTO `ga_admin_operation_log` VALUES (90, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 02:58:07', '2019-12-10 02:58:07');
INSERT INTO `ga_admin_operation_log` VALUES (91, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 02:58:43', '2019-12-10 02:58:43');
INSERT INTO `ga_admin_operation_log` VALUES (92, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:58:48', '2019-12-10 02:58:48');
INSERT INTO `ga_admin_operation_log` VALUES (93, 1, 'admin/users', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 02:58:49', '2019-12-10 02:58:49');
INSERT INTO `ga_admin_operation_log` VALUES (94, 1, 'admin/configs', 'GET', '127.0.0.1', '[]', '2019-12-10 02:59:05', '2019-12-10 02:59:05');
INSERT INTO `ga_admin_operation_log` VALUES (95, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 02:59:50', '2019-12-10 02:59:50');
INSERT INTO `ga_admin_operation_log` VALUES (96, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:00:03', '2019-12-10 03:00:03');
INSERT INTO `ga_admin_operation_log` VALUES (97, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:00:37', '2019-12-10 03:00:37');
INSERT INTO `ga_admin_operation_log` VALUES (98, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:01:18', '2019-12-10 03:01:18');
INSERT INTO `ga_admin_operation_log` VALUES (99, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:01:37', '2019-12-10 03:01:37');
INSERT INTO `ga_admin_operation_log` VALUES (100, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:01:40', '2019-12-10 03:01:40');
INSERT INTO `ga_admin_operation_log` VALUES (101, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:03:39', '2019-12-10 03:03:39');
INSERT INTO `ga_admin_operation_log` VALUES (102, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:03:53', '2019-12-10 03:03:53');
INSERT INTO `ga_admin_operation_log` VALUES (103, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:05:05', '2019-12-10 03:05:05');
INSERT INTO `ga_admin_operation_log` VALUES (104, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:05:38', '2019-12-10 03:05:38');
INSERT INTO `ga_admin_operation_log` VALUES (105, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:06:47', '2019-12-10 03:06:47');
INSERT INTO `ga_admin_operation_log` VALUES (106, 1, 'admin/users', 'GET', '192.168.1.6', '{\"_columns_\":\"created_at,gender,id,joinip,mobile,status\",\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:07:04', '2019-12-10 03:07:04');
INSERT INTO `ga_admin_operation_log` VALUES (107, 1, 'admin/users', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:07:16', '2019-12-10 03:07:16');
INSERT INTO `ga_admin_operation_log` VALUES (108, 1, 'admin/users', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\",\"id\":\"2\"}', '2019-12-10 03:08:14', '2019-12-10 03:08:14');
INSERT INTO `ga_admin_operation_log` VALUES (109, 1, 'admin/users', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\",\"id\":null}', '2019-12-10 03:08:19', '2019-12-10 03:08:19');
INSERT INTO `ga_admin_operation_log` VALUES (110, 1, 'admin/users', 'GET', '192.168.1.6', '{\"id\":null}', '2019-12-10 03:12:33', '2019-12-10 03:12:33');
INSERT INTO `ga_admin_operation_log` VALUES (111, 1, 'admin/users', 'GET', '192.168.1.6', '{\"id\":null}', '2019-12-10 03:13:00', '2019-12-10 03:13:00');
INSERT INTO `ga_admin_operation_log` VALUES (112, 1, 'admin/users', 'GET', '192.168.1.6', '{\"id\":null}', '2019-12-10 03:13:56', '2019-12-10 03:13:56');
INSERT INTO `ga_admin_operation_log` VALUES (113, 1, 'admin/users', 'GET', '192.168.1.6', '{\"id\":null}', '2019-12-10 03:14:13', '2019-12-10 03:14:13');
INSERT INTO `ga_admin_operation_log` VALUES (114, 1, 'admin/users', 'GET', '192.168.1.6', '{\"id\":null}', '2019-12-10 03:15:17', '2019-12-10 03:15:17');
INSERT INTO `ga_admin_operation_log` VALUES (115, 1, 'admin/users', 'GET', '192.168.1.6', '{\"id\":null}', '2019-12-10 03:15:52', '2019-12-10 03:15:52');
INSERT INTO `ga_admin_operation_log` VALUES (116, 1, 'admin/users', 'GET', '192.168.1.6', '{\"id\":null}', '2019-12-10 03:17:03', '2019-12-10 03:17:03');
INSERT INTO `ga_admin_operation_log` VALUES (117, 1, 'admin/users', 'GET', '192.168.1.6', '{\"id\":null}', '2019-12-10 03:17:07', '2019-12-10 03:17:07');
INSERT INTO `ga_admin_operation_log` VALUES (118, 1, 'admin/users', 'GET', '192.168.1.6', '{\"id\":null}', '2019-12-10 03:17:15', '2019-12-10 03:17:15');
INSERT INTO `ga_admin_operation_log` VALUES (119, 1, 'admin/users', 'GET', '192.168.1.6', '{\"id\":null}', '2019-12-10 03:17:40', '2019-12-10 03:17:40');
INSERT INTO `ga_admin_operation_log` VALUES (120, 1, 'admin/users', 'GET', '192.168.1.6', '{\"id\":null}', '2019-12-10 03:18:18', '2019-12-10 03:18:18');
INSERT INTO `ga_admin_operation_log` VALUES (121, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:18:28', '2019-12-10 03:18:28');
INSERT INTO `ga_admin_operation_log` VALUES (122, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:19:15', '2019-12-10 03:19:15');
INSERT INTO `ga_admin_operation_log` VALUES (123, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:19:46', '2019-12-10 03:19:46');
INSERT INTO `ga_admin_operation_log` VALUES (124, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:20:32', '2019-12-10 03:20:32');
INSERT INTO `ga_admin_operation_log` VALUES (125, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:20:55', '2019-12-10 03:20:55');
INSERT INTO `ga_admin_operation_log` VALUES (126, 1, 'admin/users', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:21:25', '2019-12-10 03:21:25');
INSERT INTO `ga_admin_operation_log` VALUES (127, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:21:31', '2019-12-10 03:21:31');
INSERT INTO `ga_admin_operation_log` VALUES (128, 1, 'admin/users/1', 'PUT', '192.168.1.6', '{\"name\":\"user\",\"email\":\"user@qq.com\",\"email_verified_at\":\"2019-12-10 03:21:32\",\"password\":null,\"remember_token\":null,\"mobile\":\"0\",\"gender\":\"off\",\"joinip\":null,\"status\":\"on\",\"_token\":\"LTvWFka1q9On3nkuFMbtlakzVJ2TdddonbOCqnl7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.1.200:8000\\/admin\\/users\"}', '2019-12-10 03:21:39', '2019-12-10 03:21:39');
INSERT INTO `ga_admin_operation_log` VALUES (129, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:21:41', '2019-12-10 03:21:41');
INSERT INTO `ga_admin_operation_log` VALUES (130, 1, 'admin/users/1', 'PUT', '192.168.1.6', '{\"name\":\"user\",\"email\":\"user@qq.com\",\"email_verified_at\":\"2019-12-10 03:21:32\",\"password\":null,\"remember_token\":null,\"mobile\":\"0\",\"gender\":\"off\",\"joinip\":null,\"status\":\"on\",\"_token\":\"LTvWFka1q9On3nkuFMbtlakzVJ2TdddonbOCqnl7\",\"_method\":\"PUT\"}', '2019-12-10 03:22:01', '2019-12-10 03:22:01');
INSERT INTO `ga_admin_operation_log` VALUES (131, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:22:03', '2019-12-10 03:22:03');
INSERT INTO `ga_admin_operation_log` VALUES (132, 1, 'admin/users/1', 'PUT', '192.168.1.6', '{\"name\":\"user\",\"email\":\"user@qq.com\",\"email_verified_at\":\"2019-12-10 03:21:32\",\"password\":null,\"remember_token\":null,\"mobile\":\"0\",\"gender\":\"off\",\"joinip\":null,\"status\":\"on\",\"_token\":\"LTvWFka1q9On3nkuFMbtlakzVJ2TdddonbOCqnl7\",\"_method\":\"PUT\"}', '2019-12-10 03:22:16', '2019-12-10 03:22:16');
INSERT INTO `ga_admin_operation_log` VALUES (133, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:22:18', '2019-12-10 03:22:18');
INSERT INTO `ga_admin_operation_log` VALUES (134, 1, 'admin/users/1', 'PUT', '192.168.1.6', '{\"name\":\"user\",\"email\":\"user@qq.com\",\"email_verified_at\":\"2019-12-10 03:21:32\",\"password\":\"123456\",\"remember_token\":null,\"mobile\":\"0\",\"gender\":\"off\",\"joinip\":null,\"status\":\"on\",\"_token\":\"LTvWFka1q9On3nkuFMbtlakzVJ2TdddonbOCqnl7\",\"_method\":\"PUT\"}', '2019-12-10 03:23:20', '2019-12-10 03:23:20');
INSERT INTO `ga_admin_operation_log` VALUES (135, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:23:21', '2019-12-10 03:23:21');
INSERT INTO `ga_admin_operation_log` VALUES (136, 1, 'admin/users/1', 'PUT', '192.168.1.6', '{\"name\":\"user\",\"email\":\"user@qq.com\",\"email_verified_at\":\"2019-12-10 03:21:32\",\"password\":\"123456\",\"remember_token\":null,\"mobile\":\"0\",\"gender\":\"off\",\"joinip\":\"127.0.0.1\",\"status\":\"on\",\"_token\":\"LTvWFka1q9On3nkuFMbtlakzVJ2TdddonbOCqnl7\",\"_method\":\"PUT\"}', '2019-12-10 03:23:38', '2019-12-10 03:23:38');
INSERT INTO `ga_admin_operation_log` VALUES (137, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:23:39', '2019-12-10 03:23:39');
INSERT INTO `ga_admin_operation_log` VALUES (138, 1, 'admin/users/1', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:23:45', '2019-12-10 03:23:45');
INSERT INTO `ga_admin_operation_log` VALUES (139, 1, 'admin/users', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:24:08', '2019-12-10 03:24:08');
INSERT INTO `ga_admin_operation_log` VALUES (140, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:24:18', '2019-12-10 03:24:18');
INSERT INTO `ga_admin_operation_log` VALUES (141, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:24:55', '2019-12-10 03:24:55');
INSERT INTO `ga_admin_operation_log` VALUES (142, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:28:47', '2019-12-10 03:28:47');
INSERT INTO `ga_admin_operation_log` VALUES (143, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:28:50', '2019-12-10 03:28:50');
INSERT INTO `ga_admin_operation_log` VALUES (144, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:29:29', '2019-12-10 03:29:29');
INSERT INTO `ga_admin_operation_log` VALUES (145, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:30:14', '2019-12-10 03:30:14');
INSERT INTO `ga_admin_operation_log` VALUES (146, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:31:13', '2019-12-10 03:31:13');
INSERT INTO `ga_admin_operation_log` VALUES (147, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:32:19', '2019-12-10 03:32:19');
INSERT INTO `ga_admin_operation_log` VALUES (148, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:33:26', '2019-12-10 03:33:26');
INSERT INTO `ga_admin_operation_log` VALUES (149, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:34:45', '2019-12-10 03:34:45');
INSERT INTO `ga_admin_operation_log` VALUES (150, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:35:36', '2019-12-10 03:35:36');
INSERT INTO `ga_admin_operation_log` VALUES (151, 1, 'admin/users/1', 'PUT', '192.168.1.6', '{\"name\":\"user\",\"email\":\"user@qq.com\",\"mobile\":\"161\",\"gender\":\"0\",\"joinip\":\"127.0.0.1\",\"status\":\"1\",\"_token\":\"LTvWFka1q9On3nkuFMbtlakzVJ2TdddonbOCqnl7\",\"_method\":\"PUT\"}', '2019-12-10 03:35:46', '2019-12-10 03:35:46');
INSERT INTO `ga_admin_operation_log` VALUES (152, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:35:47', '2019-12-10 03:35:47');
INSERT INTO `ga_admin_operation_log` VALUES (153, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:35:53', '2019-12-10 03:35:53');
INSERT INTO `ga_admin_operation_log` VALUES (154, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:36:38', '2019-12-10 03:36:38');
INSERT INTO `ga_admin_operation_log` VALUES (155, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:39:08', '2019-12-10 03:39:08');
INSERT INTO `ga_admin_operation_log` VALUES (156, 1, 'admin/users/1', 'PUT', '192.168.1.6', '{\"name\":\"user\",\"email\":\"user@qq.com\",\"password\":\"123456\",\"mobile\":\"161\",\"gender\":\"0\",\"joinip\":\"127.0.0.1\",\"status\":\"1\",\"_token\":\"LTvWFka1q9On3nkuFMbtlakzVJ2TdddonbOCqnl7\",\"_method\":\"PUT\"}', '2019-12-10 03:39:14', '2019-12-10 03:39:14');
INSERT INTO `ga_admin_operation_log` VALUES (157, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:39:15', '2019-12-10 03:39:15');
INSERT INTO `ga_admin_operation_log` VALUES (158, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:39:26', '2019-12-10 03:39:26');
INSERT INTO `ga_admin_operation_log` VALUES (159, 1, 'admin/users/1', 'PUT', '192.168.1.6', '{\"name\":\"user\",\"email\":\"user@qq.com\",\"password\":\"123456\",\"mobile\":\"161\",\"gender\":\"0\",\"joinip\":\"127.0.0.1\",\"status\":\"1\",\"_token\":\"LTvWFka1q9On3nkuFMbtlakzVJ2TdddonbOCqnl7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.1.200:8000\\/admin\\/users\"}', '2019-12-10 03:39:35', '2019-12-10 03:39:35');
INSERT INTO `ga_admin_operation_log` VALUES (160, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:39:36', '2019-12-10 03:39:36');
INSERT INTO `ga_admin_operation_log` VALUES (161, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:41:29', '2019-12-10 03:41:29');
INSERT INTO `ga_admin_operation_log` VALUES (162, 1, 'admin/users/1', 'PUT', '192.168.1.6', '{\"name\":\"user\",\"email\":\"user@qq.com\",\"password\":\"1234\",\"mobile\":\"161\",\"gender\":\"0\",\"joinip\":\"127.0.0.1\",\"status\":\"1\",\"_token\":\"LTvWFka1q9On3nkuFMbtlakzVJ2TdddonbOCqnl7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.1.200:8000\\/admin\\/users\"}', '2019-12-10 03:41:34', '2019-12-10 03:41:34');
INSERT INTO `ga_admin_operation_log` VALUES (163, 1, 'admin/users/1', 'GET', '192.168.1.6', '[]', '2019-12-10 03:41:51', '2019-12-10 03:41:51');
INSERT INTO `ga_admin_operation_log` VALUES (164, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:41:57', '2019-12-10 03:41:57');
INSERT INTO `ga_admin_operation_log` VALUES (165, 1, 'admin/users/1', 'PUT', '192.168.1.6', '{\"name\":\"user\",\"email\":\"user@qq.com\",\"password\":\"1234123\",\"mobile\":\"161\",\"gender\":\"0\",\"joinip\":\"127.0.0.1\",\"status\":\"1\",\"_token\":\"LTvWFka1q9On3nkuFMbtlakzVJ2TdddonbOCqnl7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.1.200:8000\\/admin\\/users\\/1\"}', '2019-12-10 03:42:01', '2019-12-10 03:42:01');
INSERT INTO `ga_admin_operation_log` VALUES (166, 1, 'admin/users/1', 'GET', '192.168.1.6', '[]', '2019-12-10 03:42:08', '2019-12-10 03:42:08');
INSERT INTO `ga_admin_operation_log` VALUES (167, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:42:13', '2019-12-10 03:42:13');
INSERT INTO `ga_admin_operation_log` VALUES (168, 1, 'admin/users/1', 'PUT', '192.168.1.6', '{\"name\":\"user\",\"email\":\"user@qq.com\",\"password\":\"123412341234\",\"mobile\":\"161\",\"gender\":\"0\",\"joinip\":\"127.0.0.1\",\"status\":\"1\",\"_token\":\"LTvWFka1q9On3nkuFMbtlakzVJ2TdddonbOCqnl7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.1.200:8000\\/admin\\/users\\/1\"}', '2019-12-10 03:42:18', '2019-12-10 03:42:18');
INSERT INTO `ga_admin_operation_log` VALUES (169, 1, 'admin/users/1', 'GET', '192.168.1.6', '[]', '2019-12-10 03:42:19', '2019-12-10 03:42:19');
INSERT INTO `ga_admin_operation_log` VALUES (170, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:42:26', '2019-12-10 03:42:26');
INSERT INTO `ga_admin_operation_log` VALUES (171, 1, 'admin/users/1', 'PUT', '192.168.1.6', '{\"name\":\"user\",\"email\":\"user@qq.com\",\"password\":\"123456\",\"mobile\":\"161\",\"gender\":\"0\",\"joinip\":\"127.0.0.1\",\"status\":\"1\",\"_token\":\"LTvWFka1q9On3nkuFMbtlakzVJ2TdddonbOCqnl7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.1.200:8000\\/admin\\/users\\/1\"}', '2019-12-10 03:42:33', '2019-12-10 03:42:33');
INSERT INTO `ga_admin_operation_log` VALUES (172, 1, 'admin/users/1', 'GET', '192.168.1.6', '[]', '2019-12-10 03:42:35', '2019-12-10 03:42:35');
INSERT INTO `ga_admin_operation_log` VALUES (173, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:42:52', '2019-12-10 03:42:52');
INSERT INTO `ga_admin_operation_log` VALUES (174, 1, 'admin/users/1', 'PUT', '192.168.1.6', '{\"name\":\"user\",\"email\":\"user@qq.com\",\"password\":null,\"mobile\":\"161\",\"gender\":\"0\",\"joinip\":\"127.0.0.1\",\"status\":\"1\",\"_token\":\"LTvWFka1q9On3nkuFMbtlakzVJ2TdddonbOCqnl7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.1.200:8000\\/admin\\/users\\/1\"}', '2019-12-10 03:43:00', '2019-12-10 03:43:00');
INSERT INTO `ga_admin_operation_log` VALUES (175, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:43:01', '2019-12-10 03:43:01');
INSERT INTO `ga_admin_operation_log` VALUES (176, 1, 'admin/users/1', 'PUT', '192.168.1.6', '{\"name\":\"user\",\"email\":\"user@qq.com\",\"password\":null,\"mobile\":\"161\",\"gender\":\"0\",\"joinip\":\"127.0.0.1\",\"status\":\"1\",\"_token\":\"LTvWFka1q9On3nkuFMbtlakzVJ2TdddonbOCqnl7\",\"_method\":\"PUT\"}', '2019-12-10 03:43:47', '2019-12-10 03:43:47');
INSERT INTO `ga_admin_operation_log` VALUES (177, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:43:48', '2019-12-10 03:43:48');
INSERT INTO `ga_admin_operation_log` VALUES (178, 1, 'admin/users/1', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:43:52', '2019-12-10 03:43:52');
INSERT INTO `ga_admin_operation_log` VALUES (179, 1, 'admin/users/1', 'GET', '192.168.1.6', '[]', '2019-12-10 03:45:20', '2019-12-10 03:45:20');
INSERT INTO `ga_admin_operation_log` VALUES (180, 1, 'admin/users/1', 'GET', '192.168.1.6', '[]', '2019-12-10 03:45:42', '2019-12-10 03:45:42');
INSERT INTO `ga_admin_operation_log` VALUES (181, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:45:46', '2019-12-10 03:45:46');
INSERT INTO `ga_admin_operation_log` VALUES (182, 1, 'admin/users/1', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:45:55', '2019-12-10 03:45:55');
INSERT INTO `ga_admin_operation_log` VALUES (183, 1, 'admin/users/1', 'GET', '192.168.1.6', '[]', '2019-12-10 03:46:07', '2019-12-10 03:46:07');
INSERT INTO `ga_admin_operation_log` VALUES (184, 1, 'admin/users/1', 'GET', '192.168.1.6', '[]', '2019-12-10 03:46:44', '2019-12-10 03:46:44');
INSERT INTO `ga_admin_operation_log` VALUES (185, 1, 'admin/users/1', 'GET', '192.168.1.6', '[]', '2019-12-10 03:49:27', '2019-12-10 03:49:27');
INSERT INTO `ga_admin_operation_log` VALUES (186, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:50:05', '2019-12-10 03:50:05');
INSERT INTO `ga_admin_operation_log` VALUES (187, 1, 'admin/users/1', 'PUT', '192.168.1.6', '{\"name\":\"user\",\"email\":\"user@qq.com\",\"password\":null,\"mobile\":\"161\",\"gender\":\"0\",\"joinip\":\"127.0.0.1\",\"status\":\"1\",\"_token\":\"LTvWFka1q9On3nkuFMbtlakzVJ2TdddonbOCqnl7\",\"after-save\":\"3\",\"_method\":\"PUT\"}', '2019-12-10 03:50:13', '2019-12-10 03:50:13');
INSERT INTO `ga_admin_operation_log` VALUES (188, 1, 'admin/users/1', 'GET', '192.168.1.6', '[]', '2019-12-10 03:50:14', '2019-12-10 03:50:14');
INSERT INTO `ga_admin_operation_log` VALUES (189, 1, 'admin/users/1', 'GET', '192.168.1.6', '[]', '2019-12-10 03:51:11', '2019-12-10 03:51:11');
INSERT INTO `ga_admin_operation_log` VALUES (190, 1, 'admin/users/1', 'GET', '192.168.1.6', '[]', '2019-12-10 03:51:22', '2019-12-10 03:51:22');
INSERT INTO `ga_admin_operation_log` VALUES (191, 1, 'admin/users/1', 'GET', '192.168.1.6', '[]', '2019-12-10 03:51:37', '2019-12-10 03:51:37');
INSERT INTO `ga_admin_operation_log` VALUES (192, 1, 'admin/users/1', 'GET', '192.168.1.6', '[]', '2019-12-10 03:52:40', '2019-12-10 03:52:40');
INSERT INTO `ga_admin_operation_log` VALUES (193, 1, 'admin/users/1', 'GET', '192.168.1.6', '[]', '2019-12-10 03:52:50', '2019-12-10 03:52:50');
INSERT INTO `ga_admin_operation_log` VALUES (194, 1, 'admin/users/1', 'GET', '192.168.1.6', '[]', '2019-12-10 03:54:17', '2019-12-10 03:54:17');
INSERT INTO `ga_admin_operation_log` VALUES (195, 1, 'admin/users/1', 'GET', '192.168.1.6', '[]', '2019-12-10 03:55:22', '2019-12-10 03:55:22');
INSERT INTO `ga_admin_operation_log` VALUES (196, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 03:55:32', '2019-12-10 03:55:32');
INSERT INTO `ga_admin_operation_log` VALUES (197, 1, 'admin/users/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 03:57:58', '2019-12-10 03:57:58');
INSERT INTO `ga_admin_operation_log` VALUES (198, 1, 'admin/users/1', 'PUT', '192.168.1.6', '{\"name\":\"user\",\"email\":\"user@qq.com\",\"password\":null,\"mobile\":\"15177699092\",\"gender\":\"0\",\"joinip\":\"127.0.0.1\",\"status\":\"1\",\"_token\":\"LTvWFka1q9On3nkuFMbtlakzVJ2TdddonbOCqnl7\",\"_method\":\"PUT\"}', '2019-12-10 03:58:07', '2019-12-10 03:58:07');
INSERT INTO `ga_admin_operation_log` VALUES (199, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:58:08', '2019-12-10 03:58:08');
INSERT INTO `ga_admin_operation_log` VALUES (200, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:58:23', '2019-12-10 03:58:23');
INSERT INTO `ga_admin_operation_log` VALUES (201, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:58:33', '2019-12-10 03:58:33');
INSERT INTO `ga_admin_operation_log` VALUES (202, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 03:58:54', '2019-12-10 03:58:54');
INSERT INTO `ga_admin_operation_log` VALUES (203, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 04:01:21', '2019-12-10 04:01:21');
INSERT INTO `ga_admin_operation_log` VALUES (204, 1, 'admin/users', 'GET', '192.168.1.6', '{\"_export_\":\"all\"}', '2019-12-10 04:01:28', '2019-12-10 04:01:28');
INSERT INTO `ga_admin_operation_log` VALUES (205, 1, 'admin/auth/setting', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 04:01:44', '2019-12-10 04:01:44');
INSERT INTO `ga_admin_operation_log` VALUES (206, 1, 'admin/auth/setting', 'PUT', '192.168.1.6', '{\"name\":\"Administrator\",\"password\":\"$2y$10$6uSHuz.HtNtUg1BcNXFbAuf7kJVLQoo\\/6W5h3vqmj1HvZiif1rcUS\",\"password_confirmation\":\"$2y$10$6uSHuz.HtNtUg1BcNXFbAuf7kJVLQoo\\/6W5h3vqmj1HvZiif1rcUS\",\"_token\":\"LTvWFka1q9On3nkuFMbtlakzVJ2TdddonbOCqnl7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.1.200:8000\\/admin\\/users\"}', '2019-12-10 04:01:51', '2019-12-10 04:01:51');
INSERT INTO `ga_admin_operation_log` VALUES (207, 1, 'admin/auth/setting', 'GET', '192.168.1.6', '[]', '2019-12-10 04:01:53', '2019-12-10 04:01:53');
INSERT INTO `ga_admin_operation_log` VALUES (208, 1, 'admin/auth/setting', 'GET', '192.168.1.6', '[]', '2019-12-10 04:01:57', '2019-12-10 04:01:57');
INSERT INTO `ga_admin_operation_log` VALUES (209, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 04:02:05', '2019-12-10 04:02:05');
INSERT INTO `ga_admin_operation_log` VALUES (210, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 04:02:12', '2019-12-10 04:02:12');
INSERT INTO `ga_admin_operation_log` VALUES (211, 1, 'admin/auth/users', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 04:03:08', '2019-12-10 04:03:08');
INSERT INTO `ga_admin_operation_log` VALUES (212, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 04:03:14', '2019-12-10 04:03:14');
INSERT INTO `ga_admin_operation_log` VALUES (213, 1, 'admin/auth/menu', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 04:03:18', '2019-12-10 04:03:18');
INSERT INTO `ga_admin_operation_log` VALUES (214, 1, 'admin/users', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 06:26:36', '2019-12-10 06:26:36');
INSERT INTO `ga_admin_operation_log` VALUES (215, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 06:26:41', '2019-12-10 06:26:41');
INSERT INTO `ga_admin_operation_log` VALUES (216, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 06:26:42', '2019-12-10 06:26:42');
INSERT INTO `ga_admin_operation_log` VALUES (217, 1, 'admin/configs/create', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 06:26:46', '2019-12-10 06:26:46');
INSERT INTO `ga_admin_operation_log` VALUES (218, 1, 'admin/configs', 'POST', '192.168.1.6', '{\"key\":\"APP_URL\",\"value\":\"http:\\/\\/192.168.1.200:8000\",\"comment\":null,\"_token\":\"5a6oA7ZgbeiJoQKh3lWFcawZbfm5W6HPZf3mxvrB\",\"_previous_\":\"http:\\/\\/192.168.1.200:8000\\/admin\\/configs\"}', '2019-12-10 06:30:02', '2019-12-10 06:30:02');
INSERT INTO `ga_admin_operation_log` VALUES (219, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 06:30:03', '2019-12-10 06:30:03');
INSERT INTO `ga_admin_operation_log` VALUES (220, 1, 'admin/configs', 'POST', '192.168.1.6', '{\"key\":\"APP_URL\",\"value\":\"http:\\/\\/192.168.1.200:8000\",\"comment\":\"APP_URL\",\"_token\":\"5a6oA7ZgbeiJoQKh3lWFcawZbfm5W6HPZf3mxvrB\"}', '2019-12-10 06:30:11', '2019-12-10 06:30:11');
INSERT INTO `ga_admin_operation_log` VALUES (221, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:30:12', '2019-12-10 06:30:12');
INSERT INTO `ga_admin_operation_log` VALUES (222, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:31:46', '2019-12-10 06:31:46');
INSERT INTO `ga_admin_operation_log` VALUES (223, 1, 'admin/configs/create', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 06:32:22', '2019-12-10 06:32:22');
INSERT INTO `ga_admin_operation_log` VALUES (224, 1, 'admin/configs', 'POST', '192.168.1.6', '{\"key\":\"a\",\"value\":\"asd\",\"comment\":\"a\",\"_token\":\"5a6oA7ZgbeiJoQKh3lWFcawZbfm5W6HPZf3mxvrB\",\"_previous_\":\"http:\\/\\/192.168.1.200:8000\\/admin\\/configs\"}', '2019-12-10 06:32:29', '2019-12-10 06:32:29');
INSERT INTO `ga_admin_operation_log` VALUES (225, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:32:30', '2019-12-10 06:32:30');
INSERT INTO `ga_admin_operation_log` VALUES (226, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:32:45', '2019-12-10 06:32:45');
INSERT INTO `ga_admin_operation_log` VALUES (227, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:41:12', '2019-12-10 06:41:12');
INSERT INTO `ga_admin_operation_log` VALUES (228, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:41:25', '2019-12-10 06:41:25');
INSERT INTO `ga_admin_operation_log` VALUES (229, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:41:34', '2019-12-10 06:41:34');
INSERT INTO `ga_admin_operation_log` VALUES (230, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:41:47', '2019-12-10 06:41:47');
INSERT INTO `ga_admin_operation_log` VALUES (231, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:42:41', '2019-12-10 06:42:41');
INSERT INTO `ga_admin_operation_log` VALUES (232, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:43:00', '2019-12-10 06:43:00');
INSERT INTO `ga_admin_operation_log` VALUES (233, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:43:13', '2019-12-10 06:43:13');
INSERT INTO `ga_admin_operation_log` VALUES (234, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:43:30', '2019-12-10 06:43:30');
INSERT INTO `ga_admin_operation_log` VALUES (235, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:44:29', '2019-12-10 06:44:29');
INSERT INTO `ga_admin_operation_log` VALUES (236, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:44:51', '2019-12-10 06:44:51');
INSERT INTO `ga_admin_operation_log` VALUES (237, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:44:59', '2019-12-10 06:44:59');
INSERT INTO `ga_admin_operation_log` VALUES (238, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:45:04', '2019-12-10 06:45:04');
INSERT INTO `ga_admin_operation_log` VALUES (239, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:45:22', '2019-12-10 06:45:22');
INSERT INTO `ga_admin_operation_log` VALUES (240, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:46:06', '2019-12-10 06:46:06');
INSERT INTO `ga_admin_operation_log` VALUES (241, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:46:26', '2019-12-10 06:46:26');
INSERT INTO `ga_admin_operation_log` VALUES (242, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 06:47:46', '2019-12-10 06:47:46');
INSERT INTO `ga_admin_operation_log` VALUES (243, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 06:47:51', '2019-12-10 06:47:51');
INSERT INTO `ga_admin_operation_log` VALUES (244, 1, 'admin/users', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 06:47:52', '2019-12-10 06:47:52');
INSERT INTO `ga_admin_operation_log` VALUES (245, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 06:47:56', '2019-12-10 06:47:56');
INSERT INTO `ga_admin_operation_log` VALUES (246, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:48:31', '2019-12-10 06:48:31');
INSERT INTO `ga_admin_operation_log` VALUES (247, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 06:49:17', '2019-12-10 06:49:17');
INSERT INTO `ga_admin_operation_log` VALUES (248, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 06:49:34', '2019-12-10 06:49:34');
INSERT INTO `ga_admin_operation_log` VALUES (249, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 06:51:40', '2019-12-10 06:51:40');
INSERT INTO `ga_admin_operation_log` VALUES (250, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 06:52:28', '2019-12-10 06:52:28');
INSERT INTO `ga_admin_operation_log` VALUES (251, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 06:53:41', '2019-12-10 06:53:41');
INSERT INTO `ga_admin_operation_log` VALUES (252, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 06:55:35', '2019-12-10 06:55:35');
INSERT INTO `ga_admin_operation_log` VALUES (253, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 06:55:44', '2019-12-10 06:55:44');
INSERT INTO `ga_admin_operation_log` VALUES (254, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 06:57:33', '2019-12-10 06:57:33');
INSERT INTO `ga_admin_operation_log` VALUES (255, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 06:58:05', '2019-12-10 06:58:05');
INSERT INTO `ga_admin_operation_log` VALUES (256, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 06:58:22', '2019-12-10 06:58:22');
INSERT INTO `ga_admin_operation_log` VALUES (257, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 06:58:32', '2019-12-10 06:58:32');
INSERT INTO `ga_admin_operation_log` VALUES (258, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 06:59:08', '2019-12-10 06:59:08');
INSERT INTO `ga_admin_operation_log` VALUES (259, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 06:59:36', '2019-12-10 06:59:36');
INSERT INTO `ga_admin_operation_log` VALUES (260, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 06:59:57', '2019-12-10 06:59:57');
INSERT INTO `ga_admin_operation_log` VALUES (261, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:01:04', '2019-12-10 07:01:04');
INSERT INTO `ga_admin_operation_log` VALUES (262, 1, 'admin/configs/1', 'PUT', '192.168.1.6', '{\"key\":\"APP_URL\",\"value\":{\"id\":\"aa\"},\"comment\":\"APP_URL\",\"_token\":\"5a6oA7ZgbeiJoQKh3lWFcawZbfm5W6HPZf3mxvrB\",\"_method\":\"PUT\"}', '2019-12-10 07:01:13', '2019-12-10 07:01:13');
INSERT INTO `ga_admin_operation_log` VALUES (263, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:01:15', '2019-12-10 07:01:15');
INSERT INTO `ga_admin_operation_log` VALUES (264, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:02:06', '2019-12-10 07:02:06');
INSERT INTO `ga_admin_operation_log` VALUES (265, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:03:20', '2019-12-10 07:03:20');
INSERT INTO `ga_admin_operation_log` VALUES (266, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:04:27', '2019-12-10 07:04:27');
INSERT INTO `ga_admin_operation_log` VALUES (267, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:04:51', '2019-12-10 07:04:51');
INSERT INTO `ga_admin_operation_log` VALUES (268, 1, 'admin/configs/1', 'PUT', '192.168.1.6', '{\"key\":\"APP_URL\",\"value\":\"http:\\/\\/192.168.1.200:8000\",\"comment\":\"APP_URL\",\"_token\":\"5a6oA7ZgbeiJoQKh3lWFcawZbfm5W6HPZf3mxvrB\",\"_method\":\"PUT\"}', '2019-12-10 07:05:06', '2019-12-10 07:05:06');
INSERT INTO `ga_admin_operation_log` VALUES (269, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 07:05:07', '2019-12-10 07:05:07');
INSERT INTO `ga_admin_operation_log` VALUES (270, 1, 'admin/configs/1', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:05:25', '2019-12-10 07:05:25');
INSERT INTO `ga_admin_operation_log` VALUES (271, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:05:29', '2019-12-10 07:05:29');
INSERT INTO `ga_admin_operation_log` VALUES (272, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:07:44', '2019-12-10 07:07:44');
INSERT INTO `ga_admin_operation_log` VALUES (273, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:08:00', '2019-12-10 07:08:00');
INSERT INTO `ga_admin_operation_log` VALUES (274, 1, 'admin/configs/2', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:08:04', '2019-12-10 07:08:04');
INSERT INTO `ga_admin_operation_log` VALUES (275, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:08:13', '2019-12-10 07:08:13');
INSERT INTO `ga_admin_operation_log` VALUES (276, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:09:52', '2019-12-10 07:09:52');
INSERT INTO `ga_admin_operation_log` VALUES (277, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:10:15', '2019-12-10 07:10:15');
INSERT INTO `ga_admin_operation_log` VALUES (278, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:10:19', '2019-12-10 07:10:19');
INSERT INTO `ga_admin_operation_log` VALUES (279, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:10:40', '2019-12-10 07:10:40');
INSERT INTO `ga_admin_operation_log` VALUES (280, 1, 'admin/configs/2/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:11:05', '2019-12-10 07:11:05');
INSERT INTO `ga_admin_operation_log` VALUES (281, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:11:25', '2019-12-10 07:11:25');
INSERT INTO `ga_admin_operation_log` VALUES (282, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:11:36', '2019-12-10 07:11:36');
INSERT INTO `ga_admin_operation_log` VALUES (283, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:11:40', '2019-12-10 07:11:40');
INSERT INTO `ga_admin_operation_log` VALUES (284, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:17:28', '2019-12-10 07:17:28');
INSERT INTO `ga_admin_operation_log` VALUES (285, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:19:48', '2019-12-10 07:19:48');
INSERT INTO `ga_admin_operation_log` VALUES (286, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:20:00', '2019-12-10 07:20:00');
INSERT INTO `ga_admin_operation_log` VALUES (287, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:20:10', '2019-12-10 07:20:10');
INSERT INTO `ga_admin_operation_log` VALUES (288, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:20:22', '2019-12-10 07:20:22');
INSERT INTO `ga_admin_operation_log` VALUES (289, 1, 'admin/configs/1', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:20:26', '2019-12-10 07:20:26');
INSERT INTO `ga_admin_operation_log` VALUES (290, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:20:29', '2019-12-10 07:20:29');
INSERT INTO `ga_admin_operation_log` VALUES (291, 1, 'admin/configs/create', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:20:31', '2019-12-10 07:20:31');
INSERT INTO `ga_admin_operation_log` VALUES (292, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:20:45', '2019-12-10 07:20:45');
INSERT INTO `ga_admin_operation_log` VALUES (293, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:28:16', '2019-12-10 07:28:16');
INSERT INTO `ga_admin_operation_log` VALUES (294, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:28:43', '2019-12-10 07:28:43');
INSERT INTO `ga_admin_operation_log` VALUES (295, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:28:51', '2019-12-10 07:28:51');
INSERT INTO `ga_admin_operation_log` VALUES (296, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:28:55', '2019-12-10 07:28:55');
INSERT INTO `ga_admin_operation_log` VALUES (297, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:29:05', '2019-12-10 07:29:05');
INSERT INTO `ga_admin_operation_log` VALUES (298, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:29:20', '2019-12-10 07:29:20');
INSERT INTO `ga_admin_operation_log` VALUES (299, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:33:29', '2019-12-10 07:33:29');
INSERT INTO `ga_admin_operation_log` VALUES (300, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:33:48', '2019-12-10 07:33:48');
INSERT INTO `ga_admin_operation_log` VALUES (301, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:34:03', '2019-12-10 07:34:03');
INSERT INTO `ga_admin_operation_log` VALUES (302, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:34:21', '2019-12-10 07:34:21');
INSERT INTO `ga_admin_operation_log` VALUES (303, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:34:28', '2019-12-10 07:34:28');
INSERT INTO `ga_admin_operation_log` VALUES (304, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:34:31', '2019-12-10 07:34:31');
INSERT INTO `ga_admin_operation_log` VALUES (305, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:34:42', '2019-12-10 07:34:42');
INSERT INTO `ga_admin_operation_log` VALUES (306, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:34:52', '2019-12-10 07:34:52');
INSERT INTO `ga_admin_operation_log` VALUES (307, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:34:55', '2019-12-10 07:34:55');
INSERT INTO `ga_admin_operation_log` VALUES (308, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:35:12', '2019-12-10 07:35:12');
INSERT INTO `ga_admin_operation_log` VALUES (309, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:35:26', '2019-12-10 07:35:26');
INSERT INTO `ga_admin_operation_log` VALUES (310, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:35:44', '2019-12-10 07:35:44');
INSERT INTO `ga_admin_operation_log` VALUES (311, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:35:47', '2019-12-10 07:35:47');
INSERT INTO `ga_admin_operation_log` VALUES (312, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:35:50', '2019-12-10 07:35:50');
INSERT INTO `ga_admin_operation_log` VALUES (313, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:36:01', '2019-12-10 07:36:01');
INSERT INTO `ga_admin_operation_log` VALUES (314, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:36:05', '2019-12-10 07:36:05');
INSERT INTO `ga_admin_operation_log` VALUES (315, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:36:09', '2019-12-10 07:36:09');
INSERT INTO `ga_admin_operation_log` VALUES (316, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:36:14', '2019-12-10 07:36:14');
INSERT INTO `ga_admin_operation_log` VALUES (317, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:36:18', '2019-12-10 07:36:18');
INSERT INTO `ga_admin_operation_log` VALUES (318, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:37:50', '2019-12-10 07:37:50');
INSERT INTO `ga_admin_operation_log` VALUES (319, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:38:00', '2019-12-10 07:38:00');
INSERT INTO `ga_admin_operation_log` VALUES (320, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:38:07', '2019-12-10 07:38:07');
INSERT INTO `ga_admin_operation_log` VALUES (321, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:38:16', '2019-12-10 07:38:16');
INSERT INTO `ga_admin_operation_log` VALUES (322, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:38:27', '2019-12-10 07:38:27');
INSERT INTO `ga_admin_operation_log` VALUES (323, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:38:33', '2019-12-10 07:38:33');
INSERT INTO `ga_admin_operation_log` VALUES (324, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:38:39', '2019-12-10 07:38:39');
INSERT INTO `ga_admin_operation_log` VALUES (325, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:38:48', '2019-12-10 07:38:48');
INSERT INTO `ga_admin_operation_log` VALUES (326, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:40:02', '2019-12-10 07:40:02');
INSERT INTO `ga_admin_operation_log` VALUES (327, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:40:17', '2019-12-10 07:40:17');
INSERT INTO `ga_admin_operation_log` VALUES (328, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:40:22', '2019-12-10 07:40:22');
INSERT INTO `ga_admin_operation_log` VALUES (329, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-12-10 07:40:04', '2019-12-10 07:40:04');
INSERT INTO `ga_admin_operation_log` VALUES (330, 1, 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:40:10', '2019-12-10 07:40:10');
INSERT INTO `ga_admin_operation_log` VALUES (331, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:40:16', '2019-12-10 07:40:16');
INSERT INTO `ga_admin_operation_log` VALUES (332, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 07:40:26', '2019-12-10 07:40:26');
INSERT INTO `ga_admin_operation_log` VALUES (333, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 07:42:14', '2019-12-10 07:42:14');
INSERT INTO `ga_admin_operation_log` VALUES (334, 1, 'admin', 'GET', '192.168.1.6', '[]', '2019-12-10 07:43:00', '2019-12-10 07:43:00');
INSERT INTO `ga_admin_operation_log` VALUES (335, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:43:04', '2019-12-10 07:43:04');
INSERT INTO `ga_admin_operation_log` VALUES (336, 1, 'admin/auth/users', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:43:07', '2019-12-10 07:43:07');
INSERT INTO `ga_admin_operation_log` VALUES (337, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:43:10', '2019-12-10 07:43:10');
INSERT INTO `ga_admin_operation_log` VALUES (338, 1, 'admin/configs/2/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:43:15', '2019-12-10 07:43:15');
INSERT INTO `ga_admin_operation_log` VALUES (339, 1, 'admin/configs/2/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:43:21', '2019-12-10 07:43:21');
INSERT INTO `ga_admin_operation_log` VALUES (340, 1, 'admin/configs/2/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:43:28', '2019-12-10 07:43:28');
INSERT INTO `ga_admin_operation_log` VALUES (341, 1, 'admin/configs/2/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:43:34', '2019-12-10 07:43:34');
INSERT INTO `ga_admin_operation_log` VALUES (342, 1, 'admin/configs/2/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:44:55', '2019-12-10 07:44:55');
INSERT INTO `ga_admin_operation_log` VALUES (343, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 07:45:01', '2019-12-10 07:45:01');
INSERT INTO `ga_admin_operation_log` VALUES (344, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:45:06', '2019-12-10 07:45:06');
INSERT INTO `ga_admin_operation_log` VALUES (345, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:45:10', '2019-12-10 07:45:10');
INSERT INTO `ga_admin_operation_log` VALUES (346, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:45:17', '2019-12-10 07:45:17');
INSERT INTO `ga_admin_operation_log` VALUES (347, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:45:32', '2019-12-10 07:45:32');
INSERT INTO `ga_admin_operation_log` VALUES (348, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-10 07:45:47', '2019-12-10 07:45:47');
INSERT INTO `ga_admin_operation_log` VALUES (349, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 07:47:17', '2019-12-10 07:47:17');
INSERT INTO `ga_admin_operation_log` VALUES (350, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-12-10 07:47:22', '2019-12-10 07:47:22');
INSERT INTO `ga_admin_operation_log` VALUES (351, 1, 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:47:27', '2019-12-10 07:47:27');
INSERT INTO `ga_admin_operation_log` VALUES (352, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 07:47:34', '2019-12-10 07:47:34');
INSERT INTO `ga_admin_operation_log` VALUES (353, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 07:47:40', '2019-12-10 07:47:40');
INSERT INTO `ga_admin_operation_log` VALUES (354, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 07:47:55', '2019-12-10 07:47:55');
INSERT INTO `ga_admin_operation_log` VALUES (355, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 07:48:04', '2019-12-10 07:48:04');
INSERT INTO `ga_admin_operation_log` VALUES (356, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 07:48:53', '2019-12-10 07:48:53');
INSERT INTO `ga_admin_operation_log` VALUES (357, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 07:49:16', '2019-12-10 07:49:16');
INSERT INTO `ga_admin_operation_log` VALUES (358, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 07:49:50', '2019-12-10 07:49:50');
INSERT INTO `ga_admin_operation_log` VALUES (359, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 07:50:10', '2019-12-10 07:50:10');
INSERT INTO `ga_admin_operation_log` VALUES (360, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 07:50:35', '2019-12-10 07:50:35');
INSERT INTO `ga_admin_operation_log` VALUES (361, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 07:52:03', '2019-12-10 07:52:03');
INSERT INTO `ga_admin_operation_log` VALUES (362, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 07:52:34', '2019-12-10 07:52:34');
INSERT INTO `ga_admin_operation_log` VALUES (363, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 08:01:49', '2019-12-10 08:01:49');
INSERT INTO `ga_admin_operation_log` VALUES (364, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 08:03:55', '2019-12-10 08:03:55');
INSERT INTO `ga_admin_operation_log` VALUES (365, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 08:08:45', '2019-12-10 08:08:45');
INSERT INTO `ga_admin_operation_log` VALUES (366, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 08:08:49', '2019-12-10 08:08:49');
INSERT INTO `ga_admin_operation_log` VALUES (367, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 08:10:17', '2019-12-10 08:10:17');
INSERT INTO `ga_admin_operation_log` VALUES (368, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 08:12:29', '2019-12-10 08:12:29');
INSERT INTO `ga_admin_operation_log` VALUES (369, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 08:12:53', '2019-12-10 08:12:53');
INSERT INTO `ga_admin_operation_log` VALUES (370, 1, 'admin/configs/create', 'GET', '192.168.1.6', '[]', '2019-12-10 08:12:58', '2019-12-10 08:12:58');
INSERT INTO `ga_admin_operation_log` VALUES (371, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 08:12:31', '2019-12-10 08:12:31');
INSERT INTO `ga_admin_operation_log` VALUES (372, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 08:14:28', '2019-12-10 08:14:28');
INSERT INTO `ga_admin_operation_log` VALUES (373, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 08:15:39', '2019-12-10 08:15:39');
INSERT INTO `ga_admin_operation_log` VALUES (374, 1, 'admin/configs/2', 'PUT', '127.0.0.1', '{\"key\":\"APP_URL\",\"value\":\"http:\\/\\/127.0.0.1:8000\",\"comment\":\"APP_URL\",\"_token\":\"b3VcZ4eiL2MOfVMLCqy8d4xAFPSNygN4dTmKazhg\",\"_method\":\"PUT\"}', '2019-12-10 08:15:59', '2019-12-10 08:15:59');
INSERT INTO `ga_admin_operation_log` VALUES (375, 1, 'admin/configs', 'GET', '127.0.0.1', '[]', '2019-12-10 08:16:01', '2019-12-10 08:16:01');
INSERT INTO `ga_admin_operation_log` VALUES (376, 1, 'admin/configs', 'GET', '127.0.0.1', '[]', '2019-12-10 08:16:16', '2019-12-10 08:16:16');
INSERT INTO `ga_admin_operation_log` VALUES (377, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"2\",\"_model\":\"App_Modes_Configs\",\"_token\":\"b3VcZ4eiL2MOfVMLCqy8d4xAFPSNygN4dTmKazhg\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2019-12-10 08:16:30', '2019-12-10 08:16:30');
INSERT INTO `ga_admin_operation_log` VALUES (378, 1, 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 08:16:31', '2019-12-10 08:16:31');
INSERT INTO `ga_admin_operation_log` VALUES (379, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 08:16:37', '2019-12-10 08:16:37');
INSERT INTO `ga_admin_operation_log` VALUES (380, 1, 'admin/configs/2/edit', 'GET', '127.0.0.1', '[]', '2019-12-10 08:16:39', '2019-12-10 08:16:39');
INSERT INTO `ga_admin_operation_log` VALUES (381, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 08:16:41', '2019-12-10 08:16:41');
INSERT INTO `ga_admin_operation_log` VALUES (382, 1, 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 08:16:52', '2019-12-10 08:16:52');
INSERT INTO `ga_admin_operation_log` VALUES (383, 1, 'admin/configs/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 08:17:01', '2019-12-10 08:17:01');
INSERT INTO `ga_admin_operation_log` VALUES (384, 1, 'admin/configs', 'POST', '127.0.0.1', '{\"key\":\"23423\",\"value\":\"2342\",\"comment\":\"234\",\"_token\":\"b3VcZ4eiL2MOfVMLCqy8d4xAFPSNygN4dTmKazhg\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/configs\"}', '2019-12-10 08:17:07', '2019-12-10 08:17:07');
INSERT INTO `ga_admin_operation_log` VALUES (385, 1, 'admin/configs', 'GET', '127.0.0.1', '[]', '2019-12-10 08:17:09', '2019-12-10 08:17:09');
INSERT INTO `ga_admin_operation_log` VALUES (386, 1, 'admin/configs/create', 'GET', '127.0.0.1', '[]', '2019-12-10 08:17:13', '2019-12-10 08:17:13');
INSERT INTO `ga_admin_operation_log` VALUES (387, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 08:18:04', '2019-12-10 08:18:04');
INSERT INTO `ga_admin_operation_log` VALUES (388, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 08:18:08', '2019-12-10 08:18:08');
INSERT INTO `ga_admin_operation_log` VALUES (389, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 08:18:09', '2019-12-10 08:18:09');
INSERT INTO `ga_admin_operation_log` VALUES (390, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 08:18:21', '2019-12-10 08:18:21');
INSERT INTO `ga_admin_operation_log` VALUES (391, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 08:18:26', '2019-12-10 08:18:26');
INSERT INTO `ga_admin_operation_log` VALUES (392, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 08:18:27', '2019-12-10 08:18:27');
INSERT INTO `ga_admin_operation_log` VALUES (393, 1, 'admin/users', 'GET', '192.168.1.6', '[]', '2019-12-10 08:19:03', '2019-12-10 08:19:03');
INSERT INTO `ga_admin_operation_log` VALUES (394, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 08:19:04', '2019-12-10 08:19:04');
INSERT INTO `ga_admin_operation_log` VALUES (395, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 08:19:07', '2019-12-10 08:19:07');
INSERT INTO `ga_admin_operation_log` VALUES (396, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 08:20:00', '2019-12-10 08:20:00');
INSERT INTO `ga_admin_operation_log` VALUES (397, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 08:20:27', '2019-12-10 08:20:27');
INSERT INTO `ga_admin_operation_log` VALUES (398, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-10 08:20:53', '2019-12-10 08:20:53');
INSERT INTO `ga_admin_operation_log` VALUES (399, 1, 'admin/_handle_action_', 'POST', '192.168.1.6', '{\"_key\":\"3\",\"_model\":\"App_Modes_Configs\",\"_token\":\"5a6oA7ZgbeiJoQKh3lWFcawZbfm5W6HPZf3mxvrB\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2019-12-10 08:21:00', '2019-12-10 08:21:00');
INSERT INTO `ga_admin_operation_log` VALUES (400, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 08:21:01', '2019-12-10 08:21:01');
INSERT INTO `ga_admin_operation_log` VALUES (401, 1, 'admin', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 08:21:05', '2019-12-10 08:21:05');
INSERT INTO `ga_admin_operation_log` VALUES (402, 1, 'admin/auth/menu', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 08:21:13', '2019-12-10 08:21:13');
INSERT INTO `ga_admin_operation_log` VALUES (403, 1, 'admin/auth/permissions', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 08:21:31', '2019-12-10 08:21:31');
INSERT INTO `ga_admin_operation_log` VALUES (404, 1, 'admin/auth/menu', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 08:21:47', '2019-12-10 08:21:47');
INSERT INTO `ga_admin_operation_log` VALUES (405, 1, 'admin/auth/menu', 'POST', '192.168.1.6', '{\"_token\":\"5a6oA7ZgbeiJoQKh3lWFcawZbfm5W6HPZf3mxvrB\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9}]},{\\\"id\\\":10},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-12-10 08:22:48', '2019-12-10 08:22:48');
INSERT INTO `ga_admin_operation_log` VALUES (406, 1, 'admin/auth/menu', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 08:22:51', '2019-12-10 08:22:51');
INSERT INTO `ga_admin_operation_log` VALUES (407, 1, 'admin/auth/menu', 'GET', '192.168.1.6', '[]', '2019-12-10 08:22:57', '2019-12-10 08:22:57');
INSERT INTO `ga_admin_operation_log` VALUES (408, 1, 'admin', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 08:23:00', '2019-12-10 08:23:00');
INSERT INTO `ga_admin_operation_log` VALUES (409, 1, 'admin', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 08:23:31', '2019-12-10 08:23:31');
INSERT INTO `ga_admin_operation_log` VALUES (410, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 09:12:37', '2019-12-10 09:12:37');
INSERT INTO `ga_admin_operation_log` VALUES (411, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-10 09:12:49', '2019-12-10 09:12:49');
INSERT INTO `ga_admin_operation_log` VALUES (412, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-11 01:17:04', '2019-12-11 01:17:04');
INSERT INTO `ga_admin_operation_log` VALUES (413, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-12-11 01:17:05', '2019-12-11 01:17:05');
INSERT INTO `ga_admin_operation_log` VALUES (414, 1, 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-11 01:17:13', '2019-12-11 01:17:13');
INSERT INTO `ga_admin_operation_log` VALUES (415, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-11 01:17:19', '2019-12-11 01:17:19');
INSERT INTO `ga_admin_operation_log` VALUES (416, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:18:06', '2019-12-11 01:18:06');
INSERT INTO `ga_admin_operation_log` VALUES (417, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:18:45', '2019-12-11 01:18:45');
INSERT INTO `ga_admin_operation_log` VALUES (418, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:19:48', '2019-12-11 01:19:48');
INSERT INTO `ga_admin_operation_log` VALUES (419, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:24:46', '2019-12-11 01:24:46');
INSERT INTO `ga_admin_operation_log` VALUES (420, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:38:10', '2019-12-11 01:38:10');
INSERT INTO `ga_admin_operation_log` VALUES (421, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:38:41', '2019-12-11 01:38:41');
INSERT INTO `ga_admin_operation_log` VALUES (422, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:39:12', '2019-12-11 01:39:12');
INSERT INTO `ga_admin_operation_log` VALUES (423, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:39:50', '2019-12-11 01:39:50');
INSERT INTO `ga_admin_operation_log` VALUES (424, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:40:17', '2019-12-11 01:40:17');
INSERT INTO `ga_admin_operation_log` VALUES (425, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:41:11', '2019-12-11 01:41:11');
INSERT INTO `ga_admin_operation_log` VALUES (426, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:44:09', '2019-12-11 01:44:09');
INSERT INTO `ga_admin_operation_log` VALUES (427, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:46:30', '2019-12-11 01:46:30');
INSERT INTO `ga_admin_operation_log` VALUES (428, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:48:45', '2019-12-11 01:48:45');
INSERT INTO `ga_admin_operation_log` VALUES (429, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:49:29', '2019-12-11 01:49:29');
INSERT INTO `ga_admin_operation_log` VALUES (430, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:49:43', '2019-12-11 01:49:43');
INSERT INTO `ga_admin_operation_log` VALUES (431, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:51:26', '2019-12-11 01:51:26');
INSERT INTO `ga_admin_operation_log` VALUES (432, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:52:26', '2019-12-11 01:52:26');
INSERT INTO `ga_admin_operation_log` VALUES (433, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:53:50', '2019-12-11 01:53:50');
INSERT INTO `ga_admin_operation_log` VALUES (434, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:54:12', '2019-12-11 01:54:12');
INSERT INTO `ga_admin_operation_log` VALUES (435, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:54:32', '2019-12-11 01:54:32');
INSERT INTO `ga_admin_operation_log` VALUES (436, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:56:09', '2019-12-11 01:56:09');
INSERT INTO `ga_admin_operation_log` VALUES (437, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:56:36', '2019-12-11 01:56:36');
INSERT INTO `ga_admin_operation_log` VALUES (438, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:56:48', '2019-12-11 01:56:48');
INSERT INTO `ga_admin_operation_log` VALUES (439, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:57:53', '2019-12-11 01:57:53');
INSERT INTO `ga_admin_operation_log` VALUES (440, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:58:52', '2019-12-11 01:58:52');
INSERT INTO `ga_admin_operation_log` VALUES (441, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:59:13', '2019-12-11 01:59:13');
INSERT INTO `ga_admin_operation_log` VALUES (442, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 01:59:56', '2019-12-11 01:59:56');
INSERT INTO `ga_admin_operation_log` VALUES (443, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:00:44', '2019-12-11 02:00:44');
INSERT INTO `ga_admin_operation_log` VALUES (444, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:12:01', '2019-12-11 02:12:01');
INSERT INTO `ga_admin_operation_log` VALUES (445, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:12:58', '2019-12-11 02:12:58');
INSERT INTO `ga_admin_operation_log` VALUES (446, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:13:58', '2019-12-11 02:13:58');
INSERT INTO `ga_admin_operation_log` VALUES (447, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:14:51', '2019-12-11 02:14:51');
INSERT INTO `ga_admin_operation_log` VALUES (448, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:14:55', '2019-12-11 02:14:55');
INSERT INTO `ga_admin_operation_log` VALUES (449, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:15:18', '2019-12-11 02:15:18');
INSERT INTO `ga_admin_operation_log` VALUES (450, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:16:05', '2019-12-11 02:16:05');
INSERT INTO `ga_admin_operation_log` VALUES (451, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:16:43', '2019-12-11 02:16:43');
INSERT INTO `ga_admin_operation_log` VALUES (452, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:21:11', '2019-12-11 02:21:11');
INSERT INTO `ga_admin_operation_log` VALUES (453, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:22:07', '2019-12-11 02:22:07');
INSERT INTO `ga_admin_operation_log` VALUES (454, 1, 'admin/configs/3/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:22:16', '2019-12-11 02:22:16');
INSERT INTO `ga_admin_operation_log` VALUES (455, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:22:22', '2019-12-11 02:22:22');
INSERT INTO `ga_admin_operation_log` VALUES (456, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:23:03', '2019-12-11 02:23:03');
INSERT INTO `ga_admin_operation_log` VALUES (457, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:40:16', '2019-12-11 02:40:16');
INSERT INTO `ga_admin_operation_log` VALUES (458, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:40:38', '2019-12-11 02:40:38');
INSERT INTO `ga_admin_operation_log` VALUES (459, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:40:57', '2019-12-11 02:40:57');
INSERT INTO `ga_admin_operation_log` VALUES (460, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:43:08', '2019-12-11 02:43:08');
INSERT INTO `ga_admin_operation_log` VALUES (461, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:43:40', '2019-12-11 02:43:40');
INSERT INTO `ga_admin_operation_log` VALUES (462, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:44:44', '2019-12-11 02:44:44');
INSERT INTO `ga_admin_operation_log` VALUES (463, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:45:03', '2019-12-11 02:45:03');
INSERT INTO `ga_admin_operation_log` VALUES (464, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:45:23', '2019-12-11 02:45:23');
INSERT INTO `ga_admin_operation_log` VALUES (465, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:46:24', '2019-12-11 02:46:24');
INSERT INTO `ga_admin_operation_log` VALUES (466, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:46:48', '2019-12-11 02:46:48');
INSERT INTO `ga_admin_operation_log` VALUES (467, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:47:59', '2019-12-11 02:47:59');
INSERT INTO `ga_admin_operation_log` VALUES (468, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:49:30', '2019-12-11 02:49:30');
INSERT INTO `ga_admin_operation_log` VALUES (469, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:49:47', '2019-12-11 02:49:47');
INSERT INTO `ga_admin_operation_log` VALUES (470, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:50:15', '2019-12-11 02:50:15');
INSERT INTO `ga_admin_operation_log` VALUES (471, 1, 'admin/configs/1/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:53:55', '2019-12-11 02:53:55');
INSERT INTO `ga_admin_operation_log` VALUES (472, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:54:05', '2019-12-11 02:54:05');
INSERT INTO `ga_admin_operation_log` VALUES (473, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:54:38', '2019-12-11 02:54:38');
INSERT INTO `ga_admin_operation_log` VALUES (474, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:55:52', '2019-12-11 02:55:52');
INSERT INTO `ga_admin_operation_log` VALUES (475, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:56:19', '2019-12-11 02:56:19');
INSERT INTO `ga_admin_operation_log` VALUES (476, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:56:57', '2019-12-11 02:56:57');
INSERT INTO `ga_admin_operation_log` VALUES (477, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:57:37', '2019-12-11 02:57:37');
INSERT INTO `ga_admin_operation_log` VALUES (478, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:57:54', '2019-12-11 02:57:54');
INSERT INTO `ga_admin_operation_log` VALUES (479, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 02:58:43', '2019-12-11 02:58:43');
INSERT INTO `ga_admin_operation_log` VALUES (480, 1, 'admin', 'GET', '192.168.1.6', '[]', '2019-12-11 02:59:25', '2019-12-11 02:59:25');
INSERT INTO `ga_admin_operation_log` VALUES (481, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-11 02:59:31', '2019-12-11 02:59:31');
INSERT INTO `ga_admin_operation_log` VALUES (482, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-11 02:59:32', '2019-12-11 02:59:32');
INSERT INTO `ga_admin_operation_log` VALUES (483, 1, 'admin/configs/4/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-11 02:59:41', '2019-12-11 02:59:41');
INSERT INTO `ga_admin_operation_log` VALUES (484, 1, 'admin/configs/4/edit', 'GET', '192.168.1.6', '[]', '2019-12-11 03:00:08', '2019-12-11 03:00:08');
INSERT INTO `ga_admin_operation_log` VALUES (485, 1, 'admin/configs/4/edit', 'GET', '192.168.1.6', '[]', '2019-12-11 03:00:11', '2019-12-11 03:00:11');
INSERT INTO `ga_admin_operation_log` VALUES (486, 1, 'admin/configs/4/edit', 'GET', '192.168.1.6', '[]', '2019-12-11 03:00:28', '2019-12-11 03:00:28');
INSERT INTO `ga_admin_operation_log` VALUES (487, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 03:07:24', '2019-12-11 03:07:24');
INSERT INTO `ga_admin_operation_log` VALUES (488, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 03:07:57', '2019-12-11 03:07:57');
INSERT INTO `ga_admin_operation_log` VALUES (489, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 03:19:19', '2019-12-11 03:19:19');
INSERT INTO `ga_admin_operation_log` VALUES (490, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-12-11 06:57:42', '2019-12-11 06:57:42');
INSERT INTO `ga_admin_operation_log` VALUES (491, 1, 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-11 06:57:50', '2019-12-11 06:57:50');
INSERT INTO `ga_admin_operation_log` VALUES (492, 1, 'admin/configs/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-11 06:58:00', '2019-12-11 06:58:00');
INSERT INTO `ga_admin_operation_log` VALUES (493, 1, 'admin/configs/4', 'GET', '127.0.0.1', '[]', '2019-12-11 06:58:03', '2019-12-11 06:58:03');
INSERT INTO `ga_admin_operation_log` VALUES (494, 1, 'admin/configs', 'GET', '127.0.0.1', '[]', '2019-12-11 06:58:15', '2019-12-11 06:58:15');
INSERT INTO `ga_admin_operation_log` VALUES (495, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-11 06:58:31', '2019-12-11 06:58:31');
INSERT INTO `ga_admin_operation_log` VALUES (496, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 07:00:02', '2019-12-11 07:00:02');
INSERT INTO `ga_admin_operation_log` VALUES (497, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 07:02:55', '2019-12-11 07:02:55');
INSERT INTO `ga_admin_operation_log` VALUES (498, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 07:03:16', '2019-12-11 07:03:16');
INSERT INTO `ga_admin_operation_log` VALUES (499, 1, 'admin/configs/4/edit', 'GET', '127.0.0.1', '[]', '2019-12-11 07:03:38', '2019-12-11 07:03:38');
INSERT INTO `ga_admin_operation_log` VALUES (500, 1, 'admin', 'GET', '192.168.1.6', '[]', '2019-12-11 07:04:48', '2019-12-11 07:04:48');
INSERT INTO `ga_admin_operation_log` VALUES (501, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-11 07:04:53', '2019-12-11 07:04:53');
INSERT INTO `ga_admin_operation_log` VALUES (502, 1, 'admin/configs/4/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-11 07:04:58', '2019-12-11 07:04:58');
INSERT INTO `ga_admin_operation_log` VALUES (503, 1, 'admin/configs/4/edit', 'GET', '192.168.1.6', '[]', '2019-12-11 07:05:49', '2019-12-11 07:05:49');
INSERT INTO `ga_admin_operation_log` VALUES (504, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-11 07:05:54', '2019-12-11 07:05:54');
INSERT INTO `ga_admin_operation_log` VALUES (505, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-11 07:05:59', '2019-12-11 07:05:59');
INSERT INTO `ga_admin_operation_log` VALUES (506, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-11 07:06:11', '2019-12-11 07:06:11');
INSERT INTO `ga_admin_operation_log` VALUES (507, 1, 'admin/configs/1/edit', 'GET', '192.168.1.6', '[]', '2019-12-11 07:06:43', '2019-12-11 07:06:43');
INSERT INTO `ga_admin_operation_log` VALUES (508, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-11 07:06:48', '2019-12-11 07:06:48');
INSERT INTO `ga_admin_operation_log` VALUES (509, 1, 'admin/configs', 'GET', '192.168.1.6', '[]', '2019-12-11 07:39:23', '2019-12-11 07:39:23');
INSERT INTO `ga_admin_operation_log` VALUES (510, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-11 07:39:30', '2019-12-11 07:39:30');
INSERT INTO `ga_admin_operation_log` VALUES (511, 1, 'admin/users', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-11 07:39:38', '2019-12-11 07:39:38');
INSERT INTO `ga_admin_operation_log` VALUES (512, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-11 07:39:49', '2019-12-11 07:39:49');
INSERT INTO `ga_admin_operation_log` VALUES (513, 1, 'admin/configs', 'GET', '192.168.1.6', '{\"_columns_\":\"comment,created_at,id,key,updated_at,value\",\"_pjax\":\"#pjax-container\"}', '2019-12-11 07:39:55', '2019-12-11 07:39:55');
INSERT INTO `ga_admin_operation_log` VALUES (514, 1, 'admin/users', 'GET', '192.168.1.6', '{\"_pjax\":\"#pjax-container\"}', '2019-12-11 07:44:33', '2019-12-11 07:44:33');
INSERT INTO `ga_admin_operation_log` VALUES (515, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-12-11 08:55:04', '2019-12-11 08:55:04');
INSERT INTO `ga_admin_operation_log` VALUES (516, 1, 'admin/configs/setting', 'GET', '192.168.1.6', '[]', '2019-12-12 01:33:00', '2019-12-12 01:33:00');
INSERT INTO `ga_admin_operation_log` VALUES (517, 1, 'admin/configs/setting', 'GET', '192.168.1.6', '[]', '2019-12-12 01:37:54', '2019-12-12 01:37:54');
INSERT INTO `ga_admin_operation_log` VALUES (518, 1, 'admin/configs/setting', 'GET', '192.168.1.6', '[]', '2019-12-12 01:38:40', '2019-12-12 01:38:40');
INSERT INTO `ga_admin_operation_log` VALUES (519, 1, 'admin/configs/setting', 'GET', '192.168.1.6', '[]', '2019-12-12 01:39:13', '2019-12-12 01:39:13');
INSERT INTO `ga_admin_operation_log` VALUES (520, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-12-12 01:38:44', '2019-12-12 01:38:44');
INSERT INTO `ga_admin_operation_log` VALUES (521, 1, 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-12 01:38:51', '2019-12-12 01:38:51');
INSERT INTO `ga_admin_operation_log` VALUES (522, 1, 'admin/setting', 'GET', '127.0.0.1', '[]', '2019-12-12 01:38:58', '2019-12-12 01:38:58');
INSERT INTO `ga_admin_operation_log` VALUES (523, 1, 'admin/setting', 'GET', '127.0.0.1', '[]', '2019-12-12 01:42:45', '2019-12-12 01:42:45');
INSERT INTO `ga_admin_operation_log` VALUES (524, 1, 'admin/setting', 'GET', '127.0.0.1', '[]', '2019-12-12 01:43:17', '2019-12-12 01:43:17');
INSERT INTO `ga_admin_operation_log` VALUES (525, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\",\"_pjax\":\"#pjax-container\"}', '2019-12-12 01:43:22', '2019-12-12 01:43:22');
INSERT INTO `ga_admin_operation_log` VALUES (526, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestStr\",\"_pjax\":\"#pjax-container\"}', '2019-12-12 01:43:27', '2019-12-12 01:43:27');
INSERT INTO `ga_admin_operation_log` VALUES (527, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestStr\"}', '2019-12-12 01:58:04', '2019-12-12 01:58:04');
INSERT INTO `ga_admin_operation_log` VALUES (528, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestStr\"}', '2019-12-12 02:00:31', '2019-12-12 02:00:31');
INSERT INTO `ga_admin_operation_log` VALUES (529, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestStr\"}', '2019-12-12 02:00:58', '2019-12-12 02:00:58');
INSERT INTO `ga_admin_operation_log` VALUES (530, 1, 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"id\":\"1\",\"key\":\"TESTSTR\",\"value\":\"http:\\/\\/127.0.0.1:234234\",\"comment\":\"APP_URL\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Configs\\\\TestStr\",\"_token\":\"ncum7Np8ZlpPdtRN3KlBPIg92sH3YVmP96wZ0qd0\"}', '2019-12-12 02:01:06', '2019-12-12 02:01:06');
INSERT INTO `ga_admin_operation_log` VALUES (531, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestStr\"}', '2019-12-12 02:01:08', '2019-12-12 02:01:08');
INSERT INTO `ga_admin_operation_log` VALUES (532, 1, 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"id\":\"1\",\"key\":\"TESTSTR\",\"value\":\"http:\\/\\/127.0.0.1:232434\",\"comment\":\"APP_URL\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Configs\\\\TestStr\",\"_token\":\"ncum7Np8ZlpPdtRN3KlBPIg92sH3YVmP96wZ0qd0\"}', '2019-12-12 02:02:56', '2019-12-12 02:02:56');
INSERT INTO `ga_admin_operation_log` VALUES (533, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestStr\"}', '2019-12-12 02:02:57', '2019-12-12 02:02:57');
INSERT INTO `ga_admin_operation_log` VALUES (534, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestStr\"}', '2019-12-12 02:08:30', '2019-12-12 02:08:30');
INSERT INTO `ga_admin_operation_log` VALUES (535, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestStr\"}', '2019-12-12 02:08:46', '2019-12-12 02:08:46');
INSERT INTO `ga_admin_operation_log` VALUES (536, 1, 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"id\":\"1\",\"key\":\"TESTSTR\",\"value\":\"http:\\/\\/127.0.0.1:1234123423\",\"comment\":\"APP_URL\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Configs\\\\TestStr\",\"_token\":\"ncum7Np8ZlpPdtRN3KlBPIg92sH3YVmP96wZ0qd0\"}', '2019-12-12 02:08:54', '2019-12-12 02:08:54');
INSERT INTO `ga_admin_operation_log` VALUES (537, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestStr\"}', '2019-12-12 02:08:55', '2019-12-12 02:08:55');
INSERT INTO `ga_admin_operation_log` VALUES (538, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestStr\"}', '2019-12-12 02:09:21', '2019-12-12 02:09:21');
INSERT INTO `ga_admin_operation_log` VALUES (539, 1, 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"id\":\"1\",\"key\":\"TESTSTR\",\"value\":null,\"comment\":\"APP_URL\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Configs\\\\TestStr\",\"_token\":\"ncum7Np8ZlpPdtRN3KlBPIg92sH3YVmP96wZ0qd0\"}', '2019-12-12 02:09:26', '2019-12-12 02:09:26');
INSERT INTO `ga_admin_operation_log` VALUES (540, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestStr\"}', '2019-12-12 02:09:28', '2019-12-12 02:09:28');
INSERT INTO `ga_admin_operation_log` VALUES (541, 1, 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"id\":\"1\",\"key\":\"TESTSTR\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/setting?active=TestStr\",\"comment\":\"APP_URL\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Configs\\\\TestStr\",\"_token\":\"ncum7Np8ZlpPdtRN3KlBPIg92sH3YVmP96wZ0qd0\"}', '2019-12-12 02:09:54', '2019-12-12 02:09:54');
INSERT INTO `ga_admin_operation_log` VALUES (542, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestStr\"}', '2019-12-12 02:09:55', '2019-12-12 02:09:55');
INSERT INTO `ga_admin_operation_log` VALUES (543, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\",\"_pjax\":\"#pjax-container\"}', '2019-12-12 02:10:00', '2019-12-12 02:10:00');
INSERT INTO `ga_admin_operation_log` VALUES (544, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:11:40', '2019-12-12 02:11:40');
INSERT INTO `ga_admin_operation_log` VALUES (545, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:12:15', '2019-12-12 02:12:15');
INSERT INTO `ga_admin_operation_log` VALUES (546, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:12:41', '2019-12-12 02:12:41');
INSERT INTO `ga_admin_operation_log` VALUES (547, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:17:50', '2019-12-12 02:17:50');
INSERT INTO `ga_admin_operation_log` VALUES (548, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:18:05', '2019-12-12 02:18:05');
INSERT INTO `ga_admin_operation_log` VALUES (549, 1, 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"id\":\"7\",\"key\":\"TESTARR\",\"value\":{\"keys\":[\"cmd\",\"data\",\"sdfas\"],\"values\":[\"index.init\",\"1\",\"asdfasdf\"]},\"comment\":\"\\u6d4b\\u8bd5\\u914d\\u7f6e\\u6570\\u7ec42\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Configs\\\\TestArr\",\"_token\":\"ncum7Np8ZlpPdtRN3KlBPIg92sH3YVmP96wZ0qd0\"}', '2019-12-12 02:18:24', '2019-12-12 02:18:24');
INSERT INTO `ga_admin_operation_log` VALUES (550, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:18:25', '2019-12-12 02:18:25');
INSERT INTO `ga_admin_operation_log` VALUES (551, 1, 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"id\":\"7\",\"key\":\"TESTARR\",\"value\":{\"keys\":[\"cmd\",\"data\",\"34232\"],\"values\":[\"index.init\",\"1\",\"234\"]},\"comment\":\"\\u6d4b\\u8bd5\\u914d\\u7f6e\\u6570\\u7ec4\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Configs\\\\TestArr\",\"_token\":\"ncum7Np8ZlpPdtRN3KlBPIg92sH3YVmP96wZ0qd0\"}', '2019-12-12 02:19:01', '2019-12-12 02:19:01');
INSERT INTO `ga_admin_operation_log` VALUES (552, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:19:03', '2019-12-12 02:19:03');
INSERT INTO `ga_admin_operation_log` VALUES (553, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:20:21', '2019-12-12 02:20:21');
INSERT INTO `ga_admin_operation_log` VALUES (554, 1, 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"id\":\"7\",\"key\":\"TESTARR\",\"value\":{\"keys\":[\"cmd\",\"data\"],\"values\":[\"index.init\",\"1\"]},\"comment\":\"\\u6d4b\\u8bd5\\u914d\\u7f6e\\u6570\\u7ec4\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Configs\\\\TestArr\",\"_token\":\"ncum7Np8ZlpPdtRN3KlBPIg92sH3YVmP96wZ0qd0\"}', '2019-12-12 02:20:29', '2019-12-12 02:20:29');
INSERT INTO `ga_admin_operation_log` VALUES (555, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:23:36', '2019-12-12 02:23:36');
INSERT INTO `ga_admin_operation_log` VALUES (556, 1, 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"id\":\"7\",\"key\":\"TESTARR\",\"value\":{\"keys\":[\"cmd\",\"data\"],\"values\":[\"index.init\",\"1\"]},\"comment\":\"\\u6d4b\\u8bd5\\u914d\\u7f6e\\u6570\\u7ec4\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Configs\\\\TestArr\",\"_token\":\"ncum7Np8ZlpPdtRN3KlBPIg92sH3YVmP96wZ0qd0\"}', '2019-12-12 02:23:41', '2019-12-12 02:23:41');
INSERT INTO `ga_admin_operation_log` VALUES (557, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\",\"_pjax\":\"#pjax-container\"}', '2019-12-12 02:24:10', '2019-12-12 02:24:10');
INSERT INTO `ga_admin_operation_log` VALUES (558, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:24:13', '2019-12-12 02:24:13');
INSERT INTO `ga_admin_operation_log` VALUES (559, 1, 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"id\":\"7\",\"key\":\"TESTARR\",\"value\":{\"keys\":[\"cmd\",\"data\"],\"values\":[\"index.init\",\"1\"]},\"comment\":\"\\u6d4b\\u8bd5\\u914d\\u7f6e\\u6570\\u7ec4\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Configs\\\\TestArr\",\"_token\":\"ncum7Np8ZlpPdtRN3KlBPIg92sH3YVmP96wZ0qd0\"}', '2019-12-12 02:24:15', '2019-12-12 02:24:15');
INSERT INTO `ga_admin_operation_log` VALUES (560, 1, 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"id\":\"7\",\"key\":\"TESTARR\",\"value\":{\"keys\":[\"cmd\",\"data\"],\"values\":[\"index.init\",\"1\"]},\"comment\":\"\\u6d4b\\u8bd5\\u914d\\u7f6e\\u6570\\u7ec4\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Configs\\\\TestArr\",\"_token\":\"ncum7Np8ZlpPdtRN3KlBPIg92sH3YVmP96wZ0qd0\"}', '2019-12-12 02:24:23', '2019-12-12 02:24:23');
INSERT INTO `ga_admin_operation_log` VALUES (561, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\",\"_pjax\":\"#pjax-container\"}', '2019-12-12 02:25:04', '2019-12-12 02:25:04');
INSERT INTO `ga_admin_operation_log` VALUES (562, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:25:06', '2019-12-12 02:25:06');
INSERT INTO `ga_admin_operation_log` VALUES (563, 1, 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"id\":\"7\",\"key\":\"TESTARR\",\"value\":{\"keys\":[\"cmd\",\"data\"],\"values\":[\"index.init\",\"1\"]},\"comment\":\"\\u6d4b\\u8bd5\\u914d\\u7f6e\\u6570\\u7ec4\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Configs\\\\TestArr\",\"_token\":\"ncum7Np8ZlpPdtRN3KlBPIg92sH3YVmP96wZ0qd0\"}', '2019-12-12 02:25:10', '2019-12-12 02:25:10');
INSERT INTO `ga_admin_operation_log` VALUES (564, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:26:09', '2019-12-12 02:26:09');
INSERT INTO `ga_admin_operation_log` VALUES (565, 1, 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"id\":\"7\",\"key\":\"TESTARR\",\"value\":{\"keys\":[\"cmd\",\"data\"],\"values\":[\"index.init\",\"1\"]},\"comment\":\"\\u6d4b\\u8bd5\\u914d\\u7f6e\\u6570\\u7ec4\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Configs\\\\TestArr\",\"_token\":\"ncum7Np8ZlpPdtRN3KlBPIg92sH3YVmP96wZ0qd0\"}', '2019-12-12 02:26:13', '2019-12-12 02:26:13');
INSERT INTO `ga_admin_operation_log` VALUES (566, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\",\"_pjax\":\"#pjax-container\"}', '2019-12-12 02:26:38', '2019-12-12 02:26:38');
INSERT INTO `ga_admin_operation_log` VALUES (567, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:26:40', '2019-12-12 02:26:40');
INSERT INTO `ga_admin_operation_log` VALUES (568, 1, 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"id\":\"7\",\"key\":\"TESTARR\",\"value\":{\"keys\":[\"cmd\",\"data\"],\"values\":[\"index.init\",\"1\"]},\"comment\":\"\\u6d4b\\u8bd5\\u914d\\u7f6e\\u6570\\u7ec4\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Configs\\\\TestArr\",\"_token\":\"ncum7Np8ZlpPdtRN3KlBPIg92sH3YVmP96wZ0qd0\"}', '2019-12-12 02:26:43', '2019-12-12 02:26:43');
INSERT INTO `ga_admin_operation_log` VALUES (569, 1, 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"id\":\"7\",\"key\":\"TESTARR\",\"value\":{\"keys\":[\"cmd\",\"data\"],\"values\":[\"index.init\",\"1\"]},\"comment\":\"\\u6d4b\\u8bd5\\u914d\\u7f6e\\u6570\\u7ec4\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Configs\\\\TestArr\",\"_token\":\"ncum7Np8ZlpPdtRN3KlBPIg92sH3YVmP96wZ0qd0\"}', '2019-12-12 02:26:50', '2019-12-12 02:26:50');
INSERT INTO `ga_admin_operation_log` VALUES (570, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\",\"_pjax\":\"#pjax-container\"}', '2019-12-12 02:26:58', '2019-12-12 02:26:58');
INSERT INTO `ga_admin_operation_log` VALUES (571, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:27:01', '2019-12-12 02:27:01');
INSERT INTO `ga_admin_operation_log` VALUES (572, 1, 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"id\":\"7\",\"key\":\"TESTARR\",\"value\":{\"keys\":[\"cmd\",\"data\",\"234\"],\"values\":[\"index.init\",\"1\",\"234\"]},\"comment\":\"\\u6d4b\\u8bd5\\u914d\\u7f6e\\u6570\\u7ec4\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Configs\\\\TestArr\",\"_token\":\"ncum7Np8ZlpPdtRN3KlBPIg92sH3YVmP96wZ0qd0\"}', '2019-12-12 02:27:08', '2019-12-12 02:27:08');
INSERT INTO `ga_admin_operation_log` VALUES (573, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:27:10', '2019-12-12 02:27:10');
INSERT INTO `ga_admin_operation_log` VALUES (574, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestStr\",\"_pjax\":\"#pjax-container\"}', '2019-12-12 02:27:38', '2019-12-12 02:27:38');
INSERT INTO `ga_admin_operation_log` VALUES (575, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\",\"_pjax\":\"#pjax-container\"}', '2019-12-12 02:27:49', '2019-12-12 02:27:49');
INSERT INTO `ga_admin_operation_log` VALUES (576, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:27:53', '2019-12-12 02:27:53');
INSERT INTO `ga_admin_operation_log` VALUES (577, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:28:17', '2019-12-12 02:28:17');
INSERT INTO `ga_admin_operation_log` VALUES (578, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-12-12 02:28:37', '2019-12-12 02:28:37');
INSERT INTO `ga_admin_operation_log` VALUES (579, 1, 'admin/configs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-12 02:28:42', '2019-12-12 02:28:42');
INSERT INTO `ga_admin_operation_log` VALUES (580, 1, 'admin/setting', 'GET', '127.0.0.1', '[]', '2019-12-12 02:28:52', '2019-12-12 02:28:52');
INSERT INTO `ga_admin_operation_log` VALUES (581, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\",\"_pjax\":\"#pjax-container\"}', '2019-12-12 02:28:56', '2019-12-12 02:28:56');
INSERT INTO `ga_admin_operation_log` VALUES (582, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:29:00', '2019-12-12 02:29:00');
INSERT INTO `ga_admin_operation_log` VALUES (583, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\",\"_pjax\":\"#pjax-container\"}', '2019-12-12 02:29:03', '2019-12-12 02:29:03');
INSERT INTO `ga_admin_operation_log` VALUES (584, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:29:32', '2019-12-12 02:29:32');
INSERT INTO `ga_admin_operation_log` VALUES (585, 1, 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"id\":\"7\",\"key\":\"TESTARR\",\"value\":{\"keys\":[\"cmd\",\"data\",\"234\"],\"values\":[\"index.init\",\"1\",\"234\"]},\"comment\":\"\\u6d4b\\u8bd5\\u914d\\u7f6e\\u6570\\u7ec4\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Configs\\\\TestArr\",\"_token\":\"ncum7Np8ZlpPdtRN3KlBPIg92sH3YVmP96wZ0qd0\"}', '2019-12-12 02:29:41', '2019-12-12 02:29:41');
INSERT INTO `ga_admin_operation_log` VALUES (586, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:29:43', '2019-12-12 02:29:43');
INSERT INTO `ga_admin_operation_log` VALUES (587, 1, 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"id\":\"7\",\"key\":\"TESTARR\",\"value\":{\"keys\":[\"cmd\",\"data\"],\"values\":[\"index.init\",\"1\"]},\"comment\":\"\\u6d4b\\u8bd5\\u914d\\u7f6e\\u6570\\u7ec4\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Configs\\\\TestArr\",\"_token\":\"ncum7Np8ZlpPdtRN3KlBPIg92sH3YVmP96wZ0qd0\"}', '2019-12-12 02:29:57', '2019-12-12 02:29:57');
INSERT INTO `ga_admin_operation_log` VALUES (588, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"active\":\"TestArr\"}', '2019-12-12 02:29:59', '2019-12-12 02:29:59');
INSERT INTO `ga_admin_operation_log` VALUES (589, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-12 02:30:57', '2019-12-12 02:30:57');

-- ----------------------------
-- Table structure for ga_admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `ga_admin_permissions`;
CREATE TABLE `ga_admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ga_admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `ga_admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ga_admin_permissions
-- ----------------------------
INSERT INTO `ga_admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `ga_admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `ga_admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `ga_admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `ga_admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- ----------------------------
-- Table structure for ga_admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `ga_admin_role_menu`;
CREATE TABLE `ga_admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `ga_admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ga_admin_role_menu
-- ----------------------------
INSERT INTO `ga_admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for ga_admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `ga_admin_role_permissions`;
CREATE TABLE `ga_admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `ga_admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ga_admin_role_permissions
-- ----------------------------
INSERT INTO `ga_admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for ga_admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `ga_admin_role_users`;
CREATE TABLE `ga_admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `ga_admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ga_admin_role_users
-- ----------------------------
INSERT INTO `ga_admin_role_users` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for ga_admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `ga_admin_roles`;
CREATE TABLE `ga_admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ga_admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `ga_admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ga_admin_roles
-- ----------------------------
INSERT INTO `ga_admin_roles` VALUES (1, 'Administrator', 'administrator', '2019-12-10 01:40:35', '2019-12-10 01:40:35');

-- ----------------------------
-- Table structure for ga_admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `ga_admin_user_permissions`;
CREATE TABLE `ga_admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `ga_admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ga_admin_users
-- ----------------------------
DROP TABLE IF EXISTS `ga_admin_users`;
CREATE TABLE `ga_admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ga_admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ga_admin_users
-- ----------------------------
INSERT INTO `ga_admin_users` VALUES (1, 'admin', '$2y$10$6uSHuz.HtNtUg1BcNXFbAuf7kJVLQoo/6W5h3vqmj1HvZiif1rcUS', 'Administrator', 'images/270dac174c60fc72edff1931fabe0169.jpg', 'qYqWXAJdgE5hJufKmtfnWqIIkrfHM2mfdWiXODHtZ1FRs15gd7kgzYQidZBr', '2019-12-10 01:40:35', '2019-12-10 04:01:52');

-- ----------------------------
-- Table structure for ga_configs
-- ----------------------------
DROP TABLE IF EXISTS `ga_configs`;
CREATE TABLE `ga_configs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'key',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'value',
  `comment` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '备注',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ga_configs
-- ----------------------------
INSERT INTO `ga_configs` VALUES (1, 'TESTSTR', '\"http:\\/\\/127.0.0.1:8000\\/admin\\/setting?active=TestStr\"', 'APP_URL', '2019-12-10 06:30:12', '2019-12-12 02:09:54');
INSERT INTO `ga_configs` VALUES (7, 'TESTARR', '{\"cmd\":\"index.init\",\"data\":\"1\"}', '测试配置数组', '2019-12-12 02:17:51', '2019-12-12 02:29:58');

-- ----------------------------
-- Table structure for ga_failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `ga_failed_jobs`;
CREATE TABLE `ga_failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ga_migrations
-- ----------------------------
DROP TABLE IF EXISTS `ga_migrations`;
CREATE TABLE `ga_migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ga_migrations
-- ----------------------------
INSERT INTO `ga_migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `ga_migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `ga_migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `ga_migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `ga_migrations` VALUES (5, '2019_12_10_015315_create_config_table', 2);
INSERT INTO `ga_migrations` VALUES (6, '2019_12_10_020631_add_user_table', 3);

-- ----------------------------
-- Table structure for ga_password_resets
-- ----------------------------
DROP TABLE IF EXISTS `ga_password_resets`;
CREATE TABLE `ga_password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `ga_password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ga_users
-- ----------------------------
DROP TABLE IF EXISTS `ga_users`;
CREATE TABLE `ga_users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '头像',
  `mobile` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '手机号码',
  `gender` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '性别 0-保密 1-男 2-女',
  `joinip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '注册ip',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态 0-删除 1-正常 2-禁用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ga_users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ga_users
-- ----------------------------
INSERT INTO `ga_users` VALUES (1, 'user', 'user@qq.com', '2019-12-10 03:21:32', '$2y$10$ZrGCkbRik/AhXe6StHvDuuGIkfaxD.Tk5i8R3Yb.udQQZZDj8qDum', NULL, '2019-12-10 02:04:35', '2019-12-10 03:58:07', 'images/990be8044fd6754234f01573d8e444c9.jpg', 15177699092, 0, '127.0.0.1', 1);

SET FOREIGN_KEY_CHECKS = 1;
