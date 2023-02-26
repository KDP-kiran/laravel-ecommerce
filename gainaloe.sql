-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2023 at 06:17 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gainaloe`
--

-- --------------------------------------------------------

--
-- Table structure for table `coupencodes`
--

CREATE TABLE `coupencodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validfrom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validupto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2021_02_20_194346_create_products_table', 1),
(4, '2021_02_26_165458_create_orders_table', 1),
(5, '2021_03_05_064539_create_coupencodes_table', 1),
(6, '2021_03_05_113739_create_transactions_table', 1),
(7, '2021_11_04_162451_create_newsletter_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `sno` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Customer_Emailid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Delivery_Address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Order_Details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Coupen_Code` double(8,2) DEFAULT NULL,
  `Amount` double(8,2) NOT NULL,
  `paymentmode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Shipping_Status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `Delivery_Status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `Order_Cancel_Status` tinyint(4) NOT NULL DEFAULT '0',
  `Order_Cancelled_On` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `p_status_Updated_By` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `Customer_Emailid`, `Delivery_Address`, `Order_Details`, `Coupen_Code`, `Amount`, `paymentmode`, `Shipping_Status`, `Delivery_Status`, `Order_Cancel_Status`, `Order_Cancelled_On`, `p_status`, `p_status_Updated_By`, `created_at`, `updated_at`) VALUES
(1, 'rahulvijayanagaram@gmail.com', '18-1-265,fdcv<br>Anantapur,Andhra Pradesh,India<br>515001,9177889021,', '<br>Product Name:Dusbin, Quantity: 1<br> Price:750', NULL, 760.00, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2023-02-25 03:28:52', '2023-02-25 03:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `priority` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `delivery_charges` int(11) DEFAULT NULL,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `priority`, `name`, `description`, `url`, `rating`, `price`, `discount`, `image1`, `image2`, `image3`, `image4`, `title`, `keywords`, `meta_description`, `status`, `delivery_charges`, `additional_info`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dusbin', 'A waste container is a container for temporarily storing waste, and is usually made out of metal or plastic. Some common terms are dustbin, garbage can, and trash can.', 'Dusbin', 1, 1500, 50, 'Dusbin-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 10, '<div><font color=\"#008000\" face=\"Arial Black\"><span style=\"font-size: 24px;\"><b>Festivel Offer 50%</b></span></font><br></div>', '2021-11-12 11:26:16', '2021-11-12 11:32:40'),
(2, 2, 'Flowers and Fruits Basket Set', 'A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants The biological function of a flower is to facilitateA flower, sometimes', 'Flowers-Fruits-Basket-Set', 1, 2500, NULL, 'Flowers-Fruits-Basket-Set-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 10, '<div><font color=\"#008000\" face=\"Arial Black\"><span style=\"font-size: 24px; background-color: rgb(242, 242, 242);\"><b>Festivel Offer 10%</b></span></font><br></div>', '2021-11-12 11:34:47', '2021-11-12 11:34:47'),
(3, 3, 'Mat', 'A Piece of material used as a floor or seat covering or in front of a door to wipe the shoes on. 2 : a decorative piece of material used under dishes or vases. 3 : a pad or cushion for gymnastic', 'Mat', 1, 850, 5, 'Mat-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 10, '<div><font color=\"#008000\" face=\"Arial Black\"><span style=\"font-size: 24px;\"><b>Festivel Offer 5%</b></span></font><br></div>', '2021-11-12 11:36:21', '2021-11-12 11:36:47'),
(4, 4, 'Containers', 'Containers give developers the ability to create predictable environments that are isolated from other applications.', 'Containers', 1, 350, NULL, 'Containers-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 50, '<div><br></div>', '2021-11-12 11:37:56', '2021-11-12 11:37:56'),
(5, 1, 'TEST DEMO', 'TEST DEMO', 'drax', 1, 1220, 1, 'drax-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 11, '<div><br></div>', '2023-02-25 03:31:13', '2023-02-25 03:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TXNID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Oder_No` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternativemno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `image`, `address1`, `address2`, `city`, `pincode`, `state`, `country`, `mnumber`, `alternativemno`, `password`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kiran Patel', 'kdpatel1110@gmail.com', NULL, '1636046011.jpg', '18-1-265', 'fdcv', 'Anantapur', '515001', 'Andhra Pradesh', 'India', '9177889021', NULL, '$2y$10$MXBqo32Xo3zroC3qzdijLOLRJRtExrQhunD73N6DhTpI7uQIoN76O', 'admin', '1', NULL, '2021-11-04 11:09:03', '2021-11-12 11:09:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coupencodes`
--
ALTER TABLE `coupencodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `email` (`email`(191));

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coupencodes`
--
ALTER TABLE `coupencodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `sno` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
