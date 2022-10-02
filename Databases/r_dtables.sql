-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2018 at 07:56 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `r&d_tables`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrative_work`
--

CREATE TABLE `administrative_work` (
  `Serial_no` int(10) NOT NULL,
  `Work_Description` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Belongs_to_COE` varchar(20) COLLATE utf8_bin NOT NULL,
  `Book_Type` varchar(20) COLLATE utf8_bin NOT NULL,
  `Department` varchar(30) COLLATE utf8_bin NOT NULL,
  `Publisher_Name` varchar(30) COLLATE utf8_bin NOT NULL,
  `Title` varchar(40) COLLATE utf8_bin NOT NULL COMMENT 'Enter title of book',
  `Author` varchar(30) COLLATE utf8_bin NOT NULL,
  `Co-Author` varchar(30) COLLATE utf8_bin NOT NULL,
  `Number_of_pages` int(10) NOT NULL,
  `ISBN_no` varchar(15) COLLATE utf8_bin NOT NULL,
  `Publication_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `conferences`
--

CREATE TABLE `conferences` (
  `Date_From` date DEFAULT NULL COMMENT 'Enter the date  since when you attended the conference',
  `Date_to` date DEFAULT NULL COMMENT 'Till what date you have attended',
  `Title` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `Broad_area` varchar(30) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `externally funded projects`
--

CREATE TABLE `externally funded projects` (
  `Belongs_to_COE` varchar(20) COLLATE utf8_bin NOT NULL,
  `Department` varchar(30) COLLATE utf8_bin NOT NULL,
  `Project_Title` varchar(50) COLLATE utf8_bin NOT NULL,
  `Name_of_principal_investigator` varchar(30) COLLATE utf8_bin NOT NULL,
  `Nature_of_Project` varchar(30) COLLATE utf8_bin NOT NULL,
  `SponsoredBy` varchar(30) COLLATE utf8_bin NOT NULL,
  `Total_Project_Fund` double NOT NULL,
  `Date_From` date NOT NULL,
  `Date_to` date NOT NULL,
  `Project_Status` varchar(10) COLLATE utf8_bin NOT NULL,
  `Ownership` varchar(20) COLLATE utf8_bin NOT NULL,
  `Joint_with` varchar(20) COLLATE utf8_bin NOT NULL,
  `Joint_Belongs_to` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `extracurricular_activity`
--

CREATE TABLE `extracurricular_activity` (
  `Serial_no` int(10) NOT NULL,
  `Work_Description` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `inhousetraining`
--

CREATE TABLE `inhousetraining` (
  `Time_Duration` int(11) NOT NULL COMMENT 'To enter for how many weeks the training lasted',
  `Subject` int(50) NOT NULL,
  `Place_of_Training` int(50) NOT NULL,
  `No_of_participants` int(11) NOT NULL,
  `Description_workshop` int(200) NOT NULL,
  `Training_Description` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `innovations`
--

CREATE TABLE `innovations` (
  `Department` varchar(30) COLLATE utf8_bin NOT NULL,
  `Innovation_date` date NOT NULL,
  `Product/process` varchar(30) COLLATE utf8_bin NOT NULL,
  `TechnologyTransfer` varchar(10) COLLATE utf8_bin NOT NULL,
  `Transfer_Date` date NOT NULL,
  `Transfer_to_org` varchar(30) COLLATE utf8_bin NOT NULL,
  `Org_name` int(30) NOT NULL,
  `Commercialized_orNot` varchar(10) COLLATE utf8_bin NOT NULL,
  `Amount` double NOT NULL,
  `Commercialized_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `institutional_lgn`
--

CREATE TABLE `institutional_lgn` (
  `Username` varchar(20) COLLATE utf8_bin NOT NULL COMMENT 'Enter valid username using some alphanumeric characters ',
  `Password` varchar(12) COLLATE utf8_bin NOT NULL COMMENT 'minimum length should be 8 chars with special characters',
  `Role` varchar(20) COLLATE utf8_bin NOT NULL COMMENT 'Choose your respective role',
  `Captcha` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `Page_number` int(10) NOT NULL,
  `Page_title` varchar(50) COLLATE utf8_bin NOT NULL,
  `Header` varchar(100) COLLATE utf8_bin NOT NULL,
  `Body` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`Page_number`, `Page_title`, `Header`, `Body`) VALUES
(1, 'Home', '', ''),
(2, 'Scholars', 'Scholars', ''),
(4, 'Publications', 'Publications', ''),
(5, 'Laboratories', 'Laboratories', ''),
(6, 'PhD Programs', 'PhD Programs', ''),
(7, 'PhD Supervisors', 'PhD Supervisors', ''),
(3, 'Projects', 'Projects', '');

