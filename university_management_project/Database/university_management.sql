-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2018 at 01:04 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `adesh_university`
--

CREATE TABLE `adesh_university` (
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adesh_university`
--

INSERT INTO `adesh_university` (`Name`) VALUES
('Adesh1'),
('Adesh2'),
('Adesh3'),
('Adesh4'),
('Adesh5');

-- --------------------------------------------------------

--
-- Table structure for table `aliah_university`
--

CREATE TABLE `aliah_university` (
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aliah_university`
--

INSERT INTO `aliah_university` (`Name`) VALUES
('\0'),
('aliah1'),
('aliah2'),
('aliah3'),
('aliah4'),
('aliah5');

-- --------------------------------------------------------

--
-- Table structure for table `delhi_university`
--

CREATE TABLE `delhi_university` (
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delhi_university`
--

INSERT INTO `delhi_university` (`Name`) VALUES
('Hindu'),
('Indraprastha'),
('Ramjas'),
('Hansraj'),
('\0'),
('delhi5');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Name` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rajasthan_university`
--

CREATE TABLE `rajasthan_university` (
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rajasthan_university`
--

INSERT INTO `rajasthan_university` (`Name`) VALUES
('rajasthan1'),
('rajasthan2'),
('rajasthan3'),
('rajasthan4'),
('rajasthan5');

-- --------------------------------------------------------

--
-- Table structure for table `rajiv_gandhi`
--

CREATE TABLE `rajiv_gandhi` (
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rajiv_gandhi`
--

INSERT INTO `rajiv_gandhi` (`Name`) VALUES
('Rajiv1'),
('Rajiv2'),
('Rajiv3'),
('Rajiv4'),
('Rajiv5');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Name` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `University` varchar(30) NOT NULL,
  `College` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Name`, `Password`, `University`, `College`) VALUES
('Aayush', 'kuma', 'adesh_university', 'Rajiv1'),
('Rajendra', 'kumar', 'aliah_university', 'Rajiv2'),
('asd', 'dsa', 'adesh_university', 'Rajiv1'),
('aneesh', 'nair', 'aliah_university', 'Rajiv1'),
('asdx', 'cx', 'Choose option', 'Choose option'),
('kundan', 'choudhary', 'rajasthan_university', 'rajasthan4');

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`Name`) VALUES
('adesh_university'),
('aliah_university'),
('delhi_university'),
('rajasthan_university'),
('rajiv_gandhi');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
