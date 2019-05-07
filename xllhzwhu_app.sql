-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 07, 2019 at 07:13 AM
-- Server version: 10.2.23-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xllhzwhu_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `approval_status`
--

CREATE TABLE `approval_status` (
  `id` int(11) NOT NULL,
  `approval_status` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approval_status`
--

INSERT INTO `approval_status` (`id`, `approval_status`, `action`) VALUES
(1, 'Published', 'Publish'),
(2, 'Not Published', ''),
(3, 'Deactivated', 'Deactivate');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `property_type` int(11) NOT NULL,
  `property_listing` int(11) NOT NULL,
  `location` varchar(150) NOT NULL,
  `subCounty` int(11) NOT NULL,
  `amount` varchar(150) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `showers` int(11) NOT NULL,
  `carParks` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `propertyUrl` varchar(150) NOT NULL,
  `manager` int(11) NOT NULL,
  `approval` int(11) NOT NULL DEFAULT 2
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `property_type`, `property_listing`, `location`, `subCounty`, `amount`, `bedrooms`, `showers`, `carParks`, `description`, `status`, `propertyUrl`, `manager`, `approval`) VALUES
(1, 1, 1, 'Kiambu Road', 117, '35000', 3, 3, 1, 'EXECUTIVE 3 bedroom all en-suite apartment located in THINDIGUA . Unique features include :\r\n- All en-suite + visitors toilet & bathroom\r\n- 2 huge balconies\r\n- Spacious rooms\r\n- Centralized dish & CCTV \r\n- Sufficient water supply\r\n- Adequate ground parking\r\n- Electric fence\r\n-Kitchen fitted with MDF Cabinets & Granite Tops \r\n- Only 10KM from Nairobi CBD', 0, 'uploads/prop1.jpg', 4, 3),
(4, 1, 1, 'Ruaka', 117, '26000', 2, 2, 1, 'Executive 2 bedrooms master en-suite apartment to let along Banana Road an approximately 3 minutes drive from RUAKA TOWN\r\n\r\nEunique features include :\r\n\r\n- Safaricom Fibre \r\n- Laundry area with sockets for washing machine\r\n- Recreational area at the roof top\r\n- Electric fence\r\n- CCTV \r\n- Dstv\r\n- Common aerial\r\n- Spacious Rooms\r\n- Elegant finishing\r\n- Borehole water\r\n- Ample ground parking \r\n- Sufficient water supply e. t. c.', 0, 'uploads/prop4.jpg', 4, 1),
(5, 3, 2, 'Limuru ', 121, '35000000', 1, 1, 1, 'Luxurious 1 bedroom apartment to let along Limuru road few meters from the Two Rivers Mall. Unique features include :\r\n- Back-up generator\r\n- Elevator\r\n- CCTV\r\n- DSTV \r\n- Open plan architectural design\r\n- TV Outlets in sitting room and all bedrooms\r\n- External gas cylider storage cubical\r\n- Free WI-FI/Internet connectivity\r\n- Recreational / Common area rooftop\r\n- Security 24/7\r\n- Safaricom fibre\r\n- Borehole water + 8 storage tanks & reservoir\r\n- Ample parking space e.t.c.', 0, 'uploads/prop5.jpg', 4, 3),
(40, 1, 1, 'Kiamumbi', 0, '22000', 2, 1, 1, 'Executive 2-bedroom apartment to let in Kiamumbi few meters from the tarmac. Enrique features include:\r\n- CCTV\r\n- Common aerial\r\n- Spacious\r\n- Elegant finishing\r\n- Ample parking space\r\n- Sufficient water supply e. t. c.', 0, '', 4, 2),
(39, 1, 1, 'Kiamumbi', 0, '22000', 2, 1, 1, 'Executive 2-bedroom apartment to let in Kiamumbi few meters from the tarmac. Enrique features include:\r\n- CCTV\r\n- Common aerial\r\n- Spacious\r\n- Elegant finishing\r\n- Ample parking space\r\n- Sufficient water supply e. t. c.', 0, '', 4, 2),
(32, 1, 1, 'Gathiga', 0, '25000', 2, 1, 1, 'Executive 2 bedroom apartment to let in Gathiga few meters from the tarmac. Unique features include :\r\n- CCTV\r\n- Dstv\r\n- Common aerial\r\n- Spacious\r\n- Elegant finishing\r\n- Borehole water\r\n- Ample parking space\r\n- Sufficient water supply e. t. c.', 0, 'uploads/img1.jpg', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `property_listing`
--

CREATE TABLE `property_listing` (
  `id` int(11) NOT NULL,
  `listing` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_listing`
--

INSERT INTO `property_listing` (`id`, `listing`) VALUES
(1, 'To Let'),
(2, 'For Sale'),
(3, 'For Lease');

-- --------------------------------------------------------

--
-- Table structure for table `property_notation`
--

CREATE TABLE `property_notation` (
  `id` int(11) NOT NULL,
  `property_type` int(11) NOT NULL,
  `property_notation` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_notation`
--

INSERT INTO `property_notation` (`id`, `property_type`, `property_notation`) VALUES
(1, 2, 'PS'),
(2, 1, 'PL'),
(3, 3, 'PLE');

-- --------------------------------------------------------

--
-- Table structure for table `property_type`
--

CREATE TABLE `property_type` (
  `id` int(11) NOT NULL,
  `type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_type`
--

INSERT INTO `property_type` (`id`, `type`) VALUES
(1, 'Apartment/Flat'),
(2, 'Vacant Land/Plot'),
(3, 'Townhouse'),
(4, 'House'),
(5, 'Industrial Property'),
(6, 'Commercial Property'),
(7, 'Farm');

-- --------------------------------------------------------

--
-- Table structure for table `property_uploads`
--

CREATE TABLE `property_uploads` (
  `id` int(11) NOT NULL,
  `propertyId` int(11) NOT NULL,
  `imageUrl` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_uploads`
--

INSERT INTO `property_uploads` (`id`, `propertyId`, `imageUrl`) VALUES
(3, 1, 'uploads/prop1_int3.jpg'),
(4, 1, 'uploads/prop1_int2.jpg'),
(5, 1, 'uploads/prop1_int5.jpg'),
(6, 1, 'uploads/prop1_int6.jpg'),
(21, 4, 'uploads/prop3_int7.jpg'),
(24, 4, 'uploads/prop4_int1.jpg'),
(25, 4, 'uploads/prop4_int2.jpg'),
(26, 4, 'uploads/prop4_int3.jpg'),
(27, 4, 'uploads/prop4_int4.jpg'),
(28, 4, 'uploads/prop4_int5.jpg'),
(29, 5, 'uploads/prop5_int1.jpg'),
(30, 5, 'uploads/prop5_int2.jpg'),
(31, 5, 'uploads/prop5_int3.jpg'),
(32, 5, 'uploads/prop5_int4.jpg'),
(33, 5, 'uploads/prop5_int5.jpg'),
(34, 5, 'uploads/prop5_int6.jpg'),
(168, 32, 'uploads/2019-02-26 08:35:58img8.jpg'),
(167, 32, 'uploads/2019-02-26 08:35:58img7.jpg'),
(166, 32, 'uploads/2019-02-26 08:35:58img6.jpg'),
(165, 32, 'uploads/2019-02-26 08:35:58img5.jpg'),
(164, 32, 'uploads/2019-02-26 08:35:58img4.jpg'),
(163, 32, 'uploads/2019-02-26 08:35:58img3.jpg'),
(162, 32, 'uploads/2019-02-26 08:35:58img2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `serviceId` int(11) NOT NULL,
  `service` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `serviceId`, `service`) VALUES
(1, 1, 'Electricians'),
(2, 2, 'Plumbers'),
(3, 3, 'Painters'),
(4, 4, 'Carpenters'),
(5, 5, 'Security Firms'),
(6, 6, 'Waste Management Companies'),
(7, 7, 'Cleaning Companies'),
(8, 8, 'Movers');

-- --------------------------------------------------------

--
-- Table structure for table `service_providers`
--

CREATE TABLE `service_providers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `info` text NOT NULL,
  `rating` int(11) NOT NULL,
  `photoUrl` varchar(150) NOT NULL,
  `locality` varchar(50) NOT NULL,
  `serviceId` int(11) NOT NULL,
  `experience` varchar(200) NOT NULL,
  `clients` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_providers`
--

INSERT INTO `service_providers` (`id`, `name`, `phone`, `info`, `rating`, `photoUrl`, `locality`, `serviceId`, `experience`, `clients`) VALUES
(1, 'Mbuthia Peter', '0714895246', 'This is information regarding the above named person. He holds a certificate in plumbing from Technical University of Nairobi and has a work experience of over 5 years. He is highly regarded in the quality of work rendered.', 3, 'users/Peter_mbuthia.jpg', 'Ruaka', 1, '7 Years', 'Safaricom, Treadsetters, Darlin Kenya, Goodman Agencies'),
(2, 'Lesama Ltd', '0715780367', 'This is information regarding the above named person. He holds a certificate in plumbing from Technical University of Nairobi and has a work experience of over 5 years. He is highly regarded in the quality of work rendered.', 3, 'users/size_logo.png', 'Banana', 4, '4 years', 'Safaricom, Treadsetters, Darlin Kenya, Goodman Agencies'),
(32, 'Dummy Dummy', '0700123456', 'This is information regarding the above named person. He holds a certificate in plumbing from Technical University of Nairobi and has a work experience of over 5 years. He is highly regarded in the quality of work rendered.', 4, 'users/Friki Logo.jpg', 'Banana', 2, '8 Years', 'Safaricom, Treadsetters, Darlin Kenya, Goodman Agencies');

-- --------------------------------------------------------

--
-- Table structure for table `sub_counties`
--

CREATE TABLE `sub_counties` (
  `id` int(11) NOT NULL,
  `general_location` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_counties`
--

INSERT INTO `sub_counties` (`id`, `general_location`) VALUES
(2, 'Changamwe'),
(3, 'Jomvu'),
(4, 'Kisauni'),
(5, 'Nyali'),
(6, 'Likoni'),
(7, 'Mvita'),
(8, 'Msambweni'),
(9, 'Lunga Lunga'),
(10, 'Matuga'),
(11, 'Kinango'),
(12, 'Kilifi North'),
(13, 'Kilifi South'),
(14, 'Kaloleni'),
(15, 'Rabai'),
(16, 'Ganze'),
(17, 'Malindi'),
(18, 'Magarini'),
(19, 'Garsen'),
(20, 'Galole'),
(21, ' Bura'),
(22, 'Lamu East'),
(23, 'Lamu West'),
(24, 'Taveta'),
(25, 'Wundanyi'),
(26, 'Mwatate'),
(27, 'Voi'),
(28, 'Dujis'),
(29, 'Balambala'),
(30, 'Lagdera'),
(31, 'Dadaab'),
(32, 'Fafi'),
(33, 'Ijara'),
(34, 'Wajir North'),
(35, 'Wajir East'),
(36, 'Tarbaj'),
(37, 'Wajir West'),
(38, 'Eldas'),
(39, 'Wajir South'),
(40, 'Mandera West'),
(41, 'Banisa'),
(42, 'Mandera North'),
(43, 'Mandera South'),
(44, 'Mandera East'),
(45, 'Lafey'),
(46, 'Moyale'),
(47, 'North Horr'),
(48, 'Saku'),
(49, 'Laisamis'),
(50, 'Isiolo North'),
(51, 'Isiolo South'),
(52, 'Igembe South'),
(53, 'Igembe Central'),
(54, 'Igembe North'),
(55, 'Tigania West'),
(56, 'Tigania East'),
(57, 'North Imenti'),
(58, 'Mbuuri'),
(59, 'Central Imenti'),
(60, 'South Imenti'),
(61, 'Nithi'),
(62, 'Maara'),
(63, 'Tharaka'),
(64, 'Manyatta'),
(65, 'Runyenjes'),
(66, 'Gachoka'),
(67, 'Siakago'),
(68, 'Mwingi North'),
(69, 'Mwingi Central'),
(70, 'Mwingi South'),
(71, 'Kitui West'),
(72, 'Kitui Rural'),
(73, 'Kitui Town'),
(74, 'Mutito'),
(75, 'Kitui South'),
(76, 'Masinga'),
(77, 'Yatta'),
(78, 'Kangundo'),
(79, 'Matungulu'),
(80, 'Kathiani'),
(81, 'Mavoko'),
(82, 'Machakos town'),
(83, 'Mwala'),
(84, 'Mbooni'),
(85, 'Kilome'),
(86, 'Kaiti'),
(87, 'Makueni'),
(88, 'Kibwezi West'),
(89, 'Kibwezi East'),
(90, 'Kipipiri'),
(91, 'Ol-Kalou'),
(92, 'Ol-Jorok'),
(93, 'Ndaragwa'),
(94, 'Tetu'),
(95, 'Kieni'),
(96, 'Mathira'),
(97, 'Othaya'),
(98, 'Mukurwe-ini'),
(99, 'Nyeri Town'),
(100, 'Mwea'),
(101, 'Gichugu'),
(102, 'Ndia'),
(103, 'Kirinyaga Central'),
(104, 'Kangema'),
(105, 'Mathioya'),
(106, 'Kiharu'),
(107, 'Kigumo'),
(108, 'Maragwa'),
(109, 'Kandara'),
(110, 'Gatanga'),
(111, 'Gatundu South'),
(112, 'Gatundu North'),
(113, 'Juja'),
(114, 'Thika Town'),
(115, 'Ruiru'),
(116, 'Githunguri'),
(117, 'Kiambu'),
(118, 'Kiambaa'),
(119, 'Kabete'),
(120, 'Kikuyu'),
(121, 'Limuru'),
(122, 'Lari'),
(123, 'Turkana North'),
(124, 'Turkana West'),
(125, 'Turkana Central'),
(126, 'Loima'),
(127, 'Turkana South'),
(128, 'Turkana East'),
(129, 'Kapenguria'),
(130, 'Sigor'),
(131, 'Kacheliba'),
(132, 'Pokot South'),
(133, 'Samburu West'),
(134, 'Samburu North'),
(135, 'Samburu East'),
(136, 'Kwanza'),
(137, 'Endebess'),
(138, 'Saboti'),
(139, 'Kiminini'),
(140, 'Cherenganyi'),
(141, 'Soy'),
(142, 'Turbo'),
(143, 'Moiben'),
(144, 'Ainabkoi'),
(145, 'Kapseret'),
(146, 'Kesses'),
(147, 'Marakwet East'),
(148, 'Marakwet West'),
(149, 'Keiyo East'),
(150, 'Keiyo South'),
(151, 'Tinderet'),
(152, 'Aldai'),
(153, 'Nandi Hills'),
(154, 'Emgwen North'),
(155, 'Emgwen South'),
(156, 'Mosop'),
(157, 'Baringo East'),
(158, 'Baringo West'),
(159, 'Baringo Central'),
(160, 'Mochongoi'),
(161, 'Mogotio'),
(162, 'Eldama Ravine'),
(163, 'Laikipia West'),
(164, 'Laikipia East'),
(165, 'Laikipia North'),
(166, 'Molo'),
(167, 'Njoro'),
(168, 'Naivasha'),
(169, 'Gilgil'),
(170, 'Kuresoi South'),
(171, 'Kuresoi North'),
(172, 'Subukia'),
(173, 'Rongai'),
(174, 'Bahati'),
(175, 'Nakuru Town West'),
(176, 'Nakuru Town East'),
(177, 'Kilgoris'),
(178, 'Emurua Dikirr'),
(179, 'Narok North'),
(180, 'Narok East'),
(181, 'Narok South'),
(182, 'Narok West'),
(183, 'Kajiado North'),
(184, 'Kajiado Central'),
(185, 'Kajiado East'),
(186, 'Kajiado South'),
(187, 'Kipkelion East'),
(188, 'Kipkelion West'),
(189, 'Ainamoi'),
(190, 'Bureti'),
(191, 'Belgut'),
(192, 'Sigowet'),
(193, 'Sotik'),
(194, 'Chepalungu'),
(195, 'Bomet East'),
(196, 'Konoin'),
(197, 'Lugari'),
(198, 'Likuyani'),
(199, 'Malava'),
(200, 'Lurambi'),
(201, 'Navakholo'),
(202, 'Mumias'),
(203, 'Mumias East'),
(204, 'Matungu'),
(205, 'Butere'),
(206, 'Khwisero'),
(207, 'Shinyalu'),
(208, 'Ikolomani'),
(209, 'Vihiga'),
(210, 'Sabatia'),
(211, 'Hamisi'),
(212, 'Emuhaya'),
(213, 'Luanda'),
(214, 'Mt. Elgon'),
(215, 'Sirisia'),
(216, 'Kabuchai'),
(217, 'Bumula'),
(218, 'Kanduyi'),
(219, 'Webuye'),
(220, 'Bokoli'),
(221, 'Kimilili'),
(222, 'Tongaren'),
(223, 'Teso North'),
(224, 'Teso South'),
(225, 'Nambale'),
(226, 'Matayos'),
(227, 'Butula'),
(228, 'Funyula'),
(229, 'Budalang?i'),
(230, 'Ugenya'),
(231, 'Ugunja'),
(232, 'Alego Usonga'),
(233, 'Gem'),
(234, 'Bondo'),
(235, 'Rarieda'),
(236, 'Kisumu East'),
(237, 'Kisumu West'),
(238, 'Kisumu Central'),
(239, 'Seme'),
(240, 'Nyando'),
(241, 'Muhoroni'),
(242, 'Nyakach'),
(243, 'Kasipul'),
(244, 'Kabondo'),
(245, 'Karachuonyo'),
(246, 'Rangwe'),
(247, 'Homa Bay Town'),
(248, 'Ndhiwa'),
(249, 'Mbita'),
(250, 'Gwasi'),
(251, 'Rongo'),
(252, 'Awendo'),
(253, 'Migori East'),
(254, 'Migori West'),
(255, 'Uriri'),
(256, 'Nyatike'),
(257, 'Kuria East'),
(258, 'Kuria West'),
(259, 'Bonchari'),
(260, 'South Mugirango'),
(261, 'Bomachoge'),
(262, 'Bobasi'),
(263, 'Gucha'),
(264, 'Nyaribari'),
(265, 'Nyaribari'),
(266, 'Chache'),
(267, 'Marani'),
(268, 'Mosocho'),
(269, 'Kitutu Masaba'),
(270, 'West Mugirango'),
(271, 'North Mugirango'),
(272, 'Borabu'),
(273, 'Westlands'),
(274, 'Parklands'),
(275, 'Dagoretti'),
(276, 'Karen / Langata'),
(277, 'Kibra'),
(278, 'Roysambu'),
(279, 'Kasarani'),
(280, 'Ruaraka'),
(281, 'Kariobangi'),
(282, 'Kayole'),
(283, 'Embakasi'),
(284, 'Mihango'),
(285, 'Nairobi-West'),
(286, 'Makadara'),
(287, 'Kamukunji'),
(288, 'Starehe'),
(289, 'Mathare');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email_address` varchar(150) NOT NULL,
  `photo_url` varchar(250) NOT NULL,
  `user_type` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `username`, `password`, `name`, `phone_number`, `email_address`, `photo_url`, `user_type`, `status`) VALUES
(4, 'Admin', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', 'Lesama Admin', '0700215848', 'info@lesama.co.ke', 'users/size_logo.png', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userTypes`
--

CREATE TABLE `userTypes` (
  `id` int(11) NOT NULL,
  `user_type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userTypes`
--

INSERT INTO `userTypes` (`id`, `user_type`) VALUES
(1, 'System Admin'),
(2, 'System User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approval_status`
--
ALTER TABLE `approval_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_listing`
--
ALTER TABLE `property_listing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_notation`
--
ALTER TABLE `property_notation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_type`
--
ALTER TABLE `property_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_uploads`
--
ALTER TABLE `property_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `serviceId` (`serviceId`);

--
-- Indexes for table `service_providers`
--
ALTER TABLE `service_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_counties`
--
ALTER TABLE `sub_counties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `userTypes`
--
ALTER TABLE `userTypes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approval_status`
--
ALTER TABLE `approval_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `property_listing`
--
ALTER TABLE `property_listing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `property_notation`
--
ALTER TABLE `property_notation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `property_type`
--
ALTER TABLE `property_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `property_uploads`
--
ALTER TABLE `property_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `service_providers`
--
ALTER TABLE `service_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sub_counties`
--
ALTER TABLE `sub_counties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `userTypes`
--
ALTER TABLE `userTypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
