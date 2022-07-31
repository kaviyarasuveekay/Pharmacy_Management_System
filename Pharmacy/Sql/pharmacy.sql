-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2022 at 06:45 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_credentials`
--

CREATE TABLE `admin_credentials` (
  `USERNAME` varchar(50) COLLATE utf16_bin NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf16_bin NOT NULL,
  `PHARMACY_NAME` varchar(20) COLLATE utf16_bin NOT NULL,
  `ADDRESS` varchar(100) COLLATE utf16_bin NOT NULL,
  `EMAIL` varchar(30) COLLATE utf16_bin NOT NULL,
  `CONTACT_NUMBER` varchar(50) COLLATE utf16_bin NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2=staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `admin_credentials`
--

INSERT INTO `admin_credentials` (`USERNAME`, `PASSWORD`, `PHARMACY_NAME`, `ADDRESS`, `EMAIL`, `CONTACT_NUMBER`, `type`) VALUES
('Kaviyarasu', 'Kavi1234', 'KAVI PHARMACY', '234, Opposite To VIT, Vellore', 'staff@gmail.com', '7639595075', 2),
('admin', 'KaviKavi', 'KAVI PHARMACY', '234,VIT park, Vellore.', 'kavi@gmail.com', '7654345678', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) COLLATE utf16_bin NOT NULL,
  `CONTACT_NUMBER` varchar(10) COLLATE utf16_bin NOT NULL,
  `ADDRESS` varchar(100) COLLATE utf16_bin NOT NULL,
  `DOCTOR_NAME` varchar(20) COLLATE utf16_bin NOT NULL,
  `DOCTOR_ADDRESS` varchar(100) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `NAME`, `CONTACT_NUMBER`, `ADDRESS`, `DOCTOR_NAME`, `DOCTOR_ADDRESS`) VALUES
(22, 'Kaviyaraasu', '7645767897', 'Nehru Streetnear Old Bus Standkarur', 'Rose', 'New Parkkarur'),
(23, 'Raj Kumar', '9087678908', 'New Streetold Roadkarur', 'Rose', 'Star Buildingkarur'),
(24, 'Sasikumar', '9834567832', 'Power Buildingnew Roadcovai', 'Bob', 'Rose Buildingcovai Main Roadcovai'),
(25, 'Deepan', '7658790876', 'Karur Streetdeepan Roadtrichy', 'Kavi', 'Covai Storesnew Streetcovai'),
(26, 'Raju', '8098786545', 'Sk Buildingnew Bustandkarur', 'Kaviyarasu', 'Ak Streetopposite To Parkkarur'),
(28, 'Kayal', '9807675489', 'Mullai Nagr,near Abc Clg,karur.', 'Malar', 'Marutham Nagar,new Street,karur,'),
(29, 'Sasi', '6754345678', 'New Streetvit Chennai', 'Kavi', 'Street Parkkarur'),
(30, 'Qwe', '4567890987', 'Adsafqffeasfafcfaeffa', 'Asd', 'Adfadfadafadsfa');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `INVOICE_ID` int(11) NOT NULL,
  `NET_TOTAL` double NOT NULL DEFAULT 0,
  `INVOICE_DATE` date NOT NULL DEFAULT current_timestamp(),
  `CUSTOMER_ID` int(11) NOT NULL,
  `TOTAL_AMOUNT` double NOT NULL,
  `TOTAL_DISCOUNT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`INVOICE_ID`, `NET_TOTAL`, `INVOICE_DATE`, `CUSTOMER_ID`, `TOTAL_AMOUNT`, `TOTAL_DISCOUNT`) VALUES
