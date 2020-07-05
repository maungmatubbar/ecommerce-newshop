-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2020 at 05:13 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Sony', 'Well Brand in the world', 1, '2020-05-30 22:07:37', '2020-05-31 05:56:15'),
(3, 'Samsung', 'Samsung Brand is china brand .This is big brand in the world', 1, '2020-06-01 03:24:00', '2020-06-01 03:24:00'),
(4, 'Arong', 'Arong is bangladeshi brand.This is many accessorise', 1, '2020-06-01 03:24:46', '2020-06-01 03:24:46'),
(5, 'Bata', 'Bata is the shoes brand.Which is like most of people of bangladesh', 1, '2020-06-01 09:14:59', '2020-06-01 09:14:59'),
(6, 'Apax', 'Apax Brand is the best brand for shoes', 1, '2020-06-01 09:30:08', '2020-06-03 05:19:58'),
(7, 'Jamant Shari', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.', 1, '2020-06-01 09:33:08', '2020-06-01 09:33:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 'Sports', 'Bangladesh Sports item cricket bat,ball,glop', 1, '2020-05-29 23:58:16', '2020-06-03 03:32:04'),
(3, 'Mobile', 'Mobile useful for all of mans day by day', 0, '2020-05-31 03:12:59', '2020-06-03 03:36:29'),
(4, 'Shirt', 'Shirt Which is mans ware', 1, '2020-06-01 03:25:46', '2020-06-01 03:25:46'),
(5, 'Bag', 'Bag', 1, '2020-06-01 09:11:39', '2020-06-01 09:11:39'),
(6, 'Cloth', 'All Cloth are made in Bangladesh', 1, '2020-06-01 09:13:41', '2020-06-01 09:13:41'),
(7, 'Shoes', 'Bangladeshi Brand shoes', 1, '2020-06-01 09:14:09', '2020-06-01 09:14:09'),
(8, 'Woman Shirt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.', 1, '2020-06-01 09:36:45', '2020-06-01 09:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email_address`, `password`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Anik', 'Pual', 'wpdeveloperoronno@gmail.com', '$2y$10$hB1FDtF8OVSa1L95uL4QHuDT72f5cWanWw21wtS2F.QM2EgO9nMHq', '01756125269', 'Dhaka,Mirpur', '2020-06-15 08:32:27', '2020-06-15 08:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_05_29_144847_create_categories_table', 2),
(4, '2020_05_31_035311_create_brands_table', 3),
(5, '2020_05_31_050701_create_products_table', 4),
(6, '2020_06_05_161553_create_customers_table', 5),
(7, '2020_06_14_065156_create_shippings_table', 6),
(8, '2020_06_14_154925_create_orders_table', 7),
(9, '2020_06_14_155045_create_payments_table', 7),
(10, '2020_06_14_155441_create_order_details_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_total` double(10,2) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Panding',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1000.00, 'Panding', '2020-06-15 08:33:27', '2020-06-15 08:33:27'),
(2, 1, 6, 6000.00, 'Panding', '2020-06-16 07:52:06', '2020-06-16 07:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 26, 'lasdi pant', 1000.00, 1, '2020-06-15 08:33:27', '2020-06-15 08:33:27'),
(2, 2, 25, 'Blaws Short Shirt', 2000.00, 1, '2020-06-16 07:52:06', '2020-06-16 07:52:06'),
(3, 2, 23, 'Ladis Short shirt', 2000.00, 2, '2020-06-16 07:52:06', '2020-06-16 07:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Panding',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_type`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cash', 'Panding', '2020-06-15 08:33:27', '2020-06-15 08:33:27'),
(2, 2, 'Cash', 'Panding', '2020-06-16 07:52:06', '2020-06-16 07:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_name`, `product_price`, `product_quantity`, `product_short_description`, `product_long_description`, `product_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Sony 342R', 11997.00, 11, 'Partners are elite shops providing top-notch development and consulting. Each of our partners can help you craft a beautiful,', '<p>Partners are elite shops providing top-notch development and consulting. Each of our partners can help you craft a beautiful,</p>', 'product-images/1w.jpg', 1, '2020-06-01 02:40:06', '2020-06-01 02:40:06'),
(2, 3, 1, 'Sony 45DJ', 100000.00, 13, 'Lorem ipsum dolor dot net services in website', '<p>Lorem ipsum dolor dot net services in website</p>', 'product-images/1.jpg', 1, '2020-06-01 02:47:49', '2020-06-01 02:47:49'),
(3, 3, 1, 'Sony 56dg', 13000.00, 34, 'Lorem ipsum dolor dot net services in website', '<p>Lorem ipsum dolor dot net services in website</p>', 'product-images/3.jpg', 1, '2020-06-01 02:53:46', '2020-06-01 02:53:46'),
(4, 3, 1, 'sony 56DJ', 100000.00, 30, 'ou\'re browsing the documentation for an old version of Laravel. Consider upgrading your project to', '<p>ou&#39;re browsing the documentation for an old version of Laravel. Consider upgrading your project to</p>', 'product-images/66.jpg', 1, '2020-06-01 03:22:31', '2020-06-01 03:22:31'),
(5, 4, 4, 'T shirt', 5000.00, 56, 'Earn 10 reputation in order to answer this question. The reputation requirement helps protect this question from spam and non-answer activity.', '<p>Earn 10 reputation in order to answer this question. The reputation requirement helps protect this question from spam and non-answer activity. Earn 10 reputation in order to answer this question. The reputation requirement helps protect this question from spam and non-answer activity.</p>', 'product-images/Md.-Habibur-Rahman-Sir.jpg', 1, '2020-06-01 04:29:11', '2020-06-24 22:11:38'),
(6, 2, 4, 'T shirt dfdf', 1200.00, 23, 'By default Intervention Image uses PHP\'s GD library extension to process all images. If you want to switch to k, you can pull a configuration file into your application by running one of the following artisan command.', '<p>By default Intervention Image uses PHP&#39;s GD library extension to process all images. If you want to switch to Imagick, you can pull a configuration file into your application by running one of the following artisan command.</p>\r\n\r\n<p>&nbsp;</p>', 'product-images/r3.jpg', 1, '2020-06-01 04:52:04', '2020-06-03 06:08:39'),
(7, 4, 4, 'TTShirt', 500.00, 20, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.', '<pre>\r\n<strong>Lorem ipsum </strong>dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>', 'product-images/Md.-Habibur-Rahman-Sir.jpg', 1, '2020-06-01 09:17:19', '2020-06-24 21:51:30'),
(8, 5, 5, 'Shide Bag', 5678.00, 10, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>', 'product-images/Shide Bag.jpg', 1, '2020-06-01 09:18:08', '2020-06-01 09:18:08'),
(9, 5, 5, 'Bag girl', 1200.00, 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>', 'product-images/Bag girl.jpg', 1, '2020-06-01 09:19:04', '2020-06-01 09:19:04'),
(10, 7, 5, 'Shoes 23 Mans', 3000.00, 10, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>', 'product-images/Shoes 23 Mans.jpg', 1, '2020-06-01 09:19:59', '2020-06-01 09:19:59'),
(11, 7, 5, 'Shoes orga', 3200.00, 12, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>', 'product-images/Shoes orga.jpg', 1, '2020-06-01 09:20:54', '2020-06-01 09:20:54'),
(12, 4, 4, 'Shirt mans 12', 3000.00, 23, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>\r\n\r\n<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>', 'product-images/p18.jpg', 1, '2020-06-01 09:23:01', '2020-06-03 06:38:50'),
(13, 4, 4, 'Shirt DG', 4500.00, 1122, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>\r\n\r\n<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>', 'product-images/Shirt DG.jpg', 1, '2020-06-01 09:23:49', '2020-06-01 09:23:49'),
(14, 2, 4, 'Sport Shirt', 2000.00, 22, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>\r\n\r\n<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>', 'product-images/Sport Shirt.jpg', 1, '2020-06-01 09:25:46', '2020-06-01 09:25:46'),
(15, 6, 4, 'Night Dress', 2000.00, 12, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>\r\n\r\n<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>', 'product-images/Night Dress.jpg', 1, '2020-06-01 09:26:27', '2020-06-01 09:26:27'),
(16, 6, 4, 'Cap', 400.00, 12, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab </pre>\r\n\r\n<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>\r\n\r\n<pre>\r\nalias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>', 'product-images/Cap.jpg', 1, '2020-06-01 09:27:15', '2020-06-01 09:27:15'),
(17, 5, 4, 'Bag for man', 3000.00, 23, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>\r\n\r\n<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>', 'product-images/Bag for man.jpg', 1, '2020-06-01 09:28:02', '2020-06-01 09:28:02'),
(18, 5, 4, 'Woman Bag', 3000.00, 21, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>\r\n\r\n<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>', 'product-images/Woman Bag.jpg', 1, '2020-06-01 09:28:39', '2020-06-01 09:28:39'),
(19, 7, 6, 'Apax Shoes RR', 2000.00, 22, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab al</pre>\r\n\r\n<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>\r\n\r\n<pre>\r\nias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>', 'product-images/Apax Shoes RR.jpg', 1, '2020-06-01 09:30:59', '2020-06-01 09:30:59'),
(20, 7, 6, 'Apax GT', 3500.00, 34, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>\r\n\r\n<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>', 'product-images/Apax GT.jpg', 1, '2020-06-01 09:32:00', '2020-06-01 09:32:00'),
(21, 6, 7, 'Shari', 5000.00, 45, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>\r\n\r\n<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>', 'product-images/Shari.jpg', 1, '2020-06-01 09:33:52', '2020-06-01 09:33:52'),
(22, 3, 3, 'Samsung S4', 90000.00, 20, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>\r\n\r\n<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A dolores laudantium sequi? Ab alias culpa cum dicta doloremque dolores earum et fugit nihil quae quidem, quis sint vel veniam vero.</pre>', 'product-images/Samsung S4.jpg', 1, '2020-06-01 09:36:00', '2020-06-01 09:36:00'),
(23, 8, 4, 'Ladis Short shirt', 2000.00, 11, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur </pre>\r\n\r\n<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.</pre>\r\n\r\n<pre>\r\ndolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.</pre>', 'product-images/Ladis Short shirt.jpg', 1, '2020-06-01 09:37:58', '2020-06-01 09:37:58'),
(24, 8, 4, 'Ladis Short shirt and pant', 3000.00, 22, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.</pre>\r\n\r\n<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.</pre>', 'product-images/Ladis Short shirt and pant.jpg', 1, '2020-06-01 09:38:46', '2020-06-01 09:38:46'),
(25, 8, 4, 'Blaws Short Shirt', 2000.00, 23, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.</pre>\r\n\r\n<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.</pre>', 'product-images/Blaws Short Shirt.jpg', 1, '2020-06-01 09:39:36', '2020-06-01 09:39:36'),
(26, 8, 4, 'lasdi pant', 1000.00, 10, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.</pre>\r\n\r\n<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.</pre>', 'product-images/lasdi pant.jpg', 1, '2020-06-01 09:40:38', '2020-06-01 09:40:38'),
(27, 8, 7, 'Kamish', 2000.00, 12, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.</pre>', 'product-images/Kamish.jpg', 1, '2020-06-01 09:41:10', '2020-06-01 09:41:10'),
(28, 8, 7, 'Woman T Shirt', 600.00, 12, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.</pre>\r\n\r\n<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.</pre>', 'product-images/Woman T Shirt.jpg', 1, '2020-06-01 09:42:46', '2020-06-01 09:42:46'),
(29, 8, 7, 'Shari for woman', 10000.00, 11, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.</pre>\r\n\r\n<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.</pre>', 'product-images/Shari for woman.jpg', 1, '2020-06-01 09:43:44', '2020-06-01 09:43:44'),
(30, 8, 7, 'Short Matching Dress', 4000.00, 33, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.', '<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.</pre>\r\n\r\n<pre>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dolorem ducimus ea est ipsa labore molestias nam, obcaecati perspiciatis praesentium quidem quisquam quod recusandae similique veritatis voluptatem voluptatum.</pre>', 'product-images/p20.jpg', 1, '2020-06-01 09:45:11', '2020-06-03 07:52:27'),
(31, 5, 6, 'fsdfgdfgfsd', -6.00, 4, 'sadfsdfsad', '<p>fsdasfsdf</p>', 'product-images/102353-80295.jpg', 1, '2020-06-22 22:51:27', '2020-06-22 22:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `full_name`, `email_address`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Maung Matubbar', 'maung1607@gmail.com', '01726969417', 'Dhaka,Notun Bazar', '2020-06-14 06:05:59', '2020-06-14 06:05:59'),
(2, 'Anik Pual', 'wpdeveloperoronno@gmail.com', '0125895425', 'Dhaka,Mirpur', '2020-06-14 10:48:11', '2020-06-14 10:48:11'),
(3, 'Anik Pual', 'wpdeveloperoronno@gmail.com', '0125895425', 'Dhaka,Mirpur', '2020-06-14 10:53:15', '2020-06-14 10:53:15'),
(4, 'Anik Pual', 'wpdeveloperoronno@gmail.com', '01756125269', 'Dhaka,Mirpur', '2020-06-15 08:33:19', '2020-06-15 08:33:19'),
(5, 'Anik Pual', 'wpdeveloperoronno@gmail.com', '01756125269', 'Dhaka,Mirpur', '2020-06-15 09:42:14', '2020-06-15 09:42:14'),
(6, 'Dipu Sordar', 'dipusorder@gmail.com', '013355525663', 'Dhaka,Agargoa', '2020-06-16 07:52:02', '2020-06-16 07:52:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nazmul Hasan', 'nazmul@gmail.com', '$2y$10$Mrc3g.D4NTgEuiqyX4pDZ.doJQVgMGSggkLg7QK2i1YEAYH3N90te', 'AuoXaUO5dv83EXtczmNcOELLvB3h0TLExA49ZRB9TWbqcIhNaBsSnN5LFSgL', '2020-05-27 08:11:55', '2020-05-27 08:11:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
