-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2022 at 10:12 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_qlphukien`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `c_parent_id` int(11) DEFAULT 0,
  `c_supplier_id` int(10) UNSIGNED DEFAULT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `c_parent_id`, `c_supplier_id`, `c_name`, `c_code`, `c_active`, `created_at`, `updated_at`) VALUES
(6, 0, NULL, 'Pin', 'Pi_02', 1, '2022-05-02 09:13:58', '2022-05-11 03:47:32'),
(9, 0, 4, 'Gậy tự sướng', 'GT_01', 1, '2022-05-02 05:29:22', '2022-05-11 03:54:07'),
(10, 0, NULL, 'Ốp lưng', 'OL_03', 1, '2022-05-08 17:13:50', '2022-05-11 03:46:55'),
(11, 0, NULL, 'Camera', 'CM_04', 1, '2022-05-09 02:43:37', '2022-05-11 03:45:26'),
(12, 0, NULL, 'Tai nghe', 'TN_05', 1, '2022-05-09 07:13:30', '2022-05-11 02:19:48'),
(13, 0, NULL, 'Cáp, sạc', 'CS_08', 1, '2022-05-11 03:48:34', '2022-05-11 03:48:34'),
(14, 0, NULL, 'Đồ dùng thông minh', 'DDTM_06', 1, '2022-05-11 03:50:20', '2022-05-11 03:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `ct_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ct_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ct_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ct_phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ct_status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `ct_name`, `ct_code`, `ct_email`, `ct_phone`, `ct_status`, `created_at`, `updated_at`) VALUES
(2, 'Nguyễn Quốc Nhựt', 'NN_02', 'nhut@gmail.com', '0928817228', 1, '2022-05-11 04:16:03', '2022-05-11 04:16:03'),
(3, 'Trần Văn Dương', 'TD_01', 'duong@gmail.com', '0633747479', 1, '2022-05-11 04:15:26', '2022-05-11 04:15:26'),
(4, 'Đặng Văn Phúc', 'DP_03', 'phuc@gmail.com', '0833663211', 1, '2022-05-11 04:16:41', '2022-05-11 04:16:41'),
(5, 'Trương Minh Quốc', 'TQ_04', 'quoc@gmail.com', '0986563321', 1, '2022-05-11 04:17:22', '2022-05-11 04:17:22'),
(6, 'Lưu Bá Đức', 'LD_06', 'duc@gmail.com', '0736355271', 0, '2022-05-11 04:18:08', '2022-05-11 04:18:08'),
(7, 'Phan Văn Tuấn', 'PT_05', 'tuan@gmail.com', '0938335355', 0, '2022-05-11 04:18:53', '2022-05-11 04:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `group_permission`
--

CREATE TABLE `group_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_permission`
--

INSERT INTO `group_permission` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Toàn bộ hệ thống', 'Toàn bộ quyền quản lý hệ thống', '2022-04-30 04:23:54', '2019-10-09 04:23:54'),
(2, 'Quản lý loại hàng', NULL, '2019-10-09 04:24:36', '2019-10-09 04:25:30'),
(3, 'Quản lý đơn vị tính', NULL, '2019-10-09 04:25:56', '2019-10-09 04:25:56'),
(4, 'Quản lý sản phẩm', NULL, '2019-10-09 04:26:03', '2019-10-09 04:26:03'),
(5, 'Quản lý nhà cung cấp', NULL, '2019-10-09 04:26:16', '2019-10-09 04:26:16'),
(6, 'Quản lý dữ liệu nhập hàng', NULL, '2019-10-09 04:35:44', '2019-10-09 04:35:44'),
(7, 'Quản lý dữ liệu xuất hàng', NULL, '2019-10-09 04:36:04', '2019-10-09 04:36:04'),
(8, 'Quản lý dữ liệu kho hàng', NULL, '2019-10-09 04:36:46', '2019-10-09 04:36:46'),
(9, 'Quản lý quản trị viên', NULL, '2019-10-09 04:37:19', '2019-10-09 04:37:19'),
(10, 'Quản lý vai trò thành viên', NULL, '2019-10-09 04:37:38', '2019-10-09 04:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_01_01_182234_create_users_table', 1),
(3, '2019_01_01_191839_entrust_setup_tables', 1),
(4, '2019_07_13_223947_create_jobs_table', 1),
(5, '2019_09_09_115130_create_supplier_table', 1),
(6, '2019_09_09_115248_create_category_table', 1),
(7, '2019_09_10_152224_create_units_table', 1),
(8, '2019_09_10_152317_create_products_table', 1),
(9, '2019_09_12_091125_create_warehousing_table', 1),
(10, '2019_09_12_091259_create_product_warehousing_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `group_permission_id`, `created_at`, `updated_at`) VALUES
(1, 'toan-bo-he-thong', 'Toàn bộ hệ thống', NULL, 1, '2019-10-09 04:38:19', '2019-10-09 04:38:19'),
(2, 'danh-sach-loai-hang', 'Danh sách loại hàng', NULL, 2, '2019-10-09 04:38:57', '2019-10-09 04:38:57'),
(3, 'them-moi-loai-hang', 'Thêm mới loại hàng', NULL, 2, '2019-10-09 04:39:21', '2019-10-09 04:39:21'),
(4, 'chinh-sua-loai-hang', 'Chỉnh sửa loại hàng', NULL, 2, '2019-10-09 04:39:41', '2019-10-09 04:39:41'),
(5, 'xoa-loai-hang', 'Xóa loại hàng', NULL, 2, '2019-10-09 04:39:55', '2019-10-09 04:39:55'),
(6, 'danh-sach-don-vi-tinh', 'Danh sách đơn vị tính', NULL, 3, '2019-10-09 04:40:45', '2019-10-09 04:40:45'),
(7, 'them-don-vi-tinh', 'Thêm đơn vị tính', NULL, 3, '2019-10-09 04:40:56', '2019-10-09 04:40:56'),
(8, 'sua-don-vi-tinh', 'Sửa đơn vị tính', NULL, 3, '2019-10-09 04:41:37', '2019-10-09 04:41:37'),
(9, 'xoa-don-vi-tinh', 'Xóa đơn vị tính', NULL, 3, '2019-10-09 04:41:49', '2019-10-09 04:41:49'),
(10, 'danh-sach-san-pham', 'Danh sách sản phẩm', NULL, 4, '2019-10-09 04:52:20', '2019-10-09 04:52:20'),
(11, 'them-san-pham', 'Thêm sản phẩm', NULL, 4, '2019-10-09 07:08:39', '2019-10-09 07:08:39'),
(12, 'sua-san-pham', 'Sửa sản phẩm', NULL, 4, '2019-10-09 07:08:54', '2019-10-09 07:08:54'),
(13, 'xoa-san-pham', 'Xóa sản phẩm', NULL, 4, '2019-10-09 07:09:06', '2019-10-09 07:09:06'),
(14, 'danh-sach-nha-cung-cap', 'Danh sách nhà cung cấp', NULL, 5, '2019-10-09 07:10:14', '2019-10-09 07:10:14'),
(15, 'them-nha-cung-cap', 'Thêm nhà cung cấp', NULL, 5, '2019-10-09 07:10:25', '2019-10-09 07:10:25'),
(16, 'sua-nha-cung-cap', 'Sửa nhà cung cấp', NULL, 5, '2019-10-09 07:10:41', '2019-10-09 07:10:41'),
(17, 'xoa-nha-cung-cap', 'Xóa nhà cung cấp', NULL, 5, '2019-10-09 07:11:12', '2019-10-09 07:11:12'),
(18, 'danh-sach-nhap-hang', 'Danh sách nhập hàng', NULL, 6, '2019-10-09 07:12:36', '2019-10-09 07:13:20'),
(19, 'them-don-nhap-hang', 'Thêm đơn nhập hàng', NULL, 6, '2019-10-09 07:13:50', '2019-10-09 07:14:33'),
(20, 'sua-don-nhap-hang', 'Sửa đơn nhập hàng', NULL, 6, '2019-10-09 07:14:17', '2019-10-09 07:14:17'),
(21, 'xoa-don-nhap-hang', 'Xóa đơn nhập hàng', NULL, 6, '2019-10-09 07:15:00', '2019-10-09 07:15:00'),
(22, 'du-lieu-san-pham-nhap-hang', 'Dữ liệu sản phẩm nhập hàng', NULL, 6, '2019-10-09 07:16:18', '2019-10-09 07:16:18'),
(23, 'danh-sach-xuat-hang', 'Danh sách xuất hàng', NULL, 7, '2019-10-09 07:17:36', '2019-10-09 07:17:36'),
(24, 'them-don-xuat-hang', 'Thêm đơn xuất hàng', NULL, 7, '2019-10-09 07:17:52', '2019-10-09 07:17:52'),
(25, 'sua-don-xuat-hang', 'Sửa đơn xuất hàng', NULL, 7, '2019-10-09 07:18:08', '2019-10-09 07:18:08'),
(26, 'xoa-don-xuat-hang', 'Xóa đơn xuất hàng', NULL, 7, '2019-10-09 07:18:38', '2019-10-09 07:18:38'),
(27, 'du-lieu-san-pham-xuat-hang', 'Dữ liệu sản phẩm xuất hàng', NULL, 7, '2019-10-09 07:19:51', '2019-10-09 07:19:51'),
(28, 'du-lieu-kho-hang', 'Dữ liệu kho hàng', NULL, 8, '2019-10-09 07:20:52', '2019-10-09 07:20:52'),
(29, 'danh-sach-quan-tri-vien', 'Danh sách quản trị viên', NULL, 9, '2019-10-09 07:22:20', '2019-10-09 07:22:20'),
(30, 'them-moi-quan-tri-vien', 'Thêm mới quản trị viên', NULL, 9, '2019-10-09 07:22:29', '2019-10-09 07:22:29'),
(31, 'sua-quan-tri-vien', 'Sửa quản trị viên', NULL, 9, '2019-10-09 07:22:49', '2019-10-09 07:22:49'),
(32, 'xoa-quan-tri-vien', 'Xóa quản trị viên', NULL, 9, '2019-10-09 07:24:27', '2019-10-09 07:24:27'),
(33, 'danh-sach-vai-tro-thanh-vien', 'Danh sách vai trò thành viên', NULL, 10, '2019-10-09 07:25:46', '2019-10-09 07:25:46'),
(34, 'them-vai-tro-thanh-vien', 'Thêm vài trò thành viên', NULL, 10, '2019-10-09 07:30:32', '2019-10-09 07:30:32'),
(35, 'sua-vai-tro-thanh-vien', 'Sửa vai trò thành viên', NULL, 10, '2019-10-09 07:30:43', '2019-10-09 07:30:43'),
(36, 'xoa-vai-tro-thanh-vien', 'Xóa vai trò thành viên', NULL, 10, '2019-10-09 07:30:56', '2019-10-09 07:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(6, 2),
(10, 2),
(11, 2),
(14, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `p_category_id` int(10) UNSIGNED DEFAULT NULL,
  `p_unit_id` int(10) UNSIGNED DEFAULT NULL,
  `p_user_id` int(10) UNSIGNED DEFAULT NULL,
  `p_code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_entry_price` double(8,2) DEFAULT NULL,
  `p_retail_price` double(8,2) DEFAULT NULL,
  `p_cost_price` double(8,2) DEFAULT NULL,
  `p_total_number` int(11) DEFAULT 0,
  `p_description` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `p_category_id`, `p_unit_id`, `p_user_id`, `p_code`, `p_name`, `p_images`, `p_entry_price`, `p_retail_price`, `p_cost_price`, `p_total_number`, `p_description`, `p_content`, `p_status`, `created_at`, `updated_at`) VALUES
(7, 10, 8, 1, 'O_03', 'Ốp trái táo', '7e855c6847ae599d91a25f374ad3a131.jpg', 10000.00, 18000.00, 15000.00, 100, NULL, NULL, 1, '2019-09-20 02:53:31', '2022-05-11 04:01:58'),
(8, 6, 5, 1, 'P_02', 'Pin dự phòng', '28644395ba1175272bb357683d099d46.jpg', 25000.00, 32000.00, 29000.00, 0, NULL, NULL, 1, '2019-09-20 02:54:07', '2022-05-11 03:59:53'),
(9, 9, 4, 1, 'MH_01', 'Gập chụp hình Bluetooth', '8bbfa7de9b97a142a5beb1e11e335286.jpg', 30000.00, 40000.00, 38000.00, 0, NULL, NULL, 1, '2020-05-29 05:30:57', '2022-05-11 03:58:10'),
(10, 12, 5, 1, 'TN_04', 'Tai nghe có dây', '37f4239cb62373379bd8e42a92f43bc6.jpg', 20000.00, 28000.00, 25000.00, 0, NULL, NULL, 1, '2022-05-09 07:22:25', '2022-05-11 03:58:44'),
(11, 13, 4, 1, 'CD_06', 'Cáp sạc có dây', 'c268e29d391c0da0389ff2ab0570a0c3.jpg', 30000.00, 40000.00, 36000.00, 0, NULL, NULL, 1, '2022-05-11 04:04:52', '2022-05-11 04:04:52'),
(12, 13, 4, 1, 'CK_05', 'Cáp sạc nam châm', 'cf799dca8fc1eb920fa8646cd9c07a29.jpg', 30000.00, 42000.00, 38000.00, 0, NULL, NULL, 1, '2022-05-11 04:06:59', '2022-05-11 04:07:38'),
(13, 14, 4, 1, 'TC_07', 'Tay cầm chơi game', '8cca519aafd7aef6e763c71afc3c0ca8.jpg', 40000.00, 51000.00, 48000.00, 0, NULL, NULL, 1, '2022-05-11 04:09:33', '2022-05-11 04:09:33'),
(14, 14, 4, 1, 'GD_08', 'Giá đỡ', '7f72fa77d2518f9363bd4765a7311479.jpg', 25000.00, 35000.00, 28000.00, 0, NULL, NULL, 1, '2022-05-11 04:12:01', '2022-05-11 04:12:01'),
(15, 11, 8, 1, 'CM_09', 'Camera mini', '68d6ab9bb1687360aad21a757aa21abb.jpg', 40000.00, 51000.00, 490000.00, 0, NULL, NULL, 1, '2022-05-11 04:14:11', '2022-05-14 02:29:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_warehousing`
--

CREATE TABLE `product_warehousing` (
  `id` int(10) UNSIGNED NOT NULL,
  `pw_product_id` int(10) UNSIGNED DEFAULT NULL,
  `pw_warehousing_id` int(10) UNSIGNED DEFAULT NULL,
  `pw_supplier_id` int(10) UNSIGNED DEFAULT NULL,
  `pw_customer_id` int(11) DEFAULT NULL,
  `pw_total_number` int(11) DEFAULT 0,
  `pw_active_price` tinyint(4) DEFAULT NULL,
  `pw_custom_price` double(15,2) DEFAULT NULL,
  `pw_total_price` decimal(15,2) DEFAULT NULL,
  `pw_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pw_location` tinyint(4) DEFAULT NULL,
  `pw_type` tinyint(4) DEFAULT NULL,
  `pw_manufacturing_date` datetime DEFAULT NULL,
  `pw_expiry_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_warehousing`
--

INSERT INTO `product_warehousing` (`id`, `pw_product_id`, `pw_warehousing_id`, `pw_supplier_id`, `pw_customer_id`, `pw_total_number`, `pw_active_price`, `pw_custom_price`, `pw_total_price`, `pw_note`, `pw_location`, `pw_type`, `pw_manufacturing_date`, `pw_expiry_date`, `created_at`, `updated_at`) VALUES
(48, 8, 24, 4, NULL, 15, 1, NULL, '97500.00', NULL, NULL, 1, NULL, NULL, '2022-05-10 02:51:43', '2022-05-10 02:51:43'),
(54, 9, 35, 10, NULL, 15, 1, NULL, '450000.00', NULL, NULL, 1, NULL, NULL, '2022-05-11 04:23:27', '2022-05-11 04:23:27'),
(55, 10, 36, 8, NULL, 15, 1, NULL, '300000.00', NULL, NULL, 1, NULL, NULL, '2022-05-11 04:26:38', '2022-05-11 04:26:38'),
(56, 11, 36, 8, NULL, 15, 1, NULL, '450000.00', NULL, NULL, 1, NULL, NULL, '2022-05-11 04:26:38', '2022-05-11 04:26:38'),
(57, 12, 37, 7, NULL, 15, 1, NULL, '450000.00', NULL, NULL, 1, NULL, NULL, '2022-05-11 04:28:16', '2022-05-11 04:28:16'),
(58, 13, 37, 7, NULL, 15, 1, NULL, '600000.00', NULL, NULL, 1, NULL, NULL, '2022-05-11 04:28:16', '2022-05-11 04:28:16'),
(59, 14, 38, 6, NULL, 15, 1, NULL, '375000.00', NULL, NULL, 1, NULL, NULL, '2022-05-11 04:29:40', '2022-05-11 04:29:40'),
(60, 15, 38, 6, NULL, 15, 1, NULL, '600000.00', NULL, NULL, 1, NULL, NULL, '2022-05-11 04:29:40', '2022-05-11 04:29:40'),
(61, 15, 39, NULL, 3, -2, 2, NULL, '102000.00', NULL, NULL, 2, NULL, NULL, '2022-05-11 07:02:25', '2022-05-11 07:02:25'),
(62, 14, 40, NULL, 2, -2, 3, NULL, '56000.00', NULL, NULL, 2, NULL, NULL, '2022-05-11 07:04:04', '2022-05-11 07:04:04'),
(63, 13, 41, NULL, 5, -2, 2, NULL, '102000.00', NULL, NULL, 2, NULL, NULL, '2022-05-11 07:05:19', '2022-05-11 07:05:19'),
(64, 13, 42, 7, NULL, 2, 1, NULL, '80000.00', NULL, NULL, 1, NULL, NULL, '2022-05-12 16:31:05', '2022-05-12 16:31:05'),
(65, 14, 42, 6, NULL, 2, 1, NULL, '50000.00', NULL, NULL, 1, NULL, NULL, '2022-05-12 16:31:05', '2022-05-12 16:31:05'),
(67, 15, 43, 6, NULL, 10, 1, NULL, '400000.00', NULL, NULL, 1, NULL, NULL, '2022-05-13 02:44:20', '2022-05-13 02:44:20'),
(68, 10, 44, NULL, 3, -10, 3, NULL, '250000.00', NULL, NULL, 2, NULL, NULL, '2022-05-13 02:49:25', '2022-05-13 02:49:25'),
(69, 15, 44, NULL, 3, -7, 2, NULL, '357000.00', NULL, NULL, 2, NULL, NULL, '2022-05-13 02:49:25', '2022-05-13 02:49:25'),
(70, 10, 45, 6, NULL, 15, 1, NULL, '300000.00', NULL, NULL, 1, NULL, NULL, '2022-05-14 02:31:03', '2022-05-14 02:31:03'),
(71, 7, 45, 6, NULL, 15, 1, NULL, '150000.00', NULL, NULL, 1, NULL, NULL, '2022-05-14 02:31:03', '2022-05-14 02:31:03'),
(72, 11, 46, NULL, 3, -10, 3, NULL, '360000.00', NULL, NULL, 2, NULL, NULL, '2022-05-14 02:33:31', '2022-05-14 02:33:31');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, '2022-05-03 07:37:59', '2022-05-08 04:51:32'),
(2, 'nhan-vien', 'Nhân viên', NULL, '2022-05-03 05:46:32', '2022-05-08 04:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(4, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_fax` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `s_name`, `s_code`, `s_email`, `s_phone`, `s_fax`, `s_website`, `s_logo`, `s_status`, `created_at`, `updated_at`) VALUES
(4, 'Lenovo', 'NCC_06', 'Lenovo@gmail.com', '0747999991', NULL, NULL, NULL, 1, '2022-05-01 09:08:03', '2022-05-08 17:03:26'),
(5, 'Nokia', 'NCC_05', 'Nokia@gmail.com', '0987875641', NULL, NULL, NULL, 1, '2022-05-01 09:08:27', '2022-05-08 17:02:46'),
(6, 'Oppo', 'NCC_04', 'Oppo@gmail.com', '0973723621', NULL, NULL, NULL, 1, '2022-05-01 09:08:58', '2022-05-08 17:01:45'),
(7, 'Huawei', 'NCC_03', 'Huawei@gmail.com', '0934356711', NULL, NULL, NULL, 1, '2022-05-01 09:09:59', '2022-05-08 17:01:16'),
(8, 'Samsung', 'NCC_02', 'Samsung@gmail.com', '0927635362', NULL, NULL, NULL, 1, '2022-05-01 09:11:33', '2022-05-08 17:00:39'),
(9, 'Apple', 'NCC_01', 'Apple@gmail.com', '0928817228', NULL, NULL, NULL, 1, '2022-05-01 09:12:48', '2022-05-08 16:59:34'),
(10, 'Vivo', 'NCC_07', 'Vivo@gmail.com', '0937373732', NULL, NULL, NULL, 1, '2022-05-09 07:05:37', '2022-05-09 07:05:37'),
(12, 'Motorola', 'NCC_08', 'motorola@gmail.com', '0998838331', 'fax', 'web', NULL, 0, '2022-05-13 02:38:37', '2022-05-13 02:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `u_code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `u_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `u_code`, `u_name`, `created_at`, `updated_at`) VALUES
(4, 'DV_03', 'Bộ', '2022-05-03 07:42:30', '2022-05-08 17:17:13'),
(5, 'DV_02', 'Cái', '2022-05-03 07:42:48', '2022-05-08 17:16:59'),
(8, 'DV_01', 'Chiếc', '2022-05-03 05:29:51', '2022-05-08 17:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `account` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `account`, `password`, `full_name`, `email`, `phone`, `avatar`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$o0536xrgEK55EUZJorcju.pzFXmgwjkblc2pqEYtg24QZra7fubcq', 'Admin', 'hiep@gmail.com', '12345678', NULL, 1, '3id82TQcpJ6Fxe4nHCY6Znqd2WKm4Fj3AIXcKbO2Yc64pIVn4gO490ngDqc8', '2019-09-12 02:55:20', '2022-05-08 17:54:04'),
(2, 'test', '123456', 'Test', 'test@gmail.com', '123456', NULL, 1, '123456', NULL, NULL),
(4, 'duong', '$2y$10$mKHjsVnc5gB7H5cuoB9dW.iv2kcmoPjPh2jmsi5YL68hpYGIY52v2', 'Trần Văn Dương', 'duong@gmail.com', '0868906000', NULL, 1, 'PftnddCTe0CMFY6mQLAaiKEYDZwlFZWAWfYOMFF3IVZEyRRe9IhbFQFD3QyF', NULL, NULL),
(5, 'Quang', '$2y$10$fdjhHNOeTaAZ1S2ERDCw5uvjufGSjS4gt/wah4fqq4Snu97/qDXMa', 'Đặng Minh Quang', 'quang@gmail.com', '0474747331', NULL, 1, '0wnj8MqU8EojS024F1iyhDkvZbTNz8Zb3ICoKePegATvDpsOhA3f9wCnRjTG', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warehousing`
--

CREATE TABLE `warehousing` (
  `id` int(10) UNSIGNED NOT NULL,
  `pw_user_id` int(10) UNSIGNED DEFAULT NULL,
  `w_code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_type` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehousing`
--

INSERT INTO `warehousing` (`id`, `pw_user_id`, `w_code`, `w_name`, `w_note`, `w_type`, `created_at`, `updated_at`) VALUES
(6, 1, 'DHX_02', 'xuất mới', 'kkkk', 2, '2022-05-02 05:44:00', '2022-05-08 17:40:13'),
(7, 1, 'DHN_03', 'nhập thêm', NULL, 1, '2022-05-05 10:28:39', '2022-05-08 17:36:15'),
(9, 1, 'DHN_02', 'Thêm mới', NULL, 1, '2022-05-05 12:40:49', '2022-05-08 17:36:38'),
(11, 1, 'DHX_01', 'xuất', NULL, 2, '2022-05-05 15:45:02', '2022-05-08 17:39:14'),
(12, 1, 'DHN_01', 'thêm', NULL, 1, '2022-05-08 17:33:28', '2022-05-08 17:33:28'),
(17, 1, 'NXX_12/11/2021', 'xuất mới', NULL, 2, '2022-05-09 03:31:11', '2022-05-09 03:31:11'),
(18, 1, 'NCC_12/11/2021', 'xuất mới', NULL, 2, '2022-05-09 06:38:52', '2022-05-09 06:38:52'),
(20, 1, 'DHN_25', 'Thêm ốp lenovo', NULL, 1, '2022-05-09 07:25:48', '2022-05-09 07:25:48'),
(21, 1, 'DHN_17', 'thêm ốp', NULL, 1, '2022-05-09 08:17:48', '2022-05-09 08:17:48'),
(22, 1, 'DHN_19', 'thêm ốp', NULL, 1, '2022-05-09 08:19:39', '2022-05-09 08:19:39'),
(23, 1, 'DHN_30', 'thêm màn hình', NULL, 1, '2022-05-09 08:31:39', '2022-05-09 08:31:39'),
(24, 1, 'DHN_38', 'thêm pin', NULL, 1, '2022-05-09 08:38:47', '2022-05-10 02:51:43'),
(26, 1, 'NMM_12/11/2021', 'xuất', NULL, 2, '2022-05-10 02:30:57', '2022-05-10 02:30:57'),
(35, 1, 'DHN_22', 'nhập thêm', 'vivo', 1, '2022-05-11 04:23:27', '2022-05-11 04:23:27'),
(36, 1, 'DHN_24', 'Nhập thêm tai nghe, cáp sạc', 'samsung', 1, '2022-05-11 04:26:38', '2022-05-11 04:26:38'),
(37, 1, 'DHN_26', 'Nhập thêm cáp sạc nam châm, tay cầm', 'Huawei', 1, '2022-05-11 04:28:16', '2022-05-11 04:28:16'),
(38, 1, 'DHN_28', 'Nhập thêm giá đỡ, camera', 'Oppo', 1, '2022-05-11 04:29:40', '2022-05-11 04:29:40'),
(39, 1, 'DHX_59', 'xuất mới', 'Xuất camera', 2, '2022-05-11 07:02:25', '2022-05-11 07:02:25'),
(40, 1, 'DHX_53', 'xuất mới', 'Giá đỡ', 2, '2022-05-11 07:04:04', '2022-05-11 07:04:04'),
(41, 1, 'DHX_54', 'xuất mới', 'Tay cầm', 2, '2022-05-11 07:05:19', '2022-05-11 07:05:19'),
(42, 1, 'DHN_29', 'nhập thêm', 'tay cầm, giá đỡ', 1, '2022-05-12 16:31:05', '2022-05-12 16:31:05'),
(43, 1, 'DHN_11', 'nhập thêm', 'cường lực', 1, '2022-05-13 02:44:20', '2022-05-13 02:44:20'),
(44, 1, 'DHX_11', 'xuất mới', 'camera', 2, '2022-05-13 02:49:25', '2022-05-13 02:49:25'),
(45, 1, 'DHN_20', 'nhập thêm', 'tai nghe', 1, '2022-05-14 02:31:03', '2022-05-14 02:31:03'),
(46, 1, 'DHX_20', 'xuất', 'day sac', 2, '2022-05-14 02:33:31', '2022-05-14 02:33:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_c_code_unique` (`c_code`),
  ADD KEY `category_c_supplier_id_foreign` (`c_supplier_id`),
  ADD KEY `category_c_parent_id_index` (`c_parent_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_permission`
--
ALTER TABLE `group_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_permission_name_unique` (`name`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_group_permission_id_foreign` (`group_permission_id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_p_category_id_foreign` (`p_category_id`),
  ADD KEY `products_p_unit_id_foreign` (`p_unit_id`),
  ADD KEY `products_p_user_id_foreign` (`p_user_id`);

--
-- Indexes for table `product_warehousing`
--
ALTER TABLE `product_warehousing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_warehousing_pw_product_id_foreign` (`pw_product_id`),
  ADD KEY `product_warehousing_pw_warehousing_id_foreign` (`pw_warehousing_id`),
  ADD KEY `product_warehousing_pw_supplier_id_foreign` (`pw_supplier_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `supplier_s_code_unique` (`s_code`),
  ADD UNIQUE KEY `supplier_s_email_unique` (`s_email`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_account_unique` (`account`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehousing`
--
ALTER TABLE `warehousing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehousing_pw_user_id_foreign` (`pw_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `group_permission`
--
ALTER TABLE `group_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_warehousing`
--
ALTER TABLE `product_warehousing`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `warehousing`
--
ALTER TABLE `warehousing`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_c_supplier_id_foreign` FOREIGN KEY (`c_supplier_id`) REFERENCES `supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_group_permission_id_foreign` FOREIGN KEY (`group_permission_id`) REFERENCES `group_permission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_p_category_id_foreign` FOREIGN KEY (`p_category_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_p_unit_id_foreign` FOREIGN KEY (`p_unit_id`) REFERENCES `units` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_p_user_id_foreign` FOREIGN KEY (`p_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_warehousing`
--
ALTER TABLE `product_warehousing`
  ADD CONSTRAINT `product_warehousing_pw_product_id_foreign` FOREIGN KEY (`pw_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_warehousing_pw_supplier_id_foreign` FOREIGN KEY (`pw_supplier_id`) REFERENCES `supplier` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product_warehousing_pw_warehousing_id_foreign` FOREIGN KEY (`pw_warehousing_id`) REFERENCES `warehousing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `warehousing`
--
ALTER TABLE `warehousing`
  ADD CONSTRAINT `warehousing_pw_user_id_foreign` FOREIGN KEY (`pw_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