(34, 116.4, '2021-09-22', 22, 120, 3.6),
(35, 160, '2021-11-22', 24, 160, 0),
(36, 50, '2021-11-22', 23, 50, 0),
(37, 18, '2021-10-22', 22, 18, 0),
(38, 9, '2021-11-22', 25, 9, 0),
(39, 16, '2021-11-06', 24, 16, 0),
(40, 20, '2021-11-23', 26, 20, 0),
(41, 100, '2021-11-10', 23, 100, 0),
(42, 1615, '2021-11-23', 27, 1615, 0),
(43, 150, '2021-11-23', 25, 150, 0),
(44, 27.44, '2021-11-25', 22, 28, 0.56),
(45, 9, '2022-01-19', 22, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `PACKING` varchar(20) COLLATE utf16_bin NOT NULL,
  `GENERIC_NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `SUPPLIER_NAME` varchar(100) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`ID`, `NAME`, `PACKING`, `GENERIC_NAME`, `SUPPLIER_NAME`) VALUES
(17, 'Paracetamol', '10', 'Acetaminophen', 'Arunraj'),
(18, 'Aspirin', '10', 'Acetaminophen', 'Kaviyarasu'),
(19, 'Tylenol', '10', 'Acetaminophen', 'Sasi'),
(21, 'Ambrodil Syrub', '1', 'Ambroxol', 'Kaviyarasu'),
(22, 'Dolo 500', '10', 'Acetaminophen', 'Priya'),
(23, 'Dolo 650', '10', 'Acetaminophen', 'Kaviyarasu'),
(24, 'Cipladine', '10', 'Cipladine', 'Sasi'),
(25, 'T-bact', '5', 'Mupirocin', 'Arunraj'),
(26, 'Rantac Syrub', '50', 'Rantoic', 'Priya'),
(27, 'Glybera', '2', 'Alipogene Tiparvovec', 'Jeeva'),
(28, 'Zincovit', '1', 'ZIN', 'Jeeva'),
(29, 'Rantac-D', '10', 'Simethicone Systemic', 'Alice'),
(30, 'We', '1', 'Io', 'Kaviyarasu'),
(31, 'Tablet', '12', 'Gsrfgwg', 'Kaviyarasu'),
(32, 'Lo', '12', 'Er', 'Kaviyarasu'),
(33, 'Az', '34', 'Az', 'Jeeva'),
(34, 'De', '10', 'Er', 'Jeeva'),
(35, 'As', '12', 'As', 'Alice');

-- --------------------------------------------------------

--
-- Table structure for table `medicines_stock`
--

CREATE TABLE `medicines_stock` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `BATCH_ID` varchar(20) COLLATE utf16_bin NOT NULL,
  `EXPIRY_DATE` varchar(10) COLLATE utf16_bin NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `MRP` double NOT NULL,
  `RATE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `medicines_stock`
--

INSERT INTO `medicines_stock` (`ID`, `NAME`, `BATCH_ID`, `EXPIRY_DATE`, `QUANTITY`, `MRP`, `RATE`) VALUES
(9, 'Paracetamol', 'PAR15', '01/23', 36, 11, 9),
(10, 'Aspirin', 'ASP15', '01/23', 48, 9, 8),
(11, 'Tylenol', 'TYL15', '01/23', 48, 9, 7),
(12, 'Tylenol', 'TYL22', '01/23', 50, 200, 170),
(13, 'Ambrodil Syrub', 'AMP22', '08/22', 48, 80, 60),
(14, 'Dolo 500', 'DOL22', '01/23', 46, 7, 5),
(15, 'Dolo 650', 'DOL23', '11/22', 48, 8, 7),
(16, 'Cipladine', 'CIP25', '11/21', 25, 23, 22.5),
(17, 'T-bact', 'TBA28', '10/21', 9, 50, 47),
(18, 'Rantac Syrub', 'RAN23', '01/24', 0, 50, 47),
(19, 'Glybera', 'GLY23', '01/23', 19, 1500, 1480),
(20, 'Zincovit', 'ZIN21', '09/21', 20, 250, 240),
(22, 'We', 'WE34', '01/22', 4, 200, 150),
(23, 'Tablet', 'FRWFWE3324', '01/22', 2, 200, 150),
(24, 'Lo', 'ER45', '03/22', 2, 3, 2),
(25, 'Az', 'AZ34', '02/22', 5, 5, 4),
(26, 'De', 'ER', '02/22', 3, 34, 23),
(27, 'As', 'AS', '02/22', 12, 23, 21);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `SUPPLIER_NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `INVOICE_NUMBER` int(11) NOT NULL,
  `VOUCHER_NUMBER` int(11) NOT NULL,
  `PURCHASE_DATE` varchar(10) COLLATE utf16_bin NOT NULL,
  `TOTAL_AMOUNT` double NOT NULL,
  `PAYMENT_STATUS` varchar(20) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`SUPPLIER_NAME`, `INVOICE_NUMBER`, `VOUCHER_NUMBER`, `PURCHASE_DATE`, `TOTAL_AMOUNT`, `PAYMENT_STATUS`) VALUES
('Kaviyarasu', 1, 11, '2021-09-15', 1200, 'PAID'),
('Kaviyarasu', 2, 12, '2021-09-22', 12100, 'DUE'),
('Sasi', 3, 13, '2021-10-25', 675, 'PAID'),
('Arunraj', 4, 14, '2021-10-28', 470, 'PAID'),
('Priya', 5, 15, '2021-11-23', 235, 'PAID'),
('Jeeva', 6, 16, '2021-11-23', 29600, 'DUE'),
('Jeeva', 7, 17, '2021-11-23', 4800, 'PAID'),
('Alice', 8, 18, '2021-11-23', 1080, 'PAID'),
('Kaviyarasu', 34, 19, '2022-01-20', 600, 'PAID'),
('Kaviyarasu', 67, 20, '2022-01-20', 300, 'DUE'),
('Kaviyarasu', 56, 21, '2022-02-22', 4, 'PAID'),
('Jeeva', 59, 22, '2022-02-22', 20, 'PAID'),
('Jeeva', 65, 23, '2022-02-25', 69, 'PAID'),
('Alice', 64, 24, '2022-02-25', 252, 'PAID');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `CUSTOMER_ID` varchar(100) COLLATE utf16_bin NOT NULL,
  `INVOICE_NUMBER` int(11) NOT NULL,
  `MEDICINE_NAME` varchar(21) COLLATE utf16_bin NOT NULL,
  `BATCH_ID` varchar(10) COLLATE utf16_bin NOT NULL,
  `EXPIRY_DATE` varchar(10) COLLATE utf16_bin NOT NULL,
  `QUANTITY` int(10) NOT NULL,
  `MRP` int(10) NOT NULL,
  `DISCOUNT` double NOT NULL,
  `TOTAL` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`CUSTOMER_ID`, `INVOICE_NUMBER`, `MEDICINE_NAME`, `BATCH_ID`, `EXPIRY_DATE`, `QUANTITY`, `MRP`, `DISCOUNT`, `TOTAL`) VALUES
('22', 34, 'Paracetamol', 'PAR15', '01/23', 12, 10, 3, 116),
('24', 35, 'Ambrodil Syrub', 'AMP22', '08/22', 2, 80, 0, 160),
('23', 36, 'T-bact', 'TBA28', '11/21', 1, 50, 0, 50),
('22', 37, 'Tylenol', 'TYL15', '01/23', 2, 9, 0, 18),
('25', 38, 'Aspirin', 'ASP15', '01/23', 1, 9, 0, 9),
('24', 39, 'Dolo 650', 'DOL23', '11/22', 2, 8, 0, 16),
('26', 40, 'Paracetamol', 'PAR15', '01/23', 2, 10, 0, 20),
('23', 41, 'Rantac Syrub', 'RAN23', '01/24', 2, 50, 0, 100),
('27', 42, 'Cipladine', 'CIP25', '11/21', 5, 23, 0, 115),
('27', 42, 'Glybera', 'GLY23', '01/23', 1, 1500, 0, 1500),
('25', 43, 'Rantac Syrub', 'RAN23', '01/24', 3, 50, 0, 150),
('22', 44, 'Dolo 500', 'DOL22', '01/23', 4, 7, 2, 27),
('22', 45, 'Aspirin', 'ASP15', '01/23', 1, 9, 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `EMAIL` varchar(100) COLLATE utf16_bin NOT NULL,
  `CONTACT_NUMBER` varchar(10) COLLATE utf16_bin NOT NULL,
  `ADDRESS` varchar(100) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`ID`, `NAME`, `EMAIL`, `CONTACT_NUMBER`, `ADDRESS`) VALUES
(32, 'Kaviyarasu', 'kavi@gmail.com', '7658976056', 'Nehru Streetnear Old BustandKarur'),
(33, 'Sasi', 'sasi@gmail.com', '6754345987', 'Kalai Nagarnear Parktrichy'),
(34, 'Arunraj', 'arun@gmail.com', '7658790876', 'Sk Nagarold Roadkarur'),
(38, 'Jeeva', 'jeva@gmail.com', '7867589076', 'New Bustandkarur'),
(39, 'Priya', 'priya@gmail.com', '8098786523', 'Aks Nagarnear Avs Hotelsalem'),
(40, 'Alice', 'alice@hmail.com', '7890876546', '23,ghandhi Street,near Avs Tower,trichy.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_credentials`
--
ALTER TABLE `admin_credentials`
  ADD PRIMARY KEY (`USERNAME`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`INVOICE_ID`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `medicines_stock`
--
ALTER TABLE `medicines_stock`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `BATCH_ID` (`BATCH_ID`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`VOUCHER_NUMBER`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `INVOICE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `medicines_stock`
--
ALTER TABLE `medicines_stock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `VOUCHER_NUMBER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
