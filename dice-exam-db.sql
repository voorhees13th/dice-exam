-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for laravel
CREATE DATABASE IF NOT EXISTS `laravel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `laravel`;

-- Dumping structure for table laravel.blogs
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.blogs: ~29 rows (approximately)
DELETE FROM `blogs`;
INSERT INTO `blogs` (`id`, `title`, `content`, `created_at`, `updated_at`, `user_id`) VALUES
	(4, 'ut', 'nesciunt', '2024-02-04 01:59:17', '2024-02-04 01:59:17', 1),
	(5, 'laborum', 'natus', '2024-02-04 01:59:17', '2024-02-04 01:59:17', 1),
	(6, 'aut', 'deleniti', '2024-02-04 03:21:36', '2024-02-04 03:21:36', 1),
	(7, 'eius', 'non', '2024-02-04 03:21:36', '2024-02-04 03:21:36', 1),
	(8, 'cumque', 'et', '2024-02-04 03:21:36', '2024-02-04 03:21:36', 1),
	(9, 'cum', 'impedit', '2024-02-04 03:21:36', '2024-02-04 03:21:36', 1),
	(10, 'cum', 'nostrum', '2024-02-04 03:21:36', '2024-02-04 03:21:36', 1),
	(11, 'eaque', 'corrupti', '2024-02-04 03:21:36', '2024-02-04 03:21:36', 1),
	(12, 'ut', 'occaecati', '2024-02-04 03:21:36', '2024-02-04 03:21:36', 1),
	(13, 'et', 'qui', '2024-02-04 03:21:36', '2024-02-04 03:21:36', 1),
	(14, 'est', 'nemo', '2024-02-04 03:21:36', '2024-02-04 03:21:36', 1),
	(15, 'ex', 'ipsum', '2024-02-04 03:21:36', '2024-02-04 03:21:36', 1),
	(16, '312312', '1231231', '2024-02-04 07:42:19', '2024-02-04 07:42:19', 1),
	(17, 'newly add', 'New Content', '2024-02-04 07:42:58', '2024-02-04 07:42:58', 1),
	(18, 'newly add 1', ' New Content 1', '2024-02-04 07:44:46', '2024-02-04 07:44:46', 1),
	(22, '22222222222', '22222222222', '2024-02-04 07:55:13', '2024-02-04 07:55:13', 1),
	(23, 'asdasd', 'asdasdas', '2024-02-04 07:55:21', '2024-02-04 07:55:21', 1),
	(24, '1231', '123123', '2024-02-04 07:55:46', '2024-02-04 07:55:46', 1),
	(25, 'asdasdas', 'asdasdas', '2024-02-04 07:56:51', '2024-02-04 07:56:51', 1),
	(26, '121212', '1212121', '2024-02-04 07:58:18', '2024-02-04 07:58:18', 1),
	(27, '121212121', '121213144444', '2024-02-04 07:58:54', '2024-02-04 07:58:54', 1),
	(28, '23333', '33333', '2024-02-04 07:59:40', '2024-02-04 07:59:40', 1),
	(29, '1212121', '21212121', '2024-02-04 08:01:46', '2024-02-04 08:01:46', 1),
	(30, 'asdasdas', 'asdasdas', '2024-02-04 08:02:08', '2024-02-04 08:02:08', 1),
	(31, '667666', '666666', '2024-02-04 08:02:48', '2024-02-04 08:02:48', 1),
	(32, '1231231231', '1231231231', '2024-02-04 08:05:14', '2024-02-04 08:05:14', 1),
	(33, 'AAAAAAAAAAAA', 'AAAAAAAAAAAA', '2024-02-04 08:05:26', '2024-02-04 08:05:26', 1),
	(34, 'BBBBBBBBBBBBB', 'BBBBBBBBBBBBBB', '2024-02-04 08:08:37', '2024-02-04 08:08:37', 1),
	(36, 'today\'s blog', 'test content', '2024-02-05 21:38:27', '2024-02-05 21:38:27', 2),
	(37, 'coffee blog', 'coffee blog test 123', '2024-02-05 23:59:31', '2024-02-06 00:01:27', 2);

-- Dumping structure for table laravel.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping structure for table laravel.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.migrations: ~6 rows (approximately)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2024_02_04_082601_create_blogs_table', 2),
	(6, '2024_02_04_095616_add_user_id', 3);

-- Dumping structure for table laravel.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.password_reset_tokens: ~0 rows (approximately)
DELETE FROM `password_reset_tokens`;

-- Dumping structure for table laravel.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;

-- Dumping structure for table laravel.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.users: ~2 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'jayson-dev', 'jayson-dev@mail.com', NULL, '$2y$12$1ZaQTuY.sWW/kf9rvgrMf.3SbvSrHvEbiZD/vvx1S3FY8sH0JJDDK', 'svAuPH60WncgmiaPzCObtiK0NW7c9YRUGqex4mEG1ao82nTLRP0KOfwrs7Oq', '2024-01-03 01:53:46', '2024-02-04 05:57:09'),
	(2, 'joe-dev', 'joedev@dev.com', NULL, '$2y$12$3X2ZcctyIivPR0C0lhgNfuNKw/YhaUiQ6wQhrS3BLFQEm7SEcP/dy', NULL, '2024-02-04 11:03:54', '2024-02-04 11:03:54');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
