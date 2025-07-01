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

 Date: 01/07/2025 14:24:13
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
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anggota
-- ----------------------------
INSERT INTO `anggota` VALUES (1, '1', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'NURDIANA, S.H.', 'karyawan', NULL, 'Admin', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (2, '2', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'BAMBANG BELARDAYA, S.H.', 'karyawan', NULL, 'Ketua', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (3, '3', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'H. KAIRUL FASJA, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (4, '4', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HENDAYANI, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (5, '5', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'LIES HENDRAWANI', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (6, '6', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'DANI ADHIA WARDANA, S.T. ', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (7, '7', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SAEPULOH', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (8, '8', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'UMMI HANI, S. Sos.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (9, '9', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ARY FARIDAH, S.Si.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (10, '10', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SRI SURATNO WIBOWO, S.T.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (11, '11', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ANTON SENJAYA, S.Kom., SH. ', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (12, '12', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ALJUNALLIADI, S.E.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (13, '13', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ELNA HELNIARIKA, S.Kom.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (14, '14', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'APRIYANI ADI UTAMI, S.E.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (15, '15', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SIDIK NUGRAHA, S.Kom.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (16, '16', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ANDRIE MAERI RUSBAYANA, A.Md.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (17, '17', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'FITRI KRISTIANTI, S.E., A.k.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (18, '18', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'NURUL YULIA DWI ASTUTI, A.Md.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (19, '19', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HERI SUPRIYADI', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (20, '20', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'LISNA INDRAWATI', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (21, '21', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'NANTA SUWARNA', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (22, '22', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'DEDI IRAWAN', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (23, '23', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'BAMBANG SUGIANTO', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (24, '24', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'WIDA AMELIA', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (25, '25', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'WINA YUSTI', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (26, '26', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'NURHAFINA NOVIANA', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (27, '27', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'EDDY EFFENDI', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (28, '28', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'DADANG ANWAR', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (29, '29', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SAEFUL FAUZI SOBARI, SH.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (30, '30', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YANA HEDIYANA, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (31, '31', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'AHMAD SOLIHIN', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (32, '32', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'UCU JAYA SARJANA SIMATUPANG, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (33, '33', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'TENDI KOSTAMAN', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (34, '34', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'LILIK SRIHARTATI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (35, '35', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'TIA ADISTIAN PASHA', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (36, '36', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'FATHIA FARAHNASH', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (37, '37', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'TRI MULYANI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (38, '38', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ZAHERWAN LESMANA, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (39, '39', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HERA CAPRINA S, S.I.Kom.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (40, '40', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HEDI', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (41, '41', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SRI YUDITIANI, SH.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (42, '42', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'JESAYAS TARIGAN, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (43, '43', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RESTI APRILIA, A.Md.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (44, '44', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'IWAN', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (45, '45', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HERMANSYAH.,S.H', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (46, '46', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', ' R MATRAS SUPOMO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (47, '47', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'NISA WANGSITA, S.Psi.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (48, '48', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'AYU PERMATA SARI, A.Md.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (49, '49', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. GUNAWAN S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (50, '50', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ROBERT SIAHAAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (51, '51', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YOGI ISKANDAR PAMUNGKAS PUTRA, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (52, '52', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ROSMALINDA, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (53, '53', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ERNA ROSMAWATI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (54, '54', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'AGHNIA RUSYDA', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (55, '55', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. Hj. NUR ASLAM BUSTAMAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (56, '56', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SURANTO, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (57, '57', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SRI ANGELA SIALLAGAN, A.Md.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (58, '58', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'M SAEFUL', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (59, '59', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUDARWIN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (60, '60', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MARTINA MAGDALENA BARASA, S.T.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (61, '61', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'INDRA RIZKY FIRMANSYAH, A.Md.T', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (62, '62', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YUNI CLARA, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (63, '63', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PRANOTO, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (64, '64', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ZENI PUTERI SIMANGUNSONG, S.Ak.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (65, '65', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hj. WEDHAYATI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (66, '66', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ENDANG SUMARNO, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (67, '67', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SRI SUBEKTI TRIANA, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (68, '68', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'JONO YULIANTO, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (69, '69', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YANI SOFYAN, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (70, '70', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'POLTAK SITORUS, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (71, '71', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RATNA MINTARSIH, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (72, '72', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'KEMAL TAMPUBOLON, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (73, '73', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'KRISNA SOFIADI, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (74, '74', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'FERGIE NOVITA WASSAHDAD, A.Md.Ak.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (75, '75', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'DEVIRA WIENA PRAMINTYA, S.Kom.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (76, '76', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HERU BUDIYANTO, S.IP.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (77, '77', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HANI NUR AINI, A.Md.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (78, '78', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'BUDYAWAN HERIJANTO, S.E.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (79, '79', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RIA IRAWATI PUSPITASARI, A.Md.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (80, '80', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'CECEP SURACHMAN', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (81, '81', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'IMAN GULTOM, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (82, '82', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PORMAN SITUMORANG, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (83, '83', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'TURSINAH AFTIANTI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (84, '84', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MULYANTO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (85, '85', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'EDISON MUHAMAD, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (86, '86', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. KRISTWAN GENOVA DAMANIK, S.H., M.HUM.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (87, '87', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MARISI SIREGAR, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (88, '88', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MOCH MAWARDI, SH MH', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (89, '89', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'FITRIA NURFAUZIAH, S.E.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (90, '90', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PAHATAR SIMARMATA, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (91, '91', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RIDWAN NURDIN, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (92, '92', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YETI NINGSIH, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (93, '93', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ENANG SUPARMAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (94, '94', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUSILO NANDANG BAGIO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (95, '95', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'NINA YAYU MAESAROH, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (96, '96', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'H. HANDOKO KRISTIYOSO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (97, '97', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'CEPI ISKANDAR, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (98, '98', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MUHAMMAD NUR, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (99, '99', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'H. BAKTAR JUBRI NASUTION, S.H, M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (100, '100', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hj. JUNILAWATI HARAHAP, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (101, '101', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUKMAYANTI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (102, '102', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'LUKMAN ILMAN NURHAKIM, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (103, '103', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ANNISA AYU LESTARI, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (104, '104', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'OLIVIA WAHYU KUSUMANINGTYAS, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (105, '105', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ERNIWATI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (106, '106', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HENDRO CATUR SUCAHYO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (107, '107', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SAIFUL ASNURI, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (108, '108', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUGIHARTO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (109, '109', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'JAFRI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (110, '110', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'GATOT HADI PURWONO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (111, '111', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. MOH EKA KARTIKA EM, S.H., M.HUM.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (112, '112', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HERMAN HELLER HUTAPEA, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (113, '113', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HIRAS SIHOMBING, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (114, '114', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'IDA MARION, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (115, '115', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MADE SUTRISNA, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (116, '116', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'VIKTOR PAKPAHAN, S.H., M.H.MSi.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (117, '117', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. KASIANUS TELAUMBANUA, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (118, '118', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'BARITA SARAGIH, S.H.L.L.M.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (119, '119', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. NAISYAH KADIR, S.H., MH.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (120, '120', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PUPUT WULANSARI, A.Md.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (121, '121', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. WAYAN KARYA, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (122, '122', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MULA PANGARIBUAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (123, '123', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. JONLAR PURBA, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (124, '124', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ARLISA YUNITA NELYANA, S.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (125, '125', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hj. NENENG WARLINAH, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (126, '126', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ASBAN PANJAITAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');
INSERT INTO `anggota` VALUES (127, '127', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'DEDI LUSIYANA', 'karyawan', NULL, 'Anggota', '2025-06-29 19:55:30', '2025-06-29 19:55:30', '1');

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
-- Table structure for anggota_copy2
-- ----------------------------
DROP TABLE IF EXISTS `anggota_copy2`;
CREATE TABLE `anggota_copy2`  (
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
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anggota_copy2
-- ----------------------------
INSERT INTO `anggota_copy2` VALUES (1, '1', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. MOH EKA KARTIKA EM, S.H., M.HUM.', 'karyawan', NULL, 'Admin', '2025-05-30 08:00:00', '2025-04-27 05:39:38.000', '1');
INSERT INTO `anggota_copy2` VALUES (2, '2', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. WAYAN KARYA, S.H., M.Hum.', 'karyawan', NULL, 'Ketua', '2025-05-30 08:00:00', '2025-04-27 05:39:38.001', '1');
INSERT INTO `anggota_copy2` VALUES (3, '3', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'H BAKTAR JUBRI NASUTION, S.H, M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.002', '1');
INSERT INTO `anggota_copy2` VALUES (4, '4', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Ucu Jaya Sarjana S, SH.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.003', '1');
INSERT INTO `anggota_copy2` VALUES (5, '5', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MULA PANGARIBUAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.004', '1');
INSERT INTO `anggota_copy2` VALUES (6, '6', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HERMAN HELLER HUTAPEA, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.005', '1');
INSERT INTO `anggota_copy2` VALUES (7, '7', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. JONLAR PURBA, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.006', '1');
INSERT INTO `anggota_copy2` VALUES (8, '8', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'JESAYAS TARIGAN, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.007', '1');
INSERT INTO `anggota_copy2` VALUES (9, '9', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'CEPI ISKANDAR, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.008', '1');
INSERT INTO `anggota_copy2` VALUES (10, '10', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HIRAS SIHOMBING, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.009', '1');
INSERT INTO `anggota_copy2` VALUES (11, '11', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MUHAMMAD NUR, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.010', '1');
INSERT INTO `anggota_copy2` VALUES (12, '12', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUKMAYANTI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.011', '1');
INSERT INTO `anggota_copy2` VALUES (13, '13', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'R MATRAS SUPOMO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.012', '1');
INSERT INTO `anggota_copy2` VALUES (14, '14', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. GUNAWAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.013', '1');
INSERT INTO `anggota_copy2` VALUES (15, '15', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PORMAN SITUMORANG, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.014', '1');
INSERT INTO `anggota_copy2` VALUES (16, '16', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ROBERT SIAHAAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.015', '1');
INSERT INTO `anggota_copy2` VALUES (17, '17', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUDARWIN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.016', '1');
INSERT INTO `anggota_copy2` VALUES (18, '18', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PRANOTO, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.017', '1');
INSERT INTO `anggota_copy2` VALUES (19, '19', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hj. WEDHAYATI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.018', '1');
INSERT INTO `anggota_copy2` VALUES (20, '20', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'POLTAK SITORUS, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.019', '1');
INSERT INTO `anggota_copy2` VALUES (21, '21', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RATNA MINTARSIH, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.020', '1');
INSERT INTO `anggota_copy2` VALUES (22, '22', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ASBAN PANJAITAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.021', '1');
INSERT INTO `anggota_copy2` VALUES (23, '23', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'KEMAL TAMPUBOLON, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.022', '1');
INSERT INTO `anggota_copy2` VALUES (24, '24', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'IDA MARION, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.023', '1');
INSERT INTO `anggota_copy2` VALUES (25, '25', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'IMAN GULTOM, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.024', '1');
INSERT INTO `anggota_copy2` VALUES (26, '26', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MADE SUTRISNA, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.025', '1');
INSERT INTO `anggota_copy2` VALUES (27, '27', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'VIKTOR PAKPAHAN, S.H., M.H.MSi.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.026', '1');
INSERT INTO `anggota_copy2` VALUES (28, '28', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. KASIANUS TELAUMBANUA, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.027', '1');
INSERT INTO `anggota_copy2` VALUES (29, '29', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'BARITA SARAGIH, S.H.L.L.M.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.028', '1');
INSERT INTO `anggota_copy2` VALUES (30, '30', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Yana Hediyana', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.029', '1');
INSERT INTO `anggota_copy2` VALUES (31, '31', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hj. NENENG WARLINAH, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.030', '1');
INSERT INTO `anggota_copy2` VALUES (32, '32', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HENDRO CATUR SUCAHYO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.031', '1');
INSERT INTO `anggota_copy2` VALUES (33, '33', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PAHATAR SIMARMATA, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.032', '1');
INSERT INTO `anggota_copy2` VALUES (34, '34', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Zaherwan Lesmana, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.033', '1');
INSERT INTO `anggota_copy2` VALUES (35, '35', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'H. HANDOKO KRISTIYOSO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.034', '1');
INSERT INTO `anggota_copy2` VALUES (36, '36', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. Hj. Nur Aslam Bustaman, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.035', '1');
INSERT INTO `anggota_copy2` VALUES (37, '37', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SURANTO, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.036', '1');
INSERT INTO `anggota_copy2` VALUES (38, '38', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'TURSINAH AFTIANTI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.037', '1');
INSERT INTO `anggota_copy2` VALUES (39, '39', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MULYANTO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.038', '1');
INSERT INTO `anggota_copy2` VALUES (40, '40', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'EDISON MUHAMAD, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.039', '1');
INSERT INTO `anggota_copy2` VALUES (41, '41', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. KRISTWAN GENOVA DAMANIK, S.H., M.HUM.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.040', '1');
INSERT INTO `anggota_copy2` VALUES (42, '42', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MARISI SIREGAR, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.041', '1');
INSERT INTO `anggota_copy2` VALUES (43, '43', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MOCH MAWARDI, SH MH', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.042', '1');
INSERT INTO `anggota_copy2` VALUES (44, '44', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', ' Hj. JUNILAWATI HARAHAP, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.043', '1');
INSERT INTO `anggota_copy2` VALUES (45, '45', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. NAISYAH KADIR, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.044', '1');
INSERT INTO `anggota_copy2` VALUES (46, '46', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SAIFUL ASNURI, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.045', '1');
INSERT INTO `anggota_copy2` VALUES (47, '47', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hj. LILIK SRIHARTATI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.046', '1');
INSERT INTO `anggota_copy2` VALUES (48, '48', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Tri Mulyani, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.047', '1');
INSERT INTO `anggota_copy2` VALUES (49, '49', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Sri Yuditiani, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.048', '1');
INSERT INTO `anggota_copy2` VALUES (50, '50', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Rosmalinda, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.049', '1');
INSERT INTO `anggota_copy2` VALUES (51, '51', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Erna Rosmawati, S.H., M. H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.050', '1');
INSERT INTO `anggota_copy2` VALUES (52, '52', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Bambang Sugianto', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.051', '1');
INSERT INTO `anggota_copy2` VALUES (53, '53', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ENDANG SUMARNO, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.052', '1');
INSERT INTO `anggota_copy2` VALUES (54, '54', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', '	KRISNA SOFIADI, S.H', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.053', '1');
INSERT INTO `anggota_copy2` VALUES (55, '55', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ERNIWATI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.054', '1');
INSERT INTO `anggota_copy2` VALUES (56, '56', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hermansyah', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.055', '1');
INSERT INTO `anggota_copy2` VALUES (57, '57', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Bambang Belardaya', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.056', '1');
INSERT INTO `anggota_copy2` VALUES (58, '58', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUGIHARTO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.057', '1');
INSERT INTO `anggota_copy2` VALUES (59, '59', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ARLISA YUNITA NELYANA', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.058', '1');
INSERT INTO `anggota_copy2` VALUES (60, '60', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Nurdiana, SH', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.059', '1');
INSERT INTO `anggota_copy2` VALUES (61, '61', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Khairul Fasja, SH', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.060', '1');
INSERT INTO `anggota_copy2` VALUES (62, '62', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'JAFRI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.061', '1');
INSERT INTO `anggota_copy2` VALUES (63, '63', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hendayani, SH', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.062', '1');
INSERT INTO `anggota_copy2` VALUES (64, '64', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'GATOT HADI PURWONO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.063', '1');
INSERT INTO `anggota_copy2` VALUES (65, '65', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RIDWAN NURDIN, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.064', '1');
INSERT INTO `anggota_copy2` VALUES (66, '66', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YETI NINGSIH, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.065', '1');
INSERT INTO `anggota_copy2` VALUES (67, '67', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ENANG SUPARMAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.066', '1');
INSERT INTO `anggota_copy2` VALUES (68, '68', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUSILO NANDANG BAGIO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.067', '1');
INSERT INTO `anggota_copy2` VALUES (69, '69', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'NINA YAYU MAESAROH, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.068', '1');
INSERT INTO `anggota_copy2` VALUES (70, '70', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SRI SUBEKTI TRIANA, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.069', '1');
INSERT INTO `anggota_copy2` VALUES (71, '71', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'JONO YULIANTO, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.070', '1');
INSERT INTO `anggota_copy2` VALUES (72, '72', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YANI SOFYAN, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.071', '1');
INSERT INTO `anggota_copy2` VALUES (73, '73', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dani Adhia Wardana', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.072', '1');
INSERT INTO `anggota_copy2` VALUES (74, '74', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Ummi Hani, S.Sos', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.073', '1');
INSERT INTO `anggota_copy2` VALUES (75, '75', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Ary Faridah, ', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.074', '1');
INSERT INTO `anggota_copy2` VALUES (76, '76', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Sri Suratno Wibowo', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.075', '1');
INSERT INTO `anggota_copy2` VALUES (77, '77', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Anton Senjaya, S.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.076', '1');
INSERT INTO `anggota_copy2` VALUES (78, '78', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Aljunalliadi, SE', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.077', '1');
INSERT INTO `anggota_copy2` VALUES (79, '79', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Elna Helniarika, S.Kom', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.078', '1');
INSERT INTO `anggota_copy2` VALUES (80, '80', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Lies Hendrawani', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.079', '1');
INSERT INTO `anggota_copy2` VALUES (81, '81', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Apriyani Adi Utami', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.080', '1');
INSERT INTO `anggota_copy2` VALUES (82, '82', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Lisna Indrawati', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.081', '1');
INSERT INTO `anggota_copy2` VALUES (83, '83', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Sidik Nugraha', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.082', '1');
INSERT INTO `anggota_copy2` VALUES (84, '84', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Fitri Kristianti, S.E., Ak.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.083', '1');
INSERT INTO `anggota_copy2` VALUES (85, '85', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Nurhafina N', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.084', '1');
INSERT INTO `anggota_copy2` VALUES (86, '86', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Nurul Yulia', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.085', '1');
INSERT INTO `anggota_copy2` VALUES (87, '87', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Andrie Maeri', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.086', '1');
INSERT INTO `anggota_copy2` VALUES (88, '88', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Tia Adistian Pasha, S.T.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.087', '1');
INSERT INTO `anggota_copy2` VALUES (89, '89', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hera Caprina, S.I.Kom.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.088', '1');
INSERT INTO `anggota_copy2` VALUES (90, '90', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'NISA WANGSITA, S.Psi.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.089', '1');
INSERT INTO `anggota_copy2` VALUES (91, '91', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YOGI ISKANDAR PAMUNGKAS PUTRA, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.090', '1');
INSERT INTO `anggota_copy2` VALUES (92, '92', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MARTINA MAGDALENA BARASA, S.T.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.091', '1');
INSERT INTO `anggota_copy2` VALUES (93, '93', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YUNI CLARA, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.092', '1');
INSERT INTO `anggota_copy2` VALUES (94, '94', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ZENI PUTERI SIMANGUNSONG, S.Ak.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.093', '1');
INSERT INTO `anggota_copy2` VALUES (95, '95', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'DEVIRA WIENA PRAMINTYA, S.Kom.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.094', '1');
INSERT INTO `anggota_copy2` VALUES (96, '96', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'INDRA RIZKY FIRMANSYAH, A.Md.T.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.095', '1');
INSERT INTO `anggota_copy2` VALUES (97, '97', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Saepuloh', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.096', '1');
INSERT INTO `anggota_copy2` VALUES (98, '98', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RESTI APRILIA, A.Md.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.097', '1');
INSERT INTO `anggota_copy2` VALUES (99, '99', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', ' AYU PERMATA SARI.,A.Md', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.098', '1');
INSERT INTO `anggota_copy2` VALUES (100, '100', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SRI ANGELA SIALLAGAN, A.Md.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.099', '1');
INSERT INTO `anggota_copy2` VALUES (101, '101', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'FERGIE NOVITA WASSAHDAD, A.Md.Ak.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.100', '1');
INSERT INTO `anggota_copy2` VALUES (102, '102', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HANI NUR AINI, A.Md.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.101', '1');
INSERT INTO `anggota_copy2` VALUES (103, '103', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'BUDYAWAN HERIJANTO, S.E.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.102', '1');
INSERT INTO `anggota_copy2` VALUES (104, '104', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HERU BUDIYANTO, S.IP.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.103', '1');
INSERT INTO `anggota_copy2` VALUES (105, '105', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'FITRIA NURFAUZIAH, S.E.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.104', '1');
INSERT INTO `anggota_copy2` VALUES (106, '106', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RIA IRAWATI PUSPITASARI, A.Md.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.105', '1');
INSERT INTO `anggota_copy2` VALUES (107, '107', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'LUKMAN ILMAN NURHAKIM, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.106', '1');
INSERT INTO `anggota_copy2` VALUES (108, '108', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ANNISA AYU LESTARI, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.107', '1');
INSERT INTO `anggota_copy2` VALUES (109, '109', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'OLIVIA WAHYU KUSUMANINGTYAS, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.108', '1');
INSERT INTO `anggota_copy2` VALUES (110, '110', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PUPUT WULANSARI, A.Md.', 'karyawan', NULL, 'Anggota', '2025-05-30 08:00:00', '2025-04-27 05:39:38.109', '1');

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
-- Table structure for anggota_x
-- ----------------------------
DROP TABLE IF EXISTS `anggota_x`;
CREATE TABLE `anggota_x`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `no_hp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_active` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anggota_x
-- ----------------------------
INSERT INTO `anggota_x` VALUES ('1', '1', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. MOH EKA KARTIKA EM, S.H., M.HUM.', 'karyawan', NULL, 'Admin', '2025-05-30 19:06:47', '2025-04-27 05:39:38.000', '1');
INSERT INTO `anggota_x` VALUES ('2', '2', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. WAYAN KARYA, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:48', '2025-04-27 05:39:38.001', '1');
INSERT INTO `anggota_x` VALUES ('3', '3', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'H BAKTAR JUBRI NASUTION, S.H, M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:49', '2025-04-27 05:39:38.002', '1');
INSERT INTO `anggota_x` VALUES ('4', '4', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Ucu Jaya Sarjana S, SH.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:50', '2025-04-27 05:39:38.003', '1');
INSERT INTO `anggota_x` VALUES ('5', '5', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MULA PANGARIBUAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:51', '2025-04-27 05:39:38.004', '1');
INSERT INTO `anggota_x` VALUES ('6', '6', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HERMAN HELLER HUTAPEA, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:52', '2025-04-27 05:39:38.005', '1');
INSERT INTO `anggota_x` VALUES ('7', '7', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. JONLAR PURBA, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:53', '2025-04-27 05:39:38.006', '1');
INSERT INTO `anggota_x` VALUES ('8', '8', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'JESAYAS TARIGAN, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:54', '2025-04-27 05:39:38.007', '1');
INSERT INTO `anggota_x` VALUES ('9', '9', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'CEPI ISKANDAR, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:55', '2025-04-27 05:39:38.008', '1');
INSERT INTO `anggota_x` VALUES ('10', '10', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HIRAS SIHOMBING, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:56', '2025-04-27 05:39:38.009', '1');
INSERT INTO `anggota_x` VALUES ('11', '11', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MUHAMMAD NUR, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:57', '2025-04-27 05:39:38.010', '1');
INSERT INTO `anggota_x` VALUES ('12', '12', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUKMAYANTI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:58', '2025-04-27 05:39:38.011', '1');
INSERT INTO `anggota_x` VALUES ('13', '13', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'R MATRAS SUPOMO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:59', '2025-04-27 05:39:38.012', '1');
INSERT INTO `anggota_x` VALUES ('14', '14', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. GUNAWAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:60', '2025-04-27 05:39:38.013', '1');
INSERT INTO `anggota_x` VALUES ('15', '15', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PORMAN SITUMORANG, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:61', '2025-04-27 05:39:38.014', '1');
INSERT INTO `anggota_x` VALUES ('16', '16', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ROBERT SIAHAAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:62', '2025-04-27 05:39:38.015', '1');
INSERT INTO `anggota_x` VALUES ('17', '17', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUDARWIN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:63', '2025-04-27 05:39:38.016', '1');
INSERT INTO `anggota_x` VALUES ('18', '18', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PRANOTO, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:64', '2025-04-27 05:39:38.017', '1');
INSERT INTO `anggota_x` VALUES ('19', '19', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hj. WEDHAYATI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:65', '2025-04-27 05:39:38.018', '1');
INSERT INTO `anggota_x` VALUES ('20', '20', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'POLTAK SITORUS, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:66', '2025-04-27 05:39:38.019', '1');
INSERT INTO `anggota_x` VALUES ('21', '21', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RATNA MINTARSIH, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:67', '2025-04-27 05:39:38.020', '1');
INSERT INTO `anggota_x` VALUES ('22', '22', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ASBAN PANJAITAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:68', '2025-04-27 05:39:38.021', '1');
INSERT INTO `anggota_x` VALUES ('23', '23', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'KEMAL TAMPUBOLON, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:69', '2025-04-27 05:39:38.022', '1');
INSERT INTO `anggota_x` VALUES ('24', '24', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'IDA MARION, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:70', '2025-04-27 05:39:38.023', '1');
INSERT INTO `anggota_x` VALUES ('25', '25', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'IMAN GULTOM, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:71', '2025-04-27 05:39:38.024', '1');
INSERT INTO `anggota_x` VALUES ('26', '26', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MADE SUTRISNA, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:72', '2025-04-27 05:39:38.025', '1');
INSERT INTO `anggota_x` VALUES ('27', '27', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'VIKTOR PAKPAHAN, S.H., M.H.MSi.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:73', '2025-04-27 05:39:38.026', '1');
INSERT INTO `anggota_x` VALUES ('28', '28', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. KASIANUS TELAUMBANUA, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:74', '2025-04-27 05:39:38.027', '1');
INSERT INTO `anggota_x` VALUES ('29', '29', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'BARITA SARAGIH, S.H.L.L.M.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:75', '2025-04-27 05:39:38.028', '1');
INSERT INTO `anggota_x` VALUES ('30', '30', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Yana Hediyana', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:76', '2025-04-27 05:39:38.029', '1');
INSERT INTO `anggota_x` VALUES ('31', '31', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hj. NENENG WARLINAH, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:77', '2025-04-27 05:39:38.030', '1');
INSERT INTO `anggota_x` VALUES ('32', '32', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HENDRO CATUR SUCAHYO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:78', '2025-04-27 05:39:38.031', '1');
INSERT INTO `anggota_x` VALUES ('33', '33', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PAHATAR SIMARMATA, S.H., M.Hum.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:79', '2025-04-27 05:39:38.032', '1');
INSERT INTO `anggota_x` VALUES ('34', '34', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Zaherwan Lesmana, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:80', '2025-04-27 05:39:38.033', '1');
INSERT INTO `anggota_x` VALUES ('35', '35', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'H. HANDOKO KRISTIYOSO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:81', '2025-04-27 05:39:38.034', '1');
INSERT INTO `anggota_x` VALUES ('36', '36', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. Hj. Nur Aslam Bustaman, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:82', '2025-04-27 05:39:38.035', '1');
INSERT INTO `anggota_x` VALUES ('37', '37', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SURANTO, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:83', '2025-04-27 05:39:38.036', '1');
INSERT INTO `anggota_x` VALUES ('38', '38', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'TURSINAH AFTIANTI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:84', '2025-04-27 05:39:38.037', '1');
INSERT INTO `anggota_x` VALUES ('39', '39', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MULYANTO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:85', '2025-04-27 05:39:38.038', '1');
INSERT INTO `anggota_x` VALUES ('40', '40', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'EDISON MUHAMAD, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:86', '2025-04-27 05:39:38.039', '1');
INSERT INTO `anggota_x` VALUES ('41', '41', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. KRISTWAN GENOVA DAMANIK, S.H., M.HUM.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:87', '2025-04-27 05:39:38.040', '1');
INSERT INTO `anggota_x` VALUES ('42', '42', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MARISI SIREGAR, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:88', '2025-04-27 05:39:38.041', '1');
INSERT INTO `anggota_x` VALUES ('43', '43', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MOCH MAWARDI, SH MH', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:89', '2025-04-27 05:39:38.042', '1');
INSERT INTO `anggota_x` VALUES ('44', '44', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', ' Hj. JUNILAWATI HARAHAP, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:90', '2025-04-27 05:39:38.043', '1');
INSERT INTO `anggota_x` VALUES ('45', '45', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dr. NAISYAH KADIR, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:91', '2025-04-27 05:39:38.044', '1');
INSERT INTO `anggota_x` VALUES ('46', '46', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SAIFUL ASNURI, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:92', '2025-04-27 05:39:38.045', '1');
INSERT INTO `anggota_x` VALUES ('47', '47', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hj. LILIK SRIHARTATI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:93', '2025-04-27 05:39:38.046', '1');
INSERT INTO `anggota_x` VALUES ('48', '48', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Tri Mulyani, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:94', '2025-04-27 05:39:38.047', '1');
INSERT INTO `anggota_x` VALUES ('49', '49', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Sri Yuditiani, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:95', '2025-04-27 05:39:38.048', '1');
INSERT INTO `anggota_x` VALUES ('50', '50', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Rosmalinda, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:96', '2025-04-27 05:39:38.049', '1');
INSERT INTO `anggota_x` VALUES ('51', '51', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Erna Rosmawati, S.H., M. H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:97', '2025-04-27 05:39:38.050', '1');
INSERT INTO `anggota_x` VALUES ('52', '52', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Bambang Sugianto', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:98', '2025-04-27 05:39:38.051', '1');
INSERT INTO `anggota_x` VALUES ('53', '53', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ENDANG SUMARNO, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:99', '2025-04-27 05:39:38.052', '1');
INSERT INTO `anggota_x` VALUES ('54', '54', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', '	KRISNA SOFIADI, S.H', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:100', '2025-04-27 05:39:38.053', '1');
INSERT INTO `anggota_x` VALUES ('55', '55', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ERNIWATI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:101', '2025-04-27 05:39:38.054', '1');
INSERT INTO `anggota_x` VALUES ('56', '56', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hermansyah', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:102', '2025-04-27 05:39:38.055', '1');
INSERT INTO `anggota_x` VALUES ('57', '57', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Bambang Belardaya', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:103', '2025-04-27 05:39:38.056', '1');
INSERT INTO `anggota_x` VALUES ('58', '58', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUGIHARTO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:104', '2025-04-27 05:39:38.057', '1');
INSERT INTO `anggota_x` VALUES ('59', '59', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ARLISA YUNITA NELYANA', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:105', '2025-04-27 05:39:38.058', '1');
INSERT INTO `anggota_x` VALUES ('60', '60', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Nurdiana, SH', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:106', '2025-04-27 05:39:38.059', '1');
INSERT INTO `anggota_x` VALUES ('61', '61', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Khairul Fasja, SH', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:107', '2025-04-27 05:39:38.060', '1');
INSERT INTO `anggota_x` VALUES ('62', '62', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'JAFRI, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:108', '2025-04-27 05:39:38.061', '1');
INSERT INTO `anggota_x` VALUES ('63', '63', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hendayani, SH', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:109', '2025-04-27 05:39:38.062', '1');
INSERT INTO `anggota_x` VALUES ('64', '64', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'GATOT HADI PURWONO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:110', '2025-04-27 05:39:38.063', '1');
INSERT INTO `anggota_x` VALUES ('65', '65', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RIDWAN NURDIN, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:111', '2025-04-27 05:39:38.064', '1');
INSERT INTO `anggota_x` VALUES ('66', '66', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YETI NINGSIH, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:112', '2025-04-27 05:39:38.065', '1');
INSERT INTO `anggota_x` VALUES ('67', '67', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ENANG SUPARMAN, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:113', '2025-04-27 05:39:38.066', '1');
INSERT INTO `anggota_x` VALUES ('68', '68', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SUSILO NANDANG BAGIO, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:114', '2025-04-27 05:39:38.067', '1');
INSERT INTO `anggota_x` VALUES ('69', '69', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'NINA YAYU MAESAROH, S.H., M.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:115', '2025-04-27 05:39:38.068', '1');
INSERT INTO `anggota_x` VALUES ('70', '70', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SRI SUBEKTI TRIANA, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:116', '2025-04-27 05:39:38.069', '1');
INSERT INTO `anggota_x` VALUES ('71', '71', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'JONO YULIANTO, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:117', '2025-04-27 05:39:38.070', '1');
INSERT INTO `anggota_x` VALUES ('72', '72', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YANI SOFYAN, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:118', '2025-04-27 05:39:38.071', '1');
INSERT INTO `anggota_x` VALUES ('73', '73', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Dani Adhia Wardana', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:119', '2025-04-27 05:39:38.072', '1');
INSERT INTO `anggota_x` VALUES ('74', '74', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Ummi Hani, S.Sos', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:120', '2025-04-27 05:39:38.073', '1');
INSERT INTO `anggota_x` VALUES ('75', '75', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Ary Faridah, ', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:121', '2025-04-27 05:39:38.074', '1');
INSERT INTO `anggota_x` VALUES ('76', '76', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Sri Suratno Wibowo', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:122', '2025-04-27 05:39:38.075', '1');
INSERT INTO `anggota_x` VALUES ('77', '77', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Anton Senjaya, S.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:123', '2025-04-27 05:39:38.076', '1');
INSERT INTO `anggota_x` VALUES ('78', '78', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Aljunalliadi, SE', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:124', '2025-04-27 05:39:38.077', '1');
INSERT INTO `anggota_x` VALUES ('79', '79', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Elna Helniarika, S.Kom', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:125', '2025-04-27 05:39:38.078', '1');
INSERT INTO `anggota_x` VALUES ('80', '80', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Lies Hendrawani', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:126', '2025-04-27 05:39:38.079', '1');
INSERT INTO `anggota_x` VALUES ('81', '81', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Apriyani Adi Utami', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:127', '2025-04-27 05:39:38.080', '1');
INSERT INTO `anggota_x` VALUES ('82', '82', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Lisna Indrawati', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:128', '2025-04-27 05:39:38.081', '1');
INSERT INTO `anggota_x` VALUES ('83', '83', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Sidik Nugraha', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:129', '2025-04-27 05:39:38.082', '1');
INSERT INTO `anggota_x` VALUES ('84', '84', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Fitri Kristianti, S.E., Ak.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:130', '2025-04-27 05:39:38.083', '1');
INSERT INTO `anggota_x` VALUES ('85', '85', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Nurhafina N', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:131', '2025-04-27 05:39:38.084', '1');
INSERT INTO `anggota_x` VALUES ('86', '86', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Nurul Yulia', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:132', '2025-04-27 05:39:38.085', '1');
INSERT INTO `anggota_x` VALUES ('87', '87', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Andrie Maeri', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:133', '2025-04-27 05:39:38.086', '1');
INSERT INTO `anggota_x` VALUES ('88', '88', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Tia Adistian Pasha, S.T.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:134', '2025-04-27 05:39:38.087', '1');
INSERT INTO `anggota_x` VALUES ('89', '89', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Hera Caprina, S.I.Kom.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:135', '2025-04-27 05:39:38.088', '1');
INSERT INTO `anggota_x` VALUES ('90', '90', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'NISA WANGSITA, S.Psi.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:136', '2025-04-27 05:39:38.089', '1');
INSERT INTO `anggota_x` VALUES ('91', '91', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YOGI ISKANDAR PAMUNGKAS PUTRA, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:137', '2025-04-27 05:39:38.090', '1');
INSERT INTO `anggota_x` VALUES ('92', '92', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'MARTINA MAGDALENA BARASA, S.T.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:138', '2025-04-27 05:39:38.091', '1');
INSERT INTO `anggota_x` VALUES ('93', '93', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'YUNI CLARA, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:139', '2025-04-27 05:39:38.092', '1');
INSERT INTO `anggota_x` VALUES ('94', '94', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ZENI PUTERI SIMANGUNSONG, S.Ak.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:140', '2025-04-27 05:39:38.093', '1');
INSERT INTO `anggota_x` VALUES ('95', '95', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'DEVIRA WIENA PRAMINTYA, S.Kom.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:141', '2025-04-27 05:39:38.094', '1');
INSERT INTO `anggota_x` VALUES ('96', '96', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'INDRA RIZKY FIRMANSYAH, A.Md.T.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:142', '2025-04-27 05:39:38.095', '1');
INSERT INTO `anggota_x` VALUES ('97', '97', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'Saepuloh', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:143', '2025-04-27 05:39:38.096', '1');
INSERT INTO `anggota_x` VALUES ('98', '98', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RESTI APRILIA, A.Md.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:144', '2025-04-27 05:39:38.097', '1');
INSERT INTO `anggota_x` VALUES ('99', '99', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', ' AYU PERMATA SARI.,A.Md', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:145', '2025-04-27 05:39:38.098', '1');
INSERT INTO `anggota_x` VALUES ('100', '100', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'SRI ANGELA SIALLAGAN, A.Md.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:146', '2025-04-27 05:39:38.099', '1');
INSERT INTO `anggota_x` VALUES ('101', '101', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'FERGIE NOVITA WASSAHDAD, A.Md.Ak.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:147', '2025-04-27 05:39:38.100', '1');
INSERT INTO `anggota_x` VALUES ('102', '102', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HANI NUR AINI, A.Md.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:148', '2025-04-27 05:39:38.101', '1');
INSERT INTO `anggota_x` VALUES ('103', '103', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'BUDYAWAN HERIJANTO, S.E.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:149', '2025-04-27 05:39:38.102', '1');
INSERT INTO `anggota_x` VALUES ('104', '104', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'HERU BUDIYANTO, S.IP.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:150', '2025-04-27 05:39:38.103', '1');
INSERT INTO `anggota_x` VALUES ('105', '105', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'FITRIA NURFAUZIAH, S.E.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:151', '2025-04-27 05:39:38.104', '1');
INSERT INTO `anggota_x` VALUES ('106', '106', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'RIA IRAWATI PUSPITASARI, A.Md.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:152', '2025-04-27 05:39:38.105', '1');
INSERT INTO `anggota_x` VALUES ('107', '107', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'LUKMAN ILMAN NURHAKIM, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:153', '2025-04-27 05:39:38.106', '1');
INSERT INTO `anggota_x` VALUES ('108', '108', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'ANNISA AYU LESTARI, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:154', '2025-04-27 05:39:38.107', '1');
INSERT INTO `anggota_x` VALUES ('109', '109', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'OLIVIA WAHYU KUSUMANINGTYAS, S.H.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:155', '2025-04-27 05:39:38.108', '1');
INSERT INTO `anggota_x` VALUES ('110', '110', '$2y$12$.5lYMzGqfSLZi26VV7CKsO9zHScUKczecjkSyTKZyDA22yviYZmY6', 'PUPUT WULANSARI, A.Md.', 'karyawan', NULL, 'Anggota', '2025-05-30 19:06:156', '2025-04-27 05:39:38.109', '1');

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
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of angsuran
-- ----------------------------
INSERT INTO `angsuran` VALUES (1, 21, '1', 1, 5000000.00, 50000000, '0.01', '500000', '5500000', '2025-06-26', '2025-06-25 20:21:05', '1');
INSERT INTO `angsuran` VALUES (2, 21, '1', 2, 5000000.00, 50000000, '0.01', '500000', '5500000', '2025-06-28', '2025-06-25 20:22:28', '1');
INSERT INTO `angsuran` VALUES (3, 21, '1', 3, 5000000.00, 50000000, '0.01', '500000', '5500000', '2025-06-28', '2025-06-25 20:23:39', '1');
INSERT INTO `angsuran` VALUES (4, 21, '1', 4, 5000000.00, 50000000, '0.01', '500000', '5500000', NULL, '2025-06-25 20:24:19', '0');
INSERT INTO `angsuran` VALUES (5, 21, '1', 5, 5000000.00, 50000000, '0.01', '500000', '5500000', NULL, '2025-06-25 20:25:55', '0');
INSERT INTO `angsuran` VALUES (6, 21, '1', 6, 5000000.00, 50000000, '0.01', '500000', '5500000', NULL, '2025-06-25 20:27:06', '0');
INSERT INTO `angsuran` VALUES (7, 21, '1', 7, 5000000.00, 50000000, '0.01', '500000', '5500000', NULL, '2025-06-25 20:27:33', '0');
INSERT INTO `angsuran` VALUES (8, 21, '1', 8, 5000000.00, 50000000, '0.01', '500000', '5500000', NULL, '2025-06-29 19:16:57', '1');
INSERT INTO `angsuran` VALUES (9, 21, '1', 9, 5000000.00, 50000000, '0.01', '500000', '5500000', NULL, '2025-06-25 20:19:03', '0');
INSERT INTO `angsuran` VALUES (10, 21, '1', 10, 5000000.00, 50000000, '0.01', '500000', '5500000', NULL, '2025-06-25 20:19:03', '0');
INSERT INTO `angsuran` VALUES (11, 45, '2', 1, 5000000.00, 50000000, '0.01', '500000', '5500000', '2025-06-26', '2025-06-25 20:21:05', '1');
INSERT INTO `angsuran` VALUES (12, 45, '2', 2, 5000000.00, 50000000, '0.01', '500000', '5500000', '2025-06-28', '2025-06-25 20:22:28', '1');
INSERT INTO `angsuran` VALUES (13, 45, '2', 3, 5000000.00, 50000000, '0.01', '500000', '5500000', '2025-06-28', '2025-06-25 20:23:39', '1');
INSERT INTO `angsuran` VALUES (14, 45, '2', 4, 5000000.00, 50000000, '0.01', '500000', '5500000', NULL, '2025-06-25 20:24:19', '0');
INSERT INTO `angsuran` VALUES (15, 45, '2', 5, 5000000.00, 50000000, '0.01', '500000', '5500000', NULL, '2025-06-25 20:25:55', '0');
INSERT INTO `angsuran` VALUES (16, 45, '2', 6, 5000000.00, 50000000, '0.01', '500000', '5500000', NULL, '2025-06-25 20:27:06', '0');
INSERT INTO `angsuran` VALUES (17, 45, '2', 7, 5000000.00, 50000000, '0.01', '500000', '5500000', NULL, '2025-06-25 20:27:33', '0');
INSERT INTO `angsuran` VALUES (18, 45, '2', 8, 5000000.00, 50000000, '0.01', '500000', '5500000', NULL, '2025-06-29 19:16:57', '1');
INSERT INTO `angsuran` VALUES (19, 45, '2', 9, 5000000.00, 50000000, '0.01', '500000', '5500000', NULL, '2025-06-25 20:19:37', '0');
INSERT INTO `angsuran` VALUES (20, 45, '2', 10, 5000000.00, 50000000, '0.01', '500000', '5500000', NULL, '2025-06-25 20:19:37', '0');
INSERT INTO `angsuran` VALUES (21, 58, '3', 1, 800000.00, 16000000, '0.01', '120000', '960000', '2025-06-26', '2025-06-25 20:21:05', '1');
INSERT INTO `angsuran` VALUES (22, 58, '3', 2, 800000.00, 16000000, '0.01', '120000', '960000', '2025-06-28', '2025-06-25 20:22:28', '1');
INSERT INTO `angsuran` VALUES (23, 58, '3', 3, 800000.00, 16000000, '0.01', '120000', '960000', '2025-06-28', '2025-06-25 20:23:39', '1');
INSERT INTO `angsuran` VALUES (24, 58, '3', 4, 800000.00, 16000000, '0.01', '120000', '960000', '2025-06-28', '2025-06-25 20:24:19', '1');
INSERT INTO `angsuran` VALUES (25, 58, '3', 5, 800000.00, 16000000, '0.01', '120000', '960000', NULL, '2025-06-25 20:25:55', '0');
INSERT INTO `angsuran` VALUES (26, 58, '3', 6, 800000.00, 16000000, '0.01', '120000', '960000', NULL, '2025-06-25 20:27:06', '0');
INSERT INTO `angsuran` VALUES (27, 58, '3', 7, 800000.00, 16000000, '0.01', '120000', '960000', NULL, '2025-06-25 20:27:33', '0');
INSERT INTO `angsuran` VALUES (28, 58, '3', 8, 800000.00, 16000000, '0.01', '120000', '960000', NULL, '2025-06-29 19:16:57', '1');
INSERT INTO `angsuran` VALUES (29, 58, '3', 9, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:15', '0');
INSERT INTO `angsuran` VALUES (30, 58, '3', 10, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:15', '0');
INSERT INTO `angsuran` VALUES (31, 58, '3', 11, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:15', '0');
INSERT INTO `angsuran` VALUES (32, 58, '3', 12, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:15', '0');
INSERT INTO `angsuran` VALUES (33, 58, '3', 13, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:15', '0');
INSERT INTO `angsuran` VALUES (34, 58, '3', 14, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:15', '0');
INSERT INTO `angsuran` VALUES (35, 58, '3', 15, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:15', '0');
INSERT INTO `angsuran` VALUES (36, 58, '3', 16, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:15', '0');
INSERT INTO `angsuran` VALUES (37, 58, '3', 17, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:15', '0');
INSERT INTO `angsuran` VALUES (38, 58, '3', 18, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:15', '0');
INSERT INTO `angsuran` VALUES (39, 58, '3', 19, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:15', '0');
INSERT INTO `angsuran` VALUES (40, 58, '3', 20, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:15', '0');
INSERT INTO `angsuran` VALUES (41, 57, '4', 1, 800000.00, 16000000, '0.01', '160000', '960000', '2025-06-26', '2025-06-25 20:21:05', '1');
INSERT INTO `angsuran` VALUES (42, 57, '4', 2, 800000.00, 16000000, '0.01', '160000', '960000', '2025-06-28', '2025-06-25 20:22:28', '1');
INSERT INTO `angsuran` VALUES (43, 57, '4', 3, 800000.00, 16000000, '0.01', '160000', '960000', '2025-06-28', '2025-06-25 20:23:39', '1');
INSERT INTO `angsuran` VALUES (44, 57, '4', 4, 800000.00, 16000000, '0.01', '160000', '960000', '2025-06-28', '2025-06-25 20:24:19', '1');
INSERT INTO `angsuran` VALUES (45, 57, '4', 5, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:25:55', '0');
INSERT INTO `angsuran` VALUES (46, 57, '4', 6, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:27:06', '0');
INSERT INTO `angsuran` VALUES (47, 57, '4', 7, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:27:33', '0');
INSERT INTO `angsuran` VALUES (48, 57, '4', 8, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-29 19:16:57', '1');
INSERT INTO `angsuran` VALUES (49, 57, '4', 9, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:41', '0');
INSERT INTO `angsuran` VALUES (50, 57, '4', 10, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:41', '0');
INSERT INTO `angsuran` VALUES (51, 57, '4', 11, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:41', '0');
INSERT INTO `angsuran` VALUES (52, 57, '4', 12, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:41', '0');
INSERT INTO `angsuran` VALUES (53, 57, '4', 13, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:41', '0');
INSERT INTO `angsuran` VALUES (54, 57, '4', 14, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:41', '0');
INSERT INTO `angsuran` VALUES (55, 57, '4', 15, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:41', '0');
INSERT INTO `angsuran` VALUES (56, 57, '4', 16, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:41', '0');
INSERT INTO `angsuran` VALUES (57, 57, '4', 17, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:41', '0');
INSERT INTO `angsuran` VALUES (58, 57, '4', 18, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:41', '0');
INSERT INTO `angsuran` VALUES (59, 57, '4', 19, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:41', '0');
INSERT INTO `angsuran` VALUES (60, 57, '4', 20, 800000.00, 16000000, '0.01', '160000', '960000', NULL, '2025-06-25 20:20:41', '0');
INSERT INTO `angsuran` VALUES (61, 60, '6', 1, 5000000.00, 50000000, '0.01', '500000', '5500000', '2025-06-29', '2025-06-28 20:11:15', '1');
INSERT INTO `angsuran` VALUES (62, 60, '6', 2, 5000000.00, 50000000, '0.01', '500000', '5500000', '2025-06-29', '2025-06-28 20:11:15', '1');
INSERT INTO `angsuran` VALUES (63, 60, '6', 3, 5000000.00, 50000000, '0.01', '500000', '5500000', '2025-06-29', '2025-06-28 20:11:15', '1');
INSERT INTO `angsuran` VALUES (64, 60, '6', 4, 5000000.00, 50000000, '0.01', '500000', '5500000', '2025-06-29', '2025-06-28 20:11:15', '1');
INSERT INTO `angsuran` VALUES (65, 60, '6', 5, 5000000.00, 50000000, '0.01', '500000', '5500000', '2025-06-29', '2025-06-28 20:11:15', '1');
INSERT INTO `angsuran` VALUES (66, 60, '6', 6, 5000000.00, 50000000, '0.01', '500000', '5500000', '2025-06-29', '2025-06-28 20:11:15', '1');
INSERT INTO `angsuran` VALUES (67, 60, '6', 7, 5000000.00, 50000000, '0.01', '500000', '5500000', '2025-06-29', '2025-06-28 20:11:15', '1');
INSERT INTO `angsuran` VALUES (68, 60, '6', 8, 5000000.00, 50000000, '0.01', '500000', '5500000', '2025-06-29', '2025-06-28 20:11:15', '1');
INSERT INTO `angsuran` VALUES (69, 60, '6', 9, 5000000.00, 50000000, '0.01', '500000', '5500000', '2025-06-29', '2025-06-28 20:11:15', '1');
INSERT INTO `angsuran` VALUES (70, 60, '6', 10, 5000000.00, 50000000, '0.01', '500000', '5500000', '2025-06-28', '2025-06-28 20:11:15', '1');
INSERT INTO `angsuran` VALUES (81, 60, '16', 1, 5000000.00, 50000000, NULL, '750000', '5000000', NULL, NULL, '0');
INSERT INTO `angsuran` VALUES (82, 60, '16', 2, 5000000.00, 50000000, NULL, '750000', '5000000', NULL, NULL, '0');
INSERT INTO `angsuran` VALUES (83, 60, '16', 3, 5000000.00, 50000000, NULL, '750000', '5000000', NULL, NULL, '0');
INSERT INTO `angsuran` VALUES (84, 60, '16', 4, 5000000.00, 50000000, NULL, '750000', '5000000', NULL, NULL, '0');
INSERT INTO `angsuran` VALUES (85, 60, '16', 5, 5000000.00, 50000000, NULL, '750000', '5000000', NULL, NULL, '0');
INSERT INTO `angsuran` VALUES (86, 60, '16', 6, 5000000.00, 50000000, NULL, '750000', '5000000', NULL, NULL, '0');
INSERT INTO `angsuran` VALUES (87, 60, '16', 7, 5000000.00, 50000000, NULL, '750000', '5000000', NULL, NULL, '0');
INSERT INTO `angsuran` VALUES (88, 60, '16', 8, 5000000.00, 50000000, NULL, '750000', '5000000', NULL, NULL, '0');
INSERT INTO `angsuran` VALUES (89, 60, '16', 9, 5000000.00, 50000000, NULL, '750000', '5000000', NULL, NULL, '0');
INSERT INTO `angsuran` VALUES (90, 60, '16', 10, 5000000.00, 50000000, NULL, '750000', '5000000', NULL, NULL, '0');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
-- Table structure for p_sim_sukarela
-- ----------------------------
DROP TABLE IF EXISTS `p_sim_sukarela`;
CREATE TABLE `p_sim_sukarela`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `anggota_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `jenis_simpanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nominal_simpanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `input_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tgl_update` datetime NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `nama`(`nama`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 138 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of p_sim_sukarela
-- ----------------------------
INSERT INTO `p_sim_sukarela` VALUES (136, '4', 'Ucu Jaya Sarjana S, SH.', 'Sukarela', '5000000', '4', '2025-06-22 00:00:00', 'Diterima Admin', NULL);
INSERT INTO `p_sim_sukarela` VALUES (137, '1', 'Dr. MOH EKA KARTIKA EM, S.H., M.HUM.', 'Sukarela', '5000000', '1', '2025-06-25 00:00:00', 'Disetujui Ketua', NULL);
INSERT INTO `p_sim_sukarela` VALUES (138, '1', 'Dr. MOH EKA KARTIKA EM, S.H., M.HUM.', 'Sukarela', '150000', '1', '2025-06-25 00:00:00', 'Diterima Admin', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengeluaran
-- ----------------------------
INSERT INTO `pengeluaran` VALUES (9, 'Dana Sosial', 0.020, '2025-06-01', 'Admin', NULL);
INSERT INTO `pengeluaran` VALUES (10, 'Biaya RAT', 0.040, '2025-06-18', 'Admin', NULL);
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
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pinjaman
-- ----------------------------
INSERT INTO `pinjaman` VALUES (1, 21, 50000000.00, 'Gaji', '2025-05-01', 10, '1', 0.0150, '750000', NULL, '2025-06-25 20:19:03', NULL);
INSERT INTO `pinjaman` VALUES (2, 45, 50000000.00, 'Gaji', '2025-06-25', 10, '1', 0.0150, '750000', NULL, '2025-06-25 20:19:37', NULL);
INSERT INTO `pinjaman` VALUES (3, 58, 16000000.00, 'Gaji', '2025-05-01', 20, '1', 0.0150, '240000', NULL, '2025-06-25 20:20:15', NULL);
INSERT INTO `pinjaman` VALUES (4, 57, 16000000.00, 'Gaji', '2025-05-01', 20, '1', 0.0150, '240000', NULL, '2025-06-25 20:20:41', NULL);
INSERT INTO `pinjaman` VALUES (5, 1, 25000000.00, 'Remunisasi', '2025-06-25', 5, '1', 0.0150, '375000', NULL, '2025-06-25 21:50:31', 'Diterima Admin');
INSERT INTO `pinjaman` VALUES (6, 60, 50000000.00, 'Kasbon', '2025-05-01', 10, '1', 0.0150, '750000', NULL, '2025-06-28 20:11:15', NULL);
INSERT INTO `pinjaman` VALUES (16, 60, 50000000.00, 'Kasbon', '2025-06-29', 10, 'Admin', 0.0150, '750000', 'Topup dari pinjaman ID: 6', '2025-06-29 12:31:46', 'Pengajuan');

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
INSERT INTO `provisi` VALUES ('0.015', '1', '2025-06-21');

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
INSERT INTO `sessions` VALUES ('7WlBj5cJuaIapqK8cXp9T944M7WuI0xk9WDZUYcA', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidm5CeUJST25DZWJRbHRtR3V6TzVRZXFsbDVIcDBsWVNOelJmZFIyZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hbmdnb3RhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1751203463);
INSERT INTO `sessions` VALUES ('97kbkjpBZcCMVYk9bdGWjvXhngtjNpD1cLfrSkZk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibmpDTG5wcWw2UlVRYlF0Mk1tVWQ0dDlUMTdJVFdVNWREbmNpRUsyeSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3BpbmphbWFuL3RvcHVwLzYiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751165302);
INSERT INTO `sessions` VALUES ('UynKNvjpg3Hpctmr9UnQnoGmM6B926Xtr2YwMVzc', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWkhLQ0RZUHFyVWNsTlRYNTJSYXlQeXVXQXZieno2UmxJMnZLUHdQaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mb3JtLXVwbG9hZC1zaW1wYW5hbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1751199679);
INSERT INTO `sessions` VALUES ('wBb0yFqYPyS1JsPCn9l8M5T2CCpXkrLRJlIE2VXd', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibWdLa0R5YkxIMWtsRnV1TkVXYko5WjJQalZ4aGJYYjJIdlJTUHNlTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9waW5qYW1hbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1751175138);
INSERT INTO `sessions` VALUES ('YrgnJ72LhmzqghZys8Lz03zxIG6fGmedXFy33uH8', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSjVHanZqT0xXeXAwSERaZkVvYXNIUmdORkVOSGZtRHR1Vzk4bHhWdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9waW5qYW1hbi90b3B1cC82Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1751161466);

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shu_anggota
-- ----------------------------

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
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `nama`(`nama`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 264 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of simpanan
-- ----------------------------
INSERT INTO `simpanan` VALUES (1, '1', 'Dr. MOH EKA KARTIKA EM, S.H., M.HUM.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (2, '2', 'Dr. WAYAN KARYA, S.H., M.Hum.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (3, '3', 'H BAKTAR JUBRI NASUTION, S.H, M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (4, '4', 'Ucu Jaya Sarjana S, SH.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (5, '5', 'MULA PANGARIBUAN, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (6, '5', 'MULA PANGARIBUAN, S.H., M.H.', 'sukarela', '2500000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (7, '6', 'HERMAN HELLER HUTAPEA, S.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (8, '7', 'Dr. JONLAR PURBA, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (9, '8', 'JESAYAS TARIGAN, S.H., M.Hum.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (10, '8', 'JESAYAS TARIGAN, S.H., M.Hum.', 'sukarela', '10000000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (11, '9', 'CEPI ISKANDAR, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (12, '10', 'HIRAS SIHOMBING, S.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (13, '11', 'MUHAMMAD NUR, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (14, '11', 'MUHAMMAD NUR, S.H., M.H.', 'sukarela', '2500000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (15, '12', 'SUKMAYANTI, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (16, '13', 'R MATRAS SUPOMO, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (17, '14', 'Dr. GUNAWAN, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (18, '15', 'PORMAN SITUMORANG, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (19, '16', 'ROBERT SIAHAAN, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (20, '17', 'SUDARWIN, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (21, '18', 'PRANOTO, S.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (22, '19', 'Hj. WEDHAYATI, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (23, '20', 'POLTAK SITORUS, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (24, '21', 'RATNA MINTARSIH, S.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (25, '22', 'ASBAN PANJAITAN, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (26, '23', 'KEMAL TAMPUBOLON, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (27, '24', 'IDA MARION, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (28, '25', 'IMAN GULTOM, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (29, '25', 'IMAN GULTOM, S.H., M.H.', 'sukarela', '2000000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (30, '26', 'MADE SUTRISNA, S.H., M.Hum.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (31, '27', 'VIKTOR PAKPAHAN, S.H., M.H.MSi.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (32, '28', 'Dr. KASIANUS TELAUMBANUA, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (33, '29', 'BARITA SARAGIH, S.H.L.L.M.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (34, '30', 'Yana Hediyana', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (35, '31', 'Hj. NENENG WARLINAH, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (36, '32', 'HENDRO CATUR SUCAHYO, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (37, '33', 'PAHATAR SIMARMATA, S.H., M.Hum.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (38, '34', 'Zaherwan Lesmana, S.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (39, '35', 'H. HANDOKO KRISTIYOSO, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (40, '35', 'H. HANDOKO KRISTIYOSO, S.H., M.H.', 'sukarela', '5000000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (41, '36', 'Dr. Hj. Nur Aslam Bustaman, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (42, '37', 'SURANTO, S.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (43, '38', 'TURSINAH AFTIANTI, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (44, '39', 'MULYANTO, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (45, '40', 'EDISON MUHAMAD, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (46, '41', 'Dr. KRISTWAN GENOVA DAMANIK, S.H., M.HUM.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (47, '41', 'Dr. KRISTWAN GENOVA DAMANIK, S.H., M.HUM.', 'sukarela', '2000000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (48, '42', 'MARISI SIREGAR, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (49, '42', 'MARISI SIREGAR, S.H., M.H.', 'sukarela', '2500000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (50, '43', 'MOCH MAWARDI, SH MH', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (51, '44', 'Hj. JUNILAWATI HARAHAP, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (52, '45', 'Dr. NAISYAH KADIR, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (53, '45', 'Dr. NAISYAH KADIR, S.H., M.H.', 'sukarela', '350000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (54, '46', 'SAIFUL ASNURI, S.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (55, '47', 'Hj. LILIK SRIHARTATI, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (56, '47', 'Hj. LILIK SRIHARTATI, S.H., M.H.', 'sukarela', '4650000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (57, '48', 'Tri Mulyani, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (58, '48', 'Tri Mulyani, S.H., M.H.', 'sukarela', '1000000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (59, '49', 'Sri Yuditiani, S.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (60, '50', 'Rosmalinda, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (61, '51', 'Erna Rosmawati, S.H., M. H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (62, '52', 'Bambang Sugianto', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (63, '53', 'ENDANG SUMARNO, S.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (64, '54', 'KRISNA SOFIADI, S.H', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (65, '55', 'ERNIWATI, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (66, '56', 'Hermansyah', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (67, '57', 'Bambang Belardaya', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (68, '58', 'SUGIHARTO, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (69, '59', 'ARLISA YUNITA NELYANA', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (70, '59', 'ARLISA YUNITA NELYANA', 'sukarela', '200000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (71, '60', 'Nurdiana, SH', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (72, '60', 'Nurdiana, SH', 'sukarela', '1000000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (73, '61', 'Khairul Fasja, SH', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (74, '62', 'JAFRI, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (75, '63', 'Hendayani, SH', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (76, '64', 'GATOT HADI PURWONO, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (77, '65', 'RIDWAN NURDIN, S.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (78, '66', 'YETI NINGSIH, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (79, '67', 'ENANG SUPARMAN, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (80, '68', 'SUSILO NANDANG BAGIO, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (81, '68', 'SUSILO NANDANG BAGIO, S.H., M.H.', 'sukarela', '1000000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (82, '69', 'NINA YAYU MAESAROH, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (83, '70', 'SRI SUBEKTI TRIANA, S.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (84, '71', 'JONO YULIANTO, S.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (85, '72', 'YANI SOFYAN, S.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (86, '73', 'Dani Adhia Wardana', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (87, '74', 'Ummi Hani, S.Sos', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (88, '75', 'Ary Faridah,', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (89, '75', 'Ary Faridah,', 'sukarela', '1000000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (90, '76', 'Sri Suratno Wibowo', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (91, '77', 'Anton Senjaya, S.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (92, '77', 'Anton Senjaya, S.', 'sukarela', '100000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (93, '78', 'Aljunalliadi, SE', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (94, '79', 'Elna Helniarika, S.Kom', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (95, '79', 'Elna Helniarika, S.Kom', 'sukarela', '100000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (96, '80', 'Lies Hendrawani', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (97, '80', 'Lies Hendrawani', 'sukarela', '500000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (98, '81', 'Apriyani Adi Utami', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (99, '81', 'Apriyani Adi Utami', 'sukarela', '200000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (100, '82', 'Lisna Indrawati', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (101, '83', 'Sidik Nugraha', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (102, '84', 'Fitri Kristianti, S.E., Ak.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (103, '84', 'Fitri Kristianti, S.E., Ak.', 'sukarela', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (104, '85', 'Nurhafina N', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (105, '86', 'Nurul Yulia', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (106, '87', 'Andrie Maeri', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (107, '88', 'Tia Adistian Pasha, S.T.', 'wajib', '300000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (108, '89', 'Hera Caprina, S.I.Kom.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (109, '90', 'NISA WANGSITA, S.Psi.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (110, '91', 'YOGI ISKANDAR PAMUNGKAS PUTRA, S.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (111, '92', 'MARTINA MAGDALENA BARASA, S.T.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (112, '92', 'MARTINA MAGDALENA BARASA, S.T.', 'sukarela', '1000000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (113, '93', 'YUNI CLARA, S.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (114, '94', 'ZENI PUTERI SIMANGUNSONG, S.Ak.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (115, '95', 'DEVIRA WIENA PRAMINTYA, S.Kom.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (116, '96', 'INDRA RIZKY FIRMANSYAH, A.Md.T.', 'wajib', '100000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (117, '97', 'Saepuloh', 'wajib', '100000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (118, '97', 'Saepuloh', 'sukarela', '100000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (119, '98', 'RESTI APRILIA, A.Md.', 'wajib', '100000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (120, '99', 'AYU PERMATA SARI.,A.Md', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (121, '100', 'SRI ANGELA SIALLAGAN, A.Md.', 'wajib', '100000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (122, '101', 'FERGIE NOVITA WASSAHDAD, A.Md.Ak.', 'wajib', '100000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (123, '101', 'FERGIE NOVITA WASSAHDAD, A.Md.Ak.', 'sukarela', '500000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (124, '102', 'HANI NUR AINI, A.Md.', 'wajib', '100000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (125, '103', 'BUDYAWAN HERIJANTO, S.E.', 'wajib', '100000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (126, '104', 'HERU BUDIYANTO, S.IP.', 'wajib', '100000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (127, '105', 'FITRIA NURFAUZIAH, S.E.', 'wajib', '100000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (128, '106', 'RIA IRAWATI PUSPITASARI, A.Md.', 'wajib', '100000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (129, '107', 'LUKMAN ILMAN NURHAKIM, S.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (130, '108', 'ANNISA AYU LESTARI, S.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (131, '109', 'OLIVIA WAHYU KUSUMANINGTYAS, S.H.', 'wajib', '150000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (132, '110', 'PUPUT WULANSARI, A.Md.', 'wajib', '100000', 'system', '2025-06-26 18:45:35', NULL, NULL);
INSERT INTO `simpanan` VALUES (133, '1', 'Dr. MOH EKA KARTIKA EM, S.H., M.HUM.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (134, '2', 'Dr. WAYAN KARYA, S.H., M.Hum.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (135, '3', 'H BAKTAR JUBRI NASUTION, S.H, M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (136, '4', 'Ucu Jaya Sarjana S, SH.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (137, '5', 'MULA PANGARIBUAN, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (138, '5', 'MULA PANGARIBUAN, S.H., M.H.', 'sukarela', '2500000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (139, '6', 'HERMAN HELLER HUTAPEA, S.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (140, '7', 'Dr. JONLAR PURBA, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (141, '8', 'JESAYAS TARIGAN, S.H., M.Hum.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (142, '8', 'JESAYAS TARIGAN, S.H., M.Hum.', 'sukarela', '10000000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (143, '9', 'CEPI ISKANDAR, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (144, '10', 'HIRAS SIHOMBING, S.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (145, '11', 'MUHAMMAD NUR, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (146, '11', 'MUHAMMAD NUR, S.H., M.H.', 'sukarela', '2500000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (147, '12', 'SUKMAYANTI, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (148, '13', 'R MATRAS SUPOMO, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (149, '14', 'Dr. GUNAWAN, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (150, '15', 'PORMAN SITUMORANG, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (151, '16', 'ROBERT SIAHAAN, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (152, '17', 'SUDARWIN, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (153, '18', 'PRANOTO, S.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (154, '19', 'Hj. WEDHAYATI, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (155, '20', 'POLTAK SITORUS, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (156, '21', 'RATNA MINTARSIH, S.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (157, '22', 'ASBAN PANJAITAN, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (158, '23', 'KEMAL TAMPUBOLON, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (159, '24', 'IDA MARION, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (160, '25', 'IMAN GULTOM, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (161, '25', 'IMAN GULTOM, S.H., M.H.', 'sukarela', '2000000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (162, '26', 'MADE SUTRISNA, S.H., M.Hum.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (163, '27', 'VIKTOR PAKPAHAN, S.H., M.H.MSi.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (164, '28', 'Dr. KASIANUS TELAUMBANUA, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (165, '29', 'BARITA SARAGIH, S.H.L.L.M.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (166, '30', 'Yana Hediyana', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (167, '31', 'Hj. NENENG WARLINAH, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (168, '32', 'HENDRO CATUR SUCAHYO, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (169, '33', 'PAHATAR SIMARMATA, S.H., M.Hum.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (170, '34', 'Zaherwan Lesmana, S.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (171, '35', 'H. HANDOKO KRISTIYOSO, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (172, '35', 'H. HANDOKO KRISTIYOSO, S.H., M.H.', 'sukarela', '5000000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (173, '36', 'Dr. Hj. Nur Aslam Bustaman, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (174, '37', 'SURANTO, S.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (175, '38', 'TURSINAH AFTIANTI, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (176, '39', 'MULYANTO, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (177, '40', 'EDISON MUHAMAD, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (178, '41', 'Dr. KRISTWAN GENOVA DAMANIK, S.H., M.HUM.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (179, '41', 'Dr. KRISTWAN GENOVA DAMANIK, S.H., M.HUM.', 'sukarela', '2000000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (180, '42', 'MARISI SIREGAR, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (181, '42', 'MARISI SIREGAR, S.H., M.H.', 'sukarela', '2500000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (182, '43', 'MOCH MAWARDI, SH MH', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (183, '44', 'Hj. JUNILAWATI HARAHAP, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (184, '45', 'Dr. NAISYAH KADIR, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (185, '45', 'Dr. NAISYAH KADIR, S.H., M.H.', 'sukarela', '350000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (186, '46', 'SAIFUL ASNURI, S.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (187, '47', 'Hj. LILIK SRIHARTATI, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (188, '47', 'Hj. LILIK SRIHARTATI, S.H., M.H.', 'sukarela', '4650000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (189, '48', 'Tri Mulyani, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (190, '48', 'Tri Mulyani, S.H., M.H.', 'sukarela', '1000000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (191, '49', 'Sri Yuditiani, S.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (192, '50', 'Rosmalinda, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (193, '51', 'Erna Rosmawati, S.H., M. H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (194, '52', 'Bambang Sugianto', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (195, '53', 'ENDANG SUMARNO, S.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (196, '54', 'KRISNA SOFIADI, S.H', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (197, '55', 'ERNIWATI, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (198, '56', 'Hermansyah', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (199, '57', 'Bambang Belardaya', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (200, '58', 'SUGIHARTO, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (201, '59', 'ARLISA YUNITA NELYANA', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (202, '59', 'ARLISA YUNITA NELYANA', 'sukarela', '200000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (203, '60', 'Nurdiana, SH', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (204, '60', 'Nurdiana, SH', 'sukarela', '1000000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (205, '61', 'Khairul Fasja, SH', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (206, '62', 'JAFRI, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (207, '63', 'Hendayani, SH', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (208, '64', 'GATOT HADI PURWONO, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (209, '65', 'RIDWAN NURDIN, S.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (210, '66', 'YETI NINGSIH, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (211, '67', 'ENANG SUPARMAN, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (212, '68', 'SUSILO NANDANG BAGIO, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (213, '68', 'SUSILO NANDANG BAGIO, S.H., M.H.', 'sukarela', '1000000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (214, '69', 'NINA YAYU MAESAROH, S.H., M.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (215, '70', 'SRI SUBEKTI TRIANA, S.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (216, '71', 'JONO YULIANTO, S.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (217, '72', 'YANI SOFYAN, S.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (218, '73', 'Dani Adhia Wardana', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (219, '74', 'Ummi Hani, S.Sos', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (220, '75', 'Ary Faridah,', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (221, '75', 'Ary Faridah,', 'sukarela', '1000000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (222, '76', 'Sri Suratno Wibowo', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (223, '77', 'Anton Senjaya, S.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (224, '77', 'Anton Senjaya, S.', 'sukarela', '100000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (225, '78', 'Aljunalliadi, SE', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (226, '79', 'Elna Helniarika, S.Kom', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (227, '79', 'Elna Helniarika, S.Kom', 'sukarela', '100000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (228, '80', 'Lies Hendrawani', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (229, '80', 'Lies Hendrawani', 'sukarela', '500000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (230, '81', 'Apriyani Adi Utami', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (231, '81', 'Apriyani Adi Utami', 'sukarela', '200000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (232, '82', 'Lisna Indrawati', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (233, '83', 'Sidik Nugraha', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (234, '84', 'Fitri Kristianti, S.E., Ak.', 'wajib', '150000', 'system', '2025-06-29 19:16:57', NULL, NULL);
INSERT INTO `simpanan` VALUES (235, '84', 'Fitri Kristianti, S.E., Ak.', 'sukarela', '150000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (236, '85', 'Nurhafina N', 'wajib', '150000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (237, '86', 'Nurul Yulia', 'wajib', '150000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (238, '87', 'Andrie Maeri', 'wajib', '150000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (239, '88', 'Tia Adistian Pasha, S.T.', 'wajib', '300000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (240, '89', 'Hera Caprina, S.I.Kom.', 'wajib', '150000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (241, '90', 'NISA WANGSITA, S.Psi.', 'wajib', '150000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (242, '91', 'YOGI ISKANDAR PAMUNGKAS PUTRA, S.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (243, '92', 'MARTINA MAGDALENA BARASA, S.T.', 'wajib', '150000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (244, '92', 'MARTINA MAGDALENA BARASA, S.T.', 'sukarela', '1000000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (245, '93', 'YUNI CLARA, S.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (246, '94', 'ZENI PUTERI SIMANGUNSONG, S.Ak.', 'wajib', '150000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (247, '95', 'DEVIRA WIENA PRAMINTYA, S.Kom.', 'wajib', '150000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (248, '96', 'INDRA RIZKY FIRMANSYAH, A.Md.T.', 'wajib', '100000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (249, '97', 'Saepuloh', 'wajib', '100000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (250, '97', 'Saepuloh', 'sukarela', '100000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (251, '98', 'RESTI APRILIA, A.Md.', 'wajib', '100000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (252, '99', 'AYU PERMATA SARI.,A.Md', 'wajib', '150000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (253, '100', 'SRI ANGELA SIALLAGAN, A.Md.', 'wajib', '100000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (254, '101', 'FERGIE NOVITA WASSAHDAD, A.Md.Ak.', 'wajib', '100000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (255, '101', 'FERGIE NOVITA WASSAHDAD, A.Md.Ak.', 'sukarela', '500000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (256, '102', 'HANI NUR AINI, A.Md.', 'wajib', '100000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (257, '103', 'BUDYAWAN HERIJANTO, S.E.', 'wajib', '100000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (258, '104', 'HERU BUDIYANTO, S.IP.', 'wajib', '100000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (259, '105', 'FITRIA NURFAUZIAH, S.E.', 'wajib', '100000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (260, '106', 'RIA IRAWATI PUSPITASARI, A.Md.', 'wajib', '100000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (261, '107', 'LUKMAN ILMAN NURHAKIM, S.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (262, '108', 'ANNISA AYU LESTARI, S.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (263, '109', 'OLIVIA WAHYU KUSUMANINGTYAS, S.H.', 'wajib', '150000', 'system', '2025-06-29 19:16:58', NULL, NULL);
INSERT INTO `simpanan` VALUES (264, '110', 'PUPUT WULANSARI, A.Md.', 'wajib', '100000', 'system', '2025-06-29 19:16:58', NULL, NULL);

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
-- Table structure for tb_anggota
-- ----------------------------
DROP TABLE IF EXISTS `tb_anggota`;
CREATE TABLE `tb_anggota`  (
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_anggota
-- ----------------------------
INSERT INTO `tb_anggota` VALUES ('1', 'NURDIANA, S.H.');
INSERT INTO `tb_anggota` VALUES ('2', 'BAMBANG BELARDAYA, S.H.');
INSERT INTO `tb_anggota` VALUES ('3', 'H. KAIRUL FASJA, S.H.');
INSERT INTO `tb_anggota` VALUES ('4', 'HENDAYANI, S.H.');
INSERT INTO `tb_anggota` VALUES ('5', 'LIES HENDRAWANI');
INSERT INTO `tb_anggota` VALUES ('6', 'DANI ADHIA WARDANA, S.T. ');
INSERT INTO `tb_anggota` VALUES ('7', 'SAEPULOH');
INSERT INTO `tb_anggota` VALUES ('8', 'UMMI HANI, S. Sos.');
INSERT INTO `tb_anggota` VALUES ('9', 'ARY FARIDAH, S.Si.');
INSERT INTO `tb_anggota` VALUES ('10', 'SRI SURATNO WIBOWO, S.T.');
INSERT INTO `tb_anggota` VALUES ('11', 'ANTON SENJAYA, S.Kom., SH. ');
INSERT INTO `tb_anggota` VALUES ('12', 'ALJUNALLIADI, S.E.');
INSERT INTO `tb_anggota` VALUES ('13', 'ELNA HELNIARIKA, S.Kom.');
INSERT INTO `tb_anggota` VALUES ('14', 'APRIYANI ADI UTAMI, S.E.');
INSERT INTO `tb_anggota` VALUES ('15', 'SIDIK NUGRAHA, S.Kom.');
INSERT INTO `tb_anggota` VALUES ('16', 'ANDRIE MAERI RUSBAYANA, A.Md.');
INSERT INTO `tb_anggota` VALUES ('17', 'FITRI KRISTIANTI, S.E., A.k.');
INSERT INTO `tb_anggota` VALUES ('18', 'NURUL YULIA DWI ASTUTI, A.Md.');
INSERT INTO `tb_anggota` VALUES ('19', 'HERI SUPRIYADI');
INSERT INTO `tb_anggota` VALUES ('20', 'LISNA INDRAWATI');
INSERT INTO `tb_anggota` VALUES ('21', 'NANTA SUWARNA');
INSERT INTO `tb_anggota` VALUES ('22', 'DEDI IRAWAN');
INSERT INTO `tb_anggota` VALUES ('23', 'BAMBANG SUGIANTO');
INSERT INTO `tb_anggota` VALUES ('24', 'WIDA AMELIA');
INSERT INTO `tb_anggota` VALUES ('25', 'WINA YUSTI');
INSERT INTO `tb_anggota` VALUES ('26', 'NURHAFINA NOVIANA');
INSERT INTO `tb_anggota` VALUES ('27', 'EDDY EFFENDI');
INSERT INTO `tb_anggota` VALUES ('28', 'DADANG ANWAR');
INSERT INTO `tb_anggota` VALUES ('29', 'SAEFUL FAUZI SOBARI, SH.');
INSERT INTO `tb_anggota` VALUES ('30', 'YANA HEDIYANA, S.H.');
INSERT INTO `tb_anggota` VALUES ('31', 'AHMAD SOLIHIN');
INSERT INTO `tb_anggota` VALUES ('32', 'UCU JAYA SARJANA SIMATUPANG, S.H.');
INSERT INTO `tb_anggota` VALUES ('33', 'TENDI KOSTAMAN');
INSERT INTO `tb_anggota` VALUES ('34', 'LILIK SRIHARTATI, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('35', 'TIA ADISTIAN PASHA');
INSERT INTO `tb_anggota` VALUES ('36', 'FATHIA FARAHNASH');
INSERT INTO `tb_anggota` VALUES ('37', 'TRI MULYANI, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('38', 'ZAHERWAN LESMANA, S.H.');
INSERT INTO `tb_anggota` VALUES ('39', 'HERA CAPRINA S, S.I.Kom.');
INSERT INTO `tb_anggota` VALUES ('40', 'HEDI');
INSERT INTO `tb_anggota` VALUES ('41', 'SRI YUDITIANI, SH.');
INSERT INTO `tb_anggota` VALUES ('42', 'JESAYAS TARIGAN, S.H., M.Hum.');
INSERT INTO `tb_anggota` VALUES ('43', 'RESTI APRILIA, A.Md.');
INSERT INTO `tb_anggota` VALUES ('44', 'IWAN');
INSERT INTO `tb_anggota` VALUES ('45', 'HERMANSYAH.,S.H');
INSERT INTO `tb_anggota` VALUES ('46', ' R MATRAS SUPOMO, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('47', 'NISA WANGSITA, S.Psi.');
INSERT INTO `tb_anggota` VALUES ('48', 'AYU PERMATA SARI, A.Md.');
INSERT INTO `tb_anggota` VALUES ('49', 'Dr. GUNAWAN S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('50', 'ROBERT SIAHAAN, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('51', 'YOGI ISKANDAR PAMUNGKAS PUTRA, S.H.');
INSERT INTO `tb_anggota` VALUES ('52', 'ROSMALINDA, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('53', 'ERNA ROSMAWATI, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('54', 'AGHNIA RUSYDA');
INSERT INTO `tb_anggota` VALUES ('55', 'Dr. Hj. NUR ASLAM BUSTAMAN, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('56', 'SURANTO, S.H.');
INSERT INTO `tb_anggota` VALUES ('57', 'SRI ANGELA SIALLAGAN, A.Md.');
INSERT INTO `tb_anggota` VALUES ('58', 'M SAEFUL');
INSERT INTO `tb_anggota` VALUES ('59', 'SUDARWIN, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('60', 'MARTINA MAGDALENA BARASA, S.T.');
INSERT INTO `tb_anggota` VALUES ('61', 'INDRA RIZKY FIRMANSYAH, A.Md.T');
INSERT INTO `tb_anggota` VALUES ('62', 'YUNI CLARA, S.H.');
INSERT INTO `tb_anggota` VALUES ('63', 'PRANOTO, S.H.');
INSERT INTO `tb_anggota` VALUES ('64', 'ZENI PUTERI SIMANGUNSONG, S.Ak.');
INSERT INTO `tb_anggota` VALUES ('65', 'Hj. WEDHAYATI, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('66', 'ENDANG SUMARNO, S.H.');
INSERT INTO `tb_anggota` VALUES ('67', 'SRI SUBEKTI TRIANA, S.H.');
INSERT INTO `tb_anggota` VALUES ('68', 'JONO YULIANTO, S.H.');
INSERT INTO `tb_anggota` VALUES ('69', 'YANI SOFYAN, S.H.');
INSERT INTO `tb_anggota` VALUES ('70', 'POLTAK SITORUS, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('71', 'RATNA MINTARSIH, S.H.');
INSERT INTO `tb_anggota` VALUES ('72', 'KEMAL TAMPUBOLON, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('73', 'KRISNA SOFIADI, S.H.');
INSERT INTO `tb_anggota` VALUES ('74', 'FERGIE NOVITA WASSAHDAD, A.Md.Ak.');
INSERT INTO `tb_anggota` VALUES ('75', 'DEVIRA WIENA PRAMINTYA, S.Kom.');
INSERT INTO `tb_anggota` VALUES ('76', 'HERU BUDIYANTO, S.IP.');
INSERT INTO `tb_anggota` VALUES ('77', 'HANI NUR AINI, A.Md.');
INSERT INTO `tb_anggota` VALUES ('78', 'BUDYAWAN HERIJANTO, S.E.');
INSERT INTO `tb_anggota` VALUES ('79', 'RIA IRAWATI PUSPITASARI, A.Md.');
INSERT INTO `tb_anggota` VALUES ('80', 'CECEP SURACHMAN');
INSERT INTO `tb_anggota` VALUES ('81', 'IMAN GULTOM, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('82', 'PORMAN SITUMORANG, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('83', 'TURSINAH AFTIANTI, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('84', 'MULYANTO, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('85', 'EDISON MUHAMAD, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('86', 'Dr. KRISTWAN GENOVA DAMANIK, S.H., M.HUM.');
INSERT INTO `tb_anggota` VALUES ('87', 'MARISI SIREGAR, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('88', 'MOCH MAWARDI, SH MH');
INSERT INTO `tb_anggota` VALUES ('89', 'FITRIA NURFAUZIAH, S.E.');
INSERT INTO `tb_anggota` VALUES ('90', 'PAHATAR SIMARMATA, S.H., M.Hum.');
INSERT INTO `tb_anggota` VALUES ('91', 'RIDWAN NURDIN, S.H.');
INSERT INTO `tb_anggota` VALUES ('92', 'YETI NINGSIH, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('93', 'ENANG SUPARMAN, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('94', 'SUSILO NANDANG BAGIO, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('95', 'NINA YAYU MAESAROH, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('96', 'H. HANDOKO KRISTIYOSO, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('97', 'CEPI ISKANDAR, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('98', 'MUHAMMAD NUR, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('99', 'H. BAKTAR JUBRI NASUTION, S.H, M.H.');
INSERT INTO `tb_anggota` VALUES ('100', 'Hj. JUNILAWATI HARAHAP, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('101', 'SUKMAYANTI, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('102', 'LUKMAN ILMAN NURHAKIM, S.H.');
INSERT INTO `tb_anggota` VALUES ('103', 'ANNISA AYU LESTARI, S.H.');
INSERT INTO `tb_anggota` VALUES ('104', 'OLIVIA WAHYU KUSUMANINGTYAS, S.H.');
INSERT INTO `tb_anggota` VALUES ('105', 'ERNIWATI, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('106', 'HENDRO CATUR SUCAHYO, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('107', 'SAIFUL ASNURI, S.H.');
INSERT INTO `tb_anggota` VALUES ('108', 'SUGIHARTO, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('109', 'JAFRI, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('110', 'GATOT HADI PURWONO, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('111', 'Dr. MOH EKA KARTIKA EM, S.H., M.HUM.');
INSERT INTO `tb_anggota` VALUES ('112', 'HERMAN HELLER HUTAPEA, S.H.');
INSERT INTO `tb_anggota` VALUES ('113', 'HIRAS SIHOMBING, S.H.');
INSERT INTO `tb_anggota` VALUES ('114', 'IDA MARION, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('115', 'MADE SUTRISNA, S.H., M.Hum.');
INSERT INTO `tb_anggota` VALUES ('116', 'VIKTOR PAKPAHAN, S.H., M.H.MSi.');
INSERT INTO `tb_anggota` VALUES ('117', 'Dr. KASIANUS TELAUMBANUA, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('118', 'BARITA SARAGIH, S.H.L.L.M.');
INSERT INTO `tb_anggota` VALUES ('119', 'Dr. NAISYAH KADIR, S.H., MH.');
INSERT INTO `tb_anggota` VALUES ('120', 'PUPUT WULANSARI, A.Md.');
INSERT INTO `tb_anggota` VALUES ('121', 'Dr. WAYAN KARYA, S.H., M.Hum.');
INSERT INTO `tb_anggota` VALUES ('122', 'MULA PANGARIBUAN, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('123', 'Dr. JONLAR PURBA, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('124', 'ARLISA YUNITA NELYANA, S.H.');
INSERT INTO `tb_anggota` VALUES ('125', 'Hj. NENENG WARLINAH, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('126', 'ASBAN PANJAITAN, S.H., M.H.');
INSERT INTO `tb_anggota` VALUES ('127', 'DEDI LUSIYANA');

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
