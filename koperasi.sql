/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : koperasi

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 05/06/2025 10:05:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for administrasi
-- ----------------------------
DROP TABLE IF EXISTS `administrasi`;
CREATE TABLE `administrasi`  (
  `administrasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `input_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tgl_update` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of administrasi
-- ----------------------------
INSERT INTO `administrasi` VALUES ('10000', 'admin', '2025-05-20');

-- ----------------------------
-- Table structure for anggota
-- ----------------------------
DROP TABLE IF EXISTS `anggota`;
CREATE TABLE `anggota`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `no_hp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_active` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `nama`(`nama`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anggota
-- ----------------------------
INSERT INTO `anggota` VALUES (1, 'admin', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Admin', 'karyawan', NULL, 'Admin', '2025-05-30 19:06:47', '2025-04-27 05:39:38.000', '1');
INSERT INTO `anggota` VALUES (2, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. MOH EKA KARTIKA EM, S.H., M.HUM.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (3, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. WAYAN KARYA, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (4, '195901231986121001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'H BAKTAR JUBRI NASUTION, S.H, M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (5, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Ucu Jaya Sarjana S, SH.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (6, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MULA PANGARIBUAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (7, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HERMAN HELLER HUTAPEA, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (8, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. JONLAR PURBA, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (9, '195805081986011001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'JESAYAS TARIGAN, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (10, '195912151988031005', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'CEPI ISKANDAR, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (11, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HIRAS SIHOMBING, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (13, '195912291986121001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MUHAMMAD NUR, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (14, '196104171985122001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUKMAYANTI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (15, '195809121985031004', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'R MATRAS SUPOMO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (16, '196107181988031002', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. GUNAWAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (17, '196008071985122001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PORMAN SITUMORANG, S.H., M.H.', 'karyawan', 'xxx', 'Anggota', '2025-05-30 19:06:47', '2025-06-03 22:43:51', '1');
INSERT INTO `anggota` VALUES (18, '195806301985031004', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ROBERT SIAHAAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (19, '196111031988031002', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUDARWIN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (20, '196204181988031003', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PRANOTO, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (21, '196303281988032003', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hj. WEDHAYATI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (22, '196005171984031004', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'POLTAK SITORUS, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (23, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RATNA MINTARSIH, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (24, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ASBAN PANJAITAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (25, '196111111982031013', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'KEMAL TAMPUBOLON, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (26, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'IDA MARION, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (27, '196003021985121001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'IMAN GULTOM, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (28, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MADE SUTRISNA, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (29, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'VIKTOR PAKPAHAN, S.H., M.H.MSi.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (30, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. KASIANUS TELAUMBANUA, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (31, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'BARITA SARAGIH, S.H.L.L.M.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (32, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Yana Hediyana', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (33, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hj. NENENG WARLINAH, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (34, '196709031993031005', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HENDRO CATUR SUCAHYO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (35, '196012301985031006', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PAHATAR SIMARMATA, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (36, '195808281985031005', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Zaherwan Lesmana, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (37, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'H. HANDOKO KRISTIYOSO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (38, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. Hj. Nur Aslam Bustaman, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (39, '19610718198031002', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SURANTO, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (40, '196002171985122001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'TURSINAH AFTIANTI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (41, '196101051986121001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MULYANTO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (42, '196203251988031003', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'EDISON MUHAMAD, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (43, '195909021986121001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. KRISTWAN GENOVA DAMANIK, S.H., M.HUM.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (44, '195905051985121001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MARISI SIREGAR, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (45, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MOCH MAWARDI, SH MH', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (46, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', ' Hj. JUNILAWATI HARAHAP, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (47, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. NAISYAH KADIR, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (48, '196607131990031004', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SAIFUL ASNURI, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (49, '1957012202201802013', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hj. LILIK SRIHARTATI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (50, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Tri Mulyani, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (51, '196406031989032002', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Sri Yuditiani, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (52, '196806261993032005', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Rosmalinda, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (53, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Erna Rosmawati, S.H., M. H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (54, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Bambang Sugianto', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (55, '196403161985031005', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ENDANG SUMARNO, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (56, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', '	KRISNA SOFIADI, S.H', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (57, '197709122002122003', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ERNIWATI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (58, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hermansyah', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (59, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Bambang Belardaya', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (60, '196409051985021001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUGIHARTO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (61, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ARLISA YUNITA NELYANA', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (62, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Nurdiana, SH', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (63, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Khairul Fasja, SH', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (64, '196505051991031005', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'JAFRI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (65, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hendayani, SH', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (66, '196507171987031003', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'GATOT HADI PURWONO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (67, '196810111990031001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RIDWAN NURDIN, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (68, '196309281983032003', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YETI NINGSIH, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (69, '196807091994031004', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ENANG SUPARMAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (70, '196607151992031022', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUSILO NANDANG BAGIO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (71, '197012232006042002', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'NINA YAYU MAESAROH, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (72, '196309121983012001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SRI SUBEKTI TRIANA, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (73, '196407241985031005', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'JONO YULIANTO, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (74, '196501141994031001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YANI SOFYAN, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (75, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dani Adhia Wardana', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (76, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Ummi Hani, S.Sos', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (77, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Ary Faridah, ', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (78, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Sri Suratno Wibowo', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (79, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Anton Senjaya, S.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (81, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Aljunalliadi, SE', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (82, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Elna Helniarika, S.Kom', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (83, '196902021994032004', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Lies Hendrawani', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (84, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Apriyani Adi Utami', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (85, '197206151994032003', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Lisna Indrawati', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (86, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Sidik Nugraha', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (87, '198306262006042004', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Fitri Kristianti, S.E., Ak.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (89, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Nurhafina N', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (91, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Nurul Yulia', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (92, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Andrie Maeri', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (94, '198405272011011012', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Tia Adistian Pasha, S.T.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (95, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hera Caprina, S.I.Kom.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (96, '199202152019032012', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'NISA WANGSITA, S.Psi.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (97, '198903222015031001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YOGI ISKANDAR PAMUNGKAS PUTRA, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (98, '199009172019032008', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MARTINA MAGDALENA BARASA, S.T.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (99, '199506022019032009', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YUNI CLARA, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (100, '199504202020122003', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ZENI PUTERI SIMANGUNSONG, S.Ak.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (101, '199512152020122014', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'DEVIRA WIENA PRAMINTYA, S.Kom.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (102, '199108202020121003', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'INDRA RIZKY FIRMANSYAH, A.Md.T.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (103, '197504032007011002', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Saepuloh', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (104, '199604232020122012', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RESTI APRILIA, A.Md.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (105, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', ' AYU PERMATA SARI.,A.Md', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (106, '199408012022032007', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SRI ANGELA SIALLAGAN, A.Md.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (107, '199611302020122008', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'FERGIE NOVITA WASSAHDAD, A.Md.Ak.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (108, '199601192020122012', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HANI NUR AINI, A.Md.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (109, '198609262023211018', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'BUDYAWAN HERIJANTO, S.E.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (110, '197803152023211004', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HERU BUDIYANTO, S.IP.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (111, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'FITRIA NURFAUZIAH, S.E.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (112, '198603182023212022', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RIA IRAWATI PUSPITASARI, A.Md.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '1');
INSERT INTO `anggota` VALUES (113, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'LUKMAN ILMAN NURHAKIM, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (114, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ANNISA AYU LESTARI, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (115, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'OLIVIA WAHYU KUSUMANINGTYAS, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (116, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PUPUT WULANSARI, A.Md.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:47', NULL, '0');
INSERT INTO `anggota` VALUES (118, 'ketua', '$2y$12$tyjFKPn/uj0TGEorr63zxOgny8ywlED2HkYplSxFouMUYnu5Moz3G', 'ketua', 'karyawan', '08xxxx', 'Ketua', '2025-06-03 22:45:39', '2025-06-03 22:45:39', '1');

-- ----------------------------
-- Table structure for anggota_copy1
-- ----------------------------
DROP TABLE IF EXISTS `anggota_copy1`;
CREATE TABLE `anggota_copy1`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `no_hp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_active` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  INDEX `nama`(`nama`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anggota_copy1
-- ----------------------------
INSERT INTO `anggota_copy1` VALUES ('1', 'admin', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Admin', 'karyawan', NULL, 'admin', '2025-04-27 05:39:38.000', '2025-04-27 05:39:38.000', '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. MOH EKA KARTIKA EM, S.H., M.HUM.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. WAYAN KARYA, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '195901231986121001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'H BAKTAR JUBRI NASUTION, S.H, M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Ucu Jaya Sarjana S, SH.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MULA PANGARIBUAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HERMAN HELLER HUTAPEA, S.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. JONLAR PURBA, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '195805081986011001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'JESAYAS TARIGAN, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '195912151988031005', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'CEPI ISKANDAR, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HIRAS SIHOMBING, S.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `anggota_copy1` VALUES (NULL, '195912291986121001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MUHAMMAD NUR, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196104171985122001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUKMAYANTI, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '195809121985031004', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'R MATRAS SUPOMO, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196107181988031002', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. GUNAWAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196008071985122001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PORMAN SITUMORANG, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '195806301985031004', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ROBERT SIAHAAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196111031988031002', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUDARWIN, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196204181988031003', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PRANOTO, S.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196303281988032003', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hj. WEDHAYATI, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196005171984031004', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'POLTAK SITORUS, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RATNA MINTARSIH, S.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ASBAN PANJAITAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196111111982031013', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'KEMAL TAMPUBOLON, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'IDA MARION, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196003021985121001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'IMAN GULTOM, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MADE SUTRISNA, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'VIKTOR PAKPAHAN, S.H., M.H.MSi.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. KASIANUS TELAUMBANUA, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'BARITA SARAGIH, S.H.L.L.M.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Yana Hediyana', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hj. NENENG WARLINAH, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196709031993031005', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HENDRO CATUR SUCAHYO, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196012301985031006', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PAHATAR SIMARMATA, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '195808281985031005', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Zaherwan Lesmana, S.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'H. HANDOKO KRISTIYOSO, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. Hj. Nur Aslam Bustaman, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '19610718198031002', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SURANTO, S.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196002171985122001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'TURSINAH AFTIANTI, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196101051986121001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MULYANTO, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196203251988031003', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'EDISON MUHAMAD, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '195909021986121001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. KRISTWAN GENOVA DAMANIK, S.H., M.HUM.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '195905051985121001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MARISI SIREGAR, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MOCH MAWARDI, SH MH', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', ' Hj. JUNILAWATI HARAHAP, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. NAISYAH KADIR, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196607131990031004', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SAIFUL ASNURI, S.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '1957012202201802013', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hj. LILIK SRIHARTATI, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Tri Mulyani, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196406031989032002', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Sri Yuditiani, S.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196806261993032005', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Rosmalinda, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Erna Rosmawati, S.H., M. H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Bambang Sugianto', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196403161985031005', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ENDANG SUMARNO, S.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', '	KRISNA SOFIADI, S.H', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '197709122002122003', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ERNIWATI, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hermansyah', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Bambang Belardaya', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196409051985021001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUGIHARTO, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ARLISA YUNITA NELYANA', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Nurdiana, SH', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Khairul Fasja, SH', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196505051991031005', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'JAFRI, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hendayani, SH', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196507171987031003', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'GATOT HADI PURWONO, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196810111990031001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RIDWAN NURDIN, S.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196309281983032003', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YETI NINGSIH, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196807091994031004', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ENANG SUPARMAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196607151992031022', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUSILO NANDANG BAGIO, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '197012232006042002', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'NINA YAYU MAESAROH, S.H., M.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196309121983012001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SRI SUBEKTI TRIANA, S.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196407241985031005', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'JONO YULIANTO, S.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196501141994031001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YANI SOFYAN, S.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dani Adhia Wardana', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Ummi Hani, S.Sos', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Ary Faridah, ', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Sri Suratno Wibowo', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Anton Senjaya, S.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Aljunalliadi, SE', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Elna Helniarika, S.Kom', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '196902021994032004', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Lies Hendrawani', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Apriyani Adi Utami', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '197206151994032003', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Lisna Indrawati', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Sidik Nugraha', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '198306262006042004', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Fitri Kristianti, S.E., Ak.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Nurhafina N', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Nurul Yulia', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Andrie Maeri', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `anggota_copy1` VALUES (NULL, '198405272011011012', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Tia Adistian Pasha, S.T.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hera Caprina, S.I.Kom.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '199202152019032012', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'NISA WANGSITA, S.Psi.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '198903222015031001', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YOGI ISKANDAR PAMUNGKAS PUTRA, S.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '199009172019032008', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MARTINA MAGDALENA BARASA, S.T.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '199506022019032009', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YUNI CLARA, S.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '199504202020122003', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ZENI PUTERI SIMANGUNSONG, S.Ak.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '199512152020122014', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'DEVIRA WIENA PRAMINTYA, S.Kom.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '199108202020121003', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'INDRA RIZKY FIRMANSYAH, A.Md.T.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '197504032007011002', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Saepuloh', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '199604232020122012', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RESTI APRILIA, A.Md.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', ' AYU PERMATA SARI.,A.Md', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '199408012022032007', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SRI ANGELA SIALLAGAN, A.Md.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '199611302020122008', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'FERGIE NOVITA WASSAHDAD, A.Md.Ak.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '199601192020122012', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HANI NUR AINI, A.Md.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '198609262023211018', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'BUDYAWAN HERIJANTO, S.E.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '197803152023211004', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HERU BUDIYANTO, S.IP.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'FITRIA NURFAUZIAH, S.E.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, '198603182023212022', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RIA IRAWATI PUSPITASARI, A.Md.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'LUKMAN ILMAN NURHAKIM, S.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ANNISA AYU LESTARI, S.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'OLIVIA WAHYU KUSUMANINGTYAS, S.H.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');
INSERT INTO `anggota_copy1` VALUES (NULL, NULL, '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PUPUT WULANSARI, A.Md.', 'karyawan', NULL, 'Anggota', NULL, NULL, '1');

-- ----------------------------
-- Table structure for anggota_ori
-- ----------------------------
DROP TABLE IF EXISTS `anggota_ori`;
CREATE TABLE `anggota_ori`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'anggota',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `is_active` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `anggota_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anggota_ori
-- ----------------------------
INSERT INTO `anggota_ori` VALUES (1, 'admin', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Admin', 'karyawan', '256.758.2645', 'admin', '2025-04-27 05:39:38', '2025-04-27 05:39:38', '1');

-- ----------------------------
-- Table structure for angsuran
-- ----------------------------
DROP TABLE IF EXISTS `angsuran`;
CREATE TABLE `angsuran`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `anggota_id` int NULL DEFAULT NULL,
  `pinjaman_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `angsuran_ke` int NOT NULL,
  `nominal_angsuran` decimal(20, 2) NOT NULL,
  `total_pinjaman` int NOT NULL,
  `jasa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nominal_jasa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nominal_bayar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_bayar` date NULL DEFAULT NULL,
  `tgl_input` timestamp NULL DEFAULT NULL,
  `status_bayar` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pinjaman_id`(`pinjaman_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of angsuran
-- ----------------------------
INSERT INTO `angsuran` VALUES (1, 10, '1', 1, 500000.00, 5000000, '0.01', '50000', '550000', '2025-05-31', '2025-05-30 20:02:47', '1');
INSERT INTO `angsuran` VALUES (2, 10, '1', 2, 500000.00, 5000000, '0.01', '50000', '550000', '2025-05-31', '2025-05-30 20:02:47', '1');
INSERT INTO `angsuran` VALUES (3, 10, '1', 3, 500000.00, 5000000, '0.01', '50000', '550000', '2025-05-31', '2025-05-30 20:02:47', '1');
INSERT INTO `angsuran` VALUES (4, 10, '1', 4, 500000.00, 5000000, '0.01', '50000', '550000', '2025-05-31', '2025-05-30 20:02:47', '1');
INSERT INTO `angsuran` VALUES (5, 10, '1', 5, 500000.00, 5000000, '0.01', '50000', '550000', '2025-05-31', '2025-05-30 20:02:47', '1');
INSERT INTO `angsuran` VALUES (6, 10, '1', 6, 500000.00, 5000000, '0.01', '50000', '550000', '2025-05-31', '2025-05-30 20:02:47', '1');
INSERT INTO `angsuran` VALUES (7, 10, '1', 7, 500000.00, 5000000, '0.01', '50000', '550000', '2025-05-31', '2025-05-30 20:02:47', '1');
INSERT INTO `angsuran` VALUES (8, 10, '1', 8, 500000.00, 5000000, '0.01', '50000', '550000', '2025-06-01', '2025-05-30 20:02:47', '1');
INSERT INTO `angsuran` VALUES (9, 10, '1', 9, 500000.00, 5000000, '0.01', '50000', '550000', '2025-06-01', '2025-05-30 20:02:47', '1');
INSERT INTO `angsuran` VALUES (10, 10, '1', 10, 500000.00, 5000000, '0.01', '50000', '550000', '2025-06-01', '2025-05-30 20:02:47', '1');
INSERT INTO `angsuran` VALUES (11, 1, '2', 1, 1250000.00, 7500000, '0.01', '75000', '1325000', '2025-05-31', '2025-05-31 14:25:53', '1');
INSERT INTO `angsuran` VALUES (12, 1, '2', 2, 1250000.00, 7500000, '0.01', '75000', '1325000', '2025-05-31', '2025-05-31 14:25:53', '1');
INSERT INTO `angsuran` VALUES (13, 1, '2', 3, 1250000.00, 7500000, '0.01', '75000', '1325000', '2025-05-31', '2025-05-31 14:25:53', '1');
INSERT INTO `angsuran` VALUES (14, 1, '2', 4, 1250000.00, 7500000, '0.01', '75000', '1325000', '2025-06-01', '2025-05-31 14:25:53', '1');
INSERT INTO `angsuran` VALUES (15, 1, '2', 5, 1250000.00, 7500000, '0.01', '75000', '1325000', '2025-06-01', '2025-05-31 14:25:53', '1');
INSERT INTO `angsuran` VALUES (16, 1, '2', 6, 1250000.00, 7500000, '0.01', '75000', '1325000', '2025-06-01', '2025-05-31 14:25:53', '1');
INSERT INTO `angsuran` VALUES (17, 5, '6', 1, 500000.00, 1000000, '0.01', '10000', '510000', '2025-06-01', '2025-06-01 20:44:24', '1');
INSERT INTO `angsuran` VALUES (18, 5, '6', 2, 500000.00, 1000000, '0.01', '10000', '510000', '2025-06-01', '2025-06-01 20:44:24', '1');
INSERT INTO `angsuran` VALUES (19, 1, '7', 1, 500000.00, 1500000, '0', '15000', '500000', '2025-06-02', '2025-06-02 16:20:17', '1');
INSERT INTO `angsuran` VALUES (20, 1, '7', 2, 500000.00, 1500000, '0', '15000', '500000', '2025-06-02', '2025-06-02 16:20:17', '1');
INSERT INTO `angsuran` VALUES (21, 1, '7', 3, 500000.00, 1500000, '0', '15000', '500000', '2025-06-03', '2025-06-02 16:20:17', '1');

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for jasa
-- ----------------------------
DROP TABLE IF EXISTS `jasa`;
CREATE TABLE `jasa`  (
  `jasa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `input_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tgl_update` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jasa
-- ----------------------------
INSERT INTO `jasa` VALUES ('0.01', 'admin', '2025-06-04');

-- ----------------------------
-- Table structure for jenis_pinjaman
-- ----------------------------
DROP TABLE IF EXISTS `jenis_pinjaman`;
CREATE TABLE `jenis_pinjaman`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `jenis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jenis_pinjaman
-- ----------------------------
INSERT INTO `jenis_pinjaman` VALUES (1, 'Gaji');
INSERT INTO `jenis_pinjaman` VALUES (2, 'Remunisasi');
INSERT INTO `jenis_pinjaman` VALUES (3, 'Kasbon');

-- ----------------------------
-- Table structure for jenis_simpanan
-- ----------------------------
DROP TABLE IF EXISTS `jenis_simpanan`;
CREATE TABLE `jenis_simpanan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `jenis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jenis_simpanan
-- ----------------------------
INSERT INTO `jenis_simpanan` VALUES (1, 'Pokok');
INSERT INTO `jenis_simpanan` VALUES (2, 'Wajib');
INSERT INTO `jenis_simpanan` VALUES (3, 'Sukarela');

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cancelled_at` int NULL DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2025_04_27_042557_create_anggota_table', 1);
INSERT INTO `migrations` VALUES (5, '2025_04_27_042853_create_simpanan_table', 1);
INSERT INTO `migrations` VALUES (6, '2025_04_27_043044_create_pinjaman_table', 1);
INSERT INTO `migrations` VALUES (7, '2025_04_27_043258_create_angsuran_table', 1);
INSERT INTO `migrations` VALUES (8, '2025_05_20_211805_create_administrasis_table', 2);
INSERT INTO `migrations` VALUES (9, '2025_05_20_211815_create_provisis_table', 2);
INSERT INTO `migrations` VALUES (10, '2025_05_21_103537_create_jenis_pinjamen_table', 2);
INSERT INTO `migrations` VALUES (11, '2025_05_21_103546_create_jenis_simpanans_table', 2);
INSERT INTO `migrations` VALUES (12, '2025_05_21_205109_create_jasas_table', 2);
INSERT INTO `migrations` VALUES (13, '2025_05_29_195858_create_pengeluarans_table', 3);
INSERT INTO `migrations` VALUES (14, '2025_05_31_064734_create_shu_pembagis_table', 4);
INSERT INTO `migrations` VALUES (15, '2025_05_31_130059_shu_anggota', 5);

-- ----------------------------
-- Table structure for nik
-- ----------------------------
DROP TABLE IF EXISTS `nik`;
CREATE TABLE `nik`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` bigint NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `atasan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nip_atasan` bigint NULL DEFAULT NULL,
  `atasan2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nip_atasan2` bigint NULL DEFAULT NULL,
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` date NULL DEFAULT NULL,
  `status_jabatan` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hp2` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 172 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nik
-- ----------------------------
INSERT INTO `nik` VALUES (1, 'Dr. Hj. DIAH SULASTRI DEWI, S.H., M.H.', 196104021982032003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'WAKIL KETUA', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1982-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (2, 'SYAFARUDDIN, S.H.', 195710191984031002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1984-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (3, 'SUSANTO, S.H.', 195909101984031001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1984-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (4, 'SRI ANDINI, S.H., M.H.', 195908291984032002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1984-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (5, 'BACHTIAR SITOMPUL, S.H. M.H.', 195803271984031002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1984-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (6, 'POLTAK SITORUS, S.H., M.H.', 196005171984031004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1984-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (7, 'ZAHERWAN LESMANA, S.H.', 195808281985031005, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (8, 'MUZAINI ACHMAD, S.H., M.H.', 195711291985031001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (9, 'MOCH MAWARDI, S.H. M.H.', 195811261985031003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (10, 'R MATRAS SUPOMO, S.H., M.H.', 195809121985031004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (11, 'ROBERT SIAHAAN, S.H., M.H.', 195806301985031004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (12, 'PAHATAR SIMARMATA, S.H., M.Hum.', 196012301985031006, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (13, 'Dr. BARITA LUMBAN GAOL, S.H., M.H.', 195812111985031006, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (14, 'RATNA MINTARSIH, S.H., M.H.', 195901251985032003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (15, 'JESAYAS TARIGAN, S.H., M.Hum.', 195805081986011001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1986-01-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (16, 'Hj. JUNILAWATI HARAHAP, S.H., M.H.', 195806101985122001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-12-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (17, 'VICTOR SELAMAT ZAGOTO, S.H., M.Hum.', 195710091986021001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1986-02-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (18, 'DEHEL K. SANDAN, S.H., M.H.', 195901131985121001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-12-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (19, 'Dr. CATUR IRIANTORO, S.H., M.Hum.', 196207221986011002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1986-01-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (20, 'Dr. NUR ASLAM BUSTAMAN, S.H., M.H.', 196012281985122001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-12-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (21, 'IMAN GULTOM, S.H., M.H.', 196003021985121001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-12-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (22, 'MARISI SIREGAR, S.H., M.H.', 195905051985121001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-12-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (23, 'PORMAN SITUMORANG, S.H., M.H.', 196008071985122001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-12-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (24, 'AGUS SUWARGI, S.H.,M.H.', 195708221985121001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-12-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (25, 'SUDARWIN, S.H., M.H.', 196111031988031002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1988-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (26, 'TURSINAH AFTIANTI, S.H., M.H.', 196002171985122001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-12-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (27, 'SUKMAYANTI, S.H., M.H.', 196104171985122001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-12-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (28, 'MULYANTO, S.H., M.H.', 196101051986121001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1986-12-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (29, 'Dr. KRISTWAN GENOVA DAMANIK, S.H., M.HUM.', 195909021986121001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1986-12-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (30, 'BARMEN SINURAT, S.H.', 195711061986121001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1986-12-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (31, 'H BAKTAR JUBRI NASUTION, S.H, M.H.', 195901231986121001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1986-12-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (32, 'MUHAMMAD NUR, S.H., M.H.', 195912291986121001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1986-12-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (33, 'CEPI ISKANDAR, S.H., M.H.', 195912151988031005, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1988-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (34, 'EDISON MUHAMAD, S.H., M.H.', 196203251988031003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1988-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (35, 'SURANTO, S.H.', 19610718198031002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI YUSTISIAL', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1988-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (36, 'Hj. WEDHAYATI, S.H., M.H.', 196303281988032003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1988-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (37, 'KEMAL TAMPUBOLON, S.H., M.H.', 196111111982031013, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM TINGGI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1982-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (38, 'Dr. IHAT SUBIHAT, S.H., M.H.', 1970020602201505016, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM ADHOC TK. BANDING', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2015-05-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (39, 'Hj. LILIK SRIHARTATI, S.H., M.H.', 1957012202201802013, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM ADHOC TK. BANDING', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2018-02-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (40, 'EDY SEPJENGKARIA, S.H., CN., M.H.', 1963090302201602082, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM ADHOC TK. BANDING', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2016-02-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (41, 'Dr. LUFSIANA, S.H., M.H.', 1965112902202201023, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM ADHOC TK. BANDING', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2022-01-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (42, 'HULMAN SIREGAR, Ak, S.H., CFrA, CA.', 1962011002201603113, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM ADHOC TK. BANDING', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2016-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (43, 'HANDOKO KRISTIYOSO, S.H. MBL., M.Hum.', 196012251988031003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM YUSTISIAL', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1988-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (44, 'TITI MARIA ROMLAH, S.H.', 196202071988032002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM YUSTISIAL', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1988-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (45, 'PRANOTO, S.H.', 196204181988031003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM YUSTISIAL', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1988-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (46, 'Dr. GUNAWAN, S.H., M.H.', 196107181988031002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM YUSTISIAL', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1988-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (47, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1983-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (48, 'UCU JAYA SARJANA SIMATUPANG, S.H.', 196105181992121001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM YUSTISIAL', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1992-12-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (49, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'SEKRETARIS', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1991-03-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (50, 'RIDWAN NURDIN, S.H.', 196810111990031001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA MUDA HUKUM', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1990-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (51, 'SUGIHARTO, S.H., M.H.', 196409051985021001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-02-01', NULL, NULL);
INSERT INTO `nik` VALUES (52, 'H. MARDONO, S.H., M.H.', 196211091983031008, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA MUDA PIDANA', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1983-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (53, 'SAFRIDA ERWANI DAULAY, S.H., M.H.', 196207161983032002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1983-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (54, 'ROSMALINDA, S.H., M.H.', 196806261993032005, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1993-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (55, 'Hj. TRI MULYANI, S.H., M.H.', 196512061985022001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-02-01', NULL, NULL);
INSERT INTO `nik` VALUES (56, 'SUSILO NANDANG BAGIO, S.H., M.H.', 196607151992031022, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA MUDA TIPIKOR', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1992-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (57, 'ENANG SUPARMAN, S.H., M.H.', 196807091994031004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1994-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (58, 'BAMBANG SUGIANTO, S.H., M.H.', 196305031983031005, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1983-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (59, 'DEDE PARJAMAN.,S.H', 196209301990031003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1990-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (60, 'ERNA ROSMAWATI, S.H., M.H.', 196405301989032004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1989-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (61, 'ENDANG SUMARNO, S.H.', 196403161985031005, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (62, 'GATOT HADI PURWONO, S.H., M.H.', 196507171987031003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1987-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (63, 'SRI YUDITIANI, S.H.', 196406031989032002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1989-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (64, 'JAFRI, S.H., M.H.', 196505051991031005, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1991-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (65, 'HERMANSYAH.,S.H', 196403231993031003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1993-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (66, 'KRISNA SOFIADI, S.H.', 196503141986031003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1986-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (67, 'NINA YAYU MAESAROH, S.H., M.H.', 197012232006042002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, '197012232006042002/NINA_YAYU_MAESAROH,_S_H_,_M_H_2.jpg', '2006-04-01', NULL, NULL);
INSERT INTO `nik` VALUES (68, 'YETI NINGSIH, S.H., M.H.', 196309281983032003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1983-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (69, 'HENDRO CATUR SUCAHYO, S.H., M.H.', 196709031993031005, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1993-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (70, 'ERNIWATI, S.H., M.H.', 197709122002122003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2002-12-01', NULL, NULL);
INSERT INTO `nik` VALUES (71, 'DANI ADHIA WARDANA, S.T.', 197707292005021002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KEPALA BAGIAN UMUM DAN KEUANGAN', 'admin', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2005-02-01', NULL, NULL);
INSERT INTO `nik` VALUES (72, 'UMMI HANI, S.Sos.', 197512302006042001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KEPALA BAGIAN PERENCANAAN DAN KEPEGAWAIAN', 'admin', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2006-04-01', NULL, NULL);
INSERT INTO `nik` VALUES (73, 'H. NANANG PRIATNA, S.H.', 196210101992031007, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA MUDA PERDATA', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1992-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (74, 'JONO YULIANTO, S.H.', 196407241985031005, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (75, 'BAMBANG BELARDAYA, S.H.', 196508141998031004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1998-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (76, 'YANA HEDIYANA, S.H.', 196605291993031007, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1993-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (77, 'SAIFUL ASNURI, S.H.', 196607131990031004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1990-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (78, 'ASEP GUNAWAN, S.H.', 197202071994031003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1994-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (79, 'NURDIANA, S.H.', 196503011985012001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1985-01-01', NULL, NULL);
INSERT INTO `nik` VALUES (80, 'H. KAIRUL FASJA, S.H.', 196709052001121002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2001-12-01', NULL, NULL);
INSERT INTO `nik` VALUES (81, 'YANI SOFYAN, S.H.', 196501141994031001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1994-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (82, 'SRI SURATNO WIBOWO, S.T.', 197303062006041002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KEPALA SUB BAGIAN TATA USAHA DAN RUMAH TANGGA', 'admin', 'x', NULL, NULL, 'DANI ADHIA WARDANA, S.T. ', 197707292005021002, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2006-04-01', NULL, NULL);
INSERT INTO `nik` VALUES (83, 'ARY FARIDAH, S.Si., M.M.', 197611092006042005, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KEPALA SUB BAGIAN KEUANGAN DAN PELAPORAN', 'admin', 'x', NULL, NULL, 'DANI ADHIA WARDANA, S.T. ', 197707292005021002, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2006-04-01', NULL, NULL);
INSERT INTO `nik` VALUES (84, 'ANTON SENJAYA, S.Kom., SH.', 198102222006041005, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KLEREK - ANALIS PERKARA PERADILAN', 'admin', 'x', NULL, NULL, 'RIDWAN NURDIN, S.H.', 196810111990031001, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2006-04-01', NULL, NULL);
INSERT INTO `nik` VALUES (85, 'SRI SUBEKTI TRIANA, S.H.', 196309121983012001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'validator', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1983-01-01', NULL, NULL);
INSERT INTO `nik` VALUES (86, 'FITRI KRISTIANTI, S.E., Ak.', 198306262006042004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'OPERATOR - PENATA LAYANAN OPERASIONAL', 'admin', 'x', NULL, NULL, 'ARY FARIDAH, S.Si., M.M.', 197611092006042005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2006-04-01', NULL, NULL);
INSERT INTO `nik` VALUES (87, 'HENDAYANI, S.H.', 196808091993032004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PANITERA PENGGANTI', 'admin', 'x', NULL, NULL, 'Drs. DJAMALUDDIN DAENG NGEMBA, S.H, M.Hum.', 196302221983031003, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1993-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (88, 'RIO LERY PUTRA MAMONTO, S.H.', 198602122009041004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM NON PALU', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2009-04-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (89, 'NINIK KUNCAYANI, S.H.', 197902132000122002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KLEREK - PENATA KEPROTOKOLAN', 'admin', 'x', NULL, NULL, 'SRI SURATNO WIBOWO, S.T.', 197303062006041002, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2000-12-01', NULL, NULL);
INSERT INTO `nik` VALUES (90, 'ALJUNALLIADI, S.E., S.H., M.M.', 198109012009041003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'ANALIS PENGELOLAAN KEUANGAN APBN AHLI MUDA', 'admin', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2009-04-01', NULL, NULL);
INSERT INTO `nik` VALUES (91, 'ELNA HELNIARIKA, S.Kom., M.Kom.', 198309062009042005, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KEPALA SUB BAGIAN KEPEGAWAIAN DAN TEKNOLOGI INFORMASI', 'validatorNonKPN', 'x', NULL, NULL, 'UMMI HANI, S.Sos.', 197512302006042001, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, '198309062009042005/Screenshot_2024-08-13_221009.png', '2009-04-01', NULL, NULL);
INSERT INTO `nik` VALUES (92, 'GALIH SAMSURIZAL, S.Kom.', 198410092009041003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KLEREK - ANALIS PERKARA PERADILAN', 'admin', 'x', NULL, NULL, 'H. NANANG PRIATNA, S.H.', 196210101992031007, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2009-04-01', NULL, NULL);
INSERT INTO `nik` VALUES (93, 'APRIYANI ADI UTAMI, S.E.', 198304112009122004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'OPERATOR - PENATA LAYANAN OPERASIONAL', 'admin', 'x', NULL, NULL, 'ARY FARIDAH, S.Si., M.M.', 197611092006042005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2009-12-01', NULL, NULL);
INSERT INTO `nik` VALUES (94, 'NURHAFINA NOVIANA, S.E.', 198311162009122003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PRANATA KEUANGAN APBN PENYELIA', 'admin', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2009-12-01', NULL, NULL);
INSERT INTO `nik` VALUES (95, 'SIDIK NUGRAHA, S.Kom.', 198604102009121002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KEPALA SUB BAGIAN RENCANA PROGRAM DAN ANGGARAN', 'admin', 'x', NULL, NULL, 'UMMI HANI, S.Sos.', 197512302006042001, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2009-12-01', NULL, NULL);
INSERT INTO `nik` VALUES (96, 'TOMMY FEBRIANSYAH PUTRA, S.H., M.H.', 198502272011011012, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'HAKIM NON PALU', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2011-01-01', 'KPN', NULL);
INSERT INTO `nik` VALUES (97, 'INU NURHIDAYAT, S.Pd., S.H.', 198211232009121001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KLEREK - ANALIS PERKARA PERADILAN', 'admin', 'x', NULL, NULL, 'H. NANANG PRIATNA, S.H.', 196210101992031007, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2009-12-01', NULL, NULL);
INSERT INTO `nik` VALUES (98, 'HERA CAPRINA PERMATASARI, S.I.Kom., S.H.', 198501152015032001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KLEREK - ANALIS PERKARA PERADILAN', 'admin', 'x', NULL, NULL, 'H. MARDONO, S.H., M.H.', 196211091983031008, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2015-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (99, 'YOGI ISKANDAR PAMUNGKAS PUTRA, S.H.', 198903222015031001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KLEREK - ANALIS PERKARA PERADILAN', 'admin', 'x', NULL, NULL, 'SUSILO NANDANG BAGIO, S.H., M.H.', 196607151992031022, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2015-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (100, 'R O M L I, S.H.', 197606052001121003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KLEREK - ANALIS PERKARA PERADILAN', 'admin', 'x', NULL, NULL, 'H. MARDONO, S.H., M.H.', 196211091983031008, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2001-12-01', NULL, NULL);
INSERT INTO `nik` VALUES (101, 'LIES HENDRAWANI', 196902021994032004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KLEREK - PENGADMINISTRASI PERKANTORAN', 'admin', 'x', NULL, NULL, 'H. NANANG PRIATNA, S.H.', 196210101992031007, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1994-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (102, 'LISNA INDRAWATI', 197206151994032003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KLEREK - PENGADMINISTRASI PERKANTORAN', 'admin', 'x', NULL, NULL, 'RIDWAN NURDIN, S.H.', 196810111990031001, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1994-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (103, 'JUJU SUTRISNA', 196606121993031005, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KLEREK - PENGADMINISTRASI PERKANTORAN', 'admin', 'x', NULL, NULL, 'SRI SURATNO WIBOWO, S.T.', 197303062006041002, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '1993-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (104, 'TIA ADISTIAN PASHA, S.T.', 198405272011011012, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PRANATA KOMPUTER AHLI PERTAMA', 'admin', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2011-01-01', NULL, NULL);
INSERT INTO `nik` VALUES (105, 'ANDRIE MAERI RUSBAYANA, A.Md.', 197905162009041004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PRANATA KEUANGAN APBN MAHIR', 'admin', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2009-04-01', NULL, NULL);
INSERT INTO `nik` VALUES (106, 'NURUL YULIA DWI ASTUTI, S.I.Kom.', 198207092011012009, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PUSTAKAWAN AHLI PERTAMA', 'admin', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2011-01-01', NULL, NULL);
INSERT INTO `nik` VALUES (107, 'NISA WANGSITA, S.Psi.', 199202152019032012, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'OPERATOR - PENATA LAYANAN OPERASIONAL', 'admin', 'x', NULL, NULL, 'ELNA HELNIARIKA, S.Kom., M.Kom.', 198309062009042005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2019-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (108, 'YUNI CLARA, S.H.', 199506022019032009, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KLEREK - ANALIS PERKARA PERADILAN', 'admin', 'x', NULL, NULL, 'H. NANANG PRIATNA, S.H.', 196210101992031007, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2019-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (109, 'MARTINA MAGDALENA BARASA, S.T.', 199009172019032008, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KLEREK - PENELAAH TEKNIS KEBIJAKAN', 'admin', 'x', NULL, NULL, 'SIDIK NUGRAHA, S.Kom.', 198604102009121002, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2019-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (110, 'ZENI PUTERI SIMANGUNSONG, S.Ak.', 199504202020122003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'OPERATOR - PENATA LAYANAN OPERASIONAL', 'admin', 'x', NULL, NULL, 'ARY FARIDAH, S.Si., M.M.', 197611092006042005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2020-12-01', NULL, NULL);
INSERT INTO `nik` VALUES (111, 'DEVIRA WIENA PRAMINTYA, S.Kom.', 199512152020122014, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PRANATA KOMPUTER AHLI PERTAMA', 'admin', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2020-12-01', NULL, NULL);
INSERT INTO `nik` VALUES (112, 'AYU PERMATA SARI.,A.Md', 198807162015032002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KLEREK - PENGOLAH DATA DAN INFORMASI', 'admin', 'x', NULL, NULL, 'ELNA HELNIARIKA, S.Kom., M.Kom.', 198309062009042005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2015-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (113, 'AGUS PURWANTO, A.Md.', 198508272020121002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'OPERATIR - TEKNISI SARANA DAN PRASARANA', 'admin', 'x', NULL, NULL, 'ELNA HELNIARIKA, S.Kom., M.Kom.', 198309062009042005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2020-12-01', NULL, NULL);
INSERT INTO `nik` VALUES (114, 'INDRA RIZKY FIRMANSYAH, A.Md.T.', 199108202020121003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'OPERATOR - TEKNISI SARANA DAN PRASRANA', 'admin', 'x', NULL, NULL, 'ELNA HELNIARIKA, S.Kom., M.Kom.', 198309062009042005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2020-12-01', NULL, NULL);
INSERT INTO `nik` VALUES (115, 'RESTI APRILIA, A.Md.', 199604232020122012, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KLEREK - PENGELOLA PENANGANAN PERKARA', 'admin', 'x', NULL, NULL, 'H. NANANG PRIATNA, S.H.', 196210101992031007, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2020-12-01', NULL, NULL);
INSERT INTO `nik` VALUES (116, 'FERGIE NOVITA WASSAHDAD, A.Md.Ak.', 199611302020122008, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KLEREK - PENGOLAH DATA DAN INFORMASI', 'admin', 'x', NULL, NULL, 'SRI SURATNO WIBOWO, S.T.', 197303062006041002, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2020-12-01', NULL, NULL);
INSERT INTO `nik` VALUES (117, 'HANI NUR AINI, A.Md.', 199601192020122012, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'ARSIPARIS TERAMPIL', 'admin', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2020-12-01', NULL, NULL);
INSERT INTO `nik` VALUES (118, 'SAEPULOH', 197504032007011002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KLEREK - PENGADMINISTRASI PERKANTORAN', 'admin', 'x', NULL, NULL, 'SRI SURATNO WIBOWO, S.T.', 197303062006041002, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2007-01-01', NULL, NULL);
INSERT INTO `nik` VALUES (119, 'SRI ANGELA SIALLAGAN, A.Md.', 199408012022032007, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KLEREK - PENGELOLA PENANGANAN PERKARA', 'admin', 'x', NULL, NULL, 'H. MARDONO, S.H., M.H.', 196211091983031008, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2022-03-01', NULL, NULL);
INSERT INTO `nik` VALUES (120, 'BUDYAWAN HERIJANTO, S.E.', 198609262023211018, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PPPK - ARSIPARIS AHLI PERTAMA', 'admin', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2023-09-01', NULL, NULL);
INSERT INTO `nik` VALUES (121, 'HERU BUDIYANTO, S.IP.', 197803152023211004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PPPK - PERENCANA AHLI PERTAMA', 'admin', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2023-09-01', NULL, NULL);
INSERT INTO `nik` VALUES (122, 'FITRIA NUR FAUZIAH, S.E.', 198606122023212052, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PPPK - PENGELOLA PENGADAAN BARANG/JASA AHLI PERTAMA', 'admin', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2023-12-01', NULL, NULL);
INSERT INTO `nik` VALUES (123, 'RIA IRAWATI PUSPITASARI, A.Md.', 198603182023212022, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'PPPK - ARSIPARIS TERAMPIL', 'admin', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', '2023-09-01', NULL, NULL);
INSERT INTO `nik` VALUES (124, 'MOCH YULI HADI, S.H., M.H.', 196807281992121001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI BEKASI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (125, 'WAHYU IMAN SANTOSO, S.H., M.H.', 197602171999031004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI BANDUING', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (126, 'KHOIRUMAN PANDU KESUMA HARAHAP, S.H, M.H.', 97508161999031003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI TASIKMALAYA', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (127, 'H. RIDWAN, S.H., M.H.', 196907061996031002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI DEPOK', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (128, 'RENDRA YOZAR DHARMA PUTRA, S.H., M.H.', 197012081996031004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI BALE BANDUNG', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (129, 'ACHMAD UKAYAT, S.H., M.H.', 196711231996031001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI SUMBER', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (130, 'Dr. IMAN LUQMANUL HAKIM, S.H., M.Hum.', 197505032000121003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI BOGOR', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (131, 'SUGENG SUDRAJAT, S.H., M.H.', 197408301999031005, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI CIBINONG', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (132, 'DEDE HALIM, S.H., M.H.', 197512112001121001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI CIBADAK', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (133, 'ROSNAINAH, S.H., M.H.', 197708292001122003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI CIAMIS', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (134, 'HIMELDA SIDABALOK, S.H., M.H.', 197609282001122002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI SUKABUMI', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (135, 'DARMA INDO DAMANIK, S.H., M.Kn.', 197703152001121002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI PURWAKARTA', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (136, 'HERA POLOSIA DESTINY, SH., MH', 197902192001122002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI SUMEDANG', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (137, 'AHMAD SHUHEL NADJIR, S.H., M.H', 197807302003121003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI KARAWANG', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (138, 'Dr. ANDI JULIA CAKRAWALA, S.T., S.H., M.T., M.H.', 197407052009121001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI CIREBON', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (139, 'Dr. INDAH WASTUKENCANA WULAN, S.H., M.H.', 197707022002122004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI SUBANG', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (140, 'SINTA GABERIA PASARIBU, S.H., M.H.', 197709302001122002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI GARUT', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (141, 'RUDITA SETYA HERMAWAN, S.H., M.H.', 197806172001121002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI CIANJUR', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (142, 'YOGI DULHADI, SH., MH.', 197912142002121001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI INDRAMAYU', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (143, 'NATALINE SETYOWATI, S.H., M.H.', 197812192003122001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI MAJALENGKA', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (144, 'ARDHIANTI PRIHASTUTI, S.H., M.H.', 198005212002122002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI KUNINGAN', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (145, 'HERMAN SIREGAR, S.H., M.H.', 198110052006041003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI BANJAR', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (146, 'HENDRI AGUSTIAN, S.H, M.Hum.', 197508012005021001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI CIKARANG', 'admin', 'x', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'default.jpg', NULL, 'KPN', NULL);
INSERT INTO `nik` VALUES (147, 'CECEP SURAHMAN', 3273132206740006, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'Pramubakti', 'user', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (148, 'TENDI KOSTAMAN, S.H.', 3204460808870006, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'Pramubakti', 'user', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (149, 'DEDI LUSIYANA', 3205092011840001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'Satpam', 'pemeriksa', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (150, 'DEDI IRAWAN', 3204371005780018, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'Satpam', 'pemeriksa', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (151, 'DADANG ANWAR', 3273230811780004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'Satpam', 'pemeriksa', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (152, 'EDDY EFFENDI', 3273221809700003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'Sopir', 'user', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (153, 'NANTA SUWARNA', 3204060712710004, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'Satpam', 'pemeriksa', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (154, 'HERI SUPRIYADI', 3204121611780003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'Pramubakti', 'user', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (155, 'SAIFUL FAUZI SOBARI, S.H.', 3273050912890008, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'Pramubakti', 'user', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (156, 'AHMAD SOLIHIN, S.H.', 3273262412940001, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'Sopir', 'user', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (157, 'HEDI', 3273212104840002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'Sopir', 'user', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (158, 'WINA YUSTI DAMAYANTI, S.I.Kom', 3204067005860002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'Pramubakti', 'user', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (159, 'WIDA AMELIA, S.IP.,S.H.', 3204174705840009, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'Pramubakti', 'user', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (160, 'FATHIA FARAHNASH, S.E.', 3204096311960002, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'Pramubakti', 'user', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (161, 'IWAN SETIAWAN', 3273050212790005, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'Pramubakti', 'user', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (162, 'RIDZKI ANDIYONO PUTRO, S.Ak.', 3273213006940003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'Pramubakti', 'user', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (163, 'AGHNIA RUSYDA, A.Md', 3273096203990003, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'Pramubakti', 'user', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (164, 'M. SAEFUL', 3307012007920007, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'Pramubakti', 'user', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (166, 'Dewi Indriani', 55555, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA PENGADILAN NEGERI CIKARANG', 'admin', 'x', NULL, NULL, 'Hj. YEFNI DELFITRI, S.H., M.H.', 196407031991032005, NULL, NULL, 'default.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (167, 'Deliyus Akbar', 4444, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'KETUA', 'admin', 'x', NULL, NULL, 'akbar2', 4444, 'deliyus', 4444, '4444/1719642151_f4efcaa1faa4170dacd7.jpg', NULL, NULL, NULL);
INSERT INTO `nik` VALUES (171, 'Deliyus 2', 1111, '$2y$10$kg4JcwpBn3hNLTeUytCQy.TayEFGoA/OyvqKAJa7zbwjcX3mSD5s.', 'KEPALA SUB BAGIAN KEPEGAWAIAN DAN TEKNOLOGI INFORMASI', 'admin2', '123', NULL, NULL, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, 'Deliyus Akbar', 4444, 'default.jpg', '2024-09-12', '', '123');
INSERT INTO `nik` VALUES (172, 'Dr. MOH. EKA KARTIKA E.M., S.H., M.Hum.', 195811101984031005, '$2y$10$1ThsdhCide5BceLkQEzYjO4wYkXQMDYP9b/XXDXU9zI3ktPX/FIzi', 'DIREKTUR JENDERAL BADAN PERADILAN UMUM', 'admin2', 'x', NULL, NULL, 'H. BAMBANG MYANTO, S.H., M.H.', 196805231992121002, 'H. BAMBANG MYANTO, S.H., M.H.', 196805231992121002, 'default.jpg', '1984-03-01', 'KPN', '8116648894');

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for pengeluaran
-- ----------------------------
DROP TABLE IF EXISTS `pengeluaran`;
CREATE TABLE `pengeluaran`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `jenis_pengeluaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate_pengeluaran` decimal(14, 3) NOT NULL,
  `tgl_input` date NOT NULL,
  `input_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengeluaran
-- ----------------------------
INSERT INTO `pengeluaran` VALUES (9, 'Dana Sosial', 0.020, '2025-06-01', 'Admin', NULL);
INSERT INTO `pengeluaran` VALUES (10, 'Biaya Rapat', 0.040, '2025-06-01', 'Admin', NULL);
INSERT INTO `pengeluaran` VALUES (11, 'Zakat', 0.025, '2025-06-01', 'Admin', NULL);
INSERT INTO `pengeluaran` VALUES (13, 'Cadangan', 0.050, '2025-06-04', 'Admin', NULL);

-- ----------------------------
-- Table structure for pinjaman
-- ----------------------------
DROP TABLE IF EXISTS `pinjaman`;
CREATE TABLE `pinjaman`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `anggota_id` bigint UNSIGNED NOT NULL,
  `nominal_pinjaman` decimal(20, 2) NOT NULL,
  `jenis_pinjaman` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `jml_angsuran` int NOT NULL,
  `input_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(20, 4) NULL DEFAULT NULL,
  `provisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `tgl_input` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pinjaman
-- ----------------------------
INSERT INTO `pinjaman` VALUES (1, 10, 5000000.00, 'Kasbon', '2025-05-30', 10, '195901231986121001', 0.0150, '75000', NULL, '2025-05-30 20:02:47', 'Diterima Ketua');
INSERT INTO `pinjaman` VALUES (2, 1, 7500000.00, 'Remunisasi', '2025-05-31', 6, 'admin', 0.0150, '112500', NULL, '2025-05-31 14:25:53', 'Diterima Ketua');
INSERT INTO `pinjaman` VALUES (6, 5, 1000000.00, 'Kasbon', '2025-06-01', 2, 'admin', 0.0150, '15000', NULL, '2025-06-01 20:44:24', 'Diterima Ketua');
INSERT INTO `pinjaman` VALUES (7, 1, 1500000.00, 'Remunisasi', '2025-05-31', 3, 'admin', 0.0150, '22500', NULL, '2025-06-01 20:45:48', 'Diterima Ketua');

-- ----------------------------
-- Table structure for provisi
-- ----------------------------
DROP TABLE IF EXISTS `provisi`;
CREATE TABLE `provisi`  (
  `provisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `input_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tgl_update` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of provisi
-- ----------------------------
INSERT INTO `provisi` VALUES ('0.015', 'admin', '2025-06-04');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id`) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('4oKAHsHWbJwXYHTAMVMkRPo9zVN4gw9BAcsWYMe3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2tyQkU1bmJsN2JMVmZxdkw1Rm1rOHhlSmdXYnVORE05WTRlSm1wZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1748974140);
INSERT INTO `sessions` VALUES ('BCYImINEatGcDcDJossjXmbHear7jcWbbfXk2Bxu', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRENLMGdxTmswRm51djZJeG5qQ1JweXZ5OFZYQkFoWmo5M2pmRHhrRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zaW1wYW5hbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1749012810);
INSERT INTO `sessions` VALUES ('LBHzkDdFeWuNgZfqN73UQkenRMdcaDIkyUDJwoYF', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiblJiMDJwUUVXUFY5OWx4UjJXSE1MNWpHcXFPc2RnYkd5Rm9zSXBLcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jb250cm9scGFuZWwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1748978059);

-- ----------------------------
-- Table structure for shu_anggota
-- ----------------------------
DROP TABLE IF EXISTS `shu_anggota`;
CREATE TABLE `shu_anggota`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `anggota_id` bigint UNSIGNED NOT NULL,
  `total_simpanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pengkalisimpanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `shu_simpanan` decimal(15, 2) NULL DEFAULT 0.00,
  `total_pinjaman` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pengkalipinjaman` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `shu_pinjaman` decimal(15, 2) NULL DEFAULT 0.00,
  `shuper1000` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `total_shu` decimal(15, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `shu_anggota_anggota_id_index`(`anggota_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shu_anggota
-- ----------------------------
INSERT INTO `shu_anggota` VALUES (1, 46, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (2, 56, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (3, 79, '250000', '6.8466097399306', 1711.65, '0', '10.269914609896', 0.00, '1.7116524349826', 1711.65);
INSERT INTO `shu_anggota` VALUES (4, 61, '350000', '6.8466097399306', 2396.31, '0', '10.269914609896', 0.00, '1.7116524349826', 2396.31);
INSERT INTO `shu_anggota` VALUES (5, 77, '1150000', '6.8466097399306', 7873.60, '0', '10.269914609896', 0.00, '1.7116524349826', 7873.60);
INSERT INTO `shu_anggota` VALUES (6, 24, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (7, 59, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (8, 54, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (9, 31, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (10, 10, '150000', '6.8466097399306', 1026.99, '5000000.00', '10.269914609896', 51349.57, '1.7116524349826', 52376.56);
INSERT INTO `shu_anggota` VALUES (11, 75, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (12, 16, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (13, 38, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (14, 8, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (15, 30, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (16, 43, '2150000', '6.8466097399306', 14720.21, '0', '10.269914609896', 0.00, '1.7116524349826', 14720.21);
INSERT INTO `shu_anggota` VALUES (17, 2, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (18, 47, '500000', '6.8466097399306', 3423.30, '0', '10.269914609896', 0.00, '1.7116524349826', 3423.30);
INSERT INTO `shu_anggota` VALUES (19, 3, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (20, 42, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (21, 69, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (22, 55, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (23, 53, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (24, 57, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (25, 66, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (26, 4, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (27, 37, '5150000', '6.8466097399306', 35260.04, '0', '10.269914609896', 0.00, '1.7116524349826', 35260.04);
INSERT INTO `shu_anggota` VALUES (28, 65, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (29, 34, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (30, 7, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (31, 58, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (32, 11, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (33, 49, '4800000', '6.8466097399306', 32863.73, '0', '10.269914609896', 0.00, '1.7116524349826', 32863.73);
INSERT INTO `shu_anggota` VALUES (34, 33, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (35, 21, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (36, 26, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (37, 27, '2150000', '6.8466097399306', 14720.21, '0', '10.269914609896', 0.00, '1.7116524349826', 14720.21);
INSERT INTO `shu_anggota` VALUES (38, 64, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (39, 9, '10150000', '6.8466097399306', 69493.09, '0', '10.269914609896', 0.00, '1.7116524349826', 69493.09);
INSERT INTO `shu_anggota` VALUES (40, 73, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (41, 25, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (42, 63, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (43, 28, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (44, 44, '2650000', '6.8466097399306', 18143.52, '0', '10.269914609896', 0.00, '1.7116524349826', 18143.52);
INSERT INTO `shu_anggota` VALUES (45, 45, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (46, 13, '2650000', '6.8466097399306', 18143.52, '0', '10.269914609896', 0.00, '1.7116524349826', 18143.52);
INSERT INTO `shu_anggota` VALUES (47, 6, '2650000', '6.8466097399306', 18143.52, '0', '10.269914609896', 0.00, '1.7116524349826', 18143.52);
INSERT INTO `shu_anggota` VALUES (48, 41, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (49, 71, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (50, 62, '1150000', '6.8466097399306', 7873.60, '0', '10.269914609896', 0.00, '1.7116524349826', 7873.60);
INSERT INTO `shu_anggota` VALUES (51, 35, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (52, 22, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (53, 17, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (54, 20, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (55, 15, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (56, 23, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (57, 67, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (58, 18, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (59, 52, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (60, 48, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (61, 72, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (62, 78, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (63, 51, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (64, 19, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (65, 60, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (66, 14, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (67, 39, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (68, 70, '1150000', '6.8466097399306', 7873.60, '0', '10.269914609896', 0.00, '1.7116524349826', 7873.60);
INSERT INTO `shu_anggota` VALUES (69, 50, '1150000', '6.8466097399306', 7873.60, '0', '10.269914609896', 0.00, '1.7116524349826', 7873.60);
INSERT INTO `shu_anggota` VALUES (70, 40, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (71, 5, '150000', '6.8466097399306', 1026.99, '1000000.00', '10.269914609896', 10269.91, '1.7116524349826', 11296.91);
INSERT INTO `shu_anggota` VALUES (72, 76, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (73, 29, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (74, 32, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (75, 74, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (76, 68, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (77, 36, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (78, 82, '100000', '6.8466097399306', 684.66, '0', '10.269914609896', 0.00, '1.7116524349826', 684.66);
INSERT INTO `shu_anggota` VALUES (79, 103, '1100000', '6.8466097399306', 7531.27, '0', '10.269914609896', 0.00, '1.7116524349826', 7531.27);
INSERT INTO `shu_anggota` VALUES (80, 87, '150000', '6.8466097399306', 1026.99, '0', '10.269914609896', 0.00, '1.7116524349826', 1026.99);
INSERT INTO `shu_anggota` VALUES (81, 84, '200000', '6.8466097399306', 1369.32, '0', '10.269914609896', 0.00, '1.7116524349826', 1369.32);
INSERT INTO `shu_anggota` VALUES (82, 83, '500000', '6.8466097399306', 3423.30, '0', '10.269914609896', 0.00, '1.7116524349826', 3423.30);
INSERT INTO `shu_anggota` VALUES (83, 107, '500000', '6.8466097399306', 3423.30, '0', '10.269914609896', 0.00, '1.7116524349826', 3423.30);
INSERT INTO `shu_anggota` VALUES (84, 98, '1000000', '6.8466097399306', 6846.61, '0', '10.269914609896', 0.00, '1.7116524349826', 6846.61);
INSERT INTO `shu_anggota` VALUES (85, 1, '29188000', '6.8466097399306', 199838.85, '9000000.00', '10.269914609896', 92429.23, '1.7116524349826', 292268.08);

-- ----------------------------
-- Table structure for simpanan
-- ----------------------------
DROP TABLE IF EXISTS `simpanan`;
CREATE TABLE `simpanan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `anggota_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `jenis_simpanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nominal_simpanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `input_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tgl_update` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `nama`(`nama`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of simpanan
-- ----------------------------
INSERT INTO `simpanan` VALUES (1, '46', ' Hj. JUNILAWATI HARAHAP, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (2, '56', '	KRISNA SOFIADI, S.H', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (3, '79', 'Anton Senjaya, S.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (4, '61', 'ARLISA YUNITA NELYANA', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (5, '77', 'Ary Faridah, ', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (6, '24', 'ASBAN PANJAITAN, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (7, '59', 'Bambang Belardaya', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (8, '54', 'Bambang Sugianto', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (9, '31', 'BARITA SARAGIH, S.H.L.L.M.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (10, '10', 'CEPI ISKANDAR, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (11, '75', 'Dani Adhia Wardana', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (12, '16', 'Dr. GUNAWAN, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (13, '38', 'Dr. Hj. Nur Aslam Bustaman, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (14, '8', 'Dr. JONLAR PURBA, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (15, '30', 'Dr. KASIANUS TELAUMBANUA, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (16, '43', 'Dr. KRISTWAN GENOVA DAMANIK, S.H., M.HUM.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (17, '2', 'Dr. MOH EKA KARTIKA EM, S.H., M.HUM.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (18, '47', 'Dr. NAISYAH KADIR, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (19, '3', 'Dr. WAYAN KARYA, S.H., M.Hum.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (20, '42', 'EDISON MUHAMAD, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (21, '69', 'ENANG SUPARMAN, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (22, '55', 'ENDANG SUMARNO, S.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (23, '53', 'Erna Rosmawati, S.H., M. H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (24, '57', 'ERNIWATI, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (25, '66', 'GATOT HADI PURWONO, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (26, '4', 'H BAKTAR JUBRI NASUTION, S.H, M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (27, '37', 'H. HANDOKO KRISTIYOSO, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (28, '65', 'Hendayani, SH', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (29, '34', 'HENDRO CATUR SUCAHYO, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (30, '7', 'HERMAN HELLER HUTAPEA, S.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (31, '58', 'Hermansyah', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (32, '11', 'HIRAS SIHOMBING, S.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (33, '49', 'Hj. LILIK SRIHARTATI, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (34, '33', 'Hj. NENENG WARLINAH, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (35, '21', 'Hj. WEDHAYATI, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (36, '26', 'IDA MARION, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (37, '27', 'IMAN GULTOM, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (38, '64', 'JAFRI, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (39, '9', 'JESAYAS TARIGAN, S.H., M.Hum.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (40, '73', 'JONO YULIANTO, S.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (41, '25', 'KEMAL TAMPUBOLON, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (42, '63', 'Khairul Fasja, SH', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (43, '28', 'MADE SUTRISNA, S.H., M.Hum.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (44, '44', 'MARISI SIREGAR, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (45, '45', 'MOCH MAWARDI, SH MH', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (46, '13', 'MUHAMMAD NUR, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (47, '6', 'MULA PANGARIBUAN, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (48, '41', 'MULYANTO, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (49, '71', 'NINA YAYU MAESAROH, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (50, '62', 'Nurdiana, SH', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (51, '35', 'PAHATAR SIMARMATA, S.H., M.Hum.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (52, '22', 'POLTAK SITORUS, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (53, '17', 'PORMAN SITUMORANG, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (54, '20', 'PRANOTO, S.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (55, '15', 'R MATRAS SUPOMO, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (56, '23', 'RATNA MINTARSIH, S.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (57, '67', 'RIDWAN NURDIN, S.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (58, '18', 'ROBERT SIAHAAN, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (59, '52', 'Rosmalinda, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (60, '48', 'SAIFUL ASNURI, S.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (61, '72', 'SRI SUBEKTI TRIANA, S.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (62, '78', 'Sri Suratno Wibowo', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (63, '51', 'Sri Yuditiani, S.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (64, '19', 'SUDARWIN, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (65, '60', 'SUGIHARTO, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (66, '14', 'SUKMAYANTI, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (67, '39', 'SURANTO, S.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (68, '70', 'SUSILO NANDANG BAGIO, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (69, '50', 'Tri Mulyani, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (70, '40', 'TURSINAH AFTIANTI, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (71, '5', 'Ucu Jaya Sarjana S, SH.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (72, '76', 'Ummi Hani, S.Sos', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (73, '29', 'VIKTOR PAKPAHAN, S.H., M.H.MSi.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (74, '32', 'Yana Hediyana', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (75, '74', 'YANI SOFYAN, S.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (76, '68', 'YETI NINGSIH, S.H., M.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (77, '36', 'Zaherwan Lesmana, S.H.', 'Wajib', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (78, '79', 'Anton Senjaya, S.', 'Sukarela', '100000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (79, '82', 'Elna Helniarika, S.Kom', 'Sukarela', '100000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (80, '103', 'Saepuloh', 'Sukarela', '100000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (81, '87', 'Fitri Kristianti, S.E., Ak.', 'Sukarela', '150000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (82, '61', 'ARLISA YUNITA NELYANA', 'Sukarela', '200000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (83, '84', 'Apriyani Adi Utami', 'Sukarela', '200000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (84, '47', 'Dr. NAISYAH KADIR, S.H., M.H.', 'Sukarela', '350000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (85, '83', 'Lies Hendrawani', 'Sukarela', '500000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (86, '107', 'FERGIE NOVITA WASSAHDAD, A.Md.Ak.', 'Sukarela', '500000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (87, '50', 'Tri Mulyani, S.H., M.H.', 'Sukarela', '1000000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (88, '62', 'Nurdiana, SH', 'Sukarela', '1000000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (89, '70', 'SUSILO NANDANG BAGIO, S.H., M.H.', 'Sukarela', '1000000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (90, '77', 'Ary Faridah, ', 'Sukarela', '1000000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (91, '98', 'MARTINA MAGDALENA BARASA, S.T.', 'Sukarela', '1000000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (92, '27', 'IMAN GULTOM, S.H., M.H.', 'Sukarela', '2000000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (93, '43', 'Dr. KRISTWAN GENOVA DAMANIK, S.H., M.HUM.', 'Sukarela', '2000000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (94, '6', 'MULA PANGARIBUAN, S.H., M.H.', 'Sukarela', '2500000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (95, '13', 'MUHAMMAD NUR, S.H., M.H.', 'Sukarela', '2500000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (96, '44', 'MARISI SIREGAR, S.H., M.H.', 'Sukarela', '2500000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (97, '49', 'Hj. LILIK SRIHARTATI, S.H., M.H.', 'Sukarela', '4650000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (98, '37', 'H. HANDOKO KRISTIYOSO, S.H., M.H.', 'Sukarela', '5000000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (99, '9', 'JESAYAS TARIGAN, S.H., M.Hum.', 'Sukarela', '10000000', 'Admin', '2025-05-30 19:05:26');
INSERT INTO `simpanan` VALUES (109, '103', NULL, 'Sukarela', '1000000', '4', '2025-05-30 00:00:00');
INSERT INTO `simpanan` VALUES (110, '1', NULL, 'Wajib', '29188000', '1', '2025-06-01 00:00:00');

-- ----------------------------
-- Table structure for simpanan_ori
-- ----------------------------
DROP TABLE IF EXISTS `simpanan_ori`;
CREATE TABLE `simpanan_ori`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `anggota_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_simpanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal_simpanan` decimal(20, 2) NOT NULL,
  `input_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_update` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of simpanan_ori
-- ----------------------------

-- ----------------------------
-- Table structure for sukarela
-- ----------------------------
DROP TABLE IF EXISTS `sukarela`;
CREATE TABLE `sukarela`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `anggota_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `jenis_simpanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nominal_simpanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `input_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tgl_update` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  INDEX `nama`(`nama`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sukarela
-- ----------------------------
INSERT INTO `sukarela` VALUES (NULL, '79', 'Anton Senjaya, S.', 'Sukarela', '100000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '82', 'Elna Helniarika, S.Kom', 'Sukarela', '100000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '103', 'Saepuloh', 'Sukarela', '100000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '87', 'Fitri Kristianti, S.E., Ak.', 'Sukarela', '150000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '61', 'ARLISA YUNITA NELYANA', 'Sukarela', '200000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '84', 'Apriyani Adi Utami', 'Sukarela', '200000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '47', 'Dr. NAISYAH KADIR, S.H., M.H.', 'Sukarela', '350000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '83', 'Lies Hendrawani', 'Sukarela', '500000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '107', 'FERGIE NOVITA WASSAHDAD, A.Md.Ak.', 'Sukarela', '500000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '50', 'Tri Mulyani, S.H., M.H.', 'Sukarela', '1000000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '62', 'Nurdiana, SH', 'Sukarela', '1000000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '70', 'SUSILO NANDANG BAGIO, S.H., M.H.', 'Sukarela', '1000000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '77', 'Ary Faridah, ', 'Sukarela', '1000000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '98', 'MARTINA MAGDALENA BARASA, S.T.', 'Sukarela', '1000000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '27', 'IMAN GULTOM, S.H., M.H.', 'Sukarela', '2000000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '43', 'Dr. KRISTWAN GENOVA DAMANIK, S.H., M.HUM.', 'Sukarela', '2000000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '6', 'MULA PANGARIBUAN, S.H., M.H.', 'Sukarela', '2500000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '13', 'MUHAMMAD NUR, S.H., M.H.', 'Sukarela', '2500000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '44', 'MARISI SIREGAR, S.H., M.H.', 'Sukarela', '2500000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '49', 'Hj. LILIK SRIHARTATI, S.H., M.H.', 'Sukarela', '4650000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '37', 'H. HANDOKO KRISTIYOSO, S.H., M.H.', 'Sukarela', '5000000', 'Admin', NULL);
INSERT INTO `sukarela` VALUES (NULL, '9', 'JESAYAS TARIGAN, S.H., M.Hum.', 'Sukarela', '10000000', 'Admin', NULL);

-- ----------------------------
-- Table structure for users_
-- ----------------------------
DROP TABLE IF EXISTS `users_`;
CREATE TABLE `users_`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'anggota',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `is_active` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `anggota_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_
-- ----------------------------
INSERT INTO `users_` VALUES (1, 'admin', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'admin', 'karyawan', '256.758.2645', 'admin', '2025-04-27 05:39:38', '2025-04-27 05:39:38', '1');

SET FOREIGN_KEY_CHECKS = 1;
