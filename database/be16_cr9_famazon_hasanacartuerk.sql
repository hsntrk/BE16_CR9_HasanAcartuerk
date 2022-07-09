-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2022 at 11:28 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be16_cr9_famazon_hasanacartuerk`
--
CREATE DATABASE IF NOT EXISTS `be16_cr9_famazon_hasanacartuerk` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `be16_cr9_famazon_hasanacartuerk`;

-- --------------------------------------------------------

--
-- Table structure for table `address_company`
--

CREATE TABLE `address_company` (
  `address_company_id` int(11) NOT NULL,
  `streetname` varchar(50) NOT NULL,
  `zip` int(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address_company`
--

INSERT INTO `address_company` (`address_company_id`, `streetname`, `zip`, `city`, `country`) VALUES
(1, 'Novastreet 25a', 84822, 'Longtian', 'China'),
(2, 'Mallardstreet 84/5', 54719, 'Vũ Quang', 'Vietnam'),
(3, 'Northridgesquare 1a', 47547, 'Dujiajing', 'China'),
(4, 'Farmcolangasse 12c', 24844, 'Fukuma', 'Japan'),
(5, 'Grimpancedor 183', 13101, 'Marseille', 'France');

-- --------------------------------------------------------

--
-- Table structure for table `address_deliver`
--

