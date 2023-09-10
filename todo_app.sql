-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 Eyl 2023, 18:38:06
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `todo_app`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `developer_jobs`
--

CREATE TABLE `developer_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `developer_id` bigint(20) UNSIGNED NOT NULL,
  `jobs_id` bigint(20) UNSIGNED NOT NULL,
  `assigned_hours` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `developer_jobs`
--

INSERT INTO `developer_jobs` (`id`, `developer_id`, `jobs_id`, `assigned_hours`, `created_at`, `updated_at`) VALUES
(1, 5, 15, 3, '2023-09-10 13:06:29', '2023-09-10 13:06:29'),
(2, 5, 18, 4, '2023-09-10 13:06:29', '2023-09-10 13:06:29'),
(3, 5, 9, 6, '2023-09-10 13:06:29', '2023-09-10 13:06:29'),
(4, 5, 36, 6, '2023-09-10 13:06:29', '2023-09-10 13:06:29'),
(5, 5, 46, 8, '2023-09-10 13:06:29', '2023-09-10 13:06:29'),
(6, 5, 32, 9, '2023-09-10 13:06:29', '2023-09-10 13:06:29'),
(7, 5, 47, 9, '2023-09-10 13:06:29', '2023-09-10 13:06:29'),
(8, 4, 5, 4, '2023-09-10 13:06:29', '2023-09-10 13:06:29'),
(9, 4, 49, 4, '2023-09-10 13:06:29', '2023-09-10 13:06:29'),
(10, 4, 24, 5, '2023-09-10 13:06:29', '2023-09-10 13:06:29'),
(11, 4, 31, 5, '2023-09-10 13:06:29', '2023-09-10 13:06:29'),
(12, 4, 3, 6, '2023-09-10 13:06:29', '2023-09-10 13:06:29'),
(13, 4, 17, 6, '2023-09-10 13:06:29', '2023-09-10 13:06:29'),
(14, 4, 28, 6, '2023-09-10 13:06:29', '2023-09-10 13:06:29'),
(15, 4, 29, 7, '2023-09-10 13:06:29', '2023-09-10 13:06:29'),
(16, 3, 48, 3, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(17, 3, 55, 3, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(18, 3, 65, 3, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(19, 3, 62, 4, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(20, 3, 6, 5, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(21, 3, 1, 6, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(22, 3, 2, 6, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(23, 3, 10, 8, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(24, 3, 61, 4, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(25, 3, 63, 3, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(26, 2, 33, 5, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(27, 2, 34, 5, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(28, 2, 26, 6, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(29, 2, 35, 6, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(30, 2, 42, 6, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(31, 2, 25, 7, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(32, 2, 12, 10, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(33, 1, 8, 4, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(34, 1, 30, 4, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(35, 1, 52, 4, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(36, 1, 23, 5, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(37, 1, 11, 6, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(38, 1, 13, 6, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(39, 1, 64, 6, '2023-09-10 13:06:30', '2023-09-10 13:06:30'),
(40, 1, 51, 7, '2023-09-10 13:06:30', '2023-09-10 13:06:30');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `developer_skills`
--

CREATE TABLE `developer_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `weekly_work_hours` int(11) NOT NULL,
  `skill_level` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `developer_skills`
--

