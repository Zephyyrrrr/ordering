-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2025 at 10:15 PM
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
-- Database: `db_orderingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `td_fooditems`
--

CREATE TABLE `td_fooditems` (
  `item_id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` double NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `stock_status` varchar(20) DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `td_fooditems`
--

INSERT INTO `td_fooditems` (`item_id`, `name`, `description`, `price`, `category`, `image_path`, `stock_status`) VALUES
(26, '1 - pc. Chickenjoy', 'Philippines\' best-tasting crispylicious, juicylicious Chickenjoy that is crispy on the outside, tender and juicy on the inside.', 92, 'Meals', 'C:\\Users\\Mark\\Downloads\\1-pc manok.png', 'Available'),
(27, '2 - pc. Chickenjoy', 'Philippines\' best-tasting crispylicious, juicylicious Chickenjoy that is crispy on the outside, tender and juicy on the inside.', 183, 'Meals', 'C:\\Users\\Mark\\Downloads\\2pc manok.png', 'Available'),
(28, 'Super Meal', '1 - pc. Chickenjoy w/ Regular Fries & Half Jolly Spaghetti Super Meal', 193, 'Meals', 'C:\\Users\\Mark\\Downloads\\supermeal.png', 'Available'),
(29, '1 - pc. Chickenjoy w/ Drink', 'Philippines\' best-tasting crispylicious, juicylicious Chickenjoy that is crispy on the outside, tender and juicy on the inside.', 101, 'Meals', 'C:\\Users\\Mark\\Downloads\\mealsaver.png', 'Available'),
(30, '1 - pc. Burger Steak w/ Drink', '100% pure beef patty with a hearty serving of flavorful mushroom gravy and steamed rice.', 84, 'Meals', 'C:\\Users\\Mark\\Downloads\\burgerstrk.png', 'Available'),
(31, '1-pc. Chickenjoy w/ Mashed Potato', 'Philippines\' best-tasting crispylicious, juicylicious Chickenjoy that is crispy on the outside, tender and juicy on the inside.', 131, 'Meals', 'C:\\Users\\Mark\\Downloads\\mashtato.png', 'Available'),
(32, '1-pc. Chickenjoy w/ Coke Float', 'Philippines\' best-tasting crispylicious, juicylicious Chickenjoy with refreshing Coke Float.', 138, 'Meals', 'C:\\Users\\Mark\\Downloads\\manokcok.png', 'Available'),
(33, '1 – pc. Chickenjoy w/ Double Rice', 'Philippines\' best-tasting crispylicious, juicylicious Chickenjoy with Double Rice & drink', 147, 'Meals', 'C:\\Users\\Mark\\Downloads\\manok2rice.png', 'Available'),
(34, 'Jolly Spaghetti w/ Burger Steak', 'The meatiest, cheesiest and sweet-sarap spaghetti! Freshly prepared noodles topped with Jollibee\'s signature meaty spaghetti sauce, hotdog chunks and creamy grated cheese, paired with our Beefy-Saucy Burger Steak.', 137, 'Meals', 'C:\\Users\\Mark\\Downloads\\pag.png', 'Available'),
(35, '1 - pc. Chickenjoy, Burger Steak & Half Jolly Spaghetti Super Meal w/ Drink', 'Your Jollibee favorites in one Super Meal: 1 - pc. Chickenjoy w/ Burger Steak & Half Jolly Spaghetti Super Meal', 224, 'Meals', 'C:\\Users\\Mark\\Downloads\\mel.png', 'Available'),
(36, 'Iced Latte', 'Iced Blend of Coffee, Fresh Milk, and Sweet Syrup', 60, 'Drinks', 'C:\\Users\\Mark\\Downloads\\latte.png', 'Available'),
(37, 'Iced Tea', 'Your Favorite Jollibee Iced Tea', 79, 'Drinks', 'C:\\Users\\Mark\\Downloads\\tea.png', 'Available'),
(38, 'Coke', 'Your Favorite Coke', 74, 'Drinks', 'C:\\Users\\Mark\\Downloads\\cok.png', 'Available'),
(39, 'Pineapple Juice', 'Sweetiest Pineapple Juice', 79, 'Drinks', 'C:\\Users\\Mark\\Downloads\\pineapple.png', 'Available'),
(40, 'Soda Floats', 'A refreshing combination of a soft drink and soft serve ice cream.', 66, 'Drinks', 'C:\\Users\\Mark\\Downloads\\sodafloat.png', 'Available'),
(41, 'Sprite', 'Your Favorite Sprite', 74, 'Drinks', 'C:\\Users\\Mark\\Downloads\\sprite.png', 'Available'),
(42, 'Jolly Crispy Fries Bucket', 'A larger portion of their signature fries, equivalent to four orders of the regular size fries. ', 191, 'Snacks', 'C:\\Users\\Mark\\Downloads\\baketfries.png', 'Available'),
(43, 'Jolly Crispy Fries', 'Small Fries', 60, 'Snacks', 'C:\\Users\\Mark\\Downloads\\frays.png', 'Available'),
(44, 'Cookies & Cream Sundae', 'Creamy vanilla soft serve topped with crushed Oreo cookies and indulgent choco coating', 66, 'Dessert', 'C:\\Users\\Mark\\Downloads\\sunday.png', 'Available'),
(45, 'Mango Jelly Sundae', 'Creamy Vanilla soft serve topped with mango jelly & mango fruit bits', 65, 'Dessert', 'C:\\Users\\Mark\\Downloads\\mango.png', 'Available'),
(46, 'Chocolate Sundae', 'A thick, creamy vanilla soft serve topped with rich, indulgent chocolate syrup.', 54, 'Dessert', 'C:\\Users\\Mark\\Downloads\\sundae.png', 'Available'),
(47, 'Mini Chocolate Sundae', 'Creamy vanilla soft serve topped with rich, indulgent chocolate syrup', 33, 'Dessert', 'C:\\Users\\Mark\\Downloads\\mini.png', 'Available'),
(48, 'Peach Mango Pie', 'A popular dessert made with a flaky, golden-brown crust and a filling of diced peaches and mangoes, often served hot.', 46, 'Snacks', 'C:\\Users\\Mark\\Downloads\\mangopay.png', 'Available'),
(49, 'Double Cheesy Yumburger', 'The same cheesy, beefy langhap-sarap Cheesy Yumburger you love with double beef patty, cheese, and special burger dressing', 149, 'Snacks', 'C:\\Users\\Mark\\Downloads\\dcburger.png', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `td_orderdetails`
--

CREATE TABLE `td_orderdetails` (
  `id` int(11) NOT NULL,
  `order_number` varchar(225) NOT NULL,
  `item_id` int(50) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `td_orderdetails`
--

INSERT INTO `td_orderdetails` (`id`, `order_number`, `item_id`, `quantity`, `price`) VALUES
(49, '1', 26, 2, 92.00),
(50, '1', 38, 2, 74.00),
(51, '1', 43, 1, 60.00),
(52, '1', 46, 4, 54.00),
(53, '2', 31, 1, 131.00),
(54, '2', 43, 1, 60.00),
(55, '2', 41, 2, 74.00);

-- --------------------------------------------------------

--
-- Table structure for table `td_pendingorders`
--

CREATE TABLE `td_pendingorders` (
  `order_id` int(11) NOT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `td_pendingorders`
--

INSERT INTO `td_pendingorders` (`order_id`, `order_number`, `total_amount`, `status`, `created_at`) VALUES
(35, '1', 608, 'Pending', '2025-06-13 18:12:20'),
(36, '2', 339, 'Pending', '2025-06-13 18:25:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `td_fooditems`
--
ALTER TABLE `td_fooditems`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `td_orderdetails`
--
ALTER TABLE `td_orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_number` (`order_number`);

--
-- Indexes for table `td_pendingorders`
--
ALTER TABLE `td_pendingorders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_number` (`order_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `td_fooditems`
--
ALTER TABLE `td_fooditems`
  MODIFY `item_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `td_orderdetails`
--
ALTER TABLE `td_orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `td_pendingorders`
--
ALTER TABLE `td_pendingorders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `td_orderdetails`
--
ALTER TABLE `td_orderdetails`
  ADD CONSTRAINT `fk_orderdetails_order` FOREIGN KEY (`order_number`) REFERENCES `td_pendingorders` (`order_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `td_orderdetails_ibfk_1` FOREIGN KEY (`order_number`) REFERENCES `td_pendingorders` (`order_number`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
