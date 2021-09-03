/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1_3306
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3306
 Source Schema         : laravel_cms

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 03/09/2021 10:51:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lv_admin_logs
-- ----------------------------
DROP TABLE IF EXISTS `lv_admin_logs`;
CREATE TABLE `lv_admin_logs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL DEFAULT 0 COMMENT '创建者',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '日志类型',
  `ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'ip地址',
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '请求url',
  `method` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '请求方式',
  `param` json NOT NULL COMMENT '请求参数',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_admin_id`(`admin_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lv_admin_logs
-- ----------------------------
INSERT INTO `lv_admin_logs` VALUES (1, 1, 1, '127.0.0.1', 'admin/login', 'POST', '{\"_url\": \"/admin/login\", \"code\": \"mhzh\", \"password\": \"123456\", \"username\": \"admin\"}', '2021-05-28 08:37:59', NULL);
INSERT INTO `lv_admin_logs` VALUES (2, 1, 1, '127.0.0.1', 'admin/login', 'POST', '{\"_url\": \"/admin/login\", \"code\": \"ppc3\", \"password\": \"123456\", \"username\": \"admin\"}', '2021-08-06 08:33:10', NULL);
INSERT INTO `lv_admin_logs` VALUES (3, 1, 1, '127.0.0.1', 'admin/signInadmin.sign.in|', 'POST', '{\"_url\": \"/admin/signIn\", \"code\": \"dpma\", \"password\": \"123456\", \"username\": \"admin\"}', '2021-08-10 06:17:55', NULL);
INSERT INTO `lv_admin_logs` VALUES (4, 1, 1, '127.0.0.1', 'admin/signInadmin.sign.in|', 'POST', '{\"_url\": \"/admin/signIn\", \"code\": \"mhby\", \"password\": \"123456\", \"username\": \"admin\"}', '2021-08-10 09:27:42', NULL);
INSERT INTO `lv_admin_logs` VALUES (5, 1, 2, '127.0.0.1', 'admin/adminadmin.store|', 'POST', '{\"_url\": \"/admin/admin\", \"email\": \"123456@qq.com\", \"mobile\": null, \"role_id\": [\"1\"], \"password\": \"123456\", \"username\": \"test\", \"password_confirmation\": \"123456\"}', '2021-08-10 09:28:38', NULL);
INSERT INTO `lv_admin_logs` VALUES (6, 1, 2, '127.0.0.1', 'admin/adminadmin.store|', 'POST', '{\"_url\": \"/admin/admin\", \"email\": \"123456@qq.com\", \"mobile\": null, \"role_id\": [\"1\"], \"password\": \"123456\", \"username\": \"test\", \"password_confirmation\": \"123456\"}', '2021-08-10 09:28:49', NULL);
INSERT INTO `lv_admin_logs` VALUES (7, 1, 2, '127.0.0.1', 'admin/adminadmin.store|', 'POST', '{\"_url\": \"/admin/admin\", \"email\": \"123456@qq.com\", \"mobile\": null, \"role_id\": [\"1\"], \"password\": \"123456\", \"username\": \"test\", \"password_confirmation\": \"123456\"}', '2021-08-10 09:30:21', NULL);
INSERT INTO `lv_admin_logs` VALUES (8, 1, 2, '127.0.0.1', 'admin/adminadmin.store|', 'POST', '{\"_url\": \"/admin/admin\", \"email\": \"123456@qq.com\", \"mobile\": null, \"role_id\": [\"1\"], \"password\": \"123456\", \"username\": \"test\", \"password_confirmation\": \"123456\"}', '2021-08-10 09:40:48', NULL);
INSERT INTO `lv_admin_logs` VALUES (9, 1, 2, '127.0.0.1', 'admin/adminadmin.store|', 'POST', '{\"_url\": \"/admin/admin\", \"email\": \"123456@qq.com\", \"mobile\": null, \"role_id\": [\"1\"], \"password\": \"123456\", \"username\": \"test\", \"password_confirmation\": \"123456\"}', '2021-08-10 09:41:34', NULL);
INSERT INTO `lv_admin_logs` VALUES (10, 1, 2, '127.0.0.1', 'admin/adminadmin.store|', 'POST', '{\"_url\": \"/admin/admin\", \"email\": null, \"mobile\": null, \"password\": \"dd\", \"username\": \"dd\", \"password_confirmation\": \"ddd\"}', '2021-08-10 09:42:31', NULL);
INSERT INTO `lv_admin_logs` VALUES (11, 1, 2, '127.0.0.1', 'admin/adminadmin.store|', 'POST', '{\"_url\": \"/admin/admin\", \"email\": null, \"mobile\": null, \"role_id\": [\"1\"], \"password\": \"dd\", \"username\": \"dd\", \"password_confirmation\": \"ddd\"}', '2021-08-10 09:42:35', NULL);
INSERT INTO `lv_admin_logs` VALUES (12, 1, 2, '127.0.0.1', 'admin/adminadmin.store|', 'POST', '{\"_url\": \"/admin/admin\", \"email\": \"dddd@qq.com\", \"mobile\": null, \"role_id\": [\"1\"], \"password\": \"123456\", \"username\": \"dddd\", \"password_confirmation\": \"123456\"}', '2021-08-10 09:47:38', NULL);
INSERT INTO `lv_admin_logs` VALUES (13, 1, 2, '127.0.0.1', 'admin/adminadmin.store|', 'POST', '{\"_url\": \"/admin/admin\", \"email\": \"kkkk@qq.com\", \"mobile\": \"18823455695\", \"role_id\": [\"1\"], \"password\": \"123456\", \"username\": \"kkkk\", \"password_confirmation\": \"123456\"}', '2021-08-10 09:48:50', NULL);
INSERT INTO `lv_admin_logs` VALUES (14, 1, 2, '127.0.0.1', 'admin/adminadmin.store|', 'POST', '{\"_url\": \"/admin/admin\", \"email\": \"kkkk@qq.com\", \"mobile\": \"18823455695\", \"role_id\": [\"1\"], \"password\": \"123456\", \"username\": \"kkkk\", \"password_confirmation\": \"123456\"}', '2021-08-10 09:49:56', NULL);
INSERT INTO `lv_admin_logs` VALUES (15, 1, 2, '127.0.0.1', 'admin/adminadmin.store|', 'POST', '{\"_url\": \"/admin/admin\", \"email\": \"ssss@qq.com\", \"mobile\": null, \"role_id\": [\"1\"], \"password\": \"123456\", \"username\": \"ssss\", \"password_confirmation\": \"123456\"}', '2021-08-10 09:51:31', NULL);
INSERT INTO `lv_admin_logs` VALUES (16, 1, 2, '127.0.0.1', 'admin/adminadmin.store|', 'POST', '{\"_url\": \"/admin/admin\", \"email\": \"aaaa@qq.com\", \"mobile\": null, \"role_id\": [\"1\"], \"password\": \"123456\", \"username\": \"aaaa\", \"password_confirmation\": \"123456\"}', '2021-08-10 09:54:29', NULL);
INSERT INTO `lv_admin_logs` VALUES (17, 1, 1, '127.0.0.1', 'admin/signInadmin.sign.in|', 'POST', '{\"_url\": \"/admin/signIn\", \"code\": \"hqgc\", \"password\": \"123456\", \"username\": \"admin\"}', '2021-08-11 02:42:37', NULL);
INSERT INTO `lv_admin_logs` VALUES (18, 1, 1, '127.0.0.1', 'admin/signInadmin.sign.in|', 'POST', '{\"code\": \"qzqd\", \"password\": \"123456\", \"username\": \"admin\"}', '2021-08-12 02:56:05', NULL);
INSERT INTO `lv_admin_logs` VALUES (19, 1, 1, '127.0.0.1', 'admin/signInadmin.sign.in|', 'POST', '{\"code\": \"rghd\", \"password\": \"123456\", \"username\": \"admin\"}', '2021-08-12 06:13:12', NULL);
INSERT INTO `lv_admin_logs` VALUES (20, 1, 1, '127.0.0.1', 'admin/signInadmin.sign.in|', 'POST', '{\"code\": \"hy3r\", \"password\": \"123456\", \"username\": \"admin\"}', '2021-08-12 07:01:57', NULL);
INSERT INTO `lv_admin_logs` VALUES (21, 1, 1, '127.0.0.1', 'admin/signInadmin.sign.in|', 'POST', '{\"code\": \"c6cf\", \"password\": \"123456\", \"username\": \"admin\"}', '2021-08-12 07:07:59', NULL);
INSERT INTO `lv_admin_logs` VALUES (22, 1, 1, '127.0.0.1', 'admin/signInadmin.sign.in|', 'POST', '{\"code\": \"gbqf\", \"password\": \"123456\", \"username\": \"admin\"}', '2021-08-13 02:17:12', NULL);
INSERT INTO `lv_admin_logs` VALUES (23, 1, 1, '127.0.0.1', 'admin/signInadmin.sign.in|', 'POST', '{\"code\": \"xn7z\", \"password\": \"123456\", \"username\": \"admin\"}', '2021-08-13 06:06:36', NULL);
INSERT INTO `lv_admin_logs` VALUES (24, 1, 1, '127.0.0.1', 'admin/signInadmin.sign.in|', 'POST', '{\"code\": \"xhbe\", \"password\": \"123456\", \"username\": \"admin\"}', '2021-08-31 05:49:02', NULL);
INSERT INTO `lv_admin_logs` VALUES (25, 1, 2, '127.0.0.1', 'admin/admin/5admin.admin.update|', 'PUT', '{\"email\": \"kkkk@qq.com\", \"mobile\": \"18823455695\", \"role_id\": [\"1\"], \"username\": \"kkkkddd\"}', '2021-08-31 06:26:30', NULL);
INSERT INTO `lv_admin_logs` VALUES (26, 1, 2, '127.0.0.1', 'admin/admin/5admin.admin.update|', 'PUT', '{\"email\": \"kkkk@qq.com\", \"mobile\": \"18823455695哒哒哒哒哒哒多多多多多多多多多多\", \"role_id\": [\"1\"], \"username\": \"kkkkddd\"}', '2021-08-31 06:58:29', NULL);
INSERT INTO `lv_admin_logs` VALUES (27, 1, 2, '127.0.0.1', 'admin/admin/5admin.admin.destroy|', 'DELETE', '[]', '2021-08-31 06:58:40', NULL);
INSERT INTO `lv_admin_logs` VALUES (28, 1, 2, '127.0.0.1', 'admin/admin/3admin.admin.active|', 'PATCH', '[]', '2021-08-31 07:28:06', NULL);
INSERT INTO `lv_admin_logs` VALUES (29, 1, 2, '127.0.0.1', 'admin/admin/3admin.admin.active|', 'PATCH', '[]', '2021-08-31 07:28:08', NULL);
INSERT INTO `lv_admin_logs` VALUES (30, 1, 1, '127.0.0.1', 'admin/signInadmin.sign.in|', 'POST', '{\"code\": \"tg8h\", \"password\": \"123456\", \"username\": \"admin\"}', '2021-09-01 06:02:59', NULL);
INSERT INTO `lv_admin_logs` VALUES (31, 1, 2, '127.0.0.1', 'admin/rule/25admin.rule.update|', 'PUT', '{\"pid\": \"0\", \"href\": \"45645635\", \"icon\": \"sdsds\", \"rule\": \"admin.sds.sdsfdd\", \"type\": \"1\", \"level\": \"1\", \"title\": \"哈哈哈\"}', '2021-09-01 06:25:12', NULL);
INSERT INTO `lv_admin_logs` VALUES (32, 1, 2, '127.0.0.1', 'admin/rule/25admin.rule.update|', 'PUT', '{\"pid\": \"0\", \"href\": null, \"icon\": \"sdsds\", \"rule\": \"admin.sds.sdsfdd\", \"type\": \"0\", \"level\": \"1\", \"title\": \"哈哈哈\"}', '2021-09-01 06:25:21', NULL);
INSERT INTO `lv_admin_logs` VALUES (33, 1, 2, '127.0.0.1', 'admin/rule/25admin.rule.destroy|', 'DELETE', '[]', '2021-09-01 06:30:10', NULL);
INSERT INTO `lv_admin_logs` VALUES (34, 1, 2, '127.0.0.1', 'admin/rule/27admin.rule.destroy|', 'DELETE', '[]', '2021-09-01 06:30:14', NULL);
INSERT INTO `lv_admin_logs` VALUES (35, 1, 2, '127.0.0.1', 'admin/rule/26admin.rule.destroy|', 'DELETE', '[]', '2021-09-01 06:30:19', NULL);
INSERT INTO `lv_admin_logs` VALUES (36, 1, 2, '127.0.0.1', 'admin/rule/23admin.rule.update|', 'PATCH', '{\"sort\": \"49\"}', '2021-09-01 07:32:13', NULL);
INSERT INTO `lv_admin_logs` VALUES (37, 1, 2, '127.0.0.1', 'admin/role/1admin.role.update|', 'PUT', '{\"name\": \"超级管理员\"}', '2021-09-01 08:33:29', NULL);
INSERT INTO `lv_admin_logs` VALUES (38, 1, 2, '127.0.0.1', 'admin/roleadmin.role.store|', 'POST', '{\"name\": \"搜索\"}', '2021-09-01 08:35:22', NULL);
INSERT INTO `lv_admin_logs` VALUES (39, 1, 2, '127.0.0.1', 'admin/roleadmin.role.store|', 'POST', '{\"name\": \"搜索\"}', '2021-09-01 08:35:27', NULL);
INSERT INTO `lv_admin_logs` VALUES (40, 1, 2, '127.0.0.1', 'admin/role/3admin.role.update|', 'PUT', '{\"name\": \"搜索\"}', '2021-09-01 08:35:32', NULL);
INSERT INTO `lv_admin_logs` VALUES (41, 1, 2, '127.0.0.1', 'admin/role/1/ruleadmin.role.setted|', 'PATCH', '{\"rules\": [\"23\", \"24\", \"3\", \"4\", \"2\", \"5\", \"6\", \"7\", \"8\", \"9\", \"22\", \"10\", \"11\", \"12\", \"13\", \"14\", \"15\", \"28\", \"16\", \"17\", \"18\", \"19\", \"20\", \"21\"]}', '2021-09-01 10:22:02', NULL);
INSERT INTO `lv_admin_logs` VALUES (42, 1, 2, '127.0.0.1', 'admin/role/3/ruleadmin.role.setted|', 'PATCH', '{\"rules\": [\"23\", \"24\"]}', '2021-09-01 10:22:10', NULL);
INSERT INTO `lv_admin_logs` VALUES (43, 1, 2, '127.0.0.1', 'admin/role/3/ruleadmin.role.setted|', 'PATCH', '{\"rules\": [\"23\", \"24\", \"3\", \"16\", \"17\", \"18\", \"19\", \"20\", \"21\"]}', '2021-09-01 10:22:15', NULL);
INSERT INTO `lv_admin_logs` VALUES (44, 1, 1, '127.0.0.1', 'admin/signInadmin.sign.in|', 'POST', '{\"code\": \"pnfu\", \"password\": \"123456\", \"username\": \"admin\"}', '2021-09-02 01:38:54', NULL);
INSERT INTO `lv_admin_logs` VALUES (45, 1, 2, '127.0.0.1', 'admin/role/3admin.role.destroy|', 'DELETE', '[]', '2021-09-02 01:43:04', NULL);
INSERT INTO `lv_admin_logs` VALUES (46, 1, 1, '127.0.0.1', 'admin/signIn', 'POST', '{\"code\": \"ybeh\", \"password\": \"123456\", \"username\": \"admin\"}', '2021-09-02 09:00:48', NULL);

