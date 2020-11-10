/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : bookcar

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 10/11/2020 20:57:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bang_quy_doi
-- ----------------------------
DROP TABLE IF EXISTS `bang_quy_doi`;
CREATE TABLE `bang_quy_doi`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `point` int NULL DEFAULT NULL,
  `discount` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bang_quy_doi
-- ----------------------------
INSERT INTO `bang_quy_doi` VALUES (1, 1000, 5);
INSERT INTO `bang_quy_doi` VALUES (2, 2000, 8);
INSERT INTO `bang_quy_doi` VALUES (3, 4000, 10);
INSERT INTO `bang_quy_doi` VALUES (4, 6000, 15);
INSERT INTO `bang_quy_doi` VALUES (5, 8000, 20);

-- ----------------------------
-- Table structure for ben
-- ----------------------------
DROP TABLE IF EXISTS `ben`;
CREATE TABLE `ben`  (
  `id` int NOT NULL,
  `ten_ben` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dia_chi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ben
-- ----------------------------
INSERT INTO `ben` VALUES (1, 'Bến Xe TP.HCM', 'TP.HCM', NULL);
INSERT INTO `ben` VALUES (10, 'Bến xe Bình Thuận', 'Bình Thuận', NULL);
INSERT INTO `ben` VALUES (20, 'Bến xe Phú Yên', 'Phú Yên', NULL);
INSERT INTO `ben` VALUES (21, 'Bến xe Bình Định', 'Bình Định', NULL);
INSERT INTO `ben` VALUES (30, 'Bến xe Quảng Trị', 'Quảng Trị', NULL);
INSERT INTO `ben` VALUES (50, 'Bến xe Hà Nội', 'Hà Nội', NULL);
INSERT INTO `ben` VALUES (60, 'Bến xe Lạng Sơn', 'Lạng Sơn', NULL);

-- ----------------------------
-- Table structure for diem_don
-- ----------------------------
DROP TABLE IF EXISTS `diem_don`;
CREATE TABLE `diem_don`  (
  `id` int NOT NULL,
  `id_ben_xe` int NULL DEFAULT NULL,
  `dia_chi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of diem_don
-- ----------------------------
INSERT INTO `diem_don` VALUES (1, 1, 'Ngã tư hàng xanh');
INSERT INTO `diem_don` VALUES (2, 1, 'Ngã tư thủ đức');
INSERT INTO `diem_don` VALUES (3, 2, 'Chợ Phan Thiết');
INSERT INTO `diem_don` VALUES (4, 2, 'Ngã 3 46');

-- ----------------------------
-- Table structure for giuong
-- ----------------------------
DROP TABLE IF EXISTS `giuong`;
CREATE TABLE `giuong`  (
  `stt` int NOT NULL,
  `id_tuyen_xe` int NULL DEFAULT NULL,
  `ngay` date NULL DEFAULT NULL,
  `gio` int NULL DEFAULT NULL,
  `trang_thai` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of giuong
-- ----------------------------
INSERT INTO `giuong` VALUES (23, 1, '2020-10-10', 8, 1);

-- ----------------------------
-- Table structure for role_detal
-- ----------------------------
DROP TABLE IF EXISTS `role_detal`;
CREATE TABLE `role_detal`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `id_role` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_detal
-- ----------------------------
INSERT INTO `role_detal` VALUES (1, 3, 'ROLE_ADMIN');
INSERT INTO `role_detal` VALUES (2, 5, 'ROLE_USER');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `role` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`role`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('ROLE_ADMIN');
INSERT INTO `roles` VALUES ('ROLE_BOSS');
INSERT INTO `roles` VALUES ('ROLE_USER');

-- ----------------------------
-- Table structure for tram_dung
-- ----------------------------
DROP TABLE IF EXISTS `tram_dung`;
CREATE TABLE `tram_dung`  (
  `id` int NOT NULL,
  `ten_tram` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dia_chi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tram_dung
-- ----------------------------
INSERT INTO `tram_dung` VALUES (5, 'Trạm Đồng Nai', 'Xuân Lộc- DN');

-- ----------------------------
-- Table structure for tuyen_xe
-- ----------------------------
DROP TABLE IF EXISTS `tuyen_xe`;
CREATE TABLE `tuyen_xe`  (
  `id` int NOT NULL,
  `diem_di` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `diem_toi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `khoang_cach` int NULL DEFAULT NULL,
  `gia_ca` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tuyen_xe
-- ----------------------------
INSERT INTO `tuyen_xe` VALUES (1, 'Bến Xe TP.HCM', 'Bến xe Bình Thuận', 150, '100');
INSERT INTO `tuyen_xe` VALUES (2, 'Bến Xe TP.HCM', 'Bến xe Phú Yên', 800, '300');
INSERT INTO `tuyen_xe` VALUES (3, 'Bến Xe TP.HCM', 'Bến xe Bình Định', 900, '350');
INSERT INTO `tuyen_xe` VALUES (4, 'Bến xe Bình Thuận', 'Bến Xe TP.HCM', 150, '100');
INSERT INTO `tuyen_xe` VALUES (5, 'Bến xe Phú Yên', 'Bến Xe TP.HCM', 800, '300');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tai_khoan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mat_khau` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ten_kh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sdt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (3, 'hoa1234', '7264d77d95e52ae1a000071a9795e8d5', 'hoa', 'hoa1234', '2020-11-06 00:28:09', '2020-11-06 00:28:09');
INSERT INTO `user` VALUES (5, 'dinh1234', '81dc9bdb52d04dc20036dbd8313ed055', 'Đỉnh', 'dinh1234', '2020-11-10 14:29:13', '2020-11-10 14:29:13');

-- ----------------------------
-- Table structure for ve
-- ----------------------------
DROP TABLE IF EXISTS `ve`;
CREATE TABLE `ve`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `gio_chay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gio_ket_thuc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_tuyen_xe` int NULL DEFAULT NULL,
  `sdt_khach_hang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gia_ve` int NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `trang_thai` int NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ve
-- ----------------------------
INSERT INTO `ve` VALUES (1, '8', '20', 1, '090909', NULL, '3333', 150, '2020-11-05 23:48:18', 0, '2020-11-05 23:48:28', '2020-11-05 23:50:40');

-- ----------------------------
-- Table structure for xe
-- ----------------------------
DROP TABLE IF EXISTS `xe`;
CREATE TABLE `xe`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten_xe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hang_xe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tuyen_san_sang_id` int NULL DEFAULT NULL,
  `tuyen_off_id` int NULL DEFAULT NULL,
  `gio_chay` int NULL DEFAULT NULL,
  `trang_thai` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xe
-- ----------------------------
INSERT INTO `xe` VALUES (1, 'HuynhDai01', 'huynhdai', 1, 4, 7, 1);
INSERT INTO `xe` VALUES (2, 'HuynhDai02', 'huynhdai', 2, 5, 7, 1);
INSERT INTO `xe` VALUES (3, 'Huynhdai03', 'huynhdai', 1, 4, 8, 1);
INSERT INTO `xe` VALUES (4, 'Mecerdec01', 'Mecerdec', 2, 5, 8, 1);

-- ----------------------------
-- Procedure structure for get_list_roles_for_user
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_list_roles_for_user`;
delimiter ;;
CREATE PROCEDURE `get_list_roles_for_user`(IN `idUser` INT(11))
  READS SQL DATA 
BEGIN
 SELECT r.id_role
 FROM role_detal AS r
 WHERE r.id_user = `idUser`;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_ben_toi
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_ben_toi`;
delimiter ;;
CREATE PROCEDURE `sp_get_ben_toi`(IN `benDiId` INT(11))
  READS SQL DATA 
BEGIN
 
DECLARE `diemdi` VARCHAR(255);

	SELECT b.ten_ben
	INTO `diemdi`
	FROM ben AS b
	WHERE b.id = `benDiId`;

	SELECT b.*
	FROM tuyen_xe as t 
			 INNER JOIN ben as b ON t.diem_toi = b.ten_ben
	WHERE t.diem_di = `diemdi`;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_carbook
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_carbook`;
delimiter ;;
CREATE PROCEDURE `sp_get_carbook`(IN `idcarbook` INT(11))
BEGIN

	SELECT * 
	FROM chuyenxe AS c
	WHERE c.id=`idcarbook`;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_giuong_by_tuyen_xe_id
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_giuong_by_tuyen_xe_id`;
delimiter ;;
CREATE PROCEDURE `sp_get_giuong_by_tuyen_xe_id`(IN `tuyenXeId` INT,
							IN `ngay` VARCHAR(20),
							IN `gio` INT)
  READS SQL DATA 
BEGIN

			drop temporary table if exists `Ordinal`;		
			CREATE TEMPORARY TABLE `Ordinal` (`n` int(10) unsigned NOT NULL AUTO_INCREMENT, PRIMARY KEY (`n`)
);
INSERT INTO `Ordinal` (`n`)
VALUES (NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL),(NULL);

					select  o2.stt, if(g2.trang_thai is null,0,g2.trang_thai) as `trang_thai` from
				   (select g.stt as stt,
									 g.trang_thai as trang_thai
					from giuong AS g
					where g.id_tuyen_xe = `tuyenXeId`
								and g.gio = `gio`
								AND g.ngay= `ngay`)as g2
								RIGHT JOIN
								(select o.n as `stt`
								 from `Ordinal` as o where `n`<=24
								 order by `n` asc)as o2 on o2.stt = g2.stt;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_hour_tuyenxe
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_hour_tuyenxe`;
delimiter ;;
CREATE PROCEDURE `sp_get_hour_tuyenxe`(IN `idTuyenXe` INT(11))
BEGIN

	SELECT	x.gio_chay 
	FROM		xe AS x
	WHERE 	c.id=`idcarbook`;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_tram_dung_for_tuyen_xe
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_tram_dung_for_tuyen_xe`;
delimiter ;;
CREATE PROCEDURE `sp_get_tram_dung_for_tuyen_xe`(IN `diemDiId` INT(11),
IN `diemToiId` INT(11))
BEGIN

	SELECT *
	FROM tram_dung AS t
	WHERE t.id BETWEEN (`diemDiId`+1) AND (`diemToiId`-1);
	
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
