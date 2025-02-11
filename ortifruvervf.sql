-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-03-2022 a las 02:15:08
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ortifruvervf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `module`, `parent`, `name`, `slug`, `icon`, `order`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 'Ropa - Formal', 'ropa-formal', '{\"upload\":\"success\",\"path\":\"2021\\/06\\/13\",\"original_name\":\"453-smokingpng-1622324453.png\",\"final_name\":\"453-smokingpng-1622324453png-1623616377.png\"}', 0, '2022-03-08 02:07:30', '2021-02-14 04:39:46', '2022-03-08 02:07:30'),
(2, 0, 0, 'Gafas', 'gafas', '{\"upload\":\"success\",\"path\":\"2021\\/05\\/29\",\"original_name\":\"691-accessory.png\",\"final_name\":\"691-accessorypng-1622324479.png\"}', 0, '2022-03-08 02:07:33', '2021-02-14 04:41:07', '2022-03-08 02:07:33'),
(3, 0, 0, 'Tecnologia', 'tecnologia', '{\"upload\":\"success\",\"path\":\"2021\\/05\\/29\",\"original_name\":\"796-iphone.png\",\"final_name\":\"796-iphonepng-1622324487.png\"}', 0, '2022-03-08 02:07:35', '2021-02-14 04:41:48', '2022-03-08 02:07:35'),
(4, 0, 0, 'Ropa - Deportiva', 'ropa-deportiva', '{\"upload\":\"success\",\"path\":\"2021\\/05\\/29\",\"original_name\":\"550-pantalones-deportivos.png\",\"final_name\":\"550-pantalones-deportivospng-1622324496.png\"}', 0, '2022-03-08 02:07:39', '2021-02-14 04:43:37', '2022-03-08 02:07:39'),
(5, 0, 1, 'Sacos', 'sacos', '{\"upload\":\"success\",\"path\":\"2021\\/05\\/29\",\"original_name\":\"453-smoking.png\",\"final_name\":\"453-smokingpng-1622324453.png\"}', 0, NULL, '2021-02-14 04:44:31', '2021-05-29 21:40:53'),
(6, 0, 1, 'Corbatas', 'corbatas', '{\"upload\":\"success\",\"path\":\"2021\\/05\\/29\",\"original_name\":\"686-tie.png\",\"final_name\":\"686-tiepng-1622324464.png\"}', 0, NULL, '2021-02-14 04:45:08', '2021-05-29 21:41:04'),
(7, 0, 4, 'Pantalones', 'pantalones', '{\"upload\":\"success\",\"path\":\"2021\\/05\\/29\",\"original_name\":\"550-pantalones-deportivos.png\",\"final_name\":\"550-pantalones-deportivospng-1622324545.png\"}', 0, NULL, '2021-02-14 04:45:20', '2021-05-29 21:42:25'),
(8, 0, 0, 'Ropa - Juvenil', 'ropa-juvenil', '{\"upload\":\"success\",\"path\":\"2021\\/05\\/29\",\"original_name\":\"61-man.png\",\"final_name\":\"61-manpng-1622323396.png\"}', 0, '2022-03-08 02:07:41', '2021-05-29 21:23:16', '2022-03-08 02:07:41'),
(9, 0, 0, 'Ropa - Niños', 'ropa-ninos', '{\"upload\":\"success\",\"path\":\"2021\\/05\\/29\",\"original_name\":\"61-man.png\",\"final_name\":\"61-manpng-1622323488.png\"}', 0, '2022-03-08 02:07:45', '2021-05-29 21:24:48', '2022-03-08 02:07:45'),
(10, 0, 0, 'Frutas', 'frutas', '{\"upload\":\"success\",\"path\":\"2022\\/03\\/07\",\"original_name\":\"pngwing.com.png\",\"final_name\":\"pngwingcompng-1646708301.png\"}', 0, NULL, '2022-02-28 17:46:11', '2022-03-08 01:58:21'),
(11, 0, 10, 'Frutas', 'frutas', '{\"upload\":\"success\",\"path\":\"2022\\/03\\/07\",\"original_name\":\"pngwing.com.png\",\"final_name\":\"pngwingcompng-1646708385.png\"}', 0, NULL, '2022-03-04 22:25:50', '2022-03-08 01:59:45'),
(12, 0, 0, 'Verduras', 'verduras', '{\"upload\":\"success\",\"path\":\"2022\\/03\\/07\",\"original_name\":\"pngwing.com (7).png\",\"final_name\":\"pngwingcom-7png-1646708341.png\"}', 0, NULL, '2022-03-08 01:59:02', '2022-03-08 01:59:02'),
(13, 0, 0, 'Tubérculos', 'tuberculos', '{\"upload\":\"success\",\"path\":\"2022\\/03\\/07\",\"original_name\":\"pngwing.com (8).png\",\"final_name\":\"pngwingcom-8png-1646708358.png\"}', 0, NULL, '2022-03-08 01:59:18', '2022-03-08 01:59:18'),
(14, 0, 12, 'Verduras', 'verduras', '{\"upload\":\"success\",\"path\":\"2022\\/03\\/07\",\"original_name\":\"pngwing.com (7).png\",\"final_name\":\"pngwingcom-7png-1646709150.png\"}', 0, NULL, '2022-03-08 02:12:30', '2022-03-08 02:12:30'),
(15, 0, 13, 'Tubérculos', 'tuberculos', '{\"upload\":\"success\",\"path\":\"2022\\/03\\/07\",\"original_name\":\"pngwing.com (8).png\",\"final_name\":\"pngwingcom-8png-1646709167.png\"}', 0, NULL, '2022-03-08 02:12:47', '2022-03-08 02:12:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coverage`
--

CREATE TABLE `coverage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `ctype` int(11) NOT NULL,
  `state_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `days` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `coverage`
--

INSERT INTO `coverage` (`id`, `status`, `ctype`, `state_id`, `name`, `price`, `days`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 'Centro', '0.00', 1, NULL, '2021-02-14 04:48:52', '2022-03-08 03:08:49'),
(2, 1, 0, 0, 'Peña blanca', '0.00', 1, NULL, '2021-02-14 04:48:59', '2022-03-08 03:15:17'),
(3, 1, 0, 0, 'Pantano', '0.00', 1, NULL, '2021-02-14 04:49:04', '2022-03-08 03:15:28'),
(6, 1, 1, 3, 'Reten', '5000.00', 0, NULL, '2021-02-14 04:50:08', '2022-03-08 18:00:19'),
(7, 1, 1, 1, 'Centro', '2000.00', 0, NULL, '2022-03-08 03:12:41', '2022-03-08 03:12:41'),
(8, 1, 1, 2, 'Salitre', '6000.00', 1, NULL, '2022-03-08 03:14:59', '2022-03-08 03:14:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_19_004836_create_categories_table', 2),
(5, '2019_12_19_005521_add_soft_deleted_to_categories_table', 3),
(6, '2020_01_08_012803_create_products_table', 4),
(7, '2020_02_09_020520_add_field_file_path_to_products_table', 5),
(8, '2020_04_15_225719_create_product_gallery_table', 6),
(9, '2020_04_30_214455_add_field_avatar_status_to_users_table', 7),
(10, '2020_05_09_214033_add_password_code_to_users_table', 8),
(11, '2020_06_06_155618_add_field_permissions_to_users_table', 9),
(12, '2020_06_06_163844_add_field_permissions_to_users_table', 10),
(13, '2020_06_13_153410_add_field_inventory_and_code_to_products_table', 11),
(14, '2020_07_05_224205_add_fields_phone_year_gender', 12),
(15, '2020_07_25_202054_add_field_file_path_to_categories_table', 13),
(16, '2020_08_15_165208_create_sliders_table', 14),
(17, '2020_09_05_165109_create_table_user_favorites', 15),
(18, '2020_09_05_170038_complete_user_favorites_table', 16),
(19, '2020_10_11_201353_add_field_parent_to_categories', 17),
(20, '2020_10_11_205604_add_field_order_to_categories_table', 18),
(21, '2020_10_11_213320_add_field_sub_category_id_to_products_table', 19),
(22, '2020_10_25_171740_create_products_inventory_table', 20),
(23, '2020_10_25_222309_create_product_inventory_variants', 21),
(24, '2020_10_25_225346_drop_products_table_price_inventory', 22),
(25, '2020_11_07_151600_add_price_field_to_products_table', 23),
(26, '2020_11_28_161419_create_orders_table', 24),
(27, '2020_11_28_165858_create_orders_items_table', 25),
(28, '2020_12_05_162520_add_field_price_org_to_table_orders_items', 26),
(29, '2020_12_05_172050_add_field_discount_until_date_to_table_products', 27),
(30, '2020_12_12_214231_add_field_discount_until_date_to_table_orders_items', 28),
(31, '2020_12_19_212417_create_coverage_table', 29),
(32, '2020_12_19_212741_add_field_state_id_to_table_coverage', 30),
(33, '2020_12_26_214758_add_field_status_to_coverage_table', 31),
(34, '2021_01_30_162338_create_user_address_table', 32),
(35, '2021_01_30_163821_add_field_default_to_user_address_table', 33),
(36, '2021_03_06_150258_add_times_activity_fields_to_order_table', 34),
(37, '2021_03_06_153240_add_times_activity_fields2_to_order_table', 35),
(38, '2021_06_19_152824_add_field_voucher_to_orders_table', 36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `o_number` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `o_type` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `user_address_id` int(11) DEFAULT NULL,
  `user_comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` decimal(11,2) NOT NULL DEFAULT 0.00,
  `delivery` decimal(11,2) NOT NULL DEFAULT 0.00,
  `total` decimal(11,2) DEFAULT 0.00,
  `payment_method` int(11) DEFAULT NULL,
  `payment_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voucher` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_at` datetime DEFAULT NULL,
  `request_at` timestamp NULL DEFAULT NULL,
  `process_at` timestamp NULL DEFAULT NULL,
  `send_at` timestamp NULL DEFAULT NULL,
  `delivery_at` timestamp NULL DEFAULT NULL,
  `rejected_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `o_number`, `status`, `o_type`, `user_id`, `user_address_id`, `user_comment`, `subtotal`, `delivery`, `total`, `payment_method`, `payment_info`, `voucher`, `paid_at`, `request_at`, `process_at`, `send_at`, `delivery_at`, `rejected_at`, `created_at`, `updated_at`) VALUES
(2, '1', 1, 0, 1, 2, 'Comentario #1', '1500.00', '150.00', '1650.00', 0, NULL, NULL, NULL, '2021-03-06 12:11:13', NULL, NULL, NULL, NULL, '2021-03-07 00:11:05', '2021-03-07 00:11:13'),
(3, '2', 3, 0, 1, 2, 'Comentario #2', '475.00', '150.00', '625.00', 0, NULL, NULL, NULL, '2021-03-06 12:11:45', '2021-05-28 08:50:15', NULL, NULL, NULL, '2021-03-07 00:11:28', '2021-05-28 20:50:15'),
(4, '3', 100, 0, 1, 2, 'Comentario #3', '1500.00', '150.00', '1650.00', 0, NULL, NULL, NULL, '2021-03-06 12:12:30', NULL, NULL, NULL, '2021-03-06 10:01:03', '2021-03-07 00:12:00', '2021-03-06 22:01:03'),
(5, '4', 6, 0, 1, 2, 'Comentario en blanco', '1500.00', '150.00', '1650.00', 0, NULL, NULL, NULL, '2021-03-06 18:14:41', '2021-03-06 09:41:07', '2021-03-06 09:41:20', '2021-03-06 10:00:40', NULL, '2021-03-06 18:14:30', '2021-03-06 22:00:40'),
(6, '5', 6, 1, 1, NULL, 'Comantario', '1500.00', '0.00', '1500.00', 0, NULL, NULL, NULL, '2021-03-06 07:20:20', '2021-03-06 09:40:27', '2021-03-06 09:40:34', '2021-03-06 09:40:38', NULL, '2021-03-06 19:20:06', '2021-03-06 21:40:38'),
(7, '6', 100, 0, 1, 2, NULL, '1975.00', '150.00', '2125.00', 0, NULL, NULL, NULL, '2021-03-06 08:39:07', '2021-03-06 09:31:39', '2021-03-06 09:32:01', '2021-03-06 09:32:11', '2021-03-06 09:35:46', '2021-03-06 20:38:41', '2021-03-06 21:35:46'),
(8, '7', 1, 0, 1, 2, NULL, '1500.00', '150.00', '1650.00', 1, NULL, NULL, NULL, '2021-06-19 09:32:04', NULL, NULL, NULL, NULL, '2021-06-13 20:40:15', '2021-06-19 21:32:04'),
(9, '8', 2, 0, 1, 2, NULL, '1500.00', '150.00', '1650.00', 1, NULL, '{\"upload\":\"success\",\"path\":\"2021\\/06\\/19\",\"original_name\":\"perro-genial-gafas-sol-parque_23-2148332387.jpg\",\"final_name\":\"perro-genial-gafas-sol-parque-23-2148332387jpg-1624138487.jpg\"}', '2021-06-19 04:36:56', '2021-06-19 09:34:47', NULL, NULL, NULL, NULL, '2021-06-19 21:34:04', '2021-06-19 22:36:56'),
(10, '9', 6, 0, 1, 2, 'Rápido porfavor', '189.00', '150.00', '339.00', 1, NULL, '{\"upload\":\"success\",\"path\":\"2021\\/06\\/19\",\"original_name\":\"perro-genial-gafas-sol-parque_23-2148332387.jpg\",\"final_name\":\"perro-genial-gafas-sol-parque-23-2148332387jpg-1624138790.jpg\"}', '2021-06-19 04:20:25', '2021-06-19 09:39:50', '2021-06-19 10:20:58', NULL, '2021-06-19 10:21:07', NULL, '2021-06-19 21:39:28', '2021-06-19 22:21:07'),
(11, '10', 2, 0, 2, 3, NULL, '5000.00', '50.00', '5050.00', 1, NULL, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/04\",\"original_name\":\"pngwing.com (7).png\",\"final_name\":\"pngwingcom-7png-1646438457.png\"}', '2022-03-04 06:01:45', '2022-03-04 11:00:57', NULL, NULL, NULL, NULL, '2022-02-28 17:38:31', '2022-03-04 23:01:45'),
(12, '11', 2, 0, 2, 3, 'prueba', '5000.00', '4000.00', '9000.00', 1, NULL, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/04\",\"original_name\":\"pngwing.com.png\",\"final_name\":\"pngwingcompng-1646439449.png\"}', '2022-03-04 06:18:04', '2022-03-04 11:17:29', NULL, NULL, NULL, NULL, '2022-03-04 23:02:57', '2022-03-04 23:18:04'),
(13, NULL, 0, 0, 2, 3, NULL, '9800.00', '4000.00', '13800.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 21:26:18', '2022-03-08 17:28:38'),
(14, '12', 2, 0, 1, 2, 'Prueba', '17000.00', '4000.00', '21000.00', 1, NULL, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/07\",\"original_name\":\"Captura de pantalla 2021-01-31 193327.png\",\"final_name\":\"captura-de-pantalla-2021-01-31-193327png-1646716685.png\"}', '2022-03-07 11:20:00', '2022-03-07 16:18:05', NULL, NULL, NULL, NULL, '2022-03-08 04:10:55', '2022-03-08 04:20:00'),
(15, '13', 6, 0, 3, 4, NULL, '8000.00', '4000.00', '12000.00', 1, NULL, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/08\",\"original_name\":\"Captura de pantalla 2021-01-31 193327.png\",\"final_name\":\"captura-de-pantalla-2021-01-31-193327png-1646753543.png\"}', '2022-03-08 09:34:09', '2022-03-08 14:32:23', NULL, NULL, '2022-03-08 14:34:31', NULL, '2022-03-08 14:30:13', '2022-03-08 14:34:31'),
(16, '14', 2, 0, 3, 4, NULL, '11000.00', '4000.00', '15000.00', 1, NULL, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/08\",\"original_name\":\"Anotaci\\u00f3n 2020-07-08 212239.png\",\"final_name\":\"anotacion-2020-07-08-212239png-1646753989.png\"}', '2022-03-08 09:41:41', '2022-03-08 14:39:49', NULL, '2022-03-08 14:41:01', NULL, NULL, '2022-03-08 14:38:30', '2022-03-08 14:41:41'),
(17, '15', 6, 0, 4, 5, NULL, '34100.00', '6000.00', '40100.00', 1, NULL, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/08\",\"original_name\":\"Anotaci\\u00f3n 2020-07-08 212239.png\",\"final_name\":\"anotacion-2020-07-08-212239png-1646766358.png\"}', '2022-03-08 01:06:38', '2022-03-08 06:05:58', NULL, NULL, '2022-03-08 06:07:25', NULL, '2022-03-08 18:02:32', '2022-03-08 18:07:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_items`
--

CREATE TABLE `orders_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `label_item` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `discount_status` int(11) NOT NULL DEFAULT 0,
  `discount` int(11) NOT NULL DEFAULT 0,
  `discount_until_date` date DEFAULT NULL,
  `price_initial` decimal(11,2) DEFAULT NULL,
  `price_unit` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders_items`
--

INSERT INTO `orders_items` (`id`, `user_id`, `order_id`, `product_id`, `inventory_id`, `variant_id`, `label_item`, `quantity`, `discount_status`, `discount`, `discount_until_date`, `price_initial`, `price_unit`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 2, NULL, 'Pantalón deportivo #1 / Talla #32', 1, 0, 0, NULL, '475.00', '475.00', '475.00', '2021-03-07 00:10:10', '2021-03-07 00:10:10'),
(2, 1, 2, 2, 3, 6, 'Set deportivo y ocacional / Talla Small / Negro', 1, 0, 0, NULL, '1500.00', '1500.00', '1500.00', '2021-03-07 00:11:05', '2021-03-07 00:11:05'),
(3, 1, 3, 1, 2, NULL, 'Pantalón deportivo #1 / Talla #32', 1, 0, 0, NULL, '475.00', '475.00', '475.00', '2021-03-07 00:11:28', '2021-03-07 00:11:28'),
(4, 1, 4, 2, 3, 5, 'Set deportivo y ocacional / Talla Small / Gris Claro', 1, 0, 0, NULL, '1500.00', '1500.00', '1500.00', '2021-03-07 00:12:00', '2021-03-07 00:12:00'),
(5, 1, 5, 2, 3, 5, 'Set deportivo y ocacional / Talla Small / Gris Claro', 1, 0, 0, NULL, '1500.00', '1500.00', '1500.00', '2021-03-06 18:14:30', '2021-03-06 18:14:30'),
(6, 1, 6, 2, 3, 5, 'Set deportivo y ocacional / Talla Small / Gris Claro', 1, 0, 0, NULL, '1500.00', '1500.00', '1500.00', '2021-03-06 19:20:06', '2021-03-06 19:20:06'),
(7, 1, 7, 1, 2, NULL, 'Pantalón deportivo #1 / Talla #32', 1, 0, 0, NULL, '475.00', '475.00', '475.00', '2021-03-06 20:38:41', '2021-03-06 20:38:41'),
(8, 1, 7, 2, 3, 5, 'Set deportivo y ocacional / Talla Small / Gris Claro', 1, 0, 0, NULL, '1500.00', '1500.00', '1500.00', '2021-03-06 20:39:01', '2021-03-06 20:39:01'),
(10, 1, 8, 2, 3, 5, 'Set deportivo y ocacional / Talla Small / Gris Claro', 1, 0, 0, NULL, '1500.00', '1500.00', '1500.00', '2021-06-13 21:26:13', '2021-06-13 21:26:13'),
(11, 1, 9, 2, 3, 5, 'Set deportivo y ocacional / Talla Small / Gris Claro', 1, 0, 0, NULL, '1500.00', '1500.00', '1500.00', '2021-06-19 21:34:39', '2021-06-19 21:34:39'),
(12, 1, 10, 3, 4, NULL, 'Producto de ejemplo #3 / Inventario 3', 1, 0, 0, NULL, '189.00', '189.00', '189.00', '2021-06-19 21:39:28', '2021-06-19 21:39:28'),
(14, 2, 11, 4, 5, NULL, 'Bananos / cajas de bananos', 1, 0, 0, NULL, '5000.00', '5000.00', '5000.00', '2022-03-04 22:55:54', '2022-03-04 22:55:54'),
(15, 2, 12, 4, 5, NULL, 'Bananos / cajas de bananos', 1, 0, 0, NULL, '5000.00', '5000.00', '5000.00', '2022-03-04 23:02:57', '2022-03-04 23:02:57'),
(16, 2, 13, 4, 5, NULL, 'Bananos / cajas de bananos', 1, 0, 0, NULL, '5000.00', '5000.00', '5000.00', '2022-03-07 21:26:18', '2022-03-07 21:26:18'),
(17, 2, 13, 5, 6, NULL, 'Manzana / Unidad', 4, 0, 0, NULL, '1200.00', '1200.00', '4800.00', '2022-03-07 22:13:12', '2022-03-07 22:13:12'),
(18, 1, 14, 3, 4, NULL, 'Piña / Unidad Piña', 2, 0, 0, NULL, '4000.00', '4000.00', '8000.00', '2022-03-08 04:11:26', '2022-03-08 04:11:26'),
(19, 1, 14, 4, 5, NULL, 'Bananos / Mano de bananos', 1, 0, 0, NULL, '5000.00', '5000.00', '5000.00', '2022-03-08 04:11:41', '2022-03-08 04:11:41'),
(20, 1, 14, 1, 1, NULL, 'Ajo / Cabeza de ajo', 4, 0, 0, NULL, '500.00', '500.00', '2000.00', '2022-03-08 04:11:59', '2022-03-08 04:11:59'),
(21, 1, 14, 6, 7, NULL, 'Cebolla cabezona / Libra de cebolla', 1, 0, 0, NULL, '2000.00', '2000.00', '2000.00', '2022-03-08 04:12:16', '2022-03-08 04:12:16'),
(22, 3, 15, 3, 4, NULL, 'Piña / Unidad Piña', 2, 0, 0, NULL, '4000.00', '4000.00', '8000.00', '2022-03-08 14:30:13', '2022-03-08 14:30:13'),
(23, 3, 16, 3, 4, NULL, 'Piña / Unidad Piña', 2, 0, 0, NULL, '4000.00', '4000.00', '8000.00', '2022-03-08 14:38:49', '2022-03-08 14:38:49'),
(24, 3, 16, 2, 3, NULL, 'Tomates / Libra de tomate', 2, 0, 0, NULL, '1500.00', '1500.00', '3000.00', '2022-03-08 14:39:19', '2022-03-08 14:39:19'),
(25, 4, 17, 7, 8, NULL, 'Cebolla larga / Rodaja de cebolla', 2, 0, 0, NULL, '2000.00', '2000.00', '4000.00', '2022-03-08 18:02:32', '2022-03-08 18:02:32'),
(26, 4, 17, 6, 7, NULL, 'Cebolla cabezona / Libra de cebolla', 1, 0, 0, NULL, '2000.00', '2000.00', '2000.00', '2022-03-08 18:02:43', '2022-03-08 18:02:43'),
(27, 4, 17, 5, 6, NULL, 'Manzana / Unidad', 3, 0, 0, NULL, '1200.00', '1200.00', '3600.00', '2022-03-08 18:02:56', '2022-03-08 18:02:56'),
(28, 4, 17, 4, 5, NULL, 'Bananos / Mano de bananos', 1, 0, 0, NULL, '5000.00', '5000.00', '5000.00', '2022-03-08 18:03:13', '2022-03-08 18:03:13'),
(29, 4, 17, 3, 4, NULL, 'Piña / Unidad Piña', 2, 0, 0, NULL, '4000.00', '4000.00', '8000.00', '2022-03-08 18:03:27', '2022-03-08 18:03:27'),
(30, 4, 17, 2, 3, NULL, 'Tomates / Libra de tomate', 1, 0, 0, NULL, '1500.00', '1500.00', '1500.00', '2022-03-08 18:03:39', '2022-03-08 18:03:39'),
(31, 4, 17, 1, 1, NULL, 'Ajo / Cabeza de ajo', 20, 0, 0, NULL, '500.00', '500.00', '10000.00', '2022-03-08 18:03:51', '2022-03-08 18:03:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL DEFAULT 0,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(11,2) NOT NULL DEFAULT 0.00,
  `in_discount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `discount_until_date` date DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `status`, `code`, `name`, `slug`, `category_id`, `subcategory_id`, `image`, `price`, `in_discount`, `discount`, `discount_until_date`, `content`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '0', 'Ajo', 'pantalon-deportivo-1', 12, 14, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/07\",\"original_name\":\"pngwing.com (5).png\",\"final_name\":\"pngwingcom-5png-1646711026.png\"}', '500.00', 0, 0, NULL, '&lt;p&gt;Prueba Final&lt;/p&gt;', NULL, '2021-02-14 04:56:39', '2022-03-08 02:46:56'),
(2, 1, '0', 'Tomates', 'set-deportivo-y-ocacional', 12, 14, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/07\",\"original_name\":\"pngwing.com (2).png\",\"final_name\":\"pngwingcom-2png-1646710953.png\"}', '1500.00', 0, 0, NULL, '&lt;p&gt;Lorem ipsum dolor sit amet consectetur adipisicing, elit. Sint debitis veritatis, libero deserunt facere? Nam eaque voluptatum, odit veritatis architecto ex similique earum. In debitis repellendus laborum hic ipsa iusto!&lt;/p&gt;', NULL, '2021-02-14 05:03:10', '2022-03-08 02:42:33'),
(3, 1, '0', 'Piña', 'producto-de-ejemplo-3', 10, 11, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/07\",\"original_name\":\"pngwing.com (1).png\",\"final_name\":\"pngwingcom-1png-1646710894.png\"}', '4000.00', 0, 0, NULL, '&lt;p&gt;Esto es un texto de prueba&lt;/p&gt;', NULL, '2021-05-29 22:32:35', '2022-03-08 02:45:38'),
(4, 1, '0', 'Bananos', 'bananos', 10, 11, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/07\",\"original_name\":\"abanos.png\",\"final_name\":\"abanospng-1646711450.png\"}', '5000.00', 0, 0, NULL, '&lt;p&gt;prueba&lt;/p&gt;', NULL, '2022-03-04 22:26:19', '2022-03-08 02:50:51'),
(5, 1, '0', 'Manzana', 'manzana', 10, 11, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/07\",\"original_name\":\"pngwing.com (2).png\",\"final_name\":\"pngwingcom-2png-1646694566.png\"}', '1200.00', 0, 0, NULL, '&lt;p&gt;Prueba2&lt;/p&gt;', NULL, '2022-03-07 22:09:26', '2022-03-07 22:12:27'),
(6, 1, '0', 'Cebolla cabezona', 'cebolla-cabezona', 12, 14, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/07\",\"original_name\":\"pngwing.com (3).png\",\"final_name\":\"pngwingcom-3png-1646710537.png\"}', '2000.00', 0, 0, NULL, '&lt;p&gt;Prueba de estado&lt;/p&gt;', NULL, '2022-03-08 02:35:38', '2022-03-08 02:50:13'),
(7, 1, '0', 'Cebolla larga', 'cebolla-larga', 12, 14, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/08\",\"original_name\":\"pngwing.com (6).png\",\"final_name\":\"pngwingcom-6png-1646764198.png\"}', '2000.00', 0, 0, NULL, '&lt;p&gt;Final&lt;/p&gt;', NULL, '2022-03-08 17:29:58', '2022-03-08 17:30:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_gallery`
--

CREATE TABLE `product_gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `file_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_gallery`
--

INSERT INTO `product_gallery` (`id`, `product_id`, `file_name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, '{\"upload\":\"success\",\"path\":\"2021\\/05\\/29\",\"original_name\":\"t_312-hd63f4056bbe7432ba402f32f98fe5a8ap-q50.jpg\",\"final_name\":\"t-312-hd63f4056bbe7432ba402f32f98fe5a8ap-q50jpg-1622327751.jpg\"}', '2022-03-08 02:42:07', '2021-05-29 22:35:51', '2022-03-08 02:42:07'),
(2, 2, '{\"upload\":\"success\",\"path\":\"2021\\/05\\/29\",\"original_name\":\"453-smoking.png\",\"final_name\":\"453-smokingpng-1622327893.png\"}', '2021-05-29 22:38:21', '2021-05-29 22:38:13', '2021-05-29 22:38:21'),
(3, 4, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/04\",\"original_name\":\"abanos.png\",\"final_name\":\"abanospng-1646436386.png\"}', '2022-03-04 22:26:49', '2022-03-04 22:26:26', '2022-03-04 22:26:49'),
(4, 4, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/04\",\"original_name\":\"abanos.png\",\"final_name\":\"abanospng-1646436415.png\"}', '2022-03-06 00:17:20', '2022-03-04 22:26:55', '2022-03-06 00:17:20'),
(5, 4, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/05\",\"original_name\":\"abanos.png\",\"final_name\":\"abanospng-1646529418.png\"}', '2022-03-06 00:17:18', '2022-03-06 00:17:00', '2022-03-06 00:17:18'),
(6, 4, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/05\",\"original_name\":\"abanos.png\",\"final_name\":\"abanospng-1646529450.png\"}', '2022-03-06 00:17:33', '2022-03-06 00:17:31', '2022-03-06 00:17:33'),
(7, 3, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/05\",\"original_name\":\"pngwing.com.png\",\"final_name\":\"pngwingcompng-1646529577.png\"}', '2022-03-06 00:19:43', '2022-03-06 00:19:37', '2022-03-06 00:19:43'),
(8, 4, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/06\",\"original_name\":\"abanos.png\",\"final_name\":\"abanospng-1646616420.png\"}', '2022-03-07 00:29:30', '2022-03-07 00:27:00', '2022-03-07 00:29:30'),
(9, 3, '{\"upload\":\"success\",\"path\":\"2022\\/03\\/07\",\"original_name\":\"pngwing.com (2).png\",\"final_name\":\"pngwingcom-2png-1646709104.png\"}', '2022-03-08 02:11:48', '2022-03-08 02:11:44', '2022-03-08 02:11:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_inventory`
--

CREATE TABLE `product_inventory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `limited` int(11) NOT NULL,
  `minimum` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_inventory`
--

INSERT INTO `product_inventory` (`id`, `product_id`, `name`, `quantity`, `price`, `limited`, `minimum`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cabeza de ajo', 50, '500.00', 0, 1, NULL, '2021-02-14 04:57:31', '2022-03-08 02:46:56'),
(2, 1, 'Talla #32', 16, '475.00', 0, 3, '2022-03-08 02:46:02', '2021-02-14 05:00:21', '2022-03-08 02:46:02'),
(3, 2, 'Libra de tomate', 50, '1500.00', 0, 1, NULL, '2021-02-14 05:03:49', '2022-03-08 02:48:54'),
(4, 3, 'Unidad Piña', 50, '4000.00', 1, 1, NULL, '2021-05-29 22:33:01', '2022-03-08 02:45:38'),
(5, 4, 'Mano de bananos', 100, '5000.00', 0, 10, NULL, '2022-03-04 22:28:18', '2022-03-08 02:48:16'),
(6, 5, 'Unidad', 50, '1200.00', 0, 1, NULL, '2022-03-07 22:12:04', '2022-03-07 22:12:04'),
(7, 6, 'Libra de cebolla', 50, '2000.00', 0, 1, NULL, '2022-03-08 02:50:05', '2022-03-08 02:50:05'),
(8, 7, 'Rodaja de cebolla', 500, '2000.00', 0, 1, NULL, '2022-03-08 17:30:34', '2022-03-08 17:30:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_inventory_variants`
--

CREATE TABLE `product_inventory_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_inventory_variants`
--

INSERT INTO `product_inventory_variants` (`id`, `product_id`, `inventory_id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Color Negro', '2022-03-08 02:46:33', '2021-02-14 04:59:09', '2022-03-08 02:46:33'),
(2, 1, 1, 'Color Gris', '2022-03-08 02:46:35', '2021-02-14 04:59:15', '2022-03-08 02:46:35'),
(3, 1, 1, 'Color Verde Militar', '2022-03-08 02:46:37', '2021-02-14 04:59:21', '2022-03-08 02:46:37'),
(4, 2, 3, 'Gris Oscuro', '2022-03-08 02:48:27', '2021-02-14 05:04:04', '2022-03-08 02:48:27'),
(5, 2, 3, 'Gris Claro', '2022-03-08 02:48:30', '2021-02-14 05:04:08', '2022-03-08 02:48:30'),
(6, 2, 3, 'Negro', '2022-03-08 02:48:32', '2021-02-14 05:04:12', '2022-03-08 02:48:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sorder` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`id`, `user_id`, `status`, `name`, `file_path`, `file_name`, `content`, `sorder`, `created_at`, `updated_at`) VALUES
(8, 2, 1, 'Los mejores productos a los mejores precios', '2022-03-08', '792-wingcom-7.png', '&lt;h2&gt;Encuentra los mejores productos a los mejores precios&lt;/h2&gt;\r\n&lt;p&gt;Todos los productos de la canasta familiar en un solo lugar. Atendemos de lunes a sábado de  8:00.am a 7:00.pm y los domingos de 8:00:am a 1:00.pm  &lt;/p&gt;', 1, '2022-03-08 17:35:02', '2022-03-08 17:53:10'),
(9, 2, 1, 'Ubicacion', '2022-03-08', '480-dq7rjrcvaaa-a6x.jpg', '&lt;h2&gt;Estamos ubicados en la Carrera 6a #9-04 Plazoleta de la juventud&lt;/h2&gt;\r\n&lt;p&gt;Todos los productos que buscas en un solo lugar&lt;/p&gt;\r\n&lt;iframe src=&quot;https://www.google.com/maps/embed?pb=!4v1646707835975!6m8!1m7!1sPj_fE4L7rbl9Id1EC85ebA!2m2!1d5.504413501109931!2d-73.85287292497485!3f135.86153!4f0!5f0.7820865974627469&quot; width=&quot;600&quot; height=&quot;450&quot; style=&quot;border:0;&quot; allowfullscreen=&quot;&quot; loading=&quot;lazy&quot;&gt;&lt;/iframe&gt;', 2, '2022-03-08 17:40:38', '2022-03-08 17:46:12'),
(10, 2, 1, 'Servicio de domicilio', '2022-03-08', '15-wingcom-9.png', '&lt;h2&gt;Domicilios a cualquier parte de Simijaca&lt;/h2&gt;\r\n&lt;p&gt;Por compras mayores a $40.000 pesos, se entrega el pedido a su puerta sin costo adicional&lt;/p&gt;', 3, '2022-03-08 17:44:36', '2022-03-08 17:44:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `role` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `status`, `role`, `name`, `lastname`, `email`, `avatar`, `phone`, `birthday`, `gender`, `email_verified_at`, `password`, `password_code`, `permissions`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Admin', 'Prueba', 'ortifruver@gmail.com', NULL, 3203865580, '1979-02-07', 2, NULL, '$2y$10$wGDPPgLcHVqOvDcw6IrltOQpVU3OFP5EuzwtWpb.NT.o9O4NZrxx6', NULL, '{\"dashboard\":\"true\",\"dashboard_small_stats\":\"true\",\"dashboard_sell_today\":\"true\",\"products\":\"true\",\"product_add\":\"true\",\"product_edit\":\"true\",\"product_search\":\"true\",\"product_delete\":\"true\",\"product_gallery_add\":\"true\",\"product_gallery_delete\":\"true\",\"product_inventory\":\"true\",\"categories\":\"true\",\"category_add\":\"true\",\"category_edit\":\"true\",\"category_delete\":\"true\",\"user_list\":\"true\",\"user_view\":\"true\",\"user_edit\":\"true\",\"user_banned\":\"true\",\"user_permissions\":\"true\",\"sliders_list\":\"true\",\"slider_add\":\"true\",\"slider_edit\":\"true\",\"slider_delete\":\"true\",\"settings\":\"true\",\"orders_list\":\"true\",\"order_view\":\"true\",\"orders_change_status\":\"true\",\"coverage_list\":\"true\",\"coverage_add\":\"true\",\"coverage_edit\":\"true\",\"coverage_delete\":\"true\"}', 'MMZuvVnibd1qGDCjfzMjx1u0Ei4rOCxx0sQDTETlUFmE6Cs17hIKMPjVT7SA', '2021-02-14 03:50:32', '2022-03-08 03:49:54'),
(2, 0, 1, 'Adrian Felipe', 'Lara Rey', 'aflr9905@gmail.com', '{\"upload\":\"success\",\"path\":\"2022\\/03\\/07\",\"original_name\":\"Dq7rjrCVAAA-A6X.jpg\",\"final_name\":\"dq7rjrcvaaa-a6xjpg-1646694873.jpg\"}', 3123890178, '1999-05-13', 1, NULL, '$2y$10$UCcIp8pzcuWtmv6rzreWUOu0k8ULQschvQTsciyN5jJtKROu8gxSC', NULL, '{\"dashboard\":\"true\",\"dashboard_small_stats\":\"true\",\"dashboard_sell_today\":\"true\",\"products\":\"true\",\"product_add\":\"true\",\"product_edit\":\"true\",\"product_search\":\"true\",\"product_delete\":\"true\",\"product_gallery_add\":\"true\",\"product_gallery_delete\":\"true\",\"product_inventory\":\"true\",\"categories\":\"true\",\"category_add\":\"true\",\"category_edit\":\"true\",\"category_delete\":\"true\",\"user_list\":\"true\",\"user_view\":\"true\",\"user_edit\":\"true\",\"user_banned\":\"true\",\"user_permissions\":\"true\",\"sliders_list\":\"true\",\"slider_add\":\"true\",\"slider_edit\":\"true\",\"slider_delete\":\"true\",\"settings\":\"true\",\"orders_list\":\"true\",\"order_view\":\"true\",\"orders_change_status\":\"true\",\"coverage_list\":\"true\",\"coverage_add\":\"true\",\"coverage_edit\":\"true\",\"coverage_delete\":\"true\"}', 'q4QrR2p4H6XuCwPV8eDg0NJZrSFCkmgqd245mn6f9arIfIrKRm6KOJhEvPCY', '2022-02-28 17:35:54', '2022-03-07 22:14:33'),
(3, 0, 0, 'prueba', 'Final', 'prueba@gma.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$B2vmrleqNpydABPdBBttSeXKGqbwwxjuuORq9LPpiWch3zjvdVX8C', NULL, NULL, '8G7L2Y0RqXMg8t18gRmfHLsGtCwwhg8nwA1l8XiioLYIAp6HSkGB52Swc6NI', '2022-03-08 03:45:49', '2022-03-08 03:45:49'),
(4, 0, 0, 'Juan Perez', 'Test Final', 'test@gm.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$YqeLiisS.Fhqgmve5JvGoutRWP7ZKdLWJwsHjO.OgbDTUZWYtxurG', NULL, NULL, 'yNRujuJzY3pT8G9QSRFqUEW6tX2QIxIWKwqDNGBf9L3LJmaT824Vx2FLnsSm', '2022-03-08 18:02:03', '2022-03-08 18:02:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_address`
--

CREATE TABLE `user_address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addr_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_address`
--

INSERT INTO `user_address` (`id`, `user_id`, `state_id`, `city_id`, `name`, `addr_info`, `default`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4, 'Mi Casa', '{\"add1\":\"Barrio Belen\",\"add2\":\"16 Calle\",\"add3\":\"234\",\"add4\":\"Casa blanca\"}', 0, '2022-03-08 02:54:33', '2021-02-14 04:50:58', '2022-03-08 02:54:33'),
(2, 1, 3, 6, 'Casa Mamá', '{\"add1\":\"Barrio Belen\",\"add2\":\"16 Calle\",\"add3\":\"234\",\"add4\":\"Casa blanca\"}', 1, NULL, '2021-02-14 04:51:20', '2021-02-14 05:01:46'),
(3, 2, 1, 4, 'casa', '{\"add1\":\"asas\",\"add2\":\"31232\",\"add3\":\"as5\",\"add4\":\"aa\"}', 1, NULL, '2022-03-04 23:00:41', '2022-03-04 23:00:41'),
(4, 3, 1, 7, 'Apartamento1', '{\"add1\":\"los pinos\",\"add2\":\"Crr 3A #6-49\",\"add3\":\"casa 6\",\"add4\":\"Rapido\"}', 1, NULL, '2022-03-08 14:31:42', '2022-03-08 14:31:42'),
(5, 4, 2, 8, 'Casa', '{\"add1\":\"noc\",\"add2\":\"31232\",\"add3\":\"2\",\"add4\":\"ninguna\"}', 1, NULL, '2022-03-08 18:05:24', '2022-03-08 18:05:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_favorites`
--

CREATE TABLE `user_favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `module` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_favorites`
--

INSERT INTO `user_favorites` (`id`, `user_id`, `module`, `object_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2021-02-14 04:58:20', '2021-02-14 04:58:20'),
(2, 1, 1, 2, '2021-02-27 21:44:33', '2021-02-27 21:44:33');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coverage`
--
ALTER TABLE `coverage`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_inventory`
--
ALTER TABLE `product_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_inventory_variants`
--
ALTER TABLE `product_inventory_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_favorites`
--
ALTER TABLE `user_favorites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `coverage`
--
ALTER TABLE `coverage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `product_gallery`
--
ALTER TABLE `product_gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `product_inventory`
--
ALTER TABLE `product_inventory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `product_inventory_variants`
--
ALTER TABLE `product_inventory_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `user_favorites`
--
ALTER TABLE `user_favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
