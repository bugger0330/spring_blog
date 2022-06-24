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

-- 테이블 데이터 test.board_mst:~0 rows (대략적) 내보내기
DELETE FROM `board_mst`;
/*!40000 ALTER TABLE `board_mst` DISABLE KEYS */;
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

-- 테이블 데이터 test.order2:~4 rows (대략적) 내보내기
DELETE FROM `order2`;
/*!40000 ALTER TABLE `order2` DISABLE KEYS */;
INSERT INTO `order2` (`product_code`, `product_img1`, `product_title`, `product_price`, `username`) VALUES
	(39, 'ac25c24a_2095_421e_be7d_02291a2ce9f4arrow_1.png', 'sdfdfs', '234원', 'eee'),
	(40, 'dfc35a97_37bf_49a7_bfaa_54529a238b23plusBtn.jpg', 'fgd', '4324원', 'eee'),
	(41, '037db60f_9296_4530_9a84_bfeb89c7c2f2under_arrow.png', 'dfssdffd', '23432343원', 'eee'),
	(42, '4a903b1f_fa6d_4f1d_b370_b27d518d4dcb상품.jpg', 'dfsdf', '234534원', 'eee');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.order_info:~1 rows (대략적) 내보내기
DELETE FROM `order_info`;
/*!40000 ALTER TABLE `order_info` DISABLE KEYS */;
INSERT INTO `order_info` (`order_code`, `username`, `name`, `phone`, `phone2`, `address_num`, `address`, `address2`, `requests`, `all_price`) VALUES
	(19, 'eee', 'dssd', 'sdsd', 'dsds', '03139', '서울 종로구 돈화문로5길 28-3', 'dss', 'sdsd', '23671435');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.product:~4 rows (대략적) 내보내기
DELETE FROM `product`;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`product_code`, `product_username`, `product_phone`, `product_title`, `product_content`, `product_price`, `product_delivery`, `product_status`, `product_exchange`, `product_select`, `product_img1`, `product_img2`, `product_img3`, `product_img4`, `product_img5`, `product_img6`, `create_date`) VALUES
	(39, 'ddd', 'ddd', 'sdfdfs', 'dsfsdf', '234', '택배거리', '새 상품', '불가', '스마트폰', 'ac25c24a_2095_421e_be7d_02291a2ce9f4arrow_1.png', NULL, NULL, NULL, NULL, NULL, '2022-06-24 09:35:31'),
	(40, 'ddd', 'ddd', 'fgd', 'fdg', '4324', '택배거리', '새 상품', '불가', '스마트폰', 'dfc35a97_37bf_49a7_bfaa_54529a238b23plusBtn.jpg', NULL, NULL, NULL, NULL, NULL, '2022-06-24 09:35:42'),
	(41, 'ddd', 'ddd', 'dfssdffd', 'sdfsdf', '23432343', '택배거리', '새 상품', '불가', '스마트폰', '037db60f_9296_4530_9a84_bfeb89c7c2f2under_arrow.png', NULL, NULL, NULL, NULL, NULL, '2022-06-24 09:35:52'),
	(42, 'ddd', 'ddd', 'dfsdf', 'dsfsdf', '234534', '택배거리', '새 상품', '불가', '스마트폰', '4a903b1f_fa6d_4f1d_b370_b27d518d4dcb상품.jpg', NULL, NULL, NULL, NULL, NULL, '2022-06-24 09:36:01');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.user_dtl:~2 rows (대략적) 내보내기
DELETE FROM `user_dtl`;
/*!40000 ALTER TABLE `user_dtl` DISABLE KEYS */;
INSERT INTO `user_dtl` (`id`, `usercode`, `username`, `nickname`, `address`, `gender`) VALUES
	(39, 1020, 'ddd', 'ddd', 'ddd', NULL),
	(40, 1021, 'eee', 'eee', 'eee', NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=1022 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.user_mst:~2 rows (대략적) 내보내기
DELETE FROM `user_mst`;
/*!40000 ALTER TABLE `user_mst` DISABLE KEYS */;
INSERT INTO `user_mst` (`usercode`, `username`, `password`, `name`, `nickname`, `email`, `phone`, `address`, `address2`) VALUES
	(1020, 'ddd', '$2a$10$yN6d4gsxhxHja0Hgf0MdKeEXHbYW9Z9ZpRK7zJ6mOtbZckdh5qGqS', 'ddd', 'ddd', 'ddd', 'ddd', 'ddd', ''),
	(1021, 'eee', '$2a$10$1aBw3W7S/jCvUwolfxXhjObx9EHguH3WQIpF8pCC7efwz9/ek.QBG', 'eee', 'eee', 'eee', 'eee', 'eee', '');
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
