-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2025 at 08:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `notes` text DEFAULT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `package_id`, `notes`, `status`, `created_at`, `updated_at`) VALUES
(20, 1, 9, NULL, 'pending', '2025-06-24 02:03:06', '2025-06-24 02:03:06');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `map_embed` text DEFAULT NULL,
  `highlights` text DEFAULT NULL,
  `review` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `created_at`, `updated_at`, `name`, `description`, `type`, `image`, `location`, `image_path`, `map_embed`, `highlights`, `review`) VALUES
(14, '2025-06-24 01:06:07', '2025-06-24 01:06:07', 'Unawatuna', 'A picturesque crescent-shaped bay famous for its golden sandy beach, calm turquoise waters, and vibrant coral reefs. Ideal for swimming, snorkeling, and relaxing under swaying palm trees. The town has a laid-back vibe with cozy cafes and beach bars.', 'Beach', 'images/04AJm23MfZc4kgdHH5F9BuxPBRR9YovBLQ9KkiJQ.jpg', 'Unawatuna, Southern Province, Sri Lanka', NULL, NULL, NULL, NULL),
(15, '2025-06-24 01:08:01', '2025-06-24 01:08:01', 'Mirissa', 'A serene beach town known for its stunning crescent beach, whale watching tours, and vibrant nightlife. Mirissa offers a perfect mix of tranquility during the day and lively beach parties by night. It’s a hotspot for surfers and nature lovers alike.', 'Beach', 'images/PBRxmlApkdIQiN4LDHUbqDL8jj8GYyDuqsrYnBs6.jpg', 'Mirissa, Southern Province, Sri Lanka', NULL, NULL, NULL, NULL),
(16, '2025-06-24 01:09:57', '2025-06-24 01:09:57', 'Nilaveli', 'An untouched paradise on the northeast coast with pristine white sands and crystal-clear waters. Perfect for snorkeling, diving, and exploring the nearby Pigeon Island National Park. The peaceful surroundings make it ideal for a quiet beach getaway.', 'Beach', 'images/9PddNhd5CHtxB9eOgeY4SstyP7Ek9X7LPDZItgyV.jpg', 'Nilaveli, Trincomalee District, Eastern Province, Sri Lanka', NULL, NULL, NULL, NULL),
(18, '2025-06-24 01:13:44', '2025-06-24 01:13:44', 'Nuwara Eliya', 'Known as “Little England,” Nuwara Eliya charms visitors with its cool climate, colonial architecture, and expansive tea estates. The mist-covered hills and serene lakes provide a refreshing escape from the tropical heat and a glimpse into Sri Lanka’s colonial past.', 'Mountain', 'images/o1QHTQGjW1KuQtdqBPIl0hY49fDrHBkp0ODKcxMh.jpg', 'Nuwara Eliya, Central Province, Sri Lanka', NULL, NULL, NULL, NULL),
(19, '2025-06-24 01:14:50', '2025-06-24 01:14:50', 'Ella', 'Nestled in the heart of Sri Lanka’s hill country, Ella offers breathtaking views of lush green valleys, tea plantations, and cascading waterfalls. It’s a haven for hikers, with trails like Ella Rock and Little Adam’s Peak, plus a relaxing vibe surrounded by nature.', 'Mountain', 'images/Da3OM9TD4B5iTXjfTTnZvvWwxmtbnNEQcaBS8399.jpg', 'Ella, Badulla District, Uva Province, Sri Lanka', NULL, NULL, NULL, NULL),
(20, '2025-06-24 01:16:47', '2025-06-24 01:16:47', 'Haputale', 'Perched high in the southern highlands, Haputale offers panoramic views over tea plantations and valleys stretching as far as the southern coast. It’s a peaceful retreat with attractions like Lipton’s Seat, where the legendary tea pioneer once surveyed his plantations.', 'Mountain', 'images/Pp6sgyJkVzhthkeOwybzqkDdcsAaGqSKZ5F8Y2Io.jpg', 'Haputale, Badulla District, Uva Province, Sri Lanka', NULL, NULL, NULL, NULL),
(21, '2025-06-24 01:19:27', '2025-06-24 01:19:27', 'Colombo', 'As Sri Lanka’s bustling capital, Colombo blends modern urban life with colonial charm. From seaside promenades like Galle Face Green to heritage sites, shopping malls, and fine dining, the city offers a dynamic cultural experience and serves as the country’s commercial hub.', 'City', 'images/sKY8kZy9ENtadzabqIV9hyY6SZrlfz24rumI2bQy.jpg', 'Colombo District, Western Province, Sri Lanka', NULL, NULL, NULL, NULL),
(22, '2025-06-24 01:20:57', '2025-06-24 01:20:57', 'Kandy', 'Kandy is Sri Lanka’s cultural capital, nestled in the hills and home to the sacred Temple of the Tooth Relic. The city is famous for its scenic lake, botanical gardens, and traditional Kandyan dance performances — making it a UNESCO World Heritage site rich in history and spirituality.', 'City', 'images/w0h3aPOJnO7ARrnmSLIMoEnYNtr5dbL7wnsO4TrB.jpg', 'Kandy District, Central Province, Sri Lanka', NULL, NULL, NULL, NULL),
(23, '2025-06-24 01:22:26', '2025-06-24 01:22:26', 'Galle', 'Galle is a coastal city known for its beautifully preserved 17th-century Dutch Fort. With cobblestone streets, colonial-era architecture, boutique shops, and ocean views, Galle offers a charming fusion of history, art, and contemporary Sri Lankan life.', 'City', 'images/lbyMVNRt724SmFQJSeCEwTLBw6w7hb5kUUu0oHPw.jpg', 'Galle District, Southern Province, Sri Lanka', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `destination_images`
--

CREATE TABLE `destination_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `favorite_destinations`
--

CREATE TABLE `favorite_destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `user_id`, `filename`, `title`, `description`, `created_at`, `updated_at`) VALUES
(8, 1, '7WoQqDBT7N6tj0jhqqdDi3894N7HHfVdGwFrjwfD.jpg', 'bla', 'bla', '2025-06-24 00:11:28', '2025-06-24 00:11:28'),
(9, 1, 'czn5Ee0egfSpDkYMk4Pv6y6eXFzAEuTOOSXvks0N.jpg', 'Temple of the Tooth, Kandy', 'Night view of the lit-up temple reflecting on the lake — one of the most sacred Buddhist sites in Sri Lanka.', '2025-06-24 01:40:31', '2025-06-24 01:40:31'),
(10, 1, 'ueI6SrDiZghor3LxKIQqlu7izk1de6rV1TahK6Ux.jpg', 'Ravana Falls', 'Majestic Ravana Ella waterfall cascading over rocky ledges in Ella, surrounded by jungle greenery.', '2025-06-24 01:41:02', '2025-06-24 01:41:02'),
(11, 1, '39vKtL9vEQ5ajS4vhiff089hwifXzxfE5fj6hZwF.jpg', 'Mirissa Beach Sunset', 'Golden hour on the southern coast, with calm waves, palm trees, and a dreamy orange-pink sky.', '2025-06-24 01:41:35', '2025-06-24 01:41:35'),
(12, 1, 'RvHjKK6RF8FcMgXoQHOiyEPfr00WdiWjeHv2lXDb.jpg', 'Nine Arches Bridge, Ella', 'A vibrant blue train crossing the iconic stone bridge surrounded by tea plantations and misty hills.', '2025-06-24 01:42:10', '2025-06-24 01:42:10'),
(13, 1, 'kQmjstWyFX15kQzn9HqoZKElXTBgjpiiwIquo6R9.jpg', 'Sigiriya Rock Fortress', 'A stunning aerial view of the 5th-century rock fortress rising above lush forest, with symmetrical water gardens below.', '2025-06-24 01:42:47', '2025-06-24 01:42:47'),
(14, 1, '5cHIg06LOhjc50riC3kCVLa3ovQSZ1Z3HWFYUCGv.jpg', 'Arugambe', 'bla bla bla', '2025-06-25 21:14:45', '2025-06-25 21:14:45'),
(15, 1, 'yMU07BzUM6FEGyUF3KxHgssTO3KDZlXcIh7vx4dq.jpg', 'Kandy', 'bla bla bla', '2025-06-25 21:21:47', '2025-06-25 21:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_18_173614_create_destinations_table', 1),
(5, '2025_05_19_121846_add_region_to_destinations_table', 1),
(6, '2025_05_19_174754_add_image_to_destinations_table', 1),
(7, '2025_06_04_071513_add_is_admin_to_users_table', 1),
(8, '2025_06_07_050944_add_experience_type_and_season_to_destinations_table', 2),
(9, '2025_06_07_074753_update_destinations_table_replace_old_columns_with_type', 3),
(10, '2025_06_07_164827_add_role_to_users_table', 4),
(11, '2025_06_09_171950_add_more_fields_to_destinations_table', 4),
(12, '2025_06_11_175329_create_packages_table', 4),
(16, '2025_06_14_164408_create_news_table', 5),
(17, '2025_06_14_184651_add_name_to_packages_table', 6),
(18, '2025_06_14_185257_drop_title_from_packages_table', 7),
(19, '2025_06_16_054231_create_galleries_table', 8),
(20, '2025_06_21_102935_add_filename_to_galleries_table', 9),
(21, '2025_06_21_160852_rename_name_to_title_in_packages_table', 10),
(22, '2025_06_21_161239_add_location_and_includes_to_packages_table', 11),
(23, '2025_06_21_190510_create_bookings_table', 12),
(24, '2025_06_21_192837_add_status_to_bookings_table', 13),
(25, '2025_06_23_032858_create_destination_images_table', 14),
(26, '2025_06_23_032859_create_favorite_destinations_table', 14),
(27, '2025_06_23_141749_drop_image_path_from_galleries_table', 15),
(28, '2025_06_23_201303_add_filename_to_destination_images_table', 16),
(29, '2025_06_23_220511_create_package_images_table', 17),
(30, '2025_06_24_042555_add_image_to_news_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image_url`, `created_at`, `updated_at`) VALUES
(2, 'Sri Lanka Ranked Among Top Travel Destinations for 2025', 'According to Travel Weekly Global, Sri Lanka has been ranked in the Top 10 Must-Visit Countries for 2025. The country’s stunning diversity — from beaches to tea-covered hills — continues to attract eco-tourists and culture lovers alike.', NULL, '2025-06-24 01:34:25', '2025-06-24 01:34:25'),
(3, 'Direct Flights from Germany to Mattala Airport Begin', 'A new flight route from Frankfurt to Mattala Rajapaksa International Airport has been launched, making southern destinations like Yala and Arugam Bay more accessible to European travelers.', NULL, '2025-06-24 01:34:52', '2025-06-24 01:34:52'),
(4, 'Ella Named Best Scenic Destination in Asia', 'The breathtaking town of Ella has been awarded the title of Best Scenic Destination in Asia by Wanderlust Magazine. Highlights include Nine Arches Bridge, Ella Rock, and endless tea plantations.', NULL, '2025-06-24 01:35:19', '2025-06-24 01:35:19'),
(5, 'New Eco-Lodge Opens in Knuckles Forest Reserve', 'A sustainable eco-lodge built entirely from recycled materials is now open in the Knuckles Mountain Range. It offers guided treks, birdwatching, and waterfall exploration — all while promoting green tourism.', NULL, '2025-06-24 01:35:50', '2025-06-24 01:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `includes` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `description`, `price`, `duration`, `location`, `includes`, `image`, `created_at`, `updated_at`) VALUES
(5, 'Southern Beach Bliss', 'Relax on Sri Lanka’s golden beaches with this coastal escape package. Enjoy whale watching, beach parties, and fresh seafood while soaking up the sun.', 48000.00, '4 Days / 3 Nights', NULL, NULL, 'packages/tPht91rAEFa8bdt2de5XZEkZ5AAkfScwkmtMTTCY.jpg', '2025-06-24 01:26:52', '2025-06-24 01:26:52'),
(6, 'Hill Country Retreat', 'Hill Country Retreat', 55000.00, '5 Days / 4 Nights', NULL, NULL, 'packages/CxkmiRT2Smmfg1VwYEIIVcvgF5xXT4D3Bt0Xr6vj.jpg', '2025-06-24 01:27:58', '2025-06-24 01:27:58'),
(7, 'Cultural Triangle Explorer', 'Dive into history with ancient cities, UNESCO heritage sites, and iconic ruins. A perfect journey for archaeology and culture lovers.', 60000.00, '6 Days / 5 Nights', NULL, NULL, 'packages/VOuLgp3X5KthNnbl7xzweFg2YqFjcsCSsMY2g4fD.jpg', '2025-06-24 01:29:34', '2025-06-24 01:29:34'),
(8, 'Adventure & Wildlife Expedition', 'Safari, white water rafting, and trekking adventures await! This adrenaline-filled package is for thrill seekers and nature lovers.', 68000.00, '6 Days / 5 Nights', NULL, NULL, 'packages/HUu1ZL1oNAH6tLoD0Oz765PJNHxDR1upLBgPrQZ3.jpg', '2025-06-24 01:31:03', '2025-06-24 01:31:03'),
(9, 'City Lights & Colonial Trails', 'Explore Sri Lanka’s urban culture with city tours, street food experiences, and a walk through colonial heritage in Galle Fort.', 42000.00, '3 Days / 2 Nights', NULL, NULL, 'packages/pXoDSbY9BTcsUg3BVS1uG4To02t1y79j6QbzakOX.jpg', '2025-06-24 01:32:11', '2025-06-24 01:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `package_images`
--

CREATE TABLE `package_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('MMWWujQGzuLPijYwtEExNynU3fXy88qDCjjdv2Cm', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMzJGNWhhQUZFb2J4SWxvcFNGZzdPVUtMSXdwQkFKSzY5RWhBNTlmRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL2Rhc2hib2FyZCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1750909538);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Pramod Dilshan', 'dilshanp015@gmail.com', NULL, '$2y$12$0lqim6FAxisksNSAir1TeO4Nid0EUjKQMo9PHyrOiZ4.8IlzIUhNS', NULL, '2025-06-05 11:51:04', '2025-06-07 10:21:19', 1),
(2, 'Adhithya', 'adhithya@gmail.com', NULL, '$2y$12$/Cy/L1j0hTFUjGKSXY/SreXmiPTzuHWbf6Ofu8izNE7HJvg163PmG', NULL, '2025-06-06 04:57:37', '2025-06-06 04:57:37', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_package_id_foreign` (`package_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination_images`
--
ALTER TABLE `destination_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_images_destination_id_foreign` (`destination_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorite_destinations`
--
ALTER TABLE `favorite_destinations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorite_destinations_user_id_foreign` (`user_id`),
  ADD KEY `favorite_destinations_destination_id_foreign` (`destination_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_images`
--
ALTER TABLE `package_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_images_package_id_foreign` (`package_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `destination_images`
--
ALTER TABLE `destination_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite_destinations`
--
ALTER TABLE `favorite_destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `package_images`
--
ALTER TABLE `package_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destination_images`
--
ALTER TABLE `destination_images`
  ADD CONSTRAINT `destination_images_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorite_destinations`
--
ALTER TABLE `favorite_destinations`
  ADD CONSTRAINT `favorite_destinations_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorite_destinations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `package_images`
--
ALTER TABLE `package_images`
  ADD CONSTRAINT `package_images_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
