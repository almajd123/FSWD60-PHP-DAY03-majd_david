-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 13, 2019 at 09:09 AM
-- Server version: 10.3.12-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr09_david_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `agencys`
--

CREATE TABLE `agencys` (
  `age_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone_nr` int(11) DEFAULT NULL,
  `address` varchar(35) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agencys`
--

INSERT INTO `agencys` (`age_id`, `name`, `phone_nr`, `address`, `city`, `zip_code`) VALUES
(1, 'Car2Fun', 67623132, 'Krottenbachstr. 102', 'Wien', 1180),
(2, 'Car2Fun', 65612656, 'Gablenzgasse 102', 'Wien', 1160),
(3, 'Car2Fun', 65612656, 'Gablenzgasse 15', 'Wien', 1160),
(4, 'Car2Fun', 65612656, 'Burggasse 90', 'Wien', 1070),
(5, 'Car2Fun', 65612656, 'Heumarkt 102', 'Wien', 1010),
(6, 'Car2salt', 65665336, 'Hermesstrasse 102', 'Salzburg', 5020),
(7, 'Car2salt', 65665336, 'Schlossgasse 42', 'Salzburg', 5020),
(8, 'Car2salt', 65665336, 'Marktstrasse 12', 'Salzburg', 5020),
(9, 'Car2salt', 65665336, 'Kirchengasse 22', 'Salzburg', 5020),
(10, 'Car2sthal', 65665336, 'Stahlstrasse 102', 'Linz', 4020),
(11, 'Car2sthal', 65665336, 'Voeststrasse 12', 'Linz', 4020),
(12, 'Car2sthal', 65665336, 'Donaugasse 32', 'Linz', 4020),
(13, 'Car2sthal', 65665336, 'Wienerstrasse 202', 'Linz', 4020);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `book_id` int(11) NOT NULL,
  `fk_user_id` int(11) DEFAULT NULL,
  `fk_cars_parked_id` int(11) DEFAULT NULL,
  `book_dt` datetime DEFAULT NULL,
  `pickup_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`book_id`, `fk_user_id`, `fk_cars_parked_id`, `book_dt`, `pickup_dt`) VALUES
