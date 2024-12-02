-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 8.0.30 - MySQL Community Server - GPL
-- OS Server:                    Win64
-- HeidiSQL Versi:               12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk mydb
CREATE DATABASE IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;

-- membuang struktur untuk table mydb.daftarkode
CREATE TABLE IF NOT EXISTS `daftarkode` (
  `var_group` char(2) DEFAULT NULL,
  `var_kode` char(3) DEFAULT NULL,
  `var_item` char(30) DEFAULT NULL,
  `var_active` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel mydb.daftarkode: ~15 rows (lebih kurang)
INSERT INTO `daftarkode` (`var_group`, `var_kode`, `var_item`, `var_active`) VALUES
	('11', '!', 'Agama', 'Y'),
	('11', 'i', 'Islam', 'Y'),
	('11', 'p', 'Protestan', 'Y'),
	('11', 'b', 'Budha', 'Y'),
	('11', 'h', 'Hindu', 'Y'),
	('12', '!', 'Nama Hari', 'Y'),
	('12', '1', 'Senin', 'Y'),
	('12', '2', 'Selasa', 'Y'),
	('12', '4', 'Kamis', 'Y'),
	('11', 'k', 'Khatolik', 'Y'),
	('12', '5', 'Jumat', 'Y'),
	('12', '6', 'Sabtu', 'Y'),
	('12', '7', 'Minggu', 'Y'),
	('12', '3', 'Rabu', 'Y'),
	('11', 'k', 'Katolik', 'Y');

-- membuang struktur untuk table mydb.guru
CREATE TABLE IF NOT EXISTS `guru` (
  `guru_id` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `guru_nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `guru_lahir` date DEFAULT NULL,
  `guru_gender` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `guru_aktif` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`guru_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Membuang data untuk tabel mydb.guru: ~1 rows (lebih kurang)
INSERT INTO `guru` (`guru_id`, `guru_nama`, `guru_lahir`, `guru_gender`, `guru_aktif`) VALUES
	('GR01', 'Pashamn', '2004-12-02', 'L', 'Y');

-- membuang struktur untuk table mydb.hari
CREATE TABLE IF NOT EXISTS `hari` (
  `hari_kode` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hari_nama` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`hari_kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Membuang data untuk tabel mydb.hari: ~7 rows (lebih kurang)
INSERT INTO `hari` (`hari_kode`, `hari_nama`) VALUES
	('1', 'Senin'),
	('2', 'Selasa'),
	('3', 'Rabu'),
	('4', 'Kamis'),
	('5', 'Jumat'),
	('6', 'Sabtu'),
	('7', 'Minggu');

-- membuang struktur untuk table mydb.kursus
CREATE TABLE IF NOT EXISTS `kursus` (
  `kursus_id` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kursus_nama` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hari_kode` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `guru_id` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kursus_biaya` int DEFAULT NULL,
  PRIMARY KEY (`kursus_id`),
  KEY `FK_Hari` (`hari_kode`),
  KEY `FK_Guru` (`guru_id`),
  CONSTRAINT `FK_Guru` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`guru_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_Hari` FOREIGN KEY (`hari_kode`) REFERENCES `hari` (`hari_kode`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Membuang data untuk tabel mydb.kursus: ~1 rows (lebih kurang)
INSERT INTO `kursus` (`kursus_id`, `kursus_nama`, `hari_kode`, `guru_id`, `kursus_biaya`) VALUES
	('1', 'Kursus Delphi 7', '1', 'GR01', 350000);

-- membuang struktur untuk table mydb.nilai
CREATE TABLE IF NOT EXISTS `nilai` (
  `siswa_id` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kursus_id` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nilai` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nilai_n` tinyint DEFAULT NULL,
  KEY `FK_Siswa` (`siswa_id`),
  KEY `FK_Kursus` (`kursus_id`),
  CONSTRAINT `FK_Kursus` FOREIGN KEY (`kursus_id`) REFERENCES `kursus` (`kursus_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_Siswa` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`siswa_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Membuang data untuk tabel mydb.nilai: ~1 rows (lebih kurang)
INSERT INTO `nilai` (`siswa_id`, `kursus_id`, `nilai`, `nilai_n`) VALUES
	('07-003', '1', 'A', 80);

-- membuang struktur untuk table mydb.siswa
CREATE TABLE IF NOT EXISTS `siswa` (
  `siswa_id` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `siswa_nama` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `siswa_lahir` date DEFAULT NULL,
  `siswa_gender` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `siswa_blob` blob,
  PRIMARY KEY (`siswa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Membuang data untuk tabel mydb.siswa: ~1 rows (lebih kurang)
INSERT INTO `siswa` (`siswa_id`, `siswa_nama`, `siswa_lahir`, `siswa_gender`, `siswa_blob`) VALUES
	('07-003', 'Serina', '2000-02-02', 'P', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
