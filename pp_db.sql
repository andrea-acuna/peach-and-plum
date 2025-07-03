-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2025 at 09:20 AM
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
-- Database: `pp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(128) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `session_id`, `product_id`, `quantity`, `added_at`) VALUES
(31, 3, '316ta1ar1k534mpkkp347h426i', 1, 1, '2025-07-02 09:56:58'),
(32, 3, '316ta1ar1k534mpkkp347h426i', 8, 2, '2025-07-02 09:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(128) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `special_instructions` text DEFAULT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `shipping_fee` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `session_id`, `customer_name`, `email`, `phone`, `address`, `city`, `postal_code`, `payment_method`, `special_instructions`, `subtotal`, `shipping_fee`, `tax`, `total`, `status`, `created_at`) VALUES
(1, 'PP202507011436', 1, 'corqqdsbftgghlb7kh6o88rt0f', 'Jane Doe', 'janedoe@email.com', '0912-345-6789', 'UE Manila', 'Manila', '1111', 'gcash', '', 6398.00, 0.00, 767.76, 7165.76, 'pending', '2025-07-01 09:01:03'),
(2, 'PP202507019863', 1, 'corqqdsbftgghlb7kh6o88rt0f', 'Jane Doe', 'johndoe@email.com', '0912-345-6789', 'UE Manila', 'Manila', '2354', 'cod', '', 5697.00, 0.00, 683.64, 6380.64, 'pending', '2025-07-01 09:02:16'),
(3, 'PP202507015404', 1, 'corqqdsbftgghlb7kh6o88rt0f', 'Jane Doe', 'janedoe@email.com', '0912-345-6789', 'UE Manila', 'Manila', '1111', 'cod', '', 3098.00, 0.00, 371.76, 3469.76, 'pending', '2025-07-01 09:05:30'),
(4, 'PP202507019724', 1, 'corqqdsbftgghlb7kh6o88rt0f', 'Alice Smith', 'alicesmith@example.com', '0912-345-6789', 'Sun Residences', 'Quezon City', '1010', 'bank', '', 7998.00, 0.00, 959.76, 8957.76, 'pending', '2025-07-01 09:09:26'),
(5, 'PP202507018733', 1, 'corqqdsbftgghlb7kh6o88rt0f', 'Kim Advincula', 'kimadv@example.com', '0912-345-6789', 'Sun Residences', 'Quezon City', '1010', 'gcash', '', 2099.00, 0.00, 251.88, 2350.88, 'pending', '2025-07-01 09:11:30'),
(6, 'PP202507011232', 1, 'corqqdsbftgghlb7kh6o88rt0f', 'Kim Advincula', 'kimadv@example.com', '0912-345-6789', 'Sun Residences', 'Quezon City', '1010', 'cod', '', 4797.00, 0.00, 575.64, 5372.64, 'pending', '2025-07-01 09:14:38'),
(7, 'PP202507015954', 1, 'corqqdsbftgghlb7kh6o88rt0f', 'Alice Smith', 'alicesmith@example.com', '0912-345-6789', 'UE Manila', 'Manila', '1111', 'cod', '', 4098.00, 0.00, 491.76, 4589.76, 'pending', '2025-07-01 09:15:46'),
(8, 'PP202507016907', 2, 'corqqdsbftgghlb7kh6o88rt0f', 'Asta Staria', 'astastaria@email.com', '0912-345-6789', 'UE Manila', 'Manila', '1010', 'cod', '', 3598.00, 0.00, 431.76, 4029.76, 'pending', '2025-07-01 09:19:26'),
(9, 'PP202507023868', 1, '316ta1ar1k534mpkkp347h426i', 'Alice Smith', 'alicesmith@example.com', '0912-345-6789', 'UE Manila', 'Manila', '1111', 'paypal', '', 1299.00, 0.00, 155.88, 1454.88, 'pending', '2025-07-02 09:23:43'),
(10, 'PP202507026355', 1, '316ta1ar1k534mpkkp347h426i', 'Asta Staria', 'astastaria@email.com', '0912-345-6789', 'UE Manila', 'Manila', '1111', 'credit card', '', 2499.00, 0.00, 299.88, 2798.88, 'pending', '2025-07-02 09:24:45'),
(11, 'PP202507028222', 1, '316ta1ar1k534mpkkp347h426i', 'Jane Doe', 'janedoe@email.com', '0912-345-6789', 'UE Manila', 'Manila', '1111', 'credit card', '', 7196.00, 0.00, 863.52, 8059.52, 'pending', '2025-07-02 09:42:17'),
(12, 'PP202507024091', 3, '316ta1ar1k534mpkkp347h426i', 'Maria DB', 'mariaaaa@example.com', '0912-345-6789', 'UE Manila', 'Manila', '1111', 'cod', '', 4498.00, 0.00, 539.76, 5037.76, 'pending', '2025-07-02 09:54:40'),
(13, 'PP202507034512', 4, 'u05rep7lg9osg2eon2ghe9b717', 'Jay', 'jayabf@email.com', '0912-345-6789', 'UE Manila', 'Manila', '1111', 'credit card', '', 3398.00, 0.00, 407.76, 3805.76, 'pending', '2025-07-03 06:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `total`) VALUES
(1, 1, 3, 1, 3899.00, 3899.00),
(2, 1, 1, 1, 2499.00, 2499.00),
(3, 2, 13, 1, 2499.00, 2499.00),
(4, 2, 12, 1, 1399.00, 1399.00),
(5, 2, 7, 1, 1799.00, 1799.00),
(6, 3, 15, 1, 1199.00, 1199.00),
(7, 3, 5, 1, 1899.00, 1899.00),
(8, 4, 14, 1, 2999.00, 2999.00),
(9, 4, 11, 1, 4999.00, 4999.00),
(10, 5, 16, 1, 2099.00, 2099.00),
(11, 6, 6, 1, 1599.00, 1599.00),
(12, 6, 5, 1, 1899.00, 1899.00),
(13, 6, 4, 1, 1299.00, 1299.00),
(14, 7, 6, 1, 1599.00, 1599.00),
(15, 7, 1, 1, 2499.00, 2499.00),
(16, 8, 8, 1, 2199.00, 2199.00),
(17, 8, 9, 1, 1399.00, 1399.00),
(18, 9, 4, 1, 1299.00, 1299.00),
(19, 10, 13, 1, 2499.00, 2499.00),
(20, 11, 13, 1, 2499.00, 2499.00),
(21, 11, 9, 1, 1399.00, 1399.00),
(22, 11, 5, 1, 1899.00, 1899.00),
(23, 11, 12, 1, 1399.00, 1399.00),
(24, 12, 16, 1, 1999.00, 1999.00),
(25, 12, 13, 1, 2499.00, 2499.00),
(26, 13, 16, 1, 1999.00, 1999.00),
(27, 13, 12, 1, 1399.00, 1399.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `recommended` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `date_added`, `recommended`) VALUES
(1, 'Floral Maxi Dress', 'Embrace elegance with our stunning floral maxi dress. Made from breathable fabric, it features a flowy silhouette, adjustable straps, and a beautiful print perfect for spring and summer occasions.', 999.00, 'https://images.unsplash.com/photo-1496747611176-843222e1e57c?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '2025-06-30', 50),
(2, 'Oversized Graphic Tee', 'Achieve effortless cool with our oversized graphic tee. Crafted from soft cotton, it offers a relaxed fit and a unique print that adds an edgy touch to any casual outfit.', 499.00, 'https://media.boohoo.com/i/boohoo/tzz00355_black_xl?w=900&qlt=default&fmt.jp2.qlt=70&fmt=auto&sm=fit', '2025-06-25', 45),
(3, 'Tailored Blazer', 'Elevate your professional and casual looks with our perfectly tailored blazer. Featuring a classic cut and premium fabric, it provides a sophisticated and sharp silhouette.', 999.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFwZYFeEbmqLhPCCgNnayutS8O6AErLPIYCQ&s', '2025-06-30', 60),
(4, 'Satin Blouse', 'Drape yourself in luxury with our soft satin blouse. Its smooth texture and elegant drape make it ideal for both office wear and evening outings.', 1299.00, 'https://image.uniqlo.com/UQ/ST3/ph/imagesgoods/466337/item/phgoods_32_466337_3x4.jpg?width=494', '2025-06-30', 33),
(5, 'High-Waisted Jeans', 'Flatter your figure with our high-waisted jeans. Designed for comfort and style, they offer a perfect fit and a versatile look.', 1899.00, 'https://i5.walmartimages.com/asr/b0397216-fdde-41dc-9bcd-7ba7edb2c665.e44613ad4b6a30a1013d65875470d1b7.jpeg', '2025-06-26', 78),
(6, 'Boho Midi Skirt', 'Channel your inner free spirit with our boho midi skirt. Its lightweight fabric and flowing design provide ultimate comfort.', 599.00, 'https://m.media-amazon.com/images/I/814RHkTVRZL._UY350_.jpg', '2025-06-26', 25),
(7, 'Silk Camisole', 'Indulge in the luxurious feel of our pure silk camisole. This delicate top is perfect for layering or wearing on its own.', 2199.00, 'https://shopravella.com/cdn/shop/products/RavellaCapriSilkCami-ProseccoGold1500_740x.jpg?v=1747515091', '2025-06-26', 47),
(8, 'Wrap Midi Dress', 'Flattering and fashionable, our wrap midi dress offers a customizable fit and an elegant drape.', 1199.00, 'https://i.pinimg.com/736x/ac/a1/24/aca124e00217974777a61ff60ba017b4.jpg', '2025-06-26', 15),
(9, 'Cropped Cardigan', 'Stay cozy and chic with our soft cropped cardigan. Ideal for layering over dresses or tops.', 1399.00, 'https://i.pinimg.com/736x/53/4c/6b/534c6b5882d460da6e9d36f4aa03b55e.jpg', '2025-06-26', 64),
(10, 'Pleated Mini Skirt', 'Add a playful touch to your wardrobe with our stylish pleated mini skirt. Its flattering design makes it perfect for a fun day out.', 999.00, 'https://i.pinimg.com/736x/58/60/c1/5860c16357ffd4d2b1c3daa8aa48f383.jpg', '2025-06-26', 87),
(11, 'Classic Trench Coat', 'Timeless and versatile, our classic trench coat is crafted from water-resistant fabric, featuring a belted waist and double-breasted buttons.', 2999.00, 'https://i.pinimg.com/736x/20/44/6e/20446eebab610e09c7582422be564d7a.jpg', '2025-06-26', 69),
(12, 'Ribbed Knit Sweater', 'Stay cozy with our ribbed knit sweater. Made from soft yarn with a flattering fit.', 1399.00, 'https://i.pinimg.com/736x/9b/24/33/9b243332b90fc21187d1d328740fc5a8.jpg', '2025-07-01', 52),
(13, 'Denim Jacket', 'A casual essential, our denim jacket features durable cotton fabric and functional pockets.', 2499.00, 'https://i.pinimg.com/736x/5e/a3/71/5ea3715dbd5a1eaa4ec03cb7cf04e7ef.jpg', '2025-07-01', 27),
(14, 'Wrap Front Jumpsuit', 'Effortlessly stylish, this wrap front jumpsuit features a cinched waist and wide legs for a flattering silhouette.', 2999.00, 'https://i.pinimg.com/736x/94/72/c9/9472c9dec9057deba653e9729a3687bc.jpg', '2025-07-01', 8),
(15, 'Cotton Button-Up Shirt', 'A versatile cotton button-up shirt with a relaxed fit. Perfect for office or casual wear.', 1199.00, 'https://i.pinimg.com/736x/cf/6f/8e/cf6f8e3969ecee7ca34382569b8859f7.jpg', '2025-07-01', 90),
(16, 'Wide-Leg Linen Pants', 'Lightweight and breathable linen pants with a wide-leg cut. Perfect for summer days.', 999.00, 'https://i.pinimg.com/736x/4a/1b/0b/4a1b0bf907fb1ff3ba7da98b1d41bcbe.jpg', '2025-07-01', 95),
(17, 'Velvet Slip Dress', 'Luxurious velvet slip dress with a sleek silhouette and adjustable straps. Perfect for elegant evenings.', 2799.00, 'https://i.pinimg.com/736x/50/f6/27/50f62733afc801e5789ff1d2cf12653b.jpg', '2025-07-01', 39),
(18, 'Chunky Knit Scarf', 'Keep warm and stylish with our chunky knit scarf made from soft wool blend.', 799.00, 'https://i.pinimg.com/736x/65/3d/73/653d7327fb6db47efc06dfc2aad3b955.jpg', '2025-07-01', 74),
(19, 'Leather Ankle Boots', 'Premium leather ankle boots with a sturdy heel and comfortable fit. Ideal for fall and winter fashion.', 3599.00, 'https://i.pinimg.com/736x/88/09/1b/88091b0fb4f6b267ad49f2e43824214d.jpg', '2025-07-01', 81),
(20, 'Floral Print Kimono', 'Light and breezy floral print kimono with wide sleeves. Great for layering over casual outfits.', 1799.00, 'https://i.pinimg.com/736x/3c/3d/66/3c3d66d78e072301bbcd2de5932ff549.jpg', '2025-07-01', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `gender` enum('male','female','other','prefer_not_to_say') NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `province_state` varchar(50) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `country` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `gender`, `date_of_birth`, `phone_number`, `email`, `street`, `city`, `province_state`, `zip_code`, `country`, `username`, `password`, `created_at`) VALUES
(1, 'Jane Doe', 'female', '2003-06-20', '09271234567', 'janedoe@email.com', 'UE Manila, Recto', 'Manila', 'Metro Manila', '1111', 'Philippines', 'jane_doe', '$2y$10$2idi8ePsZPc/JsYBuQZnIOfxDzOFwUNsIAH6yVDRIm9hCNU4PFyOO', '2025-07-01 08:27:38'),
(2, 'Asta  Staria', 'female', '2002-04-28', '09271234567', 'astastaria@email.com', 'UE Manila, Recto', 'Manila', 'Metro Manila', '1005', 'Philippines', 'astaaa', '$2y$10$Vb2ljWOHCr4gyH0Ezfag8OnxeHLcIdf2vu4Lt2BRslIzeY0OTV.zW', '2025-07-01 09:18:17'),
(3, 'Justin Pogi', 'male', '2001-02-04', '09271234567', 'justinnn@example.com', 'UE Manila, Recto', 'Manila', 'Metro Manila', '1111', 'Philippines', 'justinx', '$2y$10$fhInLCuEQltPFABgcYfqe.FTnJwIiwsgjlE7CwpzK2/iLu81deLJe', '2025-07-02 09:48:42'),
(4, 'JESTER ALBUFERA', 'prefer_not_to_say', '2000-03-15', '09271234567', 'jayabf@email.com', 'UE Manila, Recto', 'Manila', 'Metro Manila', '1005', 'Philippines', 'jayjay', '$2y$10$W1lWutYYVC2qrn8ZnadLE.xDH35uKvDvWeYKqfrBSE0F.pHdhD10m', '2025-07-03 06:33:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cart_product` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_number` (`order_number`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

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
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk_cart_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
