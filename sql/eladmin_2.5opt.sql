/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : eladmin

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 22/04/2020 10:11:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alipay_config
-- ----------------------------
DROP TABLE IF EXISTS `alipay_config`;
CREATE TABLE `alipay_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `app_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用ID',
  `charset` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `format` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型 固定格式json',
  `gateway_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网关地址',
  `notify_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异步回调',
  `private_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '私钥',
  `public_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公钥',
  `return_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回调地址',
  `sign_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '签名方式',
  `sys_service_provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商户号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of alipay_config
-- ----------------------------
INSERT INTO `alipay_config` VALUES (1, '2016091700532697', 'utf-8', 'JSON', 'https://openapi.alipaydev.com/gateway.do', 'http://api.auauz.net/api/aliPay/notify', 'MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC5js8sInU10AJ0cAQ8UMMyXrQ+oHZEkVt5lBwsStmTJ7YikVYgbskx1YYEXTojRsWCb+SH/kDmDU4pK/u91SJ4KFCRMF2411piYuXU/jF96zKrADznYh/zAraqT6hvAIVtQAlMHN53nx16rLzZ/8jDEkaSwT7+HvHiS+7sxSojnu/3oV7BtgISoUNstmSe8WpWHOaWv19xyS+Mce9MY4BfseFhzTICUymUQdd/8hXA28/H6osUfAgsnxAKv7Wil3aJSgaJczWuflYOve0dJ3InZkhw5Cvr0atwpk8YKBQjy5CdkoHqvkOcIB+cYHXJKzOE5tqU7inSwVbHzOLQ3XbnAgMBAAECggEAVJp5eT0Ixg1eYSqFs9568WdetUNCSUchNxDBu6wxAbhUgfRUGZuJnnAll63OCTGGck+EGkFh48JjRcBpGoeoHLL88QXlZZbC/iLrea6gcDIhuvfzzOffe1RcZtDFEj9hlotg8dQj1tS0gy9pN9g4+EBH7zeu+fyv+qb2e/v1l6FkISXUjpkD7RLQr3ykjiiEw9BpeKb7j5s7Kdx1NNIzhkcQKNqlk8JrTGDNInbDM6inZfwwIO2R1DHinwdfKWkvOTODTYa2MoAvVMFT9Bec9FbLpoWp7ogv1JMV9svgrcF9XLzANZ/OQvkbe9TV9GWYvIbxN6qwQioKCWO4GPnCAQKBgQDgW5MgfhX8yjXqoaUy/d1VjI8dHeIyw8d+OBAYwaxRSlCfyQ+tieWcR2HdTzPca0T0GkWcKZm0ei5xRURgxt4DUDLXNh26HG0qObbtLJdu/AuBUuCqgOiLqJ2f1uIbrz6OZUHns+bT/jGW2Ws8+C13zTCZkZt9CaQsrp3QOGDx5wKBgQDTul39hp3ZPwGNFeZdkGoUoViOSd5Lhowd5wYMGAEXWRLlU8z+smT5v0POz9JnIbCRchIY2FAPKRdVTICzmPk2EPJFxYTcwaNbVqL6lN7J2IlXXMiit5QbiLauo55w7plwV6LQmKm9KV7JsZs5XwqF7CEovI7GevFzyD3w+uizAQKBgC3LY1eRhOlpWOIAhpjG6qOoohmeXOphvdmMlfSHq6WYFqbWwmV4rS5d/6LNpNdL6fItXqIGd8I34jzql49taCmi+A2nlR/E559j0mvM20gjGDIYeZUz5MOE8k+K6/IcrhcgofgqZ2ZED1ksHdB/E8DNWCswZl16V1FrfvjeWSNnAoGAMrBplCrIW5xz+J0Hm9rZKrs+AkK5D4fUv8vxbK/KgxZ2KaUYbNm0xv39c+PZUYuFRCz1HDGdaSPDTE6WeWjkMQd5mS6ikl9hhpqFRkyh0d0fdGToO9yLftQKOGE/q3XUEktI1XvXF0xyPwNgUCnq0QkpHyGVZPtGFxwXiDvpvgECgYA5PoB+nY8iDiRaJNko9w0hL4AeKogwf+4TbCw+KWVEn6jhuJa4LFTdSqp89PktQaoVpwv92el/AhYjWOl/jVCm122f9b7GyoelbjMNolToDwe5pF5RnSpEuDdLy9MfE8LnE3PlbE7E5BipQ3UjSebkgNboLHH/lNZA5qvEtvbfvQ==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAut9evKRuHJ/2QNfDlLwvN/S8l9hRAgPbb0u61bm4AtzaTGsLeMtScetxTWJnVvAVpMS9luhEJjt+Sbk5TNLArsgzzwARgaTKOLMT1TvWAK5EbHyI+eSrc3s7Awe1VYGwcubRFWDm16eQLv0k7iqiw+4mweHSz/wWyvBJVgwLoQ02btVtAQErCfSJCOmt0Q/oJQjj08YNRV4EKzB19+f5A+HQVAKy72dSybTzAK+3FPtTtNen/+b5wGeat7c32dhYHnGorPkPeXLtsqqUTp1su5fMfd4lElNdZaoCI7osZxWWUo17vBCZnyeXc9fk0qwD9mK6yRAxNbrY72Xx5VqIqwIDAQAB', 'http://api.auauz.net/api/aliPay/return', 'RSA2', '2088102176044281');

-- ----------------------------
-- Table structure for column_config
-- ----------------------------
DROP TABLE IF EXISTS `column_config`;
CREATE TABLE `column_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `column_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `column_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dict_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `form_show` bit(1) NULL DEFAULT NULL,
  `form_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `list_show` bit(1) NULL DEFAULT NULL,
  `not_null` bit(1) NULL DEFAULT NULL,
  `query_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date_annotation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 174 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of column_config
