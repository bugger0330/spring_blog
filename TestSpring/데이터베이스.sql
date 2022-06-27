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
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`board_code`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.board_mst:~1 rows (대략적) 내보내기
DELETE FROM `board_mst`;
/*!40000 ALTER TABLE `board_mst` DISABLE KEYS */;
INSERT INTO `board_mst` (`board_code`, `username`, `title`, `content`, `count`, `create_date`, `update_date`) VALUES
	(271, 'eee', 'test1234', 'testaaaaa1234', 0, '2022-06-27 09:33:23', '2022-06-27 09:33:23');
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
/*!40000 ALTER TABLE `order1` ENABLE KEYS */;

-- 테이블 test.order2 구조 내보내기
DROP TABLE IF EXISTS `order2`;
CREATE TABLE IF NOT EXISTS `order2` (
  `product_code` int(11) DEFAULT NULL,
  `product_img1` varchar(500) DEFAULT NULL,
  `product_title` varchar(500) DEFAULT NULL,
  `product_price` varchar(500) DEFAULT NULL,
  `username` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.order2:~2 rows (대략적) 내보내기
DELETE FROM `order2`;
/*!40000 ALTER TABLE `order2` DISABLE KEYS */;
INSERT INTO `order2` (`product_code`, `product_img1`, `product_title`, `product_price`, `username`) VALUES
	(47, '8c942a18_9444_4341_ab57_4714016fd12barrow_1.png', 'sdds', '22원', 'eee'),
	(49, '21285403_870e_43a3_bae6_267d931f3a06오른쪽 화살표.PNG', 'dsffds', '222원', 'eee');
/*!40000 ALTER TABLE `order2` ENABLE KEYS */;

-- 테이블 test.order_info 구조 내보내기
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE IF NOT EXISTS `order_info` (
  `order_code` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `phone2` varchar(50) NOT NULL,
  `address_num` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `address2` varchar(500) NOT NULL,
  `requests` varchar(500) DEFAULT NULL,
  `all_price` varchar(50) NOT NULL,
  PRIMARY KEY (`order_code`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.order_info:~5 rows (대략적) 내보내기
DELETE FROM `order_info`;
/*!40000 ALTER TABLE `order_info` DISABLE KEYS */;
INSERT INTO `order_info` (`order_code`, `username`, `name`, `phone`, `phone2`, `address_num`, `address`, `address2`, `requests`, `all_price`) VALUES
	(20, 'eee', 'ds', 'ds', 'ds', '04427', '서울 용산구 양녕로 445', 'sddds', 'sdsd', '679'),
	(21, 'eee', 'ds', 'ds', 'ds', '04427', '서울 용산구 양녕로 445', 'sddds', 'sdsd', '679'),
	(22, 'eee', 'ds', 'ds', 'ds', '04427', '서울 용산구 양녕로 445', 'sddds', 'sdsd', '679'),
	(23, 'eee', 'ds', 'ds', 'ds', '04427', '서울 용산구 양녕로 445', 'sddds', 'sdsd', '679'),
	(24, 'eee', 'sd', 'sd', 'sd', '08854', '서울 관악구 난우길 2', 'ds', 'ds', '244');
/*!40000 ALTER TABLE `order_info` ENABLE KEYS */;

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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.product:~4 rows (대략적) 내보내기
DELETE FROM `product`;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`product_code`, `product_username`, `product_phone`, `product_title`, `product_content`, `product_price`, `product_delivery`, `product_status`, `product_exchange`, `product_select`, `product_img1`, `product_img2`, `product_img3`, `product_img4`, `product_img5`, `product_img6`, `create_date`) VALUES
	(47, 'ddd', 'd', 'sdds', 'dssd', '22', '택배거리', '새 상품', '불가', '스마트폰', '8c942a18_9444_4341_ab57_4714016fd12barrow_1.png', NULL, NULL, NULL, NULL, NULL, '2022-06-27 09:22:55'),
	(48, 'ddd', 'd', 'dgf', 'fgd', '45', '택배거리', '새 상품', '불가', '스마트폰', '2015c670_adf7_447f_98aa_eb38530b71d7베스트 아이콘.PNG', NULL, NULL, NULL, NULL, NULL, '2022-06-27 09:23:11'),
	(49, 'ddd', 'd', 'dsffds', 'dsf', '222', '택배거리', '새 상품', '불가', '스마트폰', '21285403_870e_43a3_bae6_267d931f3a06오른쪽 화살표.PNG', NULL, NULL, NULL, NULL, NULL, '2022-06-27 09:23:22'),
	(50, 'ddd', 'd', '764', '457', '457', '택배거리', '새 상품', '불가', '스마트폰', 'bae7f912_91d9_42e8_9a03_3b098a9b35da지갑.jpg', NULL, NULL, NULL, NULL, NULL, '2022-06-27 09:23:32');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- 테이블 test.user_dtl 구조 내보내기
DROP TABLE IF EXISTS `user_dtl`;
CREATE TABLE IF NOT EXISTS `user_dtl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usercode` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `address2` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `usercode_for_user_detail` (`usercode`),
  CONSTRAINT `usercode_for_user_detail` FOREIGN KEY (`usercode`) REFERENCES `user_mst` (`usercode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.user_dtl:~1 rows (대략적) 내보내기
DELETE FROM `user_dtl`;
/*!40000 ALTER TABLE `user_dtl` DISABLE KEYS */;
INSERT INTO `user_dtl` (`id`, `usercode`, `username`, `name`, `nickname`, `email`, `phone`, `address`, `address2`) VALUES
	(49, 1030, 'ddd', '222', 'ddd', 'ddd', 'ddd', '서울 동대문구 신설동 53-3', 'sdsdsd'),
	(50, 1031, 'eee', 'eee', 'eee', 'eee', 'eee', 'ee', '');
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
) ENGINE=InnoDB AUTO_INCREMENT=1032 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.user_mst:~2 rows (대략적) 내보내기
DELETE FROM `user_mst`;
/*!40000 ALTER TABLE `user_mst` DISABLE KEYS */;
INSERT INTO `user_mst` (`usercode`, `username`, `password`, `name`, `nickname`, `email`, `phone`, `address`, `address2`) VALUES
	(1030, 'ddd', '$2a$10$XYapWz5wkrU5KI/oFGCEMORNZ9DpTRCgXSIaKTBCWjfG6MvlOKsJa', 'ddd', 'ddd', 'ddd', 'dd', 'ddd', ''),
	(1031, 'eee', '$2a$10$KJ6dvYJalGJfjq1F4BO7V.TEkgQUE3aTuwL7d4xzq9o51SNpxPARS', 'eee', 'eee', 'eee', 'eee', 'ee', '');
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
		NEW.name,
		NEW.nickname,
		NEW.email,
		NEW.phone,
		NEW.address,
		NEW.address2
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
