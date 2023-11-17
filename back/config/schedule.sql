/*
 Navicat Premium Data Transfer

 Source Server         : rain
 Source Server Type    : MySQL
 Source Server Version : 80100 (8.1.0)
 Source Host           : localhost:3306
 Source Schema         : calender

 Target Server Type    : MySQL
 Target Server Version : 80100 (8.1.0)
 File Encoding         : 65001

 Date: 15/11/2023 08:47:00
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `selectedStartDate` datetime NULL DEFAULT NULL,
  `selectedEndDate` datetime NULL DEFAULT NULL,
  `selectedRemindDate` datetime NULL DEFAULT NULL,
  `repetitionType` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isFullDay` enum('true','false') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'false',
  `isAlarm` enum('true','false') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES ('0ccc2ef9-aaf6-45f4-82c6-c1774706a46f', 'dccc', '2023-11-13 15:58:44', '2023-11-13 15:58:44', '2023-11-13 15:58:44', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('1118593e-9a19-4cf0-997d-d3bc2f09f400', 'ggg', '2023-11-14 04:39:36', '2023-11-14 04:39:36', '2023-11-14 04:39:36', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('11dc8a8d-0238-4e04-8e12-1496dd412511', 'fv', '2023-11-13 17:01:56', '2023-11-13 17:01:56', '2023-11-13 17:01:56', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('2e091980-afed-4a2e-b8ff-9b792e9058d4', 'n', '2023-11-14 04:42:04', '2023-11-14 04:42:04', '2023-11-14 04:42:04', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('2e546a38-ce6e-4974-95d8-f523066cc06c', '4', '2023-11-08 07:49:40', '2023-11-08 07:49:40', '2023-11-08 07:49:40', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('31d06e08-6e69-4214-be6b-1b42a5a272f8', '5', '2023-11-08 07:49:47', '2023-11-08 07:49:47', '2023-11-08 07:49:47', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('4ed76467-0565-4d6d-8c90-933bf3c8d007', 'r', '2023-11-14 04:37:36', '2023-11-14 04:37:36', '2023-11-14 04:37:36', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('5fbb04bc-a522-4b03-9ae5-a93410d52269', 'd', '2023-11-14 07:24:48', '2023-11-14 07:24:48', '2023-11-14 07:24:48', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('610037cc-c733-4feb-90ad-716dbb5c6a16', '7', '2023-11-08 07:52:38', '2023-11-08 07:52:38', '2023-11-08 07:52:38', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('67b7f9ae-414a-4a13-bbdc-612a4b53da20', 'd', '2023-11-13 17:05:38', '2023-11-13 17:05:38', '2023-11-13 17:05:38', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('7fd7515d-be15-4d36-912b-c802048ccc95', '3', '2023-11-14 02:21:08', '2023-11-14 02:21:08', '2023-11-14 02:21:08', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('88a1f95f-e304-4115-af37-40f1834d14fa', 'f', '2023-11-14 06:41:44', '2023-11-14 06:41:44', '2023-11-14 06:41:44', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('8e21d012-8b0c-4914-853f-45c9540bfd90', '1', '2023-11-08 04:24:20', '2023-11-08 04:24:20', '2023-11-08 04:24:20', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('97ce3138-1797-4a0d-8b09-0c773f74cb08', 'g', '2023-11-14 04:46:39', '2023-11-14 04:46:39', '2023-11-14 04:46:39', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('add8abf7-204b-42ee-b88f-55830d8fc8a2', 'd', '2023-11-13 17:06:08', '2023-11-13 17:06:08', '2023-11-13 17:06:08', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('b8bd323a-5487-4220-9b7e-d88b215c5dcc', '6', '2023-11-08 07:50:02', '2023-11-08 07:50:02', '2023-11-08 07:50:02', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('c6e65bbb-6da7-41db-b731-8d557372a47a', '2', '2023-11-14 06:32:09', '2023-11-14 06:32:09', '2023-11-14 06:32:09', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('cf422172-d453-4d8d-8a38-9ded4ef180c8', '2', '2023-11-08 05:17:53', '2023-11-08 05:17:53', '2023-11-08 05:17:53', '一次性活动', 'true', 'false', '2222', '22');
INSERT INTO `schedule` VALUES ('e0a80cf0-77ed-4545-b89a-ed91e4915157', 'r', '2023-11-13 16:43:52', '2023-11-13 16:43:52', '2023-11-13 16:43:52', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('e19b96ad-222b-4081-88bc-d2f48d06b998', 'e', '2023-11-14 06:48:31', '2023-11-14 06:48:31', '2023-11-14 06:48:31', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('e51a28df-bc51-4263-9a2d-85ee851af284', '3', '2023-11-08 07:49:35', '2023-11-08 07:49:35', '2023-11-08 07:49:35', '一次性活动', 'false', 'false', '', '');
INSERT INTO `schedule` VALUES ('ff98160b-4649-4c33-9a37-d1db913a233e', 'f', '2023-11-13 17:00:53', '2023-11-13 17:00:53', '2023-11-13 17:00:53', '一次性活动', 'false', 'false', '', '');

SET FOREIGN_KEY_CHECKS = 1;
