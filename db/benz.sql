/*
 Navicat Premium Data Transfer

 Source Server         : XAMPP
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : benz

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 02/09/2019 16:08:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clue
-- ----------------------------
DROP TABLE IF EXISTS `clue`;
CREATE TABLE `clue`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话',
  `utm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '销售人员',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态[1:没有意向,2:意向一般,3：意向强烈,4:完成销售,5,取消销售]',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  `created_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `is_deleted` int(11) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of clue
-- ----------------------------
INSERT INTO `clue` VALUES (1, '杰杰', '18229855932', '经理', NULL, NULL, NULL, '2019-08-30 16:25:22', NULL);
INSERT INTO `clue` VALUES (2, '杰克', '18229855930', '销售1', NULL, 5, NULL, '2019-08-30 16:30:54', NULL);
INSERT INTO `clue` VALUES (3, '杰西', '18229855931', '销售2', NULL, 3, NULL, '2019-08-30 16:24:46', NULL);
INSERT INTO `clue` VALUES (4, '杰玛', '18229855933', '销售3', NULL, 2, NULL, '2019-08-30 16:26:03', NULL);
INSERT INTO `clue` VALUES (5, '杰邦', '18229855934', '销售4', NULL, 4, NULL, '2019-08-30 16:26:25', NULL);
INSERT INTO `clue` VALUES (6, '杰黑', '18229855935', '销售5', NULL, 1, NULL, '2019-08-30 16:27:00', NULL);

-- ----------------------------
-- Table structure for clue_log
-- ----------------------------
DROP TABLE IF EXISTS `clue_log`;
CREATE TABLE `clue_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clue_id` int(11) NULL DEFAULT NULL COMMENT '线索id',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `created_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `is_deleted` int(11) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of clue_log
-- ----------------------------
INSERT INTO `clue_log` VALUES (1, 0, NULL, '2019-08-30 16:28:07', NULL);
INSERT INTO `clue_log` VALUES (2, 0, NULL, '2019-08-30 16:27:40', NULL);
INSERT INTO `clue_log` VALUES (3, 0, NULL, '2019-08-30 16:27:56', NULL);
INSERT INTO `clue_log` VALUES (4, 0, NULL, '2019-08-30 16:28:56', NULL);
INSERT INTO `clue_log` VALUES (5, 0, NULL, '2019-08-30 16:29:12', NULL);
INSERT INTO `clue_log` VALUES (6, 0, NULL, '2019-08-30 16:29:32', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色',
  `created_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `is_deleted` int(11) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '涛子哥', '15580332666', '123456', '经理', '2019-09-02 14:32:14', NULL);
INSERT INTO `user` VALUES (2, '销售1', '15580332660', '123456', '销售1', '2019-09-02 10:12:55', NULL);
INSERT INTO `user` VALUES (3, '销售2', '15580332661', '123456', '销售2', '2019-09-02 10:12:59', NULL);
INSERT INTO `user` VALUES (4, '销售3', '15580332662', '123456', '销售3', '2019-09-02 10:13:02', NULL);
INSERT INTO `user` VALUES (5, '销售4', '15580332663', '123456', '销售4', '2019-09-02 10:13:05', NULL);
INSERT INTO `user` VALUES (6, '销售5', '15580332664', '123456', '销售5', '2019-09-02 10:13:08', NULL);

SET FOREIGN_KEY_CHECKS = 1;