INSERT INTO `developer_skills` (`id`, `name`, `weekly_work_hours`, `skill_level`, `created_at`, `updated_at`) VALUES
(1, 'DEV1', 3, '1', '2023-09-10 11:08:11', '2023-09-10 13:06:30'),
(2, 'DEV2', 0, '2', '2023-09-09 21:00:00', '2023-09-10 13:06:30'),
(3, 'DEV3', 0, '3', '0000-00-00 00:00:00', '2023-09-10 13:06:30'),
(4, 'DEV4', 2, '4', NULL, '2023-09-10 13:06:29'),
(5, 'DEV5', 0, '5', NULL, '2023-09-10 13:06:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `difficulty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `duration`, `difficulty`, `created_at`, `updated_at`) VALUES
(1, 'IT Task 0', 6, 3, '2023-09-09 13:12:06', '2023-09-09 13:12:06'),
(2, 'IT Task 0', 6, 3, '2023-09-09 13:12:41', '2023-09-09 13:12:41'),
(3, 'IT Task 1', 6, 4, '2023-09-09 13:12:41', '2023-09-09 13:12:41'),
(4, 'IT Task 2', 10, 3, '2023-09-09 13:12:41', '2023-09-09 13:12:41'),
(5, 'IT Task 3', 4, 4, '2023-09-09 13:12:41', '2023-09-09 13:12:41'),
(6, 'IT Task 4', 5, 3, '2023-09-09 13:12:41', '2023-09-09 13:12:41'),
(7, 'IT Task 5', 12, 1, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(8, 'IT Task 6', 4, 1, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(9, 'IT Task 7', 6, 5, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(10, 'IT Task 8', 8, 3, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(11, 'IT Task 9', 6, 1, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(12, 'IT Task 10', 10, 2, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(13, 'IT Task 11', 6, 1, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(14, 'IT Task 12', 11, 4, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(15, 'IT Task 13', 3, 5, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(16, 'IT Task 14', 11, 1, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(17, 'IT Task 15', 6, 4, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(18, 'IT Task 16', 4, 5, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(19, 'IT Task 17', 11, 3, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(20, 'IT Task 18', 11, 2, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(21, 'IT Task 19', 8, 3, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(22, 'IT Task 20', 11, 3, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(23, 'IT Task 21', 5, 1, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(24, 'IT Task 22', 5, 4, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(25, 'IT Task 23', 7, 2, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(26, 'IT Task 24', 6, 2, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(27, 'IT Task 25', 9, 3, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(28, 'IT Task 26', 6, 4, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(29, 'IT Task 27', 7, 4, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(30, 'IT Task 28', 4, 1, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(31, 'IT Task 29', 5, 4, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(32, 'IT Task 30', 9, 5, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(33, 'IT Task 31', 5, 2, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(34, 'IT Task 32', 5, 2, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(35, 'IT Task 33', 6, 2, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(36, 'IT Task 34', 6, 5, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(37, 'IT Task 35', 10, 1, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(38, 'IT Task 36', 10, 1, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(39, 'IT Task 37', 10, 1, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(40, 'IT Task 38', 12, 5, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(41, 'IT Task 39', 12, 4, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(42, 'IT Task 40', 6, 2, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(43, 'IT Task 41', 8, 3, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(44, 'IT Task 42', 10, 5, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(45, 'IT Task 43', 10, 3, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(46, 'IT Task 44', 8, 5, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(47, 'IT Task 45', 9, 5, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(48, 'IT Task 46', 3, 3, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(49, 'IT Task 47', 4, 4, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(50, 'IT Task 48', 12, 1, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(51, 'IT Task 49', 7, 1, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(52, 'IT Task 50', 4, 1, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(53, 'IT Task 51', 10, 1, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(54, 'IT Task 52', 8, 4, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(55, 'IT Task 53', 3, 3, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(56, 'IT Task 54', 10, 4, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(57, 'IT Task 55', 12, 4, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(58, 'IT Task 56', 10, 3, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(59, 'IT Task 57', 11, 2, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(60, 'IT Task 58', 7, 1, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(61, 'IT Task 59', 4, 2, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(62, 'IT Task 60', 4, 3, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(63, 'IT Task 61', 3, 1, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(64, 'IT Task 62', 6, 1, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(65, 'IT Task 63', 3, 3, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(66, 'IT Task 64', 12, 4, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(67, 'IT Task 65', 11, 2, '2023-09-09 13:12:42', '2023-09-09 13:12:42'),
(68, 'IT Task 66', 10, 3, '2023-09-09 13:12:42', '2023-09-09 13:12:42');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(26, '2023_09_08_173321_create_todos_table', 1),
(58, '2014_10_12_000000_create_users_table', 2),
(59, '2014_10_12_100000_create_password_resets_table', 2),
(60, '2019_08_19_000000_create_failed_jobs_table', 2),
(61, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(62, '2023_09_08_173321_create_jobs_table', 2),
(63, '2023_09_09_095627_create_developer_skills_table', 2),
(64, '2023_09_09_151308_create_developer_job_table', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `developer_jobs`
--
ALTER TABLE `developer_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `developer_job_developer_id_foreign` (`developer_id`),
  ADD KEY `developer_job_job_id_foreign` (`jobs_id`);

--
-- Tablo için indeksler `developer_skills`
--
ALTER TABLE `developer_skills`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `developer_jobs`
--
ALTER TABLE `developer_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Tablo için AUTO_INCREMENT değeri `developer_skills`
--
ALTER TABLE `developer_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `developer_jobs`
--
ALTER TABLE `developer_jobs`
  ADD CONSTRAINT `developer_job_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developer_skills` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `developer_job_job_id_foreign` FOREIGN KEY (`jobs_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