CREATE TABLE `address_deliver` (
  `address_deliver_id` int(11) NOT NULL,
  `streetname` varchar(50) NOT NULL,
  `zip` int(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address_deliver`
--

INSERT INTO `address_deliver` (`address_deliver_id`, `streetname`, `zip`, `city`, `country`) VALUES
(1, 'Loeprich 18', 36854, 'Igarapé', 'Brazil'),
(2, 'Longview 10a', 7735, 'Guiglo', 'Ivory Coast'),
(3, 'Rockefeller 91', 58088, 'Lelystad', 'Netherlands'),
(4, 'Crescent Oaks 44', 60664, 'Tekik Wetan', 'Indonesia'),
(5, 'Cambridge 1a', 94588, 'Kaeng Khro', 'Thailand'),
(6, 'Golf Course 11', 38830, 'Agalteca', 'Honduras'),
(7, 'Lakeland 68', 17789, 'Kainan', 'Japan'),
(8, 'Sauthoff 44', 54555, 'Qo‘qon', 'Uzbekistan'),
(9, 'Delaware 97', 89894, 'Ban Na Muang', 'Thailand'),
(10, 'Montanastreet 29', 97144, 'Xiangba', 'China');

-- --------------------------------------------------------

--
-- Table structure for table `address_invoice`
--

CREATE TABLE `address_invoice` (
  `address_invoice_id` int(11) NOT NULL,
  `streetname` varchar(50) NOT NULL,
  `zip` int(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address_invoice`
--

INSERT INTO `address_invoice` (`address_invoice_id`, `streetname`, `zip`, `city`, `country`) VALUES
(1, 'Glpplprich 13', 54854, 'Uinti', 'Czech'),
(2, 'Gugingview 98', 15735, 'Muian', 'Slowenja'),
(3, 'Birlankefeller 44', 25088, 'Piwwnu', 'Poland'),
(4, 'Vintalcent Oaks 25', 16964, 'Telli Thuk', 'Azarbaidschan'),
(5, 'Hinterbridge 15', 58988, 'Kanterow', 'France'),
(6, 'Loeprich 18', 36854, 'Igarapé', 'Brazil'),
(7, 'Longview 10a', 7735, 'Guiglo', 'Ivory Coast'),
(8, 'Rockefeller 91', 58088, 'Lelystad', 'Netherlands'),
(9, 'Crescent Oaks 44', 60664, 'Tekik Wetan', 'Indonesia'),
(10, 'Cambridge 1a', 94588, 'Kaeng Khro', 'Thailand');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `image_category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `title`, `description`, `image_category`) VALUES
(1, 'Smartphone', 'The latest smartphones with brilliant resolution and light weight from well-known manufacturers.', 'smartphone.jpg'),
(2, 'Computer', 'The latest high-tech processors with fast graphics performance and high-resolution monitors.', 'computer.jpg'),
(3, 'Household', 'Everything you need for home. Screwdrivers, cleaning supplies, blankets and furniture and much more. Very compact.', 'household.jpg'),
(4, 'Clothes', 'the latest trends are in this category, no matter if winter or summer, we have the right thing for you.', 'clothes.jpg'),
(5, 'Books', 'Famous authors with detective stories and novels. Also learning books and school books with different editions.', 'books.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `reviews` varchar(100) DEFAULT NULL,
  `register_number` varchar(30) NOT NULL,
  `tax_number` varchar(30) NOT NULL,
  `payment` varchar(200) NOT NULL,
  `fk_address_company_id` int(11) NOT NULL,
  `fk_telefon_number_id` int(11) NOT NULL,
  `fk_email_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `name`, `logo`, `reviews`, `register_number`, `tax_number`, `payment`, `fk_address_company_id`, `fk_telefon_number_id`, `fk_email_id`) VALUES
(1, 'Klein, Bayer and Kautzer', 'http://dummyimage.com/168x100.png/cc0000/ffffff', 'magnis dis parturient montes nascetur', '50268-220', '18-417-3467', 'FI94 5723 7773 7111 12', 1, 1, 1),
(2, 'Padberg-Fay', 'http://dummyimage.com/160x100.png/cc0000/ffffff', 'nulla ultrices aliquet maecenas leo odio condimentum id luctus', '67457-211', '03-215-1450', 'BH09 XRLM PSRC ZTIO EE1K JZ', 2, 2, 2),
(3, 'Considine, Conroy and Barton', 'http://dummyimage.com/180x100.png/ff4444/ffffff', 'in tempor turpis nec euismod', '16590-948', '14-589-3684', 'BE25 7047 0631 1380', 3, 3, 3),
(4, 'Waters and Sons', 'http://dummyimage.com/193x100.png/5fa2dd/ffffff', 'blandit lacinia erat vestibulum sed magna', '43063-057', '27-729-3629', 'SK87 6799 7703 5827 9778 9961', 4, 4, 4),
(5, 'Braun, Kohler and Nikolaus', 'http://dummyimage.com/105x100.png/ff4444/ffffff', 'suscipit a feugiat et eros', '41250-650', '11-585-9071', 'FR94 7336 3539 185R VXMX BPNT A98', 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `telefon_number` int(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `fk_payment_type_id` int(11) NOT NULL,
  `fk_address_deliver_id` int(11) NOT NULL,
  `fk_address_invoice_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `user_name`, `first_name`, `last_name`, `email`, `telefon_number`, `password`, `gender`, `birth_date`, `fk_payment_type_id`, `fk_address_deliver_id`, `fk_address_invoice_id`) VALUES
(1, 'corsman0', 'Charlotta', 'Orsman', 'corsman0@gizmodo.com', 618951740, 'DNZkGp4lk', 'F', '1985-09-21', 10, 7, 8),
(2, 'dcacacie1', 'Daryle', 'Cacacie', 'dcacacie1@reference.com', 890590254, 'FNjMftJE7vX', 'M', '1980-03-26', 10, 7, 1),
(3, 'cwooland2', 'Cirstoforo', 'Wooland', 'cwooland2@slideshare.net', 982639396, 'w8t6DP', 'M', '1984-01-06', 3, 4, 2),
(4, 'imoughtin3', 'Iona', 'Moughtin', 'imoughtin3@state.tx.us', 698942477, '3sUP9bOF', 'F', '1989-04-30', 1, 8, 6),
(5, 'vriddall4', 'Vaughan', 'Riddall', 'vriddall4@marriott.com', 830707618, 'to2oodCqy', 'M', '1983-05-25', 9, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `email_id` int(11) NOT NULL,
  `email_main` varchar(50) NOT NULL,
  `email_support` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`email_id`, `email_main`, `email_support`) VALUES
(1, 'cspinage0@cam.ac.uk', 'adufaire0@google.co.jp'),
(2, 'yschwant1@usa.gov', 'echomicz1@xinhuanet.com'),
(3, 'arawcliffe2@nsw.gov.au', 'eeringey2@indiegogo.com'),
(4, 'sdallicott3@ucsd.edu', 'lprowse3@timesonline.co.uk'),
(5, 'ldraude4@stumbleupon.com', 'rstruss4@theglobeandmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `image_product`
--

CREATE TABLE `image_product` (
  `image_product_id` int(11) NOT NULL,
  `image_1` varchar(100) NOT NULL,
  `image_2` varchar(100) DEFAULT NULL,
  `image_3` varchar(100) DEFAULT NULL,
  `image_4` varchar(100) DEFAULT NULL,
  `image_5` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image_product`
--

INSERT INTO `image_product` (`image_product_id`, `image_1`, `image_2`, `image_3`, `image_4`, `image_5`) VALUES
(1, 'samsung_galaxy.jpg', 'samsung_galaxy_front.jpg', 'samsung_galaxy_top.jpg', 'samsung_galaxy_right.jpg', 'samsung_galaxy_left.jpg'),
(2, 'samsung_galaxy_1.jpg', 'samsung_galaxy_1_top.jpg', 'samsung_galaxy_1_right.jpg', 'samsung_galaxy_1_left.jpg', 'samsung_galaxy_1_bottom.jpg'),
(3, 'Vestibulum.jpg', 'NequeDuisBibendum.jpg', 'Venenatis.jpg', 'VestibulumProin.jpg', 'AccumsanFelis.jpg'),
(4, 'DonecPosuere.jpg', 'Curae.doc', 'Commodo.jpg', 'InConsequatUt.jpg', 'QuamPede.jpg'),
(5, 'Non.jpg', 'DonecDiam.jpg', 'Id.jpg', 'NuncPurus.jpg', 'AFeugiat.jpg'),
(6, 'Tkiiols.jpg', 'A.jpg', 'fhKilien.jpg', 'vlalen.jpg', 'dfjiuu.jpg'),
(7, 'fkpppeee.jpg', 'VelAccumsan.jpg', 'RidiculusMus.jpg', 'SuspendissePotentiNullam.jpg', 'AtNuncCommodo.jpg'),
(8, 'finluaa.jpg', 'NequeDuisBibendum.jpg', 'Venenatis.jpg', 'VestibulumProin.jpg', 'AccumsanFelis.jpg'),
(9, 'ffekl.jpg', 'Curae.doc', 'Commodo.jpg', 'InConsequatUt.jpg', 'QuamPede.jpg'),
(10, 'asdffff.jpg', 'DonecDiam.jpg', 'Id.jpg', 'NuncPurus.jpg', 'AFeugiat.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `order_number` int(50) NOT NULL,
  `order_date` date NOT NULL,
  `ship_date` date NOT NULL,
  `ship_required` date NOT NULL,
  `paid_status` enum('Yes','No') DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `fk_customer_id` int(11) NOT NULL,
  `fk_shipper_id` int(11) NOT NULL,
  `fk_payment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `order_number`, `order_date`, `ship_date`, `ship_required`, `paid_status`, `payment_date`, `fk_customer_id`, `fk_shipper_id`, `fk_payment_id`) VALUES
(1, 1235, '2022-07-08', '2022-07-11', '2022-07-14', 'Yes', '2022-07-10', 1, 1, 1),
(2, 1236, '2022-07-10', '2022-07-12', '2022-07-15', 'Yes', '2022-07-11', 2, 3, 1),
(3, 1237, '2022-07-12', '2022-07-13', '2022-07-20', 'Yes', '2022-07-13', 3, 3, 4),
(4, 1240, '2022-07-19', '2022-07-20', '2022-07-28', 'Yes', '2022-07-20', 4, 3, 4),
(5, 1241, '2022-07-20', '2022-07-21', '2022-07-27', 'Yes', '2022-07-21', 5, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `total_sum` int(11) NOT NULL,
  `invoice` varchar(30) NOT NULL,
  `fk_product_id` int(11) NOT NULL,
  `fk_order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `total_sum`, `invoice`, `fk_product_id`, `fk_order_id`) VALUES
(1, 1655, 'rechnung_1561.pdf', 1, 2),
(2, 1635, 'rechnung_1559.pdf', 2, 2),
(3, 6385, 'rechnung_5543.pdf', 3, 3),
(4, 4566, 'rechnung_3443.pdf', 1, 2),
(5, 1654, 'rechnung_3434.pdf', 4, 3),
(6, 1645, 'rechnung_4660.pdf', 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `allowed_status` enum('Yes','No') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_type`, `allowed_status`) VALUES
(1, 'Paypal', 'Yes'),
(2, 'Visa', 'No'),
(3, 'Meastro', 'Yes'),
(4, 'Visa-Electron', 'Yes'),
(5, 'AmericanExpress', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `payment_type_id` int(11) NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `card_number` int(20) NOT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `date_exp` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`payment_type_id`, `payment_type`, `card_number`, `bank_name`, `date_exp`) VALUES
(1, 'mastercard', 148955444, 'Schaden Group', '2022-07'),
(2, 'americanex', 987756445, 'Smith, Schaden and Batz', '2022-12'),
(3, 'jcb', 199875455, 'Cole-Spinka', '2023-04'),
(4, 'maestro', 233000045, 'Lindgren Inc', '2023-01'),
(5, 'jcb', 855466311, 'Gerlach and Sons', '2022-08'),
(6, 'maestro', 116998744, 'Harber, Kunze and Roberts', '2022-09'),
(7, 'visa-elect', 356999874, 'Gerlach-Dare', '2022-12'),
(8, 'visa', 154799664, 'Conn-Thiel', '2023-03'),
(9, 'visa', 584478999, 'Kshlerin-Fisher', '2023-05'),
(10, 'maestro', 957746321, 'Schowalter, Bruen and Boyle', '2022-09');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `product_description` varchar(100) NOT NULL,
  `color` varchar(20) NOT NULL,
  `stock_quantity` int(4) NOT NULL,
  `price` int(11) NOT NULL,
  `producer` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `fk_image_product_id` int(11) NOT NULL,
  `fk_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `name`, `product_description`, `color`, `stock_quantity`, `price`, `producer`, `location`, `fk_image_product_id`, `fk_category_id`) VALUES
(1, 'Samsung Galaxy Uni', 'With the latest Snapdragon processor from 2022 and many different color variants.', 'black', 10, 899, 'Samsung Electronics', 'Korea', 1, 1),
(2, 'Samsung Galaxy Nexo', 'Succesor. With the latest Snapdragon processor from 2022 and many different color variants.', 'blue', 9, 780, 'Samsung Electronics', 'Korea', 2, 1),
(3, 'Kunix Phone', 'new on market with excellent camera', 'purple', 4, 470, 'finliy ltd.', 'belgium', 3, 1),
(4, 'Dryer', 'For soft laundry the ideal for at home. Fast drying with low power consumption', 'white', 4, 670, 'Kingwi Electronics', 'Germany', 5, 3),
(5, 'toolbox set', 'Includes screwdriver, hammer, small pliers and sandpaper, small tool box with everything you need in', 'red', 13, 188, 'Hiltoxcc AG', 'Switzerland', 4, 3),
(6, 'cap', 'basball cap from the famous designer of europe, only 100pieces produced', 'orange black', 78, 38, 'chekin designers', 'france', 6, 4),
(7, 'PHP and MySQL Book', 'The comprehensive guide to PHP 8. Dynamic websites, from the basics to advanced PHP programming', 'lightgray', 75, 51, 'christian publishing house', 'Germany', 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `product_review_id` int(11) NOT NULL,
  `fk_product_id` int(11) NOT NULL,
  `fk_user_review_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`product_review_id`, `fk_product_id`, `fk_user_review_id`) VALUES
(1, 1, 2),
(2, 3, 3),
(3, 2, 1),
(4, 4, 4),
(5, 7, 3),
(6, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_sale`
--

CREATE TABLE `product_sale` (
  `product_sale_id` int(11) NOT NULL,
  `fk_company_id` int(11) NOT NULL,
  `fk_product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_sale`
--

INSERT INTO `product_sale` (`product_sale_id`, `fk_company_id`, `fk_product_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 3, 4),
(5, 4, 5),
(6, 5, 6),
(7, 3, 6),
(8, 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `shipper`
--

CREATE TABLE `shipper` (
  `shipper_id` int(11) NOT NULL,
  `shipper_name` varchar(50) NOT NULL,
  `telefon_number` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipper`
--

INSERT INTO `shipper` (`shipper_id`, `shipper_name`, `telefon_number`) VALUES
(1, 'DHL', 15547985),
(2, 'DPD', 19985742),
(3, 'POST', 14492353),
(4, 'HERMES', 16698775),
(5, 'TNT', 15997754),
(6, 'HN Express', 19875566);

-- --------------------------------------------------------

--
-- Table structure for table `telefon_number`
--

CREATE TABLE `telefon_number` (
  `telefon_number_id` int(11) NOT NULL,
  `number_service` int(30) NOT NULL,
  `number_hotline` int(30) NOT NULL,
  `number_business` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `telefon_number`
--

INSERT INTO `telefon_number` (`telefon_number_id`, `number_service`, `number_hotline`, `number_business`) VALUES
(1, 828864597, 254844194, 730269647),
(2, 724817903, 862102157, 550139198),
(3, 399675177, 590157096, 317631008),
(4, 960828599, 509750221, 466267516),
(5, 470659094, 733844356, 226120045);

-- --------------------------------------------------------

--
-- Table structure for table `user_review`
--

CREATE TABLE `user_review` (
  `user_review_id` int(11) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `evalution_grade` int(10) NOT NULL,
  `image_1` varchar(100) DEFAULT NULL,
  `image_2` varchar(100) DEFAULT NULL,
  `review_text` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_review`
--

INSERT INTO `user_review` (`user_review_id`, `nickname`, `evalution_grade`, `image_1`, `image_2`, `review_text`) VALUES
(1, 'abarthelmes0', 5, 'DuisBibendumFelis.jpg', 'Idfffn.jpg', 'lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis'),
(2, 'tdeavenell1', 4, 'Utadsf.jpg', 'MaurisEgetMassa.jpg', 'at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum'),
(3, 'jjakobsson2', 1, 'Tempor.jpg', 'Cursus.jpg', 'vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada'),
(4, 'tcalderhead3', 5, 'DonecDapibus.jpg', 'Nulla.jpg', 'suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna'),
(5, 'mkillick4', 1, 'ConsectetuerEget.jpg', 'UltricesVel.jpg', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_company`
--
ALTER TABLE `address_company`
  ADD PRIMARY KEY (`address_company_id`);

--
-- Indexes for table `address_deliver`
--
ALTER TABLE `address_deliver`
  ADD PRIMARY KEY (`address_deliver_id`);

--
-- Indexes for table `address_invoice`
--
ALTER TABLE `address_invoice`
  ADD PRIMARY KEY (`address_invoice_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`),
  ADD KEY `fk_address_company_id` (`fk_address_company_id`),
  ADD KEY `fk_telefon_number_id` (`fk_telefon_number_id`),
  ADD KEY `fk_email_id` (`fk_email_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `fk_payment_type_id` (`fk_payment_type_id`),
  ADD KEY `fk_address_deliver_id` (`fk_address_deliver_id`),
  ADD KEY `fk_address_invoice_id` (`fk_address_invoice_id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `image_product`
--
ALTER TABLE `image_product`
  ADD PRIMARY KEY (`image_product_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_customer_id` (`fk_customer_id`),
  ADD KEY `fk_shipper_id` (`fk_shipper_id`),
  ADD KEY `fk_payment_id` (`fk_payment_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`),
  ADD KEY `fk_order_id` (`fk_order_id`),
  ADD KEY `fk_product_id` (`fk_product_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`payment_type_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_image_product_id` (`fk_image_product_id`),
  ADD KEY `fk_category_id` (`fk_category_id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`product_review_id`),
  ADD KEY `fk_user_review_id` (`fk_user_review_id`),
  ADD KEY `fk_product_id` (`fk_product_id`);

--
-- Indexes for table `product_sale`
--
ALTER TABLE `product_sale`
  ADD PRIMARY KEY (`product_sale_id`),
  ADD KEY `fk_company_id` (`fk_company_id`),
  ADD KEY `fk_product_id` (`fk_product_id`);

--
-- Indexes for table `shipper`
--
ALTER TABLE `shipper`
  ADD PRIMARY KEY (`shipper_id`);

--
-- Indexes for table `telefon_number`
--
ALTER TABLE `telefon_number`
  ADD PRIMARY KEY (`telefon_number_id`);

--
-- Indexes for table `user_review`
--
ALTER TABLE `user_review`
  ADD PRIMARY KEY (`user_review_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_company`
--
ALTER TABLE `address_company`
  MODIFY `address_company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `address_deliver`
--
ALTER TABLE `address_deliver`
  MODIFY `address_deliver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `address_invoice`
--
ALTER TABLE `address_invoice`
  MODIFY `address_invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `image_product`
--
ALTER TABLE `image_product`
  MODIFY `image_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `payment_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `product_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_sale`
--
ALTER TABLE `product_sale`
  MODIFY `product_sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shipper`
--
ALTER TABLE `shipper`
  MODIFY `shipper_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `telefon_number`
--
ALTER TABLE `telefon_number`
  MODIFY `telefon_number_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_review`
--
ALTER TABLE `user_review`
  MODIFY `user_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`fk_address_company_id`) REFERENCES `address_company` (`address_company_id`),
  ADD CONSTRAINT `company_ibfk_2` FOREIGN KEY (`fk_telefon_number_id`) REFERENCES `telefon_number` (`telefon_number_id`),
  ADD CONSTRAINT `company_ibfk_3` FOREIGN KEY (`fk_email_id`) REFERENCES `email` (`email_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`fk_payment_type_id`) REFERENCES `payment_type` (`payment_type_id`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`fk_address_deliver_id`) REFERENCES `address_deliver` (`address_deliver_id`),
  ADD CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`fk_address_invoice_id`) REFERENCES `address_invoice` (`address_invoice_id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`fk_customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`fk_shipper_id`) REFERENCES `shipper` (`shipper_id`),
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`fk_payment_id`) REFERENCES `payment` (`payment_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`fk_order_id`) REFERENCES `order` (`order_id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`fk_product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`fk_image_product_id`) REFERENCES `image_product` (`image_product_id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`fk_category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `product_review`
--
ALTER TABLE `product_review`
  ADD CONSTRAINT `product_review_ibfk_1` FOREIGN KEY (`fk_user_review_id`) REFERENCES `user_review` (`user_review_id`),
  ADD CONSTRAINT `product_review_ibfk_2` FOREIGN KEY (`fk_product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product_sale`
--
ALTER TABLE `product_sale`
  ADD CONSTRAINT `product_sale_ibfk_1` FOREIGN KEY (`fk_company_id`) REFERENCES `company` (`company_id`),
  ADD CONSTRAINT `product_sale_ibfk_2` FOREIGN KEY (`fk_product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
