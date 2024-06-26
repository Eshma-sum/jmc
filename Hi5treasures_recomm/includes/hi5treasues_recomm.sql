-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 11:27 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hi5treasues_recomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_logo` varchar(255) NOT NULL,
  `about_us` mediumtext NOT NULL,
  `location` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `insta_link` varchar(255) NOT NULL,
  `fb_link` varchar(255) NOT NULL,
  `viber_link` varchar(255) NOT NULL,
  `whatsapp_link` varchar(255) NOT NULL,
  `extra_info` mediumtext NOT NULL,
  `motto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `company_name`, `company_logo`, `about_us`, `location`, `email`, `phone`, `insta_link`, `fb_link`, `viber_link`, `whatsapp_link`, `extra_info`, `motto`) VALUES
(1, 'Hi5treasures._.pkr', 'rosebouquet3.jpg', 'Delivering happiness through the gifts....Designed with style and love....We do delivery all over Nepal....In a fast-paced world where meaningful moments with loved ones can slip through our fingers and the demands of daily life often conceal the things that truly matter, Hi5treasures is your partner in nurturing genuine human connections that you dearly crave. For 5 wonderful years, we have not only added extra sparkle to numerous celebrations but have also touched many souls and treasured countless relationships. Our journey has always walked hand in hand with your evolving needs and changing tastes. And every gift within our collection, whether it be a bouquet, or a personalised keepsake, has carried a story of love, gratitude, and affection.\r\n\r\n The heart of Hi5treasures remains unwavering in its commitment to satisfy its customers...After all, we do not just deliver gifts; we facilitate the expression of your feelings and the forging of deep ties with those you cherish. This promise has been our guiding light for years, it shines with even more warmth to help you keep that flame of love blazing!!!', 'Pokhara', 'hi5treasures.pkr@gmail.com', '9846907548', 'https://www.instagram.com/hi5treasures._.pkr', 'https://www.facebook.com/hi5treasures', 'viber://chat?number=9846907548', 'https://wa.me/9846907548', 'Gifts That Speak the Language of Love!!!....\r\nThere is no better way of expressing love to your dearest one than through thoughtful gifts! The language of love is a universal one, and we all know that sometimes words alone are not enough. What is more, the best way to show someone you love them is by giving them something that truly conveys the feelings you have for them. And what better way to do so than with gifts that express your affection? At Hi5treasures, we understand these sentiments and bring you a wide range of exquisite gifts online. From beautiful flowers to tempting chocolates and emotional handicraft items to meaningful gifts and personalized items, we have got all your gifting needs covered. Whether it is for birthdays, anniversaries, or special occasions like Mothers Day, Fathers Day, Friendship Day, Dashain, Tihar and Valentines Day, Hi5treasures has the perfect gift selection, to make your loved ones feel cherished. Our commitment to quality and customer satisfaction is evident in every gift we deliver. With our extensive collection of romantic flowers, personalized items, and convenient same-day delivery on valentine gifts, Hi5treasures is your ideal gifting platform for every memorable occasion.', 'feed your soul');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `product_id` int(11) NOT NULL,
  `quantity` int(100) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'Bouquet'),
(2, 'Hamper'),
(3, 'Frame'),
(4, 'Mug'),
(5, 'Exploision Box'),
(6, 'Message Jar'),
(7, 'Corporate Gifts'),
(8, 'Scrapbook'),
(9, 'Tower'),
(13, 'Doll'),
(15, 'Letters');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `message_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `reply` text NOT NULL,
  `reply_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `username`, `message`, `message_time`, `reply`, `reply_time`, `is_read`, `is_seen`) VALUES
