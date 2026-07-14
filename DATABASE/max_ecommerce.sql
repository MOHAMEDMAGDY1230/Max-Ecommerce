-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14 ديسمبر 2024 الساعة 00:27
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `max ecommerce`
--

-- --------------------------------------------------------

--
-- بنية الجدول `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `card_name` varchar(100) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `exp_month` varchar(20) NOT NULL,
  `exp_year` int(11) NOT NULL,
  `cvv` varchar(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `payments`
--

INSERT INTO `payments` (`id`, `full_name`, `email`, `address`, `phone_number`, `country`, `city`, `card_name`, `card_number`, `exp_month`, `exp_year`, `cvv`, `created_at`) VALUES
(1, 'Omar', 'khaledabdelrheem@gmail.com', 'kaferelsheh', 'fgdhfg', 'dthdfth', 'mansourah', 'fhf', '355555', 'kg', 2025, '1010', '2024-12-13 23:06:50'),
(2, 'Omar', 'weirdcity@myway.com', 'xffkjhjka', '0125588522', 'fg', 'ngfn', 'fdf', '02525254', 'gdsv', 1111, '0004', '2024-12-13 23:10:11');

-- --------------------------------------------------------

--
-- بنية الجدول `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `old_price` decimal(10,2) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `products`
--

INSERT INTO `products` (`id`, `img`, `name`, `price`, `old_price`, `category`) VALUES
(1, 'img/product/0.png', 'SAMSUNG 55 Inch UHD 4K Smart TV With Receiver', 350.00, 0.00, 'electronics'),
(2, 'img/product/1.png', 'Redmi 13C Dual SIM with 6GB RAM', 280.00, 0.00, 'mobiles'),
(3, 'img/product/2.png', 'Dell Laptop Latitude 5530 Core i7-1255U 8GB SSD', 400.00, 0.00, 'electronics'),
(4, 'img/product/3.png', 'Canon EOS RP Mirrorless Camera', 530.00, 0.00, 'electronics'),
(5, 'img/product/4.png', 'OPPO A18 128GB 4GB Glowing Black', 250.00, 0.00, 'mobiles'),
(6, 'img/product/5.png', 'Samsung 27-Inch G55C Odyssey QHD 4k', 280.00, 0.00, 'electronics'),
(7, 'img/product/6.png', 'Infinix Smart (Galaxy White, 4GB RAM, 64GB Storage)', 220.00, 300.00, 'mobiles'),
(8, 'img/product/7.png', 'HP Victus Gaming Laptop 8RAM SSD', 370.00, 0.00, 'electronics'),
(9, 'img/product/8.png', 'Xiaomi Redmi 13C Dual SIM 8GB', 320.00, 0.00, 'mobiles'),
(10, 'img/product/9.png', 'Handheld Barcode Scanner 1D/2D/QR Code', 80.00, 100.00, 'electronics'),
(11, 'img/product/10.png', 'Large Venue building mapping Projector', 300.00, 0.00, 'electronics'),
(12, 'img/product/11.png', 'Infinix Hot 40i (RAM: 4+4GB, 128GB)', 260.00, 300.00, 'mobiles'),
(13, 'img/product/12.png', 'HP DeskJet 2710 Printer, All-in-One', 370.00, 0.00, 'electronics'),
(14, 'img/product/13.png', 'Fuzzy Logic Rice Cooker DIGITAL-JAR 1.8L 940W – HD4515/67', 490.00, 0.00, 'appliances'),
(15, 'img/product/14.png', 'Sencor STS 5070SS Electric Toaster for Four Slices', 340.00, 0.00, 'appliances'),
(16, 'img/product/15.png', 'Infinix Smart 6 Plus (Miracle Black)', 240.00, 300.00, 'mobiles'),
(17, 'img/product/16.png', 'Washing Machine 959 Series 8kg Senator Aqua SX, Silver', 600.00, 700.00, 'appliances'),
(18, 'img/product/17.png', 'HIKVISION PTZ Camera 4K Outdoo', 185.00, 0.00, 'electronics'),
(19, 'img/product/18.png', 'OPPO Reno11 5G 256GB 12GB', 225.00, 0.00, 'mobiles'),
(20, 'img/product/19.png', 'VIVAX kettle WH-175L with a capacity of 1.7 ', 140.00, 0.00, 'appliances'),
(21, 'img/product/20.png', 'Kenstar Ester ABS Plastic 750W Mixer Grinder', 280.00, 330.00, 'appliances'),
(22, 'img/product/21.png', 'Multifunctional Food Processor', 350.00, 0.00, 'appliances'),
(23, 'img/product/22.png', 'Zanussi Washing Machine 8 Kg 1200 RPM ', 580.00, 0.00, 'appliances'),
(24, 'img/product/23.png', 'Sharp 42 Lt Electronic Oven Convection', 400.00, 0.00, 'appliances'),
(25, 'img/product/24.png', 'Lenovo Monitor Legion R27fc-30 Gaming Curved', 300.00, 380.00, 'electronics');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`) VALUES
(1, 'Omar', 'khaled', 'omar khaled', 'omar5alqeran@gmail.com', '$2y$10$tj/w2b3zm4Iu/IsBPEyVmONz8h8qHga/InJZaKRfswDAR6.W0hNuS'),
(2, 'Omar', 'Mero', 'omar khaled', 'weirdcity@myway.com', '$2y$10$xexEYsijtelmi1Kr0GQnPO.IWGV6EFcZfIMRXzLStkujOTBbKKnRi'),
(3, 'Omar', 'khaled', 'omar', 'omar@gmail.com', '$2y$10$GRkFSrS.KCyWifrz5fWWAO/QOQQGBk5rZDC0P7fC7KrljaQQcKszS');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
