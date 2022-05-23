-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.6.7-MariaDB - mariadb.org binary distribution
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb3;

-- 내보낼 데이터가 선택되어 있지 않습니다.

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 test.user_mst 구조 내보내기
DROP TABLE IF EXISTS `user_mst`;
CREATE TABLE IF NOT EXISTS `user_mst` (
  `usercode` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`usercode`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3;

-- 내보낼 데이터가 선택되어 있지 않습니다.

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
		'닉네임',
		'주소',
		'1'
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
