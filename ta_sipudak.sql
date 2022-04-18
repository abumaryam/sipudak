/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : ta_sipudak

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 15/04/2022 21:33:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bentuk_kekerasan
-- ----------------------------
DROP TABLE IF EXISTS `bentuk_kekerasan`;
CREATE TABLE `bentuk_kekerasan`  (
  `id_bentuk_kekerasan` int NOT NULL AUTO_INCREMENT,
  `jenis_kekerasan` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_bentuk_kekerasan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bentuk_kekerasan
-- ----------------------------
INSERT INTO `bentuk_kekerasan` VALUES (1, 'Fisik');
INSERT INTO `bentuk_kekerasan` VALUES (2, 'Penelantaran');
INSERT INTO `bentuk_kekerasan` VALUES (3, 'Seksual');
INSERT INTO `bentuk_kekerasan` VALUES (4, 'Trafficking');
INSERT INTO `bentuk_kekerasan` VALUES (5, 'Psikis');
INSERT INTO `bentuk_kekerasan` VALUES (6, 'Eksploitasi');
INSERT INTO `bentuk_kekerasan` VALUES (7, 'Lainnya');

-- ----------------------------
-- Table structure for data_hitung
-- ----------------------------
DROP TABLE IF EXISTS `data_hitung`;
CREATE TABLE `data_hitung`  (
  `id_t` int NOT NULL AUTO_INCREMENT,
  `id_kecamatan` int NULL DEFAULT NULL,
  `id_titik_hitung` int NULL DEFAULT NULL,
  `Jarak` double NULL DEFAULT NULL,
  PRIMARY KEY (`id_t`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 287 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_hitung
-- ----------------------------
INSERT INTO `data_hitung` VALUES (1, 19, 1, 18145.39);
INSERT INTO `data_hitung` VALUES (2, 11, 1, 13613.72);
INSERT INTO `data_hitung` VALUES (3, 6, 1, 15758.41);
INSERT INTO `data_hitung` VALUES (4, 16, 1, 22240.69);
INSERT INTO `data_hitung` VALUES (5, 1, 1, 1);
INSERT INTO `data_hitung` VALUES (6, 3, 2, 6627.458);
INSERT INTO `data_hitung` VALUES (7, 18, 2, 10289.04);
INSERT INTO `data_hitung` VALUES (8, 10, 2, 19900.06);
INSERT INTO `data_hitung` VALUES (9, 17, 2, 14979.83);
INSERT INTO `data_hitung` VALUES (10, 2, 2, 1);
INSERT INTO `data_hitung` VALUES (11, 2, 3, 6432.708);
INSERT INTO `data_hitung` VALUES (12, 18, 3, 11662.89);
INSERT INTO `data_hitung` VALUES (13, 14, 3, 11721.15);
INSERT INTO `data_hitung` VALUES (14, 5, 3, 11332.33);
INSERT INTO `data_hitung` VALUES (15, 3, 3, 1);
INSERT INTO `data_hitung` VALUES (16, 16, 4, 27439.93);
INSERT INTO `data_hitung` VALUES (17, 19, 4, 31851.64);
INSERT INTO `data_hitung` VALUES (18, 1, 4, 22466.09);
INSERT INTO `data_hitung` VALUES (19, 11, 4, 34630.78);
INSERT INTO `data_hitung` VALUES (20, 4, 4, 1);
INSERT INTO `data_hitung` VALUES (21, 3, 5, 11316.68);
INSERT INTO `data_hitung` VALUES (22, 14, 5, 13198.33);
INSERT INTO `data_hitung` VALUES (23, 8, 5, 8677.881);
INSERT INTO `data_hitung` VALUES (24, 12, 5, 14413.4);
INSERT INTO `data_hitung` VALUES (25, 5, 5, 1);
INSERT INTO `data_hitung` VALUES (26, 1, 6, 15758.41);
INSERT INTO `data_hitung` VALUES (27, 11, 6, 7263.37);
INSERT INTO `data_hitung` VALUES (28, 9, 6, 9536.66);
INSERT INTO `data_hitung` VALUES (29, 19, 6, 19776.19);
INSERT INTO `data_hitung` VALUES (30, 6, 6, 1);
INSERT INTO `data_hitung` VALUES (31, 4, 7, 38726.87);
INSERT INTO `data_hitung` VALUES (32, 1, 7, 32494.76);
INSERT INTO `data_hitung` VALUES (33, 11, 7, 41972.58);
INSERT INTO `data_hitung` VALUES (34, 6, 7, 38181.75);
INSERT INTO `data_hitung` VALUES (35, 7, 7, 1);
INSERT INTO `data_hitung` VALUES (36, 5, 8, 8701.248);
INSERT INTO `data_hitung` VALUES (37, 14, 8, 10946.43);
INSERT INTO `data_hitung` VALUES (38, 12, 8, 9705.283);
INSERT INTO `data_hitung` VALUES (39, 13, 8, 9531.636);
INSERT INTO `data_hitung` VALUES (40, 8, 8, 1);
INSERT INTO `data_hitung` VALUES (41, 6, 9, 9536.66);
INSERT INTO `data_hitung` VALUES (42, 11, 9, 6650.104);
INSERT INTO `data_hitung` VALUES (43, 10, 9, 13179.2);
INSERT INTO `data_hitung` VALUES (44, 19, 9, 14448.87);
INSERT INTO `data_hitung` VALUES (45, 9, 9, 1);
INSERT INTO `data_hitung` VALUES (46, 9, 10, 13179.2);
INSERT INTO `data_hitung` VALUES (47, 18, 10, 10921.49);
INSERT INTO `data_hitung` VALUES (48, 17, 10, 11433.11);
INSERT INTO `data_hitung` VALUES (49, 14, 10, 17740.55);
INSERT INTO `data_hitung` VALUES (50, 10, 10, 1);
INSERT INTO `data_hitung` VALUES (51, 9, 11, 6946.561);
INSERT INTO `data_hitung` VALUES (52, 6, 11, 7217.253);
INSERT INTO `data_hitung` VALUES (53, 19, 11, 12573.61);
INSERT INTO `data_hitung` VALUES (54, 1, 11, 13317.05);
INSERT INTO `data_hitung` VALUES (55, 11, 11, 1);
INSERT INTO `data_hitung` VALUES (56, 5, 12, 14398.17);
INSERT INTO `data_hitung` VALUES (57, 14, 12, 20524.86);
INSERT INTO `data_hitung` VALUES (58, 8, 12, 9572.06);
INSERT INTO `data_hitung` VALUES (59, 13, 12, 12851.46);
INSERT INTO `data_hitung` VALUES (60, 12, 12, 1);
INSERT INTO `data_hitung` VALUES (61, 12, 13, 12750.42);
INSERT INTO `data_hitung` VALUES (62, 8, 13, 9338.504);
INSERT INTO `data_hitung` VALUES (63, 5, 13, 17980.95);
INSERT INTO `data_hitung` VALUES (64, 14, 13, 13439.49);
INSERT INTO `data_hitung` VALUES (65, 13, 13, 1);
INSERT INTO `data_hitung` VALUES (66, 17, 14, 6279.003);
INSERT INTO `data_hitung` VALUES (67, 8, 14, 10971.74);
INSERT INTO `data_hitung` VALUES (68, 5, 14, 13380.15);
INSERT INTO `data_hitung` VALUES (69, 18, 14, 9563.955);
INSERT INTO `data_hitung` VALUES (70, 14, 14, 1);
INSERT INTO `data_hitung` VALUES (71, 6, 15, 29491.37);
INSERT INTO `data_hitung` VALUES (72, 9, 15, 30926.9);
INSERT INTO `data_hitung` VALUES (73, 10, 15, 31805.36);
INSERT INTO `data_hitung` VALUES (74, 17, 15, 38275.31);
INSERT INTO `data_hitung` VALUES (75, 15, 15, 1);
INSERT INTO `data_hitung` VALUES (76, 19, 16, 10256.21);
INSERT INTO `data_hitung` VALUES (77, 1, 16, 22240.69);
INSERT INTO `data_hitung` VALUES (78, 11, 16, 21889.58);
INSERT INTO `data_hitung` VALUES (79, 9, 16, 24684.43);
INSERT INTO `data_hitung` VALUES (80, 16, 16, 1);
INSERT INTO `data_hitung` VALUES (81, 10, 17, 11433.11);
INSERT INTO `data_hitung` VALUES (82, 18, 17, 5419.868);
INSERT INTO `data_hitung` VALUES (83, 3, 17, 14172.32);
INSERT INTO `data_hitung` VALUES (84, 14, 17, 6310.784);
INSERT INTO `data_hitung` VALUES (85, 17, 17, 1);
INSERT INTO `data_hitung` VALUES (86, 2, 18, 10036.62);
INSERT INTO `data_hitung` VALUES (87, 10, 18, 10786.06);
INSERT INTO `data_hitung` VALUES (88, 17, 18, 5542.953);
INSERT INTO `data_hitung` VALUES (89, 14, 18, 9631.985);
INSERT INTO `data_hitung` VALUES (90, 18, 18, 1);
INSERT INTO `data_hitung` VALUES (91, 16, 19, 10256.21);
INSERT INTO `data_hitung` VALUES (92, 1, 19, 18145.39);
INSERT INTO `data_hitung` VALUES (93, 11, 19, 12513.31);
INSERT INTO `data_hitung` VALUES (94, 9, 19, 14448.87);
INSERT INTO `data_hitung` VALUES (95, 19, 19, 1);

-- ----------------------------
-- Table structure for desa
-- ----------------------------
DROP TABLE IF EXISTS `desa`;
CREATE TABLE `desa`  (
  `id_desa` int NOT NULL AUTO_INCREMENT,
  `nama_desa` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_kecamatan` int NULL DEFAULT NULL,
  `longitude` int NULL DEFAULT NULL,
  `latitude` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_desa`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 199 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of desa
-- ----------------------------
INSERT INTO `desa` VALUES (1, 'GALING', 1, 317577, 170329);
INSERT INTO `desa` VALUES (2, 'RATU SEPUDAK', 1, 317129, 166440);
INSERT INTO `desa` VALUES (3, 'SAGU', 1, 321806, 174596);
INSERT INTO `desa` VALUES (4, 'SIJANG', 1, 324416, 172499);
INSERT INTO `desa` VALUES (5, 'SUNGAI PALAH', 1, 325390, 175387);
INSERT INTO `desa` VALUES (6, 'TELUK PANDAN', 1, 320467, 172416);
INSERT INTO `desa` VALUES (7, 'TEMPAPAN HULU', 1, 314384, 178265);
INSERT INTO `desa` VALUES (8, 'TEMPAPAN KUALA', 1, 315075, 171404);
INSERT INTO `desa` VALUES (9, 'TRI GADUH', 1, 315333, 168364);
INSERT INTO `desa` VALUES (10, 'TRI KEMBANG', 1, 315859, 163319);
INSERT INTO `desa` VALUES (11, 'BAKAU', 2, 284290, 149026);
INSERT INTO `desa` VALUES (12, 'DUNGUN LAUT', 2, 282187, 144503);
INSERT INTO `desa` VALUES (13, 'LAMBAU', 2, NULL, NULL);
INSERT INTO `desa` VALUES (14, 'MUTUS DARUSSALAM', 2, NULL, NULL);
INSERT INTO `desa` VALUES (15, 'PARIT SETIA', 2, 284966, 150287);
INSERT INTO `desa` VALUES (16, 'PELIMPAAN', 2, 285293, 151652);
INSERT INTO `desa` VALUES (17, 'SARANG BURUNG DANAU', 2, 285119, 161596);
INSERT INTO `desa` VALUES (18, 'SARANG BURUNG KOLAM', 2, 284278, 157089);
INSERT INTO `desa` VALUES (19, 'SARANG BURUNG KUALA', 2, 285872, 153668);
INSERT INTO `desa` VALUES (20, 'SARANG BURUNG USRAT', 2, 286204, 155562);
INSERT INTO `desa` VALUES (21, 'SENTEBANG', 2, 282840, 145712);
INSERT INTO `desa` VALUES (22, 'SUNGAI NILAM', 2, 285983, 158852);
INSERT INTO `desa` VALUES (23, 'SUNGAI NYIRIH', 2, 284080, 147963);
INSERT INTO `desa` VALUES (24, 'JAWAI LAUT', 3, 276450, 140401);
INSERT INTO `desa` VALUES (25, 'JELU AIR', 3, 279283, 137008);
INSERT INTO `desa` VALUES (26, 'MATANG TERAP', 3, 280373, 141862);
INSERT INTO `desa` VALUES (27, 'SABARAN', 3, 284581, 138092);
INSERT INTO `desa` VALUES (28, 'SARILABA A', 3, 281085, 139544);
INSERT INTO `desa` VALUES (29, 'SARILABA B', 3, 281128, 136689);
INSERT INTO `desa` VALUES (30, 'SEMPERIUK A', 3, 282145, 140477);
INSERT INTO `desa` VALUES (31, 'SEMPERIUK B', 3, 282545, 137300);
INSERT INTO `desa` VALUES (32, 'SUAH API', 3, 281894, 141990);
INSERT INTO `desa` VALUES (33, 'KALIMANTAN', 4, 297762, 177938);
INSERT INTO `desa` VALUES (34, 'MALEK', 4, 309524, 187624);
INSERT INTO `desa` VALUES (35, 'MATANG DANAU', 4, 300369, 178749);
INSERT INTO `desa` VALUES (36, 'MENTIBAR ', 4, 307373, 185535);
INSERT INTO `desa` VALUES (37, 'NIBUNG', 4, 311996, 190747);
INSERT INTO `desa` VALUES (38, 'SEBUBUS', 4, 313907, 194311);
INSERT INTO `desa` VALUES (39, 'TANAH HITAM', 4, 302112, 180352);
INSERT INTO `desa` VALUES (40, 'TEMAJUK', 4, 343609, 220697);
INSERT INTO `desa` VALUES (41, 'GUGAH SEJAHTERA', 5, 343609, 220697);
INSERT INTO `desa` VALUES (42, 'HARAPAN', 5, 276844, 129736);
INSERT INTO `desa` VALUES (43, 'JELUTUNG', 5, 275442, 128022);
INSERT INTO `desa` VALUES (44, 'LONAM', 5, NULL, NULL);
INSERT INTO `desa` VALUES (45, 'PEMANGKAT KOTA', 5, 274275, 130122);
INSERT INTO `desa` VALUES (46, 'PENJAJAP', 5, 274926, 130460);
INSERT INTO `desa` VALUES (47, 'PERAPAKAN', 5, 280680, 129870);
INSERT INTO `desa` VALUES (48, 'SEBATUAN', 5, 272036, 125886);
INSERT INTO `desa` VALUES (49, 'BERINGIN', 6, 326925, 153948);
INSERT INTO `desa` VALUES (50, 'JIRAK', 6, 317698, 155233);
INSERT INTO `desa` VALUES (51, 'MEKAR JAYA', 6, 321218, 155088);
INSERT INTO `desa` VALUES (52, 'TENGGULI', 6, 318152, 155416);
INSERT INTO `desa` VALUES (53, 'KALIAU', 7, 347907, 179167);
INSERT INTO `desa` VALUES (54, 'SANATAB', 7, 342555, 185298);
INSERT INTO `desa` VALUES (55, 'SANTABAN', 7, NULL, NULL);
INSERT INTO `desa` VALUES (56, 'SEBUNGA', 7, 353048, 175951);
INSERT INTO `desa` VALUES (57, 'SEI BENING', 7, 342144, 193288);
INSERT INTO `desa` VALUES (58, 'SEI BENING', 7, NULL, NULL);
INSERT INTO `desa` VALUES (59, 'PARIT BARU', 8, 274051, 122976);
INSERT INTO `desa` VALUES (60, 'SALATIGA', 8, 279542, 123126);
INSERT INTO `desa` VALUES (61, 'SERUMPUN', 8, 283912, 122033);
INSERT INTO `desa` VALUES (62, 'SERUNAI ', 8, 284317, 123596);
INSERT INTO `desa` VALUES (63, 'SUNGAI TOMAN', 8, 281718, 124870);
INSERT INTO `desa` VALUES (64, 'DALAM KAUM', 9, 312872, 150437);
INSERT INTO `desa` VALUES (65, 'DURIAN', 9, 310632, 150594);
INSERT INTO `desa` VALUES (66, 'GAPURA', 9, 303923, 151292);
INSERT INTO `desa` VALUES (67, 'JAGUR', 9, 310913, 151020);
INSERT INTO `desa` VALUES (68, 'KARTIASA', 9, 307849, 152932);
INSERT INTO `desa` VALUES (69, 'LORONG', 9, 310332, 150919);
INSERT INTO `desa` VALUES (70, 'LUBUK DAGANG', 9, 312573, 150211);
INSERT INTO `desa` VALUES (71, 'LUMBANG', 9, 310794, 148233);
INSERT INTO `desa` VALUES (72, 'PASAR MELAYU', 9, 311634, 150279);
INSERT INTO `desa` VALUES (73, 'PENDAWAN', 9, 311805, 150328);
INSERT INTO `desa` VALUES (74, 'SAING RAMBI', 9, 308907, 149014);
INSERT INTO `desa` VALUES (75, 'SEBAYAN', 9, 312502, 152623);
INSERT INTO `desa` VALUES (76, 'SEI RAMBAH', 9, 307618, 145303);
INSERT INTO `desa` VALUES (77, 'SEMANGAU', 9, 305523, 144350);
INSERT INTO `desa` VALUES (78, 'SUMBER HARAPAN', 9, 317200, 152974);
INSERT INTO `desa` VALUES (79, 'TANJUNG BUGIS', 9, 312029, 150445);
INSERT INTO `desa` VALUES (80, 'TANJUNG MEKAR', 9, 312458, 151283);
INSERT INTO `desa` VALUES (81, 'TUMUK MANGGIS', 9, 311676, 151042);
INSERT INTO `desa` VALUES (82, 'SEBANGUN', 10, 298434, 142956);
INSERT INTO `desa` VALUES (83, 'SEBAWI', 10, 301180, 142124);
INSERT INTO `desa` VALUES (84, 'RANTAU PANJANG', 10, 304665, 143713);
INSERT INTO `desa` VALUES (85, 'SEMPALAI', 10, 296656, 138238);
INSERT INTO `desa` VALUES (86, 'SEMPALAI SEBEDANG', 10, 296790, 138587);
INSERT INTO `desa` VALUES (87, 'SEPUK TANJUNG', 10, 299247, 140301);
INSERT INTO `desa` VALUES (88, 'TEBING BATU ', 10, 302619, 143003);
INSERT INTO `desa` VALUES (89, 'TEMPATAN', 10, 299372, 146164);
INSERT INTO `desa` VALUES (90, 'PARIT', NULL, NULL, NULL);
INSERT INTO `desa` VALUES (91, 'PARIT RAJA', 11, 312614, 159182);
INSERT INTO `desa` VALUES (92, 'PENAKALAN', 11, 309623, 156068);
INSERT INTO `desa` VALUES (93, 'PERIGI LANDU', 11, 315361, 160271);
INSERT INTO `desa` VALUES (94, 'PERIGI LIMUS', 11, 324937, 159157);
INSERT INTO `desa` VALUES (95, 'PIANTUS', 11, 311974, 160373);
INSERT INTO `desa` VALUES (96, 'SEKUDUK', 11, 310535, 157878);
INSERT INTO `desa` VALUES (97, 'SEMANGA', 11, 329746, 156457);
INSERT INTO `desa` VALUES (98, 'SENDOYAN', 11, 322474, 160644);
INSERT INTO `desa` VALUES (99, 'SENUJUH', 11, 325036, 162186);
INSERT INTO `desa` VALUES (100, 'SEPANTAI', 11, 339205, 143893);
INSERT INTO `desa` VALUES (101, 'SETALIK', 11, 311762, 156887);
INSERT INTO `desa` VALUES (102, 'SULUNG', 11, 307541, 154967);
INSERT INTO `desa` VALUES (103, 'BENTUNAI', 12, NULL, NULL);
INSERT INTO `desa` VALUES (104, 'GAYUNG BERSAMBUT', 12, NULL, NULL);
INSERT INTO `desa` VALUES (105, 'KUALA', 12, NULL, NULL);
INSERT INTO `desa` VALUES (106, 'PANGKALAN BEMBAN', 12, 277157, 116082);
INSERT INTO `desa` VALUES (107, 'PARIT BARU', 12, 274413, 117426);
INSERT INTO `desa` VALUES (108, 'PARIT KONGSI', 12, NULL, NULL);
INSERT INTO `desa` VALUES (109, 'SEMELAGI BESAR', 12, 275991, 110767);
INSERT INTO `desa` VALUES (110, 'SUNGAI DAUN', 12, 275710, 112384);
INSERT INTO `desa` VALUES (111, 'SUNGAI NYIRIH', 12, 274591, 115812);
INSERT INTO `desa` VALUES (112, 'SUNGAI RUSA', 12, 275149, 114007);
INSERT INTO `desa` VALUES (113, 'TWI MENTIBAR', 12, 278332, 118168);
INSERT INTO `desa` VALUES (114, 'BUDUK SEMPADANG', 13, 290223, 113323);
INSERT INTO `desa` VALUES (115, 'GELIK', 13, 282854, 119243);
INSERT INTO `desa` VALUES (116, 'SELAKAU TUA', 13, 284688, 118208);
INSERT INTO `desa` VALUES (117, 'SERANGGAM', 13, 283797, 118502);
INSERT INTO `desa` VALUES (118, 'SEBURING', 14, 284906, 125172);
INSERT INTO `desa` VALUES (119, 'SEMPARUK', 14, 286773, 131266);
INSERT INTO `desa` VALUES (120, 'SEPADU', 14, 285831, 125462);
INSERT INTO `desa` VALUES (121, 'SEPINGGAN', 14, 286958, 127786);
INSERT INTO `desa` VALUES (122, 'SINGARAYA', 14, 283533, 130298);
INSERT INTO `desa` VALUES (123, 'BALAI GEMURUH', 15, 330086, 127745);
INSERT INTO `desa` VALUES (124, 'BUKIT MULYA', 15, 334498, 136875);
INSERT INTO `desa` VALUES (125, 'KARABAN JAYA', 15, 329211, 136260);
INSERT INTO `desa` VALUES (126, 'MADAK', 15, 320636, 134936);
INSERT INTO `desa` VALUES (127, 'MENSADE', 15, 336690, 124598);
INSERT INTO `desa` VALUES (128, 'MUKTI RAHARJA', 15, 326609, 138779);
INSERT INTO `desa` VALUES (129, 'SABUNG', 15, 320984, 141257);
INSERT INTO `desa` VALUES (130, 'SEI DEDEN', 15, 336422, 140528);
INSERT INTO `desa` VALUES (131, 'SEMPURNA', 15, 340140, 133582);
INSERT INTO `desa` VALUES (132, 'SUNGAI SAPAK', 15, 338849, 130178);
INSERT INTO `desa` VALUES (133, 'TEBUAH ELOK', 15, 332717, 118615);
INSERT INTO `desa` VALUES (134, 'UPT XXXVI KERABAN', 15, NULL, NULL);
INSERT INTO `desa` VALUES (135, 'ARUNG MEDANG', 16, NULL, NULL);
INSERT INTO `desa` VALUES (136, 'ARUNG PARAK', 16, 295901, 175780);
INSERT INTO `desa` VALUES (137, 'MERABUAN', 16, 297667, 175000);
INSERT INTO `desa` VALUES (138, 'MERPATI', 16, 296722, 170670);
INSERT INTO `desa` VALUES (139, 'PANCUR', 16, 296352, 171996);
INSERT INTO `desa` VALUES (140, 'SEMATA', 16, 296886, 169264);
INSERT INTO `desa` VALUES (141, 'SIMPANG EMPAT', 16, 295701, 170589);
INSERT INTO `desa` VALUES (142, 'TANGARAN', 16, 299747, 168882);
INSERT INTO `desa` VALUES (143, 'BATU MAKJAGE', 17, 295097, 128417);
INSERT INTO `desa` VALUES (144, 'BEKUT', 17, 295005, 137070);
INSERT INTO `desa` VALUES (145, 'BUKIT SEGOLER', 17, 293234, 125698);
INSERT INTO `desa` VALUES (146, 'DUNGUN PERAPAKAN', 17, 295948, 131335);
INSERT INTO `desa` VALUES (147, 'MAK RAMPAI', 17, 294443, 136439);
INSERT INTO `desa` VALUES (148, 'MAK TANGGUK', 17, 289469, 127398);
INSERT INTO `desa` VALUES (149, 'MARIBAS', 17, 308544, 125829);
INSERT INTO `desa` VALUES (150, 'MATANG LABUNG', 17, 291180, 127470);
INSERT INTO `desa` VALUES (151, 'MEKAR SEKUNTUM', 17, 292383, 134731);
INSERT INTO `desa` VALUES (152, 'MENSERE', 17, 290784, 133717);
INSERT INTO `desa` VALUES (153, 'PANGKALAN KONGSI', 17, 294180, 129560);
INSERT INTO `desa` VALUES (154, 'PUSAKA', 17, 289558, 132546);
INSERT INTO `desa` VALUES (155, 'SEBERKAT', 17, NULL, NULL);
INSERT INTO `desa` VALUES (156, 'SEGARAU PARIT', 17, 287381, 139105);
INSERT INTO `desa` VALUES (157, 'SEGEDONG', 17, 288302, 132074);
INSERT INTO `desa` VALUES (158, 'SEJIRAM', 17, 296322, 135233);
INSERT INTO `desa` VALUES (159, 'SEMPALAI', 17, 296656, 138238);
INSERT INTO `desa` VALUES (160, 'SERET AYON', 17, 318194, 116313);
INSERT INTO `desa` VALUES (161, 'SERINDANG', 17, 292168, 126415);
INSERT INTO `desa` VALUES (162, 'SEREMPUN BULUH', 17, 293218, 131378);
INSERT INTO `desa` VALUES (163, 'SUNGAI KELAMBU', 17, 291873, 131159);
INSERT INTO `desa` VALUES (164, 'TEBAS KUALA', 17, 293609, 135976);
INSERT INTO `desa` VALUES (165, 'TEBAS SUNGAI', 17, 293780, 135197);
INSERT INTO `desa` VALUES (166, 'TEBAS SUNGAI', 17, NULL, NULL);
INSERT INTO `desa` VALUES (167, 'CEPALA', 18, 293222, 143937);
INSERT INTO `desa` VALUES (168, 'MATANG SEGARAU', 18, 286594, 142874);
INSERT INTO `desa` VALUES (169, 'MERUBUNG', 18, 294458, 142655);
INSERT INTO `desa` VALUES (170, 'RAMBAYAN', 18, 290130, 139616);
INSERT INTO `desa` VALUES (171, 'SARI MAKMUR', 18, 287848, 142636);
INSERT INTO `desa` VALUES (172, 'SEMPADIAN', 18, 290249, 143318);
INSERT INTO `desa` VALUES (173, 'TEKARANG', 18, 292320, 140107);
INSERT INTO `desa` VALUES (174, 'BERLIMANG', 19, 300336, 152401);
INSERT INTO `desa` VALUES (175, 'KUALA PANGKALAN KERAMAT', 19, 313038, 166002);
INSERT INTO `desa` VALUES (176, 'KUBANGGA', 19, 304628, 155610);
INSERT INTO `desa` VALUES (177, 'LELA', 19, 302666, 157265);
INSERT INTO `desa` VALUES (178, 'MATANG SEGANTAR', 19, 301305, 175297);
INSERT INTO `desa` VALUES (179, 'MEKAR SEKUNTUM', 19, 310313, 165388);
INSERT INTO `desa` VALUES (180, 'MULIA', 19, 300309, 172776);
INSERT INTO `desa` VALUES (181, 'PEDADA', 19, NULL, NULL);
INSERT INTO `desa` VALUES (182, 'PIPIT TEJA', 19, 302103, 172205);
INSERT INTO `desa` VALUES (183, 'PURINGAN', 19, 302566, 153153);
INSERT INTO `desa` VALUES (184, 'SABING', 19, NULL, NULL);
INSERT INTO `desa` VALUES (185, 'SAMUSTIDA', 19, 305411, 171789);
INSERT INTO `desa` VALUES (186, 'SAYANG SEDAYU', 19, 302687, 170602);
INSERT INTO `desa` VALUES (187, 'SEBAGU', 19, 310010, 163527);
INSERT INTO `desa` VALUES (188, 'SEKURA', 19, 301519, 162882);
INSERT INTO `desa` VALUES (189, 'SENGAWANG', 19, 297159, 146578);
INSERT INTO `desa` VALUES (190, 'SEPADU', 19, 303944, 161376);
INSERT INTO `desa` VALUES (191, 'SUNGAI BARU', 19, 299393, 149359);
INSERT INTO `desa` VALUES (192, 'SUNGAI KUMPAI', 19, 299717, 160860);
INSERT INTO `desa` VALUES (193, 'SUNGAI SERABEK', 19, 303724, 168248);
INSERT INTO `desa` VALUES (194, 'TAMBATAN', 19, 303982, 157659);
INSERT INTO `desa` VALUES (195, 'TANJUNG KERACUT', 19, 304713, 163096);
INSERT INTO `desa` VALUES (196, 'TELUK KASEH', 19, NULL, NULL);
INSERT INTO `desa` VALUES (197, 'TELUK KEMBANG', 19, 305090, 166479);
INSERT INTO `desa` VALUES (198, 'TRI MANDAYAN', 19, 299270, 166509);

-- ----------------------------
-- Table structure for kasus
-- ----------------------------
DROP TABLE IF EXISTS `kasus`;
CREATE TABLE `kasus`  (
  `id_desa` int NOT NULL AUTO_INCREMENT,
  `jumlah_kasus` int NULL DEFAULT NULL,
  `tahun` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_desa`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 199 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kasus
-- ----------------------------
INSERT INTO `kasus` VALUES (1, 0, '2017');
INSERT INTO `kasus` VALUES (2, 0, '2017');
INSERT INTO `kasus` VALUES (3, 2, '2017');
INSERT INTO `kasus` VALUES (4, 1, '2017');
INSERT INTO `kasus` VALUES (5, 0, '2017');
INSERT INTO `kasus` VALUES (6, 0, '2017');
INSERT INTO `kasus` VALUES (7, 0, '2017');
INSERT INTO `kasus` VALUES (8, 0, '2017');
INSERT INTO `kasus` VALUES (9, 0, '2017');
INSERT INTO `kasus` VALUES (10, 0, '2017');
INSERT INTO `kasus` VALUES (11, 0, '2017');
INSERT INTO `kasus` VALUES (12, 0, '2017');
INSERT INTO `kasus` VALUES (13, 0, '2017');
INSERT INTO `kasus` VALUES (14, 0, '2017');
INSERT INTO `kasus` VALUES (15, 0, '2017');
INSERT INTO `kasus` VALUES (16, 0, '2017');
INSERT INTO `kasus` VALUES (17, 100, '2017');
INSERT INTO `kasus` VALUES (18, 0, '2017');
INSERT INTO `kasus` VALUES (19, 0, '2017');
INSERT INTO `kasus` VALUES (20, 1, '2017');
INSERT INTO `kasus` VALUES (21, 0, '2017');
INSERT INTO `kasus` VALUES (22, 0, '2017');
INSERT INTO `kasus` VALUES (23, 0, '2017');
INSERT INTO `kasus` VALUES (24, 0, '2017');
INSERT INTO `kasus` VALUES (25, 0, '2017');
INSERT INTO `kasus` VALUES (26, 0, '2017');
INSERT INTO `kasus` VALUES (27, 0, '2017');
INSERT INTO `kasus` VALUES (28, 0, '2017');
INSERT INTO `kasus` VALUES (29, 0, '2017');
INSERT INTO `kasus` VALUES (30, 0, '2017');
INSERT INTO `kasus` VALUES (31, 0, '2017');
INSERT INTO `kasus` VALUES (32, 0, '2017');
INSERT INTO `kasus` VALUES (33, 0, '2017');
INSERT INTO `kasus` VALUES (34, 0, '2017');
INSERT INTO `kasus` VALUES (35, 0, '2017');
INSERT INTO `kasus` VALUES (36, 0, '2017');
INSERT INTO `kasus` VALUES (37, 0, '2017');
INSERT INTO `kasus` VALUES (38, 0, '2017');
INSERT INTO `kasus` VALUES (39, 0, '2017');
INSERT INTO `kasus` VALUES (40, 1, '2017');
INSERT INTO `kasus` VALUES (41, 0, '2017');
INSERT INTO `kasus` VALUES (42, 2, '2017');
INSERT INTO `kasus` VALUES (43, 0, '2017');
INSERT INTO `kasus` VALUES (44, 0, '2017');
INSERT INTO `kasus` VALUES (45, 20, '2017');
INSERT INTO `kasus` VALUES (46, 8, '2017');
INSERT INTO `kasus` VALUES (47, 0, '2017');
INSERT INTO `kasus` VALUES (48, 1, '2017');
INSERT INTO `kasus` VALUES (49, 1, '2017');
INSERT INTO `kasus` VALUES (50, 0, '2017');
INSERT INTO `kasus` VALUES (51, 0, '2017');
INSERT INTO `kasus` VALUES (52, 1, '2017');
INSERT INTO `kasus` VALUES (53, 0, '2017');
INSERT INTO `kasus` VALUES (54, 0, '2017');
INSERT INTO `kasus` VALUES (55, 0, '2017');
INSERT INTO `kasus` VALUES (56, 0, '2017');
INSERT INTO `kasus` VALUES (57, 0, '2017');
INSERT INTO `kasus` VALUES (58, 0, '2017');
INSERT INTO `kasus` VALUES (59, 0, '2017');
INSERT INTO `kasus` VALUES (60, 0, '2017');
INSERT INTO `kasus` VALUES (61, 0, '2017');
INSERT INTO `kasus` VALUES (62, 0, '2017');
INSERT INTO `kasus` VALUES (63, 0, '2017');
INSERT INTO `kasus` VALUES (64, 1, '2017');
INSERT INTO `kasus` VALUES (65, 1, '2017');
INSERT INTO `kasus` VALUES (66, 0, '2017');
INSERT INTO `kasus` VALUES (67, 0, '2017');
INSERT INTO `kasus` VALUES (68, 0, '2017');
INSERT INTO `kasus` VALUES (69, 2, '2017');
INSERT INTO `kasus` VALUES (70, 2, '2017');
INSERT INTO `kasus` VALUES (71, 0, '2017');
INSERT INTO `kasus` VALUES (72, 0, '2017');
INSERT INTO `kasus` VALUES (73, 0, '2017');
INSERT INTO `kasus` VALUES (74, 0, '2017');
INSERT INTO `kasus` VALUES (75, 0, '2017');
INSERT INTO `kasus` VALUES (76, 2, '2017');
INSERT INTO `kasus` VALUES (77, 0, '2017');
INSERT INTO `kasus` VALUES (78, 0, '2017');
INSERT INTO `kasus` VALUES (79, 0, '2017');
INSERT INTO `kasus` VALUES (80, 1, '2017');
INSERT INTO `kasus` VALUES (81, 0, '2017');
INSERT INTO `kasus` VALUES (82, 0, '2017');
INSERT INTO `kasus` VALUES (83, 4, '2017');
INSERT INTO `kasus` VALUES (84, 0, '2017');
INSERT INTO `kasus` VALUES (85, 1, '2017');
INSERT INTO `kasus` VALUES (86, 6, '2017');
INSERT INTO `kasus` VALUES (87, 0, '2017');
INSERT INTO `kasus` VALUES (88, 0, '2017');
INSERT INTO `kasus` VALUES (89, 0, '2017');
INSERT INTO `kasus` VALUES (90, NULL, '2017');
INSERT INTO `kasus` VALUES (91, 1, '2017');
INSERT INTO `kasus` VALUES (92, 0, '2017');
INSERT INTO `kasus` VALUES (93, 1, '2017');
INSERT INTO `kasus` VALUES (94, 0, '2017');
INSERT INTO `kasus` VALUES (95, 0, '2017');
INSERT INTO `kasus` VALUES (96, 0, '2017');
INSERT INTO `kasus` VALUES (97, 1, '2017');
INSERT INTO `kasus` VALUES (98, 0, '2017');
INSERT INTO `kasus` VALUES (99, 2, '2017');
INSERT INTO `kasus` VALUES (100, 0, '2017');
INSERT INTO `kasus` VALUES (101, 0, '2017');
INSERT INTO `kasus` VALUES (102, 0, '2017');
INSERT INTO `kasus` VALUES (103, 0, '2017');
INSERT INTO `kasus` VALUES (104, 0, '2017');
INSERT INTO `kasus` VALUES (105, 0, '2017');
INSERT INTO `kasus` VALUES (106, 0, '2017');
INSERT INTO `kasus` VALUES (107, 2, '2017');
INSERT INTO `kasus` VALUES (108, 0, '2017');
INSERT INTO `kasus` VALUES (109, 0, '2017');
INSERT INTO `kasus` VALUES (110, 1, '2017');
INSERT INTO `kasus` VALUES (111, 0, '2017');
INSERT INTO `kasus` VALUES (112, 0, '2017');
INSERT INTO `kasus` VALUES (113, 0, '2017');
INSERT INTO `kasus` VALUES (114, 0, '2017');
INSERT INTO `kasus` VALUES (115, 1, '2017');
INSERT INTO `kasus` VALUES (116, 0, '2017');
INSERT INTO `kasus` VALUES (117, 1, '2017');
INSERT INTO `kasus` VALUES (118, 0, '2017');
INSERT INTO `kasus` VALUES (119, 0, '2017');
INSERT INTO `kasus` VALUES (120, 0, '2017');
INSERT INTO `kasus` VALUES (121, 0, '2017');
INSERT INTO `kasus` VALUES (122, 0, '2017');
INSERT INTO `kasus` VALUES (123, 0, '2017');
INSERT INTO `kasus` VALUES (124, 0, '2017');
INSERT INTO `kasus` VALUES (125, 0, '2017');
INSERT INTO `kasus` VALUES (126, 0, '2017');
INSERT INTO `kasus` VALUES (127, 0, '2017');
INSERT INTO `kasus` VALUES (128, 0, '2017');
INSERT INTO `kasus` VALUES (129, 0, '2017');
INSERT INTO `kasus` VALUES (130, 0, '2017');
INSERT INTO `kasus` VALUES (131, 0, '2017');
INSERT INTO `kasus` VALUES (132, 0, '2017');
INSERT INTO `kasus` VALUES (133, 0, '2017');
INSERT INTO `kasus` VALUES (134, 0, '2017');
INSERT INTO `kasus` VALUES (135, 0, '2017');
INSERT INTO `kasus` VALUES (136, 0, '2017');
INSERT INTO `kasus` VALUES (137, 0, '2017');
INSERT INTO `kasus` VALUES (138, 0, '2017');
INSERT INTO `kasus` VALUES (139, 0, '2017');
INSERT INTO `kasus` VALUES (140, 0, '2017');
INSERT INTO `kasus` VALUES (141, 2, '2017');
INSERT INTO `kasus` VALUES (142, 0, '2017');
INSERT INTO `kasus` VALUES (143, 1, '2017');
INSERT INTO `kasus` VALUES (144, 0, '2017');
INSERT INTO `kasus` VALUES (145, 0, '2017');
INSERT INTO `kasus` VALUES (146, 0, '2017');
INSERT INTO `kasus` VALUES (147, 0, '2017');
INSERT INTO `kasus` VALUES (148, 0, '2017');
INSERT INTO `kasus` VALUES (149, 0, '2017');
INSERT INTO `kasus` VALUES (150, 2, '2017');
INSERT INTO `kasus` VALUES (151, 0, '2017');
INSERT INTO `kasus` VALUES (152, 0, '2017');
INSERT INTO `kasus` VALUES (153, 0, '2017');
INSERT INTO `kasus` VALUES (154, 4, '2017');
INSERT INTO `kasus` VALUES (155, NULL, '2017');
INSERT INTO `kasus` VALUES (156, 4, '2017');
INSERT INTO `kasus` VALUES (157, 1, '2017');
INSERT INTO `kasus` VALUES (158, 0, '2017');
INSERT INTO `kasus` VALUES (159, 1, '2017');
INSERT INTO `kasus` VALUES (160, 0, '2017');
INSERT INTO `kasus` VALUES (161, 2, '2017');
INSERT INTO `kasus` VALUES (162, 1, '2017');
INSERT INTO `kasus` VALUES (163, 0, '2017');
INSERT INTO `kasus` VALUES (164, 2, '2017');
INSERT INTO `kasus` VALUES (165, 0, '2017');
INSERT INTO `kasus` VALUES (166, NULL, '2017');
INSERT INTO `kasus` VALUES (167, 0, '2017');
INSERT INTO `kasus` VALUES (168, 0, '2017');
INSERT INTO `kasus` VALUES (169, 0, '2017');
INSERT INTO `kasus` VALUES (170, 1, '2017');
INSERT INTO `kasus` VALUES (171, 0, '2017');
INSERT INTO `kasus` VALUES (172, 0, '2017');
INSERT INTO `kasus` VALUES (173, 0, '2017');
INSERT INTO `kasus` VALUES (174, 0, '2017');
INSERT INTO `kasus` VALUES (175, 0, '2017');
INSERT INTO `kasus` VALUES (176, 1, '2017');
INSERT INTO `kasus` VALUES (177, 0, '2017');
INSERT INTO `kasus` VALUES (178, 0, '2017');
INSERT INTO `kasus` VALUES (179, 1, '2017');
INSERT INTO `kasus` VALUES (180, 0, '2017');
INSERT INTO `kasus` VALUES (181, 0, '2017');
INSERT INTO `kasus` VALUES (182, 0, '2017');
INSERT INTO `kasus` VALUES (183, 0, '2017');
INSERT INTO `kasus` VALUES (184, 0, '2017');
INSERT INTO `kasus` VALUES (185, 0, '2017');
INSERT INTO `kasus` VALUES (186, 0, '2017');
INSERT INTO `kasus` VALUES (187, 0, '2017');
INSERT INTO `kasus` VALUES (188, 1, '2017');
INSERT INTO `kasus` VALUES (189, 1, '2017');
INSERT INTO `kasus` VALUES (190, 0, '2017');
INSERT INTO `kasus` VALUES (191, 1, '2017');
INSERT INTO `kasus` VALUES (192, 0, '2017');
INSERT INTO `kasus` VALUES (193, 0, '2017');
INSERT INTO `kasus` VALUES (194, 2, '2017');
INSERT INTO `kasus` VALUES (195, 0, '2017');
INSERT INTO `kasus` VALUES (196, 0, '2017');
INSERT INTO `kasus` VALUES (197, 0, '2017');
INSERT INTO `kasus` VALUES (198, 0, '2017');

-- ----------------------------
-- Table structure for kecamatan
-- ----------------------------
DROP TABLE IF EXISTS `kecamatan`;
CREATE TABLE `kecamatan`  (
  `id_kecamatan` int NOT NULL AUTO_INCREMENT,
  `nama_kecamatan` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `geojson_kecamatan` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `warna_kecamatan` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kecamatan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kecamatan
-- ----------------------------
INSERT INTO `kecamatan` VALUES (1, 'Galing', 'Geojson_Galing.geojson', '#f34a12');
INSERT INTO `kecamatan` VALUES (2, 'Jawai', 'Geojson_Jawai.geojson', '#42f312');
INSERT INTO `kecamatan` VALUES (3, 'Jawai Selatan', 'Geojson_JawaiSelatan.geojson', '#42f312');
INSERT INTO `kecamatan` VALUES (4, 'Paloh', 'Geojson_Paloh.geojson', '#42f312');
INSERT INTO `kecamatan` VALUES (5, 'Pemangkat', 'Geojson_Pemangkat.geojson', '#42f312');
INSERT INTO `kecamatan` VALUES (6, 'Sajad', 'Geojson_Sajad.geojson', '#42f312');
INSERT INTO `kecamatan` VALUES (7, 'Sajingan Besar', 'Geojson_SajinganBesar.geojson', '#42f312');
INSERT INTO `kecamatan` VALUES (8, 'Salatiga', 'Geojson_Salatiga.geojson', '#42f312');
INSERT INTO `kecamatan` VALUES (9, 'Sambas', 'Geojson_Sambas.geojson', '#42f312');
INSERT INTO `kecamatan` VALUES (10, 'Sebawi', 'Geojson_Sebawi.geojson', '#42f312');
INSERT INTO `kecamatan` VALUES (11, 'Sejangkung', 'Geojson_Sejangkung.geojson', '#42f312');
INSERT INTO `kecamatan` VALUES (12, 'Selakau', 'Geojson_Selakau.geojson', '#42f312');
INSERT INTO `kecamatan` VALUES (13, 'Selakau Timur', 'Geojson_SlkTimur.geojson', '#42f312');
INSERT INTO `kecamatan` VALUES (14, 'Semparuk', 'Geojson_Semparuk.geojson', '#42f312');
INSERT INTO `kecamatan` VALUES (15, 'Subah', 'Geojson_Subah.geojson', '#42f312');
INSERT INTO `kecamatan` VALUES (16, 'Tangaran', 'Geojson_Tangaran.geojson', '#42f312');
INSERT INTO `kecamatan` VALUES (17, 'Tebas', 'Geojson_Tebas.geojson', '#42f312');
INSERT INTO `kecamatan` VALUES (18, 'Tekarang', 'Geojson_Tekarang.geojson', '#42f312');
INSERT INTO `kecamatan` VALUES (19, 'Teluk Keramat', 'Geojson_TlkKrmt.geojson', '#42f312');

-- ----------------------------
-- Table structure for korban
-- ----------------------------
DROP TABLE IF EXISTS `korban`;
CREATE TABLE `korban`  (
  `id_korban` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tempat_lahir` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tanggal_lahir` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jenis_kelamin` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alamat` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_desa` int NULL DEFAULT NULL,
  `agama` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status_perkawinan` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pekerjaan` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nama_ayah` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nama_ibu` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pendidikan_terakhir` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jumlah_saudara` int NULL DEFAULT NULL,
  `nik` bigint NULL DEFAULT NULL,
  `id_pengaduan` int NULL DEFAULT NULL,
  `date_created` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_korban`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of korban
-- ----------------------------
INSERT INTO `korban` VALUES (1, 'febri', 'Galing', '2016-02-14', 'Perempuan', 'Galing', 1, 'Islam', 'Belum Kawin', '-', 'Sahran', 'muna', 'SD', 0, 2147483647123245, 1, '2021-07-15 06:26:25');
INSERT INTO `korban` VALUES (2, 'farhan', 'Galing', '2010-06-28', 'Laki-Laki', 'Tanjung Raya 2', 1, 'Islam', 'Belum Kawin', '-', '-', '-', 'SD', 0, 3321110902070007, 1, '2021-07-28 01:44:22');

-- ----------------------------
-- Table structure for pelaku
-- ----------------------------
DROP TABLE IF EXISTS `pelaku`;
CREATE TABLE `pelaku`  (
  `id_pelaku` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tempat_lahir` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tanggal_lahir` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jenis_kelamin` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alamat` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_desa` int NULL DEFAULT NULL,
  `agama` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status_perkawinan` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pekerjaan` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nama_ayah` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nama_ibu` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pendidikan_terakhir` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jumlah_saudara` int NULL DEFAULT NULL,
  `rekam_jejak` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nik` bigint NULL DEFAULT NULL,
  `id_pengaduan` int NULL DEFAULT NULL,
  `date_created` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_pelaku`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pelaku
-- ----------------------------
INSERT INTO `pelaku` VALUES (1, 'Rendi', 'Galing', '1996-03-18', 'Laki-Laki', 'Seburuan', 1, 'Islam', 'Belum Kawin', '-', '-', '-', 'SD', 0, 'Tidak Pernah', 2147483647123246, 1, '2021-07-18 10:24:45');
INSERT INTO `pelaku` VALUES (2, 'farhan', 'Galing', '2010-06-28', 'Laki-Laki', 'Tanjung Raya 2', 1, 'Islam', 'Belum Kawin', '-', '-', '-', 'SD', 0, 'Pernah', 3321110902070007, 1, '2021-07-28 01:42:10');

-- ----------------------------
-- Table structure for pelaporan
-- ----------------------------
DROP TABLE IF EXISTS `pelaporan`;
CREATE TABLE `pelaporan`  (
  `id_pelapor` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `alamat_pelapor` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `no_hp` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `korban_kekerasan` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tanggal_pelaporan` datetime NULL DEFAULT NULL,
  `tempat_kejadian` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alamat_kejadian` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kronologis_kejadian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_status` int NULL DEFAULT NULL,
  `hubungan_dengan_korban` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_desa` int NULL DEFAULT NULL,
  `date_created` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_pelapor`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pelaporan
-- ----------------------------
INSERT INTO `pelaporan` VALUES (1, 1, 'Galing', '08981385790', 'Anak', '2021-07-15 00:00:00', 'Rumah', 'Galing', 'Telah terjadi kekerasan terhadap anak dibawah umur', 'graduate-icon-png-28-2.png', 2, 'Tetangga', 1, '2021-07-15 03:47:31');
INSERT INTO `pelaporan` VALUES (2, 1, 'Teluk Durian', '08981385795', 'Anak', '2021-08-09 00:00:00', 'Rumah', 'Teluk Durian', 'Kekerasan terhadap anak', 'default.png', 2, 'Tetangga', 190, '2021-08-09 12:17:14');
INSERT INTO `pelaporan` VALUES (3, 1, 'tanjung bakau dalam', '08981385790', 'Perempuan', '2021-08-31 00:00:00', 'dikebun', 'dusun tanjung bakau', 'sejak saat itu langit senja tak lagi sama. pada jam 4 sore suami istri itu pergi ke kebun, awal nya tidak terjadi apa-apa lalu jam saya mendengar suara pertengkaran pada jam 16:50 lalu saya mendekati mereka, sekitar 200 meter saya melihat suaminya lansung', 'default.png', 2, 'selingkuhan', 194, '2021-08-09 12:40:05');
INSERT INTO `pelaporan` VALUES (4, 3, 'Teluk Durian', '08981385790', 'Anak', '2021-09-13 10:18:37', 'Rumah', 'Teluk Durian', 'Telah terjadi kekerasan terhadap anak oleh orang tua nya sendiri', 'default.png', 2, 'Tetangga', 190, '2021-09-13 10:18:37');
INSERT INTO `pelaporan` VALUES (5, 3, 'Tanjung bakau dalam', '08981385790', 'Anak', '2021-09-13 10:11:00', 'Rumah', 'Tanjung Bakau', 'kekerasan fisik terhadap anak', 'default.png', 2, 'Tetangga', 194, '2021-09-13 10:11:00');
INSERT INTO `pelaporan` VALUES (6, NULL, 'teluk durian', '089813889098', 'korban_kekerasan', '2022-03-30 06:34:16', 'Rumah', 'sepadu', NULL, 'image_1648658057.png', 1, NULL, NULL, '2022-03-30 06:34:16');
INSERT INTO `pelaporan` VALUES (7, NULL, 'teluk durian', '089813889098', 'Perempuan', '2022-03-30 06:42:14', 'Rumah', 'sepadu', 'terjadi kekerasan terhadap perempuan ', 'image_1648658534.png', 1, NULL, 190, '2022-03-30 06:42:14');
INSERT INTO `pelaporan` VALUES (8, NULL, 'teluk durian', '089813889098', 'Anak', '2022-03-30 06:44:29', 'Rumah', 'sepadu', 'terjadi kekerasan terhadap perempuan ', 'image_1648658670.png', 1, 'tetangga', 190, '2022-03-30 06:44:29');
INSERT INTO `pelaporan` VALUES (9, NULL, 'teluk durian', '089813889098', 'Anak', '2022-03-30 06:44:50', 'Rumah', 'sepadu', 'terjadi kekerasan terhadap perempuan ', 'image_1648658690.png', 1, 'tetangga', 190, '2022-03-30 06:44:50');
INSERT INTO `pelaporan` VALUES (10, NULL, 'teluk durian', '089813889098', 'Anak', '2022-04-01 11:30:30', 'Rumah', 'sepadu', 'terjadi kekerasan terhadap perempuan ', 'image_1648805430.png', 1, 'tetangga', 190, '2022-04-01 11:30:31');
INSERT INTO `pelaporan` VALUES (11, 3, 'teluk duriansss', '089813889098', 'Anak', '2022-04-01 11:36:46', 'Rumah', 'sepadu', 'terjadi kekerasan terhadap perempuan ', 'image_1648805807.png', 2, 'tetangga', 190, '2022-04-01 11:36:46');
INSERT INTO `pelaporan` VALUES (12, 3, 'teluk duriansss', '089813889098', 'Anak', '2022-04-01 11:39:09', 'Rumah', 'sepadu', 'terjadi kekerasan terhadap perempuan ', 'image_1648805949.png', 2, 'tetangga', 190, '2022-04-01 11:39:09');
INSERT INTO `pelaporan` VALUES (13, 3, 'teluk duriansss', '089813889098', 'Anak', '2022-04-01 04:41:43', 'Rumah', 'sepadu', 'terjadi kekerasan terhadap perempuan ', 'image_1648806103.png', 1, 'tetangga', 190, '2022-04-01 04:41:43');
INSERT INTO `pelaporan` VALUES (14, 3, 'teluk duriansss', '089813889098', 'Anak', '2022-04-01 16:43:19', 'Rumah', 'sepadu', 'terjadi kekerasan terhadap perempuan ', 'image_1648806199.png', 1, 'tetangga', 190, '2022-04-01 04:43:19');

-- ----------------------------
-- Table structure for pengaduan_kasus
-- ----------------------------
DROP TABLE IF EXISTS `pengaduan_kasus`;
CREATE TABLE `pengaduan_kasus`  (
  `id_pengaduan` int NOT NULL AUTO_INCREMENT,
  `no_registrasi` int NULL DEFAULT NULL,
  `tanggal_pengaduan` date NULL DEFAULT NULL,
  `cara_datang` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `korban_kekerasan` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kategori_kekerasan` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_sub_bentuk_kekerasan` int NULL DEFAULT NULL,
  `alamat_kejadian` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `waktu_kejadian` datetime NULL DEFAULT NULL,
  `tempat_kejadian` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_desa` int NULL DEFAULT NULL,
  `id_kecamatan` int NULL DEFAULT NULL,
  `tahun_pengaduan` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `latitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kronologis_kejadian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alamat_pelapor` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hubungan_dengan_korban` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_pelapor` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_pengaduan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengaduan_kasus
-- ----------------------------
INSERT INTO `pengaduan_kasus` VALUES (1, 1, '2021-09-13', 'Datang Sendiri', 'Anak', 'Kdrt', 1, 'Teluk Durian', '2021-09-13 10:19:18', 'Rumah', 190, 19, '2021', NULL, NULL, 'Telah terjadi kekerasan terhadap anak oleh orang tua nya sendiri', 'default.png', 'Teluk Durian', 'Tetangga', 4);
INSERT INTO `pengaduan_kasus` VALUES (2, 2, '2021-12-08', 'Datang Sendiri', 'Anak', 'Kdrt', 1, 'Tanjung Bakau', '2021-12-08 04:03:02', 'Rumah', 194, 19, '2021', NULL, NULL, 'kekerasan fisik terhadap anak', 'default.png', 'Tanjung bakau dalam', 'Tetangga', 5);
INSERT INTO `pengaduan_kasus` VALUES (3, 3, '2021-12-19', 'Datang Sendiri', 'Anak', 'Kdrt', 1, 'Tanjung Bakau', '2021-12-20 14:53:42', 'Rumah', 194, 19, '2021', NULL, NULL, 'kekerasan fisik terhadap anak', 'default.png', 'Tanjung bakau dalam', 'Tetangga', 4);
INSERT INTO `pengaduan_kasus` VALUES (4, 4, '2022-04-12', 'Datang Sendiri', 'Anak', 'Kdrt', 1, 'sepadu', '2022-04-12 21:07:24', 'Rumah', 117, 13, '2022', NULL, NULL, 'terjadi kekerasan terhadap perempuan', 'CM3_6228.JPG', 'Teluk Durian', 'tetangga', 12);

-- ----------------------------
-- Table structure for status_laporan
-- ----------------------------
DROP TABLE IF EXISTS `status_laporan`;
CREATE TABLE `status_laporan`  (
  `id_status` int NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status_laporan
-- ----------------------------
INSERT INTO `status_laporan` VALUES (1, 'Diproses');
INSERT INTO `status_laporan` VALUES (2, 'Diterima');
INSERT INTO `status_laporan` VALUES (3, 'Ditolak');

-- ----------------------------
-- Table structure for sub_bentuk_kekerasan
-- ----------------------------
DROP TABLE IF EXISTS `sub_bentuk_kekerasan`;
CREATE TABLE `sub_bentuk_kekerasan`  (
  `id_sub_bentuk_kekerasan` int NOT NULL AUTO_INCREMENT,
  `sub_jenis_kekerasan` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_bentuk_kekerasan` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_sub_bentuk_kekerasan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub_bentuk_kekerasan
-- ----------------------------
INSERT INTO `sub_bentuk_kekerasan` VALUES (1, 'Kekerasan Fisik', 1);
INSERT INTO `sub_bentuk_kekerasan` VALUES (2, 'Persetubuhan', 3);
INSERT INTO `sub_bentuk_kekerasan` VALUES (3, 'EXPL Seksual', 4);
INSERT INTO `sub_bentuk_kekerasan` VALUES (4, 'Kenakalan Anak', 7);
INSERT INTO `sub_bentuk_kekerasan` VALUES (5, 'Saksi Anak', 5);
INSERT INTO `sub_bentuk_kekerasan` VALUES (6, 'Penelantaran Anak', 2);

-- ----------------------------
-- Table structure for titik_baru
-- ----------------------------
DROP TABLE IF EXISTS `titik_baru`;
CREATE TABLE `titik_baru`  (
  `id_titikbaru` int NOT NULL AUTO_INCREMENT,
  `nama_titik` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `longitude` int NULL DEFAULT NULL,
  `latitude` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_titikbaru`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of titik_baru
-- ----------------------------
INSERT INTO `titik_baru` VALUES (1, 'TEMAJUK', 336283, 216911);
INSERT INTO `titik_baru` VALUES (2, 'SEBUBUS 1', 319482, 213074);
INSERT INTO `titik_baru` VALUES (3, 'SEBUBUS 2', 317630, 201962);
INSERT INTO `titik_baru` VALUES (4, 'SEBUBUS 3', 334298, 202491);
INSERT INTO `titik_baru` VALUES (5, 'NIBUNG', 318291, 189394);
INSERT INTO `titik_baru` VALUES (6, 'SANTABAN', 333637, 188865);
INSERT INTO `titik_baru` VALUES (7, 'SUNGAI BENING', 349115, 190453);
INSERT INTO `titik_baru` VALUES (8, 'SIMPANG 4', 289799, 173901);
INSERT INTO `titik_baru` VALUES (9, 'MATANG SEGANTAR', 303871, 175900);
INSERT INTO `titik_baru` VALUES (10, 'SAGU', 320540, 176562);
INSERT INTO `titik_baru` VALUES (11, 'SANTABAN 1', 334166, 174974);
INSERT INTO `titik_baru` VALUES (12, 'SEBUNGA', 351232, 171799);
INSERT INTO `titik_baru` VALUES (13, 'SEBUNGA 1', 362912, 169054);
INSERT INTO `titik_baru` VALUES (14, 'SARANG BURUNG DANAU', 289981, 161348);
INSERT INTO `titik_baru` VALUES (15, 'SEKURA', 302019, 160687);
INSERT INTO `titik_baru` VALUES (16, 'SENDOYAN', 318953, 160951);
INSERT INTO `titik_baru` VALUES (17, 'SEMANGA', 333372, 160819);
INSERT INTO `titik_baru` VALUES (18, 'SEBUNGA 2', 350173, 161216);
INSERT INTO `titik_baru` VALUES (19, 'SARI MAKMUR', 289451, 141372);
INSERT INTO `titik_baru` VALUES (20, 'RANTAU PANJANG', 302548, 145076);
INSERT INTO `titik_baru` VALUES (21, 'LUBUK DAGANG', 317894, 145341);
INSERT INTO `titik_baru` VALUES (22, 'SEPANTAI', 336151, 144415);
INSERT INTO `titik_baru` VALUES (23, 'GUGAH SEJAHTERA', 277677, 128408);
INSERT INTO `titik_baru` VALUES (24, 'PUSAKA', 289584, 130524);
INSERT INTO `titik_baru` VALUES (25, 'MARIBAS', 304268, 130524);
INSERT INTO `titik_baru` VALUES (26, 'MADAK', 320143, 130524);
INSERT INTO `titik_baru` VALUES (27, 'TWI MENTIBAR', 276619, 119412);
INSERT INTO `titik_baru` VALUES (28, 'BUDUK SEMPADUNG', 289848, 116237);
INSERT INTO `titik_baru` VALUES (29, 'BUDUK SEMPADUNG 1', 303739, 115311);
INSERT INTO `titik_baru` VALUES (30, 'MARIBAS 1 ', 320805, 118353);

-- ----------------------------
-- Table structure for titik_kecamatan
-- ----------------------------
DROP TABLE IF EXISTS `titik_kecamatan`;
CREATE TABLE `titik_kecamatan`  (
  `id_t` int NOT NULL AUTO_INCREMENT,
  `id_kecamatan` int NULL DEFAULT NULL,
  `id_titik_hitung` int NULL DEFAULT NULL,
  `Jarak` double NULL DEFAULT NULL,
  `Jlh_Kasus` int NULL DEFAULT NULL,
  `Tahun` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_t`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 304 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of titik_kecamatan
-- ----------------------------
INSERT INTO `titik_kecamatan` VALUES (1, 19, 1, 18145.39, 7, 2017);
INSERT INTO `titik_kecamatan` VALUES (2, 11, 1, 13613.72, 4, 2017);
INSERT INTO `titik_kecamatan` VALUES (3, 6, 1, 15758.41, 2, 2017);
INSERT INTO `titik_kecamatan` VALUES (4, 16, 1, 22240.69, 2, 2017);
INSERT INTO `titik_kecamatan` VALUES (5, 1, 1, 1, 3, 2017);
INSERT INTO `titik_kecamatan` VALUES (6, 3, 2, 6627.458, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (7, 18, 2, 10289.04, 1, 2017);
INSERT INTO `titik_kecamatan` VALUES (8, 10, 2, 19900.06, 10, 2017);
INSERT INTO `titik_kecamatan` VALUES (9, 17, 2, 14979.83, 18, 2017);
INSERT INTO `titik_kecamatan` VALUES (10, 2, 2, 1, 2, 2017);
INSERT INTO `titik_kecamatan` VALUES (11, 2, 3, 6432.708, 2, 2017);
INSERT INTO `titik_kecamatan` VALUES (12, 18, 3, 11662.89, 1, 2017);
INSERT INTO `titik_kecamatan` VALUES (13, 14, 3, 11721.15, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (14, 5, 3, 11332.33, 31, 2017);
INSERT INTO `titik_kecamatan` VALUES (15, 3, 3, 1, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (16, 16, 4, 27439.93, 2, 2017);
INSERT INTO `titik_kecamatan` VALUES (17, 19, 4, 31851.64, 7, 2017);
INSERT INTO `titik_kecamatan` VALUES (18, 1, 4, 22466.09, 3, 2017);
INSERT INTO `titik_kecamatan` VALUES (19, 11, 4, 34630.78, 4, 2017);
INSERT INTO `titik_kecamatan` VALUES (20, 4, 4, 1, 1, 2017);
INSERT INTO `titik_kecamatan` VALUES (21, 3, 5, 11316.68, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (22, 14, 5, 13198.33, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (23, 8, 5, 8677.881, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (24, 12, 5, 14413.4, 3, 2017);
INSERT INTO `titik_kecamatan` VALUES (25, 5, 5, 1, 31, 2017);
INSERT INTO `titik_kecamatan` VALUES (26, 1, 6, 15758.41, 3, 2017);
INSERT INTO `titik_kecamatan` VALUES (27, 11, 6, 7263.37, 4, 2017);
INSERT INTO `titik_kecamatan` VALUES (28, 9, 6, 9536.66, 9, 2017);
INSERT INTO `titik_kecamatan` VALUES (29, 19, 6, 19776.19, 7, 2017);
INSERT INTO `titik_kecamatan` VALUES (30, 6, 6, 1, 2, 2017);
INSERT INTO `titik_kecamatan` VALUES (31, 4, 7, 38726.87, 1, 2017);
INSERT INTO `titik_kecamatan` VALUES (32, 1, 7, 32494.76, 3, 2017);
INSERT INTO `titik_kecamatan` VALUES (33, 11, 7, 41972.58, 4, 2017);
INSERT INTO `titik_kecamatan` VALUES (34, 6, 7, 38181.75, 2, 2017);
INSERT INTO `titik_kecamatan` VALUES (35, 7, 7, 1, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (36, 5, 8, 8701.248, 31, 2017);
INSERT INTO `titik_kecamatan` VALUES (37, 14, 8, 10946.43, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (38, 12, 8, 9705.283, 3, 2017);
INSERT INTO `titik_kecamatan` VALUES (39, 13, 8, 9531.636, 2, 2017);
INSERT INTO `titik_kecamatan` VALUES (40, 8, 8, 1, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (41, 6, 9, 9536.66, 2, 2017);
INSERT INTO `titik_kecamatan` VALUES (42, 11, 9, 6650.104, 4, 2017);
INSERT INTO `titik_kecamatan` VALUES (43, 10, 9, 13179.2, 10, 2017);
INSERT INTO `titik_kecamatan` VALUES (44, 19, 9, 14448.87, 7, 2017);
INSERT INTO `titik_kecamatan` VALUES (45, 9, 9, 1, 9, 2017);
INSERT INTO `titik_kecamatan` VALUES (46, 9, 10, 13179.2, 9, 2017);
INSERT INTO `titik_kecamatan` VALUES (47, 18, 10, 10921.49, 1, 2017);
INSERT INTO `titik_kecamatan` VALUES (48, 17, 10, 11433.11, 18, 2017);
INSERT INTO `titik_kecamatan` VALUES (49, 14, 10, 17740.55, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (50, 10, 10, 1, 10, 2017);
INSERT INTO `titik_kecamatan` VALUES (51, 9, 11, 6946.561, 9, 2017);
INSERT INTO `titik_kecamatan` VALUES (52, 6, 11, 7217.253, 2, 2017);
INSERT INTO `titik_kecamatan` VALUES (53, 19, 11, 12573.61, 7, 2017);
INSERT INTO `titik_kecamatan` VALUES (54, 1, 11, 13317.05, 3, 2017);
INSERT INTO `titik_kecamatan` VALUES (55, 11, 11, 1, 4, 2017);
INSERT INTO `titik_kecamatan` VALUES (56, 5, 12, 14398.17, 31, 2017);
INSERT INTO `titik_kecamatan` VALUES (57, 14, 12, 20524.86, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (58, 8, 12, 9572.06, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (59, 13, 12, 12851.46, 2, 2017);
INSERT INTO `titik_kecamatan` VALUES (60, 12, 12, 1, 3, 2017);
INSERT INTO `titik_kecamatan` VALUES (61, 12, 13, 12750.42, 3, 2017);
INSERT INTO `titik_kecamatan` VALUES (62, 8, 13, 9338.504, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (63, 5, 13, 17980.95, 31, 2017);
INSERT INTO `titik_kecamatan` VALUES (64, 14, 13, 13439.49, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (65, 13, 13, 1, 2, 2017);
INSERT INTO `titik_kecamatan` VALUES (66, 17, 14, 6279.003, 18, 2017);
INSERT INTO `titik_kecamatan` VALUES (67, 8, 14, 10971.74, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (68, 5, 14, 13380.15, 31, 2017);
INSERT INTO `titik_kecamatan` VALUES (69, 18, 14, 9563.955, 1, 2017);
INSERT INTO `titik_kecamatan` VALUES (70, 14, 14, 1, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (71, 6, 15, 29491.37, 2, 2017);
INSERT INTO `titik_kecamatan` VALUES (72, 9, 15, 30926.9, 9, 2017);
INSERT INTO `titik_kecamatan` VALUES (73, 10, 15, 31805.36, 10, 2017);
INSERT INTO `titik_kecamatan` VALUES (74, 17, 15, 38275.31, 18, 2017);
INSERT INTO `titik_kecamatan` VALUES (75, 15, 15, 1, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (76, 19, 16, 10256.21, 7, 2017);
INSERT INTO `titik_kecamatan` VALUES (77, 1, 16, 22240.69, 3, 2017);
INSERT INTO `titik_kecamatan` VALUES (78, 11, 16, 21889.58, 4, 2017);
INSERT INTO `titik_kecamatan` VALUES (79, 9, 16, 24684.43, 9, 2017);
INSERT INTO `titik_kecamatan` VALUES (80, 16, 16, 1, 2, 2017);
INSERT INTO `titik_kecamatan` VALUES (81, 10, 17, 11433.11, 10, 2017);
INSERT INTO `titik_kecamatan` VALUES (82, 18, 17, 5419.868, 1, 2017);
INSERT INTO `titik_kecamatan` VALUES (83, 3, 17, 14172.32, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (84, 14, 17, 6310.784, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (85, 17, 17, 1, 18, 2017);
INSERT INTO `titik_kecamatan` VALUES (86, 2, 18, 10036.62, 2, 2017);
INSERT INTO `titik_kecamatan` VALUES (87, 10, 18, 10786.06, 10, 2017);
INSERT INTO `titik_kecamatan` VALUES (88, 17, 18, 5542.953, 18, 2017);
INSERT INTO `titik_kecamatan` VALUES (89, 14, 18, 9631.985, 0, 2017);
INSERT INTO `titik_kecamatan` VALUES (90, 18, 18, 1, 1, 2017);
INSERT INTO `titik_kecamatan` VALUES (91, 16, 19, 10256.21, 2, 2017);
INSERT INTO `titik_kecamatan` VALUES (92, 1, 19, 18145.39, 3, 2017);
INSERT INTO `titik_kecamatan` VALUES (93, 11, 19, 12513.31, 4, 2017);
INSERT INTO `titik_kecamatan` VALUES (94, 9, 19, 14448.87, 9, 2017);
INSERT INTO `titik_kecamatan` VALUES (95, 19, 19, 1, 7, 2017);
INSERT INTO `titik_kecamatan` VALUES (96, 19, NULL, NULL, NULL, NULL);
INSERT INTO `titik_kecamatan` VALUES (97, 19, 1, 18145.39, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (98, 11, 1, 13613.72, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (99, 6, 1, 15758.41, 0, 2018);
INSERT INTO `titik_kecamatan` VALUES (100, 16, 1, 22240.69, 0, 2018);
INSERT INTO `titik_kecamatan` VALUES (101, 1, 1, 1, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (102, 3, 2, 6627.458, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (103, 18, 2, 10289.04, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (104, 10, 2, 19900.06, 3, 2018);
INSERT INTO `titik_kecamatan` VALUES (105, 17, 2, 14979.83, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (106, 2, 2, 1, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (107, 2, 3, 6432.708, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (108, 18, 3, 11662.89, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (109, 14, 3, 11721.15, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (110, 5, 3, 11332.33, 6, 2018);
INSERT INTO `titik_kecamatan` VALUES (111, 3, 3, 1, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (112, 16, 4, 27439.93, 0, 2018);
INSERT INTO `titik_kecamatan` VALUES (113, 19, 4, 31851.64, 0, 2018);
INSERT INTO `titik_kecamatan` VALUES (114, 1, 4, 22466.09, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (115, 11, 4, 34630.78, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (116, 4, 4, 1, 0, 2018);
INSERT INTO `titik_kecamatan` VALUES (117, 3, 5, 11316.68, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (118, 14, 5, 13198.33, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (119, 8, 5, 8677.881, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (120, 12, 5, 14413.4, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (121, 5, 5, 1, 6, 2018);
INSERT INTO `titik_kecamatan` VALUES (122, 1, 6, 15758.41, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (123, 11, 6, 7263.37, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (124, 9, 6, 9536.66, 5, 2018);
INSERT INTO `titik_kecamatan` VALUES (125, 19, 6, 19776.19, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (126, 6, 6, 1, 0, 2018);
INSERT INTO `titik_kecamatan` VALUES (127, 4, 7, 38726.87, 0, 2018);
INSERT INTO `titik_kecamatan` VALUES (128, 1, 7, 32494.76, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (129, 11, 7, 41972.58, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (130, 6, 7, 38181.75, 0, 2018);
INSERT INTO `titik_kecamatan` VALUES (131, 7, 7, 1, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (132, 5, 8, 8701.248, 6, 2018);
INSERT INTO `titik_kecamatan` VALUES (133, 14, 8, 10946.43, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (134, 12, 8, 9705.283, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (135, 13, 8, 9531.636, 0, 2018);
INSERT INTO `titik_kecamatan` VALUES (136, 8, 8, 1, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (137, 6, 9, 9536.66, 0, 2018);
INSERT INTO `titik_kecamatan` VALUES (138, 11, 9, 6650.104, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (139, 10, 9, 13179.2, 3, 2018);
INSERT INTO `titik_kecamatan` VALUES (140, 19, 9, 14448.87, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (141, 9, 9, 1, 5, 2018);
INSERT INTO `titik_kecamatan` VALUES (142, 9, 10, 13179.2, 5, 2018);
INSERT INTO `titik_kecamatan` VALUES (143, 18, 10, 10921.49, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (144, 17, 10, 11433.11, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (145, 14, 10, 17740.55, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (146, 10, 10, 1, 3, 2018);
INSERT INTO `titik_kecamatan` VALUES (147, 9, 11, 6946.561, 5, 2018);
INSERT INTO `titik_kecamatan` VALUES (148, 6, 11, 7217.253, 0, 2018);
INSERT INTO `titik_kecamatan` VALUES (149, 19, 11, 12573.61, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (150, 1, 11, 13317.05, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (151, 11, 11, 1, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (152, 5, 12, 14398.17, 6, 2018);
INSERT INTO `titik_kecamatan` VALUES (153, 14, 12, 20524.86, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (154, 8, 12, 9572.06, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (155, 13, 12, 12851.46, 0, 2018);
INSERT INTO `titik_kecamatan` VALUES (156, 12, 12, 1, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (157, 12, 13, 12750.42, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (158, 8, 13, 9338.504, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (159, 5, 13, 17980.95, 6, 2018);
INSERT INTO `titik_kecamatan` VALUES (160, 14, 13, 13439.49, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (161, 13, 13, 1, 0, 2018);
INSERT INTO `titik_kecamatan` VALUES (162, 17, 14, 6279.003, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (163, 8, 14, 10971.74, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (164, 5, 14, 13380.15, 6, 2018);
INSERT INTO `titik_kecamatan` VALUES (165, 18, 14, 9563.955, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (166, 14, 14, 1, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (167, 6, 15, 29491.37, 0, 2018);
INSERT INTO `titik_kecamatan` VALUES (168, 9, 15, 30926.9, 5, 2018);
INSERT INTO `titik_kecamatan` VALUES (169, 10, 15, 31805.36, 3, 2018);
INSERT INTO `titik_kecamatan` VALUES (170, 17, 15, 38275.31, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (171, 15, 15, 1, 11, 2018);
INSERT INTO `titik_kecamatan` VALUES (172, 19, 16, 10256.21, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (173, 1, 16, 22240.69, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (174, 11, 16, 21889.58, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (175, 9, 16, 24684.43, 5, 2018);
INSERT INTO `titik_kecamatan` VALUES (176, 16, 16, 1, 0, 2018);
INSERT INTO `titik_kecamatan` VALUES (177, 10, 17, 11433.11, 3, 2018);
INSERT INTO `titik_kecamatan` VALUES (178, 18, 17, 5419.868, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (179, 3, 17, 14172.32, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (180, 14, 17, 6310.784, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (181, 17, 17, 1, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (182, 2, 18, 10036.62, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (183, 10, 18, 10786.06, 3, 2018);
INSERT INTO `titik_kecamatan` VALUES (184, 17, 18, 5542.953, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (185, 14, 18, 9631.985, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (186, 18, 18, 1, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (187, 16, 19, 10256.21, 0, 2018);
INSERT INTO `titik_kecamatan` VALUES (188, 1, 19, 18145.39, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (189, 11, 19, 12513.31, 1, 2018);
INSERT INTO `titik_kecamatan` VALUES (190, 9, 19, 14448.87, 5, 2018);
INSERT INTO `titik_kecamatan` VALUES (191, 19, 19, 1, 2, 2018);
INSERT INTO `titik_kecamatan` VALUES (192, 19, 1, 18145.39, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (193, 11, 1, 13613.72, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (194, 6, 1, 15758.41, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (195, 16, 1, 22240.69, 1, 2019);
INSERT INTO `titik_kecamatan` VALUES (196, 1, 1, 1, 0, 2019);
INSERT INTO `titik_kecamatan` VALUES (197, 3, 2, 6627.458, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (198, 18, 2, 10289.04, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (199, 10, 2, 19900.06, 0, 2019);
INSERT INTO `titik_kecamatan` VALUES (200, 17, 2, 14979.83, 8, 2019);
INSERT INTO `titik_kecamatan` VALUES (201, 2, 2, 1, 3, 2019);
INSERT INTO `titik_kecamatan` VALUES (202, 2, 3, 6432.708, 3, 2019);
INSERT INTO `titik_kecamatan` VALUES (203, 18, 3, 11662.89, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (204, 14, 3, 11721.15, 1, 2019);
INSERT INTO `titik_kecamatan` VALUES (205, 5, 3, 11332.33, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (206, 3, 3, 1, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (207, 16, 4, 27439.93, 1, 2019);
INSERT INTO `titik_kecamatan` VALUES (208, 19, 4, 31851.64, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (209, 1, 4, 22466.09, 0, 2019);
INSERT INTO `titik_kecamatan` VALUES (210, 11, 4, 34630.78, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (211, 4, 4, 1, 3, 2019);
INSERT INTO `titik_kecamatan` VALUES (212, 3, 5, 11316.68, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (213, 14, 5, 13198.33, 1, 2019);
INSERT INTO `titik_kecamatan` VALUES (214, 8, 5, 8677.881, 3, 2019);
INSERT INTO `titik_kecamatan` VALUES (215, 12, 5, 14413.4, 5, 2019);
INSERT INTO `titik_kecamatan` VALUES (216, 5, 5, 1, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (217, 1, 6, 15758.41, 0, 2019);
INSERT INTO `titik_kecamatan` VALUES (218, 11, 6, 7263.37, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (219, 9, 6, 9536.66, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (220, 19, 6, 19776.19, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (221, 6, 6, 1, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (222, 4, 7, 38726.87, 3, 2019);
INSERT INTO `titik_kecamatan` VALUES (223, 1, 7, 32494.76, 0, 2019);
INSERT INTO `titik_kecamatan` VALUES (224, 11, 7, 41972.58, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (225, 6, 7, 38181.75, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (226, 7, 7, 1, 0, 2019);
INSERT INTO `titik_kecamatan` VALUES (227, 5, 8, 8701.248, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (228, 14, 8, 10946.43, 1, 2019);
INSERT INTO `titik_kecamatan` VALUES (229, 12, 8, 9705.283, 5, 2019);
INSERT INTO `titik_kecamatan` VALUES (230, 13, 8, 9531.636, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (231, 8, 8, 1, 3, 2019);
INSERT INTO `titik_kecamatan` VALUES (232, 6, 9, 9536.66, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (233, 11, 9, 6650.104, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (234, 10, 9, 13179.2, 0, 2019);
INSERT INTO `titik_kecamatan` VALUES (235, 19, 9, 14448.87, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (236, 9, 9, 1, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (237, 9, 10, 13179.2, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (238, 18, 10, 10921.49, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (239, 17, 10, 11433.11, 8, 2019);
INSERT INTO `titik_kecamatan` VALUES (240, 14, 10, 17740.55, 1, 2019);
INSERT INTO `titik_kecamatan` VALUES (241, 10, 10, 1, 0, 2019);
INSERT INTO `titik_kecamatan` VALUES (242, 9, 11, 6946.561, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (243, 6, 11, 7217.253, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (244, 19, 11, 12573.61, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (245, 1, 11, 13317.05, 0, 2019);
INSERT INTO `titik_kecamatan` VALUES (246, 11, 11, 1, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (247, 5, 12, 14398.17, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (248, 14, 12, 20524.86, 1, 2019);
INSERT INTO `titik_kecamatan` VALUES (249, 8, 12, 9572.06, 3, 2019);
INSERT INTO `titik_kecamatan` VALUES (250, 13, 12, 12851.46, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (251, 12, 12, 1, 5, 2019);
INSERT INTO `titik_kecamatan` VALUES (252, 12, 13, 12750.42, 5, 2019);
INSERT INTO `titik_kecamatan` VALUES (253, 8, 13, 9338.504, 3, 2019);
INSERT INTO `titik_kecamatan` VALUES (254, 5, 13, 17980.95, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (255, 14, 13, 13439.49, 1, 2019);
INSERT INTO `titik_kecamatan` VALUES (256, 13, 13, 1, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (257, 17, 14, 6279.003, 8, 2019);
INSERT INTO `titik_kecamatan` VALUES (258, 8, 14, 10971.74, 3, 2019);
INSERT INTO `titik_kecamatan` VALUES (259, 5, 14, 13380.15, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (260, 18, 14, 9563.955, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (261, 14, 14, 1, 1, 2019);
INSERT INTO `titik_kecamatan` VALUES (262, 6, 15, 29491.37, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (263, 9, 15, 30926.9, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (264, 10, 15, 31805.36, 0, 2019);
INSERT INTO `titik_kecamatan` VALUES (265, 17, 15, 38275.31, 8, 2019);
INSERT INTO `titik_kecamatan` VALUES (266, 15, 15, 1, 3, 2019);
INSERT INTO `titik_kecamatan` VALUES (267, 19, 16, 10256.21, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (268, 1, 16, 22240.69, 0, 2019);
INSERT INTO `titik_kecamatan` VALUES (269, 11, 16, 21889.58, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (270, 9, 16, 24684.43, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (271, 16, 16, 1, 1, 2019);
INSERT INTO `titik_kecamatan` VALUES (272, 10, 17, 11433.11, 0, 2019);
INSERT INTO `titik_kecamatan` VALUES (273, 18, 17, 5419.868, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (274, 3, 17, 14172.32, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (275, 14, 17, 6310.784, 1, 2019);
INSERT INTO `titik_kecamatan` VALUES (276, 17, 17, 1, 8, 2019);
INSERT INTO `titik_kecamatan` VALUES (277, 2, 18, 10036.62, 3, 2019);
INSERT INTO `titik_kecamatan` VALUES (278, 10, 18, 10786.06, 0, 2019);
INSERT INTO `titik_kecamatan` VALUES (279, 17, 18, 5542.953, 8, 2019);
INSERT INTO `titik_kecamatan` VALUES (280, 14, 18, 9631.985, 1, 2019);
INSERT INTO `titik_kecamatan` VALUES (281, 18, 18, 1, 2, 2019);
INSERT INTO `titik_kecamatan` VALUES (282, 16, 19, 10256.21, 1, 2019);
INSERT INTO `titik_kecamatan` VALUES (283, 1, 19, 18145.39, 0, 2019);
INSERT INTO `titik_kecamatan` VALUES (284, 11, 19, 12513.31, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (285, 9, 19, 14448.87, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (286, 19, 19, 1, 4, 2019);
INSERT INTO `titik_kecamatan` VALUES (287, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `titik_kecamatan` VALUES (291, 5, 1, 18145.39, 3, 2022);
INSERT INTO `titik_kecamatan` VALUES (292, 3, 1, 0, 0, 2022);
INSERT INTO `titik_kecamatan` VALUES (296, 18, 2, 0, 0, 2019);
INSERT INTO `titik_kecamatan` VALUES (302, 19, 1, 18145.39, 6, 2021);
INSERT INTO `titik_kecamatan` VALUES (303, 10, 2, 19900.06, 0, 2021);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `no_hp` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_active` int NULL DEFAULT NULL,
  `role` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date_created` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, 'munir sy', 'sy.munir@gmail.com', '$2y$10$IXlQRxWmlgJo/vZegjUZzOUaiIJj/cVt6BtaOSx/g0Tvyby.jN8xi', '08981385795', 'Tanjung Raya 2', 1, 'User', 'graduate-icon-png-28-2.png', '2021-07-15 02:48:08');
INSERT INTO `users` VALUES (3, 'misbahulms', 'misbahulms@gmail.com', '$2y$10$KtzYCotGlxwfnspz5rcmVuEQS8h/rP8S0eCSyMVffyLvxIKXgABpG', '08981385790', 'Sungai Jawi', 1, 'Admin', 'graduate-icon-png-28-2.png', '2021-07-15 03:19:11');
INSERT INTO `users` VALUES (4, 'syarif', 'sya.munir@gmail.com', '$2y$10$aywSJZswACjXFSRBa07y0eV8xu7qHGVR1CbmBeUilKl5u8ksjRW9O', '08981385797', 'Sungai Jawi', 1, 'User', 'default.png', '2021-10-27 01:22:36');
INSERT INTO `users` VALUES (11, 'andreas', 'aan@gmail.com', '$2y$12$zIc8IcWRTTSb5gOWQMRezeedEODFc8y748MzjGdDZ10XIc5TEw2Sa', '089789453455', 'kobar', 1, 'User', 'image_1648532856.png', '2022-03-29 07:47:36');
INSERT INTO `users` VALUES (12, 'andreasii', 'aan@gmail.com', '$2y$12$E/krYv9I54M4qDd92E3Su.BMtbVIYk3pUcmmMj0q5vMaLt35IWQPy', '089789453455', 'kobar', 1, NULL, 'no_file', '2022-04-11 21:29:08');
INSERT INTO `users` VALUES (13, 'andreasii', 'aan@gmail.com', '$2y$12$zEP53BT4O9PjmpZGUYg8z.HhrIyQ1XMxvtSLCxEs84YXXnPvkp8PW', '089789453455', 'kobar', 1, NULL, 'no_file', '2022-04-11 21:29:30');
INSERT INTO `users` VALUES (14, 'andreasii', 'aan@gmail.com', '$2y$12$KH2rLWFBtXiEIVFvBhAm6.iPzmedzEvEWY6paS/jzR/bHt0UqACsq', '089789453455', 'kobar', 1, NULL, 'image_1649687389.png', '2022-04-11 21:29:49');
INSERT INTO `users` VALUES (15, 'andreasii', 'aan@gmail.com', '$2y$12$zm2HQgyMh1LEfQPK/3ERc.YXbyHkcbkURkKelSoh.0imgCZEXgZnq', '089789453455', 'kobar', 1, 'User', NULL, '2022-04-11 23:19:22');
INSERT INTO `users` VALUES (16, 'andreasii', 'aan@gmail.com', '$2y$12$TtyMO42UK25SsZ.YpELMiOjyXGtjYS9k2IT5hI/0AMsWz9vzjiN.C', '089789453455', 'kobar', 1, 'User', NULL, '2022-04-11 23:37:46');
INSERT INTO `users` VALUES (17, 'andreasii', 'aan@gmail.com', '$2y$12$IKF6THEITnmKdpjaYHHmgO7g8ULucuduaCWphopR0NOsZelPGdPLe', '089789453455', 'kobar', 1, 'User', NULL, '2022-04-11 23:40:12');
INSERT INTO `users` VALUES (18, 'andri', 'aan@gmail.com', '$2y$12$HeuZyp/rgeFXJOfwtbxpJuNAcflYQz282FGTCGSjEpT3dWdYzna5a', '089789453455', 'kobar', 1, 'User', NULL, '2022-04-15 21:06:02');

SET FOREIGN_KEY_CHECKS = 1;