(1, 'Krishna', 'I need a bouquet', '2024-05-19 16:27:33', 'what type of bouquet would you like to have...?', '2024-05-19 16:31:19', 1, 1),
(2, 'Krishna', 'i need chocolate bouquet...', '2024-05-19 16:33:31', 'ok up to when do you need?', '2024-05-20 01:30:02', 1, 1),
(3, 'Sunil', 'I need a bouquet...', '2024-05-20 01:52:32', 'ok..of which flower do you need', '2024-05-20 01:53:27', 1, 1),
(4, 'Sunil', 'Red Roses', '2024-05-20 02:48:44', 'how many roses bouquet do u need', '2024-05-23 08:34:24', 1, 1),
(5, 'aashish', 'Hi, I have received the product. Thank you', '2024-05-21 09:27:07', 'We are please to hear this', '2024-05-21 09:31:54', 1, 1),
(6, 'Kusum', 'hello, help me find a gift for my mom', '2024-05-21 09:58:43', 'would you like to gift frame to your mother', '2024-05-21 10:00:27', 1, 1),
(7, 'Kusum', 'yes', '2024-05-21 10:50:50', 'i am ghj', '2024-05-21 10:53:29', 1, 1),
(8, 'Sunil', 'how much does it cost?', '2024-05-23 01:26:05', '', '2024-05-23 08:34:34', 1, 0),
(9, 'Manoj', 'I need a teddy without chocolates', '2024-05-23 15:24:53', 'Ok which colour teddy do you need?', '2024-05-23 15:28:31', 1, 1),
(13, 'Prakriti Sharma', 'I need a bouquet', '2024-05-23 18:20:39', 'Which bouquet do you need?', '2024-05-23 18:21:16', 1, 1),
(15, 'Prakriti Sharma', 'under 1000', '2024-05-23 18:37:59', 'ok...which color rose do you need?', '2024-05-23 18:46:56', 1, 1),
(16, 'Prakriti Sharma', 'Red', '2024-05-23 18:47:31', '', '2024-05-23 18:47:31', 0, 1),
(17, 'Krishna', 'i want to keep a small note with the flower, is it possible?', '2024-05-24 11:38:53', 'Yes for sure...what would you like to write in your message?', '2024-05-24 16:34:53', 1, 1),
(18, 'Krishna', 'so how much does the gypsy cost? if we take a dozen of bouquet', '2024-05-24 16:33:21', 'you will get 5% discount', '2024-05-24 16:35:24', 1, 1),
(19, 'Krishna', 'I need the bouquet within two days..', '2024-05-24 16:36:24', 'Sure...', '2024-05-24 16:41:47', 1, 1),
(20, 'Krishna ', 'thank you', '2024-05-25 09:26:31', '', '2024-05-25 09:26:31', 0, 1),
(21, 'Krishna', 'I need to write a message..', '2024-05-26 14:30:14', 'What message would you like to write..', '2024-05-26 14:31:25', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `feedback` mediumtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `user_id`, `feedback`, `date`) VALUES
(8, 20, 'I liked the way you do the small detailings of each product.\r\n', '2024-06-03 05:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `orders_pending`
--

CREATE TABLE `orders_pending` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_pending`
--

INSERT INTO `orders_pending` (`order_id`, `user_id`, `invoice_number`, `product_id`, `quantity`, `order_status`) VALUES
(1, 25, 195363676, 14, 1, 'pending'),
(2, 25, 337541256, 16, 1, 'pending'),
(3, 20, 792912659, 20, 1, 'pending'),
(4, 20, 1697297184, 13, 1, 'pending'),
(5, 20, 1399770988, 21, 1, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `product_image1`, `product_image2`, `product_image3`, `product_price`, `date`, `status`) VALUES
(14, 'Religious Frame', 'These gifts are the one that keeps on giving.', 'photoframes, photoframe, giftideas gift, homedecor, frame, photography, giftsforhim, handmadegifts, love, art, handmade, personalisedgifts, anniversarygift, photo, anniversarygifts, pictureframes, giftforher, birthday, customizedgifts, birthdaygift', 3, 'frame9.jpg', 'frame7.jpg', 'frame8.jpg', 1500, '2024-05-23 00:40:46', 'true'),
(16, 'Teddy Bear', 'Cute dolls add an extra pinch of sweetness in life!', 'teddy, doll, gift, baby, pink, brown, soft, beautiful, asthetic', 13, 'teddycombo.jpg', 'teddy1.jpg', 'teddy.jpg', 3500, '2024-05-23 00:49:59', 'true'),
(17, 'Eiffel Tower', 'One tower, many memories.', 'tower, eiffel tower, photos, photos, chocolate, ring, surprise, couple ring, purpose, purposal, cute, cute gifts', 9, 'tower1.jpg', 'tower3.jpg', 'eiffeltower.jpg', 1100, '2024-05-23 00:53:26', 'true'),
(18, 'Cake Box', 'This delightful box of chocolate will add memories that go beyond just a day. ', 'chocolate, chocoboxt, cake, cake tower, chocolates, chocolate, friendship, love, chocolatelovers, chocolatecake, yummy, sweet, food, cake, delicious, chocolovers, foodie, sweets, chocolatelove, chocolateaddict, darkchocolate, dessert, gifts, birthday', 5, 'customizedbox2.jpg', 'customizedbox4.jpg', 'customizedbox3.jpg', 2100, '2024-05-23 00:57:19', 'true'),
(19, 'Scrapbook', 'This book has messages with lots of emotions and memories', 'photos, book, memories, birthday, anniversary, him, her', 8, 'scrapbook.jpg', 'scrapbook2.jpg', 'letter1.jpg', 1800, '2024-05-23 01:00:19', 'true'),
(20, 'Letter', 'This unique and emotional is sure to leave him/her aww-struck.', 'letter, message, emotion, him ,her, letters, messages, feelings', 15, 'letter2.jpg', 'letter3.jpg', 'letter1.jpg', 999, '2024-05-23 01:06:12', 'true'),
(21, '52 messages jar', 'Messages filled with emotions, feelings and memories..', 'message jar, messages, emotions, emotional, message', 6, '52messagejar3.jpg', '52messagejar4.jpg', 'messagejar.jpg', 1100, '2024-05-24 02:12:31', 'true'),
(23, 'Rose Bouquet', 'Flowers speak the language of love', 'flowers, bouquet, giftforhim, giftforher, love, friendship, mother, father, brother, friend', 1, 'pink_rose_bouquet.jpg', 'rosebouquet.jpg', 'onerosebouquet.jpg', 2500, '2024-06-02 13:48:52', 'true'),
(26, 'Gypsy Bouquet', 'Flowers speak the language of love', 'flowers, bouquet, giftforhim, giftforher, love, friendship, mother, father, brother, friend', 1, 'gypsy1.jpg', 'gypsy.jpg', 'gypsy1.jpg', 700, '2024-06-03 07:34:31', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `r_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recommendations`
--

INSERT INTO `recommendations` (`r_id`, `user_id`, `product_id`, `category_id`) VALUES
(1, 20, 18, 0),
(2, 20, 13, 0),
(3, 20, 23, 1),
(4, 20, 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `s_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`s_id`, `user_id`, `product_id`, `category_id`) VALUES
(1, 25, 20, 15),
(2, 25, 13, 1),
(3, 25, 23, 1),
(4, 20, 23, 1),
(5, 20, 13, 1),
(6, 20, 23, 1),
(7, 20, 13, 1),
(8, 20, 23, 1),
(9, 20, 13, 1),
(10, 20, 23, 1),
(11, 20, 13, 1),
(12, 20, 23, 1),
(13, 20, 13, 1),
(14, 20, 23, 1),
(15, 20, 13, 1),
(16, 20, 23, 1),
(17, 20, 13, 1),
(18, 20, 23, 1),
(19, 20, 13, 1),
(20, 20, 23, 1),
(21, 20, 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` int(255) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `total_products` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `user_id`, `amount_due`, `invoice_number`, `total_products`, `product_id`, `order_date`, `order_status`) VALUES
(1, 25, 1500, 195363676, 1, 0, '2024-06-02 11:30:58', 'Complete'),
(2, 25, 3500, 337541256, 1, 0, '2024-06-02 13:40:23', 'pending'),
(3, 20, 999, 792912659, 1, 0, '2024-06-03 05:32:46', 'Complete'),
(4, 20, 800, 1697297184, 1, 0, '2024-06-03 05:36:57', 'pending'),
(5, 20, 3200, 1399770988, 2, 0, '2024-06-03 05:45:32', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

CREATE TABLE `user_payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_payments`
--

INSERT INTO `user_payments` (`payment_id`, `order_id`, `invoice_number`, `amount`, `payment_mode`, `date`) VALUES
(2, 2, 178557446, 3500, 'esewa', '2024-05-20 01:55:55'),
(3, 4, 1165536771, 550, 'Pay offline', '2024-05-21 09:24:39'),
(4, 10, 541028527, 1600, 'Mobile Banking', '2024-05-23 09:46:16'),
(5, 14, 890566141, 800, 'Mobile Banking', '2024-05-23 15:24:16'),
(6, 19, 1575797388, 1600, 'esewa', '2024-05-24 11:39:45'),
(7, 20, 1673232980, 550, 'Mobile Banking', '2024-05-24 15:37:49'),
(8, 21, 944472724, 550, 'esewa', '2024-05-24 15:59:10'),
(9, 22, 55360520, 1500, 'esewa', '2024-05-24 16:01:03'),
(10, 23, 1530539969, 1800, 'esewa', '2024-05-24 16:10:08'),
(11, 24, 14809604, 2300, 'Cash on delivery', '2024-05-24 16:41:15'),
(12, 25, 189857819, 4000, 'Mobile Banking', '2024-05-25 09:27:20'),
(13, 26, 1018401251, 12900, 'Mobile Banking', '2024-05-26 14:32:19'),
(14, 27, 1929929046, 800, 'Cash on delivery', '2024-06-02 09:10:41'),
(15, 1, 1926541683, 6100, 'Cash on delivery', '2024-06-02 09:35:18'),
(16, 1, 195363676, 1500, 'esewa', '2024-06-02 11:30:57'),
(17, 3, 792912659, 999, 'Cash on delivery', '2024-06-03 05:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(20) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `verify_token` varchar(255) NOT NULL,
  `verify_status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0=no,1=yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `user_email`, `user_password`, `user_image`, `user_ip`, `user_address`, `user_mobile`, `user_type`, `verify_token`, `verify_status`, `created_at`) VALUES
