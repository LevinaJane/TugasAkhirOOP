-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2024 at 10:55 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restomanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` char(5) NOT NULL CHECK (`EmployeeID` regexp '^EMP[0-9][0-9]$'),
  `EmployeeName` varchar(50) NOT NULL,
  `Location` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `EmployeeName`, `Location`) VALUES
('EMP01', 'Aprilia', 'Bandung'),
('EMP02', 'Annisa', 'Bandung'),
('EMP03', 'Siti', 'Bandung'),
('EMP04', 'Lala', 'Bandung'),
('EMP05', 'Sri', 'Bandung'),
('EMP06', 'Dadang', 'Bandung'),
('EMP07', 'Harja', 'Bandung'),
('EMP08', 'Akmal', 'Bandung'),
('EMP09', 'Aksel', 'Bandung'),
('EMP10', 'Alana', 'Bandung'),
('EMP11', 'Akila', 'Jakarta'),
('EMP12', 'Adib', 'Jakarta'),
('EMP13', 'Adena', 'Jakarta'),
('EMP14', 'Ayu', 'Jakarta'),
('EMP15', 'Putra', 'Jakarta'),
('EMP16', 'Jihan', 'Jakarta'),
('EMP17', 'Rosa', 'Jakarta'),
('EMP18', 'Salma', 'Jakarta'),
('EMP19', 'Adi', 'Jakarta'),
('EMP20', 'Ben', 'Jakarta'),
('EMP21', 'Ajar', 'Bali'),
('EMP22', 'Putu', 'Bali'),
('EMP23', 'Asep', 'Bali'),
('EMP24', 'Agung', 'Bali'),
('EMP25', 'Martin', 'Bali'),
('EMP26', 'Luky', 'Bali'),
('EMP27', 'Danu', 'Bali'),
('EMP28', 'Fina', 'Bali'),
('EMP29', 'Egi', 'Bali'),
('EMP30', 'Zaki', 'Bali'),
('EMP31', 'Ihsan', 'Surabaya'),
('EMP32', 'Vani', 'Surabaya'),
('EMP33', 'Rizki', 'Surabaya'),
('EMP34', 'Naufal', 'Surabaya'),
('EMP35', 'Kate', 'Surabaya'),
('EMP36', 'Tio', 'Samarinda'),
('EMP37', 'Izam', 'Samarinda'),
('EMP38', 'Fiona', 'Samarinda'),
('EMP39', 'Vale', 'Samarinda'),
('EMP40', 'Arthur', 'Samarinda'),
('EMP41', 'Bryan', 'Padang'),
('EMP42', 'Reza', 'Padang'),
('EMP43', 'Egi', 'Padang'),
('EMP44', 'Alana', 'Padang'),
('EMP45', 'Ifa', 'Padang');

-- --------------------------------------------------------

--
-- Table structure for table `menuperlocation`
--

CREATE TABLE `menuperlocation` (
  `MenuID` varchar(10) NOT NULL,
  `MenuName` varchar(50) NOT NULL,
  `MenuPrice` float NOT NULL,
  `Narasi` varchar(100) DEFAULT NULL,
  `OriginLocation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menuperlocation`
--

INSERT INTO `menuperlocation` (`MenuID`, `MenuName`, `MenuPrice`, `Narasi`, `OriginLocation`) VALUES
('LC01', 'Surabaya Seafood Symphony', 160000, 'Hidangan ini menampilkan aneka seafood segar yang diolah dengan rempah-rempah khas', 'Kenjeran, Surabaya'),
('LC02', 'Samarinda River Delight', 175000, 'Daging ayam panggang dengan rempah khas Samarinda, disajikan dengan nasi daun pisang dan sayuran lok', 'Mahakam, Samarinda'),
('LC03', 'Padang Spice Adventure', 160000, 'Petualangan rasa dengan rempah-rempah khas Padang. Rendang sapi yang lembut dan gulai khas Padang, d', 'Padang, Sumatra Barat'),
('MN01', 'Grilled Chicken Steak', 85000, '-', '-'),
('MN02', 'Pasta Carbonara', 80000, '-', '-'),
('MN03', 'Salad', 60000, '-', '-'),
('MN04', 'Beef Burger', 90000, '-', '-'),
('MN05', 'Mango Smoothie Bowl', 65000, '-', '-'),
('MN06', 'Classic Pizza', 80000, '-', '-'),
('MN07', 'Teriyaki Chicken Bowl', 80000, '-', '-'),
('MN08', 'Seafood Pasta', 80000, '-', '-'),
('MN09', 'Crispy Calamari Rings', 60000, '-', '-'),
('MN10', 'Pancake', 50000, '-', '-'),
('SP01', 'Mystic Miso Salmon', 180000, 'Pengalaman kuliner yang menggabungkan cita rasa Jepang dengan keunikan rasa salmon', '-'),
('SP02', 'Truffle Infused Filet Mignon', 220000, 'Kelezatan daging filet mignon bertekstur lembut dipadukan dengan aroma truffle yang khas', '-'),
('SP03', 'Citrus Glazed Shrimp Skewers', 160000, 'Sajian udang segar yang diselimuti dengan lapisan saus jeruk segar', '-'),
('SP04', 'Saffron Infused Lobster Fettuccine', 280000, 'Fettuccine dengan saus lapisan saffron yang memperkaya rasa dan potongan daging lobster', '-'),
('SP05', 'Tropical Glazed Duck', 220000, 'Potongan bebek panggang dengan glaze yang memberikan sentuhan rasa manis dan asam tropis', '-');

-- --------------------------------------------------------

--
-- Table structure for table `transactiondetail`
--

CREATE TABLE `transactiondetail` (
  `TransactionID` char(5) NOT NULL CHECK (`TransactionID` regexp '^TR[0-9][0-9][0-9]$'),
  `TableAmount` int(11) NOT NULL,
  `TableType` varchar(20) NOT NULL,
  `PersonPerTable` int(11) NOT NULL,
  `MenuID` varchar(10) DEFAULT NULL,
  `OrderStatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transactionheader`
--

CREATE TABLE `transactionheader` (
  `TransactionID` char(5) NOT NULL CHECK (`TransactionID` regexp '^TR[0-9][0-9][0-9]$'),
  `LocationName` varchar(30) NOT NULL,
  `EmployeeID` char(5) DEFAULT NULL CHECK (`EmployeeID` regexp '^EMP[0-9][0-9]$'),
  `CustomerName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `menuperlocation`
--
ALTER TABLE `menuperlocation`
  ADD PRIMARY KEY (`MenuID`);

--
-- Indexes for table `transactiondetail`
--
ALTER TABLE `transactiondetail`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `MenuID` (`MenuID`);

--
-- Indexes for table `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactiondetail`
--
ALTER TABLE `transactiondetail`
  ADD CONSTRAINT `transactiondetail_ibfk_1` FOREIGN KEY (`TransactionID`) REFERENCES `transactionheader` (`TransactionID`),
  ADD CONSTRAINT `transactiondetail_ibfk_2` FOREIGN KEY (`MenuID`) REFERENCES `menuperlocation` (`MenuID`);

--
-- Constraints for table `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD CONSTRAINT `transactionheader_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
