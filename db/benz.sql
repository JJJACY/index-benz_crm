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

 Date: 30/08/2019 16:33:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clue
-- ----------------------------
DROP TABLE IF EXISTS `clue`;
CREATE TABLE `clue`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话',
  `originate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源',
  `time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of clue
-- ----------------------------
INSERT INTO `clue` VALUES (1, '杰杰', '18229855932', '百度', '2019-08-30 16:25:22');
INSERT INTO `clue` VALUES (2, '杰克', '18229855930', '百度', '2019-08-30 16:30:54');
INSERT INTO `clue` VALUES (3, '杰西', '18229855931', '微信', '2019-08-30 16:24:46');
INSERT INTO `clue` VALUES (4, '杰玛', '18229855933', '百度', '2019-08-30 16:26:03');
INSERT INTO `clue` VALUES (5, '杰邦', '18229855934', '百度', '2019-08-30 16:26:25');
INSERT INTO `clue` VALUES (6, '杰黑', '18229855935', '微信', '2019-08-30 16:27:00');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `id` int(11) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES (1, '没意向', '2019-08-30 16:28:07');
INSERT INTO `record` VALUES (2, '意向强烈', '2019-08-30 16:27:40');
INSERT INTO `record` VALUES (3, '意向一般', '2019-08-30 16:27:56');
INSERT INTO `record` VALUES (4, '意向一般', '2019-08-30 16:28:56');
INSERT INTO `record` VALUES (5, '意向一般', '2019-08-30 16:29:12');
INSERT INTO `record` VALUES (6, '意向强烈', '2019-08-30 16:29:32');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `part` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '涛子哥', '15580332666', '123456', '经理');
INSERT INTO `user` VALUES (2, '销售1', '15580332660', '123456', '销售1');
INSERT INTO `user` VALUES (3, '销售2', '15580332661', '123456', '销售2');
INSERT INTO `user` VALUES (4, '销售3', '15580332662', '123456', '销售3');
INSERT INTO `user` VALUES (5, '销售4', '15580332663', '123456', '销售4');
INSERT INTO `user` VALUES (6, '销售5', '15580332664', '123456', '销售5');

SET FOREIGN_KEY_CHECKS = 1;