-- ----------------------------
INSERT INTO `column_config` VALUES (86, 'column_config', 'id', 'bigint', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (87, 'column_config', 'table_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (88, 'column_config', 'column_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (89, 'column_config', 'column_type', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (90, 'column_config', 'dict_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (91, 'column_config', 'extra', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (92, 'column_config', 'form_show', 'bit', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (93, 'column_config', 'form_type', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (94, 'column_config', 'key_type', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (95, 'column_config', 'list_show', 'bit', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (96, 'column_config', 'not_null', 'bit', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (97, 'column_config', 'query_type', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (98, 'column_config', 'remark', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (99, 'column_config', 'date_annotation', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (100, 'mnt_server', 'id', 'bigint', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, 'IP地址', NULL);
INSERT INTO `column_config` VALUES (101, 'mnt_server', 'account', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', 'Like', '账号', NULL);
INSERT INTO `column_config` VALUES (102, 'mnt_server', 'ip', 'varchar', 'user_status', '', b'1', NULL, '', b'1', b'0', NULL, 'IP地址', NULL);
INSERT INTO `column_config` VALUES (103, 'mnt_server', 'name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '名称', NULL);
INSERT INTO `column_config` VALUES (104, 'mnt_server', 'password', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '密码', NULL);
INSERT INTO `column_config` VALUES (105, 'mnt_server', 'port', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '端口', NULL);
INSERT INTO `column_config` VALUES (106, 'mnt_server', 'create_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (107, 'user', 'id', 'bigint', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, 'ID', NULL);
INSERT INTO `column_config` VALUES (108, 'user', 'avatar_id', 'bigint', NULL, '', b'1', NULL, 'MUL', b'1', b'0', NULL, '头像', NULL);
INSERT INTO `column_config` VALUES (109, 'user', 'email', 'varchar', NULL, '', b'1', NULL, 'UNI', b'1', b'0', NULL, '邮箱', NULL);
INSERT INTO `column_config` VALUES (110, 'user', 'enabled', 'bigint', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '状态：1启用、0禁用', NULL);
INSERT INTO `column_config` VALUES (111, 'user', 'password', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '密码', NULL);
INSERT INTO `column_config` VALUES (112, 'user', 'username', 'varchar', NULL, '', b'1', NULL, 'UNI', b'1', b'0', NULL, '用户名', NULL);
INSERT INTO `column_config` VALUES (113, 'user', 'dept_id', 'bigint', NULL, '', b'1', NULL, 'MUL', b'1', b'0', NULL, '部门名称', NULL);
INSERT INTO `column_config` VALUES (114, 'user', 'phone', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '手机号码', NULL);
INSERT INTO `column_config` VALUES (115, 'user', 'job_id', 'bigint', NULL, '', b'1', NULL, 'MUL', b'1', b'0', NULL, '岗位名称', NULL);
INSERT INTO `column_config` VALUES (116, 'user', 'create_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '创建日期', NULL);
INSERT INTO `column_config` VALUES (117, 'user', 'last_password_reset_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '最后修改密码的日期', NULL);
INSERT INTO `column_config` VALUES (118, 'user', 'nick_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (119, 'user', 'sex', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (120, 'role', 'id', 'bigint', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, 'ID', NULL);
INSERT INTO `column_config` VALUES (121, 'role', 'name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '名称', NULL);
INSERT INTO `column_config` VALUES (122, 'role', 'remark', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '备注', NULL);
INSERT INTO `column_config` VALUES (123, 'role', 'data_scope', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '数据权限', NULL);
INSERT INTO `column_config` VALUES (124, 'role', 'level', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '角色级别', NULL);
INSERT INTO `column_config` VALUES (125, 'role', 'create_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '创建日期', NULL);
INSERT INTO `column_config` VALUES (126, 'role', 'permission', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '功能权限', NULL);
INSERT INTO `column_config` VALUES (127, 'visits', 'id', 'bigint', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (128, 'visits', 'create_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (129, 'visits', 'date', 'varchar', NULL, '', b'1', NULL, 'UNI', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (130, 'visits', 'ip_counts', 'bigint', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (131, 'visits', 'pv_counts', 'bigint', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (132, 'visits', 'week_day', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (133, 'log', 'id', 'bigint', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (134, 'log', 'create_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '创建日期', NULL);
INSERT INTO `column_config` VALUES (135, 'log', 'description', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '描述', NULL);
INSERT INTO `column_config` VALUES (136, 'log', 'exception_detail', 'text', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '异常详情', NULL);
INSERT INTO `column_config` VALUES (137, 'log', 'log_type', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '日志类型', NULL);
INSERT INTO `column_config` VALUES (138, 'log', 'method', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '方法', NULL);
INSERT INTO `column_config` VALUES (139, 'log', 'params', 'text', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '参数', NULL);
INSERT INTO `column_config` VALUES (140, 'log', 'request_ip', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, 'ip', NULL);
INSERT INTO `column_config` VALUES (141, 'log', 'time', 'bigint', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '请求耗时', NULL);
INSERT INTO `column_config` VALUES (142, 'log', 'username', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '用户名', NULL);
INSERT INTO `column_config` VALUES (143, 'log', 'address', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '地址', NULL);
INSERT INTO `column_config` VALUES (144, 'log', 'browser', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '浏览器', NULL);
INSERT INTO `column_config` VALUES (145, 'job', 'id', 'bigint', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, 'ID', NULL);
INSERT INTO `column_config` VALUES (146, 'job', 'name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '岗位名称', NULL);
INSERT INTO `column_config` VALUES (147, 'job', 'enabled', 'bit', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '岗位状态', NULL);
INSERT INTO `column_config` VALUES (148, 'job', 'sort', 'bigint', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '岗位排序', NULL);
INSERT INTO `column_config` VALUES (149, 'job', 'dept_id', 'bigint', NULL, '', b'1', NULL, 'MUL', b'1', b'0', NULL, '部门ID', NULL);
INSERT INTO `column_config` VALUES (150, 'job', 'create_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '创建日期', NULL);
INSERT INTO `column_config` VALUES (151, 'hds_demo_book', 'book_id', 'int', NULL, '', b'1', NULL, 'PRI', b'1', b'1', NULL, '图书编号', NULL);
INSERT INTO `column_config` VALUES (152, 'hds_demo_book', 'book_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '图书名称', NULL);
INSERT INTO `column_config` VALUES (153, 'hds_demo_book', 'file_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '文件名称', NULL);
INSERT INTO `column_config` VALUES (154, 'hds_demo_book', 'sort_id', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '目录编号', NULL);
INSERT INTO `column_config` VALUES (155, 'hds_demo_book', 'order_no', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '排序号', NULL);
INSERT INTO `column_config` VALUES (156, 'hds_demo_plan', 'plan_id', 'varchar', NULL, '', b'1', NULL, 'PRI', b'1', b'1', NULL, '计划编号', NULL);
INSERT INTO `column_config` VALUES (157, 'hds_demo_plan', 'plan_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '计划名称', NULL);
INSERT INTO `column_config` VALUES (158, 'hds_demo_plan', 'create_org', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '创建机构', NULL);
INSERT INTO `column_config` VALUES (159, 'hds_demo_plan', 'plan_year', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '计划年度', NULL);
INSERT INTO `column_config` VALUES (160, 'hds_demo_plan', 'create_date', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '创建时间', NULL);
INSERT INTO `column_config` VALUES (161, 'hds_demo_plan', 'update_date', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '修改时间', NULL);
INSERT INTO `column_config` VALUES (162, 'hds_demo_plan', 'plan_type', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '计划类型', NULL);
INSERT INTO `column_config` VALUES (163, 'hds_demo_plan', 'plans_tatus', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '计划状态', NULL);
INSERT INTO `column_config` VALUES (164, 'hds_demo_plan', 'creator', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '编制人', NULL);
INSERT INTO `column_config` VALUES (165, 'demo_plan', 'id', 'varchar', NULL, '', b'1', NULL, 'PRI', b'1', b'1', NULL, '计划编号', NULL);
INSERT INTO `column_config` VALUES (166, 'demo_plan', 'name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '计划名称', NULL);
INSERT INTO `column_config` VALUES (167, 'demo_plan', 'create_org', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '创建机构', NULL);
INSERT INTO `column_config` VALUES (168, 'demo_plan', 'plan_year', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '计划年度', NULL);
INSERT INTO `column_config` VALUES (169, 'demo_plan', 'create_date', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '创建时间', NULL);
INSERT INTO `column_config` VALUES (170, 'demo_plan', 'update_date', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '修改时间', NULL);
INSERT INTO `column_config` VALUES (171, 'demo_plan', 'plan_type', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '计划类型', NULL);
INSERT INTO `column_config` VALUES (172, 'demo_plan', 'plans_tatus', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '计划状态', NULL);
INSERT INTO `column_config` VALUES (173, 'demo_plan', 'creator', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '编制人', NULL);

-- ----------------------------
-- Table structure for data_column
-- ----------------------------
DROP TABLE IF EXISTS `data_column`;
CREATE TABLE `data_column`  (
  `entity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_authority` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_sensitive` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_valid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `length` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `obj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `obj_prop` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `scale` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`entity`, `code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_column
-- ----------------------------
INSERT INTO `data_column` VALUES ('alipay_config', 'app_id', NULL, 'VARCHAR', '0', '1', '0', '1', 255, '应用ID', NULL, NULL, 0, 130);
INSERT INTO `data_column` VALUES ('alipay_config', 'charset', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '编码', NULL, NULL, 0, 140);
INSERT INTO `data_column` VALUES ('alipay_config', 'format', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '类型 固定格式json', NULL, NULL, 0, 150);
INSERT INTO `data_column` VALUES ('alipay_config', 'gateway_url', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '网关地址', NULL, NULL, 0, 160);
INSERT INTO `data_column` VALUES ('alipay_config', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, '主键', NULL, NULL, 0, 120);
INSERT INTO `data_column` VALUES ('alipay_config', 'notify_url', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '异步回调', NULL, NULL, 0, 170);
INSERT INTO `data_column` VALUES ('alipay_config', 'private_key', NULL, 'TEXT', '0', '0', '0', '1', 65535, '私钥', NULL, NULL, 0, 180);
INSERT INTO `data_column` VALUES ('alipay_config', 'public_key', NULL, 'TEXT', '0', '0', '0', '1', 65535, '公钥', NULL, NULL, 0, 190);
INSERT INTO `data_column` VALUES ('alipay_config', 'return_url', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '回调地址', NULL, NULL, 0, 200);
INSERT INTO `data_column` VALUES ('alipay_config', 'sign_type', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '签名方式', NULL, NULL, 0, 210);
INSERT INTO `data_column` VALUES ('alipay_config', 'sys_service_provider_id', NULL, 'VARCHAR', '0', '1', '0', '1', 255, '商户号', NULL, NULL, 0, 220);
INSERT INTO `data_column` VALUES ('column_config', 'column_name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'column_name', NULL, NULL, 0, 170);
INSERT INTO `data_column` VALUES ('column_config', 'column_type', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'column_type', NULL, NULL, 0, 180);
INSERT INTO `data_column` VALUES ('column_config', 'date_annotation', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'date_annotation', NULL, NULL, 0, 280);
INSERT INTO `data_column` VALUES ('column_config', 'dict_name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'dict_name', NULL, NULL, 0, 190);
INSERT INTO `data_column` VALUES ('column_config', 'extra', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'extra', NULL, NULL, 0, 200);
INSERT INTO `data_column` VALUES ('column_config', 'form_show', NULL, 'BIT', '0', '0', '0', '1', 1, 'form_show', NULL, NULL, 0, 210);
INSERT INTO `data_column` VALUES ('column_config', 'form_type', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'form_type', NULL, NULL, 0, 220);
INSERT INTO `data_column` VALUES ('column_config', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'id', NULL, NULL, 0, 150);
INSERT INTO `data_column` VALUES ('column_config', 'key_type', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'key_type', NULL, NULL, 0, 230);
INSERT INTO `data_column` VALUES ('column_config', 'list_show', NULL, 'BIT', '0', '0', '0', '1', 1, 'list_show', NULL, NULL, 0, 240);
INSERT INTO `data_column` VALUES ('column_config', 'not_null', NULL, 'BIT', '0', '0', '0', '1', 1, 'not_null', NULL, NULL, 0, 250);
INSERT INTO `data_column` VALUES ('column_config', 'query_type', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'query_type', NULL, NULL, 0, 260);
INSERT INTO `data_column` VALUES ('column_config', 'remark', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'remark', NULL, NULL, 0, 270);
INSERT INTO `data_column` VALUES ('column_config', 'table_name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'table_name', NULL, NULL, 0, 160);
INSERT INTO `data_column` VALUES ('data_column', 'code', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '字段名', NULL, NULL, 0, 300);
INSERT INTO `data_column` VALUES ('data_column', 'data_level', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '数据粒度', NULL, NULL, 0, 380);
INSERT INTO `data_column` VALUES ('data_column', 'data_type', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '数据类型', NULL, NULL, 0, 320);
INSERT INTO `data_column` VALUES ('data_column', 'entity', NULL, 'VARCHAR', '0', '0', '0', '1', 100, '元数据编号', NULL, NULL, 0, 290);
INSERT INTO `data_column` VALUES ('data_column', 'is_authority', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '权限字段', NULL, NULL, 0, 410);
INSERT INTO `data_column` VALUES ('data_column', 'is_key', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '是否主键', NULL, NULL, 0, 350);
INSERT INTO `data_column` VALUES ('data_column', 'is_sensitive', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '是否是敏感字段', NULL, NULL, 0, 390);
INSERT INTO `data_column` VALUES ('data_column', 'is_valid', NULL, 'VARCHAR', '0', '1', '0', '1', 50, '是否有效', NULL, NULL, 0, 420);
INSERT INTO `data_column` VALUES ('data_column', 'length', NULL, 'INT', '0', '0', '0', '1', 10, '字段长度', NULL, NULL, 0, 330);
INSERT INTO `data_column` VALUES ('data_column', 'name', NULL, 'VARCHAR', '0', '0', '0', '1', 200, '中文名', NULL, NULL, 0, 310);
INSERT INTO `data_column` VALUES ('data_column', 'obj', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '对象', NULL, NULL, 0, 360);
INSERT INTO `data_column` VALUES ('data_column', 'obj_prop', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '对象属性', NULL, NULL, 0, 370);
INSERT INTO `data_column` VALUES ('data_column', 'scale', NULL, 'INT', '0', '0', '0', '1', 10, '字段精度', NULL, NULL, 0, 340);
INSERT INTO `data_column` VALUES ('data_column', 'sort', NULL, 'INT', '0', '0', '0', '1', 10, '显示顺序', NULL, NULL, 0, 400);
INSERT INTO `data_column` VALUES ('data_entity', 'datasize', NULL, 'INT', '0', '0', '0', '1', 10, '数据量', NULL, NULL, 0, 160);
INSERT INTO `data_column` VALUES ('data_entity', 'id', NULL, 'VARCHAR', '0', '0', '0', '1', 100, '表名', NULL, NULL, 0, 130);
INSERT INTO `data_column` VALUES ('data_entity', 'name', NULL, 'VARCHAR', '0', '0', '0', '1', 100, '中文名', NULL, NULL, 0, 140);
INSERT INTO `data_column` VALUES ('data_entity', 'remark', NULL, 'VARCHAR', '0', '0', '0', '1', 200, '描述', NULL, NULL, 0, 150);
INSERT INTO `data_column` VALUES ('data_entity', 'sort', NULL, 'INT', '0', '0', '0', '1', 10, 'sort', NULL, NULL, 0, 110);
INSERT INTO `data_column` VALUES ('data_entity', 'source', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '来源', NULL, NULL, 0, 170);
INSERT INTO `data_column` VALUES ('demo_plan', 'create_date', NULL, 'DATETIME', '0', '0', '0', '1', 26, '创建时间', NULL, NULL, 0, 50);
INSERT INTO `data_column` VALUES ('demo_plan', 'create_org', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '创建机构', NULL, NULL, 0, 30);
INSERT INTO `data_column` VALUES ('demo_plan', 'creator', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '编制人', NULL, NULL, 0, 90);
INSERT INTO `data_column` VALUES ('demo_plan', 'id', NULL, 'VARCHAR', '0', '1', '0', '1', 50, '计划编号', NULL, NULL, 0, 10);
INSERT INTO `data_column` VALUES ('demo_plan', 'name', NULL, 'VARCHAR', '0', '0', '0', '1', 200, '计划名称', NULL, NULL, 0, 20);
INSERT INTO `data_column` VALUES ('demo_plan', 'plans_tatus', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '计划状态', NULL, NULL, 0, 80);
INSERT INTO `data_column` VALUES ('demo_plan', 'plan_type', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '计划类型', NULL, NULL, 0, 70);
INSERT INTO `data_column` VALUES ('demo_plan', 'plan_year', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '计划年度', NULL, NULL, 0, 40);
INSERT INTO `data_column` VALUES ('demo_plan', 'update_date', NULL, 'DATETIME', '0', '0', '0', '1', 26, '修改时间', NULL, NULL, 0, 60);
INSERT INTO `data_column` VALUES ('demo_plan_detail', 'create_date', NULL, 'DATETIME', '0', '0', '0', '1', 26, '创建时间', NULL, NULL, 0, 80);
INSERT INTO `data_column` VALUES ('demo_plan_detail', 'creator', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '创建人', NULL, NULL, 0, 70);
INSERT INTO `data_column` VALUES ('demo_plan_detail', 'detail_type', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '明细类型', NULL, NULL, 0, 40);
INSERT INTO `data_column` VALUES ('demo_plan_detail', 'execute_month', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '实施月份', NULL, NULL, 0, 50);
INSERT INTO `data_column` VALUES ('demo_plan_detail', 'execute_state', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '执行状态', NULL, NULL, 0, 60);
INSERT INTO `data_column` VALUES ('demo_plan_detail', 'id', NULL, 'VARCHAR', '0', '1', '0', '1', 50, '明细编号', NULL, NULL, 0, 20);
INSERT INTO `data_column` VALUES ('demo_plan_detail', 'name', NULL, 'VARCHAR', '0', '0', '0', '1', 200, '明细名称', NULL, NULL, 0, 30);
INSERT INTO `data_column` VALUES ('demo_plan_detail', 'plan_id', NULL, 'VARCHAR', '0', '1', '0', '1', 50, '计划编号', NULL, NULL, 0, 10);
INSERT INTO `data_column` VALUES ('demo_plan_detail', 'remark', NULL, 'VARCHAR', '0', '0', '0', '1', 200, '备注', NULL, NULL, 0, 100);
INSERT INTO `data_column` VALUES ('demo_plan_detail', 'update_date', NULL, 'DATETIME', '0', '0', '0', '1', 26, '修改时间', NULL, NULL, 0, 90);
INSERT INTO `data_column` VALUES ('dept', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, '创建日期', NULL, NULL, 0, 100);
INSERT INTO `data_column` VALUES ('dept', 'enabled', NULL, 'BIT', '0', '0', '0', '1', 1, '状态', NULL, NULL, 0, 90);
INSERT INTO `data_column` VALUES ('dept', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'ID', NULL, NULL, 0, 60);
INSERT INTO `data_column` VALUES ('dept', 'name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '名称', NULL, NULL, 0, 70);
INSERT INTO `data_column` VALUES ('dept', 'pid', NULL, 'BIGINT', '0', '1', '0', '1', 19, '上级部门', NULL, NULL, 0, 80);
INSERT INTO `data_column` VALUES ('dict', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, '创建日期', NULL, NULL, 0, 80);
INSERT INTO `data_column` VALUES ('dict', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'id', NULL, NULL, 0, 50);
INSERT INTO `data_column` VALUES ('dict', 'name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '字典名称', NULL, NULL, 0, 60);
INSERT INTO `data_column` VALUES ('dict', 'remark', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '描述', NULL, NULL, 0, 70);
INSERT INTO `data_column` VALUES ('dict_detail', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, '创建日期', NULL, NULL, 0, 120);
INSERT INTO `data_column` VALUES ('dict_detail', 'dict_id', NULL, 'BIGINT', '0', '1', '0', '1', 19, '字典id', NULL, NULL, 0, 110);
INSERT INTO `data_column` VALUES ('dict_detail', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'id', NULL, NULL, 0, 70);
INSERT INTO `data_column` VALUES ('dict_detail', 'label', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '字典标签', NULL, NULL, 0, 80);
INSERT INTO `data_column` VALUES ('dict_detail', 'sort', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '排序', NULL, NULL, 0, 100);
INSERT INTO `data_column` VALUES ('dict_detail', 'value', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '字典值', NULL, NULL, 0, 90);
INSERT INTO `data_column` VALUES ('email_config', 'from_user', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '收件人', NULL, NULL, 0, 80);
INSERT INTO `data_column` VALUES ('email_config', 'host', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '邮件服务器SMTP地址', NULL, NULL, 0, 90);
INSERT INTO `data_column` VALUES ('email_config', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'ID', NULL, NULL, 0, 70);
INSERT INTO `data_column` VALUES ('email_config', 'pass', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '密码', NULL, NULL, 0, 100);
INSERT INTO `data_column` VALUES ('email_config', 'port', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '端口', NULL, NULL, 0, 110);
INSERT INTO `data_column` VALUES ('email_config', 'user', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '发件者用户名', NULL, NULL, 0, 120);
INSERT INTO `data_column` VALUES ('gen_config', 'api_alias', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '接口名称', NULL, NULL, 0, 300);
INSERT INTO `data_column` VALUES ('gen_config', 'api_path', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '前端Api文件路径', NULL, NULL, 0, 280);
INSERT INTO `data_column` VALUES ('gen_config', 'author', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '作者', NULL, NULL, 0, 230);
INSERT INTO `data_column` VALUES ('gen_config', 'cover', NULL, 'BIT', '0', '0', '0', '1', 1, '是否覆盖', NULL, NULL, 0, 240);
INSERT INTO `data_column` VALUES ('gen_config', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'ID', NULL, NULL, 0, 210);
INSERT INTO `data_column` VALUES ('gen_config', 'module_name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '模块名称', NULL, NULL, 0, 250);
INSERT INTO `data_column` VALUES ('gen_config', 'pack', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '至于哪个包下', NULL, NULL, 0, 260);
INSERT INTO `data_column` VALUES ('gen_config', 'path', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '前端代码生成的路径', NULL, NULL, 0, 270);
INSERT INTO `data_column` VALUES ('gen_config', 'prefix', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '表前缀', NULL, NULL, 0, 290);
INSERT INTO `data_column` VALUES ('gen_config', 'table_name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '表名', NULL, NULL, 0, 220);
INSERT INTO `data_column` VALUES ('gen_custom', 'content', NULL, 'TEXT', '0', '0', '0', '1', 65535, '内容', NULL, NULL, 0, 90);
INSERT INTO `data_column` VALUES ('gen_custom', 'generate_cfg', NULL, 'TEXT', '0', '0', '0', '1', 65535, '代码生成设置', NULL, NULL, 0, 120);
INSERT INTO `data_column` VALUES ('gen_custom', 'id', NULL, 'VARCHAR', '0', '1', '0', '1', 50, '定制名称', NULL, NULL, 0, 70);
INSERT INTO `data_column` VALUES ('gen_custom', 'name', NULL, 'VARCHAR', '0', '0', '0', '1', 200, '描述', NULL, NULL, 0, 80);
INSERT INTO `data_column` VALUES ('gen_custom', 'params', NULL, 'TEXT', '0', '0', '0', '1', 65535, '页面参数', NULL, NULL, 0, 110);
INSERT INTO `data_column` VALUES ('gen_custom', 'template_id', NULL, 'VARCHAR', '0', '1', '0', '1', 50, '模板编号', NULL, NULL, 0, 100);
INSERT INTO `data_column` VALUES ('gen_module_config', 'content', NULL, 'TEXT', '0', '0', '0', '1', 65535, '内容', NULL, NULL, 0, 80);
INSERT INTO `data_column` VALUES ('gen_module_config', 'id', NULL, 'VARCHAR', '0', '1', '0', '1', 50, '名称', NULL, NULL, 0, 50);
INSERT INTO `data_column` VALUES ('gen_module_config', 'name', NULL, 'VARCHAR', '0', '0', '0', '1', 200, '描述', NULL, NULL, 0, 60);
INSERT INTO `data_column` VALUES ('gen_module_config', 'type', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '类型', NULL, NULL, 0, 70);
INSERT INTO `data_column` VALUES ('job', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, '创建日期', NULL, NULL, 0, 120);
INSERT INTO `data_column` VALUES ('job', 'dept_id', NULL, 'BIGINT', '0', '1', '0', '1', 19, '部门ID', NULL, NULL, 0, 110);
INSERT INTO `data_column` VALUES ('job', 'enabled', NULL, 'BIT', '0', '0', '0', '1', 1, '岗位状态', NULL, NULL, 0, 90);
INSERT INTO `data_column` VALUES ('job', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'ID', NULL, NULL, 0, 70);
INSERT INTO `data_column` VALUES ('job', 'name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '岗位名称', NULL, NULL, 0, 80);
INSERT INTO `data_column` VALUES ('job', 'sort', NULL, 'BIGINT', '0', '0', '0', '1', 19, '岗位排序', NULL, NULL, 0, 100);
INSERT INTO `data_column` VALUES ('local_storage', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, '创建日期', NULL, NULL, 0, 180);
INSERT INTO `data_column` VALUES ('local_storage', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'id', NULL, NULL, 0, 100);
INSERT INTO `data_column` VALUES ('local_storage', 'name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '文件名', NULL, NULL, 0, 120);
INSERT INTO `data_column` VALUES ('local_storage', 'operate', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '操作人', NULL, NULL, 0, 170);
INSERT INTO `data_column` VALUES ('local_storage', 'path', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '路径', NULL, NULL, 0, 140);
INSERT INTO `data_column` VALUES ('local_storage', 'real_name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '文件真实的名称', NULL, NULL, 0, 110);
INSERT INTO `data_column` VALUES ('local_storage', 'size', NULL, 'VARCHAR', '0', '0', '0', '1', 100, '大小', NULL, NULL, 0, 160);
INSERT INTO `data_column` VALUES ('local_storage', 'suffix', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '后缀', NULL, NULL, 0, 130);
INSERT INTO `data_column` VALUES ('local_storage', 'type', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '类型', NULL, NULL, 0, 150);
INSERT INTO `data_column` VALUES ('log', 'address', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '地址', NULL, NULL, 0, 230);
INSERT INTO `data_column` VALUES ('log', 'browser', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '浏览器', NULL, NULL, 0, 240);
INSERT INTO `data_column` VALUES ('log', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, '创建日期', NULL, NULL, 0, 140);
INSERT INTO `data_column` VALUES ('log', 'description', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '描述', NULL, NULL, 0, 150);
INSERT INTO `data_column` VALUES ('log', 'exception_detail', NULL, 'TEXT', '0', '0', '0', '1', 65535, '异常详情', NULL, NULL, 0, 160);
INSERT INTO `data_column` VALUES ('log', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'id', NULL, NULL, 0, 130);
INSERT INTO `data_column` VALUES ('log', 'log_type', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '日志类型', NULL, NULL, 0, 170);
INSERT INTO `data_column` VALUES ('log', 'method', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '方法', NULL, NULL, 0, 180);
INSERT INTO `data_column` VALUES ('log', 'params', NULL, 'TEXT', '0', '0', '0', '1', 65535, '参数', NULL, NULL, 0, 190);
INSERT INTO `data_column` VALUES ('log', 'request_ip', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'ip', NULL, NULL, 0, 200);
INSERT INTO `data_column` VALUES ('log', 'time', NULL, 'BIGINT', '0', '0', '0', '1', 19, '请求耗时', NULL, NULL, 0, 210);
INSERT INTO `data_column` VALUES ('log', 'username', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '用户名', NULL, NULL, 0, 220);
INSERT INTO `data_column` VALUES ('menu', 'cache', NULL, 'BIT', '0', '0', '0', '1', 1, '缓存', NULL, NULL, 0, 230);
INSERT INTO `data_column` VALUES ('menu', 'component', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '组件', NULL, NULL, 0, 180);
INSERT INTO `data_column` VALUES ('menu', 'component_name', NULL, 'VARCHAR', '0', '0', '0', '1', 20, '组件名称', NULL, NULL, 0, 250);
INSERT INTO `data_column` VALUES ('menu', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, '创建日期', NULL, NULL, 0, 260);
INSERT INTO `data_column` VALUES ('menu', 'hidden', NULL, 'BIT', '0', '0', '0', '1', 1, '隐藏', NULL, NULL, 0, 240);
INSERT INTO `data_column` VALUES ('menu', 'icon', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '图标', NULL, NULL, 0, 210);
INSERT INTO `data_column` VALUES ('menu', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'ID', NULL, NULL, 0, 150);
INSERT INTO `data_column` VALUES ('menu', 'i_frame', NULL, 'BIT', '0', '0', '0', '1', 1, '是否外链', NULL, NULL, 0, 160);
INSERT INTO `data_column` VALUES ('menu', 'name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '菜单名称', NULL, NULL, 0, 170);
INSERT INTO `data_column` VALUES ('menu', 'path', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '链接地址', NULL, NULL, 0, 220);
INSERT INTO `data_column` VALUES ('menu', 'permission', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '权限', NULL, NULL, 0, 270);
INSERT INTO `data_column` VALUES ('menu', 'pid', NULL, 'BIGINT', '0', '1', '0', '1', 19, '上级菜单ID', NULL, NULL, 0, 190);
INSERT INTO `data_column` VALUES ('menu', 'sort', NULL, 'BIGINT', '0', '0', '0', '1', 19, '排序', NULL, NULL, 0, 200);
INSERT INTO `data_column` VALUES ('menu', 'type', NULL, 'INT', '0', '0', '0', '1', 10, '类型', NULL, NULL, 0, 280);
INSERT INTO `data_column` VALUES ('mnt_app', 'backup_path', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '备份路径', NULL, NULL, 0, 230);
INSERT INTO `data_column` VALUES ('mnt_app', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, '创建日期', NULL, NULL, 0, 270);
INSERT INTO `data_column` VALUES ('mnt_app', 'deploy_path', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '部署路径', NULL, NULL, 0, 220);
INSERT INTO `data_column` VALUES ('mnt_app', 'deploy_script', NULL, 'VARCHAR', '0', '0', '0', '1', 4000, '部署脚本', NULL, NULL, 0, 260);
INSERT INTO `data_column` VALUES ('mnt_app', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, '应用ID', NULL, NULL, 0, 190);
INSERT INTO `data_column` VALUES ('mnt_app', 'name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '应用名称', NULL, NULL, 0, 200);
INSERT INTO `data_column` VALUES ('mnt_app', 'port', NULL, 'INT', '0', '0', '0', '1', 10, '应用端口', NULL, NULL, 0, 240);
INSERT INTO `data_column` VALUES ('mnt_app', 'start_script', NULL, 'VARCHAR', '0', '0', '0', '1', 4000, '启动脚本', NULL, NULL, 0, 250);
INSERT INTO `data_column` VALUES ('mnt_app', 'upload_path', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '上传目录', NULL, NULL, 0, 210);
INSERT INTO `data_column` VALUES ('mnt_database', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, 'create_time', NULL, NULL, 0, 110);
INSERT INTO `data_column` VALUES ('mnt_database', 'id', NULL, 'VARCHAR', '0', '1', '0', '1', 255, '编号', NULL, NULL, 0, 120);
INSERT INTO `data_column` VALUES ('mnt_database', 'jdbc_url', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'jdbc连接', NULL, NULL, 0, 140);
INSERT INTO `data_column` VALUES ('mnt_database', 'name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '名称', NULL, NULL, 0, 130);
INSERT INTO `data_column` VALUES ('mnt_database', 'pwd', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '密码', NULL, NULL, 0, 160);
INSERT INTO `data_column` VALUES ('mnt_database', 'user_name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '账号', NULL, NULL, 0, 150);
INSERT INTO `data_column` VALUES ('mnt_deploy', 'app_id', NULL, 'BIGINT', '0', '1', '0', '1', 19, '应用编号', NULL, NULL, 0, 80);
INSERT INTO `data_column` VALUES ('mnt_deploy', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, 'create_time', NULL, NULL, 0, 90);
INSERT INTO `data_column` VALUES ('mnt_deploy', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, '编号', NULL, NULL, 0, 70);
INSERT INTO `data_column` VALUES ('mnt_deploy_history', 'app_name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '应用名称', NULL, NULL, 0, 140);
INSERT INTO `data_column` VALUES ('mnt_deploy_history', 'deploy_date', NULL, 'DATETIME', '0', '0', '0', '1', 26, '部署日期', NULL, NULL, 0, 150);
INSERT INTO `data_column` VALUES ('mnt_deploy_history', 'deploy_id', NULL, 'BIGINT', '0', '1', '0', '1', 19, '部署编号', NULL, NULL, 0, 180);
INSERT INTO `data_column` VALUES ('mnt_deploy_history', 'deploy_user', NULL, 'VARCHAR', '0', '0', '0', '1', 50, '部署用户', NULL, NULL, 0, 160);
INSERT INTO `data_column` VALUES ('mnt_deploy_history', 'id', NULL, 'VARCHAR', '0', '1', '0', '1', 50, '编号', NULL, NULL, 0, 130);
INSERT INTO `data_column` VALUES ('mnt_deploy_history', 'ip', NULL, 'VARCHAR', '0', '0', '0', '1', 20, '服务器IP', NULL, NULL, 0, 170);
INSERT INTO `data_column` VALUES ('mnt_deploy_server', 'deploy_id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'deploy_id', NULL, NULL, 0, 50);
INSERT INTO `data_column` VALUES ('mnt_deploy_server', 'server_id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'server_id', NULL, NULL, 0, 60);
INSERT INTO `data_column` VALUES ('mnt_server', 'account', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '账号', NULL, NULL, 0, 160);
INSERT INTO `data_column` VALUES ('mnt_server', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, 'create_time', NULL, NULL, 0, 210);
INSERT INTO `data_column` VALUES ('mnt_server', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'IP地址', NULL, NULL, 0, 150);
INSERT INTO `data_column` VALUES ('mnt_server', 'ip', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'IP地址', NULL, NULL, 0, 170);
INSERT INTO `data_column` VALUES ('mnt_server', 'name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '名称', NULL, NULL, 0, 180);
INSERT INTO `data_column` VALUES ('mnt_server', 'password', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '密码', NULL, NULL, 0, 190);
INSERT INTO `data_column` VALUES ('mnt_server', 'port', NULL, 'INT', '0', '0', '0', '1', 10, '端口', NULL, NULL, 0, 200);
INSERT INTO `data_column` VALUES ('monitor_server', 'address', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '服务地址', NULL, NULL, 0, 420);
INSERT INTO `data_column` VALUES ('monitor_server', 'cpu_core', NULL, 'INT', '0', '0', '0', '1', 10, 'CPU内核数', NULL, NULL, 0, 300);
INSERT INTO `data_column` VALUES ('monitor_server', 'cpu_rate', NULL, 'DOUBLE', '0', '0', '0', '1', 22, 'CPU使用率', NULL, NULL, 0, 310);
INSERT INTO `data_column` VALUES ('monitor_server', 'disk_total', NULL, 'DOUBLE', '0', '0', '0', '1', 22, '磁盘总量', NULL, NULL, 0, 320);
INSERT INTO `data_column` VALUES ('monitor_server', 'disk_used', NULL, 'DOUBLE', '0', '0', '0', '1', 22, '磁盘使用量', NULL, NULL, 0, 330);
INSERT INTO `data_column` VALUES ('monitor_server', 'id', NULL, 'INT', '0', '1', '0', '1', 10, 'id', NULL, NULL, 0, 290);
INSERT INTO `data_column` VALUES ('monitor_server', 'mem_total', NULL, 'DOUBLE', '0', '0', '0', '1', 22, '内存总数', NULL, NULL, 0, 340);
INSERT INTO `data_column` VALUES ('monitor_server', 'mem_used', NULL, 'DOUBLE', '0', '0', '0', '1', 22, '内存使用量', NULL, NULL, 0, 350);
INSERT INTO `data_column` VALUES ('monitor_server', 'name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '名称', NULL, NULL, 0, 360);
INSERT INTO `data_column` VALUES ('monitor_server', 'port', NULL, 'INT', '0', '0', '0', '1', 10, '访问端口', NULL, NULL, 0, 370);
INSERT INTO `data_column` VALUES ('monitor_server', 'sort', NULL, 'INT', '0', '0', '0', '1', 10, '排序', NULL, NULL, 0, 380);
INSERT INTO `data_column` VALUES ('monitor_server', 'state', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '状态', NULL, NULL, 0, 390);
INSERT INTO `data_column` VALUES ('monitor_server', 'swap_total', NULL, 'DOUBLE', '0', '0', '0', '1', 22, '交换区总量', NULL, NULL, 0, 400);
INSERT INTO `data_column` VALUES ('monitor_server', 'swap_used', NULL, 'DOUBLE', '0', '0', '0', '1', 22, '交换区使用量', NULL, NULL, 0, 410);
INSERT INTO `data_column` VALUES ('picture', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, '上传日期', NULL, NULL, 0, 120);
INSERT INTO `data_column` VALUES ('picture', 'delete_url', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '删除的URL', NULL, NULL, 0, 130);
INSERT INTO `data_column` VALUES ('picture', 'filename', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '图片名称', NULL, NULL, 0, 140);
INSERT INTO `data_column` VALUES ('picture', 'height', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '图片高度', NULL, NULL, 0, 150);
INSERT INTO `data_column` VALUES ('picture', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'ID', NULL, NULL, 0, 110);
INSERT INTO `data_column` VALUES ('picture', 'md5code', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '文件的MD5值', NULL, NULL, 0, 200);
INSERT INTO `data_column` VALUES ('picture', 'size', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '图片大小', NULL, NULL, 0, 160);
INSERT INTO `data_column` VALUES ('picture', 'url', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '图片地址', NULL, NULL, 0, 170);
INSERT INTO `data_column` VALUES ('picture', 'username', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '用户名称', NULL, NULL, 0, 180);
INSERT INTO `data_column` VALUES ('picture', 'width', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '图片宽度', NULL, NULL, 0, 190);
INSERT INTO `data_column` VALUES ('qiniu_config', 'access_key', NULL, 'TEXT', '0', '0', '0', '1', 65535, 'accessKey', NULL, NULL, 0, 90);
INSERT INTO `data_column` VALUES ('qiniu_config', 'bucket', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'Bucket 识别符', NULL, NULL, 0, 100);
INSERT INTO `data_column` VALUES ('qiniu_config', 'host', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '外链域名', NULL, NULL, 0, 110);
INSERT INTO `data_column` VALUES ('qiniu_config', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'ID', NULL, NULL, 0, 80);
INSERT INTO `data_column` VALUES ('qiniu_config', 'secret_key', NULL, 'TEXT', '0', '0', '0', '1', 65535, 'secretKey', NULL, NULL, 0, 120);
INSERT INTO `data_column` VALUES ('qiniu_config', 'type', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '空间类型', NULL, NULL, 0, 130);
INSERT INTO `data_column` VALUES ('qiniu_config', 'zone', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '机房', NULL, NULL, 0, 140);
INSERT INTO `data_column` VALUES ('qiniu_content', 'bucket', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'Bucket 识别符', NULL, NULL, 0, 100);
INSERT INTO `data_column` VALUES ('qiniu_content', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'ID', NULL, NULL, 0, 90);
INSERT INTO `data_column` VALUES ('qiniu_content', 'name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '文件名称', NULL, NULL, 0, 110);
INSERT INTO `data_column` VALUES ('qiniu_content', 'size', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '文件大小', NULL, NULL, 0, 120);
INSERT INTO `data_column` VALUES ('qiniu_content', 'suffix', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'suffix', NULL, NULL, 0, 160);
INSERT INTO `data_column` VALUES ('qiniu_content', 'type', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '文件类型：私有或公开', NULL, NULL, 0, 130);
INSERT INTO `data_column` VALUES ('qiniu_content', 'update_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, '上传或同步的时间', NULL, NULL, 0, 140);
INSERT INTO `data_column` VALUES ('qiniu_content', 'url', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '文件url', NULL, NULL, 0, 150);
INSERT INTO `data_column` VALUES ('quartz_job', 'bean_name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'Spring Bean名称', NULL, NULL, 0, 110);
INSERT INTO `data_column` VALUES ('quartz_job', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, '创建日期', NULL, NULL, 0, 180);
INSERT INTO `data_column` VALUES ('quartz_job', 'cron_expression', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'cron 表达式', NULL, NULL, 0, 120);
INSERT INTO `data_column` VALUES ('quartz_job', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'ID', NULL, NULL, 0, 100);
INSERT INTO `data_column` VALUES ('quartz_job', 'is_pause', NULL, 'BIT', '0', '0', '0', '1', 1, '状态：1暂停、0启用', NULL, NULL, 0, 130);
INSERT INTO `data_column` VALUES ('quartz_job', 'job_name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '任务名称', NULL, NULL, 0, 140);
INSERT INTO `data_column` VALUES ('quartz_job', 'method_name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '方法名称', NULL, NULL, 0, 150);
INSERT INTO `data_column` VALUES ('quartz_job', 'params', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '参数', NULL, NULL, 0, 160);
INSERT INTO `data_column` VALUES ('quartz_job', 'remark', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '备注', NULL, NULL, 0, 170);
INSERT INTO `data_column` VALUES ('quartz_log', 'baen_name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'baen_name', NULL, NULL, 0, 120);
INSERT INTO `data_column` VALUES ('quartz_log', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, 'create_time', NULL, NULL, 0, 130);
INSERT INTO `data_column` VALUES ('quartz_log', 'cron_expression', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'cron_expression', NULL, NULL, 0, 140);
INSERT INTO `data_column` VALUES ('quartz_log', 'exception_detail', NULL, 'TEXT', '0', '0', '0', '1', 65535, 'exception_detail', NULL, NULL, 0, 150);
INSERT INTO `data_column` VALUES ('quartz_log', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'id', NULL, NULL, 0, 110);
INSERT INTO `data_column` VALUES ('quartz_log', 'is_success', NULL, 'BIT', '0', '0', '0', '1', 1, 'is_success', NULL, NULL, 0, 160);
INSERT INTO `data_column` VALUES ('quartz_log', 'job_name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'job_name', NULL, NULL, 0, 170);
INSERT INTO `data_column` VALUES ('quartz_log', 'method_name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'method_name', NULL, NULL, 0, 180);
INSERT INTO `data_column` VALUES ('quartz_log', 'params', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'params', NULL, NULL, 0, 190);
INSERT INTO `data_column` VALUES ('quartz_log', 'time', NULL, 'BIGINT', '0', '0', '0', '1', 19, 'time', NULL, NULL, 0, 200);
INSERT INTO `data_column` VALUES ('role', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, '创建日期', NULL, NULL, 0, 130);
INSERT INTO `data_column` VALUES ('role', 'data_scope', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '数据权限', NULL, NULL, 0, 110);
INSERT INTO `data_column` VALUES ('role', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'ID', NULL, NULL, 0, 80);
INSERT INTO `data_column` VALUES ('role', 'level', NULL, 'INT', '0', '0', '0', '1', 10, '角色级别', NULL, NULL, 0, 120);
INSERT INTO `data_column` VALUES ('role', 'name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '名称', NULL, NULL, 0, 90);
INSERT INTO `data_column` VALUES ('role', 'permission', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '功能权限', NULL, NULL, 0, 140);
INSERT INTO `data_column` VALUES ('role', 'remark', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '备注', NULL, NULL, 0, 100);
INSERT INTO `data_column` VALUES ('roles_depts', 'dept_id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'dept_id', NULL, NULL, 0, 40);
INSERT INTO `data_column` VALUES ('roles_depts', 'role_id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'role_id', NULL, NULL, 0, 30);
INSERT INTO `data_column` VALUES ('roles_menus', 'menu_id', NULL, 'BIGINT', '0', '1', '0', '1', 19, '菜单ID', NULL, NULL, 0, 30);
INSERT INTO `data_column` VALUES ('roles_menus', 'role_id', NULL, 'BIGINT', '0', '1', '0', '1', 19, '角色ID', NULL, NULL, 0, 40);
INSERT INTO `data_column` VALUES ('user', 'account_locked', NULL, 'ENUM', '0', '0', '0', '1', 1, 'account_locked', NULL, NULL, 0, 580);
INSERT INTO `data_column` VALUES ('user', 'Alter_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Alter_priv', NULL, NULL, 0, 290);
INSERT INTO `data_column` VALUES ('user', 'Alter_routine_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Alter_routine_priv', NULL, NULL, 0, 400);
INSERT INTO `data_column` VALUES ('user', 'authentication_string', NULL, 'TEXT', '0', '0', '0', '1', 65535, 'authentication_string', NULL, NULL, 0, 540);
INSERT INTO `data_column` VALUES ('user', 'avatar_id', NULL, 'BIGINT', '0', '1', '0', '1', 19, '头像', NULL, NULL, 0, 600);
INSERT INTO `data_column` VALUES ('user', 'Create_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Create_priv', NULL, NULL, 0, 200);
INSERT INTO `data_column` VALUES ('user', 'Create_routine_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Create_routine_priv', NULL, NULL, 0, 390);
INSERT INTO `data_column` VALUES ('user', 'Create_tablespace_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Create_tablespace_priv', NULL, NULL, 0, 440);
INSERT INTO `data_column` VALUES ('user', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, '创建日期', NULL, NULL, 0, 680);
INSERT INTO `data_column` VALUES ('user', 'Create_tmp_table_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Create_tmp_table_priv', NULL, NULL, 0, 320);
INSERT INTO `data_column` VALUES ('user', 'Create_user_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Create_user_priv', NULL, NULL, 0, 410);
INSERT INTO `data_column` VALUES ('user', 'Create_view_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Create_view_priv', NULL, NULL, 0, 370);
INSERT INTO `data_column` VALUES ('user', 'Delete_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Delete_priv', NULL, NULL, 0, 190);
INSERT INTO `data_column` VALUES ('user', 'dept_id', NULL, 'BIGINT', '0', '1', '0', '1', 19, '部门名称', NULL, NULL, 0, 650);
INSERT INTO `data_column` VALUES ('user', 'Drop_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Drop_priv', NULL, NULL, 0, 210);
INSERT INTO `data_column` VALUES ('user', 'email', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '邮箱', NULL, NULL, 0, 610);
INSERT INTO `data_column` VALUES ('user', 'enabled', NULL, 'BIGINT', '0', '0', '0', '1', 19, '状态：1启用、0禁用', NULL, NULL, 0, 620);
INSERT INTO `data_column` VALUES ('user', 'Event_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Event_priv', NULL, NULL, 0, 420);
INSERT INTO `data_column` VALUES ('user', 'Execute_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Execute_priv', NULL, NULL, 0, 340);
INSERT INTO `data_column` VALUES ('user', 'File_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'File_priv', NULL, NULL, 0, 250);
INSERT INTO `data_column` VALUES ('user', 'Grant_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Grant_priv', NULL, NULL, 0, 260);
INSERT INTO `data_column` VALUES ('user', 'Host', NULL, 'CHAR', '0', '0', '0', '1', 60, 'Host', NULL, NULL, 0, 140);
INSERT INTO `data_column` VALUES ('user', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'ID', NULL, NULL, 0, 590);
INSERT INTO `data_column` VALUES ('user', 'Index_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Index_priv', NULL, NULL, 0, 280);
INSERT INTO `data_column` VALUES ('user', 'Insert_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Insert_priv', NULL, NULL, 0, 170);
INSERT INTO `data_column` VALUES ('user', 'job_id', NULL, 'BIGINT', '0', '1', '0', '1', 19, '岗位名称', NULL, NULL, 0, 670);
INSERT INTO `data_column` VALUES ('user', 'last_password_reset_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, '最后修改密码的日期', NULL, NULL, 0, 690);
INSERT INTO `data_column` VALUES ('user', 'Lock_tables_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Lock_tables_priv', NULL, NULL, 0, 330);
INSERT INTO `data_column` VALUES ('user', 'max_connections', NULL, 'INT UNSIGNED', '0', '0', '0', '1', 10, 'max_connections', NULL, NULL, 0, 510);
INSERT INTO `data_column` VALUES ('user', 'max_questions', NULL, 'INT UNSIGNED', '0', '0', '0', '1', 10, 'max_questions', NULL, NULL, 0, 490);
INSERT INTO `data_column` VALUES ('user', 'max_updates', NULL, 'INT UNSIGNED', '0', '0', '0', '1', 10, 'max_updates', NULL, NULL, 0, 500);
INSERT INTO `data_column` VALUES ('user', 'max_user_connections', NULL, 'INT UNSIGNED', '0', '0', '0', '1', 10, 'max_user_connections', NULL, NULL, 0, 520);
INSERT INTO `data_column` VALUES ('user', 'nick_name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'nick_name', NULL, NULL, 0, 700);
INSERT INTO `data_column` VALUES ('user', 'password', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '密码', NULL, NULL, 0, 630);
INSERT INTO `data_column` VALUES ('user', 'password_expired', NULL, 'ENUM', '0', '0', '0', '1', 1, 'password_expired', NULL, NULL, 0, 550);
INSERT INTO `data_column` VALUES ('user', 'password_last_changed', NULL, 'TIMESTAMP', '0', '0', '0', '1', 26, 'password_last_changed', NULL, NULL, 0, 560);
INSERT INTO `data_column` VALUES ('user', 'password_lifetime', NULL, 'SMALLINT UNSIGNED', '0', '0', '0', '1', 5, 'password_lifetime', NULL, NULL, 0, 570);
INSERT INTO `data_column` VALUES ('user', 'phone', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '手机号码', NULL, NULL, 0, 660);
INSERT INTO `data_column` VALUES ('user', 'plugin', NULL, 'CHAR', '0', '0', '0', '1', 64, 'plugin', NULL, NULL, 0, 530);
INSERT INTO `data_column` VALUES ('user', 'Process_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Process_priv', NULL, NULL, 0, 240);
INSERT INTO `data_column` VALUES ('user', 'References_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'References_priv', NULL, NULL, 0, 270);
INSERT INTO `data_column` VALUES ('user', 'Reload_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Reload_priv', NULL, NULL, 0, 220);
INSERT INTO `data_column` VALUES ('user', 'Repl_client_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Repl_client_priv', NULL, NULL, 0, 360);
INSERT INTO `data_column` VALUES ('user', 'Repl_slave_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Repl_slave_priv', NULL, NULL, 0, 350);
INSERT INTO `data_column` VALUES ('user', 'Select_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Select_priv', NULL, NULL, 0, 160);
INSERT INTO `data_column` VALUES ('user', 'sex', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'sex', NULL, NULL, 0, 710);
INSERT INTO `data_column` VALUES ('user', 'Show_db_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Show_db_priv', NULL, NULL, 0, 300);
INSERT INTO `data_column` VALUES ('user', 'Show_view_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Show_view_priv', NULL, NULL, 0, 380);
INSERT INTO `data_column` VALUES ('user', 'Shutdown_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Shutdown_priv', NULL, NULL, 0, 230);
INSERT INTO `data_column` VALUES ('user', 'ssl_cipher', NULL, 'BLOB', '0', '0', '0', '1', 65535, 'ssl_cipher', NULL, NULL, 0, 460);
INSERT INTO `data_column` VALUES ('user', 'ssl_type', NULL, 'ENUM', '0', '0', '0', '1', 9, 'ssl_type', NULL, NULL, 0, 450);
INSERT INTO `data_column` VALUES ('user', 'Super_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Super_priv', NULL, NULL, 0, 310);
INSERT INTO `data_column` VALUES ('user', 'Trigger_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Trigger_priv', NULL, NULL, 0, 430);
INSERT INTO `data_column` VALUES ('user', 'Update_priv', NULL, 'ENUM', '0', '0', '0', '1', 1, 'Update_priv', NULL, NULL, 0, 180);
INSERT INTO `data_column` VALUES ('user', 'User', NULL, 'CHAR', '0', '0', '0', '1', 32, 'User', NULL, NULL, 0, 150);
INSERT INTO `data_column` VALUES ('user', 'username', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '用户名', NULL, NULL, 0, 640);
INSERT INTO `data_column` VALUES ('user', 'x509_issuer', NULL, 'BLOB', '0', '0', '0', '1', 65535, 'x509_issuer', NULL, NULL, 0, 470);
INSERT INTO `data_column` VALUES ('user', 'x509_subject', NULL, 'BLOB', '0', '0', '0', '1', 65535, 'x509_subject', NULL, NULL, 0, 480);
INSERT INTO `data_column` VALUES ('users_roles', 'role_id', NULL, 'BIGINT', '0', '1', '0', '1', 19, '角色ID', NULL, NULL, 0, 40);
INSERT INTO `data_column` VALUES ('users_roles', 'user_id', NULL, 'BIGINT', '0', '1', '0', '1', 19, '用户ID', NULL, NULL, 0, 30);
INSERT INTO `data_column` VALUES ('user_avatar', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, '创建时间', NULL, NULL, 0, 100);
INSERT INTO `data_column` VALUES ('user_avatar', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'id', NULL, NULL, 0, 60);
INSERT INTO `data_column` VALUES ('user_avatar', 'path', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '路径', NULL, NULL, 0, 80);
INSERT INTO `data_column` VALUES ('user_avatar', 'real_name', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '真实文件名', NULL, NULL, 0, 70);
INSERT INTO `data_column` VALUES ('user_avatar', 'size', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '大小', NULL, NULL, 0, 90);
INSERT INTO `data_column` VALUES ('verification_code', 'code', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '验证码', NULL, NULL, 0, 90);
INSERT INTO `data_column` VALUES ('verification_code', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, '创建日期', NULL, NULL, 0, 100);
INSERT INTO `data_column` VALUES ('verification_code', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'ID', NULL, NULL, 0, 80);
INSERT INTO `data_column` VALUES ('verification_code', 'scenes', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '业务名称：如重置邮箱、重置密码等', NULL, NULL, 0, 140);
INSERT INTO `data_column` VALUES ('verification_code', 'status', NULL, 'BIT', '0', '0', '0', '1', 1, '状态：1有效、0过期', NULL, NULL, 0, 110);
INSERT INTO `data_column` VALUES ('verification_code', 'type', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '验证码类型：email或者短信', NULL, NULL, 0, 120);
INSERT INTO `data_column` VALUES ('verification_code', 'value', NULL, 'VARCHAR', '0', '0', '0', '1', 255, '接收邮箱或者手机号码', NULL, NULL, 0, 130);
INSERT INTO `data_column` VALUES ('visits', 'create_time', NULL, 'DATETIME', '0', '0', '0', '1', 26, 'create_time', NULL, NULL, 0, 80);
INSERT INTO `data_column` VALUES ('visits', 'date', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'date', NULL, NULL, 0, 90);
INSERT INTO `data_column` VALUES ('visits', 'id', NULL, 'BIGINT', '0', '1', '0', '1', 19, 'id', NULL, NULL, 0, 70);
INSERT INTO `data_column` VALUES ('visits', 'ip_counts', NULL, 'BIGINT', '0', '0', '0', '1', 19, 'ip_counts', NULL, NULL, 0, 100);
INSERT INTO `data_column` VALUES ('visits', 'pv_counts', NULL, 'BIGINT', '0', '0', '0', '1', 19, 'pv_counts', NULL, NULL, 0, 110);
INSERT INTO `data_column` VALUES ('visits', 'week_day', NULL, 'VARCHAR', '0', '0', '0', '1', 255, 'week_day', NULL, NULL, 0, 120);

-- ----------------------------
-- Table structure for data_entity
-- ----------------------------
DROP TABLE IF EXISTS `data_entity`;
CREATE TABLE `data_entity`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `datasize` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_entity
-- ----------------------------
INSERT INTO `data_entity` VALUES ('alipay_config', 0, 'alipay_config', '', 10, 'eladmin');
INSERT INTO `data_entity` VALUES ('column_config', 0, 'column_config', '', 20, 'eladmin');
INSERT INTO `data_entity` VALUES ('data_column', 0, 'data_column', '', 30, 'eladmin');
INSERT INTO `data_entity` VALUES ('data_entity', 0, 'data_entity', '', 40, 'eladmin');
INSERT INTO `data_entity` VALUES ('demo_plan', 0, '审计计划', '', 50, 'eladmin');
INSERT INTO `data_entity` VALUES ('demo_plan_detail', 0, '计划明细', '', 60, 'eladmin');
INSERT INTO `data_entity` VALUES ('dept', 0, 'dept', '', 70, 'eladmin');
INSERT INTO `data_entity` VALUES ('dict', 0, 'dict', '', 80, 'eladmin');
INSERT INTO `data_entity` VALUES ('dict_detail', 0, 'dict_detail', '', 90, 'eladmin');
INSERT INTO `data_entity` VALUES ('email_config', 0, 'email_config', '', 100, 'eladmin');
INSERT INTO `data_entity` VALUES ('gen_config', 0, 'gen_config', '', 110, 'eladmin');
INSERT INTO `data_entity` VALUES ('gen_custom', 0, '页面定制配置信息', '', 120, 'eladmin');
INSERT INTO `data_entity` VALUES ('gen_module_config', 0, '代码生成模块配置信息', '', 130, 'eladmin');
INSERT INTO `data_entity` VALUES ('job', 0, 'job', '', 140, 'eladmin');
INSERT INTO `data_entity` VALUES ('local_storage', 0, 'local_storage', '', 150, 'eladmin');
INSERT INTO `data_entity` VALUES ('log', 0, 'log', '', 160, 'eladmin');
INSERT INTO `data_entity` VALUES ('menu', 0, 'menu', '', 170, 'eladmin');
INSERT INTO `data_entity` VALUES ('mnt_app', 0, 'mnt_app', '', 180, 'eladmin');
INSERT INTO `data_entity` VALUES ('mnt_database', 0, 'mnt_database', '', 190, 'eladmin');
INSERT INTO `data_entity` VALUES ('mnt_deploy', 0, 'mnt_deploy', '', 200, 'eladmin');
INSERT INTO `data_entity` VALUES ('mnt_deploy_history', 0, 'mnt_deploy_history', '', 210, 'eladmin');
INSERT INTO `data_entity` VALUES ('mnt_deploy_server', 0, 'mnt_deploy_server', '', 220, 'eladmin');
INSERT INTO `data_entity` VALUES ('mnt_server', 0, 'mnt_server', '', 230, 'eladmin');
INSERT INTO `data_entity` VALUES ('monitor_server', 0, 'monitor_server', '', 240, 'eladmin');
INSERT INTO `data_entity` VALUES ('picture', 0, 'picture', '', 250, 'eladmin');
INSERT INTO `data_entity` VALUES ('qiniu_config', 0, 'qiniu_config', '', 260, 'eladmin');
INSERT INTO `data_entity` VALUES ('qiniu_content', 0, 'qiniu_content', '', 270, 'eladmin');
INSERT INTO `data_entity` VALUES ('quartz_job', 0, 'quartz_job', '', 280, 'eladmin');
INSERT INTO `data_entity` VALUES ('quartz_log', 0, 'quartz_log', '', 290, 'eladmin');
INSERT INTO `data_entity` VALUES ('role', 0, 'role', '', 300, 'eladmin');
INSERT INTO `data_entity` VALUES ('roles_depts', 0, 'roles_depts', '', 310, 'eladmin');
INSERT INTO `data_entity` VALUES ('roles_menus', 0, 'roles_menus', '', 320, 'eladmin');
INSERT INTO `data_entity` VALUES ('user', 0, 'user', '', 330, 'eladmin');
INSERT INTO `data_entity` VALUES ('users_roles', 0, 'users_roles', '', 340, 'eladmin');
INSERT INTO `data_entity` VALUES ('user_avatar', 0, 'user_avatar', '', 350, 'eladmin');
INSERT INTO `data_entity` VALUES ('verification_code', 0, 'verification_code', '', 360, 'eladmin');
INSERT INTO `data_entity` VALUES ('visits', 0, 'visits', '', 370, 'eladmin');

-- ----------------------------
-- Table structure for demo_plan
-- ----------------------------
DROP TABLE IF EXISTS `demo_plan`;
CREATE TABLE `demo_plan`  (
  `id` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '' COMMENT '计划编号',
  `name` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '计划名称',
  `create_org` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '创建机构',
  `plan_year` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '计划年度',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `plan_type` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '计划类型',
  `plans_tatus` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '计划状态',
  `creator` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '编制人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk CHECKSUM = 1 COLLATE = gbk_chinese_ci COMMENT = '审计计划' DELAY_KEY_WRITE = 1 ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of demo_plan
-- ----------------------------
INSERT INTO `demo_plan` VALUES ('002', '计划2', '14187704866791001', '2019', '2014-12-18 20:13:55', '2020-03-27 11:05:15', '01', '01', 'anonymous');
INSERT INTO `demo_plan` VALUES ('001', '测试计划1', '14187704723911000', '2020', '2014-12-18 20:00:57', '2020-03-27 11:05:22', '02', '03', 'anonymous');

-- ----------------------------
-- Table structure for demo_plan_detail
-- ----------------------------
DROP TABLE IF EXISTS `demo_plan_detail`;
CREATE TABLE `demo_plan_detail`  (
  `plan_id` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '' COMMENT '计划编号',
  `id` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL COMMENT '明细编号',
  `name` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '明细名称',
  `detail_type` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '明细类型',
  `execute_month` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '实施月份',
  `execute_state` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '执行状态',
  `creator` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk CHECKSUM = 1 COLLATE = gbk_chinese_ci COMMENT = '计划明细' DELAY_KEY_WRITE = 1 ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of demo_plan_detail
-- ----------------------------
INSERT INTO `demo_plan_detail` VALUES ('001', '001001', '测试计划明细1', '财务类', '03', '01', 'anonymous', '2014-12-18 20:06:20', NULL, '');
INSERT INTO `demo_plan_detail` VALUES ('002', '002001', '计划明细2', '产品类', '12', '01', 'anonymous', '2014-12-18 20:14:35', NULL, '今年不打算做了');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `pid` bigint(20) NOT NULL COMMENT '上级部门',
  `enabled` bit(1) NOT NULL COMMENT '状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (1, 'eladmin', 0, b'1', '2019-03-25 09:14:05');
INSERT INTO `dept` VALUES (2, '研发部', 7, b'1', '2019-03-25 09:15:32');
INSERT INTO `dept` VALUES (5, '运维部', 7, b'1', '2019-03-25 09:20:44');
INSERT INTO `dept` VALUES (6, '测试部', 8, b'1', '2019-03-25 09:52:18');
INSERT INTO `dept` VALUES (7, '华南分部', 1, b'1', '2019-03-25 11:04:50');
INSERT INTO `dept` VALUES (8, '华北分部', 1, b'1', '2019-03-25 11:04:53');
INSERT INTO `dept` VALUES (11, '人事部', 8, b'1', '2019-03-25 11:07:58');

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `dict` VALUES (1, 'user_status', '用户状态', '2019-10-27 20:31:36');
INSERT INTO `dict` VALUES (4, 'dept_status', '部门状态', '2019-10-27 20:31:36');
INSERT INTO `dict` VALUES (5, 'job_status', '岗位状态', '2019-10-27 20:31:36');
INSERT INTO `dict` VALUES (6, 'plan_year', '计划年度', '2020-04-22 09:55:22');
INSERT INTO `dict` VALUES (7, 'plan_type', '计划类型', '2020-04-22 09:59:08');

-- ----------------------------
-- Table structure for dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `dict_detail`;
CREATE TABLE `dict_detail`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典标签',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典值',
  `sort` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排序',
  `dict_id` bigint(11) NULL DEFAULT NULL COMMENT '字典id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK5tpkputc6d9nboxojdbgnpmyb`(`dict_id`) USING BTREE,
  CONSTRAINT `FK5tpkputc6d9nboxojdbgnpmyb` FOREIGN KEY (`dict_id`) REFERENCES `dict` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dict_detail
-- ----------------------------
INSERT INTO `dict_detail` VALUES (1, '激活', 'true', '1', 1, '2019-10-27 20:31:36');
INSERT INTO `dict_detail` VALUES (2, '禁用', 'false', '2', 1, NULL);
INSERT INTO `dict_detail` VALUES (3, '启用', 'true', '1', 4, NULL);
INSERT INTO `dict_detail` VALUES (4, '停用', 'false', '2', 4, '2019-10-27 20:31:36');
INSERT INTO `dict_detail` VALUES (5, '启用', 'true', '1', 5, NULL);
INSERT INTO `dict_detail` VALUES (6, '停用', 'false', '2', 5, '2019-10-27 20:31:36');
INSERT INTO `dict_detail` VALUES (7, '2017年', '2017', '999', 6, '2020-04-22 09:55:58');
INSERT INTO `dict_detail` VALUES (8, '2018年', '2018', '999', 6, '2020-04-22 09:56:11');
INSERT INTO `dict_detail` VALUES (9, '2019年', '2019', '999', 6, '2020-04-22 09:56:54');
INSERT INTO `dict_detail` VALUES (10, '2020年', '2020', '999', 6, '2020-04-22 09:57:06');
INSERT INTO `dict_detail` VALUES (11, '年度计划', '01', '999', 7, '2020-04-22 09:59:24');
INSERT INTO `dict_detail` VALUES (12, '新增计划', '02', '999', 7, '2020-04-22 09:59:33');

-- ----------------------------
-- Table structure for email_config
-- ----------------------------
DROP TABLE IF EXISTS `email_config`;
CREATE TABLE `email_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `from_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件人',
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮件服务器SMTP地址',
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `port` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '端口',
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发件者用户名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for gen_config
-- ----------------------------
DROP TABLE IF EXISTS `gen_config`;
CREATE TABLE `gen_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `cover` bit(1) NULL DEFAULT NULL COMMENT '是否覆盖',
  `module_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块名称',
  `pack` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '至于哪个包下',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端代码生成的路径',
  `api_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端Api文件路径',
  `prefix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表前缀',
  `api_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接口名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_config
-- ----------------------------
INSERT INTO `gen_config` VALUES (4, 'mnt_server', 'zhanghouying', b'0', 'eladmin-system', 'com.test', 'test', 'test\\', NULL, 'test');

-- ----------------------------
-- Table structure for gen_custom
-- ----------------------------
DROP TABLE IF EXISTS `gen_custom`;
CREATE TABLE `gen_custom`  (
  `id` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL COMMENT '定制名称',
  `name` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '描述',
  `content` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL COMMENT '内容',
  `template_id` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '模板编号',
  `params` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL COMMENT '页面参数',
  `generate_cfg` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL COMMENT '代码生成设置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk CHECKSUM = 1 COLLATE = gbk_chinese_ci COMMENT = '页面定制配置信息' DELAY_KEY_WRITE = 1 ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_custom
-- ----------------------------
INSERT INTO `gen_custom` VALUES ('6488cb7467624b99a8c4d96b769d4a8a', 'plan', '{\"columns\":[{\"id\":165,\"tableName\":\"demo_plan\",\"columnName\":\"id\",\"columnType\":\"varchar\",\"keyType\":\"PRI\",\"extra\":\"\",\"remark\":\"计划编号\",\"notNull\":true,\"listShow\":true,\"formShow\":true,\"formType\":null,\"queryType\":null,\"dictName\":null,\"dateAnnotation\":null},{\"id\":166,\"tableName\":\"demo_plan\",\"columnName\":\"name\",\"columnType\":\"varchar\",\"keyType\":\"\",\"extra\":\"\",\"remark\":\"计划名称\",\"notNull\":false,\"listShow\":true,\"formShow\":true,\"formType\":null,\"queryType\":null,\"dictName\":null,\"dateAnnotation\":null},{\"id\":167,\"tableName\":\"demo_plan\",\"columnName\":\"create_org\",\"columnType\":\"varchar\",\"keyType\":\"\",\"extra\":\"\",\"remark\":\"创建机构\",\"notNull\":false,\"listShow\":true,\"formShow\":true,\"formType\":null,\"queryType\":null,\"dictName\":null,\"dateAnnotation\":null},{\"id\":168,\"tableName\":\"demo_plan\",\"columnName\":\"plan_year\",\"columnType\":\"varchar\",\"keyType\":\"\",\"extra\":\"\",\"remark\":\"计划年度\",\"notNull\":false,\"listShow\":true,\"formShow\":true,\"formType\":\"Select\",\"queryType\":null,\"dictName\":\"plan_year\",\"dateAnnotation\":null},{\"id\":169,\"tableName\":\"demo_plan\",\"columnName\":\"create_date\",\"columnType\":\"datetime\",\"keyType\":\"\",\"extra\":\"\",\"remark\":\"创建时间\",\"notNull\":false,\"listShow\":true,\"formShow\":true,\"formType\":null,\"queryType\":null,\"dictName\":null,\"dateAnnotation\":null},{\"id\":170,\"tableName\":\"demo_plan\",\"columnName\":\"update_date\",\"columnType\":\"datetime\",\"keyType\":\"\",\"extra\":\"\",\"remark\":\"修改时间\",\"notNull\":false,\"listShow\":true,\"formShow\":true,\"formType\":null,\"queryType\":null,\"dictName\":null,\"dateAnnotation\":null},{\"id\":171,\"tableName\":\"demo_plan\",\"columnName\":\"plan_type\",\"columnType\":\"varchar\",\"keyType\":\"\",\"extra\":\"\",\"remark\":\"计划类型\",\"notNull\":false,\"listShow\":true,\"formShow\":true,\"formType\":\"Select\",\"queryType\":null,\"dictName\":\"plan_type\",\"dateAnnotation\":null},{\"id\":172,\"tableName\":\"demo_plan\",\"columnName\":\"plans_tatus\",\"columnType\":\"varchar\",\"keyType\":\"\",\"extra\":\"\",\"remark\":\"计划状态\",\"notNull\":false,\"listShow\":true,\"formShow\":true,\"formType\":null,\"queryType\":null,\"dictName\":null,\"dateAnnotation\":null},{\"id\":173,\"tableName\":\"demo_plan\",\"columnName\":\"creator\",\"columnType\":\"varchar\",\"keyType\":\"\",\"extra\":\"\",\"remark\":\"编制人\",\"notNull\":false,\"listShow\":true,\"formShow\":true,\"formType\":null,\"queryType\":null,\"dictName\":null,\"dateAnnotation\":null}],\"queryParam\":{\"columnInfos\":[{\"id\":165,\"tableName\":\"demo_plan\",\"columnName\":\"id\",\"columnType\":\"varchar\",\"keyType\":\"PRI\",\"extra\":\"\",\"remark\":\"计划编号\",\"notNull\":true,\"listShow\":true,\"formShow\":true,\"formType\":null,\"queryType\":null,\"dictName\":null,\"dateAnnotation\":null},{\"id\":166,\"tableName\":\"demo_plan\",\"columnName\":\"name\",\"columnType\":\"varchar\",\"keyType\":\"\",\"extra\":\"\",\"remark\":\"计划名称\",\"notNull\":false,\"listShow\":true,\"formShow\":true,\"formType\":null,\"queryType\":null,\"dictName\":null,\"dateAnnotation\":null},{\"id\":167,\"tableName\":\"demo_plan\",\"columnName\":\"create_org\",\"columnType\":\"varchar\",\"keyType\":\"\",\"extra\":\"\",\"remark\":\"创建机构\",\"notNull\":false,\"listShow\":true,\"formShow\":true,\"formType\":null,\"queryType\":null,\"dictName\":null,\"dateAnnotation\":null},{\"id\":168,\"tableName\":\"demo_plan\",\"columnName\":\"plan_year\",\"columnType\":\"varchar\",\"keyType\":\"\",\"extra\":\"\",\"remark\":\"计划年度\",\"notNull\":false,\"listShow\":true,\"formShow\":true,\"formType\":\"Select\",\"queryType\":null,\"dictName\":\"plan_year\",\"dateAnnotation\":null},{\"id\":169,\"tableName\":\"demo_plan\",\"columnName\":\"create_date\",\"columnType\":\"datetime\",\"keyType\":\"\",\"extra\":\"\",\"remark\":\"创建时间\",\"notNull\":false,\"listShow\":true,\"formShow\":true,\"formType\":null,\"queryType\":null,\"dictName\":null,\"dateAnnotation\":null},{\"id\":170,\"tableName\":\"demo_plan\",\"columnName\":\"update_date\",\"columnType\":\"datetime\",\"keyType\":\"\",\"extra\":\"\",\"remark\":\"修改时间\",\"notNull\":false,\"listShow\":true,\"formShow\":true,\"formType\":null,\"queryType\":null,\"dictName\":null,\"dateAnnotation\":null},{\"id\":171,\"tableName\":\"demo_plan\",\"columnName\":\"plan_type\",\"columnType\":\"varchar\",\"keyType\":\"\",\"extra\":\"\",\"remark\":\"计划类型\",\"notNull\":false,\"listShow\":true,\"formShow\":true,\"formType\":\"Select\",\"queryType\":null,\"dictName\":\"plan_type\",\"dateAnnotation\":null},{\"id\":172,\"tableName\":\"demo_plan\",\"columnName\":\"plans_tatus\",\"columnType\":\"varchar\",\"keyType\":\"\",\"extra\":\"\",\"remark\":\"计划状态\",\"notNull\":false,\"listShow\":true,\"formShow\":true,\"formType\":null,\"queryType\":null,\"dictName\":null,\"dateAnnotation\":null},{\"id\":173,\"tableName\":\"demo_plan\",\"columnName\":\"creator\",\"columnType\":\"varchar\",\"keyType\":\"\",\"extra\":\"\",\"remark\":\"编制人\",\"notNull\":false,\"listShow\":true,\"formShow\":true,\"formType\":null,\"queryType\":null,\"dictName\":null,\"dateAnnotation\":null}],\"page\":1,\"size\":10},\"pack\":\"demo.plan\",\"form\":{\"id\":null,\"name\":null},\"save\":{\"id\":null,\"name\":\"plan\"}}', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for gen_module_config
-- ----------------------------
DROP TABLE IF EXISTS `gen_module_config`;
CREATE TABLE `gen_module_config`  (
  `id` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL COMMENT '名称',
  `name` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '描述',
  `type` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '类型',
  `content` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk CHECKSUM = 1 COLLATE = gbk_chinese_ci COMMENT = '代码生成模块配置信息' DELAY_KEY_WRITE = 1 ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `enabled` bit(1) NOT NULL COMMENT '岗位状态',
  `sort` bigint(20) NOT NULL COMMENT '岗位排序',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKmvhj0rogastlctflsxf1d6k3i`(`dept_id`) USING BTREE,
  CONSTRAINT `FKmvhj0rogastlctflsxf1d6k3i` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES (10, '产品经理', b'1', 4, 2, '2019-03-29 14:55:51');
INSERT INTO `job` VALUES (11, '全栈开发', b'1', 2, 2, '2019-03-31 13:39:30');
INSERT INTO `job` VALUES (12, '软件测试', b'1', 5, 2, '2019-03-31 13:39:43');

-- ----------------------------
-- Table structure for local_storage
-- ----------------------------
DROP TABLE IF EXISTS `local_storage`;
CREATE TABLE `local_storage`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件真实的名称',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `suffix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后缀',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `size` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大小',
  `operate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '异常详情',
  `log_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志类型',
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法',
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '参数',
  `request_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip',
  `time` bigint(20) NULL DEFAULT NULL COMMENT '请求耗时',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4918 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of log
-- ----------------------------
-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `i_frame` bit(1) NULL DEFAULT NULL COMMENT '是否外链',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件',
  `pid` bigint(20) NOT NULL COMMENT '上级菜单ID',
  `sort` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `cache` bit(1) NULL DEFAULT b'0' COMMENT '缓存',
  `hidden` bit(1) NULL DEFAULT b'0' COMMENT '隐藏',
  `component_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '-' COMMENT '组件名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKqcf9gem97gqa5qjm4d3elcqt5`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 131 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, b'0', '系统管理', NULL, 0, 1, 'system', 'system', b'0', b'0', NULL, '2018-12-18 15:11:29', NULL, 0);
INSERT INTO `menu` VALUES (2, b'0', '用户管理', 'system/user/index', 1, 2, 'peoples', 'user', b'0', b'0', 'User', '2018-12-18 15:14:44', 'user:list', 1);
INSERT INTO `menu` VALUES (3, b'0', '角色管理', 'system/role/index', 1, 3, 'role', 'role', b'0', b'0', 'Role', '2018-12-18 15:16:07', 'roles:list', 1);
INSERT INTO `menu` VALUES (5, b'0', '菜单管理', 'system/menu/index', 1, 5, 'menu', 'menu', b'0', b'0', 'Menu', '2018-12-18 15:17:28', 'menu:list', 1);
INSERT INTO `menu` VALUES (6, b'0', '系统监控', NULL, 0, 10, 'monitor', 'monitor', b'0', b'0', NULL, '2018-12-18 15:17:48', NULL, 0);
INSERT INTO `menu` VALUES (7, b'0', '操作日志', 'monitor/log/index', 6, 11, 'log', 'logs', b'0', b'0', 'Log', '2018-12-18 15:18:26', NULL, 1);
INSERT INTO `menu` VALUES (8, b'0', '系统缓存', 'monitor/redis/index', 6, 15, 'redis', 'redis', b'0', b'0', 'Redis', '2018-12-18 15:19:01', 'redis:list', 1);
INSERT INTO `menu` VALUES (9, b'0', 'SQL监控', 'monitor/sql/index', 6, 18, 'sqlMonitor', 'druid', b'0', b'0', 'Sql', '2018-12-18 15:19:34', NULL, 1);
INSERT INTO `menu` VALUES (10, b'0', '组件管理', NULL, 0, 50, 'zujian', 'components', b'0', b'0', NULL, '2018-12-19 13:38:16', NULL, 0);
INSERT INTO `menu` VALUES (11, b'0', '图标库', 'components/icons/index', 10, 51, 'icon', 'icon', b'0', b'0', 'Icons', '2018-12-19 13:38:49', NULL, 1);
INSERT INTO `menu` VALUES (14, b'0', '邮件工具', 'tools/email/index', 36, 34, 'email', 'email', b'0', b'0', 'Email', '2018-12-27 10:13:09', NULL, 1);
INSERT INTO `menu` VALUES (15, b'0', '富文本', 'components/Editor', 10, 52, 'fwb', 'tinymce', b'0', b'0', 'Editor', '2018-12-27 11:58:25', NULL, 1);
INSERT INTO `menu` VALUES (16, b'0', '图床管理', 'tools/picture/index', 36, 35, 'image', 'pictures', b'0', b'0', 'Pictures', '2018-12-28 09:36:53', 'pictures:list', 1);
INSERT INTO `menu` VALUES (18, b'0', '存储管理', 'tools/storage/index', 36, 33, 'qiniu', 'storage', b'0', b'0', 'Storage', '2018-12-31 11:12:15', 'storage:list', 1);
INSERT INTO `menu` VALUES (19, b'0', '支付宝工具', 'tools/aliPay/index', 36, 37, 'alipay', 'aliPay', b'0', b'0', 'AliPay', '2018-12-31 14:52:38', NULL, 1);
INSERT INTO `menu` VALUES (21, b'0', '多级菜单', '', 0, 900, 'menu', 'nested', b'0', b'1', NULL, '2019-01-04 16:22:03', NULL, 0);
INSERT INTO `menu` VALUES (22, b'0', '二级菜单1', 'nested/menu1/index', 21, 999, 'menu', 'menu1', b'0', b'0', NULL, '2019-01-04 16:23:29', NULL, 1);
INSERT INTO `menu` VALUES (23, b'0', '二级菜单2', 'nested/menu2/index', 21, 999, 'menu', 'menu2', b'0', b'0', NULL, '2019-01-04 16:23:57', NULL, 1);
INSERT INTO `menu` VALUES (24, b'0', '三级菜单1', 'nested/menu1/menu1-1', 22, 999, 'menu', 'menu1-1', b'0', b'0', NULL, '2019-01-04 16:24:48', NULL, 1);
INSERT INTO `menu` VALUES (27, b'0', '三级菜单2', 'nested/menu1/menu1-2', 22, 999, 'menu', 'menu1-2', b'0', b'0', NULL, '2019-01-07 17:27:32', NULL, 1);
INSERT INTO `menu` VALUES (28, b'0', '定时任务', 'system/timing/index', 36, 31, 'timing', 'timing', b'0', b'0', 'Timing', '2019-01-07 20:34:40', 'timing:list', 1);
INSERT INTO `menu` VALUES (30, b'0', '代码生成', 'generator/index', 36, 32, 'dev', 'generator', b'0', b'0', 'GeneratorIndex', '2019-01-11 15:45:55', NULL, 1);
INSERT INTO `menu` VALUES (32, b'0', '异常日志', 'monitor/log/errorLog', 6, 12, 'error', 'errorLog', b'0', b'0', 'ErrorLog', '2019-01-13 13:49:03', NULL, 1);
INSERT INTO `menu` VALUES (33, b'0', 'Markdown', 'components/MarkDown', 10, 53, 'markdown', 'markdown', b'0', b'0', 'Markdown', '2019-03-08 13:46:44', NULL, 1);
INSERT INTO `menu` VALUES (34, b'0', 'Yaml编辑器', 'components/YamlEdit', 10, 54, 'dev', 'yaml', b'0', b'0', 'YamlEdit', '2019-03-08 15:49:40', NULL, 1);
INSERT INTO `menu` VALUES (35, b'0', '部门管理', 'system/dept/index', 1, 6, 'dept', 'dept', b'0', b'0', 'Dept', '2019-03-25 09:46:00', 'dept:list', 1);
INSERT INTO `menu` VALUES (36, b'0', '系统工具', '', 0, 30, 'sys-tools', 'sys-tools', b'0', b'0', NULL, '2019-03-29 10:57:35', NULL, 0);
INSERT INTO `menu` VALUES (37, b'0', '岗位管理', 'system/job/index', 1, 7, 'Steve-Jobs', 'job', b'0', b'0', 'Job', '2019-03-29 13:51:18', 'job:list', 1);
INSERT INTO `menu` VALUES (38, b'0', '接口文档', 'tools/swagger/index', 36, 36, 'swagger', 'swagger2', b'0', b'0', 'Swagger', '2019-03-29 19:57:53', NULL, 1);
INSERT INTO `menu` VALUES (39, b'0', '字典管理', 'system/dict/index', 1, 8, 'dictionary', 'dict', b'0', b'0', 'Dict', '2019-04-10 11:49:04', 'dict:list', 1);
INSERT INTO `menu` VALUES (41, b'0', '在线用户', 'monitor/online/index', 6, 10, 'Steve-Jobs', 'online', b'0', b'0', 'OnlineUser', '2019-10-26 22:08:43', NULL, 1);
INSERT INTO `menu` VALUES (44, b'0', '用户新增', '', 2, 2, '', '', b'0', b'0', '', '2019-10-29 10:59:46', 'user:add', 2);
INSERT INTO `menu` VALUES (45, b'0', '用户编辑', '', 2, 3, '', '', b'0', b'0', '', '2019-10-29 11:00:08', 'user:edit', 2);
INSERT INTO `menu` VALUES (46, b'0', '用户删除', '', 2, 4, '', '', b'0', b'0', '', '2019-10-29 11:00:23', 'user:del', 2);
INSERT INTO `menu` VALUES (48, b'0', '角色创建', '', 3, 2, '', '', b'0', b'0', '', '2019-10-29 12:45:34', 'roles:add', 2);
INSERT INTO `menu` VALUES (49, b'0', '角色修改', '', 3, 3, '', '', b'0', b'0', '', '2019-10-29 12:46:16', 'roles:edit', 2);
INSERT INTO `menu` VALUES (50, b'0', '角色删除', '', 3, 4, '', '', b'0', b'0', '', '2019-10-29 12:46:51', 'roles:del', 2);
INSERT INTO `menu` VALUES (52, b'0', '菜单新增', '', 5, 2, '', '', b'0', b'0', '', '2019-10-29 12:55:07', 'menu:add', 2);
INSERT INTO `menu` VALUES (53, b'0', '菜单编辑', '', 5, 3, '', '', b'0', b'0', '', '2019-10-29 12:55:40', 'menu:edit', 2);
INSERT INTO `menu` VALUES (54, b'0', '菜单删除', '', 5, 4, '', '', b'0', b'0', '', '2019-10-29 12:56:00', 'menu:del', 2);
INSERT INTO `menu` VALUES (56, b'0', '部门新增', '', 35, 2, '', '', b'0', b'0', '', '2019-10-29 12:57:09', 'dept:add', 2);
INSERT INTO `menu` VALUES (57, b'0', '部门编辑', '', 35, 3, '', '', b'0', b'0', '', '2019-10-29 12:57:27', 'dept:edit', 2);
INSERT INTO `menu` VALUES (58, b'0', '部门删除', '', 35, 4, '', '', b'0', b'0', '', '2019-10-29 12:57:41', 'dept:del', 2);
INSERT INTO `menu` VALUES (60, b'0', '岗位新增', '', 37, 2, '', '', b'0', b'0', '', '2019-10-29 12:58:27', 'job:add', 2);
INSERT INTO `menu` VALUES (61, b'0', '岗位编辑', '', 37, 3, '', '', b'0', b'0', '', '2019-10-29 12:58:45', 'job:edit', 2);
INSERT INTO `menu` VALUES (62, b'0', '岗位删除', '', 37, 4, '', '', b'0', b'0', '', '2019-10-29 12:59:04', 'job:del', 2);
INSERT INTO `menu` VALUES (64, b'0', '字典新增', '', 39, 2, '', '', b'0', b'0', '', '2019-10-29 13:00:17', 'dict:add', 2);
INSERT INTO `menu` VALUES (65, b'0', '字典编辑', '', 39, 3, '', '', b'0', b'0', '', '2019-10-29 13:00:42', 'dict:edit', 2);
INSERT INTO `menu` VALUES (66, b'0', '字典删除', '', 39, 4, '', '', b'0', b'0', '', '2019-10-29 13:00:59', 'dict:del', 2);
INSERT INTO `menu` VALUES (68, b'0', '缓存删除', '', 8, 2, '', '', b'0', b'0', '', '2019-10-29 13:04:07', 'redis:del', 2);
INSERT INTO `menu` VALUES (70, b'0', '图片上传', '', 16, 2, '', '', b'0', b'0', '', '2019-10-29 13:05:34', 'pictures:add', 2);
INSERT INTO `menu` VALUES (71, b'0', '图片删除', '', 16, 3, '', '', b'0', b'0', '', '2019-10-29 13:05:52', 'pictures:del', 2);
INSERT INTO `menu` VALUES (73, b'0', '任务新增', '', 28, 2, '', '', b'0', b'0', '', '2019-10-29 13:07:28', 'timing:add', 2);
INSERT INTO `menu` VALUES (74, b'0', '任务编辑', '', 28, 3, '', '', b'0', b'0', '', '2019-10-29 13:07:41', 'timing:edit', 2);
INSERT INTO `menu` VALUES (75, b'0', '任务删除', '', 28, 4, '', '', b'0', b'0', '', '2019-10-29 13:07:54', 'timing:del', 2);
INSERT INTO `menu` VALUES (77, b'0', '上传文件', '', 18, 2, '', '', b'0', b'0', '', '2019-10-29 13:09:09', 'storage:add', 2);
INSERT INTO `menu` VALUES (78, b'0', '文件编辑', '', 18, 3, '', '', b'0', b'0', '', '2019-10-29 13:09:22', 'storage:edit', 2);
INSERT INTO `menu` VALUES (79, b'0', '文件删除', '', 18, 4, '', '', b'0', b'0', '', '2019-10-29 13:09:34', 'storage:del', 2);
INSERT INTO `menu` VALUES (80, b'0', '服务监控', 'monitor/server/index', 6, 14, 'codeConsole', 'server', b'0', b'0', 'ServerMonitor', '2019-11-07 13:06:39', 'server:list', 1);
INSERT INTO `menu` VALUES (82, b'0', '生成配置', 'generator/config', 36, 33, 'dev', 'generator/config/:tableName', b'1', b'1', 'GeneratorConfig', '2019-11-17 20:08:56', '', 1);
INSERT INTO `menu` VALUES (83, b'0', '图表库', 'components/Echarts', 10, 50, 'chart', 'echarts', b'1', b'0', 'Echarts', '2019-11-21 09:04:32', '', 1);
INSERT INTO `menu` VALUES (90, b'0', '运维管理', '', 0, 20, 'mnt', 'mnt', b'0', b'0', 'Mnt', '2019-11-09 10:31:08', NULL, 1);
INSERT INTO `menu` VALUES (92, b'0', '服务器', 'mnt/server/index', 90, 22, 'server', 'mnt/serverDeploy', b'0', b'0', 'ServerDeploy', '2019-11-10 10:29:25', 'serverDeploy:list', 1);
INSERT INTO `menu` VALUES (93, b'0', '应用管理', 'mnt/app/index', 90, 23, 'app', 'mnt/app', b'0', b'0', 'App', '2019-11-10 11:05:16', 'app:list', 1);
INSERT INTO `menu` VALUES (94, b'0', '部署管理', 'mnt/deploy/index', 90, 24, 'deploy', 'mnt/deploy', b'0', b'0', 'Deploy', '2019-11-10 15:56:55', 'deploy:list', 1);
INSERT INTO `menu` VALUES (97, b'0', '部署备份', 'mnt/deployHistory/index', 90, 25, 'backup', 'mnt/deployHistory', b'0', b'0', 'DeployHistory', '2019-11-10 16:49:44', 'deployHistory:list', 1);
INSERT INTO `menu` VALUES (98, b'0', '数据库管理', 'mnt/database/index', 90, 26, 'database', 'mnt/database', b'0', b'0', 'Database', '2019-11-10 20:40:04', 'database:list', 1);
INSERT INTO `menu` VALUES (102, b'0', '删除', '', 97, 999, '', '', b'0', b'0', '', '2019-11-17 09:32:48', 'deployHistory:del', 2);
INSERT INTO `menu` VALUES (103, b'0', '服务器新增', '', 92, 999, '', '', b'0', b'0', '', '2019-11-17 11:08:33', 'serverDeploy:add', 2);
INSERT INTO `menu` VALUES (104, b'0', '服务器编辑', '', 92, 999, '', '', b'0', b'0', '', '2019-11-17 11:08:57', 'serverDeploy:edit', 2);
INSERT INTO `menu` VALUES (105, b'0', '服务器删除', '', 92, 999, '', '', b'0', b'0', '', '2019-11-17 11:09:15', 'serverDeploy:del', 2);
INSERT INTO `menu` VALUES (106, b'0', '应用新增', '', 93, 999, '', '', b'0', b'0', '', '2019-11-17 11:10:03', 'app:add', 2);
INSERT INTO `menu` VALUES (107, b'0', '应用编辑', '', 93, 999, '', '', b'0', b'0', '', '2019-11-17 11:10:28', 'app:edit', 2);
INSERT INTO `menu` VALUES (108, b'0', '应用删除', '', 93, 999, '', '', b'0', b'0', '', '2019-11-17 11:10:55', 'app:del', 2);
INSERT INTO `menu` VALUES (109, b'0', '部署新增', '', 94, 999, '', '', b'0', b'0', '', '2019-11-17 11:11:22', 'deploy:add', 2);
INSERT INTO `menu` VALUES (110, b'0', '部署编辑', '', 94, 999, '', '', b'0', b'0', '', '2019-11-17 11:11:41', 'deploy:edit', 2);
INSERT INTO `menu` VALUES (111, b'0', '部署删除', '', 94, 999, '', '', b'0', b'0', '', '2019-11-17 11:12:01', 'deploy:del', 2);
INSERT INTO `menu` VALUES (112, b'0', '数据库新增', '', 98, 999, '', '', b'0', b'0', '', '2019-11-17 11:12:43', 'database:add', 2);
INSERT INTO `menu` VALUES (113, b'0', '数据库编辑', '', 98, 999, '', '', b'0', b'0', '', '2019-11-17 11:12:58', 'database:edit', 2);
INSERT INTO `menu` VALUES (114, b'0', '数据库删除', '', 98, 999, '', '', b'0', b'0', '', '2019-11-17 11:13:14', 'database:del', 2);
INSERT INTO `menu` VALUES (115, b'0', '测试生成', 'gen/index', 1, 999, 'Steve-Jobs', 'genTest', b'0', b'0', NULL, '2019-11-25 18:10:29', 'gen:list', 1);
INSERT INTO `menu` VALUES (116, b'0', '生成预览', 'generator/preview', 36, 999, 'java', 'generator/preview/:tableName', b'1', b'1', 'Preview', '2019-11-26 14:54:36', NULL, 1);
INSERT INTO `menu` VALUES (117, b'0', '数据分析', NULL, 0, 0, 'monitor', 'data', b'0', b'0', NULL, '2019-12-16 15:48:22', NULL, 0);
INSERT INTO `menu` VALUES (118, b'0', '元数据', 'data/meta/index', 117, 999, 'dev', 'meta', b'0', b'0', 'Meta', '2019-12-16 15:50:18', 'meta:list', 1);
INSERT INTO `menu` VALUES (119, b'0', '元数据新增', NULL, 118, 999, NULL, NULL, b'0', b'0', NULL, '2019-12-16 16:44:12', 'meta:add', 2);
INSERT INTO `menu` VALUES (120, b'0', '元数据编辑', NULL, 118, 999, NULL, NULL, b'0', b'0', NULL, '2019-12-16 16:44:40', 'meta:edit', 2);
INSERT INTO `menu` VALUES (121, b'0', '元数据删除', NULL, 118, 999, NULL, NULL, b'0', b'0', NULL, '2019-12-16 16:45:14', 'meta:del', 2);
INSERT INTO `menu` VALUES (122, b'0', '数据查询', 'data/query/index', 117, 999, 'database', 'query', b'0', b'0', NULL, '2020-01-10 16:57:05', 'query:list', 1);
INSERT INTO `menu` VALUES (123, b'0', '通用查询', 'data/query/query', 117, 999, 'education', 'data/query/query/:tableName', b'0', b'1', 'Query', '2020-01-17 14:18:55', NULL, 1);
INSERT INTO `menu` VALUES (124, b'0', '代码定制', 'generator/genCustom/index', 36, 999, 'dev', 'custom', b'0', b'0', 'customIndex', '2020-03-15 15:49:22', NULL, 1);
INSERT INTO `menu` VALUES (126, b'0', '代码定制-编辑', 'generator/genCustom/edit', 36, 999, 'dev', 'generator/genCustom/edit/:id', b'0', b'1', 'genCustomEdit', '2020-03-20 11:39:15', NULL, 1);
INSERT INTO `menu` VALUES (129, b'0', '测试生成', 'demo/plan/index', 36, 999, 'dev', 'demo/plan', b'0', b'0', 'DemoPlan', '2020-03-26 16:44:04', NULL, 1);
INSERT INTO `menu` VALUES (130, b'1', 'swagger接口', NULL, 36, 999, 'education', 'http://localhost:8000/doc.html', b'0', b'0', NULL, '2020-03-27 11:40:09', NULL, 1);

-- ----------------------------
-- Table structure for mnt_app
-- ----------------------------
DROP TABLE IF EXISTS `mnt_app`;
CREATE TABLE `mnt_app`  (
  `id` bigint(20) NOT NULL COMMENT '应用ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用名称',
  `upload_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传目录',
  `deploy_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部署路径',
  `backup_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备份路径',
  `port` int(255) NULL DEFAULT NULL COMMENT '应用端口',
  `start_script` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '启动脚本',
  `deploy_script` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部署脚本',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mnt_app
-- ----------------------------
INSERT INTO `mnt_app` VALUES (1, 'eladmin-monitor-2.3.jar', '/opt/upload', '/opt/monitor', '/opt/backup', 8777, 'cd /opt/monitor\nnohup java -jar eladmin-monitor-2.3.jar >nohup.out 2>&1 &\n', 'mkdir -p /opt/monitor\nmv -f /opt/upload/eladmin-monitor-2.3.jar /opt/monitor\n', '2019-11-24 20:52:59');

-- ----------------------------
-- Table structure for mnt_database
-- ----------------------------
DROP TABLE IF EXISTS `mnt_database`;
CREATE TABLE `mnt_database`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `jdbc_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'jdbc连接',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mnt_database
-- ----------------------------
INSERT INTO `mnt_database` VALUES ('5ff571475dc74d02b755911e4f84e968', 'eladmin', 'jdbc:log4jdbc:mysql://localhost:3306/eladmin?serverTimezone=Asia/Shanghai&characterEncoding=utf8&useSSL=false', 'root', 'root', '2020-04-15 13:59:53');

-- ----------------------------
-- Table structure for mnt_deploy
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy`;
CREATE TABLE `mnt_deploy`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `app_id` bigint(20) NULL DEFAULT NULL COMMENT '应用编号',
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK6sy157pseoxx4fmcqr1vnvvhy`(`app_id`) USING BTREE,
  CONSTRAINT `FK6sy157pseoxx4fmcqr1vnvvhy` FOREIGN KEY (`app_id`) REFERENCES `mnt_app` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mnt_deploy
-- ----------------------------
INSERT INTO `mnt_deploy` VALUES (2, 1, '2019-11-26 13:59:20');

-- ----------------------------
-- Table structure for mnt_deploy_history
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy_history`;
CREATE TABLE `mnt_deploy_history`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `app_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用名称',
  `deploy_date` datetime(0) NOT NULL COMMENT '部署日期',
  `deploy_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部署用户',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务器IP',
  `deploy_id` bigint(20) NULL DEFAULT NULL COMMENT '部署编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mnt_deploy_history
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_deploy_server
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy_server`;
CREATE TABLE `mnt_deploy_server`  (
  `deploy_id` bigint(20) NOT NULL,
  `server_id` bigint(20) NOT NULL,
  PRIMARY KEY (`deploy_id`, `server_id`) USING BTREE,
  INDEX `FKeaaha7jew9a02b3bk9ghols53`(`server_id`) USING BTREE,
  CONSTRAINT `FK3cehr56tedph6nk3gxsmeq0pb` FOREIGN KEY (`deploy_id`) REFERENCES `mnt_deploy` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKeaaha7jew9a02b3bk9ghols53` FOREIGN KEY (`server_id`) REFERENCES `mnt_server` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mnt_deploy_server
-- ----------------------------
INSERT INTO `mnt_deploy_server` VALUES (2, 2);

-- ----------------------------
-- Table structure for mnt_server
-- ----------------------------
DROP TABLE IF EXISTS `mnt_server`;
CREATE TABLE `mnt_server`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'IP地址',
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `port` int(11) NULL DEFAULT NULL COMMENT '端口',
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mnt_server
-- ----------------------------
INSERT INTO `mnt_server` VALUES (2, 'root', '192.168.31.203', '203', '3edcVFR$', 22, '2019-11-26 13:58:36');

-- ----------------------------
-- Table structure for monitor_server
-- ----------------------------
DROP TABLE IF EXISTS `monitor_server`;
CREATE TABLE `monitor_server`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpu_core` int(11) NULL DEFAULT NULL COMMENT 'CPU内核数',
  `cpu_rate` double NULL DEFAULT NULL COMMENT 'CPU使用率',
  `disk_total` double NULL DEFAULT NULL COMMENT '磁盘总量',
  `disk_used` double NULL DEFAULT NULL COMMENT '磁盘使用量',
  `mem_total` double NULL DEFAULT NULL COMMENT '内存总数',
  `mem_used` double NULL DEFAULT NULL COMMENT '内存使用量',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `port` int(11) NULL DEFAULT NULL COMMENT '访问端口',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `swap_total` double NULL DEFAULT NULL COMMENT '交换区总量',
  `swap_used` double NULL DEFAULT NULL COMMENT '交换区使用量',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of monitor_server
-- ----------------------------
INSERT INTO `monitor_server` VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, '203', 8777, 999, NULL, NULL, NULL, '192.168.31.203');

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '上传日期',
  `delete_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除的URL',
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片名称',
  `height` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片高度',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片大小',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名称',
  `width` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片宽度',
  `md5code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件的MD5值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for qiniu_config
-- ----------------------------
DROP TABLE IF EXISTS `qiniu_config`;
CREATE TABLE `qiniu_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `access_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'accessKey',
  `bucket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Bucket 识别符',
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '外链域名',
  `secret_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'secretKey',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空间类型',
  `zone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机房',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for qiniu_content
-- ----------------------------
DROP TABLE IF EXISTS `qiniu_content`;
CREATE TABLE `qiniu_content`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bucket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Bucket 识别符',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件大小',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型：私有或公开',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '上传或同步的时间',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件url',
  `suffix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `quartz_job`;
CREATE TABLE `quartz_job`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Spring Bean名称',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'cron 表达式',
  `is_pause` bit(1) NULL DEFAULT NULL COMMENT '状态：1暂停、0启用',
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法名称',
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of quartz_job
-- ----------------------------
INSERT INTO `quartz_job` VALUES (1, 'visitsTask', '0 0 0 * * ?', b'0', '更新访客记录', 'run', NULL, '每日0点创建新的访客记录', '2019-01-08 14:53:31');
INSERT INTO `quartz_job` VALUES (2, 'testTask', '0/5 * * * * ?', b'1', '测试1', 'run1', 'test', '带参测试，多参使用json', '2019-08-22 14:08:29');
INSERT INTO `quartz_job` VALUES (3, 'testTask', '0/5 * * * * ?', b'1', '测试', 'run', '', '不带参测试', '2019-09-26 16:44:39');

-- ----------------------------
-- Table structure for quartz_log
-- ----------------------------
DROP TABLE IF EXISTS `quartz_log`;
CREATE TABLE `quartz_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `baen_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_success` bit(1) NULL DEFAULT NULL,
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `data_scope` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据权限',
  `level` int(255) NULL DEFAULT NULL COMMENT '角色级别',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '功能权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', '-', '全部', 1, '2018-11-23 11:04:37', 'admin');
INSERT INTO `role` VALUES (2, '普通用户', '-', '自定义', 2, '2018-11-23 13:09:06', 'common');

-- ----------------------------
-- Table structure for roles_depts
-- ----------------------------
DROP TABLE IF EXISTS `roles_depts`;
CREATE TABLE `roles_depts`  (
  `role_id` bigint(20) NOT NULL,
  `dept_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE,
  INDEX `FK7qg6itn5ajdoa9h9o78v9ksur`(`dept_id`) USING BTREE,
  CONSTRAINT `FK7qg6itn5ajdoa9h9o78v9ksur` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKrg1ci4cxxfbja0sb0pddju7k` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of roles_depts
-- ----------------------------
INSERT INTO `roles_depts` VALUES (2, 2);
INSERT INTO `roles_depts` VALUES (2, 5);

-- ----------------------------
-- Table structure for roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `roles_menus`;
CREATE TABLE `roles_menus`  (
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`menu_id`, `role_id`) USING BTREE,
  INDEX `FKcngg2qadojhi3a651a5adkvbq`(`role_id`) USING BTREE,
  CONSTRAINT `FKo7wsmlrrxb2osfaoavp46rv2r` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKtag324maketmxffly3pdyh193` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of roles_menus
-- ----------------------------
INSERT INTO `roles_menus` VALUES (1, 1);
INSERT INTO `roles_menus` VALUES (2, 1);
INSERT INTO `roles_menus` VALUES (3, 1);
INSERT INTO `roles_menus` VALUES (5, 1);
INSERT INTO `roles_menus` VALUES (6, 1);
INSERT INTO `roles_menus` VALUES (7, 1);
INSERT INTO `roles_menus` VALUES (8, 1);
INSERT INTO `roles_menus` VALUES (9, 1);
INSERT INTO `roles_menus` VALUES (10, 1);
INSERT INTO `roles_menus` VALUES (11, 1);
INSERT INTO `roles_menus` VALUES (14, 1);
INSERT INTO `roles_menus` VALUES (15, 1);
INSERT INTO `roles_menus` VALUES (16, 1);
INSERT INTO `roles_menus` VALUES (18, 1);
INSERT INTO `roles_menus` VALUES (19, 1);
INSERT INTO `roles_menus` VALUES (21, 1);
INSERT INTO `roles_menus` VALUES (22, 1);
INSERT INTO `roles_menus` VALUES (23, 1);
INSERT INTO `roles_menus` VALUES (24, 1);
INSERT INTO `roles_menus` VALUES (27, 1);
INSERT INTO `roles_menus` VALUES (28, 1);
INSERT INTO `roles_menus` VALUES (30, 1);
INSERT INTO `roles_menus` VALUES (32, 1);
INSERT INTO `roles_menus` VALUES (33, 1);
INSERT INTO `roles_menus` VALUES (34, 1);
INSERT INTO `roles_menus` VALUES (35, 1);
INSERT INTO `roles_menus` VALUES (36, 1);
INSERT INTO `roles_menus` VALUES (37, 1);
INSERT INTO `roles_menus` VALUES (38, 1);
INSERT INTO `roles_menus` VALUES (39, 1);
INSERT INTO `roles_menus` VALUES (41, 1);
INSERT INTO `roles_menus` VALUES (44, 1);
INSERT INTO `roles_menus` VALUES (45, 1);
INSERT INTO `roles_menus` VALUES (46, 1);
INSERT INTO `roles_menus` VALUES (48, 1);
INSERT INTO `roles_menus` VALUES (49, 1);
INSERT INTO `roles_menus` VALUES (50, 1);
INSERT INTO `roles_menus` VALUES (52, 1);
INSERT INTO `roles_menus` VALUES (53, 1);
INSERT INTO `roles_menus` VALUES (54, 1);
INSERT INTO `roles_menus` VALUES (56, 1);
INSERT INTO `roles_menus` VALUES (57, 1);
INSERT INTO `roles_menus` VALUES (58, 1);
INSERT INTO `roles_menus` VALUES (60, 1);
INSERT INTO `roles_menus` VALUES (61, 1);
INSERT INTO `roles_menus` VALUES (62, 1);
INSERT INTO `roles_menus` VALUES (64, 1);
INSERT INTO `roles_menus` VALUES (65, 1);
INSERT INTO `roles_menus` VALUES (66, 1);
INSERT INTO `roles_menus` VALUES (68, 1);
INSERT INTO `roles_menus` VALUES (70, 1);
INSERT INTO `roles_menus` VALUES (71, 1);
INSERT INTO `roles_menus` VALUES (73, 1);
INSERT INTO `roles_menus` VALUES (74, 1);
INSERT INTO `roles_menus` VALUES (75, 1);
INSERT INTO `roles_menus` VALUES (77, 1);
INSERT INTO `roles_menus` VALUES (78, 1);
INSERT INTO `roles_menus` VALUES (79, 1);
INSERT INTO `roles_menus` VALUES (80, 1);
INSERT INTO `roles_menus` VALUES (82, 1);
INSERT INTO `roles_menus` VALUES (83, 1);
INSERT INTO `roles_menus` VALUES (90, 1);
INSERT INTO `roles_menus` VALUES (92, 1);
INSERT INTO `roles_menus` VALUES (93, 1);
INSERT INTO `roles_menus` VALUES (94, 1);
INSERT INTO `roles_menus` VALUES (97, 1);
INSERT INTO `roles_menus` VALUES (98, 1);
INSERT INTO `roles_menus` VALUES (115, 1);
INSERT INTO `roles_menus` VALUES (116, 1);
INSERT INTO `roles_menus` VALUES (117, 1);
INSERT INTO `roles_menus` VALUES (118, 1);
INSERT INTO `roles_menus` VALUES (119, 1);
INSERT INTO `roles_menus` VALUES (120, 1);
INSERT INTO `roles_menus` VALUES (121, 1);
INSERT INTO `roles_menus` VALUES (122, 1);
INSERT INTO `roles_menus` VALUES (123, 1);
INSERT INTO `roles_menus` VALUES (124, 1);
INSERT INTO `roles_menus` VALUES (126, 1);
INSERT INTO `roles_menus` VALUES (129, 1);
INSERT INTO `roles_menus` VALUES (130, 1);
INSERT INTO `roles_menus` VALUES (1, 2);
INSERT INTO `roles_menus` VALUES (2, 2);
INSERT INTO `roles_menus` VALUES (3, 2);
INSERT INTO `roles_menus` VALUES (5, 2);
INSERT INTO `roles_menus` VALUES (6, 2);
INSERT INTO `roles_menus` VALUES (8, 2);
INSERT INTO `roles_menus` VALUES (9, 2);
INSERT INTO `roles_menus` VALUES (10, 2);
INSERT INTO `roles_menus` VALUES (11, 2);
INSERT INTO `roles_menus` VALUES (14, 2);
INSERT INTO `roles_menus` VALUES (15, 2);
INSERT INTO `roles_menus` VALUES (16, 2);
INSERT INTO `roles_menus` VALUES (18, 2);
INSERT INTO `roles_menus` VALUES (19, 2);
INSERT INTO `roles_menus` VALUES (21, 2);
INSERT INTO `roles_menus` VALUES (23, 2);
INSERT INTO `roles_menus` VALUES (24, 2);
INSERT INTO `roles_menus` VALUES (27, 2);
INSERT INTO `roles_menus` VALUES (28, 2);
INSERT INTO `roles_menus` VALUES (30, 2);
INSERT INTO `roles_menus` VALUES (33, 2);
INSERT INTO `roles_menus` VALUES (34, 2);
INSERT INTO `roles_menus` VALUES (35, 2);
INSERT INTO `roles_menus` VALUES (36, 2);
INSERT INTO `roles_menus` VALUES (37, 2);
INSERT INTO `roles_menus` VALUES (38, 2);
INSERT INTO `roles_menus` VALUES (39, 2);
INSERT INTO `roles_menus` VALUES (70, 2);
INSERT INTO `roles_menus` VALUES (71, 2);
INSERT INTO `roles_menus` VALUES (77, 2);
INSERT INTO `roles_menus` VALUES (78, 2);
INSERT INTO `roles_menus` VALUES (79, 2);
INSERT INTO `roles_menus` VALUES (117, 2);
INSERT INTO `roles_menus` VALUES (118, 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `avatar_id` bigint(20) NULL DEFAULT NULL COMMENT '头像',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `enabled` bigint(20) NULL DEFAULT NULL COMMENT '状态：1启用、0禁用',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门名称',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `job_id` bigint(20) NULL DEFAULT NULL COMMENT '岗位名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `last_password_reset_time` datetime(0) NULL DEFAULT NULL COMMENT '最后修改密码的日期',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_kpubos9gc2cvtkb0thktkbkes`(`email`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `FK5rwmryny6jthaaxkogownknqp`(`dept_id`) USING BTREE,
  INDEX `FKfftoc2abhot8f2wu6cl9a5iky`(`job_id`) USING BTREE,
  INDEX `FKpq2dhypk2qgt68nauh2by22jb`(`avatar_id`) USING BTREE,
  CONSTRAINT `FK5rwmryny6jthaaxkogownknqp` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKfftoc2abhot8f2wu6cl9a5iky` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKpq2dhypk2qgt68nauh2by22jb` FOREIGN KEY (`avatar_id`) REFERENCES `user_avatar` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, NULL, 'admin@eladmin.net', 1, '$2a$10$HhxyGZy.ulf3RvAwaHUGb.k.2i9PBpv4YbLMJWp8pES7pPhTyRCF.', 'admin', 2, '18888888888', 11, '2018-08-23 09:11:56', '2019-05-18 17:34:21', NULL, NULL);
INSERT INTO `user` VALUES (3, NULL, 'test@eladmin.net', 1, '$2a$10$HhxyGZy.ulf3RvAwaHUGb.k.2i9PBpv4YbLMJWp8pES7pPhTyRCF.', 'test', 2, '17777777777', 12, '2018-12-27 20:05:26', '2019-04-01 09:15:24', NULL, NULL);

-- ----------------------------
-- Table structure for user_avatar
-- ----------------------------
DROP TABLE IF EXISTS `user_avatar`;
CREATE TABLE `user_avatar`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实文件名',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大小',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users_roles
-- ----------------------------
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `FKq4eq273l04bpu4efj0jd0jb98`(`role_id`) USING BTREE,
  CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users_roles
-- ----------------------------
INSERT INTO `users_roles` VALUES (1, 1);
INSERT INTO `users_roles` VALUES (3, 2);

-- ----------------------------
-- Table structure for verification_code
-- ----------------------------
DROP TABLE IF EXISTS `verification_code`;
CREATE TABLE `verification_code`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '验证码',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `status` bit(1) NULL DEFAULT NULL COMMENT '状态：1有效、0过期',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '验证码类型：email或者短信',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接收邮箱或者手机号码',
  `scenes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务名称：如重置邮箱、重置密码等',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for visits
-- ----------------------------
DROP TABLE IF EXISTS `visits`;
CREATE TABLE `visits`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_counts` bigint(20) NULL DEFAULT NULL,
  `pv_counts` bigint(20) NULL DEFAULT NULL,
  `week_day` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_11aksgq87euk9bcyeesfs4vtp`(`date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 139 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of visits
-- ----------------------------
INSERT INTO `visits` VALUES (138, '2020-04-22 09:36:05', '2020-04-22', 1, 3, 'Wed');

SET FOREIGN_KEY_CHECKS = 1;
