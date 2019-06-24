/*
 Navicat Premium Data Transfer

 Source Server         : Pycharm
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : crm2

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 24/06/2019 11:24:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (10, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (11, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (12, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (19, 'Can add class list', 7, 'add_classlist');
INSERT INTO `auth_permission` VALUES (20, 'Can change class list', 7, 'change_classlist');
INSERT INTO `auth_permission` VALUES (21, 'Can delete class list', 7, 'delete_classlist');
INSERT INTO `auth_permission` VALUES (22, 'Can add consult record', 8, 'add_consultrecord');
INSERT INTO `auth_permission` VALUES (23, 'Can change consult record', 8, 'change_consultrecord');
INSERT INTO `auth_permission` VALUES (24, 'Can delete consult record', 8, 'delete_consultrecord');
INSERT INTO `auth_permission` VALUES (25, 'Can add course', 9, 'add_course');
INSERT INTO `auth_permission` VALUES (26, 'Can change course', 9, 'change_course');
INSERT INTO `auth_permission` VALUES (27, 'Can delete course', 9, 'delete_course');
INSERT INTO `auth_permission` VALUES (28, 'Can add course record', 10, 'add_courserecord');
INSERT INTO `auth_permission` VALUES (29, 'Can change course record', 10, 'change_courserecord');
INSERT INTO `auth_permission` VALUES (30, 'Can delete course record', 10, 'delete_courserecord');
INSERT INTO `auth_permission` VALUES (31, 'Can add customer', 11, 'add_customer');
INSERT INTO `auth_permission` VALUES (32, 'Can change customer', 11, 'change_customer');
INSERT INTO `auth_permission` VALUES (33, 'Can delete customer', 11, 'delete_customer');
INSERT INTO `auth_permission` VALUES (34, 'Can add department', 12, 'add_department');
INSERT INTO `auth_permission` VALUES (35, 'Can change department', 12, 'change_department');
INSERT INTO `auth_permission` VALUES (36, 'Can delete department', 12, 'delete_department');
INSERT INTO `auth_permission` VALUES (37, 'Can add school', 13, 'add_school');
INSERT INTO `auth_permission` VALUES (38, 'Can change school', 13, 'change_school');
INSERT INTO `auth_permission` VALUES (39, 'Can delete school', 13, 'delete_school');
INSERT INTO `auth_permission` VALUES (40, 'Can add student', 14, 'add_student');
INSERT INTO `auth_permission` VALUES (41, 'Can change student', 14, 'change_student');
INSERT INTO `auth_permission` VALUES (42, 'Can delete student', 14, 'delete_student');
INSERT INTO `auth_permission` VALUES (43, 'Can add study record', 15, 'add_studyrecord');
INSERT INTO `auth_permission` VALUES (44, 'Can change study record', 15, 'change_studyrecord');
INSERT INTO `auth_permission` VALUES (45, 'Can delete study record', 15, 'delete_studyrecord');
INSERT INTO `auth_permission` VALUES (46, 'Can add user info', 16, 'add_userinfo');
INSERT INTO `auth_permission` VALUES (47, 'Can change user info', 16, 'change_userinfo');
INSERT INTO `auth_permission` VALUES (48, 'Can delete user info', 16, 'delete_userinfo');
INSERT INTO `auth_permission` VALUES (49, 'Can add customer distrbute', 17, 'add_customerdistrbute');
INSERT INTO `auth_permission` VALUES (50, 'Can change customer distrbute', 17, 'change_customerdistrbute');
INSERT INTO `auth_permission` VALUES (51, 'Can delete customer distrbute', 17, 'delete_customerdistrbute');
INSERT INTO `auth_permission` VALUES (52, 'Can add permission', 18, 'add_permission');
INSERT INTO `auth_permission` VALUES (53, 'Can change permission', 18, 'change_permission');
INSERT INTO `auth_permission` VALUES (54, 'Can delete permission', 18, 'delete_permission');
INSERT INTO `auth_permission` VALUES (55, 'Can add role', 19, 'add_role');
INSERT INTO `auth_permission` VALUES (56, 'Can change role', 19, 'change_role');
INSERT INTO `auth_permission` VALUES (57, 'Can delete role', 19, 'delete_role');
INSERT INTO `auth_permission` VALUES (58, 'Can add user', 20, 'add_user');
INSERT INTO `auth_permission` VALUES (59, 'Can change user', 20, 'change_user');
INSERT INTO `auth_permission` VALUES (60, 'Can delete user', 20, 'delete_user');
INSERT INTO `auth_permission` VALUES (61, 'Can add permission group', 21, 'add_permissiongroup');
INSERT INTO `auth_permission` VALUES (62, 'Can change permission group', 21, 'change_permissiongroup');
INSERT INTO `auth_permission` VALUES (63, 'Can delete permission group', 21, 'delete_permissiongroup');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$36000$ArZJpslkncBv$jrir9iJ2aDrbu2Dz5+NyL69a2YyhMR5Yi+km3xqk12k=', '2019-04-03 07:52:14.068799', 1, 'me', '', '', '', 1, 1, '2019-04-02 16:22:24.202382');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$36000$FdvkWVihMTLo$m8fx2nkv9B2FO5Vt9QbFKzAzu04ogbyH8vFVn2IxGHU=', '2019-05-30 09:13:02.621854', 1, 'admin', '', '', '', 1, 1, '2019-04-03 07:51:42.881585');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for crm_classlist
-- ----------------------------
DROP TABLE IF EXISTS `crm_classlist`;
CREATE TABLE `crm_classlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `semester` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `graduate_date` date NULL DEFAULT NULL,
  `memo` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `crm_classlist_course_id_8a4c36de_fk_crm_course_id`(`course_id`) USING BTREE,
  INDEX `crm_classlist_school_id_1f6915e9_fk_crm_school_id`(`school_id`) USING BTREE,
  INDEX `crm_classlist_tutor_id_983e3fa4_fk_crm_userinfo_id`(`tutor_id`) USING BTREE,
  CONSTRAINT `crm_classlist_course_id_8a4c36de_fk_crm_course_id` FOREIGN KEY (`course_id`) REFERENCES `crm_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_classlist_school_id_1f6915e9_fk_crm_school_id` FOREIGN KEY (`school_id`) REFERENCES `crm_school` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_classlist_tutor_id_983e3fa4_fk_crm_userinfo_id` FOREIGN KEY (`tutor_id`) REFERENCES `crm_userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_classlist
-- ----------------------------
INSERT INTO `crm_classlist` VALUES (1, 9, 21000, '2018-12-13', '2019-06-01', NULL, 3, 1, 6);
INSERT INTO `crm_classlist` VALUES (2, 12, 23000, '2019-04-15', '2019-10-01', NULL, 3, 1, 3);
INSERT INTO `crm_classlist` VALUES (3, 45, 23000, '2018-12-13', '2019-03-01', NULL, 4, 1, 3);

-- ----------------------------
-- Table structure for crm_classlist_teachers
-- ----------------------------
DROP TABLE IF EXISTS `crm_classlist_teachers`;
CREATE TABLE `crm_classlist_teachers`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classlist_id` int(11) NOT NULL,
  `userinfo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `crm_classlist_teachers_classlist_id_userinfo_id_de085a85_uniq`(`classlist_id`, `userinfo_id`) USING BTREE,
  INDEX `crm_classlist_teachers_userinfo_id_43ce9ed7_fk_crm_userinfo_id`(`userinfo_id`) USING BTREE,
  CONSTRAINT `crm_classlist_teachers_classlist_id_4b676750_fk_crm_classlist_id` FOREIGN KEY (`classlist_id`) REFERENCES `crm_classlist` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_classlist_teachers_userinfo_id_43ce9ed7_fk_crm_userinfo_id` FOREIGN KEY (`userinfo_id`) REFERENCES `crm_userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_classlist_teachers
-- ----------------------------
INSERT INTO `crm_classlist_teachers` VALUES (1, 1, 4);
INSERT INTO `crm_classlist_teachers` VALUES (2, 1, 5);
INSERT INTO `crm_classlist_teachers` VALUES (3, 2, 4);
INSERT INTO `crm_classlist_teachers` VALUES (4, 2, 5);
INSERT INTO `crm_classlist_teachers` VALUES (6, 3, 5);

-- ----------------------------
-- Table structure for crm_consultrecord
-- ----------------------------
DROP TABLE IF EXISTS `crm_consultrecord`;
CREATE TABLE `crm_consultrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `note` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `consultant_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `crm_consultrecord_consultant_id_0a04c00c_fk_crm_userinfo_id`(`consultant_id`) USING BTREE,
  INDEX `crm_consultrecord_customer_id_c1259023_fk_crm_customer_id`(`customer_id`) USING BTREE,
  CONSTRAINT `crm_consultrecord_consultant_id_0a04c00c_fk_crm_userinfo_id` FOREIGN KEY (`consultant_id`) REFERENCES `crm_userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_consultrecord_customer_id_c1259023_fk_crm_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_consultrecord
-- ----------------------------
INSERT INTO `crm_consultrecord` VALUES (1, '2019-04-01', '跟进内容', 3, 1);
INSERT INTO `crm_consultrecord` VALUES (2, '2019-04-01', '太简单', 3, 2);
INSERT INTO `crm_consultrecord` VALUES (3, '2019-04-01', '人数少', 6, 3);
INSERT INTO `crm_consultrecord` VALUES (4, '2019-04-02', '太简单', 2, 4);
INSERT INTO `crm_consultrecord` VALUES (5, '2019-04-02', '太简单', 6, 5);

-- ----------------------------
-- Table structure for crm_course
-- ----------------------------
DROP TABLE IF EXISTS `crm_course`;
CREATE TABLE `crm_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_course
-- ----------------------------
INSERT INTO `crm_course` VALUES (1, 'Python就业班');
INSERT INTO `crm_course` VALUES (2, 'Python架构班');
INSERT INTO `crm_course` VALUES (3, 'Python基础班');
INSERT INTO `crm_course` VALUES (4, 'Linux基础班');
INSERT INTO `crm_course` VALUES (5, 'Go基础班');

-- ----------------------------
-- Table structure for crm_courserecord
-- ----------------------------
DROP TABLE IF EXISTS `crm_courserecord`;
CREATE TABLE `crm_courserecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_num` int(11) NOT NULL,
  `date` date NOT NULL,
  `course_title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_memo` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `has_homework` tinyint(1) NOT NULL,
  `homework_title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `homework_memo` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `exam` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `class_obj_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `crm_courserecord_class_obj_id_d7c27425_fk_crm_classlist_id`(`class_obj_id`) USING BTREE,
  INDEX `crm_courserecord_teacher_id_3ace9808_fk_crm_userinfo_id`(`teacher_id`) USING BTREE,
  CONSTRAINT `crm_courserecord_class_obj_id_d7c27425_fk_crm_classlist_id` FOREIGN KEY (`class_obj_id`) REFERENCES `crm_classlist` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_courserecord_teacher_id_3ace9808_fk_crm_userinfo_id` FOREIGN KEY (`teacher_id`) REFERENCES `crm_userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_courserecord
-- ----------------------------
INSERT INTO `crm_courserecord` VALUES (1, 1, '2019-04-01', 'crm', 'crm业务逻辑', 1, NULL, '', '', 1, 4);
INSERT INTO `crm_courserecord` VALUES (2, 2, '2019-04-01', 'crm', '', 1, NULL, '', '', 1, 4);
INSERT INTO `crm_courserecord` VALUES (3, 3, '2019-05-30', 'crm', '', 1, NULL, '', '', 1, 4);
INSERT INTO `crm_courserecord` VALUES (4, 4, '2019-05-30', 'crm', '', 1, NULL, '', '', 1, 4);
INSERT INTO `crm_courserecord` VALUES (5, 5, '2019-05-30', NULL, '', 1, NULL, '', '', 1, 4);
INSERT INTO `crm_courserecord` VALUES (6, 6, '2019-05-30', NULL, '', 1, NULL, '', '', 1, 4);
INSERT INTO `crm_courserecord` VALUES (7, 7, '2019-05-30', NULL, '', 1, NULL, '', '', 1, 4);
INSERT INTO `crm_courserecord` VALUES (8, 8, '2019-05-30', NULL, '', 1, NULL, '', '', 1, 4);
INSERT INTO `crm_courserecord` VALUES (9, 9, '2019-05-30', 'crm', '', 1, NULL, '', '', 1, 4);
INSERT INTO `crm_courserecord` VALUES (10, 10, '2019-05-30', 'crm', '', 1, NULL, '', '', 1, 4);

-- ----------------------------
-- Table structure for crm_customer
-- ----------------------------
DROP TABLE IF EXISTS `crm_customer`;
CREATE TABLE `crm_customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qq` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` smallint(6) NOT NULL,
  `education` int(11) NULL DEFAULT NULL,
  `graduation_school` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `experience` int(11) NULL DEFAULT NULL,
  `work_status` int(11) NULL DEFAULT NULL,
  `company` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salary` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `source` smallint(6) NOT NULL,
  `status` int(11) NOT NULL,
  `date` date NOT NULL,
  `recv_date` date NULL DEFAULT NULL,
  `last_consult_date` date NOT NULL,
  `consultant_id` int(11) NOT NULL,
  `referral_from_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `qq`(`qq`) USING BTREE,
  INDEX `crm_customer_consultant_id_11f5298a_fk_crm_userinfo_id`(`consultant_id`) USING BTREE,
  INDEX `crm_customer_referral_from_id_b8b6cc8b_fk_crm_customer_id`(`referral_from_id`) USING BTREE,
  CONSTRAINT `crm_customer_consultant_id_11f5298a_fk_crm_userinfo_id` FOREIGN KEY (`consultant_id`) REFERENCES `crm_userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_customer_referral_from_id_b8b6cc8b_fk_crm_customer_id` FOREIGN KEY (`referral_from_id`) REFERENCES `crm_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_customer
-- ----------------------------
INSERT INTO `crm_customer` VALUES (1, '123456', '李明', 1, 2, '北京大学', NULL, 4, 2, NULL, NULL, 1, 1, '2019-04-01', '2019-03-01', '2019-03-05', 6, NULL);
INSERT INTO `crm_customer` VALUES (2, '3456', '刘芸', 2, 2, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, '2019-04-01', '2019-03-10', '2019-03-16', 3, NULL);
INSERT INTO `crm_customer` VALUES (3, '56789', '刘宇', 1, 2, NULL, NULL, NULL, 1, NULL, NULL, 1, 2, '2019-04-01', '2019-04-03', '2019-04-03', 3, NULL);
INSERT INTO `crm_customer` VALUES (4, '12345', '李炫睿', 1, 1, NULL, NULL, NULL, 1, NULL, NULL, 1, 2, '2019-04-02', '2019-04-02', '2019-04-02', 3, NULL);
INSERT INTO `crm_customer` VALUES (5, '456789', '杜柏达', 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 2, '2019-04-02', '2019-04-03', '2019-04-03', 3, NULL);
INSERT INTO `crm_customer` VALUES (6, '112345', '李达', 1, 2, NULL, NULL, NULL, 1, NULL, NULL, 1, 2, '2019-04-03', '2019-04-03', '2019-04-03', 1, NULL);
INSERT INTO `crm_customer` VALUES (7, '123451', '李一', 1, 1, '清华大学', '计算机', 2, 1, NULL, NULL, 1, 2, '2019-05-30', '2019-01-02', '2018-01-03', 2, NULL);
INSERT INTO `crm_customer` VALUES (8, '1234511', '李二', 1, 1, '上海大学', '计算机', 2, 1, NULL, NULL, 1, 2, '2019-05-30', '2019-02-20', '2019-02-20', 3, NULL);
INSERT INTO `crm_customer` VALUES (9, '1234512', '李三', 1, 1, '上海大学', '计算机', 2, 1, NULL, NULL, 1, 1, '2019-05-30', '2019-02-20', '2019-02-20', 2, NULL);
INSERT INTO `crm_customer` VALUES (10, '1234513', '刘一', 1, 1, '上海大学', '计算机', 2, 1, NULL, NULL, 1, 2, '2019-05-30', '2019-02-20', '2019-02-20', 3, NULL);
INSERT INTO `crm_customer` VALUES (11, '1234514', '刘二', 1, 1, '南京大学', '计算机', 2, 1, NULL, NULL, 1, 2, '2019-05-30', '2019-02-20', '2019-02-20', 3, NULL);
INSERT INTO `crm_customer` VALUES (12, '1234515', '刘三', 1, 1, '南京大学', '计算机', 2, 1, NULL, NULL, 1, 2, '2019-05-30', '2019-02-20', '2019-02-20', 3, NULL);
INSERT INTO `crm_customer` VALUES (13, '1234516', '王一', 1, 1, '南京大学', '计算机', 2, 1, NULL, NULL, 1, 2, '2019-05-30', '2019-02-20', '2019-02-20', 6, NULL);
INSERT INTO `crm_customer` VALUES (14, '1234517', '王二', 1, 1, '北京大学', '计算机', 2, 1, NULL, NULL, 1, 2, '2019-05-30', '2019-02-20', '2019-02-20', 3, NULL);
INSERT INTO `crm_customer` VALUES (15, '1234518', '王三', 1, 1, '北京大学', '计算机', 2, 1, NULL, NULL, 1, 2, '2019-05-30', '2019-02-20', '2019-02-20', 2, NULL);
INSERT INTO `crm_customer` VALUES (16, '1234519', '张一', 1, 1, '北京大学', '计算机', 2, 1, NULL, NULL, 1, 1, '2019-05-30', '2019-02-20', '2019-02-20', 3, NULL);
INSERT INTO `crm_customer` VALUES (17, '1234520', '张二', 1, 1, '北京大学', '计算机', 2, 1, NULL, NULL, 1, 1, '2019-05-30', '2019-02-20', '2019-02-20', 2, NULL);
INSERT INTO `crm_customer` VALUES (18, '1234521', '张三', 1, 1, '清华大学', '计算机', 2, 1, NULL, NULL, 1, 1, '2019-05-30', '2019-02-20', '2019-02-20', 3, NULL);
INSERT INTO `crm_customer` VALUES (19, '1234522', '杜一', 1, 1, '清华大学', '计算机', 2, 1, NULL, NULL, 1, 1, '2019-05-30', '2019-02-20', '2019-02-20', 2, NULL);

-- ----------------------------
-- Table structure for crm_customer_course
-- ----------------------------
DROP TABLE IF EXISTS `crm_customer_course`;
CREATE TABLE `crm_customer_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `crm_customer_course_customer_id_course_id_2a250f6a_uniq`(`customer_id`, `course_id`) USING BTREE,
  INDEX `crm_customer_course_course_id_30e9cd1b_fk_crm_course_id`(`course_id`) USING BTREE,
  CONSTRAINT `crm_customer_course_course_id_30e9cd1b_fk_crm_course_id` FOREIGN KEY (`course_id`) REFERENCES `crm_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_customer_course_customer_id_3762597e_fk_crm_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_customer_course
-- ----------------------------
INSERT INTO `crm_customer_course` VALUES (20, 1, 1);
INSERT INTO `crm_customer_course` VALUES (21, 1, 2);
INSERT INTO `crm_customer_course` VALUES (59, 1, 3);
INSERT INTO `crm_customer_course` VALUES (3, 2, 1);
INSERT INTO `crm_customer_course` VALUES (4, 3, 1);
INSERT INTO `crm_customer_course` VALUES (7, 3, 2);
INSERT INTO `crm_customer_course` VALUES (12, 4, 1);
INSERT INTO `crm_customer_course` VALUES (13, 4, 2);
INSERT INTO `crm_customer_course` VALUES (14, 4, 3);
INSERT INTO `crm_customer_course` VALUES (15, 5, 1);
INSERT INTO `crm_customer_course` VALUES (16, 5, 2);
INSERT INTO `crm_customer_course` VALUES (17, 5, 3);
INSERT INTO `crm_customer_course` VALUES (18, 6, 1);
INSERT INTO `crm_customer_course` VALUES (19, 6, 2);
INSERT INTO `crm_customer_course` VALUES (23, 7, 1);
INSERT INTO `crm_customer_course` VALUES (24, 7, 4);
INSERT INTO `crm_customer_course` VALUES (25, 8, 1);
INSERT INTO `crm_customer_course` VALUES (26, 8, 3);
INSERT INTO `crm_customer_course` VALUES (27, 8, 4);
INSERT INTO `crm_customer_course` VALUES (28, 9, 1);
INSERT INTO `crm_customer_course` VALUES (29, 9, 2);
INSERT INTO `crm_customer_course` VALUES (30, 10, 1);
INSERT INTO `crm_customer_course` VALUES (31, 10, 2);
INSERT INTO `crm_customer_course` VALUES (32, 10, 3);
INSERT INTO `crm_customer_course` VALUES (33, 10, 4);
INSERT INTO `crm_customer_course` VALUES (34, 11, 1);
INSERT INTO `crm_customer_course` VALUES (35, 11, 2);
INSERT INTO `crm_customer_course` VALUES (36, 11, 3);
INSERT INTO `crm_customer_course` VALUES (37, 11, 4);
INSERT INTO `crm_customer_course` VALUES (38, 12, 1);
INSERT INTO `crm_customer_course` VALUES (39, 12, 2);
INSERT INTO `crm_customer_course` VALUES (40, 12, 3);
INSERT INTO `crm_customer_course` VALUES (41, 13, 1);
INSERT INTO `crm_customer_course` VALUES (46, 13, 3);
INSERT INTO `crm_customer_course` VALUES (44, 14, 3);
INSERT INTO `crm_customer_course` VALUES (45, 14, 4);
INSERT INTO `crm_customer_course` VALUES (42, 15, 4);
INSERT INTO `crm_customer_course` VALUES (43, 15, 5);
INSERT INTO `crm_customer_course` VALUES (47, 16, 1);
INSERT INTO `crm_customer_course` VALUES (48, 16, 2);
INSERT INTO `crm_customer_course` VALUES (53, 17, 1);
INSERT INTO `crm_customer_course` VALUES (54, 17, 2);
INSERT INTO `crm_customer_course` VALUES (55, 17, 3);
INSERT INTO `crm_customer_course` VALUES (49, 18, 1);
INSERT INTO `crm_customer_course` VALUES (50, 18, 4);
INSERT INTO `crm_customer_course` VALUES (56, 19, 1);
INSERT INTO `crm_customer_course` VALUES (57, 19, 2);
INSERT INTO `crm_customer_course` VALUES (58, 19, 3);

-- ----------------------------
-- Table structure for crm_customerdistrbute
-- ----------------------------
DROP TABLE IF EXISTS `crm_customerdistrbute`;
CREATE TABLE `crm_customerdistrbute`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `status` int(11) NOT NULL,
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `consultant_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `crm_customerdistrbute_consultant_id_026884f9_fk_crm_userinfo_id`(`consultant_id`) USING BTREE,
  INDEX `crm_customerdistrbute_customer_id_df5792f2_fk_crm_customer_id`(`customer_id`) USING BTREE,
  CONSTRAINT `crm_customerdistrbute_consultant_id_026884f9_fk_crm_userinfo_id` FOREIGN KEY (`consultant_id`) REFERENCES `crm_userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_customerdistrbute_customer_id_df5792f2_fk_crm_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_customerdistrbute
-- ----------------------------
INSERT INTO `crm_customerdistrbute` VALUES (2, '2019-04-03', 1, '', 3, 6);
INSERT INTO `crm_customerdistrbute` VALUES (3, '2019-04-03', 1, '', 3, 6);
INSERT INTO `crm_customerdistrbute` VALUES (4, '2019-04-03', 1, '', 3, 5);
INSERT INTO `crm_customerdistrbute` VALUES (5, '2019-04-03', 1, '', 1, 6);
INSERT INTO `crm_customerdistrbute` VALUES (6, '2019-04-03', 1, '', 1, 6);
INSERT INTO `crm_customerdistrbute` VALUES (7, '2019-04-03', 1, '', 1, 6);

-- ----------------------------
-- Table structure for crm_department
-- ----------------------------
DROP TABLE IF EXISTS `crm_department`;
CREATE TABLE `crm_department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_department
-- ----------------------------
INSERT INTO `crm_department` VALUES (1, '销售部', 1001);
INSERT INTO `crm_department` VALUES (2, 'python学部', 1002);
INSERT INTO `crm_department` VALUES (3, '人事部', 1003);
INSERT INTO `crm_department` VALUES (4, '财务部', 1004);
INSERT INTO `crm_department` VALUES (5, 'Linux学部', 1005);

-- ----------------------------
-- Table structure for crm_school
-- ----------------------------
DROP TABLE IF EXISTS `crm_school`;
CREATE TABLE `crm_school`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_school
-- ----------------------------
INSERT INTO `crm_school` VALUES (1, '北京朝阳校区');
INSERT INTO `crm_school` VALUES (2, '上海浦东校区');
INSERT INTO `crm_school` VALUES (3, '深圳校区');

-- ----------------------------
-- Table structure for crm_student
-- ----------------------------
DROP TABLE IF EXISTS `crm_student`;
CREATE TABLE `crm_student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emergency_contract` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salary` int(11) NULL DEFAULT NULL,
  `welfare` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `memo` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `customer_id`(`customer_id`) USING BTREE,
  CONSTRAINT `crm_student_customer_id_fd3c95de_fk_crm_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_student
-- ----------------------------
INSERT INTO `crm_student` VALUES (1, '李明', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `crm_student` VALUES (2, '刘芸', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `crm_student` VALUES (3, '刘宇', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO `crm_student` VALUES (4, '李炫睿', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4);

-- ----------------------------
-- Table structure for crm_student_class_list
-- ----------------------------
DROP TABLE IF EXISTS `crm_student_class_list`;
CREATE TABLE `crm_student_class_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `classlist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `crm_student_class_list_student_id_classlist_id_d0898601_uniq`(`student_id`, `classlist_id`) USING BTREE,
  INDEX `crm_student_class_list_classlist_id_848399d7_fk_crm_classlist_id`(`classlist_id`) USING BTREE,
  CONSTRAINT `crm_student_class_list_classlist_id_848399d7_fk_crm_classlist_id` FOREIGN KEY (`classlist_id`) REFERENCES `crm_classlist` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_student_class_list_student_id_d059682a_fk_crm_student_id` FOREIGN KEY (`student_id`) REFERENCES `crm_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_student_class_list
-- ----------------------------
INSERT INTO `crm_student_class_list` VALUES (1, 1, 1);
INSERT INTO `crm_student_class_list` VALUES (4, 1, 3);
INSERT INTO `crm_student_class_list` VALUES (2, 2, 1);
INSERT INTO `crm_student_class_list` VALUES (3, 3, 1);
INSERT INTO `crm_student_class_list` VALUES (5, 4, 1);

-- ----------------------------
-- Table structure for crm_studyrecord
-- ----------------------------
DROP TABLE IF EXISTS `crm_studyrecord`;
CREATE TABLE `crm_studyrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` int(11) NOT NULL,
  `homework_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `homework` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_memo` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date` datetime(6) NOT NULL,
  `course_record_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `crm_studyrecord_course_record_id_e3601e93_fk_crm_courserecord_id`(`course_record_id`) USING BTREE,
  INDEX `crm_studyrecord_student_id_18b0c323_fk_crm_student_id`(`student_id`) USING BTREE,
  CONSTRAINT `crm_studyrecord_course_record_id_e3601e93_fk_crm_courserecord_id` FOREIGN KEY (`course_record_id`) REFERENCES `crm_courserecord` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_studyrecord_student_id_18b0c323_fk_crm_student_id` FOREIGN KEY (`student_id`) REFERENCES `crm_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_studyrecord
-- ----------------------------
INSERT INTO `crm_studyrecord` VALUES (5, 'checked', 100, '11', NULL, '', '', '2019-04-01 15:42:25.185655', 1, 2);
INSERT INTO `crm_studyrecord` VALUES (6, 'checked', 100, '11', NULL, '', '', '2019-04-01 15:42:25.185655', 1, 3);
INSERT INTO `crm_studyrecord` VALUES (7, 'checked', 90, NULL, NULL, '', '', '2019-04-01 16:06:31.256665', 2, 1);
INSERT INTO `crm_studyrecord` VALUES (8, 'checked', -1, NULL, NULL, '', NULL, '2019-04-01 16:06:31.256665', 2, 2);
INSERT INTO `crm_studyrecord` VALUES (9, 'checked', -1, NULL, NULL, '', NULL, '2019-04-01 16:06:31.256665', 2, 3);
INSERT INTO `crm_studyrecord` VALUES (10, 'checked', 100, 'None', NULL, '', '', '2019-05-07 01:15:40.333884', 1, 1);
INSERT INTO `crm_studyrecord` VALUES (11, 'checked', 90, NULL, NULL, '', '', '2019-05-30 09:56:49.047504', 3, 2);
INSERT INTO `crm_studyrecord` VALUES (12, 'checked', 85, NULL, NULL, '', '', '2019-05-30 09:57:02.951524', 4, 2);
INSERT INTO `crm_studyrecord` VALUES (13, 'checked', 80, NULL, NULL, '', '', '2019-05-30 09:57:15.918224', 5, 2);
INSERT INTO `crm_studyrecord` VALUES (14, 'checked', 90, NULL, NULL, '', '', '2019-05-30 09:57:28.490625', 6, 2);
INSERT INTO `crm_studyrecord` VALUES (15, 'checked', 90, NULL, NULL, '', '', '2019-05-30 09:57:44.276718', 7, 2);
INSERT INTO `crm_studyrecord` VALUES (16, 'checked', 85, NULL, NULL, '', '', '2019-05-30 09:57:57.844085', 8, 2);
INSERT INTO `crm_studyrecord` VALUES (17, 'checked', 100, NULL, NULL, '', '', '2019-05-30 09:58:14.362968', 9, 2);
INSERT INTO `crm_studyrecord` VALUES (18, 'checked', 90, NULL, NULL, '', '', '2019-05-30 09:58:26.188450', 10, 2);
INSERT INTO `crm_studyrecord` VALUES (19, 'checked', 80, NULL, NULL, '', '', '2019-05-30 09:59:04.445812', 2, 2);
INSERT INTO `crm_studyrecord` VALUES (20, 'checked', 85, NULL, NULL, '', '', '2019-05-30 10:01:12.309333', 3, 1);
INSERT INTO `crm_studyrecord` VALUES (21, 'checked', 90, NULL, NULL, '', '', '2019-05-30 10:01:21.319179', 4, 1);
INSERT INTO `crm_studyrecord` VALUES (22, 'checked', 85, NULL, NULL, '', '', '2019-05-30 10:01:33.540288', 5, 1);
INSERT INTO `crm_studyrecord` VALUES (23, 'checked', 80, NULL, NULL, '', '', '2019-05-30 10:01:43.183044', 6, 1);
INSERT INTO `crm_studyrecord` VALUES (24, 'checked', 80, NULL, NULL, '', '', '2019-05-30 10:02:01.018859', 7, 1);
INSERT INTO `crm_studyrecord` VALUES (25, 'checked', 90, NULL, NULL, '', '', '2019-05-30 10:02:11.905954', 8, 1);
INSERT INTO `crm_studyrecord` VALUES (26, 'checked', 90, NULL, NULL, '', '', '2019-05-30 10:02:22.928156', 9, 1);
INSERT INTO `crm_studyrecord` VALUES (27, 'checked', 100, NULL, NULL, '', '', '2019-05-30 10:02:32.706496', 10, 1);
INSERT INTO `crm_studyrecord` VALUES (28, 'checked', 100, 'None', NULL, '', '', '2019-05-30 10:05:45.695139', 1, 4);
INSERT INTO `crm_studyrecord` VALUES (29, 'checked', 90, NULL, NULL, '', '', '2019-05-30 10:05:58.675910', 2, 4);

-- ----------------------------
-- Table structure for crm_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `crm_userinfo`;
CREATE TABLE `crm_userinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `depart_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `crm_userinfo_depart_id_8301dc31_fk_crm_department_code`(`depart_id`) USING BTREE,
  CONSTRAINT `crm_userinfo_depart_id_8301dc31_fk_crm_department_code` FOREIGN KEY (`depart_id`) REFERENCES `crm_department` (`code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_userinfo_user_id_ed739187_fk_rbac_user_id` FOREIGN KEY (`user_id`) REFERENCES `rbac_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_userinfo
-- ----------------------------
INSERT INTO `crm_userinfo` VALUES (1, 'egon', '123@126.com', 1002, 7);
INSERT INTO `crm_userinfo` VALUES (2, '小娜', '123@126.com', 1001, 5);
INSERT INTO `crm_userinfo` VALUES (3, '小蓝', '123@126.com', 1001, 1);
INSERT INTO `crm_userinfo` VALUES (4, '李维', '123@126.com', 1002, 2);
INSERT INTO `crm_userinfo` VALUES (5, '秦怡', '123@126.com', 1005, 3);
INSERT INTO `crm_userinfo` VALUES (6, '小雨', '123@126.com', 1001, 4);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2019-04-02 16:24:22.006349', '6', '用户管理', 1, '[{\"added\": {}}]', 21, 2);
INSERT INTO `django_admin_log` VALUES (2, '2019-04-02 16:24:33.080026', '7', '角色管理', 1, '[{\"added\": {}}]', 21, 2);
INSERT INTO `django_admin_log` VALUES (3, '2019-04-02 16:25:52.844845', '16', '查看用户', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (4, '2019-04-02 16:26:43.308049', '17', '添加用户', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (5, '2019-04-02 16:28:05.506310', '18', '编辑用户', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (6, '2019-04-02 16:29:02.279989', '19', '删除用户', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (7, '2019-04-02 16:29:09.428256', '19', '删除用户', 2, '[]', 18, 2);
INSERT INTO `django_admin_log` VALUES (8, '2019-04-02 16:29:55.115255', '20', '查看角色', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (9, '2019-04-02 16:29:58.399381', '20', '查看角色', 2, '[]', 18, 2);
INSERT INTO `django_admin_log` VALUES (10, '2019-04-02 16:30:35.860062', '21', '添加角色', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (11, '2019-04-02 16:31:25.792665', '22', '编辑角色', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (12, '2019-04-02 16:32:04.103807', '23', '删除角色', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (13, '2019-04-02 16:33:04.571537', '5', '管理员', 1, '[{\"added\": {}}]', 19, 2);
INSERT INTO `django_admin_log` VALUES (14, '2019-04-02 16:33:14.988591', '5', '管理员', 2, '[]', 19, 2);
INSERT INTO `django_admin_log` VALUES (15, '2019-04-02 16:33:36.243452', '8', 'admin', 1, '[{\"added\": {}}]', 20, 2);
INSERT INTO `django_admin_log` VALUES (16, '2019-04-03 07:52:33.739603', '8', '权限管理', 1, '[{\"added\": {}}]', 21, 2);
INSERT INTO `django_admin_log` VALUES (17, '2019-04-03 07:53:32.442286', '24', '查看权限', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (18, '2019-04-03 07:53:56.334706', '25', '添加权限', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (19, '2019-04-03 07:54:16.437227', '26', '编辑权限', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (20, '2019-04-03 07:54:40.641408', '27', '删除权限', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (21, '2019-04-03 07:55:00.584063', '28', '用户列表', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (22, '2019-04-03 07:55:23.693847', '29', '用户编辑', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (23, '2019-04-03 07:55:43.899409', '30', '用户增加', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (24, '2019-04-03 07:55:58.902825', '31', '用户删除', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (25, '2019-04-03 07:56:30.277909', '5', '管理员', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 2);
INSERT INTO `django_admin_log` VALUES (26, '2019-04-03 07:57:35.445827', '9', '李明', 1, '[{\"added\": {}}]', 20, 2);
INSERT INTO `django_admin_log` VALUES (27, '2019-04-03 07:57:51.193835', '10', '刘芸', 1, '[{\"added\": {}}]', 20, 2);
INSERT INTO `django_admin_log` VALUES (28, '2019-04-03 07:57:56.310912', '10', '刘芸', 2, '[]', 20, 2);
INSERT INTO `django_admin_log` VALUES (29, '2019-04-03 07:58:12.733543', '11', '刘宇', 1, '[{\"added\": {}}]', 20, 2);
INSERT INTO `django_admin_log` VALUES (30, '2019-04-03 07:59:52.958303', '29', '用户编辑', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (31, '2019-04-03 08:08:01.262092', '12', '123', 2, '[]', 20, 2);
INSERT INTO `django_admin_log` VALUES (32, '2019-04-03 08:08:11.297361', '4', '学生', 2, '[]', 19, 2);
INSERT INTO `django_admin_log` VALUES (33, '2019-04-03 08:10:48.821520', '4', '学生', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 2);
INSERT INTO `django_admin_log` VALUES (34, '2019-04-03 08:12:14.344228', '4', '学生', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 2);
INSERT INTO `django_admin_log` VALUES (35, '2019-04-03 08:13:48.256856', '15', '查看学生成绩', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (36, '2019-04-03 08:14:48.931292', '13', '1', 1, '[{\"added\": {}}]', 20, 2);
INSERT INTO `django_admin_log` VALUES (37, '2019-04-03 08:27:16.644222', '15', '查看学生成绩', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (38, '2019-04-03 08:34:19.402104', '32', '客户跟进', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (39, '2019-04-03 08:35:31.425035', '33', '未来客户', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (40, '2019-04-03 08:35:49.629621', '1', '销售', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 2);
INSERT INTO `django_admin_log` VALUES (41, '2019-04-03 09:02:22.569227', '34', '客户分布', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (42, '2019-04-03 09:02:41.253580', '1', '销售', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 2);
INSERT INTO `django_admin_log` VALUES (43, '2019-04-03 09:05:22.770871', '35', '客户分布编辑', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (44, '2019-04-03 09:06:02.290343', '36', '客户分布删除', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (45, '2019-04-03 09:06:19.744393', '5', '管理员', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 2);
INSERT INTO `django_admin_log` VALUES (46, '2019-04-03 09:06:26.524520', '1', '销售', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 2);
INSERT INTO `django_admin_log` VALUES (47, '2019-04-03 09:08:08.252870', '36', '客户分布删除', 2, '[{\"changed\": {\"fields\": [\"action\"]}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (48, '2019-04-03 09:08:18.647977', '35', '客户分布编辑', 2, '[{\"changed\": {\"fields\": [\"action\"]}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (49, '2019-04-03 09:09:12.693173', '37', '客户分布增加', 1, '[{\"added\": {}}]', 18, 2);
INSERT INTO `django_admin_log` VALUES (50, '2019-04-03 09:09:46.917666', '1', '销售', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 2);
INSERT INTO `django_admin_log` VALUES (51, '2019-05-30 09:14:28.633983', '9', '课程管理', 1, '[{\"added\": {}}]', 21, 3);
INSERT INTO `django_admin_log` VALUES (52, '2019-05-30 09:15:46.758861', '38', '添加课程', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (53, '2019-05-30 09:16:25.302480', '39', '修改课程', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (54, '2019-05-30 09:16:42.446063', '39', '修改课程', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (55, '2019-05-30 09:17:07.171522', '40', '删除课程', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (56, '2019-05-30 09:17:27.967491', '40', '删除课程', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (57, '2019-05-30 09:17:43.468072', '5', '管理员', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 3);
INSERT INTO `django_admin_log` VALUES (58, '2019-05-30 09:17:57.229355', '2', '讲师', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 3);
INSERT INTO `django_admin_log` VALUES (59, '2019-05-30 09:18:13.299002', '3', '校长', 2, '[]', 19, 3);
INSERT INTO `django_admin_log` VALUES (60, '2019-05-30 09:18:26.966737', '2', '李维', 2, '[]', 20, 3);
INSERT INTO `django_admin_log` VALUES (61, '2019-05-30 09:20:29.567746', '41', '查看课程', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (62, '2019-05-30 09:21:22.425664', '41', '查看课程', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (63, '2019-05-30 09:22:08.275554', '5', '管理员', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 3);
INSERT INTO `django_admin_log` VALUES (64, '2019-05-30 09:22:15.063962', '2', '讲师', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 3);
INSERT INTO `django_admin_log` VALUES (65, '2019-05-30 09:26:55.036941', '42', '录入成绩', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (66, '2019-05-30 09:27:16.981963', '42', '录入成绩', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (67, '2019-05-30 09:28:08.418473', '5', '管理员', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 3);
INSERT INTO `django_admin_log` VALUES (68, '2019-05-30 09:28:17.239071', '2', '讲师', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 3);
INSERT INTO `django_admin_log` VALUES (69, '2019-05-30 09:33:19.349360', '40', '删除课程', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (70, '2019-05-30 09:34:58.057292', '10', '班级管理', 1, '[{\"added\": {}}]', 21, 3);
INSERT INTO `django_admin_log` VALUES (71, '2019-05-30 09:35:42.418978', '43', '查看班级', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (72, '2019-05-30 09:35:55.396564', '5', '管理员', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 3);
INSERT INTO `django_admin_log` VALUES (73, '2019-05-30 09:37:36.249605', '44', '添加班级', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (74, '2019-05-30 09:38:30.156116', '45', '删除班级', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (75, '2019-05-30 09:38:45.029113', '45', '删除班级', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (76, '2019-05-30 09:39:49.213100', '46', '编辑班级', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (77, '2019-05-30 09:40:09.468259', '46', '编辑班级', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (78, '2019-05-30 09:40:22.256481', '5', '管理员', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 3);
INSERT INTO `django_admin_log` VALUES (79, '2019-05-30 09:44:15.809629', '42', '录入成绩', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (80, '2019-05-30 09:44:50.610604', '5', '管理员', 2, '[]', 19, 3);
INSERT INTO `django_admin_log` VALUES (81, '2019-05-30 09:45:25.529850', '42', '录入成绩', 3, '', 18, 3);
INSERT INTO `django_admin_log` VALUES (82, '2019-05-30 09:46:01.425312', '11', '成绩管理', 1, '[{\"added\": {}}]', 21, 3);
INSERT INTO `django_admin_log` VALUES (83, '2019-05-30 09:48:56.680891', '47', '添加成绩', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (84, '2019-05-30 09:49:27.140790', '5', '管理员', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 3);
INSERT INTO `django_admin_log` VALUES (85, '2019-05-30 09:50:38.944500', '11', '成绩管理', 3, '', 21, 3);
INSERT INTO `django_admin_log` VALUES (86, '2019-05-30 12:43:21.875713', '48', '录入成绩', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (87, '2019-05-30 12:43:31.906268', '5', '管理员', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 3);
INSERT INTO `django_admin_log` VALUES (88, '2019-05-30 12:44:38.281748', '5', '管理员', 2, '[]', 19, 3);
INSERT INTO `django_admin_log` VALUES (89, '2019-05-30 12:45:00.427546', '48', '录入成绩', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (90, '2019-05-30 12:45:14.130960', '48', '录入成绩', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (91, '2019-05-30 12:45:40.762104', '5', '管理员', 2, '[]', 19, 3);
INSERT INTO `django_admin_log` VALUES (92, '2019-05-30 12:48:58.253514', '2', '讲师', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 3);
INSERT INTO `django_admin_log` VALUES (93, '2019-05-30 14:58:37.681737', '5', '管理员', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 3);
INSERT INTO `django_admin_log` VALUES (94, '2019-05-30 14:58:55.228902', '1', '销售', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 3);
INSERT INTO `django_admin_log` VALUES (95, '2019-05-31 16:47:54.083141', '12', '校区管理', 1, '[{\"added\": {}}]', 21, 3);
INSERT INTO `django_admin_log` VALUES (96, '2019-05-31 16:48:28.091981', '49', '添加校区', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (97, '2019-05-31 16:48:44.460190', '5', '管理员', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 3);
INSERT INTO `django_admin_log` VALUES (98, '2019-05-31 16:50:30.691671', '50', '查看校区', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (99, '2019-05-31 16:53:00.479794', '51', '添加新课', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (100, '2019-05-31 16:53:27.955941', '5', '管理员', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 3);
INSERT INTO `django_admin_log` VALUES (101, '2019-05-31 16:54:56.884119', '9', '课程记录管理', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 21, 3);
INSERT INTO `django_admin_log` VALUES (102, '2019-05-31 16:55:12.696181', '13', '课程管理', 1, '[{\"added\": {}}]', 21, 3);
INSERT INTO `django_admin_log` VALUES (103, '2019-05-31 16:55:54.809224', '41', '查看课程记录', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (104, '2019-05-31 16:56:07.813887', '40', '删除课程记录', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (105, '2019-05-31 16:56:15.992551', '40', '删除课程记录', 2, '[{\"changed\": {\"fields\": [\"group\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (106, '2019-05-31 16:56:31.088758', '39', '修改课程记录', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (107, '2019-05-31 16:56:40.324098', '38', '添加课程记录', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (108, '2019-05-31 16:57:06.339799', '51', '添加新课', 3, '', 18, 3);
INSERT INTO `django_admin_log` VALUES (109, '2019-05-31 16:58:01.409559', '52', '删除校区', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (110, '2019-05-31 16:58:11.885566', '52', '删除校区', 2, '[]', 18, 3);
INSERT INTO `django_admin_log` VALUES (111, '2019-05-31 16:58:37.882451', '52', '编辑校区', 2, '[{\"changed\": {\"fields\": [\"title\", \"action\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (112, '2019-05-31 16:58:50.789397', '52', '编辑校区', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (113, '2019-05-31 16:59:22.105055', '53', '删除校区', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (114, '2019-05-31 16:59:31.907909', '53', '删除校区', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (115, '2019-05-31 17:00:07.995883', '54', '查看课程', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (116, '2019-05-31 17:00:34.832592', '55', '编辑课程', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (117, '2019-05-31 17:00:44.502705', '55', '编辑课程', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (118, '2019-05-31 17:01:01.401434', '56', '删除课程', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (119, '2019-05-31 17:01:19.889021', '56', '删除课程', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (120, '2019-05-31 17:01:32.626529', '56', '删除课程', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (121, '2019-05-31 17:02:05.328652', '57', '添加课程', 1, '[{\"added\": {}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (122, '2019-05-31 17:02:17.692178', '57', '添加课程', 2, '[{\"changed\": {\"fields\": [\"url\"]}}]', 18, 3);
INSERT INTO `django_admin_log` VALUES (123, '2019-05-31 17:02:44.882335', '5', '管理员', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 3);
INSERT INTO `django_admin_log` VALUES (124, '2019-05-31 23:48:34.965120', '2', '讲师', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 19, 3);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'crm', 'classlist');
INSERT INTO `django_content_type` VALUES (8, 'crm', 'consultrecord');
INSERT INTO `django_content_type` VALUES (9, 'crm', 'course');
INSERT INTO `django_content_type` VALUES (10, 'crm', 'courserecord');
INSERT INTO `django_content_type` VALUES (11, 'crm', 'customer');
INSERT INTO `django_content_type` VALUES (17, 'crm', 'customerdistrbute');
INSERT INTO `django_content_type` VALUES (12, 'crm', 'department');
INSERT INTO `django_content_type` VALUES (13, 'crm', 'school');
INSERT INTO `django_content_type` VALUES (14, 'crm', 'student');
INSERT INTO `django_content_type` VALUES (15, 'crm', 'studyrecord');
INSERT INTO `django_content_type` VALUES (16, 'crm', 'userinfo');
INSERT INTO `django_content_type` VALUES (18, 'rbac', 'permission');
INSERT INTO `django_content_type` VALUES (21, 'rbac', 'permissiongroup');
INSERT INTO `django_content_type` VALUES (19, 'rbac', 'role');
INSERT INTO `django_content_type` VALUES (20, 'rbac', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-04-01 11:44:33.847650');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2019-04-01 11:44:47.546828');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2019-04-01 11:44:50.590087');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2019-04-01 11:44:50.662047');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2019-04-01 11:44:52.583949');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2019-04-01 11:44:53.593374');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2019-04-01 11:44:54.987576');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2019-04-01 11:44:55.055556');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2019-04-01 11:44:55.791117');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2019-04-01 11:44:55.859079');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2019-04-01 11:44:55.946030');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0008_alter_user_username_max_length', '2019-04-01 11:44:57.023444');
INSERT INTO `django_migrations` VALUES (13, 'crm', '0001_initial', '2019-04-01 11:45:35.223626');
INSERT INTO `django_migrations` VALUES (14, 'sessions', '0001_initial', '2019-04-01 11:45:36.055126');
INSERT INTO `django_migrations` VALUES (15, 'crm', '0002_customerdistrbute', '2019-04-02 11:24:46.128443');
INSERT INTO `django_migrations` VALUES (16, 'rbac', '0001_initial', '2019-04-02 11:56:45.013806');
INSERT INTO `django_migrations` VALUES (17, 'rbac', '0002_auto_20180426_1030', '2019-04-02 11:56:47.143589');
INSERT INTO `django_migrations` VALUES (18, 'rbac', '0003_permission_action', '2019-04-02 11:56:47.773260');
INSERT INTO `django_migrations` VALUES (19, 'crm', '0003_auto_20190402_1956', '2019-04-02 11:56:53.037253');
INSERT INTO `django_migrations` VALUES (20, 'rbac', '0004_auto_20190402_2018', '2019-04-02 12:18:19.303522');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('08yp4kq0t6bm60h1ntwizvr8hfcpg3ov', 'YTY3ZmY0NTY0NDg1OGY5NjU1NmM3NDA4NGEwMTZkYjZmODQyYjk5MDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YjU1MGE3NDkxM2M0MDRjOWYxNzY0ZDU0YmQ0MDk4MGUxZmQ4NjI1IiwidXNlcl9pZCI6NCwicGVybWlzc2lvbl9kaWN0Ijp7IjEiOnsidXJscyI6WyIvc3RhcmsvY3JtL2N1c3RvbWVyLyIsIi9zdGFyay9jcm0vY3VzdG9tZXIvYWRkLyIsIi9zdGFyay9jcm0vY3VzdG9tZXIvKFxcZCspL2NoYW5nZS8iLCIvc3RhcmsvY3JtL2N1c3RvbWVyL3B1YmxpYy8iLCIvc3RhcmsvY3JtL2N1c3RvbWVyL215Y3VzdG9tZXIvIiwiL3N0YXJrL2NybS9jdXN0b21lci9jYW5jZWxfY291cnNlLyhcXGQrKS8oXFxkKykvIiwiL3N0YXJrL2NybS9jdXN0b21lci9mdXJ0aGVyLyhcXGQrKS8iLCIvc3RhcmsvY3JtL2N1c3RvbWVyZGlzdHJidXRlLyIsIi9zdGFyay9jcm0vY3VzdG9tZXJkaXN0cmJ1dGUvKFxcZCspL2NoYW5nZS8iLCIvc3RhcmsvY3JtL2N1c3RvbWVyZGlzdHJidXRlLyhcXGQrKS9kZWxldGUvIiwiL3N0YXJrL2NybS9jdXN0b21lcmRpc3RyYnV0ZS9hZGQvIl0sImFjdGlvbnMiOlsibGlzdCIsImFkZCIsImVkaXQiLCJsaXN0IiwibGlzdCIsImVkaXQiLCJlZGl0IiwibGlzdCIsImVkaXQiLCJkZWxlIiwiYWRkIl19fSwibWVudV9wZXJtaXNzaW9uX2xpc3QiOltbIi9zdGFyay9jcm0vY3VzdG9tZXIvIiwiXHU2N2U1XHU3NzBiXHU1YmEyXHU2MjM3Il0sWyIvc3RhcmsvY3JtL2N1c3RvbWVyL3B1YmxpYy8iLCJcdTY3ZTVcdTc3MGJcdTUxNmNcdTUxNzFcdTViYTJcdTYyMzciXSxbIi9zdGFyay9jcm0vY3VzdG9tZXIvbXljdXN0b21lci8iLCJcdTYyMTFcdTc2ODRcdTViYTJcdTYyMzciXSxbIi9zdGFyay9jcm0vY3VzdG9tZXJkaXN0cmJ1dGUvIiwiXHU1YmEyXHU2MjM3XHU1MjA2XHU1ZTAzIl1dfQ==', '2019-04-17 09:10:21.017207');
INSERT INTO `django_session` VALUES ('0r5h1zztudkaswxyrnujpwstkw16jd3e', 'MDgzMjZhZjRhYTA3YzI4NGVhMWEzNjYwNTdlZDczMzhkMmU4MzhlZDp7InVzZXJfaWQiOjgsInBlcm1pc3Npb25fZGljdCI6eyIxIjp7InVybHMiOlsiL3N0YXJrL2NybS9jdXN0b21lci8iLCIvc3RhcmsvY3JtL2N1c3RvbWVyL2FkZC8iLCIvc3RhcmsvY3JtL2N1c3RvbWVyLyhcXGQrKS9jaGFuZ2UvIiwiL3N0YXJrL2NybS9jdXN0b21lci8oXFxkKykvZGVsZXRlLyIsIi9zdGFyay9jcm0vY3VzdG9tZXIvcHVibGljLyIsIi9zdGFyay9jcm0vY3VzdG9tZXIvbXljdXN0b21lci8iLCIvc3RhcmsvY3JtL2N1c3RvbWVyL2NhbmNlbF9jb3Vyc2UvKFxcZCspLyhcXGQrKS8iLCIvc3RhcmsvY3JtL2N1c3RvbWVyL2Z1cnRoZXIvKFxcZCspLyIsIi9zdGFyay9jcm0vY3VzdG9tZXJkaXN0cmJ1dGUvIiwiL3N0YXJrL2NybS9jdXN0b21lcmRpc3RyYnV0ZS8oXFxkKykvY2hhbmdlLyIsIi9zdGFyay9jcm0vY3VzdG9tZXJkaXN0cmJ1dGUvKFxcZCspL2RlbGV0ZS8iXSwiYWN0aW9ucyI6WyJsaXN0IiwiYWRkIiwiZWRpdCIsImRlbGUiLCJsaXN0IiwibGlzdCIsImVkaXQiLCJlZGl0IiwibGlzdCIsImVkaXQiLCJkZWxlIl19LCIyIjp7InVybHMiOlsiL3N0YXJrL2NybS9zdHVkeXJlY29yZC8iLCIvc3RhcmsvY3JtL3N0dWR5cmVjb3JkL2FkZC8iLCIvc3RhcmsvY3JtL3N0dWR5cmVjb3JkLyhcXGQrKS9kZWxldGUvIiwiL3N0YXJrL2NybS9zdHVkeXJlY29yZC8oXFxkKykvY2hhbmdlLyJdLCJhY3Rpb25zIjpbImxpc3QiLCJhZGQiLCJkZWxldGUiLCJlZGl0Il19LCI1Ijp7InVybHMiOlsiL3N0YXJrL2NybS9zdHVkZW50LyIsIi9zdGFyay9jcm0vc3R1ZGVudC9hZGQvIiwiL3N0YXJrL2NybS9zdHVkZW50LyhcXGQrKS9kZWxldGUvIiwiL3N0YXJrL2NybS9zdHVkZW50LyhcXGQrKS9jaGFuZ2UvIiwiL3N0YXJrL2NybS9zdHVkZW50L3Njb3JlX3ZpZXcvKFxcZCspLyJdLCJhY3Rpb25zIjpbImxpc3QiLCJhZGQiLCJkZWxldGUiLCJlZGl0IiwiZWRpdCJdfSwiNiI6eyJ1cmxzIjpbIi9zdGFyay9yYmFjL3VzZXIvIiwiL3N0YXJrL3JiYWMvdXNlci9hZGQvIiwiL3N0YXJrL3JiYWMvdXNlci8oXFxkKykvY2hhbmdlLyIsIi9zdGFyay9yYmFjL3VzZXIvKFxcZCspL2RlbGV0ZS8iXSwiYWN0aW9ucyI6WyJsaXN0IiwiYWRkIiwiZWRpdCIsImRlbGUiXX0sIjciOnsidXJscyI6WyIvc3RhcmsvcmJhYy9yb2xlLyIsIi9zdGFyay8vcm9sZS9hZGQvIiwiL3N0YXJrL3JiYWMvcm9sZS8oXFxkKykvY2hhbmdlLyIsIi9zdGFyay9yYmFjL3JvbGUvKFxcZCspL2RlbGV0ZS8iXSwiYWN0aW9ucyI6WyJsaXN0IiwiYWRkIiwiZWRpdCIsImRlbGUiXX0sIjgiOnsidXJscyI6WyIvc3RhcmsvcmJhYy9wZXJtaXNzaW9uLyIsIi9zdGFyay9yYmFjL3Blcm1pc3Npb24vYWRkLyIsIi9zdGFyay9yYmFjL3Blcm1pc3Npb24vKFxcZCspL2NoYW5nZS8iLCIvc3RhcmsvcmJhYy9wZXJtaXNzaW9uLyhcXGQrKS9kZWxldGUvIiwiL3N0YXJrL2NybS91c2VyaW5mby8iLCIvc3RhcmsvY3JtL3VzZXJpbmZvLyhcXGQrKS9jaGFuZ2UvIiwiL3N0YXJrL2NybS91c2VyaW5mby9hZGQvIiwiL3N0YXJrL2NybS91c2VyaW5mby8oXFxkKykvZGVsZXRlLyJdLCJhY3Rpb25zIjpbImxpc3QiLCJhZGQiLCJlZGl0IiwiZGVsZSIsImxpc3QiLCJlZGl0IiwiYWRkIiwiZGVsZSJdfX0sIm1lbnVfcGVybWlzc2lvbl9saXN0IjpbWyIvc3RhcmsvY3JtL2N1c3RvbWVyLyIsIlx1NjdlNVx1NzcwYlx1NWJhMlx1NjIzNyJdLFsiL3N0YXJrL2NybS9jdXN0b21lci9wdWJsaWMvIiwiXHU2N2U1XHU3NzBiXHU1MTZjXHU1MTcxXHU1YmEyXHU2MjM3Il0sWyIvc3RhcmsvY3JtL2N1c3RvbWVyL215Y3VzdG9tZXIvIiwiXHU2MjExXHU3Njg0XHU1YmEyXHU2MjM3Il0sWyIvc3RhcmsvY3JtL3N0dWR5cmVjb3JkLyIsIlx1NjdlNVx1NzcwYlx1NWI2Nlx1NGU2MFx1OGJiMFx1NWY1NSJdLFsiL3N0YXJrL2NybS9zdHVkZW50LyIsIlx1NjdlNVx1NzcwYlx1NWI2Nlx1NzUxZiJdLFsiL3N0YXJrL3JiYWMvdXNlci8iLCJcdTY3ZTVcdTc3MGJcdTc1MjhcdTYyMzciXSxbIi9zdGFyay9yYmFjL3JvbGUvIiwiXHU2N2U1XHU3NzBiXHU4OWQyXHU4MjcyIl0sWyIvc3RhcmsvcmJhYy9wZXJtaXNzaW9uLyIsIlx1NjdlNVx1NzcwYlx1Njc0M1x1OTY1MCJdLFsiL3N0YXJrL2NybS91c2VyaW5mby8iLCJcdTc1MjhcdTYyMzdcdTUyMTdcdTg4NjgiXSxbIi9zdGFyay9jcm0vY3VzdG9tZXJkaXN0cmJ1dGUvIiwiXHU1YmEyXHU2MjM3XHU1MjA2XHU1ZTAzIl1dfQ==', '2019-04-26 03:20:18.098024');
INSERT INTO `django_session` VALUES ('luosop6dedcss0xgcbuu04t5241mt336', 'Nzc3ODc4ODI0NzVjNmMxYmFlMmE3NWQzMWQ1MGYyMGNiZjg4Zjc0MTp7InVzZXJfaWQiOjEwLCJwZXJtaXNzaW9uX2RpY3QiOnsiNSI6eyJ1cmxzIjpbIi9zdGFyay9jcm0vc3R1ZGVudC8iLCIvc3RhcmsvY3JtL3N0dWRlbnQvc2NvcmVfdmlldy8oXFxkKykvIl0sImFjdGlvbnMiOlsibGlzdCIsImVkaXQiXX19LCJtZW51X3Blcm1pc3Npb25fbGlzdCI6W1siL3N0YXJrL2NybS9zdHVkZW50LyIsIlx1NjdlNVx1NzcwYlx1NWI2Nlx1NzUxZiJdXSwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImE5ZWRkYTlkMGNiMmE1MjYxYzU2NWUxNTE2YWM2ZTFkMDkyNjNlOTUifQ==', '2019-06-19 05:19:03.439606');
INSERT INTO `django_session` VALUES ('q7c0ug9kgx0dekxzkozys4xr2sj6gty7', 'ZWI1MjYzNjA4YzBkODM1ODM4ZTk1NTVlZDk4YTIxZWZkN2ZiZmY0Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNGE0ZDdjZDA1YTVmMTk4ZjRjOTFhNjBiYmVlMmNlMjA0MTRmYjA3IiwidXNlcl9pZCI6MywicGVybWlzc2lvbl9kaWN0Ijp7IjIiOnsidXJscyI6WyIvc3RhcmsvY3JtL3N0dWR5cmVjb3JkLyIsIi9zdGFyay9jcm0vc3R1ZHlyZWNvcmQvYWRkLyIsIi9zdGFyay9jcm0vc3R1ZHlyZWNvcmQvKFxcZCspL2RlbGV0ZS8iLCIvc3RhcmsvY3JtL3N0dWR5cmVjb3JkLyhcXGQrKS9jaGFuZ2UvIl0sImFjdGlvbnMiOlsibGlzdCIsImFkZCIsImRlbGV0ZSIsImVkaXQiXX0sIjUiOnsidXJscyI6WyIvc3RhcmsvY3JtL3N0dWRlbnQvIiwiL3N0YXJrL2NybS9zdHVkZW50L2FkZC8iLCIvc3RhcmsvY3JtL3N0dWRlbnQvKFxcZCspL2RlbGV0ZS8iLCIvc3RhcmsvY3JtL3N0dWRlbnQvKFxcZCspL2NoYW5nZS8iLCIvc3RhcmsvY3JtL3N0dWRlbnQvc2NvcmVfdmlldy8oXFxkKykvIl0sImFjdGlvbnMiOlsibGlzdCIsImFkZCIsImRlbGV0ZSIsImVkaXQiLCJlZGl0Il19LCIxIjp7InVybHMiOlsiL3N0YXJrL2NybS9jdXN0b21lci8iLCIvc3RhcmsvY3JtL2N1c3RvbWVyL2FkZC8iLCIvc3RhcmsvY3JtL2N1c3RvbWVyLyhcXGQrKS9jaGFuZ2UvIiwiL3N0YXJrL2NybS9jdXN0b21lci8oXFxkKykvZGVsZXRlLyIsIi9zdGFyay9jcm0vY3VzdG9tZXIvcHVibGljLyIsIi9zdGFyay9jcm0vY3VzdG9tZXIvbXljdXN0b21lci8iXSwiYWN0aW9ucyI6WyJsaXN0IiwiYWRkIiwiZWRpdCIsImRlbGUiLCJsaXN0IiwibGlzdCJdfX0sIm1lbnVfcGVybWlzc2lvbl9saXN0IjpbWyIvc3RhcmsvY3JtL3N0dWR5cmVjb3JkLyIsIlx1NjdlNVx1NzcwYlx1NWI2Nlx1NGU2MFx1OGJiMFx1NWY1NSJdLFsiL3N0YXJrL2NybS9zdHVkZW50LyIsIlx1NjdlNVx1NzcwYlx1NWI2Nlx1NzUxZiJdLFsiL3N0YXJrL2NybS9jdXN0b21lci8iLCJcdTY3ZTVcdTc3MGJcdTViYTJcdTYyMzciXSxbIi9zdGFyay9jcm0vY3VzdG9tZXIvcHVibGljLyIsIlx1NjdlNVx1NzcwYlx1NTE2Y1x1NTE3MVx1NWJhMlx1NjIzNyJdLFsiL3N0YXJrL2NybS9jdXN0b21lci9teWN1c3RvbWVyLyIsIlx1NjIxMVx1NzY4NFx1NWJhMlx1NjIzNyJdXX0=', '2019-04-16 13:50:44.712155');
INSERT INTO `django_session` VALUES ('ruwbzdfslvfbc7951qilfcc02vyl1qyu', 'NzczNDM1YWZiYmQwZWM2NjMzMGJiNTYwYzljMzlkOWRlYzAwMWVmZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YjU1MGE3NDkxM2M0MDRjOWYxNzY0ZDU0YmQ0MDk4MGUxZmQ4NjI1IiwidXNlcl9pZCI6OCwicGVybWlzc2lvbl9kaWN0Ijp7IjYiOnsidXJscyI6WyIvc3RhcmsvcmJhYy91c2VyLyIsIi9zdGFyay9yYmFjL3VzZXIvYWRkLyIsIi9zdGFyay9yYmFjL3VzZXIvKFxcZCspL2NoYW5nZS8iLCIvc3RhcmsvcmJhYy91c2VyLyhcXGQrKS9kZWxldGUvIl0sImFjdGlvbnMiOlsibGlzdCIsImFkZCIsImVkaXQiLCJkZWxlIl19LCI3Ijp7InVybHMiOlsiL3N0YXJrL3JiYWMvcm9sZS8iLCIvc3RhcmsvL3JvbGUvYWRkLyIsIi9zdGFyay9yYmFjL3JvbGUvKFxcZCspL2NoYW5nZS8iLCIvc3RhcmsvcmJhYy9yb2xlLyhcXGQrKS9kZWxldGUvIl0sImFjdGlvbnMiOlsibGlzdCIsImFkZCIsImVkaXQiLCJkZWxlIl19fSwibWVudV9wZXJtaXNzaW9uX2xpc3QiOltbIi9zdGFyay9yYmFjL3VzZXIvIiwiXHU2N2U1XHU3NzBiXHU3NTI4XHU2MjM3Il0sWyIvc3RhcmsvcmJhYy9yb2xlLyIsIlx1NjdlNVx1NzcwYlx1ODlkMlx1ODI3MiJdXX0=', '2019-04-16 16:46:18.731877');
INSERT INTO `django_session` VALUES ('xqse6dfidbxnlt6uf6xfdblysj1s42tn', 'ZWYwYjFlZGZhODkxZmRlM2QzMzUxYTE1YzIwODhlNzQ4Mjk3MzFhMDp7InVzZXJfaWQiOjgsInBlcm1pc3Npb25fZGljdCI6eyIxIjp7InVybHMiOlsiL3N0YXJrL2NybS9jdXN0b21lci8iLCIvc3RhcmsvY3JtL2N1c3RvbWVyL2FkZC8iLCIvc3RhcmsvY3JtL2N1c3RvbWVyLyhcXGQrKS9jaGFuZ2UvIiwiL3N0YXJrL2NybS9jdXN0b21lci8oXFxkKykvZGVsZXRlLyIsIi9zdGFyay9jcm0vY3VzdG9tZXIvcHVibGljLyIsIi9zdGFyay9jcm0vY3VzdG9tZXIvbXljdXN0b21lci8iLCIvc3RhcmsvY3JtL2N1c3RvbWVyL2NhbmNlbF9jb3Vyc2UvKFxcZCspLyhcXGQrKS8iLCIvc3RhcmsvY3JtL2N1c3RvbWVyL2Z1cnRoZXIvKFxcZCspLyIsIi9zdGFyay9jcm0vY3VzdG9tZXJkaXN0cmJ1dGUvIiwiL3N0YXJrL2NybS9jdXN0b21lcmRpc3RyYnV0ZS8oXFxkKykvY2hhbmdlLyIsIi9zdGFyay9jcm0vY3VzdG9tZXJkaXN0cmJ1dGUvKFxcZCspL2RlbGV0ZS8iXSwiYWN0aW9ucyI6WyJsaXN0IiwiYWRkIiwiZWRpdCIsImRlbGUiLCJsaXN0IiwibGlzdCIsImVkaXQiLCJlZGl0IiwibGlzdCIsImVkaXQiLCJkZWxlIl19LCIyIjp7InVybHMiOlsiL3N0YXJrL2NybS9zdHVkeXJlY29yZC8iLCIvc3RhcmsvY3JtL3N0dWR5cmVjb3JkL2FkZC8iLCIvc3RhcmsvY3JtL3N0dWR5cmVjb3JkLyhcXGQrKS9kZWxldGUvIiwiL3N0YXJrL2NybS9zdHVkeXJlY29yZC8oXFxkKykvY2hhbmdlLyJdLCJhY3Rpb25zIjpbImxpc3QiLCJhZGQiLCJkZWxldGUiLCJlZGl0Il19LCI1Ijp7InVybHMiOlsiL3N0YXJrL2NybS9zdHVkZW50LyIsIi9zdGFyay9jcm0vc3R1ZGVudC9hZGQvIiwiL3N0YXJrL2NybS9zdHVkZW50LyhcXGQrKS9kZWxldGUvIiwiL3N0YXJrL2NybS9zdHVkZW50LyhcXGQrKS9jaGFuZ2UvIiwiL3N0YXJrL2NybS9zdHVkZW50L3Njb3JlX3ZpZXcvKFxcZCspLyJdLCJhY3Rpb25zIjpbImxpc3QiLCJhZGQiLCJkZWxldGUiLCJlZGl0IiwiZWRpdCJdfSwiNiI6eyJ1cmxzIjpbIi9zdGFyay9yYmFjL3VzZXIvIiwiL3N0YXJrL3JiYWMvdXNlci9hZGQvIiwiL3N0YXJrL3JiYWMvdXNlci8oXFxkKykvY2hhbmdlLyIsIi9zdGFyay9yYmFjL3VzZXIvKFxcZCspL2RlbGV0ZS8iXSwiYWN0aW9ucyI6WyJsaXN0IiwiYWRkIiwiZWRpdCIsImRlbGUiXX0sIjciOnsidXJscyI6WyIvc3RhcmsvcmJhYy9yb2xlLyIsIi9zdGFyay8vcm9sZS9hZGQvIiwiL3N0YXJrL3JiYWMvcm9sZS8oXFxkKykvY2hhbmdlLyIsIi9zdGFyay9yYmFjL3JvbGUvKFxcZCspL2RlbGV0ZS8iXSwiYWN0aW9ucyI6WyJsaXN0IiwiYWRkIiwiZWRpdCIsImRlbGUiXX0sIjgiOnsidXJscyI6WyIvc3RhcmsvcmJhYy9wZXJtaXNzaW9uLyIsIi9zdGFyay9yYmFjL3Blcm1pc3Npb24vYWRkLyIsIi9zdGFyay9yYmFjL3Blcm1pc3Npb24vKFxcZCspL2NoYW5nZS8iLCIvc3RhcmsvcmJhYy9wZXJtaXNzaW9uLyhcXGQrKS9kZWxldGUvIiwiL3N0YXJrL2NybS91c2VyaW5mby8iLCIvc3RhcmsvY3JtL3VzZXJpbmZvLyhcXGQrKS9jaGFuZ2UvIiwiL3N0YXJrL2NybS91c2VyaW5mby9hZGQvIiwiL3N0YXJrL2NybS91c2VyaW5mby8oXFxkKykvZGVsZXRlLyJdLCJhY3Rpb25zIjpbImxpc3QiLCJhZGQiLCJlZGl0IiwiZGVsZSIsImxpc3QiLCJlZGl0IiwiYWRkIiwiZGVsZSJdfX0sIm1lbnVfcGVybWlzc2lvbl9saXN0IjpbWyIvc3RhcmsvY3JtL2N1c3RvbWVyLyIsIlx1NjdlNVx1NzcwYlx1NWJhMlx1NjIzNyJdLFsiL3N0YXJrL2NybS9jdXN0b21lci9wdWJsaWMvIiwiXHU2N2U1XHU3NzBiXHU1MTZjXHU1MTcxXHU1YmEyXHU2MjM3Il0sWyIvc3RhcmsvY3JtL2N1c3RvbWVyL215Y3VzdG9tZXIvIiwiXHU2MjExXHU3Njg0XHU1YmEyXHU2MjM3Il0sWyIvc3RhcmsvY3JtL3N0dWR5cmVjb3JkLyIsIlx1NjdlNVx1NzcwYlx1NWI2Nlx1NGU2MFx1OGJiMFx1NWY1NSJdLFsiL3N0YXJrL2NybS9zdHVkZW50LyIsIlx1NjdlNVx1NzcwYlx1NWI2Nlx1NzUxZiJdLFsiL3N0YXJrL3JiYWMvdXNlci8iLCJcdTY3ZTVcdTc3MGJcdTc1MjhcdTYyMzciXSxbIi9zdGFyay9yYmFjL3JvbGUvIiwiXHU2N2U1XHU3NzBiXHU4OWQyXHU4MjcyIl0sWyIvc3RhcmsvcmJhYy9wZXJtaXNzaW9uLyIsIlx1NjdlNVx1NzcwYlx1Njc0M1x1OTY1MCJdLFsiL3N0YXJrL2NybS91c2VyaW5mby8iLCJcdTc1MjhcdTYyMzdcdTUyMTdcdTg4NjgiXSxbIi9zdGFyay9jcm0vY3VzdG9tZXJkaXN0cmJ1dGUvIiwiXHU1YmEyXHU2MjM3XHU1MjA2XHU1ZTAzIl1dLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTllZGRhOWQwY2IyYTUyNjFjNTY1ZTE1MTZhYzZlMWQwOTI2M2U5NSJ9', '2019-05-21 01:04:29.290318');

-- ----------------------------
-- Table structure for rbac_permission
-- ----------------------------
DROP TABLE IF EXISTS `rbac_permission`;
CREATE TABLE `rbac_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  `action` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rbac_permission_group_id_1164c21c_fk_rbac_permissiongroup_id`(`group_id`) USING BTREE,
  CONSTRAINT `rbac_permission_group_id_1164c21c_fk_rbac_permissiongroup_id` FOREIGN KEY (`group_id`) REFERENCES `rbac_permissiongroup` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rbac_permission
-- ----------------------------
INSERT INTO `rbac_permission` VALUES (1, '查看客户', '/stark/crm/customer/', 1, 'list');
INSERT INTO `rbac_permission` VALUES (2, '添加客户', '/stark/crm/customer/add/', 1, 'add');
INSERT INTO `rbac_permission` VALUES (3, '编辑客户', '/stark/crm/customer/(\\d+)/change/', 1, 'edit');
INSERT INTO `rbac_permission` VALUES (4, '删除客户', '/stark/crm/customer/(\\d+)/delete/', 1, 'dele');
INSERT INTO `rbac_permission` VALUES (5, '查看公共客户', '/stark/crm/customer/public/', 1, 'list');
INSERT INTO `rbac_permission` VALUES (6, '我的客户', '/stark/crm/customer/mycustomer/', 1, 'list');
INSERT INTO `rbac_permission` VALUES (7, '查看学习记录', '/stark/crm/studyrecord/', 2, 'list');
INSERT INTO `rbac_permission` VALUES (8, '添加学习记录', '/stark/crm/studyrecord/add/', 2, 'add');
INSERT INTO `rbac_permission` VALUES (9, '删除学习记录', '/stark/crm/studyrecord/(\\d+)/delete/', 2, 'delete');
INSERT INTO `rbac_permission` VALUES (10, '编辑学习记录', '/stark/crm/studyrecord/(\\d+)/change/', 2, 'edit');
INSERT INTO `rbac_permission` VALUES (11, '查看学生', '/stark/crm/student/', 5, 'list');
INSERT INTO `rbac_permission` VALUES (12, '添加学生', '/stark/crm/student/add/', 5, 'add');
INSERT INTO `rbac_permission` VALUES (13, '删除学生', '/stark/crm/student/(\\d+)/delete/', 5, 'delete');
INSERT INTO `rbac_permission` VALUES (14, '编辑学生', '/stark/crm/student/(\\d+)/change/', 5, 'edit');
INSERT INTO `rbac_permission` VALUES (15, '查看学生成绩', '/stark/crm/student/score_view/(\\d+)/', 5, 'edit');
INSERT INTO `rbac_permission` VALUES (16, '查看用户', '/stark/rbac/user/', 6, 'list');
INSERT INTO `rbac_permission` VALUES (17, '添加用户', '/stark/rbac/user/add/', 6, 'add');
INSERT INTO `rbac_permission` VALUES (18, '编辑用户', '/stark/rbac/user/(\\d+)/change/', 6, 'edit');
INSERT INTO `rbac_permission` VALUES (19, '删除用户', '/stark/rbac/user/(\\d+)/delete/', 6, 'dele');
INSERT INTO `rbac_permission` VALUES (20, '查看角色', '/stark/rbac/role/', 7, 'list');
INSERT INTO `rbac_permission` VALUES (21, '添加角色', '/stark//role/add/', 7, 'add');
INSERT INTO `rbac_permission` VALUES (22, '编辑角色', '/stark/rbac/role/(\\d+)/change/', 7, 'edit');
INSERT INTO `rbac_permission` VALUES (23, '删除角色', '/stark/rbac/role/(\\d+)/delete/', 7, 'dele');
INSERT INTO `rbac_permission` VALUES (24, '查看权限', '/stark/rbac/permission/', 8, 'list');
INSERT INTO `rbac_permission` VALUES (25, '添加权限', '/stark/rbac/permission/add/', 8, 'add');
INSERT INTO `rbac_permission` VALUES (26, '编辑权限', '/stark/rbac/permission/(\\d+)/change/', 8, 'edit');
INSERT INTO `rbac_permission` VALUES (27, '删除权限', '/stark/rbac/permission/(\\d+)/delete/', 8, 'dele');
INSERT INTO `rbac_permission` VALUES (28, '用户列表', '/stark/crm/userinfo/', 8, 'list');
INSERT INTO `rbac_permission` VALUES (29, '用户编辑', '/stark/crm/userinfo/(\\d+)/change/', 8, 'edit');
INSERT INTO `rbac_permission` VALUES (30, '用户增加', '/stark/crm/userinfo/add/', 8, 'add');
INSERT INTO `rbac_permission` VALUES (31, '用户删除', '/stark/crm/userinfo/(\\d+)/delete/', 8, 'dele');
INSERT INTO `rbac_permission` VALUES (32, '客户跟进', '/stark/crm/customer/cancel_course/(\\d+)/(\\d+)/', 1, 'edit');
INSERT INTO `rbac_permission` VALUES (33, '未来客户', '/stark/crm/customer/further/(\\d+)/', 1, 'edit');
INSERT INTO `rbac_permission` VALUES (34, '客户分布', '/stark/crm/customerdistrbute/', 1, 'list');
INSERT INTO `rbac_permission` VALUES (35, '客户分布编辑', '/stark/crm/customerdistrbute/(\\d+)/change/', 1, 'edit');
INSERT INTO `rbac_permission` VALUES (36, '客户分布删除', '/stark/crm/customerdistrbute/(\\d+)/delete/', 1, 'dele');
INSERT INTO `rbac_permission` VALUES (37, '客户分布增加', '/stark/crm/customerdistrbute/add/', 1, 'add');
INSERT INTO `rbac_permission` VALUES (38, '添加课程记录', '/stark/crm/courserecord/add/', 9, 'add');
INSERT INTO `rbac_permission` VALUES (39, '修改课程记录', '/stark/crm/courserecord/(\\d+)/change/', 9, 'change');
INSERT INTO `rbac_permission` VALUES (40, '删除课程记录', '/stark/crm/courserecord/(\\d+)/delete/', 9, 'dele');
INSERT INTO `rbac_permission` VALUES (41, '查看课程记录', '/stark/crm/courserecord/', 9, 'list');
INSERT INTO `rbac_permission` VALUES (43, '查看班级', '/stark/crm/classlist/', 10, 'list');
INSERT INTO `rbac_permission` VALUES (44, '添加班级', '/stark/crm/classlist/add/', 10, 'add');
INSERT INTO `rbac_permission` VALUES (45, '删除班级', '/stark/crm/classlist/(\\d+)/delete/', 10, 'delete');
INSERT INTO `rbac_permission` VALUES (46, '编辑班级', '/stark/crm/classlist/(\\d+)/change/', 10, 'change');
INSERT INTO `rbac_permission` VALUES (48, '录入成绩', '/stark/crm/courserecord/record_score/(\\d+)/', 9, 'add');
INSERT INTO `rbac_permission` VALUES (49, '添加校区', '/stark/crm/school/add/', 12, 'add');
INSERT INTO `rbac_permission` VALUES (50, '查看校区', '/stark/crm/school/', 12, 'list');
INSERT INTO `rbac_permission` VALUES (52, '编辑校区', '/stark/crm/school/(\\d+)/change/', 12, 'edit');
INSERT INTO `rbac_permission` VALUES (53, '删除校区', '/stark/crm/school/(\\d+)/delete/', 12, 'dele');
INSERT INTO `rbac_permission` VALUES (54, '查看课程', '/stark/crm/course/', 13, 'list');
INSERT INTO `rbac_permission` VALUES (55, '编辑课程', '/stark/crm/course/(\\d+)/change/', 13, 'edit');
INSERT INTO `rbac_permission` VALUES (56, '删除课程', '/stark/crm/course/(\\d+)/delete/', 13, 'dele');
INSERT INTO `rbac_permission` VALUES (57, '添加课程', '/stark/crm/course/add/', 13, 'add');

-- ----------------------------
-- Table structure for rbac_permissiongroup
-- ----------------------------
DROP TABLE IF EXISTS `rbac_permissiongroup`;
CREATE TABLE `rbac_permissiongroup`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rbac_permissiongroup
-- ----------------------------
INSERT INTO `rbac_permissiongroup` VALUES (1, '客户管理');
INSERT INTO `rbac_permissiongroup` VALUES (2, '学习记录');
INSERT INTO `rbac_permissiongroup` VALUES (3, '校区管理');
INSERT INTO `rbac_permissiongroup` VALUES (4, '班级管理');
INSERT INTO `rbac_permissiongroup` VALUES (5, '学生管理');
INSERT INTO `rbac_permissiongroup` VALUES (6, '用户管理');
INSERT INTO `rbac_permissiongroup` VALUES (7, '角色管理');
INSERT INTO `rbac_permissiongroup` VALUES (8, '权限管理');
INSERT INTO `rbac_permissiongroup` VALUES (9, '课程记录管理');
INSERT INTO `rbac_permissiongroup` VALUES (10, '班级管理');
INSERT INTO `rbac_permissiongroup` VALUES (12, '校区管理');
INSERT INTO `rbac_permissiongroup` VALUES (13, '课程管理');

-- ----------------------------
-- Table structure for rbac_role
-- ----------------------------
DROP TABLE IF EXISTS `rbac_role`;
CREATE TABLE `rbac_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rbac_role
-- ----------------------------
INSERT INTO `rbac_role` VALUES (1, '销售');
INSERT INTO `rbac_role` VALUES (2, '讲师');
INSERT INTO `rbac_role` VALUES (3, '校长');
INSERT INTO `rbac_role` VALUES (4, '学生');
INSERT INTO `rbac_role` VALUES (5, '管理员');

-- ----------------------------
-- Table structure for rbac_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `rbac_role_permissions`;
CREATE TABLE `rbac_role_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `rbac_role_permissions_role_id_permission_id_d01303da_uniq`(`role_id`, `permission_id`) USING BTREE,
  INDEX `rbac_role_permission_permission_id_f5e1e866_fk_rbac_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `rbac_role_permission_permission_id_f5e1e866_fk_rbac_perm` FOREIGN KEY (`permission_id`) REFERENCES `rbac_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `rbac_role_permissions_role_id_d10416cb_fk_rbac_role_id` FOREIGN KEY (`role_id`) REFERENCES `rbac_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rbac_role_permissions
-- ----------------------------
INSERT INTO `rbac_role_permissions` VALUES (1, 1, 1);
INSERT INTO `rbac_role_permissions` VALUES (2, 1, 2);
INSERT INTO `rbac_role_permissions` VALUES (3, 1, 3);
INSERT INTO `rbac_role_permissions` VALUES (4, 1, 5);
INSERT INTO `rbac_role_permissions` VALUES (5, 1, 6);
INSERT INTO `rbac_role_permissions` VALUES (60, 1, 32);
INSERT INTO `rbac_role_permissions` VALUES (61, 1, 33);
INSERT INTO `rbac_role_permissions` VALUES (6, 2, 7);
INSERT INTO `rbac_role_permissions` VALUES (7, 2, 8);
INSERT INTO `rbac_role_permissions` VALUES (8, 2, 9);
INSERT INTO `rbac_role_permissions` VALUES (9, 2, 10);
INSERT INTO `rbac_role_permissions` VALUES (10, 2, 11);
INSERT INTO `rbac_role_permissions` VALUES (71, 2, 15);
INSERT INTO `rbac_role_permissions` VALUES (77, 2, 38);
INSERT INTO `rbac_role_permissions` VALUES (78, 2, 39);
INSERT INTO `rbac_role_permissions` VALUES (76, 2, 40);
INSERT INTO `rbac_role_permissions` VALUES (80, 2, 41);
INSERT INTO `rbac_role_permissions` VALUES (89, 2, 48);
INSERT INTO `rbac_role_permissions` VALUES (105, 2, 54);
INSERT INTO `rbac_role_permissions` VALUES (106, 2, 55);
INSERT INTO `rbac_role_permissions` VALUES (103, 2, 56);
INSERT INTO `rbac_role_permissions` VALUES (104, 2, 57);
INSERT INTO `rbac_role_permissions` VALUES (11, 3, 1);
INSERT INTO `rbac_role_permissions` VALUES (12, 3, 2);
INSERT INTO `rbac_role_permissions` VALUES (13, 3, 3);
INSERT INTO `rbac_role_permissions` VALUES (14, 3, 4);
INSERT INTO `rbac_role_permissions` VALUES (15, 3, 5);
INSERT INTO `rbac_role_permissions` VALUES (16, 3, 6);
INSERT INTO `rbac_role_permissions` VALUES (17, 3, 7);
INSERT INTO `rbac_role_permissions` VALUES (18, 3, 8);
INSERT INTO `rbac_role_permissions` VALUES (19, 3, 9);
INSERT INTO `rbac_role_permissions` VALUES (20, 3, 10);
INSERT INTO `rbac_role_permissions` VALUES (21, 3, 11);
INSERT INTO `rbac_role_permissions` VALUES (22, 3, 12);
INSERT INTO `rbac_role_permissions` VALUES (23, 3, 13);
INSERT INTO `rbac_role_permissions` VALUES (24, 3, 14);
INSERT INTO `rbac_role_permissions` VALUES (25, 3, 15);
INSERT INTO `rbac_role_permissions` VALUES (58, 4, 11);
INSERT INTO `rbac_role_permissions` VALUES (59, 4, 15);
INSERT INTO `rbac_role_permissions` VALUES (35, 5, 1);
INSERT INTO `rbac_role_permissions` VALUES (36, 5, 2);
INSERT INTO `rbac_role_permissions` VALUES (37, 5, 3);
INSERT INTO `rbac_role_permissions` VALUES (38, 5, 4);
INSERT INTO `rbac_role_permissions` VALUES (39, 5, 5);
INSERT INTO `rbac_role_permissions` VALUES (40, 5, 6);
INSERT INTO `rbac_role_permissions` VALUES (41, 5, 7);
INSERT INTO `rbac_role_permissions` VALUES (42, 5, 8);
INSERT INTO `rbac_role_permissions` VALUES (43, 5, 9);
INSERT INTO `rbac_role_permissions` VALUES (44, 5, 10);
INSERT INTO `rbac_role_permissions` VALUES (45, 5, 11);
INSERT INTO `rbac_role_permissions` VALUES (46, 5, 12);
INSERT INTO `rbac_role_permissions` VALUES (47, 5, 13);
INSERT INTO `rbac_role_permissions` VALUES (48, 5, 14);
INSERT INTO `rbac_role_permissions` VALUES (49, 5, 15);
INSERT INTO `rbac_role_permissions` VALUES (27, 5, 16);
INSERT INTO `rbac_role_permissions` VALUES (28, 5, 17);
INSERT INTO `rbac_role_permissions` VALUES (29, 5, 18);
INSERT INTO `rbac_role_permissions` VALUES (30, 5, 19);
INSERT INTO `rbac_role_permissions` VALUES (31, 5, 20);
INSERT INTO `rbac_role_permissions` VALUES (32, 5, 21);
INSERT INTO `rbac_role_permissions` VALUES (33, 5, 22);
INSERT INTO `rbac_role_permissions` VALUES (34, 5, 23);
INSERT INTO `rbac_role_permissions` VALUES (50, 5, 24);
INSERT INTO `rbac_role_permissions` VALUES (51, 5, 25);
INSERT INTO `rbac_role_permissions` VALUES (52, 5, 26);
INSERT INTO `rbac_role_permissions` VALUES (53, 5, 27);
INSERT INTO `rbac_role_permissions` VALUES (54, 5, 28);
INSERT INTO `rbac_role_permissions` VALUES (55, 5, 29);
INSERT INTO `rbac_role_permissions` VALUES (56, 5, 30);
INSERT INTO `rbac_role_permissions` VALUES (57, 5, 31);
INSERT INTO `rbac_role_permissions` VALUES (63, 5, 32);
INSERT INTO `rbac_role_permissions` VALUES (64, 5, 33);
INSERT INTO `rbac_role_permissions` VALUES (91, 5, 34);
INSERT INTO `rbac_role_permissions` VALUES (92, 5, 35);
INSERT INTO `rbac_role_permissions` VALUES (93, 5, 36);
INSERT INTO `rbac_role_permissions` VALUES (94, 5, 37);
INSERT INTO `rbac_role_permissions` VALUES (74, 5, 38);
INSERT INTO `rbac_role_permissions` VALUES (75, 5, 39);
INSERT INTO `rbac_role_permissions` VALUES (72, 5, 40);
INSERT INTO `rbac_role_permissions` VALUES (79, 5, 41);
INSERT INTO `rbac_role_permissions` VALUES (83, 5, 43);
INSERT INTO `rbac_role_permissions` VALUES (84, 5, 44);
INSERT INTO `rbac_role_permissions` VALUES (85, 5, 45);
INSERT INTO `rbac_role_permissions` VALUES (86, 5, 46);
INSERT INTO `rbac_role_permissions` VALUES (88, 5, 48);
INSERT INTO `rbac_role_permissions` VALUES (90, 5, 49);
INSERT INTO `rbac_role_permissions` VALUES (95, 5, 50);
INSERT INTO `rbac_role_permissions` VALUES (97, 5, 52);
INSERT INTO `rbac_role_permissions` VALUES (98, 5, 53);
INSERT INTO `rbac_role_permissions` VALUES (99, 5, 54);
INSERT INTO `rbac_role_permissions` VALUES (100, 5, 55);
INSERT INTO `rbac_role_permissions` VALUES (101, 5, 56);
INSERT INTO `rbac_role_permissions` VALUES (102, 5, 57);

-- ----------------------------
-- Table structure for rbac_user
-- ----------------------------
DROP TABLE IF EXISTS `rbac_user`;
CREATE TABLE `rbac_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rbac_user
-- ----------------------------
INSERT INTO `rbac_user` VALUES (1, '小蓝', '123');
INSERT INTO `rbac_user` VALUES (2, '李维', '123');
INSERT INTO `rbac_user` VALUES (3, '秦怡', '123');
INSERT INTO `rbac_user` VALUES (4, '小雨', '123');
INSERT INTO `rbac_user` VALUES (5, '小娜', '123');
INSERT INTO `rbac_user` VALUES (6, '李明', '123');
INSERT INTO `rbac_user` VALUES (7, 'egon', '123');
INSERT INTO `rbac_user` VALUES (8, 'admin', '123');
INSERT INTO `rbac_user` VALUES (9, '李明', '123');
INSERT INTO `rbac_user` VALUES (10, '刘芸', '123');
INSERT INTO `rbac_user` VALUES (11, '刘宇', '123');
INSERT INTO `rbac_user` VALUES (12, '123', '123');
INSERT INTO `rbac_user` VALUES (13, '1', '1');

-- ----------------------------
-- Table structure for rbac_user_roles
-- ----------------------------
DROP TABLE IF EXISTS `rbac_user_roles`;
CREATE TABLE `rbac_user_roles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `rbac_user_roles_user_id_role_id_60665088_uniq`(`user_id`, `role_id`) USING BTREE,
  INDEX `rbac_user_roles_role_id_363ee4fe_fk_rbac_role_id`(`role_id`) USING BTREE,
  CONSTRAINT `rbac_user_roles_role_id_363ee4fe_fk_rbac_role_id` FOREIGN KEY (`role_id`) REFERENCES `rbac_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `rbac_user_roles_user_id_01d9ab9e_fk_rbac_user_id` FOREIGN KEY (`user_id`) REFERENCES `rbac_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rbac_user_roles
-- ----------------------------
INSERT INTO `rbac_user_roles` VALUES (1, 1, 1);
INSERT INTO `rbac_user_roles` VALUES (2, 2, 2);
INSERT INTO `rbac_user_roles` VALUES (3, 3, 2);
INSERT INTO `rbac_user_roles` VALUES (4, 3, 3);
INSERT INTO `rbac_user_roles` VALUES (5, 4, 1);
INSERT INTO `rbac_user_roles` VALUES (6, 5, 1);
INSERT INTO `rbac_user_roles` VALUES (7, 6, 4);
INSERT INTO `rbac_user_roles` VALUES (8, 7, 2);
INSERT INTO `rbac_user_roles` VALUES (9, 8, 5);
INSERT INTO `rbac_user_roles` VALUES (10, 9, 4);
INSERT INTO `rbac_user_roles` VALUES (11, 10, 4);
INSERT INTO `rbac_user_roles` VALUES (12, 11, 4);
INSERT INTO `rbac_user_roles` VALUES (13, 12, 4);
INSERT INTO `rbac_user_roles` VALUES (14, 13, 4);

SET FOREIGN_KEY_CHECKS = 1;
