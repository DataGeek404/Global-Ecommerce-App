-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2024 at 08:38 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_php_ecommerce_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us Information', '\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_username` text NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_username`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'amoraghali', 'amheretoconquer@gmail.com', '$2y$10$qLDSa1UB2GaPolyiY2OHu.e8ftYJwYnBn.kUZuM6bTjEkxl9cHccu', 'amoraghali', 'anime.jpeg', '0700000000', 'unknown', 'admin', ' here to conquer     ');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(2, 'BEST PRICES', 'You can check on all others sites about the prices and than compare with us.'),
(3, '100% SATISFACTION GUARANTEED From Us', 'Free returns on everything for 3 months. '),
(6, 'WE LOVE OUR CUSTOMERS', ' We are known to provide best possible service ever');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bundle_product_relation`
--

INSERT INTO `bundle_product_relation` (`rel_id`, `rel_title`, `product_id`, `bundle_id`) VALUES
(11, 'Digital Software Bundle Relation 1', 17, 18),
(12, 'Digital Software Bundle Relation 2', 16, 18),
(13, 'Digital Software Bundle Relation 3', 15, 18),
(14, 'Digital Software Bundle Relation 4', 14, 18),
(21, 'Saad Ahmed | Adobe Photoshop CC 2018 | 12 Month Subscription (Download)', 17, 0),
(32, 'Saad Ahmed | Solid Navy Denim Jackets Bundle', 4, 11),
(33, 'Saad Ahmed | Solid Navy Denim Jackets Bundle', 5, 11),
(34, 'Saad Ahmed | Solid Navy Denim Jackets Bundle', 3, 11),
(35, 'Saad Ahmed | Solid Navy Denim Jackets Bundle', 5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `product_weight` decimal(10,1) NOT NULL,
  `product_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `p_id`, `ip_add`, `qty`, `p_price`, `product_weight`, `product_type`) VALUES
(1, 11, '33666', 1, '200', 2.0, 'physical_product'),
(3, 6, '36666', 1, '96', 1.3, 'physical_product'),
(4, 34, '363663', 1, '2000', 2.3, 'physical_product'),
(5, 34, '36666', 1, '2200', 2.5, 'physical_product'),
(17, 48, '127.0.0.1', 1, '70', 1.4, 'physical_product');

-- --------------------------------------------------------

--
-- Table structure for table `cart_meta`
--

