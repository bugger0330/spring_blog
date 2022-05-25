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

-- 테이블 test.product 구조 내보내기
DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_code` int(11) NOT NULL AUTO_INCREMENT,
  `product_username` varchar(50) NOT NULL,
  `product_title` varchar(50) NOT NULL,
  `product_img` varchar(50) DEFAULT NULL,
  `product_content` varchar(500) NOT NULL,
  `product_phone` varchar(50) NOT NULL,
  PRIMARY KEY (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.product:~0 rows (대략적) 내보내기
DELETE FROM `product`;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.user_dtl:~1 rows (대략적) 내보내기
DELETE FROM `user_dtl`;
/*!40000 ALTER TABLE `user_dtl` DISABLE KEYS */;
INSERT INTO `user_dtl` (`id`, `usercode`, `username`, `nickname`, `address`, `gender`) VALUES
	(17, 45, 'ddd', 'ddd', 'sdf', '성별'),
	(19, 47, 'aaa', 'aaa', 'aaa', '성별');
/*!40000 ALTER TABLE `user_dtl` ENABLE KEYS */;

-- 테이블 test.user_mst 구조 내보내기
DROP TABLE IF EXISTS `user_mst`;
CREATE TABLE IF NOT EXISTS `user_mst` (
  `usercode` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '0',
  `nickname` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(100) NOT NULL DEFAULT '0',
  `address` varchar(100) NOT NULL DEFAULT '0',
  `address2` varchar(100) DEFAULT '0',
  PRIMARY KEY (`usercode`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.user_mst:~1 rows (대략적) 내보내기
DELETE FROM `user_mst`;
/*!40000 ALTER TABLE `user_mst` DISABLE KEYS */;
INSERT INTO `user_mst` (`usercode`, `username`, `password`, `name`, `nickname`, `email`, `phone`, `address`, `address2`) VALUES
	(45, 'ddd', '$2a$10$LX7XeR1nB4VJyIszr7vFVe4P0hnfc04kkEj3Q.sfIScwIjsuSv0wC', 'ddd', 'ddd', 'bugger0330@naver.com', '010-3333-2222', 'sdf', ''),
	(47, 'aaa', '$2a$10$QuCUMZWlLD6y4esvhAJUgedRnj/VghGRY6LKvwRctQziv3vSXlFju', 'aaa', 'aaa', 'aaa2@a.com', '010-3333-2222', 'aaa', '');
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
		'성별',
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
