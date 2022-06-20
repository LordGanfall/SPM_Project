-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for onlinestore
CREATE DATABASE IF NOT EXISTS `onlinestore` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `onlinestore`;

-- Dumping structure for table onlinestore.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(100) NOT NULL AUTO_INCREMENT,
  `brand_title` text NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table onlinestore.brands: ~6 rows (approximately)
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
	(1, 'Adidas'),
	(2, 'Nike'),
	(3, 'Carhatt'),
	(4, 'The North Face'),
	(5, 'Fjallraven'),
	(6, 'Others');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

-- Dumping structure for table onlinestore.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  `product_title` varchar(1000) NOT NULL,
  `product_image` varchar(300) NOT NULL,
  `price` varchar(300) NOT NULL,
  `total_amt` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

-- Dumping data for table onlinestore.cart: ~9 rows (approximately)
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`, `product_title`, `product_image`, `price`, `total_amt`) VALUES
	(78, 21, '0', 7, 1, 'T shirt', 'IN-Mens-Apparel-Voodoo-Tiles-09._V333872612_.jpg', '800', '800'),
	(79, 2, '0', 7, 1, 'iPhone 5s', 'iphone mobile.jpg', '25000', '25000'),
	(80, 3, '0', 7, 1, 'iPad', 'ipad.jpg', '30000', '30000'),
	(81, 1, '0', 10, 1, 'Samsung Dous 2', 'samsung mobile.jpg', '5000', '5000'),
	(82, 3, '0', 10, 1, 'iPad', 'ipad.jpg', '30000', '30000'),
	(83, 4, '0', 10, 1, 'iPhone 6s', 'iphone.jpg', '32000', '32000'),
	(84, 6, '0', 10, 1, 'Hp Laptop r series', 'k2-_ed8b8f8d-e696-4a96-8ce9-d78246f10ed1.v1.jpg-bc204bdaebb10e709a997a8bb4518156dfa6e3ed-optim-450x450.jpg', '35000', '35000'),
	(85, 2, '0', 10, 1, 'iPhone 5s', 'iphone mobile.jpg', '25000', '25000'),
	(86, 8, '0', 10, 1, 'Sony', 'sony mobile.jpg', '40000', '40000'),
	(87, 22, '0', 10, 1, 'Yellow T shirt ', '1.0x0.jpg', '1300', '1300');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table onlinestore.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(100) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table onlinestore.categories: ~5 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
	(1, 'Backpack'),
	(2, 'Tote Bag'),
	(3, 'Duffle Bag'),
	(4, 'Briefcase'),
	(5, 'Handbag');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table onlinestore.customer_order
CREATE TABLE IF NOT EXISTS `customer_order` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_price` int(100) NOT NULL,
  `p_qty` int(100) NOT NULL,
  `p_status` varchar(100) NOT NULL,
  `trx_id` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table onlinestore.customer_order: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_order` ENABLE KEYS */;

-- Dumping structure for table onlinestore.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table onlinestore.orders: ~2 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
	(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
	(2, 2, 2, 1, '07M47684BS5725041', 'Completed');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table onlinestore.products
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- Dumping data for table onlinestore.products: ~38 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
	(1, 1, 1, 'Adidas Originals Adicolor', 60, 'Adidas Original Adicolor Black', 'Adidas Originals Adicolor.jpg', ' adidas backpack'),
	(2, 1, 1, 'Adidas Performance 4ATHLTS', 75, 'Adidas Performance 4ATHLTS Black', 'Adidas Performance 4ATHLTS.jpg', 'adidas  backpack'),
	(3, 1, 1, 'Adidas Performance Zebra', 60, 'Adidas Performance Zebra Blue', 'Adidas Performance Zebra.jpg', 'adidas  backpack'),
	(4, 1, 2, 'Nike Hayward 2.0', 80, 'Nike Hayward 2.0 Black', 'Nike Brasilia 9.5.jpg', 'nike  backpack'),
	(5, 1, 3, 'Carhatt Kickflip', 70, 'Carhatt Kickflip Brown', 'Carhatt Kickflip.jpg', 'carhatt  backpack'),
	(6, 1, 3, 'Carhatt Philis', 77, 'Carhatt Philis Brown', 'Carhatt Philis.jpg', 'carhatt  backpack'),
	(7, 1, 5, 'Fjallraven High Coast 24', 43, 'Fjallraven High Coast 24 Black', 'Fjallraven High Coast 24.jpg', 'fjallraven  backpack'),
	(8, 1, 3, 'Carhatt Delta', 98, 'Carhatt Delta Black', 'Carhatt Delta.jpg', 'carhatt  backpack'),
	(9, 1, 6, 'Herschel Pop Quiz', 45, 'Herschel Pop Quiz Blue', 'Herschel Pop Quiz.jpg', 'herschel  backpack'),
	(10, 1, 6, 'Champion Fashion', 55, 'Champion Fashion Black', 'Champion Fashion.jpg', 'champion  backpack'),
	(11, 2, 3, 'Carhatt Work Tote', 57, 'Carhatt Work Tote Hamilton Brown', 'Carhatt Work Tote.jpg', 'carhatt tote bag'),
	(12, 2, 1, 'Adidas Adicolor Shopper Bag', 50, 'Adidas Adicolor Shopper Bag Black', 'Adidas Adicolor Shopper Bag.jpg', 'adidas tote bag'),
	(13, 2, 5, 'Fjallraven Kanken', 44, 'Fjallraven Kanken Sky Blue', 'Fjallraven Kanken.jpg', 'fjallraven tote bag'),
	(14, 2, 2, 'Nike Sportwear', 66, 'Nike Sportwear Black', 'Nike Sportwear.jpg', 'nike tote bag'),
	(15, 2, 5, 'Fjallraven Totepack No.1', 44, 'Fjallraven Totepack No.1 Navy', 'Fjallraven Totepack No.1.jpg', 'fjallraven tote bag'),
	(16, 2, 4, 'NorthFace Explore Utility', 66, 'NorthFace Explore Utility Orange', 'NorthFace Explore Utility.jpg', 'north face tote bag'),
	(17, 2, 6, 'Typo Art Tote', 22, 'Typo Art Tote Grey', 'Typo Art Tote.jpg', 'typo tote bag'),
	(18, 2, 6, 'Ksubi Kollector', 34, 'Ksubi Kollector Black', 'Ksubi Kollector.jpg', 'ksubi tote bag'),
	(19, 2, 6, 'Herschel Bamfield', 33, 'Herschel Bamfield Pink', 'Herschel Bamfield.jpg', 'herscel tote bag'),
	(20, 2, 1, 'Adidas Hot Yoga', 76, 'Adidas Hot Yoga Black', 'Adidas Hot Yoga.jpg', 'adidas tote bag'),
	(21, 3, 4, 'NorthFace Base Camp', 33, 'NorthFace Base Camp Red', 'NorthFace Base Camp.jpg', 'north face duffle bag'),
	(22, 3, 2, 'Nike Brasilia 9.5 Medium Duffle', 67, 'Nike Brasilia 9.5 Medium Duffle Black', 'Nike Brasilia 9.5 Medium Duffle.jpg', 'nike duffle bag'),
	(23, 3, 2, 'Nike Running Minimal Duffle', 89, 'Nike Running Minimal Duffle Black', 'Nike Running Minimal Duffle.jpg', 'nike duffle bag'),
	(24, 3, 2, 'Nike Printed Training', 69, 'Nike Printed Training Pink', 'Nike Printed Training.jpg', 'nike duffle bag'),
	(25, 3, 2, 'Nike One Club', 75, 'Nike One Club Black', 'Nike One Club.jpg', 'nike duffle bag'),
	(26, 3, 6, 'Herschel Novel', 67, 'Herschel Novel Black', 'Herschel Novel.jpg', 'herscel duffle bag'),
	(27, 3, 6, 'Double Oak Mills Lyle', 88, 'Double Oak Mills Lyle Brown', 'Double Oak Mills Lyle.jpg', 'oak mills lyle duffle bag'),
	(28, 3, 1, 'Adidas Performance Duffle', 90, 'Adidas Performance Duffle Black', 'Adidas Performance Duffle.jpg', 'adidas duffle bag'),
	(29, 3, 5, 'Fjallraven Vardag', 45, 'Fjallraven Vardag Green', 'Fjallraven Vardag.jpg', 'fjallraven duffle bag'),
	(30, 3, 6, 'Tommy Hilfiger Downtown', 120, 'Tommy Hilfiger Downtown Black', 'Tommy Hilfiger Downtown.jpg', 'tommy hilfiger duffle bag'),
	(31, 4, 6, 'Aquila Montoro', 57, 'Aquila Montoro Brown', 'Aquila Montoro.jpg', 'aquils briefcase'),
	(32, 4, 6, 'Tommy Hilfiger 1985 PU Slim', 111, 'Tommy Hilfiger 1985 PU Slim Black', 'Tommy Hilfiger 1985 PU Slim.jpg', 'tommy hilfiger briefcase'),
	(33, 4, 6, 'Polo Iconic Exclusive Commuter', 90, 'Polo Iconic Exclusive Commuter Black', 'Polo Iconic Exclusive Commuter.jpg', 'polo briefcase'),
	(34, 4, 6, 'Boss Crosstown', 78, 'Boss Crosstown Black', 'Boss Crosstown.jpg', 'boss briefcase'),
	(35, 4, 6, 'Samsonite Boulevard Slim', 88, 'Samsonite Boulevard Slim Black', 'Samsonite Boulevard Slim.jpg', 'samsonite briefcase'),
	(36, 5, 1, 'Adidas Mini Airliner', 67, 'Adidas Mini Airliner Black Silver', 'Adidas Mini Airliner.jpg', 'adidas handbag'),
	(37, 5, 6, 'Aere Leather', 77, 'Aere Leather Brown', 'Aere Leather.jpg', 'aere handbag'),
	(38, 5, 6, 'Prene Brighton Neoprene', 88, 'Prene Brighton Neoprene Black', 'Prene Brighton Neoprene.jpg', 'prene handbag'),
	(39, 5, 6, 'Michael Kors Cleo Satchel', 66, 'Michael Kors Cleo Satchel Black', 'Michael Kors Cleo Satchel.jpg', 'michael kors handbag'),
	(40, 5, 6, 'Dkny Paige Sutton', 78, 'Dkny Paige Sutton Black', 'Dkny Paige Sutton.jpg', 'dkny handbag');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table onlinestore.received_payment
CREATE TABLE IF NOT EXISTS `received_payment` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `ammount` int(100) NOT NULL,
  `trx_id` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table onlinestore.received_payment: ~0 rows (approximately)
/*!40000 ALTER TABLE `received_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `received_payment` ENABLE KEYS */;

-- Dumping structure for table onlinestore.user_info
CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(900) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table onlinestore.user_info: ~2 rows (approximately)
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
	(8, 'ghost', 'rider', 'ghost@mail.com', '1138c51ef876abac92aae6d726a206a1', '0771844319', 'address', 'address'),
	(9, 'rimer', 'rabit', 'test@test.com', '25f9e794323b453885f5181f1b624d0b', '3214569870', 'address1', 'address2'),
	(10, 'Kassim', 'Selamat', 'kasim@gmail.com', '1722442b586a85c95593a9c6131a0ebd', '0123456789', 'Batu Pahat', 'Johor');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