-- ----------------------------
-- Table structure for lv_admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `lv_admin_roles`;
CREATE TABLE `lv_admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_role_id_rule_id`(`admin_id`, `role_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of lv_admin_roles
-- ----------------------------
INSERT INTO `lv_admin_roles` VALUES (1, 1, 1, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_admin_roles` VALUES (2, 2, 1, NULL, NULL);
INSERT INTO `lv_admin_roles` VALUES (3, 3, 1, NULL, NULL);

-- ----------------------------
-- Table structure for lv_admins
-- ----------------------------
DROP TABLE IF EXISTS `lv_admins`;
CREATE TABLE `lv_admins`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `mobile` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '登录令牌',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '账号状态',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lv_admins
-- ----------------------------
INSERT INTO `lv_admins` VALUES (1, 'admin', '$2y$12$rQdJekLHMNPAEoDICNvb.Or0hS/NBNCMexB5D0vEqHFrg4dKpu/M6', '15011111111', '123456@qq1.com', NULL, 1, '2021-05-28 08:37:38', '2021-08-31 07:27:59');
INSERT INTO `lv_admins` VALUES (2, 'test', '$2y$12$DijRpj5XGy7BUDAjqkVvv.h.i3QNAxY6PI1f1uUI/5GHTpCupTAdG', '', '123456@qq.com', NULL, 1, '2021-08-10 09:41:34', '2021-08-10 09:41:34');
INSERT INTO `lv_admins` VALUES (3, 'dddd', '$2y$12$unkToFR6K1uTCfLLrqCKS.tSuctaq4KSGjCTCFXQfCEJDJ8nxtA7C', '', 'dddd@qq.com', NULL, 1, '2021-08-10 09:47:38', '2021-08-31 07:28:08');

-- ----------------------------
-- Table structure for lv_role_rules
-- ----------------------------
DROP TABLE IF EXISTS `lv_role_rules`;
CREATE TABLE `lv_role_rules`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `rule_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_role_id_rule_id`(`role_id`, `rule_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of lv_role_rules
-- ----------------------------
INSERT INTO `lv_role_rules` VALUES (25, 1, 28, NULL, NULL);
INSERT INTO `lv_role_rules` VALUES (2, 1, 2, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (3, 1, 3, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (4, 1, 4, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (5, 1, 5, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (6, 1, 6, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (7, 1, 7, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (8, 1, 8, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (9, 1, 9, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (10, 1, 10, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (11, 1, 11, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (12, 1, 12, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (13, 1, 13, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (14, 1, 14, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (15, 1, 15, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (16, 1, 16, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (17, 1, 17, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (18, 1, 18, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (19, 1, 19, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (20, 1, 20, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (21, 1, 21, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (22, 1, 22, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (23, 1, 23, '2021-05-28 08:37:38', '2021-05-28 08:37:38');
INSERT INTO `lv_role_rules` VALUES (24, 1, 24, '2021-05-28 08:37:38', '2021-05-28 08:37:38');

-- ----------------------------
-- Table structure for lv_roles
-- ----------------------------
DROP TABLE IF EXISTS `lv_roles`;
CREATE TABLE `lv_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户组名',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lv_roles
-- ----------------------------
INSERT INTO `lv_roles` VALUES (1, '超级管理员', '2021-05-28 08:37:38', '2021-05-28 08:37:38');

-- ----------------------------
-- Table structure for lv_rules
-- ----------------------------
DROP TABLE IF EXISTS `lv_rules`;
CREATE TABLE `lv_rules`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '权限菜单名称',
  `href` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '链接url',
  `rule` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '控制器方法',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '父级id',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '类型:0仅权限,1菜单和权限',
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图标',
  `sort` smallint(6) NOT NULL DEFAULT 0 COMMENT '排序',
  `islog` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否需要记录日志:0不需要,1需要',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lv_rules
-- ----------------------------
INSERT INTO `lv_rules` VALUES (2, '修改密码', '', 'admin.admin.safe', 4, 0, 3, '', 50, 1, NULL, '2021-09-01 08:02:40');
INSERT INTO `lv_rules` VALUES (3, '权限管理', NULL, NULL, 0, 1, 1, 'layui-icon-vercode', 51, 0, NULL, '2021-09-01 08:02:26');
INSERT INTO `lv_rules` VALUES (4, '管理员', '/admin/admin', 'admin.admin.index', 3, 1, 2, NULL, 50, 0, NULL, NULL);
INSERT INTO `lv_rules` VALUES (5, '添加管理员页面', NULL, 'admin.admin.create', 4, 0, 3, NULL, 50, 0, NULL, NULL);
INSERT INTO `lv_rules` VALUES (6, '添加管理员', NULL, 'admin.admin.store', 4, 0, 3, NULL, 50, 1, NULL, NULL);
INSERT INTO `lv_rules` VALUES (7, '禁用管理员', NULL, 'admin.admin.active', 4, 0, 3, NULL, 50, 1, NULL, NULL);
INSERT INTO `lv_rules` VALUES (8, '编辑管理员页面', NULL, 'admin.admin.edit', 4, 0, 3, NULL, 50, 1, NULL, NULL);
INSERT INTO `lv_rules` VALUES (9, '编辑管理员', NULL, 'admin.admin.update', 4, 0, 3, NULL, 50, 1, NULL, NULL);
INSERT INTO `lv_rules` VALUES (10, '权限列表', '/admin/rule', 'admin.rule.index', 3, 1, 2, NULL, 50, 0, NULL, NULL);
INSERT INTO `lv_rules` VALUES (11, '添加权限页面', NULL, 'admin.rule.create', 10, 0, 3, NULL, 50, 1, NULL, NULL);
INSERT INTO `lv_rules` VALUES (12, '添加权限', NULL, 'admin.rule.store', 10, 0, 3, NULL, 50, 1, NULL, NULL);
INSERT INTO `lv_rules` VALUES (13, '编辑权限页面', NULL, 'admin.rule.edit', 10, 0, 3, NULL, 50, 1, NULL, NULL);
INSERT INTO `lv_rules` VALUES (14, '编辑权限', NULL, 'admin.rule.update', 10, 0, 3, NULL, 50, 1, NULL, NULL);
INSERT INTO `lv_rules` VALUES (15, '删除权限', NULL, 'admin.rule.destroy', 10, 0, 3, NULL, 50, 1, NULL, NULL);
INSERT INTO `lv_rules` VALUES (16, '角色列表', '/admin/role', 'admin.role.index', 3, 1, 2, NULL, 50, 0, NULL, NULL);
INSERT INTO `lv_rules` VALUES (17, '添加角色', NULL, 'admin.role.store', 16, 0, 3, NULL, 50, 1, NULL, NULL);
INSERT INTO `lv_rules` VALUES (18, '编辑角色', NULL, 'admin.role.update', 16, 0, 3, NULL, 50, 1, NULL, NULL);
INSERT INTO `lv_rules` VALUES (19, '删除角色', NULL, 'admin.role.destroy', 16, 0, 3, NULL, 50, 1, NULL, NULL);
INSERT INTO `lv_rules` VALUES (20, '配置权限页面', NULL, 'admin.role.set', 16, 0, 3, NULL, 50, 1, NULL, NULL);
INSERT INTO `lv_rules` VALUES (21, '配置权限', NULL, 'admin.role.setted', 16, 0, 3, NULL, 50, 1, NULL, NULL);
INSERT INTO `lv_rules` VALUES (22, '删除管理员', NULL, 'admin.admin.destroy', 4, 0, 3, NULL, 50, 1, NULL, NULL);
INSERT INTO `lv_rules` VALUES (23, '系统管理', NULL, NULL, 0, 1, 1, 'layui-icon-set', 50, 0, NULL, NULL);
INSERT INTO `lv_rules` VALUES (24, '管理员日志', '/admin/system/adminlog', 'admin.admin.adminlog', 23, 1, 2, NULL, 50, 0, NULL, NULL);
INSERT INTO `lv_rules` VALUES (28, '更新记录日志状态', '', 'admin.rule.islog', 10, 0, 3, '', 50, 1, '2021-08-13 06:09:03', '2021-09-02 01:42:31');

SET FOREIGN_KEY_CHECKS = 1;
