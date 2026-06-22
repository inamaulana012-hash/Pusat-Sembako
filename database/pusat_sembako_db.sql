-- phpMyAdmin SQL Dump
-- version 5.2.1
-- Database: `pusat_sembako_db`

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- ========================================
-- Table structure for `categories`
-- ========================================

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Sembako'),
(2, 'Bumbu & Bahan Masakan'),
(3, 'Minuman'),
(4, 'Makanan'),
(5, 'Snack'),
(6, 'Kebersihan & Perawatan'),
(7, 'Kebutuhan Rumah Tangga');

-- ========================================
-- Table structure for `products`
-- ========================================

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `status` enum('tersedia','tidak tersedia') NOT NULL DEFAULT 'tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `products` (`product_id`, `category_id`, `product_name`, `image`, `description`, `status`) VALUES
(21, 1, 'Beras Medium 5kg', 'assets/products/beras-medium-5kg.jpg', 'Beras medium berat 5kg dengan kualitas baik untuk kebutuhan harian', 'tersedia'),
(22, 1, 'Beras Premium 5kg', 'assets/products/beras_premium-5kg.jpg', 'Beras premium pulen berat 5kg kemasan keluarga', 'tersedia'),
(23, 1, 'Tepung Terigu Bogasari', 'assets/products/tepung-terigu-bogasari.jpg', 'Tepung terigu serbaguna untuk memasak dan membuat kue', 'tersedia'),
(24, 1, 'Minyak Goreng 2L', 'assets/products/minyak-goreng-2L.jpg', 'Minyak goreng kemasan 2L praktis untuk kebutuhan rumah', 'tersedia'),
(25, 1, 'Sun Kara Santan Instan 65ml', 'assets/products/sun-kara-santan-instan-65ml.jpg', 'Santan instan cair praktis untuk masakan', 'tersedia'),
(26, 1, 'Gula Pasir GULAKU 1 kg', 'assets/products/gula-pasir-gulaku-1kg.jpg', 'Gula pasir merek GULAKU kemasan 1kg', 'tersedia'),
(27, 1, 'Gula Merah 500g', 'assets/products/gula-merah-500g.jpg', 'Gula merah berat 500g untuk bahan masakan dan minuman', 'tersedia'),
(28, 1, 'Telur Ayam Negeri 1kg', 'assets/products/telor-ayam-negeri-1kg.jpg', 'Telur ayam negeri segar berat 1kg', 'tersedia'),
(29, 1, 'Telur Puyuh 1kg', 'assets/products/telur-puyuh-1kg.jpg', 'Telur puyuh segar berat 1kg', 'tersedia'),
(30, 3, 'Susu UHT Ultra Milk', 'assets/products/susu-uht-ultra-milk.jpg', 'Susu UHT isi 5bks dengan berbagai rasa dan ukuran', 'tersedia'),
(31, 3, 'Teh Kotak', 'assets/products/teh-kotak.jpg', 'Minuman teh siap saji isi 5bks', 'tersedia'),
(32, 4, 'Mie Instan INDOMIE', 'assets/products/mie-instan-INDOMIE.jpg', 'Mie instan berbagai rasa', 'tersedia'),
(33, 5, 'Biskuit BETTER Fun Bites 100g', 'assets/products/biskuit-BETTER-fun-bites-100g.jpg', 'Biskuit manis isi krim', 'tersedia'),
(34, 6, 'Sabun Cuci Piring', 'assets/products/sabun-cuci-piring.jpg', 'Sabun cuci piring cair dengan ukuran kemasan kecil, sedang, dan besar', 'tersedia'),
(35, 7, 'Tisu Gulung NICE 10 Roll', 'assets/products/tisu-gulung-NICE-10-roll.jpg', 'Tisu gulung untuk kebutuhan rumah', 'tersedia'),
(36, 2, 'Kecap Manis ABC 600ml', 'assets/products/abc-kecap-600ml.jpg', 'Kecap manis untuk pelengkap dan bumbu berbagai masakan', 'tersedia'),
(37, 2, 'Saus Sambal ABC 335ml', 'assets/products/saus-sambal-ABC-335ml.jpg', 'Saus sambal pedas untuk pelengkap berbagai hidangan', 'tersedia'),
(38, 5, 'Wafer Tango Cokelat 100g', 'assets/products/wafer-tango-cokelat-100g.jpg', 'Wafer renyah dengan krim cokelat lezat', 'tersedia'),
(39, 6, 'Pasta Gigi Pepsodent 190g', 'assets/products/pasta-gigi-pepsodent-190g.jpg', 'Pasta gigi untuk menjaga kebersihan dan kesehatan gigi', 'tersedia'),
(40, 6, 'Sabun Mandi Lifebuoy Batang isi 4 60g', 'assets/products/sabun-mandi-lifebuoy-batang-isi4-60g.jpg', 'Sabun mandi untuk membersihkan dan menjaga kesegaran kulit', 'tersedia');

-- ========================================
-- Indexes
-- ========================================

ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

-- ========================================
-- AUTO_INCREMENT
-- ========================================

ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

-- ========================================
-- Foreign Keys
-- ========================================

ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON UPDATE CASCADE;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