-- --------------------------------------------------------

--
-- Table structure for table `outhouse_training`
--

CREATE TABLE `outhouse_training` (
  `Time_Duration` int(11) NOT NULL COMMENT 'To enter for how many weeks the training lasted',
  `Subject` varchar(30) COLLATE utf8_bin NOT NULL,
  `Place_of_Training` varchar(50) COLLATE utf8_bin NOT NULL,
  `Description_of_Workshop` varchar(200) COLLATE utf8_bin NOT NULL,
  `Training_Description` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `papers`
--

CREATE TABLE `papers` (
  `Title_of_papers` varchar(50) COLLATE utf8_bin NOT NULL COMMENT 'Enter title of paper',
  `Whether_referred` varchar(10) COLLATE utf8_bin NOT NULL COMMENT 'Choose whether you have referred any papers or not',
  `Department` varchar(30) COLLATE utf8_bin NOT NULL,
  `National/International` varchar(20) COLLATE utf8_bin NOT NULL COMMENT 'Choose whether the paper published was national or international',
  `Journal/ProceedingName` varchar(50) COLLATE utf8_bin NOT NULL,
  `VolumeNO` int(10) NOT NULL,
  `Page_no` mediumint(8) NOT NULL,
  `Author_status` varchar(15) COLLATE utf8_bin NOT NULL,
  `Publication_year` year(4) NOT NULL,
  `IfJoint_academic_inst` varchar(10) COLLATE utf8_bin NOT NULL,
  `IfJoint_R&D_inst` varchar(5) COLLATE utf8_bin NOT NULL,
  `citations` varchar(30) COLLATE utf8_bin NOT NULL,
  `download` longtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `patents`
--

CREATE TABLE `patents` (
  `Department` varchar(30) COLLATE utf8_bin NOT NULL,
  `Obtained/Filed` varchar(10) COLLATE utf8_bin NOT NULL,
  `Patent Registered` varchar(10) COLLATE utf8_bin NOT NULL,
  `Patent Title` varchar(30) COLLATE utf8_bin NOT NULL,
  `Patent Type` varchar(10) COLLATE utf8_bin NOT NULL,
  `Patent Number` int(15) NOT NULL,
  `Patent Grant Year` year(4) NOT NULL,
  `Commercialized_or_Not` varchar(10) COLLATE utf8_bin NOT NULL,
  `Commercialized Date` date NOT NULL,
  `Amount` double NOT NULL,
  `Joint with inst` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `r&dhead_login`
--

CREATE TABLE `r&dhead_login` (
  `Name` varchar(30) COLLATE utf8_bin NOT NULL,
  `Department` text COLLATE utf8_bin NOT NULL,
  `Designation` varchar(30) COLLATE utf8_bin NOT NULL,
  `Contact No.` bigint(10) NOT NULL,
  `Email_Id` varchar(30) COLLATE utf8_bin NOT NULL,
  `Qualification` varchar(20) COLLATE utf8_bin NOT NULL,
  `Gender` varchar(10) COLLATE utf8_bin NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Address` text COLLATE utf8_bin NOT NULL,
  `Industrial_exp` int(6) NOT NULL,
  `Teaching_exp` int(5) NOT NULL,
  `Date_of_joining` date NOT NULL,
  `Recognized_as_PHDSupervisor` varchar(20) COLLATE utf8_bin NOT NULL,
  `Upload_photo` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `update_work_info`
--

CREATE TABLE `update_work_info` (
  `Supervisor` varchar(20) COLLATE utf8_bin NOT NULL,
  `University` varchar(30) COLLATE utf8_bin NOT NULL,
  `Programs` varchar(30) COLLATE utf8_bin NOT NULL,
  `Registration_no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `workshops`
--

CREATE TABLE `workshops` (
  `Department` varchar(30) COLLATE utf8_bin NOT NULL,
  `Title` varchar(30) COLLATE utf8_bin NOT NULL,
  `Date_from` date NOT NULL,
  `Date_to` date NOT NULL,
  `Broad_area` varchar(30) COLLATE utf8_bin NOT NULL,
  `No_of_participants` int(10) NOT NULL,
  `Amount` double NOT NULL,
  `Under_TEQIP_or_Not` varchar(10) COLLATE utf8_bin NOT NULL,
  `Description` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD UNIQUE KEY `ISBN_no` (`ISBN_no`);

--
-- Indexes for table `institutional_lgn`
--
ALTER TABLE `institutional_lgn`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `r&dhead_login`
--
ALTER TABLE `r&dhead_login` ADD FULLTEXT KEY `Address` (`Address`);

--
-- Indexes for table `update_work_info`
--
ALTER TABLE `update_work_info`
  ADD UNIQUE KEY `Registration_no` (`Registration_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