CREATE TABLE `cart_meta` (
  `meta_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `cart_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(2, 'Feminine', 'no', 'zinta_preity.jpg'),
(3, 'Kids', 'no', 'image10.jpg'),
(4, 'Others', 'no', 'cat_image.jpg'),
(5, 'Men', 'no', 'image11.jpg'),
(6, 'Softwares', 'no', ''),
(7, 'Xps 15', 'yes', ''),
(8, 'HP Envy', 'yes', ''),
(9, 'Razer Blade', 'yes', ''),
(10, 'Apple', 'yes', ''),
(11, 'Wordpress', 'no', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'sad.ahmed22224@gmail.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(10) NOT NULL,
  `country_name` text NOT NULL,
  `country_code` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `country_code`) VALUES
(1, 'Afghanistan', 'AF'),
(2, 'Aland Islands', 'AX'),
(3, 'Albania', 'AL'),
(4, 'Algeria', 'DZ'),
(5, 'American Samoa', 'AS'),
(6, 'Andorra', 'AD'),
(7, 'Angola', 'AO'),
(8, 'Anguilla', 'AI'),
(9, 'Antarctica', 'AQ'),
(10, 'Antigua And Barbuda', 'AG'),
(11, 'Argentina', 'AR'),
(12, 'Armenia', 'AM'),
(13, 'Aruba', 'AW'),
(14, 'Australia', 'AU'),
(15, 'Austria', 'AT'),
(16, 'Azerbaijan', 'AZ'),
(17, 'Bahamas', 'BS'),
(18, 'Bahrain', 'BH'),
(19, 'Bangladesh', 'BD'),
(20, 'Barbados', 'BB'),
(21, 'Belarus', 'BY'),
(22, 'Belgium', 'BE'),
(23, 'Belize', 'BZ'),
(24, 'Benin', 'BJ'),
(25, 'Bermuda', 'BM'),
(26, 'Bhutan', 'BT'),
(27, 'Bolivia', 'BO'),
(28, 'Bosnia And Herzegovina', 'BA'),
(29, 'Botswana', 'BW'),
(30, 'Bouvet Island', 'BV'),
(31, 'Brazil', 'BR'),
(32, 'British Indian Ocean Territory', 'IO'),
(33, 'Brunei Darussalam', 'BN'),
(34, 'Bulgaria', 'BG'),
(35, 'Burkina Faso', 'BF'),
(36, 'Burundi', 'BI'),
(37, 'Cambodia', 'KH'),
(38, 'Cameroon', 'CM'),
(39, 'Canada', 'CA'),
(40, 'Cape Verde', 'CV'),
(41, 'Cayman Islands', 'KY'),
(42, 'Central African Republic', 'CF'),
(43, 'Chad', 'TD'),
(44, 'Chile', 'CL'),
(45, 'China', 'CN'),
(46, 'Christmas Island', 'CX'),
(47, 'Cocos (keeling) Islands', 'CC'),
(48, 'Colombia', 'CO'),
(49, 'Comoros', 'KM'),
(50, 'Congo', 'CG'),
(51, 'Congo, The Democratic Republic Of', 'CD'),
(52, 'Cook Islands', 'CK'),
(53, 'Costa Rica', 'CR'),
(54, 'Cote D\'ivoire', 'CI'),
(55, 'Croatia', 'HR'),
(56, 'Cuba', 'CU'),
(57, 'Cyprus', 'CY'),
(58, 'Czech Republic', 'CZ'),
(59, 'Denmark', 'DK'),
(60, 'Djibouti', 'DJ'),
(61, 'Dominica', 'DM'),
(62, 'Dominican Republic', 'DO'),
(63, 'Ecuador', 'EC'),
(64, 'Egypt', 'EG'),
(65, 'El Salvador', 'SV'),
(66, 'Equatorial Guinea', 'GQ'),
(67, 'Eritrea', 'ER'),
(68, 'Estonia', 'EE'),
(69, 'Ethiopia', 'ET'),
(70, 'Falkland Islands (malvinas)', 'FK'),
(71, 'Faroe Islands', 'FO'),
(72, 'Fiji', 'FJ'),
(73, 'Finland', 'FI'),
(74, 'France', 'FR'),
(75, 'French Guiana', 'GF'),
(76, 'French Polynesia', 'PF'),
(77, 'French Southern Territories', 'TF'),
(78, 'Gabon', 'GA'),
(79, 'Gambia', 'GM'),
(80, 'Georgia', 'GE'),
(81, 'Germany', 'DE'),
(82, 'Ghana', 'GH'),
(83, 'Gibraltar', 'GI'),
(84, 'Greece', 'GR'),
(85, 'Greenland', 'GL'),
(86, 'Grenada', 'GD'),
(87, 'Guadeloupe', 'GP'),
(88, 'Guam', 'GU'),
(89, 'Guatemala', 'GT'),
(90, 'Guernsey', 'GG'),
(91, 'Guinea', 'GN'),
(92, 'Guinea-bissau', 'GW'),
(93, 'Guyana', 'GY'),
(94, 'Haiti', 'HT'),
(95, 'Heard Island And Mcdonald Islands', 'HM'),
(96, 'Holy See (vatican City State)', 'VA'),
(97, 'Honduras', 'HN'),
(98, 'Hong Kong', 'HK'),
(99, 'Hungary', 'HU'),
(100, 'Iceland', 'IS'),
(101, 'India', 'IN'),
(102, 'Indonesia', 'ID'),
(103, 'Iran, Islamic Republic Of', 'IR'),
(104, 'Iraq', 'IQ'),
(105, 'Ireland', 'IE'),
(106, 'Isle Of Man', 'IM'),
(107, 'Israel', 'IL'),
(108, 'Italy', 'IT'),
(109, 'Jamaica', 'JM'),
(110, 'Japan', 'JP'),
(111, 'Jersey', 'JE'),
(112, 'Jordan', 'JO'),
(113, 'Kazakhstan', 'KZ'),
(114, 'Kenya', 'KE'),
(115, 'Kiribati', 'KI'),
(116, 'Korea, Democratic People\'s Republic Of', 'KP'),
(117, 'Korea, Republic Of', 'KR'),
(118, 'Kuwait', 'KW'),
(119, 'Kyrgyzstan', 'KG'),
(120, 'Lao People\'s Democratic Republic', 'LA'),
(121, 'Latvia', 'LV'),
(122, 'Lebanon', 'LB'),
(123, 'Lesotho', 'LS'),
(124, 'Liberia', 'LR'),
(125, 'Libyan Arab Jamahiriya', 'LY'),
(126, 'Liechtenstein', 'LI'),
(127, 'Lithuania', 'LT'),
(128, 'Luxembourg', 'LU'),
(129, 'Macao', 'MO'),
(130, 'Macedonia, The Former Yugoslav Republic Of', 'MK'),
(131, 'Madagascar', 'MG'),
(132, 'Malawi', 'MW'),
(133, 'Malaysia', 'MY'),
(134, 'Maldives', 'MV'),
(135, 'Mali', 'ML'),
(136, 'Malta', 'MT'),
(137, 'Marshall Islands', 'MH'),
(138, 'Martinique', 'MQ'),
(139, 'Mauritania', 'MR'),
(140, 'Mauritius', 'MU'),
(141, 'Mayotte', 'YT'),
(142, 'Mexico', 'MX'),
(143, 'Micronesia, Federated States Of', 'FM'),
(144, 'Moldova, Republic Of', 'MD'),
(145, 'Monaco', 'MC'),
(146, 'Mongolia', 'MN'),
(147, 'Montserrat', 'MS'),
(148, 'Morocco', 'MA'),
(149, 'Mozambique', 'MZ'),
(150, 'Myanmar', 'MM'),
(151, 'Namibia', 'NA'),
(152, 'Nauru', 'NR'),
(153, 'Nepal', 'NP'),
(154, 'Netherlands', 'NL'),
(155, 'Netherlands Antilles', 'AN'),
(156, 'New Caledonia', 'NC'),
(157, 'New Zealand', 'NZ'),
(158, 'Nicaragua', 'NI'),
(159, 'Niger', 'NE'),
(160, 'Nigeria', 'NG'),
(161, 'Niue', 'NU'),
(162, 'Norfolk Island', 'NF'),
(163, 'Northern Mariana Islands', 'MP'),
(164, 'Norway', 'NO'),
(165, 'Oman', 'OM'),
(166, 'Pakistan', 'PK'),
(167, 'Palau', 'PW'),
(168, 'Palestinian Territory, Occupied', 'PS'),
(169, 'Panama', 'PA'),
(170, 'Papua New Guinea', 'PG'),
(171, 'Paraguay', 'PY'),
(172, 'Peru', 'PE'),
(173, 'Philippines', 'PH'),
(174, 'Pitcairn', 'PN'),
(175, 'Poland', 'PL'),
(176, 'Portugal', 'PT'),
(177, 'Puerto Rico', 'PR'),
(178, 'Qatar', 'QA'),
(179, 'Reunion', 'RE'),
(180, 'Romania', 'RO'),
(181, 'Russian Federation', 'RU'),
(182, 'Rwanda', 'RW'),
(183, 'Saint Helena', 'SH'),
(184, 'Saint Kitts And Nevis', 'KN'),
(185, 'Saint Lucia', 'LC'),
(186, 'Saint Pierre And Miquelon', 'PM'),
(187, 'Saint Vincent And The Grenadines', 'VC'),
(188, 'Samoa', 'WS'),
(189, 'San Marino', 'SM'),
(190, 'Sao Tome And Principe', 'ST'),
(191, 'Saudi Arabia', 'SA'),
(192, 'Senegal', 'SN'),
(193, 'Serbia And Montenegro', 'CS'),
(194, 'Seychelles', 'SC'),
(195, 'Sierra Leone', 'SL'),
(196, 'Singapore', 'SG'),
(197, 'Slovakia', 'SK'),
(198, 'Slovenia', 'SI'),
(199, 'Solomon Islands', 'SB'),
(200, 'Somalia', 'SO'),
(201, 'South Africa', 'ZA'),
(202, 'South Georgia And The South Sandwich Islands', 'GS'),
(203, 'Spain', 'ES'),
(204, 'Sri Lanka', 'LK'),
(205, 'Sudan', 'SD'),
(206, 'Suriname', 'SR'),
(207, 'Svalbard And Jan Mayen', 'SJ'),
(208, 'Swaziland', 'SZ'),
(209, 'Sweden', 'SE'),
(210, 'Switzerland', 'CH'),
(211, 'Syrian Arab Republic', 'SY'),
(212, 'Taiwan, Province Of China', 'TW'),
(213, 'Tajikistan', 'TJ'),
(214, 'Tanzania, United Republic Of', 'TZ'),
(215, 'Thailand', 'TH'),
(216, 'Timor-leste', 'TL'),
(217, 'Togo', 'TG'),
(218, 'Tokelau', 'TK'),
(219, 'Tonga', 'TO'),
(220, 'Trinidad And Tobago', 'TT'),
(221, 'Tunisia', 'TN'),
(222, 'Turkey', 'TR'),
(223, 'Turkmenistan', 'TM'),
(224, 'Turks And Caicos Islands', 'TC'),
(225, 'Tuvalu', 'TV'),
(226, 'Uganda', 'UG'),
(227, 'Ukraine', 'UA'),
(228, 'United Arab Emirates', 'AE'),
(229, 'United Kingdom', 'GB'),
(230, 'United States', 'US'),
(231, 'United States Minor Outlying Islands', 'UM'),
(232, 'Uruguay', 'UY'),
(233, 'Uzbekistan', 'UZ'),
(234, 'Vanuatu', 'VU'),
(235, 'Venezuela', 'VE'),
(236, 'Viet Nam', 'VN'),
(237, 'Virgin Islands, British', 'VG'),
(238, 'Virgin Islands, U.S.', 'VI'),
(239, 'Wallis And Futuna', 'WF'),
(240, 'Western Sahara', 'EH'),
(241, 'Yemen', 'YE'),
(242, 'Zambia', 'ZM'),
(243, 'Zimbabwe', 'ZW'),
(245, 'Myanmar (Burma)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `vendor_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(3, '0', 9, 'Remind T-shirt', '40', '333444', 5, 1),
(4, '6', 17, 'Adobe Photoshop CC 2018 Coupon', '80', 'coupon-code-124442 ', 8, 0),
(5, '6', 41, 'Dell Inspiron 15 7000 Coupon', '50', '15969855 ', 4, 0),
(6, '6', 34, 'Apple MacBook Pro 15-inch 2018 Coupon', '98', '5782572j9    ', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_username` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL,
  `customer_role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_username`, `customer_contact`, `customer_image`, `customer_ip`, `customer_confirm_code`, `customer_role`) VALUES
(2, 'Brock Lesnar', 'brock@gmail.com', '$2y$10$qLDSa1UB2GaPolyiY2OHu.e8ftYJwYnBn.kUZuM6bTjEkxl9cHccu', 'brock', '0092334566931', 'Brock-Lesnar.jpg', '::1', '', 'vendor'),
(3, 'Undertaker', 'undertaker@gmail.com', '$2y$10$qLDSa1UB2GaPolyiY2OHu.e8ftYJwYnBn.kUZuM6bTjEkxl9cHccu', 'undertaker', '3334566931', 'undertaker.jpg', '::1', '', 'customer'),
(6, 'Saad Ahmed', 'saad-ahmed@gmail.com', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'saad-ahmed', '3334566931', 'tom-cruise.jpg', '::1', '', 'vendor'),
(7, 'Rasheed Khan', 'rasheed23@yahoo.com', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'rasheed23', '092778857827', 'john-abraham.jpg', '::1', '', 'customer'),
(8, 'Abdoul Ahmed', 'abdoul@yahoo.com', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'customer', 'contact', 'salman.jpg', '::1', '', 'customer'),
(9, 'Undertaker', 'undertaker@yahoo.com', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'vendor', 'contact', 'undertaker.jpg', '::1', '', 'vendor'),
(10, 'John Cena', 'cena@gmail.com', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'fixmywebsite', 'contact', 'cenna.jpg', '::1', '', 'vendor'),
(11, 'Amir Khan', 'ashleytharma1@computerfever.com', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'ashleytharma1', 'contact', 'amir-khan.jpg', '::1', '', 'vendor'),
(12, 'Arnold Schwarzenegger', 'Arnold Schwarzenegger', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'miss-digimarket', '06467476441', 'arnold.jpg', '::1', '', 'vendor'),
(13, 'Daniel Ahmed', 'daniel@gamil.com', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'ali-lahore', '05552259358', 'shoail.jpg', '::1', '', 'vendor'),
(14, 'Mohammad Tahir Ahmed', 'tahir.ahmed186@gmail.com', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'sad-ahmed22224', '3333', 'shah-rukh.jpg', '::1', '', 'vendor'),
(15, 'Cristiano Ronaldo', 'ronaldo@gmail.com', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'ronaldo', '03334566931', 'ronaldo.jpg', '::1', '', 'vendor'),
(16, 'Ghulam Ahmed', 'ghulam@gmail.com', '$2y$10$62dv5LxN8YN60Tcv.XG23eDJiaFPHrCEWPTotCw87YNKC2WfGlyoK', 'variabletest@gmail.com', '033489021', 'africa.jpg', '::1', '1216711300', 'customer'),
(17, 'Mubashir Ahmed', 'sad.ahmed22224@gmail.com', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'mubashir', '0923334566931', 'shah-rukh.jpg', '::1', '', 'vendor'),
(18, 'kevin', 'kevinkutoyi95@gmail.com', '$2y$10$btjn.2U4bqKmPd5edgl1BOWdrhnhMaDz2e5jAztxC8uoHj28n7NHq', 'kvn', '0791549308', 'anime.jpeg', '::1', '', 'customer'),
(19, 'Umeskia  Sftwares', 'alvo967@gmail.com', '$2y$10$eLKe9057PlvqWXZJPBjgfu/2GWNO.iashGlnD9Ko0twdDxRiA3V6W', 'Umeskia', '0768168060', 'vEPyhRtcS0yeueM8lL0ONw.jpeg', '::1', '1709112639', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `customers_addresses`
--

CREATE TABLE `customers_addresses` (
  `addresse_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `billing_first_name` text NOT NULL,
  `billing_last_name` text NOT NULL,
  `billing_country` text NOT NULL,
  `billing_address_1` text NOT NULL,
  `billing_address_2` text NOT NULL,
  `billing_state` text NOT NULL,
  `billing_city` text NOT NULL,
  `billing_postcode` text NOT NULL,
  `shipping_first_name` text NOT NULL,
  `shipping_last_name` text NOT NULL,
  `shipping_country` text NOT NULL,
  `shipping_address_1` text NOT NULL,
  `shipping_address_2` text NOT NULL,
  `shipping_state` text NOT NULL,
  `shipping_city` text NOT NULL,
  `shipping_postcode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers_addresses`
--

INSERT INTO `customers_addresses` (`addresse_id`, `customer_id`, `billing_first_name`, `billing_last_name`, `billing_country`, `billing_address_1`, `billing_address_2`, `billing_state`, `billing_city`, `billing_postcode`, `shipping_first_name`, `shipping_last_name`, `shipping_country`, `shipping_address_1`, `shipping_address_2`, `shipping_state`, `shipping_city`, `shipping_postcode`) VALUES
(3, 6, 'Saad', 'Ahmed', '166', 'House#2/10,Halqa Iqbal,Darul, Nasir Gharbi Rabwah', 'Chenab Nagar Rabwah', 'Sindth', 'Lahore', '54600', 'Saad Shipping', 'Ahmed Shipping', '166', 'House#2/10,Halqa Iqbal,Darul Shipping', 'Nasir Gharbi Rabwah', 'Kpk', 'Pashwar', '54000'),
(4, 2, 'Saad', 'Ahmed', '166', 'House #2/10 , Halqa Iqbal', 'Darul Nasir Gharbi Rabwah', 'Punjab', 'Lahore', '54000', 'Saad Brock Shipping', 'Ahmed', '166', 'House #2/10 , Halqa Iqbal', 'Darul Nasir Gharbi Rabwah', 'Punjab', 'Lahore', '54000'),
(5, 7, 'Raheed', 'Khan', '166', 'House#2/10,Halqa Iqbal,Darul', 'Nasir Gharbi Rabwah', 'Sindth', 'Karachi', '12763', 'Saad', 'Ahmed', '230', 'House #2/10 , Halqa Iqbal', 'Darul Nasir Gharbi Rabwah update', 'Punjab state', 'Lahore city', '54600'),
(6, 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 14, 'Mohammad', 'Ahmed', '166', 'Saeed Park Lahore', 'House #2/10, Mohalla Fatima Jinah', 'Punjab', 'Lahore', '54600', 'Mohammad', 'Ahmed', '166', 'Saeed Park Lahore', 'House #2/10, Mohalla Fatima Jinah', 'Punjab', 'Lahore', '54600'),
(11, 15, 'Saad', 'Ahmed', '166', 'House#2/10,Halqa Iqbal,Darul, Nasir Gharbi Rabwah', 'House #2/10, Mohalla Fatima Jinah', 'Punjab', 'Lahore', '59400', 'Mohammad', 'Ahmed', '166', 'House#2/10,Halqa Iqbal,Darul', 'Nasir Gharbi Rabwah', 'Punjab', 'Chenab Nagar Rabwah', '54900'),
(12, 10, 'Saad', 'Ahmed', '229', 'House#2/10,Halqa Iqbal,Darul', 'Nasir Gharbi Rabwah', 'Sindth', 'Karachi', '54600', 'Mohammad', 'Ahmed', '166', 'House#2/10,Halqa Iqbal,Darul', 'Nasir Gharbi Rabwah', 'Punjab', 'Lahore', '59460'),
(13, 16, 'Saad', 'Ahmed', '166', 'Saeed Park Lahore, House #2/10, Mohalla Fatima Jinah', 'House #2/10, Mohalla Fatima Jinah', 'Punjab', 'Lahore', '54000', '', '', '', '', '', '', '', ''),
(14, 17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 19, 'Alvin', 'Kiveu', '114', '100', 'test', '20', '2', '50', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers_history`
--

CREATE TABLE `customers_history` (
  `history_id` int(10) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers_history`
--

INSERT INTO `customers_history` (`history_id`, `ip_address`, `customer_id`, `product_id`) VALUES
(287, '::1', 2, 41),
(294, '::1', 2, 46),
(296, '::1', 2, 18),
(297, '::1', 2, 30),
(311, '::1', 14, 46),
(315, '::1', 14, 36),
(316, '::1', 14, 50),
(350, '::1', 3, 30),
(351, '::1', 3, 50),
(357, '::1', 18, 46),
(360, '127.0.0.1', 3, 48),
(363, '::1', 3, 48),
(364, '::1', 0, 38),
(366, '::1', 0, 3),
(416, '::1', 0, 50),
(427, '::1', 19, 48),
(479, '::1', 19, 50),
(485, '::1', 19, 46);

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `download_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `product_id` int(10) NOT NULL,
  `variation_id` int(10) NOT NULL,
  `download_title` text NOT NULL,
  `download_file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`download_id`, `vendor_id`, `product_id`, `variation_id`, `download_title`, `download_file`) VALUES
(2, '6', 17, 489, 'Download Photoshop CC 2018 For Windows 7,8,10', 'Photoshop CC 2018 Windows 7,8,10.txt'),
(4, '', 16, 481, 'Corel VideoStudio Ultimate X10 (Os: Windows , Edition: Ultimate)', 'Corel VideoStudio Ultimate X10.txt'),
(5, '', 18, 0, 'Digital Premium Softwares Dowload', 'Digital Premium Softwares Dowload.txt'),
(10, '6', 17, 488, 'Download Photoshop Cc 2018 For MacOs', 'Photoshop Cc 2018 MacOs.txt'),
(13, '', 16, 486, 'Corel VideoStudio Ultimate X10 ( Os: Mac-Os , Edition: Ultra )', 'Corel VideoStudio ( Os Mac-Os , Edition Ultra ).txt'),
(14, '6', 17, 491, 'Download Adobe Photoshop CC 2018 For Linux Os', 'Adobe Photoshop CC 2018 Download linux Os.txt'),
(15, '6', 15, 0, 'Download Avast Internet Security 2018 1 Year License', 'Avast Internet Security.txt');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `site_title` text NOT NULL,
  `meta_author` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `enable_vendor` text NOT NULL,
  `new_product_status` text NOT NULL,
  `edited_product_status` text NOT NULL,
  `order_status_change` text NOT NULL,
  `order_status_for_withdraw` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `meta_author`, `meta_description`, `meta_keywords`, `enable_vendor`, `new_product_status`, `edited_product_status`, `order_status_change`, `order_status_for_withdraw`) VALUES
(1, 'Digital E-commerce Store', 'amoraghali', 'New Generation Market', 'Digital Ecommerce Store', 'yes', 'pending', 'yes', 'yes', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `hide_admin_orders`
--

CREATE TABLE `hide_admin_orders` (
  `hide_id` int(10) NOT NULL,
  `admin_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hide_admin_orders`
--

INSERT INTO `hide_admin_orders` (`hide_id`, `admin_id`, `order_id`) VALUES
(1, 2, 65),
(2, 2, 75),
(3, 2, 74),
(4, 2, 73),
(5, 2, 79),
(6, 2, 80),
(7, 2, 81),
(8, 2, 82),
(9, 2, 83);

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `icon_id` int(10) NOT NULL,
  `icon_product` int(10) NOT NULL,
  `icon_title` varchar(255) NOT NULL,
  `icon_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`icon_id`, `icon_product`, `icon_title`, `icon_image`) VALUES
(1, 1, 'statue', 'icon image.jpg'),
(2, 2, 'Icon-2', 'icon-2.png'),
(3, 3, 'Icon-3', 'icon-3.png'),
(4, 4, 'Icon-4', 'icon-4.jpg'),
(5, 3, 'dummy', 'icon image.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'Amir Khan', 'no', 'image2.jpg'),
(3, 'Omri Liba', 'no', 'image3.jpg'),
(4, 'Joy Peng', 'no', 'manufacturer.jpg'),
(5, 'Kane Bender', 'no', 'image6.jpg'),
(6, 'Akshay Kumar', 'yes', 'akshay-kumar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `shipping_type` text NOT NULL,
  `shipping_cost` decimal(10,1) NOT NULL,
  `payment_method` text NOT NULL,
  `order_date` text NOT NULL,
  `order_total` decimal(10,1) NOT NULL,
  `order_note` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `invoice_no`, `shipping_type`, `shipping_cost`, `payment_method`, `order_date`, `order_total`, `order_note`, `order_status`) VALUES
(66, 18, 182479678, '', 0.0, 'paypal', 'June 21, 2024 12:44', 1100.0, '', 'processing'),
(72, 3, 856969439, '', 0.0, 'stripe', 'June 29, 2024 04:20', 70.0, '', 'completed'),
(84, 19, 136655950, '', 0.0, 'umspay', 'July 05, 2024 07:12', 1.0, 'UMSPay Payment', 'completed'),
(85, 19, 1485725252, '', 0.0, 'umspay', 'July 05, 2024 07:12', 1.0, 'UMSPay Payment', 'completed'),
(86, 19, 1294110481, '', 0.0, 'umspay', 'July 05, 2024 07:12', 1.0, 'UMSPay Payment', 'completed'),
(87, 19, 1020033, '', 0.0, 'umspay', 'July 05, 2024 07:17', 1.0, 'UMSPay Payment', 'completed'),
(88, 19, 1101845708, '', 0.0, 'umspay', 'July 05, 2024 07:21', 1.0, 'UMSPay Payment', 'completed'),
(89, 19, 493286235, '', 0.0, 'umspay', 'July 05, 2024 08:18', 1.0, 'UMSPay Payment', 'completed'),
(90, 19, 1175858498, '', 0.0, 'umspay', 'July 05, 2024 08:19', 1.0, 'UMSPay Payment', 'completed'),
(91, 19, 1574254307, '', 0.0, 'pesapal', 'July 05, 2024 08:24', 1.0, '', 'completed'),
(92, 19, 714155903, '', 0.0, 'pesapal', 'July 05, 2024 08:27', 1.0, '', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `orders_addresses`
--

CREATE TABLE `orders_addresses` (
  `addresse_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `billing_first_name` text NOT NULL,
  `billing_last_name` text NOT NULL,
  `billing_country` text NOT NULL,
  `billing_address_1` text NOT NULL,
  `billing_address_2` text NOT NULL,
  `billing_state` text NOT NULL,
  `billing_city` text NOT NULL,
  `billing_postcode` text NOT NULL,
  `is_shipping_address` text NOT NULL,
  `shipping_first_name` text NOT NULL,
  `shipping_last_name` text NOT NULL,
  `shipping_country` text NOT NULL,
  `shipping_address_1` text NOT NULL,
  `shipping_address_2` text NOT NULL,
  `shipping_state` text NOT NULL,
  `shipping_city` text NOT NULL,
  `shipping_postcode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders_addresses`
--

INSERT INTO `orders_addresses` (`addresse_id`, `order_id`, `billing_first_name`, `billing_last_name`, `billing_country`, `billing_address_1`, `billing_address_2`, `billing_state`, `billing_city`, `billing_postcode`, `is_shipping_address`, `shipping_first_name`, `shipping_last_name`, `shipping_country`, `shipping_address_1`, `shipping_address_2`, `shipping_state`, `shipping_city`, `shipping_postcode`) VALUES
(1, 1, 'Mohammad', 'Ahmed', '166', 'Saeed Park Lahore', 'House #2/10, Mohalla Fatima Jinah', 'Punjab', 'Lahore', '54600', 'no', 'Mohammad', 'Ahmed', '166', 'Saeed Park Lahore', 'House #2/10, Mohalla Fatima Jinah', 'Punjab', 'Lahore', '54600'),
(2, 59, '', '', '', '', '', '', '', '', 'yes', '', '', '', '', '', '', '', ''),
(3, 60, '', '', '', '', '', '', '', '', 'yes', '', '', '', '', '', '', '', ''),
(4, 61, '', '', '', '', '', '', '', '', 'yes', '', '', '', '', '', '', '', ''),
(5, 62, '', '', '', '', '', '', '', '', 'yes', '', '', '', '', '', '', '', ''),
(6, 63, '', '', '', '', '', '', '', '', 'yes', '', '', '', '', '', '', '', ''),
(7, 64, '', '', '', '', '', '', '', '', 'yes', '', '', '', '', '', '', '', ''),
(8, 65, '', '', '', '', '', '', '', '', 'yes', '', '', '', '', '', '', '', ''),
(9, 71, '', '', '', '', '', '', '', '', 'yes', '', '', '', '', '', '', '', ''),
(10, 72, '', '', '', '', '', '', '', '', 'yes', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `item_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `price` decimal(10,1) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders_items`
--

INSERT INTO `orders_items` (`item_id`, `order_id`, `product_id`, `price`, `qty`) VALUES
(1, 1, 50, 70.0, 1),
(2, 1, 46, 1100.0, 1),
(3, 1, 40, 5900.0, 1),
(4, 59, 36, 1460.0, 1),
(5, 60, 50, 70.0, 1),
(6, 61, 36, 1460.0, 1),
(7, 62, 3, 120.0, 1),
(8, 63, 46, 1100.0, 1),
(9, 63, 34, 2000.0, 1),
(10, 63, 50, 70.0, 1),
(11, 64, 30, 1000.0, 1),
(12, 65, 48, 70.0, 1),
(13, 71, 46, 1100.0, 1),
(14, 72, 48, 70.0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_items_meta`
--

CREATE TABLE `orders_items_meta` (
  `meta_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders_items_meta`
--

INSERT INTO `orders_items_meta` (`meta_id`, `order_id`, `item_id`, `product_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 1, 50, 'size', 'Medium'),
(2, 1, 1, 50, 'color', 'Blue'),
(3, 1, 1, 50, 'variation_id', '#586'),
(4, 1, 2, 46, 'processor', 'i5 7th-generation'),
(5, 1, 2, 46, 'memory', '8 GB'),
(6, 1, 2, 46, 'storage', '512 GB SSD'),
(7, 1, 2, 46, 'variation_id', '#494'),
(8, 1, 3, 40, 'cpu', 'i9'),
(9, 1, 3, 40, 'ram', '16gb'),
(10, 1, 3, 40, 'storage', '2TB SSD'),
(11, 1, 3, 40, 'variation_id', '#360'),
(12, 59, 4, 36, 'cpu', 'Core i7 7gen'),
(13, 59, 4, 36, 'capacity', '16GB Ram / 512 GB SSD / Full HD'),
(14, 59, 4, 36, 'variation_id', '#338'),
(15, 60, 5, 50, 'size', 'Medium'),
(16, 60, 5, 50, 'color', 'Blue'),
(17, 60, 5, 50, 'variation_id', '#586'),
(18, 61, 6, 36, 'cpu', 'Core i7 7gen'),
(19, 61, 6, 36, 'capacity', '16GB Ram / 512 GB SSD / Full HD'),
(20, 61, 6, 36, 'variation_id', '#338'),
(21, 62, 7, 3, 'color', 'Yellow'),
(22, 62, 7, 3, 'size', '16'),
(23, 62, 7, 3, 'variation_id', '#476'),
(24, 63, 8, 46, 'processor', 'i5 7th-generation'),
(25, 63, 8, 46, 'memory', '8 GB'),
(26, 63, 8, 46, 'storage', '512 GB SSD'),
(27, 63, 8, 46, 'variation_id', '#494'),
(28, 63, 9, 34, 'memory', '16 GB'),
(29, 63, 9, 34, 'processor', 'i7 7th-generation'),
(30, 63, 9, 34, 'storage', '512GB SSD'),
(31, 63, 9, 34, 'variation_id', '#86'),
(32, 63, 10, 50, 'size', 'Medium'),
(33, 63, 10, 50, 'color', 'Blue'),
(34, 63, 10, 50, 'variation_id', '#586'),
(35, 64, 11, 30, 'processor', 'i5 7th-generation'),
(36, 64, 11, 30, 'memory', '16 GB'),
(37, 64, 11, 30, 'storage', '512GB SSD'),
(38, 64, 11, 30, 'variation_id', '#503'),
(39, 71, 13, 46, 'processor', 'i5 7th-generation'),
(40, 71, 13, 46, 'memory', '8 GB'),
(41, 71, 13, 46, 'storage', '512 GB SSD'),
(42, 71, 13, 46, 'variation_id', '#494');

-- --------------------------------------------------------

--
-- Table structure for table `orders_notes`
--

CREATE TABLE `orders_notes` (
  `note_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `sub_order_id` text NOT NULL,
  `item_id` int(10) NOT NULL,
  `note_content` text NOT NULL,
  `note_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders_notes`
--

INSERT INTO `orders_notes` (`note_id`, `order_id`, `sub_order_id`, `item_id`, `note_content`, `note_date`) VALUES
(1, 1, '', 1, 'stock reduced from 3 to 2.', 'January 07, 2019 12:33'),
(2, 1, '', 2, 'stock reduced from 56 to 55.', 'January 07, 2019 12:33'),
(3, 1, '', 3, 'stock reduced from 100 to 99.', 'January 07, 2019 12:33'),
(4, 1, '3', 0, '', 'January 08, 2019 03:00'),
(5, 59, '', 4, 'stock reduced from 2 to 1.', 'June 20, 2024 05:43'),
(6, 60, '', 5, 'stock reduced from 2 to 1.', 'June 20, 2024 05:46'),
(7, 61, '', 6, 'stock reduced from 1 to 0.', 'June 20, 2024 05:51'),
(8, 62, '', 7, 'stock reduced from 2 to 1.', 'June 20, 2024 05:58'),
(9, 63, '', 8, 'stock reduced from 55 to 54.', 'June 20, 2024 06:04'),
(10, 63, '', 9, 'stock reduced from 12 to 11.', 'June 20, 2024 06:04'),
(11, 63, '', 10, 'stock reduced from 1 to 0.', 'June 20, 2024 06:04'),
(12, 64, '', 11, 'stock reduced from 8 to 7.', 'June 20, 2024 06:29'),
(13, 65, '', 12, 'stock reduced from 6 to 5.', 'June 20, 2024 06:30'),
(14, 71, '', 13, 'stock reduced from 54 to 53.', 'June 21, 2024 01:00'),
(15, 72, '', 14, 'stock reduced from 5 to 4.', 'June 29, 2024 04:20');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 1607603019, 447, 'UBL/Omni Paisa', 5678, 33, '11/1/2016'),
(3, 314788500, 345, 'UBL/Omni Paisa', 443, 865, '11/1/2016'),
(10, 1563376867, 563, 'UBL/Omni Paisa', 13536, 213, '2/3/2018'),
(11, 772581650, 1, 'umspay', 0, 8134, '07/05/2024'),
(12, 553782636, 1, 'umspay', 0, 9805, '07/05/2024'),
(13, 1048093733, 1, 'umspay', 0, 9219, '07/05/2024'),
(14, 1514289064, 1, 'umspay', 0, 7264, '07/05/2024'),
(15, 1541422453, 1, 'umspay', 0, 7612, '07/05/2024'),
(16, 1748957660, 1, 'umspay', 0, 8264, '07/05/2024'),
(17, 698584659, 1, 'umspay', 0, 3673, '07/05/2024'),
(18, 68310171, 1, 'umspay', 0, 8261, '07/05/2024'),
(19, 1849170793, 1, 'umspay', 0, 6304, '07/05/2024'),
(20, 156660226, 1, 'umspay', 0, 1296, '07/05/2024'),
(21, 1341794817, 1, 'umspay', 0, 3655, '07/05/2024'),
(22, 136655950, 1, 'umspay', 0, 2569, '07/05/2024'),
(23, 1485725252, 1, 'umspay', 0, 3468, '07/05/2024'),
(24, 1294110481, 1, 'umspay', 0, 8160, '07/05/2024'),
(25, 613202086, 1, 'umspay', 0, 7376, '07/05/2024'),
(26, 2007831786, 1, 'umspay', 0, 1469, '07/05/2024'),
(27, 1804362295, 1, 'umspay', 0, 7734, '07/05/2024'),
(28, 194846963, 1, 'umspay', 1101845708, 2257, '07/05/2024'),
(29, 430065346, 1, 'umspay', 1101845708, 6480, '07/05/2024'),
(30, 1931768833, 1, 'umspay', 1101845708, 4536, '07/05/2024'),
(31, 872350129, 1, 'umspay', 1101845708, 3122, '07/05/2024'),
(32, 493286235, 1, 'umspay', 2147483647, 4537, '07/05/2024'),
(33, 1175858498, 1, 'umspay', 2147483647, 3617, '07/05/2024'),
(34, 1574254307, 1, 'pesapal', 2147483647, 3867, '07/05/2024'),
(35, 714155903, 1, 'pesapal', 2147483647, 7299, '07/05/2024');

-- --------------------------------------------------------

--
-- Table structure for table `payments_requests`
--

CREATE TABLE `payments_requests` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(1000) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `phone_number` varchar(1000) DEFAULT NULL,
  `reference` varchar(1000) DEFAULT NULL,
  `tranasaction_request_id` varchar(1000) DEFAULT NULL,
  `status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments_requests`
--

INSERT INTO `payments_requests` (`id`, `customer_id`, `amount`, `phone_number`, `reference`, `tranasaction_request_id`, `status`) VALUES
(22, '19', 1, '0768168060', 'ECOM453113', 'UMSPID0507202405462991938', 'pending'),
(23, '19', 1, '0768168060', 'ECOM786446', 'UMSPID0507202405503581441', 'pending'),
(24, '19', 1, '0768168060', 'ECOM197149', 'UMSPID0507202405524738576', 'failed'),
(25, '19', 1, '0768168060', 'ECOM580045', 'UMSPID0507202405532193778', 'completed'),
(26, '19', 1, '0768168060', 'ECOM905207', 'UMSPID0507202406324288991', 'failed'),
(27, '19', 1, '0768168060', 'ECOM872078', 'UMSPID0507202406415425981', 'failed'),
(28, '19', 1, '0768168060', 'ECOM665215', 'UMSPID0507202406422197931', 'failed'),
(29, '19', 1, '0113015674', 'ECOM601298', 'UMSPID0507202406433077999', 'failed'),
(30, '19', 1, '0113015674', 'ECOM573970', 'UMSPID0507202406440658158', 'completed'),
(31, '19', 1, '0768168060', 'ECOM799460', 'UMSPID0507202406594152470', 'failed'),
(32, '19', 1, '0113015674', 'ECOM231390', 'UMSPID0507202407000125924', 'completed'),
(33, '19', 1, '0113015674', 'ECOM579540', 'UMSPID0507202407052627096', 'completed'),
(34, '19', 1, '0113015674', 'ECOM981472', 'UMSPID0507202407123949974', 'completed'),
(35, '19', 1, '0113015674', 'ECOM321828', 'UMSPID0507202407170839362', 'completed'),
(36, '19', 1, '0113015674', '1101845708', 'UMSPID0507202407205967455', 'completed'),
(37, '19', 1, '0768168060', '923926230247995461', '1144f29b-3797-4837-9075-dd08eabc8386', 'pending'),
(38, '19', 1, '0113015674', '1162747174', 'UMSPID0507202408574979138', 'failed'),
(39, '19', 1, '0768168060', '219809280370662478', '54ab9643-ff9f-47a0-be79-dd08fba5f5c1', 'pending'),
(40, '19', 1, '0768168060', '685223967401194703', '9d8355b1-d479-4e43-9158-dd08c873d055', 'pending'),
(41, '19', 1, '0768168060', '829787184111317325', '0bd9d273-54b6-47e1-8472-dd085d6d4975', 'pending'),
(42, '19', 1, '0113015674', '576331678148075914', '0c6873c6-ccaa-49ab-80af-dd08df8f9782', 'completed'),
(43, '19', 1, '0113015674', '217221961169460930', 'ec0c5e87-4361-49ae-b9b6-dd0821359113', 'completed'),
(44, '19', 1, '0113015674', '1789268660', 'UMSPID0507202409255180341', 'failed'),
(45, '19', 1, '0113015674', '168711821974571739', '1c6974a9-7530-4d35-8075-dd08081ea86f', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(10) NOT NULL,
  `commission_percentage` int(10) NOT NULL,
  `minimum_withdraw_limit` int(10) NOT NULL,
  `days_before_withdraw` int(10) NOT NULL,
  `enable_paypal` text NOT NULL,
  `paypal_email` text NOT NULL,
  `paypal_sandbox` text NOT NULL,
  `paypal_currency_code` text NOT NULL,
  `paypal_app_client_id` text NOT NULL,
  `paypal_app_client_secret` text NOT NULL,
  `enable_stripe` text NOT NULL,
  `stripe_secret_key` text NOT NULL,
  `stripe_publishable_key` text NOT NULL,
  `stripe_currency_code` text NOT NULL,
  `umspay_email` text DEFAULT NULL,
  `umspay_account_id` text DEFAULT NULL,
  `umspay_app_key` text DEFAULT NULL,
  `umspay_currency_code` text DEFAULT NULL,
  `enable_umspay` text DEFAULT NULL,
  `pesapal_consumer_key` text DEFAULT NULL,
  `pesapal_consumer_secret` text DEFAULT NULL,
  `pesapal_sandbox` text DEFAULT NULL,
  `pesapal_currency_code` text DEFAULT NULL,
  `enable_pesapal` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `commission_percentage`, `minimum_withdraw_limit`, `days_before_withdraw`, `enable_paypal`, `paypal_email`, `paypal_sandbox`, `paypal_currency_code`, `paypal_app_client_id`, `paypal_app_client_secret`, `enable_stripe`, `stripe_secret_key`, `stripe_publishable_key`, `stripe_currency_code`, `umspay_email`, `umspay_account_id`, `umspay_app_key`, `umspay_currency_code`, `enable_umspay`, `pesapal_consumer_key`, `pesapal_consumer_secret`, `pesapal_sandbox`, `pesapal_currency_code`, `enable_pesapal`) VALUES
(1, 10, 10, 2, '1', 'kevinkutoyi95@gmail.com', '1', 'USD', 'AZK0z-97heDNIxPGpPeKu5LTjFPlmS4L9-EY205CWxWTHI0ZqI0wxvE_IwwTw54sJEOjD1i5DuSdabCd', 'EMABIgZZ52bTh_eRuk_-jBoU6cuUdRLLI8HemoSTJJolHFiz5qdjbaLYdd1El42aE_ojniHFdC1Ziqre', 'yes', 'sk_test_51PT2G705d8NdjK7oA4e9q9EWkSi1pkk4sUZBfiJSMEByXRODARE6qn42v5kB4fwirFaSKcsQWNxNA8nh7VpDLEny003SXMgTpd', 'pk_test_51PT2G705d8NdjK7omsGqhrNrqKiGMfibEDVIeMktqkF0pRgGGM0kLx7HvwAHPttDBEbuqp1FpBX7WJbBHrwqTkmD00PpShuFCG', 'USD', 'alvo967@gmail.com', 'UMPAY564754547', 'SVQ4WVpPQUQ6NnpicDJsMm8=', 'Ksh', 'yes', 'YZ+GAXagwzaFhpnGLStAfUyzt7aKQle2', 'g8HaRhWxuYrTcYOWNm0CunTvFPs=', 'no', 'Ksh', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_seo_desc` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `product_type` text NOT NULL,
  `product_weight` decimal(10,1) NOT NULL,
  `product_views` int(10) NOT NULL,
  `product_vendor_status` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `vendor_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_seo_desc`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `product_type`, `product_weight`, `product_views`, `product_vendor_status`, `status`) VALUES
(1, '2', 5, 4, 3, '2018-06-22 09:18:22', 'New Champ League T-Shirt', '', 'new-t-shirt', 'img1.jpg', 'img2.jpg', 'img3.jpg', 70, 50, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/BxjtpdWeGtI\" frameborder=\"0\" allowfullscreen></iframe>', 'T-Shirts', 'Sale', 'physical_product', 1.0, 6, 'active', 'product'),
(2, '2', 5, 3, 2, '2024-07-03 06:08:58', 'U.S. Polo Assn. Blue Polos shirt', '', 'product-url-2', 'U-S--Polo-Assn--Blue-Polos-0266-586842-1-pdp_slider_l.jpg', 'U-S--Polo-Assn--Blue-Polos-0268-586842-2-pdp_slider_l.jpg', 'U-S--Polo-Assn--Blue-Polos-0271-586842-3-pdp_slider_l.jpg', 69, 45, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'T-Shirt', 'Gift', 'physical_product', 2.0, 6, 'active', 'product'),
(3, '6', 5, 3, 6, '2024-07-03 05:18:06', 'BENETTON White Polo Shirt', '', 'product-url-3', 'United-Colors-of-Benetton-White-Polo-Shirt-0608-0914361-1-pdp_slider_l.jpg', 'United-Colors-of-Benetton-White-Polo-Shirt-0608-0914361-2-pdp_slider_l.jpg', 'United-Colors-of-Benetton-White-Polo-Shirt-0609-0914361-3-pdp_slider_l.jpg', 0, 0, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'T-Shirt', 'New', 'variable_product', 0.0, 26, 'active', 'product'),
(4, '6', 7, 5, 5, '2018-06-01 07:18:50', 'Navy Blue Solid Denim Jacket', '', 'product-url-4', 'Levi-s-Blue-Solid-Denim-Jacket-5953-6506172-1-pdp_slider_l.jpg', 'Levi-s-Blue-Solid-Denim-Jacket-5953-6506172-2-pdp_slider_l.jpg', 'Levi-s-Blue-Solid-Denim-Jacket-5953-6506172-3-pdp_slider_l.jpg', 230, 150, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Jackets', 'Sale', 'physical_product', 2.0, 8, 'active', 'product'),
(5, '6', 7, 5, 5, '2024-07-03 06:29:19', 'Denim Borg Lined Western Jacket', '', 'product-url-5', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-1-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-2-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0465-0064553-3-pdp_slider_l.jpg', 259, 100, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Jackets', 'Gift', 'physical_product', 0.3, 6, 'active', 'product'),
(6, '9', 7, 5, 5, '2018-06-22 01:51:39', 'Jack & White Solid Denim Jacket', '', 'product-url-6', 'Jack---Jones-White-Solid-Denim-Jacket-3115-5549091-1-pdp_slider_l.jpg', 'Jack---Jones-White-Solid-Denim-Jacket-3115-5549091-2-pdp_slider_l.jpg', 'Jack---Jones-White-Solid-Denim-Jacket-3115-5549091-3-pdp_slider_l.jpg', 96, 0, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Jackets', 'New', 'physical_product', 1.3, 5, 'active', 'product'),
(7, '10', 4, 2, 6, '2018-06-22 09:15:30', 'Nice Solid Long Coat With Lace', '', 'product-url-7', 'fur coat with button1.jpg', 'fur coat with button2.jpg', 'fur coat with button3.jpg', 200, 150, '<p>Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add. You can also type a keyword to search online for the video that best fits your document. kingVideo provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add. You can also type a keyword to search online for the video that best fits your document</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Coats', 'Sale', 'physical_product', 0.0, 3, 'active', 'product'),
(8, '10', 4, 2, 4, '2018-06-22 09:02:20', 'Sleeveless Faux Fur Hybrid Coat', '', 'product-url-8', 'Black Blouse Versace Coat1.jpg', 'Black Blouse Versace Coat2.jpg', 'Black Blouse Versace Coat3.jpg', 245, 100, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Coats', 'Gift', 'physical_product', 3.1, 3, 'active', 'product'),
(9, '11', 5, 4, 2, '2024-07-03 05:19:43', 'Remind Printed T-Shirt', '', 'product-url-9', 'product-1.jpg', 'product-2.jpg', 'product-3.jpg', 50, 0, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'T-Shirt', 'New', 'physical_product', 2.5, 5, 'active', 'product'),
(10, 'admin_2', 5, 5, 4, '2018-10-20 03:39:22', 'Jolt Gear Mens Dry Fit Golf Polo Shirt, Athletic Short-Sleeve Polo Golf Shirts', '', 'jolt-gear-means-shirt', 't-shirt-1.jpg', 't-shirt-2.jpg', 't-shirt-3.jpg', 80, 70, '<p>A groundbreaking Retina display. Powerful dual-core and quad-core Intel processors. Fast flash storage. High-performance graphics. Great built-in apps. And now in the 13-inch model, a revolutionary new Force Touch trackpad and even longer battery life.1 Whatever you can imagine, MacBook Pro with Retina display gives you the power to create.</p>\r\n<p>The design of MacBook Pro packs a lot of power into not a lot of space. Because we believe that high performance shouldn&rsquo;t come at the expense of portability. And despite being so compact, the new 13-inch and 15-inch MacBook Pro with Retina display models now deliver up to 10 hours and nine hours of battery life, respectively &mdash; an hour more than the previous models.</p>', '', '', 'Men Shirt', 'New', 'physical_product', 1.5, 8, 'active', 'product'),
(11, '6', 7, 5, 5, '2024-07-05 02:17:09', 'Solid Navy Denim Jackets Bundle', 'Bundle Seo Description test', 'jacket-bundle', 'jacket-1.jpg', 'jacket-2.jpg', 'jacket-3.jpg', 300, 200, '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qImi3vNccaU\" frameborder=\"0\" allowfullscreen></iframe>', 'jacket bundle', 'Sale', 'physical_product', 2.0, 6, 'active', 'bundle'),
(14, '6', 8, 6, 2, '2018-06-23 05:09:33', 'Microsoft Office Professional 2016 Download', '', 'microsoft-office-professional-2016', 'microsft-office.jpg', 'microsft-office-2.jpg', 'microsft-office-3.jpg', 130, 0, '', '', '', 'windows,software', 'Software', 'digital_product', 0.0, 2, 'active', 'product'),
(15, '6', 8, 6, 5, '2024-07-05 02:29:27', 'Avast Internet Security 2018 (1 PC, 1 Year) [Download]', '', 'avast-internet-security', 'avast-1.jpg', 'avast-2.png', 'avast-3.png', 39, 0, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', '', 'avast,software', 'Software', 'digital_product', 0.0, 6, 'active', 'product'),
(16, '12', 8, 6, 4, '2024-07-05 01:58:51', 'Corel VideoStudio Ultimate X10', '', 'corel-video-studio-ultimate-x10', 'corel video-1.jpg', 'corel video-2.jpg', 'corel video-3.jpg', 0, 0, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', '', 'corel,software', 'Software', 'variable_product', 0.0, 7, 'active', 'product'),
(17, '6', 8, 6, 4, '2024-07-03 06:36:16', 'Adobe Photoshop CC 2018 | 24 Month 2 Years Subscription (Download)', '', 'adobe-photoshop-cc-2018', 'photoshop-cc.jpg', 'photoshop-cc-2.jpg', 'photoshop-3.png', 0, 0, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', '', 'adobe,software', 'Software', 'variable_product', 0.0, 24, 'active', 'product'),
(18, '12', 8, 6, 6, '2024-07-05 02:16:54', 'Digital Premium Softwares Bundle', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'digital-premium-softwares-bundle', 'digital-softwares-bundle.jpg', 'corel video-1.jpg', 'avast-1.jpg', 70, 0, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', '', '', 'Bundle', 'digital_product', 0.0, 7, 'active', 'bundle'),
(20, '14', 11, 11, 4, '2019-01-06 06:10:24', 'Dokan Pro Multi Vendor Plugin', '', 'dokan-pro', 'Hundreds-of-Gateways.png', '', '', 40, 0, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', '', 'adobe,software', 'Software', 'digital_product', 0.0, 6, 'paused', 'product'),
(30, 'admin_2', 10, 10, 6, '2024-06-20 13:27:06', 'Apple MacBook Pro 13-inch 2018', 'The new Force Touch trackpad takes all the capabilities of Multi-Touch and adds force sensors that detect subtle differences in the amount of downward pressure you apply.', 'apple-macbook-pro', 'macbook-1.jpg', 'macbook-2.png', 'macbook-3.jpg', 0, 0, '<p>A groundbreaking Retina display. Powerful dual-core and quad-core Intel processors. Fast flash storage. High-performance graphics. Great built-in apps. And now in the 13-inch model, a revolutionary new Force Touch trackpad and even longer battery life.1 Whatever you can imagine, MacBook Pro with Retina display gives you the power to create.</p>\r\n<p>The design of MacBook Pro packs a lot of power into not a lot of space. Because we believe that high performance shouldn&rsquo;t come at the expense of portability. And despite being so compact, the new 13-inch and 15-inch MacBook Pro with Retina display models now deliver up to 10 hours and nine hours of battery life, respectively &mdash; an hour more than the previous models.</p>', '', '', '', 'MacBook', 'variable_product', 0.0, 5, 'active', 'product'),
(31, 'admin_2', 9, 5, 6, '2019-01-05 06:54:07', 'Shahzeb Saeed Dark Brown Wash & Wear Dress Trouser Slim Fit for Men', 'If you are not perfectly satisfied, then call our customer service on (+92) 21-111-132-729 to return the product for a full refund within 7 days of delivery.', 'pant', '1.jpg', '2.jpg', '3.jpg', 0, 0, '', '', '', 'men,pants', 'Pant', 'variable_product', 0.0, 2, 'active', 'product'),
(34, '14', 10, 10, 5, '2024-06-20 13:02:58', 'Apple MacBook Pro 15-inch 2018', '', 'appple-macbook-pro-15-inch', 'apple-mac-book-1.jpg', '', '', 0, 0, '<div data-autom=\"productSummary\">\r\n<div>\r\n<div data-specs-list=\"\">\r\n<ul>\r\n<li>Touch&nbsp;Bar and Touch&nbsp;ID</li>\r\n<li>2.8GHz quad-core 7th-generation Intel&nbsp;Core&nbsp;i7 processor, Turbo&nbsp;Boost up to 3.8GHz</li>\r\n<li>16GB 2133MHz LPDDR3 memory</li>\r\n<li>256GB SSD storage</li>\r\n<li>Radeon Pro 555 with 2GB memory</li>\r\n<li>Four Thunderbolt 3 ports</li>\r\n<li>Backlit Keyboard - US English</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', '', ' MacBook', 'variable_product', 0.0, 7, 'active', 'product'),
(36, 'admin_2', 10, 7, 5, '2024-07-03 06:07:43', 'Dell XPS 15 - 9560 Intel Core i7-7700HQ X4 2.8GHz 16GB 512GB SSD 15.6', '', 'dell-xps-15-9560-win10', 'dell-xps-15.jpg', '', '', 0, 0, '<p>The world&rsquo;s smallest 15.6-inch performance laptop packs powerhouse performance and a stunning InfinityEdge display &mdash; all in our most powerful XPS laptop. Featuring the latest Intel&reg; processors.</p>\r\n<p>&nbsp;</p>', '', '', 'Dell Xps 15', 'Laptop', 'variable_product', 0.0, 9, 'active', 'product'),
(38, '14', 10, 9, 5, '2024-07-03 05:17:28', 'Razer Blade Stealth 13.3', 'Score $600 in software including Corel PaintShop Pro X9, Corel Video Studio X10, Cup Head, and More! (Over 10 downloadable titles)', 'razer-blade-stealth-13-inch-touchscreen-ultrabook-7th-generation-i7', 'razer-blade-1.jpg', 'razer-blade-2.jpg', 'razer-blade-3.jpg', 0, 0, '<p>Score $600 in software including Corel PaintShop Pro X9, Corel Video Studio X10, Cup Head, and More! (Over 10 downloadable titles) Every Razer Blade Stealth is CNC-milled from a single block of aircraft-grade aluminum for maximum durability and a sleek, beautiful form The 13.3&rdquo; Razer Blade Stealth is available in a black or gunmetal gray finish. The gunmetal variant features a tone-on-tone Razer logo for a sleek, solid and professional design Experience amazing color saturation with the QHD+ 3200 x 1800 touch enabled display. Images are bright and clearly visible with wide viewing angles of up to 178&deg; The 7th Gen Intel Core i7-7500U processor gives the Razer Blade Stealth 2.7GHz of processing power and Turbo Boost speeds up to 3.5GHz</p>', '', '', 'laptop', 'Razer', 'variable_product', 0.0, 9, 'active', 'product'),
(39, 'admin_2', 6, 4, 6, '2024-07-03 05:19:30', 'Acer Predator Helios 300 Gaming Laptop', 'Acer Predator Helios 300 Gaming Laptop, 15.6\" Full HD, Intel Core i7-7700HQ CPU, 16GB DDR4 RAM, 256GB SSD, GeForce GTX 1060-6GB, VR Ready, Red Backlit KB, Metal Chassis, G3-571-77QK', 'acer-predator-helios-300-gaming-laptop', 'acer-predator-300.jpg', 'acer-predator-300-2.jpg', 'acer-predator-300-3.jpg', 0, 0, '<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: #949494; padding: 0px; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">\r\n<li style=\"box-sizing: border-box; list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: #111111;\">Latest 7th Generation Intel Core i7-7700HQ Processor (Up to 3.8GHz)</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: #111111;\">Latest NVIDIA GeForce GTX 1060 with 6 GB of dedicated GDDR5 VRAM</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: #111111;\">15.6\" Full HD (1920 x 1080) widescreen IPS display, Red Backlit Keyboard</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: #111111;\">16GB DDR4 Memory &amp; 256GB SSD</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: #111111;\">Up to 7-hours of battery life</span></li>\r\n</ul>', '', '', 'Acer gaming', 'Gaming', 'variable_product', 0.0, 12, 'active', 'bundle'),
(40, '14', 10, 8, 6, '2019-01-06 06:10:14', 'HP Envy 15t Laptop - 15.6-in LED Screen Windows 10 (Non-Touch)', '', 'hp-envy-15t-laptop-15-6', 'hp envy 15t.png', '', '', 0, 0, '<ul>\r\n<li>Windows 10 Home 64</li>\r\n<li>7th Generation Intel&reg; Core&trade; i7 processor</li>\r\n<li>8 GB memory; 256 GB SSD storage</li>\r\n<li>Intel&reg; HD Graphics 620</li>\r\n<li>15.6\" Diagonal FHD touch display</li>\r\n</ul>', '', '', 'Hp Envy 15', 'Hp', 'variable_product', 0.0, 14, 'active', 'product'),
(41, '6', 10, 6, 4, '2019-01-01 05:37:25', 'Dell Inspiron 15 7000 Laptop', '(Variable Product) Test Description', 'variable-product-test', 'download.jpg', '', '', 0, 0, '<p>(Variable Product) Test Product Description</p>', '', '', 'variable_product keywords', '', 'variable_product', 0.0, 5, 'active', 'product'),
(46, 'admin_2', 10, 10, 6, '2024-07-05 02:33:09', 'Apple iMac 21.5 Core i5 2.7GHz, 8GB Memory, 1TB Hard Drive, MacOS 10 Sierra', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'apple-imac-21-macos-sierra', 'imac-1.jpg', 'imac-2.jpg', 'imac-3.jpg', 0, 0, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.</p>', '', '', 'Apple iMac', 'iMac', 'variable_product', 0.0, 21, 'active', 'product'),
(48, '6', 5, 5, 5, '2024-07-05 02:29:47', 'Shop Quite Pack of 2 - Black & Grey Cotton Tshirts for Men', 'Buy Shop Quite Pack of 2 - Black &amp; Grey Cotton Tshirts for Men Online in Pakistan for Rs.  699  on daraz.pk at Best Price | Enjoy Cash on Delivery |', 'pack-of-2-black-grey-cotton-tshirts-for-men', 'T-Shirt-1.jpg', '', '', 70, 0, '<p>Pack of 2 Stylish Multicolor Cotton V-Neck Button T-Shirts</p>', '', '', 'T-Shirt', 'T-Shirt', 'physical_product', 1.4, 7, 'active', 'product'),
(50, '6', 5, 5, 5, '2024-07-05 02:31:22', 'Mardaz Pack of 5 - Multicolor Cotton V-Neck T-Shirts for Men', 'Buy Shop Quite Pack of 5 - Black & Multicolor Cotton V-Neck T-Shirts for Men Online in Pakistan for Rs. 999  on daraz.pk at Best Price | Enjoy Cash on Delivery |', 'pack-of-6-multicolor-cotton-neck-tshirts-for-men', 'Variable-T-shirt.jpg', '', '', 0, 0, '<p>Pack of 5 - Multicolor Cotton V-Neck T-Shirts for Men</p>', '', '', 'T-Shirt', 'T-Shirt', 'variable_product', 0.0, 4, 'active', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `products_stock`
--

CREATE TABLE `products_stock` (
  `stock_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `variation_id` int(10) NOT NULL,
  `stock_status` text NOT NULL,
  `enable_stock` text NOT NULL,
  `stock_quantity` text NOT NULL,
  `allow_backorders` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products_stock`
--

INSERT INTO `products_stock` (`stock_id`, `product_id`, `variation_id`, `stock_status`, `enable_stock`, `stock_quantity`, `allow_backorders`) VALUES
(9, 1, 0, 'outofstock', 'yes', '0', 'no'),
(10, 36, 340, 'instock', 'yes', '3', 'no'),
(11, 36, 339, 'outofstock', 'yes', '0', 'no'),
(12, 36, 338, 'outofstock', 'yes', '0', 'no'),
(13, 36, 337, 'instock', 'yes', '12', 'no'),
(14, 36, 336, 'instock', 'yes', '2', 'no'),
(15, 36, 335, 'instock', 'yes', '1', 'no'),
(16, 35, 226, 'instock', 'yes', '3', 'no'),
(17, 35, 225, 'instock', 'yes', '3', 'no'),
(18, 35, 224, 'instock', 'yes', '7', 'no'),
(19, 35, 223, 'instock', 'no', '0', 'no'),
(20, 35, 222, 'instock', 'no', '0', 'no'),
(21, 35, 221, 'instock', 'no', '0', 'no'),
(22, 35, 220, 'instock', 'no', '0', 'no'),
(23, 35, 219, 'instock', 'no', '0', 'no'),
(24, 35, 218, 'instock', 'no', '0', 'no'),
(25, 35, 217, 'instock', 'no', '0', 'no'),
(26, 35, 216, 'instock', 'no', '0', 'no'),
(27, 35, 215, 'instock', 'no', '0', 'no'),
(28, 35, 214, 'instock', 'no', '0', 'no'),
(29, 35, 213, 'instock', 'no', '0', 'no'),
(30, 35, 212, 'instock', 'no', '0', 'no'),
(31, 35, 211, 'instock', 'no', '0', 'no'),
(32, 35, 210, 'instock', 'no', '0', 'no'),
(33, 35, 209, 'instock', 'no', '0', 'no'),
(34, 2, 0, 'onbackorder', 'yes', '-4', 'notify'),
(35, 18, 0, 'instock', 'yes', '2', 'no'),
(36, 11, 0, 'instock', 'yes', '17', 'no'),
(37, 39, 345, 'instock', 'yes', '6', 'no'),
(38, 39, 344, 'onbackorder', 'yes', '0', 'yes'),
(39, 39, 343, 'outofstock', 'yes', '0', 'no'),
(40, 39, 342, 'outofstock', 'yes', '0', 'no'),
(41, 34, 332, 'instock', 'yes', '4', 'no'),
(42, 34, 331, 'instock', 'no', '0', 'no'),
(43, 34, 330, 'onbackorder', 'yes', '-2', 'yes'),
(44, 34, 89, 'onbackorder', 'yes', '-4', 'notify'),
(45, 34, 88, 'instock', 'no', '0', 'no'),
(46, 34, 87, 'instock', 'no', '0', 'no'),
(47, 34, 86, 'instock', 'yes', '11', 'no'),
(48, 34, 85, 'instock', 'yes', '19', 'no'),
(49, 3, 0, 'instock', 'yes', '3', 'no'),
(50, 4, 0, 'instock', 'yes', '4', 'no'),
(51, 5, 0, 'instock', 'yes', '5', 'no'),
(52, 6, 0, 'instock', 'yes', '17', 'yes'),
(53, 7, 0, 'outofstock', 'no', '0', 'no'),
(54, 8, 0, 'onbackorder', 'yes', '1', 'yes'),
(55, 9, 2, 'instock', 'yes', '1', 'no'),
(56, 14, 0, 'instock', 'yes', '2', 'no'),
(57, 15, 0, 'instock', 'yes', '2', 'no'),
(58, 16, 0, 'onbackorder', 'yes', '-3', 'notify'),
(59, 17, 0, 'onbackorder', 'yes', '-3', 'notify'),
(60, 20, 0, 'instock', 'no', '0', 'yes'),
(61, 40, 347, 'instock', 'no', '0', 'no'),
(62, 40, 359, 'instock', 'no', '0', 'no'),
(63, 40, 358, 'instock', 'no', '0', 'no'),
(64, 40, 357, 'instock', 'no', '0', 'no'),
(65, 40, 356, 'instock', 'no', '0', 'no'),
(66, 40, 355, 'instock', 'yes', '1', 'no'),
(67, 40, 354, 'instock', 'yes', '3', 'notify'),
(68, 40, 352, 'instock', 'no', '0', 'no'),
(69, 40, 351, 'instock', 'no', '0', 'no'),
(70, 40, 348, 'instock', 'yes', '3', 'no'),
(71, 40, 360, 'instock', 'yes', '99', 'no'),
(72, 40, 361, 'instock', 'no', '0', 'no'),
(73, 31, 283, 'instock', 'no', '0', 'no'),
(74, 31, 282, 'instock', 'no', '0', 'no'),
(75, 31, 281, 'instock', 'no', '0', 'no'),
(76, 31, 280, 'instock', 'no', '0', 'no'),
(77, 31, 279, 'instock', 'no', '0', 'no'),
(78, 31, 278, 'instock', 'no', '0', 'no'),
(79, 31, 277, 'instock', 'no', '0', 'no'),
(80, 31, 276, 'instock', 'yes', '1', 'no'),
(81, 31, 275, 'instock', 'no', '0', 'no'),
(82, 31, 274, 'instock', 'no', '0', 'no'),
(83, 31, 273, 'instock', 'no', '0', 'no'),
(84, 31, 272, 'instock', 'no', '0', 'no'),
(85, 31, 271, 'instock', 'no', '0', 'no'),
(86, 31, 270, 'instock', 'no', '0', 'no'),
(87, 31, 269, 'instock', 'no', '0', 'no'),
(88, 31, 268, 'instock', 'no', '0', 'no'),
(89, 31, 267, 'instock', 'no', '0', 'no'),
(90, 31, 266, 'instock', 'no', '0', 'no'),
(93, 41, 453, 'instock', 'no', '0', 'no'),
(94, 41, 452, 'instock', 'no', '0', 'no'),
(95, 41, 451, 'instock', 'no', '0', 'no'),
(96, 41, 450, 'instock', 'no', '0', 'no'),
(97, 41, 449, 'instock', 'no', '0', 'no'),
(98, 41, 448, 'instock', 'no', '0', 'no'),
(99, 41, 447, 'instock', 'no', '0', 'no'),
(100, 41, 446, 'instock', 'no', '0', 'no'),
(101, 41, 445, 'instock', 'no', '0', 'no'),
(102, 41, 444, 'instock', 'no', '0', 'no'),
(103, 41, 443, 'instock', 'no', '0', 'no'),
(104, 41, 442, 'instock', 'no', '0', 'no'),
(105, 41, 441, 'instock', 'no', '0', 'no'),
(106, 41, 440, 'instock', 'no', '0', 'no'),
(107, 41, 439, 'instock', 'no', '0', 'no'),
(108, 41, 438, 'instock', 'no', '0', 'no'),
(109, 41, 454, 'instock', 'no', '0', 'no'),
(110, 41, 458, 'onbackorder', 'yes', '0', 'notify'),
(115, 3, 476, 'instock', 'yes', '1', 'no'),
(116, 3, 475, 'instock', 'no', '0', 'no'),
(117, 3, 474, 'instock', 'no', '0', 'no'),
(118, 3, 473, 'instock', 'no', '0', 'no'),
(119, 3, 472, 'instock', 'no', '0', 'no'),
(120, 3, 471, 'instock', 'no', '0', 'no'),
(121, 3, 470, 'instock', 'no', '0', 'no'),
(122, 3, 469, 'instock', 'no', '0', 'no'),
(123, 3, 468, 'instock', 'no', '0', 'no'),
(124, 38, 478, 'outofstock', 'yes', '-3', 'no'),
(125, 38, 479, 'outofstock', 'yes', '0', 'no'),
(126, 16, 481, 'instock', 'yes', '1', 'no'),
(128, 16, 483, 'outofstock', 'yes', '0', 'no'),
(130, 16, 485, 'instock', 'yes', '3', 'no'),
(131, 16, 486, 'instock', 'no', '8', 'no'),
(132, 17, 488, 'instock', 'yes', '1', 'no'),
(133, 17, 489, 'instock', 'yes', '2', 'no'),
(134, 16, 490, 'instock', 'no', '0', 'no'),
(135, 17, 491, 'instock', 'yes', '3', 'no'),
(136, 41, 492, 'outofstock', 'yes', '0', 'no'),
(140, 46, 494, 'instock', 'yes', '53', 'no'),
(141, 46, 495, 'instock', 'yes', '12', 'no'),
(142, 46, 496, 'instock', 'yes', '4', 'no'),
(191, 30, 503, 'instock', 'yes', '7', 'no'),
(193, 30, 504, 'instock', 'yes', '5', 'no'),
(194, 30, 505, 'instock', 'yes', '7', 'no'),
(195, 30, 506, 'instock', 'yes', '3', 'no'),
(196, 48, 0, 'instock', 'yes', '4', 'no'),
(199, 50, 584, 'instock', 'yes', '5', 'no'),
(200, 50, 586, 'outofstock', 'yes', '0', 'no'),
(201, 50, 587, 'instock', 'yes', '1', 'no'),
(202, 10, 0, 'instock', 'yes', '8', 'no'),
(207, 8828, 607, 'instock', 'no', '0', 'no'),
(208, 8828, 606, 'instock', 'no', '0', 'no'),
(209, 8828, 605, 'instock', 'no', '0', 'no'),
(210, 8828, 604, 'instock', 'no', '0', 'no'),
(211, 8828, 603, 'instock', 'no', '0', 'no'),
(212, 8828, 608, 'instock', 'no', '0', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `attribute_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `attribute_name` text NOT NULL,
  `attribute_values` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`attribute_id`, `product_id`, `attribute_name`, `attribute_values`) VALUES
(24, 30, 'Processor', 'i3 7th-generation|i5 7th-generation|i7 7th-generation'),
(25, 30, 'Memory', '8 GB|16 GB|32 GB'),
(26, 30, 'Storage', '128 GB SSD|256 GB SSD|512GB SSD|1TB SSD|2TB SSD'),
(27, 31, 'Color', 'Black|White|Silver Gray'),
(28, 31, 'Size', '30|32|34|36|38|40'),
(42, 34, 'Memory', '4 GB|8 GB|12 GB|16 GB|32 GB'),
(43, 34, 'Processor', 'i3 7th-generation|i5 7th-generation|i7 7th-generation'),
(44, 34, 'Storage', '128GB SSD|250GB SSD|512GB SSD|1TB SSD|2TB SSD'),
(68, 49, 'Memory', '8 GB|16 GB|32 GB|64 GB'),
(69, 49, 'Processor', 'i3 7th-generation|i5 7th-generation|i7 7th-generation'),
(70, 49, 'Storage', '128 GB SSD|256 GB SSD|512GB SSD|1TB SSD|2TB SSD '),
(75, 35, 'Size', 'Small|Medium|Large|X-Large|XX-Lagre|3X-Large'),
(76, 35, 'Color', 'Red|Blue|Aqua Blue'),
(77, 36, 'Cpu', 'Core i5 7gen|Core i7 7gen|Core i9 8gen'),
(78, 36, 'Capacity', '8 GB RAM / 256 GB SSD|16GB Ram / 512 GB SSD / Full HD|16 GB RAM / 1 TB SSD 4K'),
(80, 39, 'Memory', '16GB DDR4|12GB DDR4'),
(81, 39, 'Cpu', 'Core i7-7700HQ|Core i5-7700HQ'),
(82, 40, 'cpu', 'i3|i5|i7|i9'),
(83, 40, 'ram', '4gb|8gb|12gb|16gb'),
(84, 40, 'storage', '128 GB SSD|256 GB SSD|512GB SSD|1TB SSD|2TB SSD'),
(85, 46, 'Processor', 'i3 7th-generation|i5 7th-generation|i7 7th-generation|i9 7th-generation'),
(86, 46, 'Memory', '8 GB|16 GB|32 GB|64 GB'),
(87, 46, 'Storage', '256 GB SSD|512 GB SSD|1TB SSD'),
(88, 41, 'Processor', 'i3|i5|i7|i9'),
(89, 41, 'Memory', '4 GB|8 GB|16 GB|32 GB'),
(90, 0, '', ''),
(91, 3, 'Color', 'Red|Blue|Yellow'),
(92, 3, 'Size', '12|14|16'),
(95, 38, 'Memory', '8 GB|12 GB|16 GB'),
(96, 38, 'Processor', 'i3 7en|i5 7en|i7 7en'),
(97, 16, 'Os', 'Windows|Mac-Os'),
(98, 16, 'Edition', 'Ultra|Delux|Ultimate'),
(99, 17, 'Operating System', 'Windows|MacOS|linux Os'),
(106, 50, 'Size', 'Small|Medium|Large|X-Large|2X-Large|3X-Large'),
(107, 50, 'Color', 'Black|Blue|Maroon|Chocolate|Red'),
(110, 8828, 'Memory', '4 GB|8 GB|12 GB|16 GB|32 GB'),
(112, 8828, 'Processor', 'i3 7th-generation|i5 7th-generation|i7 7th-generation'),
(113, 8828, 'Storage', '128 GB SSD|256 GB SSD|512GB SSD|1TB SSD|2TB SSD');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'Coats', 'no', 'image3.jpg'),
(5, 'T-Shirts', 'no', 'image2.jpg'),
(6, 'Sweater', 'no', 'sweater.jpg'),
(7, 'jackets', 'no', 'jacket.jpg'),
(8, 'Microsoft Windows', 'yes', ''),
(9, 'Pents', 'no', '1.jpg'),
(10, 'Laptops', 'yes', ''),
(11, 'Wedevs', 'no', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `variation_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_img1` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(10) NOT NULL,
  `product_weight` decimal(10,1) NOT NULL,
  `product_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_variations`
--

INSERT INTO `product_variations` (`variation_id`, `product_id`, `product_img1`, `product_price`, `product_psp_price`, `product_weight`, `product_type`) VALUES
(85, 34, '', 2200, 0, 2.5, 'physical_product'),
(86, 34, '', 2000, 0, 2.3, 'physical_product'),
(87, 34, '', 2000, 1930, 0.0, 'physical_product'),
(88, 34, '', 1600, 0, 0.0, 'physical_product'),
(89, 34, '', 1200, 0, 0.0, 'physical_product'),
(100, 49, '', 0, 0, 0.0, 'physical_product'),
(102, 49, '', 0, 0, 0.0, 'physical_product'),
(110, 49, '', 0, 0, 0.0, 'physical_product'),
(111, 49, '', 0, 0, 0.0, 'physical_product'),
(115, 49, '', 0, 0, 0.0, 'physical_product'),
(117, 49, '', 0, 0, 0.0, 'default_attributes_variation'),
(118, 49, 'acbakery.jpg', 1890, 1790, 3.4, 'physical_product'),
(207, 35, '', 0, 0, 0.0, 'default_attributes_variation'),
(209, 35, '', 1, 0, 0.0, 'physical_product'),
(210, 35, '', 60, 0, 0.0, 'physical_product'),
(211, 35, '', 70, 0, 0.0, 'physical_product'),
(212, 35, '', 80, 0, 0.0, 'digital_product'),
(213, 35, '', 90, 0, 0.0, 'physical_product'),
(214, 35, '', 100, 0, 0.0, 'physical_product'),
(215, 35, '', 50, 0, 0.0, 'digital_product'),
(216, 35, '', 60, 0, 0.0, 'physical_product'),
(217, 35, '', 70, 0, 0.0, 'physical_product'),
(218, 35, '', 80, 0, 0.0, 'physical_product'),
(219, 35, '', 90, 0, 0.0, 'physical_product'),
(220, 35, '', 100, 0, 0.0, 'physical_product'),
(221, 35, '', 50, 0, 0.0, 'physical_product'),
(222, 35, '', 60, 0, 2.3, 'physical_product'),
(223, 35, '', 70, 0, 0.0, 'physical_product'),
(224, 35, '', 80, 0, 2.3, 'physical_product'),
(225, 35, '', 90, 0, 0.0, 'physical_product'),
(226, 35, '', 100, 0, 0.0, 'physical_product'),
(265, 31, '', 0, 0, 0.0, 'default_attributes_variation'),
(266, 31, '', 0, 0, 0.0, 'physical_product'),
(267, 31, '', 0, 0, 0.0, 'physical_product'),
(268, 31, '', 0, 0, 0.0, 'physical_product'),
(269, 31, '', 0, 0, 0.0, 'physical_product'),
(270, 31, '', 0, 0, 0.0, 'physical_product'),
(271, 31, '', 0, 0, 0.0, 'physical_product'),
(272, 31, '', 0, 0, 0.0, 'physical_product'),
(273, 31, '', 0, 0, 0.0, 'physical_product'),
(274, 31, '', 0, 0, 0.0, 'physical_product'),
(275, 31, '', 0, 0, 0.0, 'physical_product'),
(276, 31, '', 50, 0, 2.3, 'physical_product'),
(277, 31, '', 0, 0, 0.0, 'physical_product'),
(278, 31, '', 0, 0, 0.0, 'physical_product'),
(279, 31, '', 0, 0, 0.0, 'physical_product'),
(280, 31, '', 0, 0, 0.0, 'physical_product'),
(281, 31, '', 0, 0, 0.0, 'physical_product'),
(282, 31, '', 0, 0, 0.0, 'physical_product'),
(283, 31, '', 0, 0, 0.0, 'physical_product'),
(330, 34, '', 1970, 0, 0.0, 'physical_product'),
(331, 34, '', 2300, 2240, 4.9, 'physical_product'),
(332, 34, '', 1400, 1320, 4.5, 'physical_product'),
(333, 34, '', 0, 0, 0.0, 'default_attributes_variation'),
(334, 36, '', 0, 0, 0.0, 'default_attributes_variation'),
(335, 36, '', 1000, 0, 2.3, 'digital_product'),
(336, 36, '', 1200, 0, 2.7, 'physical_product'),
(337, 36, '', 1300, 0, 2.4, 'physical_product'),
(338, 36, '', 1460, 0, 3.0, 'physical_product'),
(339, 36, '', 1500, 0, 2.5, 'physical_product'),
(340, 36, '', 1690, 0, 3.2, 'physical_product'),
(341, 39, '', 0, 0, 0.0, 'default_attributes_variation'),
(342, 39, '', 3200, 0, 2.4, 'physical_product'),
(343, 39, '', 3000, 0, 0.0, 'physical_product'),
(344, 39, '', 2900, 0, 0.0, 'physical_product'),
(345, 39, '', 2720, 0, 0.0, 'physical_product'),
(346, 40, '', 0, 0, 0.0, 'default_attributes_variation'),
(348, 40, '', 1000, 0, 0.0, 'physical_product'),
(351, 40, '', 0, 0, 0.0, 'physical_product'),
(352, 40, '', 0, 0, 0.0, 'physical_product'),
(354, 40, '', 1700, 0, 2.1, 'physical_product'),
(355, 40, '', 0, 0, 0.0, 'physical_product'),
(356, 40, '', 0, 0, 0.0, 'physical_product'),
(358, 40, '', 0, 0, 0.0, 'physical_product'),
(359, 40, '', 0, 0, 0.0, 'physical_product'),
(360, 40, '', 5900, 0, 0.0, 'physical_product'),
(457, 41, '', 0, 0, 0.0, 'default_attributes_variation'),
(458, 41, '', 3000, 0, 2.3, 'physical_product'),
(464, 3, '', 0, 0, 0.0, 'default_attributes_variation'),
(468, 3, '', 0, 0, 0.0, 'physical_product'),
(469, 3, '', 0, 0, 0.0, 'physical_product'),
(470, 3, '', 0, 0, 0.0, 'physical_product'),
(471, 3, '', 0, 0, 0.0, 'physical_product'),
(472, 3, '', 0, 0, 0.0, 'physical_product'),
(473, 3, '', 0, 0, 0.0, 'physical_product'),
(474, 3, '', 0, 0, 0.0, 'physical_product'),
(475, 3, '', 0, 0, 0.0, 'physical_product'),
(476, 3, '', 120, 0, 2.0, 'physical_product'),
(477, 38, '', 0, 0, 0.0, 'default_attributes_variation'),
(478, 38, '', 2980, 0, 2.1, 'physical_product'),
(479, 38, '', 2340, 0, 2.1, 'physical_product'),
(480, 16, '', 0, 0, 0.0, 'default_attributes_variation'),
(481, 16, '', 420, 0, 0.0, 'digital_product'),
(483, 16, '', 299, 320, 0.0, 'digital_product'),
(485, 16, '', 420, 400, 0.0, 'digital_product'),
(486, 16, '', 399, 350, 0.0, 'digital_product'),
(487, 17, '', 0, 0, 0.0, 'default_attributes_variation'),
(488, 17, '', 220, 0, 0.0, 'digital_product'),
(489, 17, '', 199, 0, 0.0, 'digital_product'),
(490, 16, '', 0, 0, 0.0, 'physical_product'),
(491, 17, '', 215, 200, 0.0, 'digital_product'),
(492, 41, '', 2500, 0, 2.3, 'physical_product'),
(493, 46, '', 0, 0, 0.0, 'default_attributes_variation'),
(494, 46, '', 1, 0, 2.5, 'physical_product'),
(495, 46, '', 1, 0, 2.3, 'physical_product'),
(496, 46, '', 1400, 0, 3.1, 'physical_product'),
(501, 30, '', 0, 0, 0.0, 'default_attributes_variation'),
(503, 30, '', 1000, 0, 2.8, 'physical_product'),
(504, 30, '', 870, 0, 2.7, 'physical_product'),
(505, 30, '', 760, 0, 2.5, 'physical_product'),
(506, 30, '', 1400, 0, 3.0, 'physical_product'),
(584, 50, '', 60, 0, 1.0, 'physical_product'),
(585, 50, '', 0, 0, 0.0, 'default_attributes_variation'),
(586, 50, '', 1, 0, 1.0, 'physical_product'),
(587, 50, '', 80, 0, 1.0, 'physical_product'),
(588, 8828, '', 0, 0, 0.0, 'default_attributes_variation'),
(603, 8828, '', 0, 0, 0.0, 'physical_product'),
(604, 8828, '', 0, 0, 0.0, 'physical_product'),
(605, 8828, '', 0, 0, 0.0, 'physical_product'),
(606, 8828, '', 0, 0, 0.0, 'physical_product'),
(607, 8828, '', 0, 0, 0.0, 'digital_product'),
(608, 8828, '', 0, 0, 0.0, 'physical_product'),
(609, 8828, '', 0, 0, 0.0, '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `review_title` text NOT NULL,
  `review_rating` int(10) NOT NULL,
  `review_content` text NOT NULL,
  `review_date` text NOT NULL,
  `review_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `customer_id`, `product_id`, `review_title`, `review_rating`, `review_content`, `review_date`, `review_status`) VALUES
(1, 2, 36, 'Excellent laptop', 5, 'have found this product that does exactly that but it seemingly works only with simple works (snippet below).', 'November 28, 2017', 'active'),
(2, 3, 36, 'Seems to be a great machine but exercise caution', 4, 'I\'ve had it for around a month and everything is great. ', 'April 12, 2018', 'active'),
(3, 6, 36, 'Great laptop superb screen and nice build', 3, 'Like many other reviewers complaining about quality, I am adding my complaints. I had this laptop for almost 4 months now. Even though it has a GTX 1050, it BARELY runs a medium-graphics game like Path of Exile. It hangs and stutters with 20 tabs open in Chrome. I have windows 10 running with all recent updates and nvidia graphics updates, yet I cant run Path of Exile or other 2d games from Steam smoothly. Terrible performance, and its fans boosts to maximum noise levels at the slightest loads (e.g. 2 word processors open). Furthermore, the heat sinks are inefficient, it overheats REAL FAST just 5 minutes into any game or 20 minutes surfing the net. Terrible purchase, I regret going with Dell, never again.', 'April 15, 2018', 'active'),
(4, 7, 36, 'Great laptop at first sight, terrible quality assurance', 2, 'God for web surfing and thats it. wont handle games or high end graphics software. Id be weary using it for HD movies as well. Not worth the money', 'April 19, 2018', 'active'),
(5, 8, 36, 'I give up, Dell', 1, 'Awful! First laptop had color shift from right to left. Right side looked greenish and left side reddish. The replacement one had 2 dead pixels. If the computer didnt have those issues, it would have been amazing for the price. Meh keyboard too. Do not buy if you type a lot!', 'April 20, 2018', 'active'),
(6, 9, 36, 'Everything has been great so far', 5, 'I bought mine through amazon warehouse in like new condition. I\'ve had it for around a month and everything is great. The packaging that it came in was awful, but everything else was as described. It didn\'t have any scratches and it runs great. The graphics card is pretty good so I can play games that I couldn\'t before. I wouldn\'t pay the full price ($1500 at time of purchase) but I paid $1000 and it is definitely worth it.', 'April 21, 2018', 'active'),
(7, 10, 36, '5 Stars Best Windows Laptop You Can Buy!', 5, 'I started using this laptop few weeks back. Great experience altogether. I am extremely happy with Dell XPS 15. It\'s quite, amazing screen clarity, 1tb SSD, very responsive touch screen and finger print reader.', 'April 21, 2018', 'active'),
(8, 11, 36, 'Great experience altogether', 5, 'GREAT laptop. Although the left speaker came damaged.', 'April 22, 2018', 'active'),
(9, 12, 36, 'Five Stars', 5, 'This laptop has performed amazing for me. Would recommend to everyone. Just a tad bit pricy, but it is worth it for the quality.', 'April 23, 2018', 'active'),
(10, 13, 36, 'Well built, but failed', 3, 'So far so good. It\'s saddening that the rumors about the WiFi card are true. The WiFi is in and out, and this device struggles. I bought a replacement WiFi card but when trying to replace it the computer doesn\'t recognize the hardware even though I\'m sure I brought a compatible card and installed the proper drivers. When I tried to re insert the original WiFi card, the computer wasn\'t recognizing that either. I kept getting this error message when trying to re-install the driver that \"There is no compatible hardware.\" So right now I\'m without wife and the worst part about it is after taking off the bottom plate so many times, one of the screws became stripped so there\'s almost no way of opening it back up. I\'m trying everything in my power to not have to send it to dell because I\'d imagine that i\'d be without a PC for maybe a week and a half, maybe 2. and I really don\'t want to do that. Ill probably try geek squad. Anyhow I know there is nothing else at this price offering these specs but, it would be nice if everything was working great straight out of the box. No one should be cracking open a brand new PC.', 'April 24, 2018', 'active'),
(12, 15, 36, 'A smooth experience with an excellent machine', 4, 'I really thought this was going to be a performer but I\'m extremely disappointed. I\'m using it to run PS CC and it\'s slower than my 7 year old gateway desktop. I use a wacom tablet to retouch with and using the healing brush is a pain. When you hold down the alt key and tap the tablet to set the point from which you want to start working it doesn\'t set the point at least 75% of the time. And file management, maybe I don\'t know how to do it but it takes forever to open folders that contain large psd, or raw images. I bought this because my windows 7 desktop with its beautiful 22\' color calibrated display no longer connects to the internet. However, after a few minutes of working on this new machine I get frustrated and go back to the old desktop using this supposedly high performance machine only to transfer files to my smugmug account. This POS is going right back.', 'April 29, 2018', 'active'),
(13, 15, 36, 'Smart and Elegant', 5, 'Finally a Smart Sized Smart Laptop and very good performance', 'May 03, 2018', 'spam'),
(14, 15, 35, 'Satisfied', 5, 'Good Shirt Excellent Product', 'May 04, 2018', 'active'),
(15, 15, 8, 'Very bad quality', 4, 'I waste my $100 dollars on it. please don\'t buy it', 'May 04, 2018', 'active'),
(16, 15, 34, 'awesome macbook pro i ever seen', 4, 'i love this macbook laptop', 'May 04, 2018', 'active'),
(17, 7, 34, 'It\'s a Macbook Pro Maxed out from 2018', 5, 'Many of the negative reviews here are from people that either don\'t understand computers or bought during the short time the specs posted by amazon as to what people were buying were wrong. Amazon has now fixed that and what you see is now accurate.', 'May 04, 2018', 'active'),
(18, 9, 34, 'Wrong description / Still a good macbook pro', 5, 'Like others have noted, the specs in the product listing aren\'t all correct. It\'s a 2016 model, 3.3 GHz i7, 16 GB 2133 MHz LPDDR3 RAM, 512 GB SSD (but only registers ~500 GB - Mac has a funny way of calculating capacity), and Intel Iris 550 graphics with 1.5 GB mem. I\'ve only had it for a few days. So far so good.\r\n\r\nI was debating between this and the ASUS Zenbook Deluxe 3 (latest model). The ASUS specs are better, except for the display resolution. But Mac does have a better reputation of lasting longer. Hopefully paying for premium saves me some headaches in the long run.', 'May 04, 2018', 'active'),
(19, 11, 34, 'Very comfortable', 4, 'I am glad to see the shirt its very good stuff and excelent colours', 'May 04, 2018', 'trash'),
(30, 2, 46, 'Excellent laptop', 5, 'have found this product that does exactly that but it seemingly works only with simple works (snippet below).', 'November 28, 2017', 'active'),
(31, 3, 46, 'Seems to be a great machine but exercise caution', 4, 'I\'ve had it for around a month and everything is great. ', 'April 12, 2018', 'active'),
(32, 16, 46, 'Great laptop superb screen and nice build', 3, 'Like many other reviewers complaining about quality, I am adding my complaints. I had this laptop for almost 4 months now. Even though it has a GTX 1050, it BARELY runs a medium-graphics game like Path of Exile. It hangs and stutters with 20 tabs open in Chrome. I have windows 10 running with all recent updates and nvidia graphics updates, yet I cant run Path of Exile or other 2d games from Steam smoothly. Terrible performance, and its fans boosts to maximum noise levels at the slightest loads (e.g. 2 word processors open). Furthermore, the heat sinks are inefficient, it overheats REAL FAST just 5 minutes into any game or 20 minutes surfing the net. Terrible purchase, I regret going with Dell, never again.', 'April 15, 2018', 'active'),
(33, 7, 46, 'Great laptop at first sight, terrible quality assurance', 2, 'God for web surfing and thats it. wont handle games or high end graphics software. Id be weary using it for HD movies as well. Not worth the money', 'April 19, 2018', 'active'),
(34, 8, 46, 'I give up, Dell', 1, 'Awful! First laptop had color shift from right to left. Right side looked greenish and left side reddish. The replacement one had 2 dead pixels. If the computer didnt have those issues, it would have been amazing for the price. Meh keyboard too. Do not buy if you type a lot!', 'April 20, 2018', 'active'),
(35, 9, 46, 'Everything has been great so far', 5, 'I bought mine through amazon warehouse in like new condition. I\'ve had it for around a month and everything is great. The packaging that it came in was awful, but everything else was as described. It didn\'t have any scratches and it runs great. The graphics card is pretty good so I can play games that I couldn\'t before. I wouldn\'t pay the full price ($1500 at time of purchase) but I paid $1000 and it is definitely worth it.', 'April 21, 2018', 'active'),
(36, 10, 46, 'Best Windows Laptop You Can Buy!', 5, 'I started using this laptop few weeks back. Great experience altogether. I am extremely happy with Dell XPS 15. It\'s quite, amazing screen clarity, 1tb SSD, very responsive touch screen and finger print reader.', 'April 21, 2018', 'active'),
(37, 11, 46, 'Great experience altogether', 5, 'GREAT laptop. Although the left speaker came damaged.', 'April 22, 2018', 'active'),
(39, 13, 46, 'Well built, but failed', 3, 'So far so good. It\'s saddening that the rumors about the WiFi card are true. The WiFi is in and out, and this device struggles. I bought a replacement WiFi card but when trying to replace it the computer doesn\'t recognize the hardware even though I\'m sure I brought a compatible card and installed the proper drivers. When I tried to re insert the original WiFi card, the computer wasn\'t recognizing that either. I kept getting this error message when trying to re-install the driver that \"There is no compatible hardware.\" So right now I\'m without wife and the worst part about it is after taking off the bottom plate so many times, one of the screws became stripped so there\'s almost no way of opening it back up. I\'m trying everything in my power to not have to send it to dell because I\'d imagine that i\'d be without a PC for maybe a week and a half, maybe 2. and I really don\'t want to do that. Ill probably try geek squad. Anyhow I know there is nothing else at this price offering these specs but, it would be nice if everything was working great straight out of the box. No one should be cracking open a brand new PC.', 'April 24, 2018', 'active'),
(40, 15, 46, 'A smooth experience with an excellent machine', 4, 'I really thought this was going to be a performer but I\'m extremely disappointed. I\'m using it to run PS CC and it\'s slower than my 7 year old gateway desktop. I use a wacom tablet to retouch with and using the healing brush is a pain. When you hold down the alt key and tap the tablet to set the point from which you want to start working it doesn\'t set the point at least 75% of the time. And file management, maybe I don\'t know how to do it but it takes forever to open folders that contain large psd, or raw images. I bought this because my windows 7 desktop with its beautiful 22\' color calibrated display no longer connects to the internet. However, after a few minutes of working on this new machine I get frustrated and go back to the old desktop using this supposedly high performance machine only to transfer files to my smugmug account. This POS is going right back.', 'April 29, 2018', 'active'),
(42, 15, 30, 'awesome macbook pro i ever seen', 4, 'i love this macbook laptop', 'May 04, 2018', 'active'),
(43, 7, 30, 'It\'s a Macbook Pro Maxed out from 2018', 5, 'Many of the negative reviews here are from people that either don\'t understand computers or bought during the short time the specs posted by amazon as to what people were buying were wrong. Amazon has now fixed that and what you see is now accurate.', 'May 04, 2018', 'active'),
(44, 9, 30, 'Wrong description / Still a good macbook pro', 5, 'Like others have noted, the specs in the product listing aren\'t all correct. It\'s a 2016 model, 3.3 GHz i7, 16 GB 2133 MHz LPDDR3 RAM, 512 GB SSD (but only registers ~500 GB - Mac has a funny way of calculating capacity), and Intel Iris 550 graphics with 1.5 GB mem. I\'ve only had it for a few days. So far so good.\r\n\r\nI was debating between this and the ASUS Zenbook Deluxe 3 (latest model). The ASUS specs are better, except for the display resolution. But Mac does have a better reputation of lasting longer. Hopefully paying for premium saves me some headaches in the long run.', 'May 04, 2018', 'active'),
(45, 15, 41, 'awesome macbook pro i ever seen', 4, 'i love this macbook laptop', 'May 04, 2018', 'active'),
(46, 7, 41, 'It\'s a Macbook Pro Maxed out from 2018', 5, 'Many of the negative reviews here are from people that either don\'t understand computers or bought during the short time the specs posted by amazon as to what people were buying were wrong. Amazon has now fixed that and what you see is now accurate.', 'May 04, 2018', 'active'),
(47, 15, 40, 'awesome macbook pro i ever seen', 4, 'i love this macbook laptop', 'May 04, 2018', 'active'),
(48, 7, 40, 'It\'s a Macbook Pro Maxed out from 2018', 5, 'Many of the negative reviews here are from people that either don\'t understand computers or bought during the short time the specs posted by amazon as to what people were buying were wrong. Amazon has now fixed that and what you see is now accurate.', 'May 04, 2018', 'active'),
(49, 9, 40, 'Wrong description / Still a good macbook pro', 5, 'Like others have noted, the specs in the product listing aren\'t all correct. It\'s a 2016 model, 3.3 GHz i7, 16 GB 2133 MHz LPDDR3 RAM, 512 GB SSD (but only registers ~500 GB - Mac has a funny way of calculating capacity), and Intel Iris 550 graphics with 1.5 GB mem. I\'ve only had it for a few days. So far so good.\r\n\r\nI was debating between this and the ASUS Zenbook Deluxe 3 (latest model). The ASUS specs are better, except for the display resolution. But Mac does have a better reputation of lasting longer. Hopefully paying for premium saves me some headaches in the long run.', 'May 04, 2018', 'active'),
(50, 11, 40, 'Very comfortable', 4, 'I am glad to see the shirt its very good stuff and excelent colours', 'May 04, 2018', 'active'),
(51, 7, 38, 'It\'s a Macbook Pro Maxed out from 2018', 5, 'Many of the negative reviews here are from people that either don\'t understand computers or bought during the short time the specs posted by amazon as to what people were buying were wrong. Amazon has now fixed that and what you see is now accurate.', 'May 04, 2018', 'active'),
(52, 9, 39, 'Wrong description / Still a good macbook pro', 5, 'Like others have noted, the specs in the product listing aren\'t all correct. It\'s a 2016 model, 3.3 GHz i7, 16 GB 2133 MHz LPDDR3 RAM, 512 GB SSD (but only registers ~500 GB - Mac has a funny way of calculating capacity), and Intel Iris 550 graphics with 1.5 GB mem. I\'ve only had it for a few days. So far so good.\r\n\r\nI was debating between this and the ASUS Zenbook Deluxe 3 (latest model). The ASUS specs are better, except for the display resolution. But Mac does have a better reputation of lasting longer. Hopefully paying for premium saves me some headaches in the long run.', 'May 04, 2018', 'active'),
(54, 12, 46, 'Finally an iMac for me.', 5, 'A great PC for a great price. Came very well boxed and clean, just as if it came new from the factory. It may be a little older version but it has most of the hardware of the computers sold in the stores today. It certainly has enough for me.', 'June 23, 2018', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `reviews_meta`
--

CREATE TABLE `reviews_meta` (
  `meta_id` int(10) NOT NULL,
  `review_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reviews_meta`
--

INSERT INTO `reviews_meta` (`meta_id`, `review_id`, `meta_key`, `meta_value`) VALUES
(4, 1, 'cpu', 'Core i5 7gen'),
(5, 1, 'capacity', '16GB Ram / 512 GB SSD / Full HD'),
(6, 2, 'cpu', 'Core i7 7gen'),
(7, 2, 'capacity', '16 GB RAM / 1 TB SSD 4K'),
(8, 3, 'cpu', 'Core i5 7gen'),
(9, 3, 'capacity', '8 GB RAM / 256 GB SSD'),
(10, 4, 'cpu', 'Core i5 7gen'),
(11, 4, 'capacity', '16GB Ram / 512 GB SSD / Full HD'),
(12, 5, 'cpu', 'Core i7 7gen'),
(13, 5, 'capacity', '16 GB RAM / 1 TB SSD 4K'),
(14, 13, 'Cpu', 'Core i7 7gen'),
(15, 13, 'Capacity', '16GB Ram / 512 GB SSD / Full HD'),
(16, 14, 'Size', 'XX-Lagre'),
(17, 14, 'Color', 'Red'),
(18, 16, 'Memory', '16 GB'),
(19, 16, 'Processor', 'i5 7th-generation'),
(20, 16, 'Storage', '512GB SSD'),
(21, 17, 'memory', '8 GB'),
(22, 17, 'processor', 'i7 7th-generation'),
(23, 17, 'storage', '1TB SSD'),
(33, 19, 'color', 'Black'),
(34, 19, 'size', '36'),
(43, 18, 'variation_id', '332'),
(44, 18, 'memory', '4 GB'),
(45, 18, 'processor', 'i3 7th-generation'),
(46, 18, 'storage', '128 GB SSD'),
(47, 21, 'Os', 'Mac-Os'),
(48, 21, 'Edition', 'Ultra'),
(49, 21, 'Variation_id', '#486'),
(50, 22, 'Os', 'Mac-Os'),
(51, 22, 'Edition', 'Ultra'),
(52, 22, 'Variation_id', '#486'),
(62, 26, 'Os', 'Mac-Os'),
(63, 26, 'Edition', 'Ultra'),
(64, 26, 'Variation_id', '#486'),
(65, 27, 'Os', 'Mac-Os'),
(66, 27, 'Edition', 'Ultra'),
(67, 27, 'Variation_id', '#486'),
(68, 28, 'Os', 'Mac-Os'),
(69, 28, 'Edition', 'Ultra'),
(70, 28, 'Variation_id', '#486'),
(78, 54, 'variation_id', '495'),
(79, 54, 'processor', 'i3 7th-generation'),
(80, 54, 'memory', '8 GB'),
(81, 54, 'storage', '256 GB SSD');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(10) NOT NULL,
  `service_title` varchar(255) NOT NULL,
  `service_image` varchar(255) NOT NULL,
  `service_desc` text NOT NULL,
  `service_button` varchar(255) NOT NULL,
  `service_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_title`, `service_image`, `service_desc`, `service_button`, `service_url`) VALUES
(4, 'Gift Package ', 'service-1.jpg', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'Contact For Details and Rates', 'http://www.computerfever.com'),
(5, 'Love Surprisre', 'service-2.jpg', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'Contact For Details and Rates', 'http://www.computerfever.com'),
(6, 'Wedding Package', 'service-3.jpg', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'Contact For Details and Rates', 'http://www.computerfever.com');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(10) NOT NULL,
  `shipping_type` int(10) NOT NULL,
  `shipping_zone` int(10) NOT NULL,
  `shipping_country` int(10) NOT NULL,
  `shipping_weight` decimal(10,1) NOT NULL,
  `shipping_cost` decimal(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `shipping_type`, `shipping_zone`, `shipping_country`, `shipping_weight`, `shipping_cost`) VALUES
(1, 4, 9, 0, 1.0, 3.0),
(3, 4, 9, 0, 1.5, 4.5),
(4, 4, 9, 0, 2.0, 6.0),
(5, 4, 9, 0, 2.5, 7.5),
(6, 4, 9, 0, 3.0, 9.0),
(7, 4, 9, 0, 3.5, 10.5),
(8, 4, 9, 0, 4.0, 12.0),
(9, 4, 9, 0, 4.5, 13.5),
(14, 4, 9, 0, 6.0, 18.0),
(15, 4, 9, 0, 6.5, 19.5),
(16, 4, 9, 0, 7.0, 21.0),
(17, 4, 9, 0, 7.5, 22.5),
(18, 4, 9, 0, 8.0, 24.0),
(19, 4, 9, 0, 8.5, 25.5),
(20, 4, 9, 0, 9.0, 27.0),
(21, 4, 9, 0, 9.5, 28.5),
(22, 4, 9, 0, 10.0, 30.0),
(23, 4, 9, 0, 5.0, 15.0),
(24, 4, 9, 0, 5.5, 16.5),
(25, 3, 8, 0, 1.0, 4.0),
(26, 3, 8, 0, 1.5, 6.0),
(27, 3, 8, 0, 2.0, 8.0),
(28, 3, 8, 0, 2.5, 10.0),
(29, 3, 8, 0, 3.0, 12.0),
(30, 3, 8, 0, 3.5, 14.0),
(31, 3, 8, 0, 4.0, 16.0),
(32, 3, 8, 0, 4.5, 18.0),
(33, 3, 8, 0, 6.0, 24.0),
(34, 3, 8, 0, 6.5, 26.0),
(35, 3, 8, 0, 7.0, 28.0),
(36, 3, 8, 0, 7.5, 30.0),
(37, 3, 8, 0, 8.0, 32.0),
(38, 3, 8, 0, 8.5, 34.0),
(39, 3, 8, 0, 9.0, 36.0),
(40, 3, 8, 0, 9.5, 38.0),
(41, 3, 8, 0, 10.0, 40.0),
(42, 1, 5, 0, 1.0, 5.0),
(43, 1, 5, 0, 1.5, 7.5),
(44, 1, 5, 0, 2.0, 10.0),
(45, 1, 5, 0, 2.5, 12.5),
(46, 1, 5, 0, 3.0, 15.0),
(47, 1, 5, 0, 3.5, 17.5),
(49, 1, 5, 0, 4.5, 22.5),
(50, 1, 5, 0, 5.0, 25.0),
(51, 1, 5, 0, 5.5, 27.5),
(52, 1, 5, 0, 6.0, 30.0),
(53, 1, 5, 0, 6.5, 32.5),
(54, 1, 5, 0, 7.0, 35.0),
(55, 1, 5, 0, 7.5, 37.5),
(56, 1, 5, 0, 8.0, 40.0),
(57, 1, 5, 0, 8.5, 42.5),
(58, 1, 5, 0, 9.0, 45.0),
(59, 1, 5, 0, 9.5, 47.5),
(60, 1, 5, 0, 10.0, 50.0),
(61, 7, 0, 230, 1.0, 5.0),
(62, 7, 0, 230, 1.5, 7.5),
(64, 7, 0, 230, 2.5, 12.5),
(65, 7, 0, 230, 3.0, 15.0),
(66, 7, 0, 230, 3.5, 17.5),
(67, 7, 0, 230, 4.5, 22.5),
(68, 7, 0, 230, 5.0, 25.0),
(69, 7, 0, 230, 5.5, 27.5),
(70, 7, 0, 230, 6.0, 30.0),
(71, 7, 0, 230, 6.5, 32.5),
(72, 7, 0, 230, 7.0, 35.0),
(73, 7, 0, 230, 7.5, 37.5),
(74, 7, 0, 230, 8.0, 40.0),
(75, 7, 0, 230, 8.5, 42.5),
(76, 7, 0, 230, 9.0, 45.0),
(77, 7, 0, 230, 9.5, 47.5),
(78, 7, 0, 230, 10.0, 50.0),
(79, 7, 0, 230, 2.0, 10.0),
(80, 6, 0, 230, 1.0, 10.0),
(81, 6, 0, 230, 1.5, 15.0),
(82, 6, 0, 230, 2.0, 20.0),
(83, 6, 0, 230, 2.5, 25.0),
(84, 6, 0, 230, 3.0, 30.0),
(85, 6, 0, 230, 3.5, 35.0),
(86, 6, 0, 230, 4.5, 45.0),
(87, 6, 0, 230, 5.0, 50.0),
(88, 6, 0, 230, 5.5, 55.0),
(89, 6, 0, 230, 6.0, 60.0),
(90, 6, 0, 230, 6.5, 65.0),
(91, 6, 0, 230, 7.0, 70.0),
(92, 6, 0, 230, 7.5, 75.0),
(93, 6, 0, 230, 8.0, 80.0),
(94, 6, 0, 230, 8.5, 85.0),
(95, 6, 0, 230, 9.0, 90.0),
(96, 6, 0, 230, 9.5, 95.0),
(97, 6, 0, 230, 10.0, 100.0),
(98, 1, 5, 0, 4.0, 20.0),
(99, 6, 0, 230, 4.0, 40.0),
(100, 7, 0, 230, 4.0, 20.0),
(101, 5, 10, 0, 1.0, 2.0),
(102, 5, 10, 0, 1.5, 3.0),
(103, 5, 10, 0, 2.0, 4.0),
(104, 5, 10, 0, 2.5, 5.0),
(105, 5, 10, 0, 3.0, 6.0),
(106, 5, 10, 0, 3.5, 7.0),
(108, 5, 10, 0, 4.0, 8.0),
(109, 5, 10, 0, 4.5, 9.0),
(110, 5, 10, 0, 5.0, 10.0),
(111, 5, 10, 0, 5.5, 11.0),
(112, 5, 10, 0, 6.0, 12.0),
(113, 5, 10, 0, 6.5, 13.0),
(114, 5, 10, 0, 7.0, 14.0),
(115, 5, 10, 0, 7.5, 15.0),
(116, 5, 10, 0, 8.0, 16.0),
(117, 5, 10, 0, 8.5, 17.0),
(118, 5, 10, 0, 9.0, 18.0),
(119, 5, 10, 0, 9.5, 19.0),
(120, 5, 10, 0, 10.0, 20.0),
(121, 3, 8, 0, 5.0, 20.0),
(122, 3, 8, 0, 5.5, 22.0),
(125, 8, 5, 0, 1.0, 10.0),
(126, 8, 5, 0, 2.0, 20.0),
(127, 8, 5, 0, 3.0, 30.0),
(128, 8, 5, 0, 4.0, 40.0),
(129, 8, 5, 0, 5.0, 50.0),
(130, 8, 5, 0, 6.0, 60.0),
(132, 8, 5, 0, 7.0, 70.0),
(133, 8, 5, 0, 8.0, 80.0),
(134, 8, 5, 0, 9.0, 90.0),
(135, 8, 5, 0, 10.0, 100.0),
(136, 9, 8, 0, 1.0, 10.0),
(137, 9, 8, 0, 2.0, 20.0),
(138, 9, 8, 0, 3.0, 30.0),
(139, 9, 8, 0, 4.0, 40.0),
(140, 9, 8, 0, 5.0, 50.0),
(141, 9, 8, 0, 6.0, 60.0),
(142, 9, 8, 0, 7.0, 70.0),
(143, 9, 8, 0, 8.0, 80.0),
(144, 9, 8, 0, 9.0, 90.0),
(145, 9, 8, 0, 10.0, 100.0),
(146, 10, 9, 0, 1.0, 10.0),
(147, 10, 9, 0, 2.0, 20.0),
(148, 10, 9, 0, 3.0, 30.0),
(149, 10, 9, 0, 4.0, 40.0),
(150, 10, 9, 0, 5.0, 50.0),
(151, 10, 9, 0, 6.0, 60.0),
(152, 10, 9, 0, 7.0, 70.0),
(153, 10, 9, 0, 8.0, 80.0),
(154, 10, 9, 0, 9.0, 90.0),
(155, 10, 9, 0, 10.0, 100.0),
(156, 11, 10, 0, 1.0, 10.0),
(157, 11, 10, 0, 2.0, 20.0),
(158, 11, 10, 0, 3.0, 30.0),
(159, 11, 10, 0, 4.0, 40.0),
(160, 11, 10, 0, 5.0, 50.0),
(161, 11, 10, 0, 6.0, 60.0),
(162, 11, 10, 0, 7.0, 70.0),
(163, 11, 10, 0, 8.0, 80.0),
(164, 11, 10, 0, 9.0, 90.0),
(165, 11, 10, 0, 10.0, 100.0),
(166, 9, 8, 0, 11.0, 110.0),
(167, 9, 8, 0, 12.0, 120.0),
(168, 16, 0, 229, 1.0, 10.0),
(169, 16, 0, 229, 2.0, 20.0),
(170, 13, 8, 0, 1.0, 5.0),
(171, 13, 8, 0, 2.0, 10.0),
(172, 3, 8, 0, 11.0, 45.0),
(173, 17, 13, 0, 1.0, 5.0),
(174, 17, 13, 0, 2.0, 10.0),
(176, 18, 0, 230, 1.0, 5.0);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_type`
--

CREATE TABLE `shipping_type` (
  `type_id` int(11) NOT NULL,
  `vendor_id` text NOT NULL,
  `type_name` text NOT NULL,
  `type_order` int(11) NOT NULL,
  `type_default` varchar(255) NOT NULL,
  `type_local` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `shipping_type`
--

INSERT INTO `shipping_type` (`type_id`, `vendor_id`, `type_name`, `type_order`, `type_default`, `type_local`) VALUES
(1, 'admin_2', 'Next Day (orders placed before 7pm)', 1, 'no', 'yes'),
(3, '6', ' Speedy 1-2 days', 3, 'no', 'yes'),
(4, '2', 'Standard 3-5 days', 3, 'no', 'yes'),
(5, '14', 'Economy 5-7 days', 5, 'no', 'yes'),
(6, '0', 'Express International', 1, 'yes', 'no'),
(7, '0', 'Standard International', 2, 'no', 'no'),
(8, 'admin_2', '(Karena) Sample Shipping Type', 5, 'no', 'yes'),
(9, '6', 'Standard 3-5 days', 2, 'yes', 'yes'),
(10, '2', '(Brock) Sample Shipping Type', 5, 'no', 'yes'),
(11, '14', '(Tahir Ahmed) Shipping Type', 5, 'no', 'yes'),
(12, '14', 'Tahir Ahmed Shipping Type', 5, 'yes', 'yes'),
(15, '6', 'Express International', 1, 'no', 'no'),
(16, '6', 'Standard International', 2, 'yes', 'no'),
(17, '6', 'Economy 5-7 days', 1, 'yes', 'yes'),
(18, '6', 'DHL Express International', 3, 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(1, 'Slide Number 1', '1.jpg', 'http://localhost/Ecom_store/shop.php'),
(2, 'Slide Number 2', '2.jpg', 'htttp://www.computerfever.com/services'),
(3, 'Slide Number 3', '3.jpg', 'http://urdustories.computerfever.com'),
(7, 'Slide Number 4', 'slide-5.jpg', 'http://www.computerfever.com');

-- --------------------------------------------------------

--
-- Table structure for table `store_settings`
--

CREATE TABLE `store_settings` (
  `settings_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `store_cover_image` text NOT NULL,
  `store_profile_image` text NOT NULL,
  `store_name` text NOT NULL,
  `store_country` text NOT NULL,
  `store_address_1` text NOT NULL,
  `store_address_2` text NOT NULL,
  `store_state` text NOT NULL,
  `store_city` text NOT NULL,
  `store_postcode` text NOT NULL,
  `paypal_email` text NOT NULL,
  `phone_no` text NOT NULL,
  `store_email` text NOT NULL,
  `seo_title` text NOT NULL,
  `meta_author` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `store_settings`
--

INSERT INTO `store_settings` (`settings_id`, `vendor_id`, `store_cover_image`, `store_profile_image`, `store_name`, `store_country`, `store_address_1`, `store_address_2`, `store_state`, `store_city`, `store_postcode`, `paypal_email`, `phone_no`, `store_email`, `seo_title`, `meta_author`, `meta_description`, `meta_keywords`) VALUES
(1, '6', 'cover-image.jpg', 'profile-image.jpg', 'Awesome Tech Store', '166', 'House#2/10,Halqa Iqbal,Darul', 'Nasir Gharbi Rabwah', 'Punjab', 'Chenab Nagar Rabwah', '35460', 'rasheed23@yahoo.com', '3334566931', 'yes', 'Awesome Tech Store', 'Saad Ahmed', 'Tech Products Store', 'apple,dell,hp'),
(2, 'admin_2', 'admin-cover-image.jpg', 'Kareena.jpg', 'Karena Kapoor Store', '229', 'Saeed Park Lahore', 'House #2/10, Mohalla Fatima Jinah', 'Punjab', 'Lahore', '54000', 'rasheed23@yahoo.com', '3331561951', 'no', '', '', '', ''),
(3, 'admin_10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>'),
(2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on'),
(3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');

-- --------------------------------------------------------

--
-- Table structure for table `variations_meta`
--

CREATE TABLE `variations_meta` (
  `meta_id` int(10) NOT NULL,
  `variation_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `variations_meta`
--

INSERT INTO `variations_meta` (`meta_id`, `variation_id`, `meta_key`, `meta_value`) VALUES
(54, 89, 'memory', '8 GB'),
(55, 89, 'processor', 'i3 7th-generation'),
(56, 89, 'storage', '128GB SSD'),
(57, 88, 'memory', '8 GB'),
(58, 88, 'processor', 'i5 7th-generation'),
(59, 88, 'storage', '512GB SSD'),
(60, 87, 'memory', '8 GB'),
(61, 87, 'processor', 'i7 7th-generation'),
(62, 87, 'storage', '1TB SSD'),
(63, 86, 'memory', '16 GB'),
(64, 86, 'processor', 'i7 7th-generation'),
(65, 86, 'storage', '512GB SSD'),
(66, 85, 'memory', '16 GB'),
(67, 85, 'processor', 'i7 7th-generation'),
(68, 85, 'storage', '1TB SSD'),
(69, 101, 'memory', '8 GB'),
(70, 101, 'processor', 'i5 7th-generation'),
(71, 101, 'storage', '1TB SSD'),
(72, 100, 'memory', '8 GB'),
(73, 100, 'processor', 'i3 7th-generation'),
(74, 100, 'storage', '256 GB SSD'),
(75, 102, 'memory', '8 GB'),
(76, 102, 'processor', 'i3 7th-generation'),
(77, 102, 'storage', '128 GB SSD'),
(93, 110, 'memory', '8 GB'),
(94, 110, 'processor', 'i5 7th-generation'),
(95, 110, 'storage', '256 GB SSD'),
(96, 111, 'memory', '8 GB'),
(97, 111, 'processor', 'i7 7th-generation'),
(98, 111, 'storage', '1TB SSD'),
(102, 115, 'memory', '16 GB'),
(103, 115, 'processor', 'i7 7th-generation'),
(104, 115, 'storage', '1TB SSD'),
(105, 116, 'memory', '8 GB'),
(106, 116, 'processor', 'i7 7th-generation'),
(107, 116, 'storage', '512GB SSD'),
(108, 117, 'memory', '8 GB'),
(109, 117, 'processor', 'i5 7th-generation'),
(110, 117, 'storage', '256 GB SSD'),
(111, 118, 'memory', '8 GB'),
(112, 118, 'processor', 'i7 7th-generation'),
(113, 118, 'storage', '256 GB SSD'),
(363, 207, 'size', 'X-Large'),
(364, 207, 'color', 'Aqua Blue'),
(365, 209, 'size', 'Small'),
(366, 209, 'color', 'Red'),
(367, 210, 'size', 'Medium'),
(368, 210, 'color', 'Red'),
(369, 211, 'size', 'Large'),
(370, 211, 'color', 'Red'),
(371, 212, 'size', 'X-Large'),
(372, 212, 'color', 'Red'),
(373, 213, 'size', 'XX-Lagre'),
(374, 213, 'color', 'Red'),
(375, 214, 'size', '3X-Large'),
(376, 214, 'color', 'Red'),
(377, 215, 'size', 'Small'),
(378, 215, 'color', 'Blue'),
(379, 216, 'size', 'Medium'),
(380, 216, 'color', 'Blue'),
(381, 217, 'size', 'Large'),
(382, 217, 'color', 'Blue'),
(383, 218, 'size', 'X-Large'),
(384, 218, 'color', 'Blue'),
(385, 219, 'size', 'XX-Lagre'),
(386, 219, 'color', 'Blue'),
(387, 220, 'size', '3X-Large'),
(388, 220, 'color', 'Blue'),
(389, 221, 'size', 'Small'),
(390, 221, 'color', 'Aqua Blue'),
(391, 222, 'size', 'Medium'),
(392, 222, 'color', 'Aqua Blue'),
(393, 223, 'size', 'Large'),
(394, 223, 'color', 'Aqua Blue'),
(395, 224, 'size', 'X-Large'),
(396, 224, 'color', 'Aqua Blue'),
(397, 225, 'size', 'XX-Lagre'),
(398, 225, 'color', 'Aqua Blue'),
(399, 226, 'size', '3X-Large'),
(400, 226, 'color', 'Aqua Blue'),
(477, 265, 'color', 'White'),
(478, 265, 'size', '36'),
(479, 266, 'color', 'Black'),
(480, 266, 'size', '30'),
(481, 267, 'color', 'White'),
(482, 267, 'size', '30'),
(483, 268, 'color', 'Silver Gray'),
(484, 268, 'size', '30'),
(485, 269, 'color', 'Black'),
(486, 269, 'size', '32'),
(487, 270, 'color', 'White'),
(488, 270, 'size', '32'),
(489, 271, 'color', 'Silver Gray'),
(490, 271, 'size', '32'),
(491, 272, 'color', 'Black'),
(492, 272, 'size', '34'),
(493, 273, 'color', 'White'),
(494, 273, 'size', '34'),
(495, 274, 'color', 'Silver Gray'),
(496, 274, 'size', '34'),
(497, 275, 'color', 'Black'),
(498, 275, 'size', '36'),
(499, 276, 'color', 'White'),
(500, 276, 'size', '36'),
(501, 277, 'color', 'Silver Gray'),
(502, 277, 'size', '36'),
(503, 278, 'color', 'Black'),
(504, 278, 'size', '38'),
(505, 279, 'color', 'White'),
(506, 279, 'size', '38'),
(507, 280, 'color', 'Silver Gray'),
(508, 280, 'size', '38'),
(509, 281, 'color', 'Black'),
(510, 281, 'size', '40'),
(511, 282, 'color', 'White'),
(512, 282, 'size', '40'),
(513, 283, 'color', 'Silver Gray'),
(514, 283, 'size', '40'),
(653, 330, 'memory', '8 GB'),
(654, 330, 'processor', 'i5 7th-generation'),
(655, 330, 'storage', '1TB SSD'),
(656, 331, 'memory', '16 GB'),
(657, 331, 'processor', 'i5 7th-generation'),
(658, 331, 'storage', '512GB SSD'),
(659, 332, 'memory', '4 GB'),
(660, 332, 'processor', 'i3 7th-generation'),
(661, 332, 'storage', '128GB SSD'),
(662, 333, 'memory', '16 GB'),
(663, 333, 'processor', 'i7 7th-generation'),
(664, 333, 'storage', '512GB SSD'),
(665, 334, 'cpu', 'Core i7 7gen'),
(666, 334, 'capacity', '16GB Ram / 512 GB SSD / Full HD'),
(667, 335, 'cpu', 'Core i5 7gen'),
(668, 335, 'capacity', '8 GB RAM / 256 GB SSD'),
(669, 336, 'cpu', 'Core i7 7gen'),
(670, 336, 'capacity', '8 GB RAM / 256 GB SSD'),
(671, 337, 'cpu', 'Core i5 7gen'),
(672, 337, 'capacity', '16GB Ram / 512 GB SSD / Full HD'),
(673, 338, 'cpu', 'Core i7 7gen'),
(674, 338, 'capacity', '16GB Ram / 512 GB SSD / Full HD'),
(675, 339, 'cpu', 'Core i5 7gen'),
(676, 339, 'capacity', '16 GB RAM / 1 TB SSD 4K'),
(677, 340, 'cpu', 'Core i7 7gen'),
(678, 340, 'capacity', '16 GB RAM / 1 TB SSD 4K'),
(679, 341, 'cpu', 'Core i5-7700HQ'),
(680, 341, 'memory', '16GB DDR4'),
(681, 342, 'cpu', 'Core i7-7700HQ'),
(682, 342, 'memory', '16GB DDR4'),
(683, 343, 'cpu', 'Core i5-7700HQ'),
(684, 343, 'memory', '16GB DDR4'),
(685, 344, 'cpu', 'Core i7-7700HQ'),
(686, 344, 'memory', '12GB DDR4'),
(687, 345, 'cpu', 'Core i5-7700HQ'),
(688, 345, 'memory', '12GB DDR4'),
(689, 346, 'cpu', 'i9'),
(690, 346, 'ram', '16gb'),
(693, 348, 'cpu', 'i3'),
(694, 348, 'ram', '4gb'),
(699, 351, 'cpu', 'i5'),
(700, 351, 'ram', '8gb'),
(701, 352, 'cpu', 'i7'),
(702, 352, 'ram', '8gb'),
(705, 354, 'cpu', 'i5'),
(706, 354, 'ram', '12gb'),
(707, 355, 'cpu', 'i7'),
(708, 355, 'ram', '12gb'),
(709, 356, 'cpu', 'i9'),
(710, 356, 'ram', '12gb'),
(713, 358, 'cpu', 'i7'),
(714, 358, 'ram', '16gb'),
(715, 359, 'cpu', 'i9'),
(716, 359, 'ram', '16gb'),
(717, 360, 'cpu', 'i9'),
(718, 360, 'ram', '16gb'),
(719, 360, 'storage', '2TB SSD'),
(723, 359, 'storage', '1TB SSD'),
(724, 358, 'storage', '1TB SSD'),
(725, 356, 'storage', '512GB SSD'),
(726, 355, 'storage', '512GB SSD'),
(727, 354, 'storage', '512GB SSD'),
(728, 352, 'storage', '256 GB SSD'),
(729, 351, 'storage', '256 GB SSD'),
(730, 348, 'storage', '128 GB SSD'),
(731, 346, 'storage', '2TB SSD'),
(996, 457, 'processor', 'i5'),
(997, 457, 'memory', '8 GB'),
(998, 458, 'processor', 'i7'),
(999, 458, 'memory', '16 GB'),
(1008, 464, 'color', 'Yellow'),
(1009, 464, 'size', '16'),
(1012, 468, 'color', 'Red'),
(1013, 468, 'size', '12'),
(1014, 469, 'color', 'Blue'),
(1015, 469, 'size', '12'),
(1016, 470, 'color', 'Yellow'),
(1017, 470, 'size', '12'),
(1018, 471, 'color', 'Red'),
(1019, 471, 'size', '14'),
(1020, 472, 'color', 'Blue'),
(1021, 472, 'size', '14'),
(1022, 473, 'color', 'Yellow'),
(1023, 473, 'size', '14'),
(1024, 474, 'color', 'Red'),
(1025, 474, 'size', '16'),
(1026, 475, 'color', 'Blue'),
(1027, 475, 'size', '16'),
(1028, 476, 'color', 'Yellow'),
(1029, 476, 'size', '16'),
(1030, 477, 'memory', '8 GB'),
(1031, 477, 'processor', 'i3 7en'),
(1032, 478, 'memory', '12 GB'),
(1033, 478, 'processor', 'i5 7en'),
(1034, 479, 'memory', '8 GB'),
(1035, 479, 'processor', 'i3 7en'),
(1036, 480, 'os', ''),
(1037, 480, 'edition', ''),
(1038, 481, 'os', 'Windows'),
(1039, 481, 'edition', 'Ultimate'),
(1042, 483, 'os', 'Windows'),
(1043, 483, 'edition', 'Ultra'),
(1046, 485, 'os', 'Mac-Os'),
(1047, 485, 'edition', 'Delux'),
(1048, 486, 'os', 'Mac-Os'),
(1049, 486, 'edition', 'Ultra'),
(1050, 487, 'operating_system', 'Windows'),
(1051, 488, 'operating_system', 'MacOS'),
(1052, 489, 'operating_system', 'Windows'),
(1053, 490, 'os', 'Mac-Os'),
(1054, 490, 'edition', 'Delux'),
(1055, 491, 'operating_system', 'linux Os'),
(1056, 492, 'processor', 'i5'),
(1057, 492, 'memory', '8 GB'),
(1058, 493, 'processor', 'i5 7th-generation'),
(1059, 493, 'memory', '8 GB'),
(1060, 493, 'storage', '512 GB SSD'),
(1061, 494, 'processor', 'i5 7th-generation'),
(1062, 494, 'memory', '8 GB'),
(1063, 494, 'storage', '512 GB SSD'),
(1064, 495, 'processor', 'i3 7th-generation'),
(1065, 495, 'memory', '8 GB'),
(1066, 495, 'storage', '256 GB SSD'),
(1067, 496, 'processor', 'i7 7th-generation'),
(1068, 496, 'memory', '16 GB'),
(1069, 496, 'storage', '1TB SSD'),
(1082, 501, 'processor', 'i5 7th-generation'),
(1083, 501, 'memory', '16 GB'),
(1084, 501, 'storage', '512GB SSD'),
(1085, 503, 'processor', 'i5 7th-generation'),
(1086, 503, 'memory', '16 GB'),
(1087, 503, 'storage', '512GB SSD'),
(1091, 504, 'processor', 'i5 7th-generation'),
(1092, 504, 'memory', '8 GB'),
(1093, 504, 'storage', '256 GB SSD'),
(1094, 505, 'processor', 'i3 7th-generation'),
(1095, 505, 'memory', '8 GB'),
(1096, 505, 'storage', '128 GB SSD'),
(1097, 506, 'processor', 'i7 7th-generation'),
(1098, 506, 'memory', '16 GB'),
(1099, 506, 'storage', '1TB SSD'),
(1250, 585, 'size', 'Medium'),
(1251, 585, 'color', 'Blue'),
(1252, 584, 'size', 'Small'),
(1253, 584, 'color', 'Black'),
(1254, 586, 'size', 'Medium'),
(1255, 586, 'color', 'Blue'),
(1256, 587, 'size', 'Large'),
(1257, 587, 'color', 'Maroon'),
(1258, 588, 'memory', '4 GB'),
(1259, 588, 'processor', 'i3 7th-generation'),
(1268, 607, 'memory', '4 GB'),
(1269, 607, 'processor', 'i3 7th-generation'),
(1270, 606, 'memory', '4 GB'),
(1271, 606, 'processor', 'i3 7th-generation'),
(1272, 605, 'memory', '8 GB'),
(1273, 605, 'processor', 'i5 7th-generation'),
(1274, 604, 'memory', '8 GB'),
(1275, 604, 'processor', 'i7 7th-generation'),
(1276, 603, 'memory', '8 GB'),
(1277, 603, 'processor', 'i7 7th-generation'),
(1278, 588, 'storage', '128 GB SSD'),
(1279, 607, 'storage', '256 GB SSD'),
(1280, 606, 'storage', '512GB SSD'),
(1281, 605, 'storage', '512GB SSD'),
(1282, 604, 'storage', '512GB SSD'),
(1283, 603, 'storage', '1TB SSD'),
(1284, 608, 'memory', '4 GB'),
(1285, 608, 'processor', 'i3 7th-generation'),
(1286, 608, 'storage', '128 GB SSD');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_accounts`
--

CREATE TABLE `vendor_accounts` (
  `account_id` int(10) NOT NULL,
  `vendor_id` int(10) NOT NULL,
  `current_balance` decimal(10,1) NOT NULL,
  `pending_clearance` decimal(10,1) NOT NULL,
  `withdrawals` decimal(10,1) NOT NULL,
  `month_earnings` decimal(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vendor_accounts`
--

INSERT INTO `vendor_accounts` (`account_id`, `vendor_id`, `current_balance`, `pending_clearance`, `withdrawals`, `month_earnings`) VALUES
(1, 6, 5878.2, 63.0, 118.0, 6059.2);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_commissions`
--

CREATE TABLE `vendor_commissions` (
  `commission_id` int(10) NOT NULL,
  `vendor_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `commission_paid_date` text NOT NULL,
  `commission_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vendor_commissions`
--

INSERT INTO `vendor_commissions` (`commission_id`, `vendor_id`, `order_id`, `commission_paid_date`, `commission_status`) VALUES
(7, 6, 31, 'June 20, 2018 05:13:27', 'cleared'),
(8, 6, 30, 'June 22, 2018 09:07:12', 'cleared'),
(10, 6, 19, 'June 23, 2018 01:47:18', 'cleared'),
(11, 6, 41, 'June 25, 2018 05:21:10', 'cleared'),
(12, 14, 3, 'January 09, 2019 08:02:24', 'pending'),
(13, 6, 76, 'July 07, 2024 03:10:25', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(11) NOT NULL,
  `order_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `shipping_type` text NOT NULL,
  `shipping_cost` decimal(10,1) NOT NULL,
  `order_total` decimal(10,1) NOT NULL,
  `net_amount` decimal(10,1) NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `order_id`, `vendor_id`, `invoice_no`, `shipping_type`, `shipping_cost`, `order_total`, `net_amount`, `order_status`) VALUES
(1, 1, '6', 1700767450, ' Speedy 1-2 days', 4.0, 74.0, 63.0, 'pending'),
(2, 1, 'admin_2', 502364325, '(Karena) Sample Shipping Type', 30.0, 1130.0, 990.0, 'pending'),
(3, 1, '14', 2054927691, '(Tahir Ahmed) Shipping Type', 10.0, 5910.0, 5310.0, 'completed'),
(4, 2, '6', 575097401, '', 0.0, 70.0, 63.0, 'processing'),
(5, 3, '6', 1096096986, '', 0.0, 70.0, 63.0, 'processing'),
(6, 4, '6', 1026657423, '', 0.0, 70.0, 63.0, 'processing'),
(7, 5, '6', 1961248875, '', 0.0, 70.0, 63.0, 'processing'),
(8, 6, '6', 1740206531, '', 0.0, 70.0, 63.0, 'processing'),
(9, 7, '6', 1983567573, '', 0.0, 70.0, 63.0, 'processing'),
(10, 8, '6', 598048906, '', 0.0, 70.0, 63.0, 'processing'),
(11, 9, '6', 473551328, '', 0.0, 70.0, 63.0, 'processing'),
(12, 10, '6', 329644158, '', 0.0, 70.0, 63.0, 'processing'),
(13, 11, '6', 1118963618, '', 0.0, 70.0, 63.0, 'processing'),
(14, 12, '6', 1353392990, '', 0.0, 70.0, 63.0, 'processing'),
(15, 13, '6', 1926983624, '', 0.0, 70.0, 63.0, 'processing'),
(16, 14, '6', 915947029, '', 0.0, 70.0, 63.0, 'processing'),
(17, 15, '6', 1603779221, '', 0.0, 70.0, 63.0, 'processing'),
(18, 16, '6', 1240027854, '', 0.0, 70.0, 63.0, 'processing'),
(19, 17, '6', 818714708, '', 0.0, 70.0, 63.0, 'processing'),
(20, 18, '6', 1329714771, '', 0.0, 70.0, 63.0, 'processing'),
(21, 19, '6', 300090556, '', 0.0, 70.0, 63.0, 'processing'),
(22, 20, '6', 916161917, '', 0.0, 70.0, 63.0, 'processing'),
(23, 21, '6', 201858183, '', 0.0, 70.0, 63.0, 'processing'),
(24, 22, '6', 576059873, '', 0.0, 70.0, 63.0, 'processing'),
(25, 23, '6', 303298732, '', 0.0, 70.0, 63.0, 'processing'),
(26, 24, '6', 1302205007, '', 0.0, 70.0, 63.0, 'processing'),
(27, 25, '6', 1192452249, '', 0.0, 70.0, 63.0, 'processing'),
(28, 26, '6', 801723190, '', 0.0, 70.0, 63.0, 'processing'),
(29, 27, '6', 264623625, '', 0.0, 70.0, 63.0, 'processing'),
(30, 28, '6', 1410450824, '', 0.0, 70.0, 63.0, 'processing'),
(31, 29, '6', 1156937788, '', 0.0, 70.0, 63.0, 'processing'),
(32, 30, '6', 1966494882, '', 0.0, 70.0, 63.0, 'processing'),
(33, 31, '6', 1275052075, '', 0.0, 70.0, 63.0, 'processing'),
(34, 32, '6', 1356518034, '', 0.0, 70.0, 63.0, 'processing'),
(35, 33, '6', 1403957282, '', 0.0, 70.0, 63.0, 'processing'),
(36, 34, '6', 1039694812, '', 0.0, 70.0, 63.0, 'processing'),
(37, 35, '6', 1431605037, '', 0.0, 70.0, 63.0, 'processing'),
(38, 36, '6', 1604154245, '', 0.0, 70.0, 63.0, 'processing'),
(39, 37, 'admin_2', 244955579, '', 0.0, 1460.0, 1314.0, 'processing'),
(40, 38, 'admin_2', 903942159, '', 0.0, 1460.0, 1314.0, 'processing'),
(41, 39, 'admin_2', 126504328, '', 0.0, 1460.0, 1314.0, 'processing'),
(42, 40, 'admin_2', 1226006341, '', 0.0, 1460.0, 1314.0, 'processing'),
(43, 41, 'admin_2', 937012235, '', 0.0, 1460.0, 1314.0, 'processing'),
(44, 42, 'admin_2', 483681348, '', 0.0, 1460.0, 1314.0, 'processing'),
(45, 43, 'admin_2', 1485943038, '', 0.0, 1460.0, 1314.0, 'processing'),
(46, 44, 'admin_2', 576148294, '', 0.0, 1460.0, 1314.0, 'processing'),
(47, 45, 'admin_2', 1111183619, '', 0.0, 1460.0, 1314.0, 'processing'),
(48, 46, 'admin_2', 262272720, '', 0.0, 1460.0, 1314.0, 'processing'),
(49, 47, 'admin_2', 236349404, '', 0.0, 1460.0, 1314.0, 'processing'),
(50, 48, 'admin_2', 914000456, '', 0.0, 1460.0, 1314.0, 'processing'),
(51, 49, 'admin_2', 1785044353, '', 0.0, 1460.0, 1314.0, 'processing'),
(52, 50, 'admin_2', 430619652, '', 0.0, 1460.0, 1314.0, 'processing'),
(53, 51, 'admin_2', 2075584980, '', 0.0, 1460.0, 1314.0, 'processing'),
(54, 52, 'admin_2', 1148079975, '', 0.0, 1460.0, 1314.0, 'processing'),
(55, 53, 'admin_2', 213421535, '', 0.0, 1460.0, 1314.0, 'processing'),
(56, 54, 'admin_2', 1420091665, '', 0.0, 1460.0, 1314.0, 'processing'),
(57, 55, 'admin_2', 1270140345, '', 0.0, 1460.0, 1314.0, 'processing'),
(58, 56, 'admin_2', 107965213, '', 0.0, 1460.0, 1314.0, 'completed'),
(59, 57, 'admin_2', 1686491353, '', 0.0, 1460.0, 1314.0, 'processing'),
(60, 58, 'admin_2', 423316628, '', 0.0, 1460.0, 1314.0, 'processing'),
(61, 59, 'admin_2', 454957942, '', 0.0, 1460.0, 1314.0, 'processing'),
(62, 60, '6', 1709177222, '', 0.0, 70.0, 63.0, 'processing'),
(63, 61, 'admin_2', 1798933970, '', 0.0, 1460.0, 1314.0, 'processing'),
(64, 62, '6', 454535295, '', 0.0, 120.0, 108.0, 'processing'),
(65, 63, 'admin_2', 537824488, '', 0.0, 1100.0, 990.0, 'processing'),
(66, 63, '14', 673615899, '', 0.0, 2000.0, 1800.0, 'processing'),
(67, 63, '6', 547834421, '', 0.0, 70.0, 63.0, 'processing'),
(68, 64, 'admin_2', 1252759985, '', 0.0, 1000.0, 900.0, 'processing'),
(69, 65, '6', 855441450, '', 0.0, 70.0, 63.0, 'pending'),
(70, 66, 'admin_2', 1793693174, '', 0.0, 1100.0, 990.0, 'processing'),
(71, 67, 'admin_2', 1313949666, '', 0.0, 1100.0, 990.0, 'processing'),
(72, 68, 'admin_2', 1329992588, '', 0.0, 1100.0, 990.0, 'processing'),
(73, 69, 'admin_2', 1380082362, '', 0.0, 1100.0, 990.0, 'processing'),
(74, 70, 'admin_2', 392969885, '', 0.0, 1100.0, 990.0, 'processing'),
(75, 71, 'admin_2', 1352012600, '', 0.0, 1100.0, 990.0, 'processing'),
(76, 72, '6', 1267588564, '', 0.0, 70.0, 63.0, 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_withdraws`
--

CREATE TABLE `vendor_withdraws` (
  `withdraw_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `amount` decimal(10,1) NOT NULL,
  `method` text NOT NULL,
  `date` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vendor_withdraws`
--

INSERT INTO `vendor_withdraws` (`withdraw_id`, `vendor_id`, `amount`, `method`, `date`, `status`) VALUES
(1, '6', 10.3, 'paypal', 'June 15, 2018 9:11 am', 'pending'),
(2, '6', 70.0, 'stripe', 'June 18, 2018 09:51', 'cancelled'),
(3, '6', 100.0, 'bank-transfer', 'June 18, 2018 09:51', 'cancelled'),
(4, '6', 100.0, 'bank-transfer', 'June 18, 2018 09:51', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(20, 10, 36),
(21, 10, 36),
(23, 2, 46);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_meta`
--

CREATE TABLE `wishlist_meta` (
  `meta_id` int(10) NOT NULL,
  `wishlist_id` int(255) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `wishlist_meta`
--

INSERT INTO `wishlist_meta` (`meta_id`, `wishlist_id`, `customer_id`, `product_id`, `meta_key`, `meta_value`) VALUES
(61, 20, 10, 36, 'cpu', 'Core i5 7gen'),
(62, 20, 10, 36, 'capacity', '8 GB RAM / 256 GB SSD'),
(63, 20, 10, 36, 'variation_id', '#335'),
(64, 21, 10, 36, 'cpu', 'Core i7 7gen'),
(65, 21, 10, 36, 'capacity', '8 GB RAM / 256 GB SSD'),
(66, 21, 10, 36, 'variation_id', '#336'),
(71, 23, 2, 46, 'processor', 'i5 7th-generation'),
(72, 23, 2, 46, 'memory', '8 GB'),
(73, 23, 2, 46, 'storage', '512 GB SSD'),
(74, 23, 2, 46, 'variation_id', '#494');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zone_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `zone_name` text NOT NULL,
  `zone_order` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `vendor_id`, `zone_name`, `zone_order`) VALUES
(5, 'admin_2', 'Pakistan Lahore Zone (Karena Kapoor Admin)', 1),
(6, 'admin_2', 'India Delhi Zone', 2),
(7, 'admin_2', 'Europe Zone', 3),
(8, '6', 'Pakistan Lahore Zone', 1),
(9, '2', 'Pakistan Lahore Zone (Brock Lesnar)', 1),
(10, '14', 'Pakistan Lahore Zone (Vendor Ahmed)', 1),
(11, 'admin_2', 'Saady Test Zone', 4),
(13, '6', 'India Delhi Zone', 2);

-- --------------------------------------------------------

--
-- Table structure for table `zones_locations`
--

CREATE TABLE `zones_locations` (
  `location_id` int(10) NOT NULL,
  `zone_id` int(10) NOT NULL,
  `location_code` text NOT NULL,
  `location_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `zones_locations`
--

INSERT INTO `zones_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(19, 6, '101', 'country'),
(20, 6, '110003', 'postcode'),
(21, 6, '110055', 'postcode'),
(22, 6, '110011', 'postcode'),
(23, 6, '110026', 'postcode'),
(24, 7, '74', 'country'),
(25, 7, '154', 'country'),
(26, 7, '229', 'country'),
(68, 5, '166', 'country'),
(69, 5, '54000', 'postcode'),
(70, 5, '54600', 'postcode'),
(71, 5, '53720', 'postcode'),
(76, 9, '166', 'country'),
(77, 9, '54000', 'postcode'),
(78, 9, '54600', 'postcode'),
(79, 9, '53720', 'postcode'),
(84, 11, '1', 'country'),
(85, 11, '101', 'country'),
(86, 11, '153', 'country'),
(87, 11, '166', 'country'),
(88, 11, '637686', 'postcode'),
(89, 11, '257522', 'postcode'),
(90, 11, '59258', 'postcode'),
(91, 11, '9155825', 'postcode'),
(109, 10, '166', 'country'),
(110, 10, '54600', 'postcode'),
(111, 10, '53720', 'postcode'),
(121, 8, '166', 'country'),
(122, 8, '54000', 'postcode'),
(123, 8, '54600', 'postcode'),
(124, 8, '53720', 'postcode'),
(129, 13, '101', 'country'),
(130, 13, '110012', 'postcode'),
(131, 13, '110003', 'postcode'),
(132, 13, '110011', 'postcode'),
(133, 13, '110012', 'postcode');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `cart_meta`
--
ALTER TABLE `cart_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customers_addresses`
--
ALTER TABLE `customers_addresses`
  ADD PRIMARY KEY (`addresse_id`);

--
-- Indexes for table `customers_history`
--
ALTER TABLE `customers_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hide_admin_orders`
--
ALTER TABLE `hide_admin_orders`
  ADD PRIMARY KEY (`hide_id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`icon_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_addresses`
--
ALTER TABLE `orders_addresses`
  ADD PRIMARY KEY (`addresse_id`);

--
-- Indexes for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders_items_meta`
--
ALTER TABLE `orders_items_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `orders_notes`
--
ALTER TABLE `orders_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payments_requests`
--
ALTER TABLE `payments_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products_stock`
--
ALTER TABLE `products_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`variation_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `reviews_meta`
--
ALTER TABLE `reviews_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `shipping_type`
--
ALTER TABLE `shipping_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `store_settings`
--
ALTER TABLE `store_settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `variations_meta`
--
ALTER TABLE `variations_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `vendor_accounts`
--
ALTER TABLE `vendor_accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `vendor_commissions`
--
ALTER TABLE `vendor_commissions`
  ADD PRIMARY KEY (`commission_id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_withdraws`
--
ALTER TABLE `vendor_withdraws`
  ADD PRIMARY KEY (`withdraw_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- Indexes for table `wishlist_meta`
--
ALTER TABLE `wishlist_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `zones_locations`
--
ALTER TABLE `zones_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `cart_meta`
--
ALTER TABLE `cart_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `customers_addresses`
--
ALTER TABLE `customers_addresses`
  MODIFY `addresse_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customers_history`
--
ALTER TABLE `customers_history`
  MODIFY `history_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=486;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `download_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hide_admin_orders`
--
ALTER TABLE `hide_admin_orders`
  MODIFY `hide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `icon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `orders_addresses`
--
ALTER TABLE `orders_addresses`
  MODIFY `addresse_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders_items_meta`
--
ALTER TABLE `orders_items_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `orders_notes`
--
ALTER TABLE `orders_notes`
  MODIFY `note_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `payments_requests`
--
ALTER TABLE `payments_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `products_stock`
--
ALTER TABLE `products_stock`
  MODIFY `stock_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `attribute_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `variation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `reviews_meta`
--
ALTER TABLE `reviews_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `shipping_type`
--
ALTER TABLE `shipping_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `store_settings`
--
ALTER TABLE `store_settings`
  MODIFY `settings_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `variations_meta`
--
ALTER TABLE `variations_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1287;

--
-- AUTO_INCREMENT for table `vendor_accounts`
--
ALTER TABLE `vendor_accounts`
  MODIFY `account_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendor_commissions`
--
ALTER TABLE `vendor_commissions`
  MODIFY `commission_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `vendor_withdraws`
--
ALTER TABLE `vendor_withdraws`
  MODIFY `withdraw_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wishlist_meta`
--
ALTER TABLE `wishlist_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `zone_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `zones_locations`
--
ALTER TABLE `zones_locations`
  MODIFY `location_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