(1, 2, 1, '2019-03-06 12:30:00', '2019-03-07 14:00:00'),
(2, 1, 2, '2019-03-06 13:30:00', '2019-03-07 16:00:00'),
(3, 5, 3, '2019-03-06 14:30:00', '2019-03-07 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(11) NOT NULL,
  `license_pl_nr` varchar(12) DEFAULT NULL,
  `fk_car_de_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `license_pl_nr`, `fk_car_de_id`) VALUES
(1, 'W-2313N', 1),
(2, 'W-22133N', 3),
(3, 'W-2315N', 5),
(4, 'W-23636N', 3),
(5, 'W-25410NI', 2),
(6, 'W-23654N', 1),
(7, 'W-2314N', 4),
(8, 'W-23410N', 3),
(9, 'W-23187N', 4),
(10, 'W-23137N', 1),
(11, 'W-23139N', 1),
(12, 'W-231377N', 1),
(13, 'sB-23134N', 1),
(14, 'SB-3233N', 2),
(15, 'SB-32313N', 3),
(16, 'SB-72313N', 4),
(17, 'L-82313N', 5),
(18, 'L-923413N', 5),
(19, 'L-23413NI', 2),
(20, 'L-2314323N', 1),
(21, 'W-23613N', 3),
(22, 'W-236613N', 5),
(23, 'W-235413N', 4),
(24, 'W-23313N', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cars_parked`
--

CREATE TABLE `cars_parked` (
  `cars_parked_id` int(11) NOT NULL,
  `fk_age_id` int(11) DEFAULT NULL,
  `fk_car_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars_parked`
--

INSERT INTO `cars_parked` (`cars_parked_id`, `fk_age_id`, `fk_car_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 10, 11),
(12, 1, 12),
(13, 2, 13),
(14, 3, 14),
(15, 4, 15);

-- --------------------------------------------------------

--
-- Table structure for table `cars_rented`
--

CREATE TABLE `cars_rented` (
  `car_r_id` int(11) NOT NULL,
  `fk_book_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars_rented`
--

INSERT INTO `cars_rented` (`car_r_id`, `fk_book_id`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `cars_returned`
--

CREATE TABLE `cars_returned` (
  `returned_id` int(11) NOT NULL,
  `fk_car_r_id` int(11) DEFAULT NULL,
  `fk_age_id` int(11) DEFAULT NULL,
  `date_of_re` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars_returned`
--

INSERT INTO `cars_returned` (`returned_id`, `fk_car_r_id`, `fk_age_id`, `date_of_re`) VALUES
(1, 1, 4, '2019-03-09 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `car_details`
--

CREATE TABLE `car_details` (
  `car_de_id` int(11) NOT NULL,
  `model_name` varchar(20) DEFAULT NULL,
  `brand` varchar(15) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `ps` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `build_year` year(4) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car_details`
--

INSERT INTO `car_details` (`car_de_id`, `model_name`, `brand`, `type`, `ps`, `color`, `build_year`, `purchase_date`) VALUES
(1, 'Fiesta', 'Ford', 'Coupe', 105, 'weiß', 2016, '2016-07-30'),
(2, 'Clio', 'Renaulte', 'Coupe', 85, 'Blau', 2017, '2017-09-10'),
(3, '1er', 'BMW', 'Limousien', 135, 'weiß', 2018, '2018-11-30'),
(4, '3er', 'BMW', 'Coupe', 150, 'silver', 2017, '2017-07-30'),
(5, 'A3', 'Audi', 'Coupe', 125, 'schwarz', 2016, '2016-04-20');

-- --------------------------------------------------------

--
-- Table structure for table `credit_card`
--

CREATE TABLE `credit_card` (
  `card_nr` int(11) NOT NULL,
  `fk_user_id` int(11) DEFAULT NULL,
  `card_type` varchar(15) DEFAULT NULL,
  `expire_date` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `credit_card`
--

INSERT INTO `credit_card` (`card_nr`, `fk_user_id`, `card_type`, `expire_date`) VALUES
(39897845, 2, 'Maestro', '06/19'),
(45789623, 1, 'Visa', '07/20'),
(54547856, 3, 'Visa', '08/20'),
(54654132, 5, 'Visa', '07/21'),
(56454313, 5, 'MasterCard', '04/20'),
(78754217, 1, 'MasterCard', '12/22'),
(78754512, 2, 'Visa', '11/21'),
(79895543, 4, 'MasterCard', '12/21');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `address` varchar(35) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`user_id`, `first_name`, `last_name`, `email`, `pass`, `address`, `city`, `zip_code`) VALUES
(1, 'Richard', 'Lugner', 'lugner@wien.at', 'lugner1', 'Gablenzgasse 32/10', 'Wien', 1160),
(2, 'Mausi', 'Lugner', 'mausi@wien.at', 'mausi123', 'Gablenzgasse 32/10', 'Wien', 1160),
(3, 'Johnny', 'Dreifinger', 'dreifinger@linz.at', 'jonny123', 'Geblenzgasse 11/10', 'Linz', 4020),
(4, 'Pheope', 'Freund', 'bla@bla.at', 'bla123', 'Schusterstr. 132/10', 'Salzburg', 5040),
(5, 'Joe', 'Doe', 'hy@world.com', 'lololol3', 'Genzgasse 2/4', 'Wien', 1160),
(6, 'Blabla', 'BluBlu', 'Bla@bli.at', 'bla1234', 'Burggasse 23', 'Wien', 1070),
(19, 'hahah', 'hahah', 'hah@haha.at', '123444', 'gulleng.23', 'wien', 1030),
(20, 'Christian', 'Ronaldo', 'cr7@ea.com', 'thegoat7', 'Via de Rue 45', 'Tourin', 23234);

-- --------------------------------------------------------

--
-- Table structure for table `reservation_payments`
--

CREATE TABLE `reservation_payments` (
  `book_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `tax_amount` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation_payments`
--

INSERT INTO `reservation_payments` (`book_id`, `amount`, `tax_amount`, `date`) VALUES
(1, 30, 10, '2019-03-08 19:00:00'),
(2, 30, 10, '2019-03-08 20:00:00'),
(3, 30, 10, '2019-03-08 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `return_payments`
--

CREATE TABLE `return_payments` (
  `returned_id` int(11) NOT NULL,
  `damage_amount` int(11) DEFAULT NULL,
  `tax_amount` int(11) DEFAULT NULL,
  `fuel_amount` int(11) DEFAULT NULL,
  `date_of_pay` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `return_payments`
--

INSERT INTO `return_payments` (`returned_id`, `damage_amount`, `tax_amount`, `fuel_amount`, `date_of_pay`) VALUES
(1, 2000, 200, 45, '2019-04-20 10:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agencys`
--
ALTER TABLE `agencys`
  ADD PRIMARY KEY (`age_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `fk_user_id` (`fk_user_id`),
  ADD KEY `fk_cars_parked_id` (`fk_cars_parked_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `fk_car_de_id` (`fk_car_de_id`);

--
-- Indexes for table `cars_parked`
--
ALTER TABLE `cars_parked`
  ADD PRIMARY KEY (`cars_parked_id`),
  ADD KEY `fk_car_id` (`fk_car_id`),
  ADD KEY `fk_age_id` (`fk_age_id`);

--
-- Indexes for table `cars_rented`
--
ALTER TABLE `cars_rented`
  ADD PRIMARY KEY (`car_r_id`),
  ADD KEY `fk_book_id` (`fk_book_id`);

--
-- Indexes for table `cars_returned`
--
ALTER TABLE `cars_returned`
  ADD PRIMARY KEY (`returned_id`),
  ADD KEY `fk_car_r_id` (`fk_car_r_id`),
  ADD KEY `fk_age_id` (`fk_age_id`);

--
-- Indexes for table `car_details`
--
ALTER TABLE `car_details`
  ADD PRIMARY KEY (`car_de_id`);

--
-- Indexes for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD PRIMARY KEY (`card_nr`),
  ADD KEY `fk_user_id` (`fk_user_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `reservation_payments`
--
ALTER TABLE `reservation_payments`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `return_payments`
--
ALTER TABLE `return_payments`
  ADD PRIMARY KEY (`returned_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agencys`
--
ALTER TABLE `agencys`
  MODIFY `age_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cars_parked`
--
ALTER TABLE `cars_parked`
  MODIFY `cars_parked_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cars_rented`
--
ALTER TABLE `cars_rented`
  MODIFY `car_r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cars_returned`
--
ALTER TABLE `cars_returned`
  MODIFY `returned_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `car_details`
--
ALTER TABLE `car_details`
  MODIFY `car_de_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`fk_user_id`) REFERENCES `customer` (`user_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`fk_cars_parked_id`) REFERENCES `cars_parked` (`cars_parked_id`);

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`fk_car_de_id`) REFERENCES `car_details` (`car_de_id`);

--
-- Constraints for table `cars_parked`
--
ALTER TABLE `cars_parked`
  ADD CONSTRAINT `cars_parked_ibfk_1` FOREIGN KEY (`fk_car_id`) REFERENCES `cars` (`car_id`),
  ADD CONSTRAINT `cars_parked_ibfk_2` FOREIGN KEY (`fk_age_id`) REFERENCES `agencys` (`age_id`);

--
-- Constraints for table `cars_rented`
--
ALTER TABLE `cars_rented`
  ADD CONSTRAINT `cars_rented_ibfk_1` FOREIGN KEY (`fk_book_id`) REFERENCES `booking` (`book_id`);

--
-- Constraints for table `cars_returned`
--
ALTER TABLE `cars_returned`
  ADD CONSTRAINT `cars_returned_ibfk_1` FOREIGN KEY (`fk_car_r_id`) REFERENCES `cars_rented` (`car_r_id`),
  ADD CONSTRAINT `cars_returned_ibfk_2` FOREIGN KEY (`fk_age_id`) REFERENCES `agencys` (`age_id`);

--
-- Constraints for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD CONSTRAINT `credit_card_ibfk_1` FOREIGN KEY (`fk_user_id`) REFERENCES `customer` (`user_id`);

--
-- Constraints for table `reservation_payments`
--
ALTER TABLE `reservation_payments`
  ADD CONSTRAINT `reservation_payments_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `booking` (`book_id`);

--
-- Constraints for table `return_payments`
--
ALTER TABLE `return_payments`
  ADD CONSTRAINT `return_payments_ibfk_1` FOREIGN KEY (`returned_id`) REFERENCES `cars_returned` (`returned_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