(16, 'Dipu', 'luharukadipu7@gmail.com', '$2y$10$Ao8V1dLe2rQ9pOFEQ.MQo.plgSGGuNckA/aSzCBVDpaktcT2khXWy', 'reviews4.png', '::1', 'pokhara', '0654321', 'User', 'e390cc670b68c485c1926c2637cbc3b2', 1, '2024-06-01 07:19:30'),
(17, 'Arohi Mittal', 'arohimittal00@gmail.com', '$2y$10$.VQl1X/p24T8mSXQBmPaPus4qXnQhL4TqDRU3UofhbRcnKvFqir.K', 'admin2.jpg', '::1', 'pokhara', '9846907548', 'Admin', '51e0867f38368ce76aa40de7a948b6e7', 1, '2024-06-01 07:48:48'),
(20, 'Krishna Luharuka', 'rahdhekrishnaa@gmail.com', '$2y$10$eC/PUEiBJ2RtQuD1frDYVOxDoDLQ550WV0kOaAg58HUQqSenh01jC', 'kanha.jpg', '::1', 'pokhara', '9869141935', 'User', 'fab9063a8024283df5c35de1e172e1d3', 1, '2024-06-01 09:38:17'),
(21, 'Chandani Luharuka', 'chandaniluharuka04@gmail.com', '$2y$10$h1htyjjzmvlOb4V2SyAKZu6SNF.Tw85BirqQNebkhw9tt9xIcDUHy', 'received_2053863118185114.jpeg', '::1', 'pokhara', '9846257447', 'User', 'f5be941071010b2d273daf56c700c4d9', 1, '2024-06-01 10:04:12'),
(25, 'Keshav', 'houwbh@gmail.com', '$2y$10$WTAP/EiVe2.OxlyMrcuDseWb0GI6LPPmgMpM3kY9Vg4tFUxmbRyZS', 'reviews2.jpg', '::1', 'pokhara', '8765312123', 'User', '1f0b68ac63b9241ce51370e4927857e3', 1, '2024-06-01 11:00:48');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `w_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`w_id`, `product_id`, `user_id`, `time`) VALUES
(11, 14, 25, '2024-06-02 17:58:23'),
(12, 11, 25, '2024-06-02 17:58:35'),
(17, 19, 16, '2024-06-03 07:10:07'),
(21, 21, 20, '2024-06-03 08:29:55'),
(24, 13, 20, '2024-06-03 11:16:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `orders_pending`
--
ALTER TABLE `orders_pending`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders_pending`
--
ALTER TABLE `orders_pending`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `search`
--
ALTER TABLE `search`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_payments`
--
ALTER TABLE `user_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
