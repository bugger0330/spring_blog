-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.7.3-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- test 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `test`;
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `test`;

-- 테이블 test.board_mst 구조 내보내기
DROP TABLE IF EXISTS `board_mst`;
CREATE TABLE IF NOT EXISTS `board_mst` (
  `board_code` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`board_code`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.board_mst:~37 rows (대략적) 내보내기
DELETE FROM `board_mst`;
/*!40000 ALTER TABLE `board_mst` DISABLE KEYS */;
INSERT INTO `board_mst` (`board_code`, `username`, `title`, `content`, `count`) VALUES
	(157, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(158, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(159, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(160, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(161, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(162, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(163, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(164, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(165, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(166, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(167, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(168, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(169, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(170, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(171, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(172, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(173, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(174, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(175, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(176, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(177, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(178, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(179, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(180, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(181, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(182, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(183, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(184, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(185, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(186, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(187, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(188, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(189, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(190, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(191, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(192, 'ddd', '안녕', 'ㅎㅎㅎ', 1),
	(193, 'ddd', '안녕', 'ㅎㅎㅎ', 1);
/*!40000 ALTER TABLE `board_mst` ENABLE KEYS */;

-- 테이블 test.order1 구조 내보내기
DROP TABLE IF EXISTS `order1`;
CREATE TABLE IF NOT EXISTS `order1` (
  `product_code` int(11) NOT NULL,
  `product_img1` varchar(500) DEFAULT NULL,
  `product_title` varchar(500) NOT NULL,
  `product_price` varchar(500) NOT NULL,
  `username` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.order1:~0 rows (대략적) 내보내기
DELETE FROM `order1`;
/*!40000 ALTER TABLE `order1` DISABLE KEYS */;
INSERT INTO `order1` (`product_code`, `product_img1`, `product_title`, `product_price`, `username`) VALUES
	(31, '840de915_df8b_469f_aa5e_60069ff3fcddbeach-g9a04b8df1_1280.jpg', 'ddd', '223', 'eee'),
	(32, '0c44c1c4_0a3d_43f0_9d7a_0afab3ffaff0상품.jpg', '46745674675', '456456465465', 'eee');
/*!40000 ALTER TABLE `order1` ENABLE KEYS */;

-- 테이블 test.product 구조 내보내기
DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_code` int(11) NOT NULL AUTO_INCREMENT,
  `product_username` varchar(50) NOT NULL,
  `product_phone` varchar(50) DEFAULT NULL,
  `product_title` varchar(50) NOT NULL,
  `product_content` varchar(500) NOT NULL,
  `product_price` varchar(500) NOT NULL,
  `product_delivery` varchar(500) DEFAULT NULL COMMENT '결제방법 - 택배',
  `product_status` varchar(500) DEFAULT NULL COMMENT '제품상태',
  `product_exchange` varchar(500) DEFAULT NULL COMMENT '교환/환불',
  `product_select` varchar(500) DEFAULT NULL COMMENT '카테고리',
  `product_img1` varchar(500) DEFAULT NULL,
  `product_img2` varchar(500) DEFAULT NULL,
  `product_img3` varchar(500) DEFAULT NULL,
  `product_img4` varchar(500) DEFAULT NULL,
  `product_img5` varchar(500) DEFAULT NULL,
  `product_img6` varchar(500) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`product_code`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.product:~3 rows (대략적) 내보내기
DELETE FROM `product`;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`product_code`, `product_username`, `product_phone`, `product_title`, `product_content`, `product_price`, `product_delivery`, `product_status`, `product_exchange`, `product_select`, `product_img1`, `product_img2`, `product_img3`, `product_img4`, `product_img5`, `product_img6`, `create_date`) VALUES
	(30, 'ddd', NULL, 'ddd', 'ddd', '123213', '택배거리', '새 상품', '불가', '스마트폰', '65b6703e_c201_4ba0_b6f5_51ee4ff3a5a6kittens-gdf1b4683f_640.jpg', 'ac2e2be9_6a58_4c9d_b748_8414299277eb베스트 아이콘.PNG', 'a6620487_7138_499a_acb7_24d92b473664상품.jpg', NULL, NULL, NULL, '2022-06-22 15:51:15'),
	(31, 'ddd', 'ddd', 'ddd', 'ddd', '223', '택배거리', '새 상품', '불가', '스마트폰', '840de915_df8b_469f_aa5e_60069ff3fcddbeach-g9a04b8df1_1280.jpg', '348b7d8a_d044_49de_a7c3_542af553d872kittens-gdf1b4683f_640.jpg', NULL, NULL, NULL, NULL, '2022-06-22 16:13:31'),
	(32, 'ddd', '010-1111-1222', '46745674675', '645465465654', '456456465465', '택배거리', '새 상품', '불가', '스마트폰', '0c44c1c4_0a3d_43f0_9d7a_0afab3ffaff0상품.jpg', '85087ff5_4592_40db_afc5_fb34e101c57d오른쪽 화살표.PNG', NULL, NULL, NULL, NULL, '2022-06-22 16:15:05');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- 테이블 test.user_dtl 구조 내보내기
DROP TABLE IF EXISTS `user_dtl`;
CREATE TABLE IF NOT EXISTS `user_dtl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usercode` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nickname` varchar(50) DEFAULT '',
  `address` varchar(50) DEFAULT '',
  `gender` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `usercode_for_user_detail` (`usercode`),
  CONSTRAINT `usercode_for_user_detail` FOREIGN KEY (`usercode`) REFERENCES `user_mst` (`usercode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.user_dtl:~1 rows (대략적) 내보내기
DELETE FROM `user_dtl`;
/*!40000 ALTER TABLE `user_dtl` DISABLE KEYS */;
INSERT INTO `user_dtl` (`id`, `usercode`, `username`, `nickname`, `address`, `gender`) VALUES
	(37, 1018, 'ddd', 'ddd', 'ddd', NULL),
	(38, 1019, 'eee', 'eee', 'eee', NULL);
/*!40000 ALTER TABLE `user_dtl` ENABLE KEYS */;

-- 테이블 test.user_mst 구조 내보내기
DROP TABLE IF EXISTS `user_mst`;
CREATE TABLE IF NOT EXISTS `user_mst` (
  `usercode` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `address2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`usercode`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1020 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.user_mst:~2 rows (대략적) 내보내기
DELETE FROM `user_mst`;
/*!40000 ALTER TABLE `user_mst` DISABLE KEYS */;
INSERT INTO `user_mst` (`usercode`, `username`, `password`, `name`, `nickname`, `email`, `phone`, `address`, `address2`) VALUES
	(1018, 'ddd', '$2a$10$YpOGJkOZ/a4cl5YNR3OvdO0pdJyGrsLzh7wgNEb830x4COe1Y834y', 'ddd', 'ddd', 'ddd', '010-1111-1222', 'ddd', ''),
	(1019, 'eee', '$2a$10$2YwBlaPDQFunZJQQeLuYQ.gK4AgfboL3pmvLvtrbQ69ayycHF06Z6', 'eee', 'eee', 'eee', '010-1111-2222', 'eee', 'eee');
/*!40000 ALTER TABLE `user_mst` ENABLE KEYS */;

-- 트리거 test.user_mst_after_insert 구조 내보내기
DROP TRIGGER IF EXISTS `user_mst_after_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `user_mst_after_insert` AFTER INSERT ON `user_mst` FOR EACH ROW BEGIN
	INSERT into
		user_dtl
	VALUES(
		0,
		NEW.usercode,
		NEW.username,
		NEW.nickname,
		NEW.address,
		NULL
	);
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- 트리거 test.user_mst_before_delete 구조 내보내기
DROP TRIGGER IF EXISTS `user_mst_before_delete`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `user_mst_before_delete` BEFORE DELETE ON `user_mst` FOR EACH ROW BEGIN
	DELETE FROM user_dtl
	WHERE OLD.username = username;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
