-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2020 at 01:09 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_data`
--

CREATE TABLE `admin_data` (
  `id` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `is_reg_started` varchar(255) DEFAULT NULL,
  `reg_term_year` varchar(255) DEFAULT NULL,
  `max_reg_courses` int(11) DEFAULT NULL,
  `end_of_term` varchar(255) DEFAULT NULL,
  `or_pr_tw_exam_date` varchar(255) DEFAULT NULL,
  `final_exam_date` varchar(255) DEFAULT NULL,
  `first_PT_date` varchar(255) DEFAULT NULL,
  `second_PT_date` varchar(255) DEFAULT NULL,
  `examination_reg_date` varchar(255) DEFAULT NULL,
  `notice` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_data`
--

INSERT INTO `admin_data` (`id`, `password`, `username`, `is_reg_started`, `reg_term_year`, `max_reg_courses`, `end_of_term`, `or_pr_tw_exam_date`, `final_exam_date`, `first_PT_date`, `second_PT_date`, `examination_reg_date`, `notice`, `mother_name`) VALUES
(1, '03c2a2534fba680e0719708e230ce1af', 'gpn', 'y', 'ODD-19', 10, '', '', '', '', '', '', NULL, 'ABC');

-- --------------------------------------------------------

--
-- Table structure for table `coursereg`
--

CREATE TABLE `coursereg` (
  `id` int(11) NOT NULL,
  `regno` int(11) DEFAULT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `reg_date` varchar(255) DEFAULT NULL,
  `reg_term` varchar(255) DEFAULT NULL,
  `reg_exmt` varchar(255) DEFAULT NULL,
  `reg_can` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT 'n',
  `fail` varchar(255) DEFAULT 'y',
  `no_app` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `program` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `reg_term_year` varchar(255) DEFAULT NULL,
  `shift` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursereg`
--

INSERT INTO `coursereg` (`id`, `regno`, `course_code`, `reg_date`, `reg_term`, `reg_exmt`, `reg_can`, `pass`, `fail`, `no_app`, `remark`, `program`, `year`, `reg_term_year`, `shift`) VALUES
(38, 175120, 'IF6101', '15/12/2019', 'ODD', 'n', 'n', 'n', 'n', NULL, NULL, 'IF', 1, 'ODD-19', 1),
(39, 176112, 'IF6101', '29/12/2019', 'ODD', 'n', 'n', 'n', 'n', NULL, NULL, 'IF', 1, 'ODD-19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `term` varchar(255) DEFAULT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `is_offered` varchar(10) DEFAULT NULL,
  `is_validated` varchar(255) DEFAULT NULL,
  `programme` varchar(255) DEFAULT NULL,
  `cou_th_min` int(11) DEFAULT NULL,
  `cou_pt_min` int(11) DEFAULT NULL,
  `cou_tw_min` int(11) DEFAULT NULL,
  `cou_pr_min` int(11) DEFAULT NULL,
  `cou_or_min` int(11) DEFAULT NULL,
  `cou_th_max` int(11) DEFAULT NULL,
  `cou_pt_max` int(11) DEFAULT NULL,
  `cou_tw_max` int(11) DEFAULT NULL,
  `cou_pr_max` int(11) DEFAULT NULL,
  `cou_or_max` int(11) DEFAULT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `newcode` varchar(255) DEFAULT NULL,
  `cou_credit` int(11) DEFAULT NULL,
  `cou_remar` varchar(255) DEFAULT NULL,
  `cou_pre_r1` varchar(255) DEFAULT NULL,
  `cou_pre_r2` varchar(255) DEFAULT NULL,
  `cou_pre_r3` varchar(255) DEFAULT NULL,
  `cou_pre_r4` varchar(255) DEFAULT NULL,
  `is_exempted` varchar(255) DEFAULT NULL,
  `Course_Abbrevation` varchar(10) DEFAULT NULL,
  `Total_Marks` int(10) DEFAULT NULL,
  `department` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `year`, `term`, `course_code`, `course_name`, `is_offered`, `is_validated`, `programme`, `cou_th_min`, `cou_pt_min`, `cou_tw_min`, `cou_pr_min`, `cou_or_min`, `cou_th_max`, `cou_pt_max`, `cou_tw_max`, `cou_pr_max`, `cou_or_max`, `c_name`, `newcode`, `cou_credit`, `cou_remar`, `cou_pre_r1`, `cou_pre_r2`, `cou_pre_r3`, `cou_pre_r4`, `is_exempted`, `Course_Abbrevation`, `Total_Marks`, `department`) VALUES
(1, 1, 'ODD', 'IF6101', 'CMS', 'y', 'y', 'IF', 32, 8, 20, 0, 0, 80, 20, 50, 0, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 51),
(2, 1, 'ODD', 'IF6102', 'DLS', 'y', 'y', 'IF', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 51),
(3, 1, 'ODD', 'IF6103', 'BMT', 'y', 'y', 'IF', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 51),
(4, 1, 'EVEN', 'IF6104', 'EMT', 'n', 'n', 'IF', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 51),
(5, 1, 'ODD', 'IF6105', 'PHY', 'n', 'n', 'IF', 32, 8, 20, 0, 0, 80, 20, 50, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 51),
(6, 1, 'EVEN', 'IF6106', 'CHY', 'n', 'n', 'IF', 32, 8, 20, 0, 0, 80, 20, 50, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 51),
(7, 1, 'ODD', 'IF6107', 'EGR', 'y', 'y', 'IF', 0, 0, 10, 10, 0, 0, 0, 25, 25, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 51),
(8, 1, 'EVEN', 'IF6113', 'FET', 'n', 'n', 'IF', 32, 8, 20, 0, 0, 80, 20, 50, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 51),
(9, 1, 'ODD', 'IF6117', 'CFO', 'n', 'n', 'IF', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 51),
(10, 1, 'EVEN', 'IF6118', 'EOE', 'n', 'n', 'IF', 32, 8, 20, 0, 0, 80, 20, 50, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 51),
(11, 1, 'ODD', 'IF6119', 'CWP', 'y', 'y', 'IF', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 51),
(12, 2, 'EVEN', 'IF6234', 'MPO', 'n', 'n', 'IF', 32, 8, 10, 0, 0, 80, 20, 25, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(13, 2, 'ODD', 'IF6235', 'DST', 'n', 'n', 'IF', 32, 8, 10, 10, 0, 80, 20, 25, 25, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(14, 2, 'ODD', 'IF6236', 'DBMS', 'n', 'n', 'IF', 32, 8, 10, 10, 0, 80, 20, 25, 25, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(15, 1, 'EVEN', 'IF6237', 'PIC', 'n', 'n', 'IF', 32, 8, 10, 10, 0, 80, 20, 25, 25, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 51),
(16, 2, 'EVEN', 'IF6238', 'OOP', 'n', 'n', 'IF', 32, 8, 10, 20, 0, 80, 20, 25, 50, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(17, 2, 'ODD', 'IF6239', 'PCM', 'n', 'n', 'IF', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(18, 2, 'EVEN', 'IF6240', 'DCN', 'n', 'n', 'IF', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(19, 2, 'ODD', 'IF6241', 'WPD', 'n', 'n', 'IF', 0, 0, 20, 20, 0, 0, 0, 50, 50, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(20, 3, 'ODD', 'IF6242', 'OPS', 'n', 'n', 'IF', 32, 8, 10, 0, 0, 80, 20, 25, 0, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(21, 2, 'EVEN', 'IF6304', 'AMT', 'n', 'n', 'IF', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(22, 1, 'EVEN', 'IF6302', 'EVS', 'n', 'n', 'IF', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 51),
(23, 2, 'EVEN', 'IF6303', 'IOM', 'n', 'n', 'IF', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(24, 2, 'ODD', 'IF6306', 'MKM', 'n', 'n', 'IF', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(25, 3, 'EVEN', 'IF6309', 'EDP', 'n', 'n', 'IF', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(26, 2, 'ODD', 'IF6410', 'PPR', 'n', 'n', 'IF', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(27, 3, 'ODD', 'IF6411', 'SEM', 'n', 'n', 'IF', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(28, 3, 'EVEN', 'IF6412', 'PRO', 'n', 'n', 'IF', 0, 0, 20, 0, 20, 0, 0, 50, 0, 50, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(29, 2, 'EVEN', 'IF6434', 'SWE', 'n', 'n', 'IF', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(30, 3, 'ODD', 'IF6435', 'CMT', 'n', 'n', 'IF', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(31, 2, 'ODD', 'IF6436', 'DTE', 'n', 'n', 'IF', 32, 8, 10, 0, 0, 80, 20, 25, 0, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(32, 3, 'ODD', 'IF6437', 'JPR', 'n', 'n', 'IF', 32, 8, 10, 10, 0, 80, 20, 25, 25, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(33, 3, 'ODD', 'IF6438', 'STG', 'n', 'n', 'IF', 32, 8, 10, 0, 0, 80, 20, 25, 0, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(34, 2, 'EVEN', 'IF6439', 'SPT', 'n', 'n', 'IF', 0, 0, 10, 10, 0, 0, 0, 25, 25, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(35, 3, 'ODD', 'IF6537', 'OOM', 'n', 'n', 'IF', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(36, 3, 'ODD', 'IF6538', 'IFS', 'n', 'n', 'IF', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(37, 3, 'ODD', 'IF6539', 'ADM', 'n', 'n', 'IF', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(38, 3, 'EVEN', 'IF6540', 'ASP.NET', 'n', 'n', 'IF', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(39, 3, 'EVEN', 'IF6541', 'PHP', 'n', 'n', 'IF', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(40, 3, 'EVEN', 'IF6542', 'MCD', 'n', 'n', 'IF', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(41, 3, 'EVEN', 'IF6543', 'DMB', 'n', 'n', 'IF', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(42, 3, 'EVEN', 'IF6544', 'ADJ', 'n', 'n', 'IF', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(43, 3, 'EVEN', 'IF6545', 'LOS', 'n', 'n', 'IF', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(44, 3, 'ODD', 'IF6546', 'NAM', 'n', 'n', 'IF', 0, 0, 10, 0, 10, 0, 0, 25, 0, 25, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(45, 3, 'ODD', 'IF6547', 'MLT', 'n', 'n', 'IF', 0, 0, 10, 0, 10, 0, 0, 25, 0, 25, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(46, 3, 'ODD', 'IF6548', 'VB.NET', 'n', 'n', 'IF', 0, 0, 10, 0, 10, 0, 0, 25, 0, 25, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 51),
(47, 1, 'EVEN', 'CM6101', 'CMS', 'n', 'n', 'CM', 32, 8, 20, 0, 0, 80, 20, 50, 0, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 61),
(48, 1, 'ODD', 'CM6102', 'DLS', 'n', 'n', 'CM', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 61),
(49, 1, 'ODD', 'CM6103', 'BMT', 'n', 'n', 'CM', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 61),
(50, 1, 'EVEN', 'CM6104', 'EMT', 'n', 'n', 'CM', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 61),
(51, 1, 'ODD', 'CM6105', 'PHY', 'n', 'n', 'CM', 32, 8, 20, 0, 0, 80, 20, 50, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 61),
(52, 1, 'EVEN', 'CM6106', 'CHY', 'n', 'n', 'CM', 32, 8, 20, 0, 0, 80, 20, 50, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 61),
(53, 1, 'ODD', 'CM6107', 'EGR', 'n', 'n', 'CM', 0, 0, 10, 10, 0, 0, 0, 25, 25, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 61),
(54, 1, 'EVEN', 'CM6113', 'FET', 'n', 'n', 'CM', 32, 8, 20, 0, 0, 80, 20, 50, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 61),
(55, 1, 'ODD', 'CM6117', 'CFO', 'n', 'n', 'CM', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 61),
(56, 1, 'EVEN', 'CM6118', 'EOE', 'n', 'n', 'CM', 32, 8, 20, 0, 0, 80, 20, 50, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 61),
(57, 1, 'ODD', 'CM6119', 'CWP', 'n', 'n', 'CM', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 61),
(58, 2, 'ODD', 'CM6235', 'DST', 'n', 'n', 'CM', 32, 8, 10, 20, 0, 80, 20, 25, 50, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(59, 2, 'ODD', 'CM6236', 'DBMS', 'n', 'n', 'CM', 32, 8, 10, 10, 0, 80, 20, 25, 25, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(60, 1, 'EVEN', 'CM6247', 'PIC', 'n', 'n', 'CM', 32, 8, 10, 10, 0, 80, 20, 25, 25, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 61),
(61, 2, 'EVEN', 'CM6238', 'OOP', 'n', 'n', 'CM', 32, 8, 10, 20, 0, 80, 20, 25, 50, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(62, 2, 'ODD', 'CM6239', 'PCM', 'n', 'n', 'CM', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(63, 2, 'ODD', 'CM6241', 'WPD', 'n', 'n', 'CM', 0, 0, 20, 20, 0, 0, 0, 50, 50, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(64, 3, 'ODD', 'CM6242', 'OPS', 'n', 'n', 'CM', 32, 8, 10, 0, 0, 80, 20, 25, 0, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(65, 2, 'EVEN', 'CM6243', 'CPN', 'n', 'n', 'CM', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(66, 2, 'EVEN', 'CM6301', 'AMT', 'n', 'n', 'CM', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(67, 2, 'ODD', 'CM6305', 'SSL', 'n', 'n', 'CM', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(68, 2, 'ODD', 'CM6306', 'MKM', 'n', 'n', 'CM', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(69, 3, 'EVEN', 'CM6309', 'EDP', 'n', 'n', 'CM', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(70, 3, 'EVEN', 'CM6315', 'ECM', 'n', 'n', 'CM', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(71, 2, 'ODD', 'CM6410', 'PPR', 'n', 'n', 'CM', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(72, 3, 'ODD', 'CM6411', 'SEM', 'n', 'n', 'CM', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(73, 1, 'ODD', 'CM6302', 'EVS', 'n', 'n', 'CM', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 61),
(74, 2, 'EVEN', 'CM6303', 'IOM', 'n', 'n', 'CM', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(75, 3, 'EVEN', 'CM6412', 'PRO', 'n', 'n', 'CM', 0, 0, 20, 0, 20, 0, 0, 50, 0, 50, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(76, 2, 'EVEN', 'CM6434', 'SWE', 'n', 'n', 'CM', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(77, 2, 'ODD', 'CM6436', 'DTE', 'n', 'n', 'CM', 32, 8, 10, 0, 0, 80, 20, 25, 0, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(78, 3, 'ODD', 'CM6437', 'JPR', 'n', 'n', 'CM', 32, 8, 10, 10, 0, 80, 20, 25, 25, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(79, 3, 'ODD', 'CM6438', 'STG', 'n', 'n', 'CM', 32, 8, 10, 0, 0, 80, 20, 25, 0, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(80, 2, 'EVEN', 'CM6439', 'SPT', 'n', 'n', 'CM', 0, 0, 10, 10, 0, 0, 0, 25, 25, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(81, 3, 'ODD', 'CM6440', 'SSW', 'n', 'n', 'CM', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(82, 3, 'ODD', 'CM6537', 'OOM', 'n', 'n', 'CM', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(83, 3, 'ODD', 'CM6539', 'ADM', 'n', 'n', 'CM', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(84, 3, 'EVEN', 'CM654O', 'ASP.NET', 'n', 'n', 'CM', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(85, 3, 'EVEN', 'CM6541', 'PHP', 'n', 'n', 'CM', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(86, 3, 'EVEN', 'CM6542', 'MCD', 'n', 'n', 'CM', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(87, 3, 'EVEN', 'CM6544', 'ADG', 'n', 'n', 'CM', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(88, 3, 'EVEN', 'CM6545', 'LOS', 'n', 'n', 'CM', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(89, 3, 'ODD', 'CM6546', 'NAM', 'n', 'n', 'CM', 0, 0, 10, 0, 10, 0, 0, 25, 0, 25, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(90, 3, 'ODD', 'CM6548', 'VB.NET', 'n', 'n', 'CM', 0, 0, 10, 0, 10, 0, 0, 25, 0, 25, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(91, 3, 'ODD', 'CM6549', 'CSC', 'n', 'n', 'CM', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(92, 3, 'EVEN', 'CM6550', 'MCE', 'n', 'n', 'CM', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(93, 3, 'ODD', 'CM6551', 'CGR', 'n', 'n', 'CM', 0, 0, 10, 0, 10, 0, 0, 25, 0, 25, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 61),
(94, 1, 'ODD', 'ME6101', 'CMS', 'n', 'y', 'ME', 32, 8, 20, 0, 0, 80, 20, 50, 0, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 21),
(95, 1, 'EVEN', 'ME6102', 'DLS', 'n', 'n', 'ME', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 21),
(96, 1, 'ODD', 'ME6103', 'BMT', 'n', 'n', 'ME', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 21),
(97, 1, 'EVEN', 'ME6104', 'EMT', 'n', 'y', 'ME', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 21),
(98, 1, 'EVEN', 'ME6105', 'PHY', 'n', 'y', 'ME', 32, 8, 20, 0, 0, 80, 20, 50, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 21),
(99, 1, 'ODD', 'ME6106', 'CHY', 'n', 'n', 'ME', 32, 8, 20, 0, 0, 80, 20, 50, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 21),
(100, 1, 'ODD', 'ME6107', 'EGR', 'n', 'n', 'ME', 0, 0, 10, 10, 0, 0, 0, 25, 25, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 21),
(101, 1, 'EVEN', 'ME6108', 'EMH', 'n', 'n', 'ME', 32, 8, 20, 0, 0, 80, 20, 50, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 21),
(102, 1, 'ODD', 'ME6109', 'WSP', 'n', 'y', 'ME', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 21),
(103, 2, 'EVEN', 'ME6211', 'TEG', 'n', 'n', 'ME', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(104, 1, 'EVEN', 'ME6212', 'EDG', 'n', 'y', 'ME', 32, 8, 10, 0, 0, 80, 20, 25, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 21),
(105, 2, 'ODD', 'ME6213', 'SOM', 'n', 'n', 'ME', 32, 8, 10, 0, 0, 80, 20, 25, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(106, 2, 'EVEN', 'ME6214', 'MED', 'n', 'n', 'ME', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(107, 2, 'EVEN', 'ME6215', 'FMM', 'n', 'y', 'ME', 32, 8, 10, 10, 0, 80, 20, 25, 25, 0, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(108, 2, 'EVEN', 'ME6216', 'TOM', 'n', 'n', 'ME', 32, 8, 10, 0, 0, 80, 20, 25, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(109, 2, 'ODD', 'ME6217', 'MPR', 'n', 'n', 'ME', 32, 8, 10, 0, 0, 80, 20, 25, 0, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(110, 2, 'ODD', 'ME6218', 'MEM', 'n', 'n', 'ME', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(111, 1, 'EVEN', 'ME6219', 'CDR', 'n', 'n', 'ME', 0, 0, 10, 0, 0, 0, 0, 25, 0, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 21),
(112, 2, 'ODD', 'ME6220', 'ETE', 'n', 'n', 'ME', 32, 8, 10, 0, 0, 80, 20, 25, 0, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(113, 2, 'ODD', 'ME6229', 'POE', 'n', 'n', 'ME', 32, 8, 10, 0, 0, 80, 20, 25, 0, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(114, 2, 'ODD', 'ME6301', 'AMT', 'n', 'n', 'ME', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(115, 3, 'EVEN', 'ME6303', 'IOM', 'n', 'n', 'ME', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(116, 2, 'EVEN', 'ME6305', 'SSL', 'n', 'n', 'ME', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(117, 2, 'EVEN', 'ME6306', 'MKM', 'n', 'n', 'ME', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(118, 2, 'EVEN', 'ME6307', 'MMT', 'n', 'n', 'ME', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(119, 3, 'ODD', 'ME6309', 'EDP', 'n', 'n', 'ME', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(120, 3, 'ODD', 'ME6311', 'ACA', 'n', 'n', 'ME', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(121, 3, 'ODD', 'ME6312', 'PMS', 'n', 'n', 'ME', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(122, 2, 'ODD', 'ME6410', 'PPR', 'n', 'n', 'ME', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(123, 3, 'ODD', 'ME6411', 'SEM', 'n', 'n', 'ME', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(124, 3, 'EVEN', 'ME6412', 'PRO', 'n', 'n', 'ME', 0, 0, 20, 0, 20, 0, 0, 50, 0, 50, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(125, 3, 'ODD', 'ME6413', 'MQC', 'n', 'n', 'ME', 32, 8, 10, 10, 0, 80, 20, 25, 25, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(126, 3, 'EVEN', 'ME6414', 'DME', 'n', 'n', 'ME', 32, 8, 20, 0, 10, 80, 20, 50, 0, 25, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(127, 3, 'ODD', 'ME6415', 'MNS', 'n', 'n', 'ME', 32, 8, 10, 0, 0, 80, 20, 25, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(128, 3, 'ODD', 'ME6416', 'PEG', 'n', 'n', 'ME', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(129, 2, 'EVEN', 'ME6417', 'PPS', 'n', 'n', 'ME', 32, 8, 10, 10, 0, 80, 20, 25, 25, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(130, 3, 'EVEN', 'ME6418', 'AMP', 'n', 'n', 'ME', 32, 8, 20, 10, 0, 80, 20, 50, 25, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(131, 3, 'EVEN', 'ME6512', 'IPH', 'n', 'n', 'ME', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(132, 3, 'ODD', 'ME6513', 'AEG', 'n', 'n', 'ME', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(133, 3, 'EVEN', 'ME6514', 'IEN', 'n', 'n', 'ME', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(134, 3, 'ODD', 'ME6515', 'PPE', 'n', 'n', 'ME', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(135, 3, 'ODD', 'ME6516', 'RAC', 'n', 'n', 'ME', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(136, 3, 'ODD', 'ME6517', 'AES', 'n', 'n', 'ME', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(137, 3, 'ODD', 'ME6518', 'MEC', 'n', 'n', 'ME', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(138, 3, 'ODD', 'ME6519', 'MTX', 'n', 'n', 'ME', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(139, 3, 'ODD', 'ME6520', 'EDM', 'n', 'n', 'ME', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 21),
(140, 1, 'ODD', 'EL6101', 'CMS', 'n', 'n', 'E&TC', 32, 8, 20, 0, 0, 80, 20, 50, 0, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 0),
(141, 1, 'ODD', 'EL6102', 'DLS', 'n', 'n', 'E&TC', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 0),
(142, 1, 'ODD', 'EL6103', 'BMT', 'n', 'n', 'E&TC', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 0),
(143, 1, 'EVEN', 'EL6104', 'EMT', 'n', 'n', 'E&TC', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 0),
(144, 1, 'ODD', 'EL6105', 'PHY', 'n', 'n', 'E&TC', 32, 8, 20, 0, 0, 80, 20, 50, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 0),
(145, 1, 'EVEN', 'EL6106', 'CHY', 'n', 'n', 'E&TC', 32, 8, 20, 0, 0, 80, 20, 50, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 0),
(146, 1, 'EVEN', 'EL6107', 'EGR', 'n', 'n', 'E&TC', 0, 0, 10, 10, 0, 0, 0, 25, 25, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 0),
(147, 1, 'EVEN', 'EL6113', 'FET', 'n', 'n', 'E&TC', 32, 8, 20, 0, 0, 80, 20, 50, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 0),
(148, 1, 'ODD', 'EL6114', 'EWP', 'n', 'n', 'E&TC', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 0),
(149, 1, 'EVEN', 'EL6115', 'COA', 'n', 'n', 'E&TC', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 0),
(150, 1, 'EVEN', 'EL6116', 'EMC', 'n', 'n', 'E&TC', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 0),
(151, 1, 'ODD', 'EL6127', 'EWS', 'n', 'n', 'E&TC', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 0),
(152, 2, 'ODD', 'EL6244', 'BTX', 'n', 'n', 'E&TC', 32, 8, 10, 10, 0, 80, 20, 25, 25, 0, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(153, 2, 'ODD', 'EL6245', 'EMN', 'n', 'n', 'E&TC', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(154, 2, 'EVEN', 'EL6246', 'INI', 'n', 'n', 'E&TC', 32, 8, 10, 10, 0, 80, 20, 25, 25, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(155, 2, 'ODD', 'EL6247', 'DEX', 'n', 'n', 'E&TC', 32, 8, 10, 10, 0, 80, 20, 25, 25, 0, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(156, 2, 'EVEN', 'EL6248', 'LIC', 'n', 'n', 'E&TC', 32, 8, 10, 10, 0, 80, 20, 25, 25, 0, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(157, 2, 'ODD', 'EL6249', 'ACO', 'n', 'n', 'E&TC', 32, 8, 10, 10, 0, 80, 20, 25, 25, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(158, 3, 'ODD', 'EL6250', 'IEA', 'n', 'n', 'E&TC', 32, 8, 10, 10, 0, 80, 20, 25, 25, 0, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(159, 2, 'ODD', 'EL6251', 'CPG', 'n', 'n', 'E&TC', 32, 8, 10, 0, 0, 80, 20, 25, 0, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(160, 2, 'EVEN', 'EL6301', 'AMT', 'n', 'n', 'E&TC', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(161, 1, 'EVEN', 'EL6302', 'EVS', 'n', 'n', 'E&TC', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 0),
(162, 3, 'ODD', 'EL6303', 'IOM', 'n', 'n', 'E&TC', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(163, 2, 'ODD', 'EL6305', 'SSL', 'n', 'n', 'E&TC', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(164, 2, 'ODD', 'EL6306', 'MKM', 'n', 'n', 'E&TC', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(165, 2, 'EVEN', 'EL6309', 'EDP', 'n', 'n', 'E&TC', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(166, 2, 'EVEN', 'EL6310', 'RES', 'n', 'n', 'E&TC', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(167, 3, 'ODD', 'EL6410', 'PPR', 'n', 'n', 'E&TC', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(168, 3, 'ODD', 'EL6411', 'SEM', 'n', 'n', 'E&TC', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(169, 3, 'EVEN', 'EL6412', 'PRO', 'n', 'n', 'E&TC', 0, 0, 20, 0, 20, 0, 0, 50, 0, 50, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(170, 2, 'EVEN', 'EL6441', 'AET', 'n', 'n', 'E&TC', 32, 8, 10, 10, 0, 80, 20, 25, 25, 0, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(171, 3, 'ODD', 'EL6442', 'AVE', 'n', 'n', 'E&TC', 32, 8, 0, 0, 10, 80, 20, 0, 0, 25, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(172, 3, 'EVEN', 'EL6443', 'DCO', 'n', 'n', 'E&TC', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(173, 3, 'EVEN', 'EL6444', 'ACS', 'n', 'n', 'E&TC', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(174, 3, 'EVEN', 'EL6445', 'NTT', 'n', 'n', 'E&TC', 0, 0, 20, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(175, 3, 'ODD', 'EL6552', 'MIC', 'n', 'n', 'E&TC', 32, 8, 10, 10, 0, 80, 20, 25, 25, 0, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(176, 3, 'EVEN', 'EL6553', 'CSP', 'n', 'n', 'E&TC', 32, 8, 10, 0, 0, 80, 20, 25, 0, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(177, 2, 'EVEN', 'EL6554', 'CHN', 'n', 'n', 'E&TC', 32, 8, 20, 0, 10, 80, 20, 50, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(178, 3, 'ODD', 'EL6556', 'AMC', 'n', 'n', 'E&TC', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(179, 3, 'ODD', 'EL6557', 'PCS', 'n', 'n', 'E&TC', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(180, 3, 'EVEN', 'EL6558', 'MCM', 'n', 'n', 'E&TC', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(181, 3, 'EVEN', 'EL6559', 'EMS', 'n', 'n', 'E&TC', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(182, 3, 'EVEN', 'EL6560', 'MCS', 'n', 'n', 'E&TC', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(183, 3, 'EVEN', 'EL6561', 'AMW', 'n', 'n', 'E&TC', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(184, 3, 'EVEN', 'EL6562', 'VLT', 'n', 'n', 'E&TC', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(185, 3, 'EVEN', 'EL6563', 'IAM', 'n', 'n', 'E&TC', 32, 8, 10, 0, 10, 80, 20, 25, 0, 25, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'n', NULL, 100, 0),
(186, 3, 'ODD', 'IF', 'Sru', 'n', 'n', 'IF', 32, 8, 0, 0, 0, 80, 20, 0, 0, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 100, 51),
(187, 1, 'ODD', '77', '7', 'y', 'y', 'CM', 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 77, 61),
(189, 1, 'ODD', '8', '8', 'y', 'y', 'CM', 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 'y', NULL, 99, 61);

-- --------------------------------------------------------

--
-- Table structure for table `examreg`
--

CREATE TABLE `examreg` (
  `id` int(11) NOT NULL,
  `regno` varchar(255) DEFAULT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `ex_reg_date` varchar(255) DEFAULT NULL,
  `ex_reg_term` varchar(255) DEFAULT NULL,
  `ex_reg_year` int(11) DEFAULT NULL,
  `ex_exmt` int(11) DEFAULT '0',
  `ex_th` int(11) DEFAULT '0',
  `ex_pt` int(11) DEFAULT '0',
  `ex_tw` int(11) DEFAULT '0',
  `ex_pr` int(11) DEFAULT '0',
  `ex_or` int(11) DEFAULT '0',
  `ex_det` int(11) DEFAULT '0',
  `ex_back` int(11) DEFAULT '0',
  `ex_cancel` int(11) DEFAULT '1',
  `ex_pass` int(11) DEFAULT '0',
  `prog` varchar(255) DEFAULT NULL,
  `Ex` int(11) DEFAULT '0',
  `shift` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examreg`
--

INSERT INTO `examreg` (`id`, `regno`, `course_code`, `ex_reg_date`, `ex_reg_term`, `ex_reg_year`, `ex_exmt`, `ex_th`, `ex_pt`, `ex_tw`, `ex_pr`, `ex_or`, `ex_det`, `ex_back`, `ex_cancel`, `ex_pass`, `prog`, `Ex`, `shift`) VALUES
(75, '166127', ' CM6453', 'EVEN-19', 'ODD', 3, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 'CM', 0, 1),
(139, '165147', 'IF6101', 'ODD-19', 'ODD', 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 'IF', 0, 1),
(140, '165147', 'IF6102', 'ODD-19', 'ODD', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'IF', 0, 1),
(141, '165147', 'IF6103', 'ODD-19', 'ODD', 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'IF', 0, 1),
(142, '165147', 'IF6107', 'ODD-19', 'ODD', 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 'IF', 0, 1),
(143, '165147', 'IF6119', 'ODD-19', 'ODD', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'IF', 0, 1),
(159, '176112', 'IF6101', 'ODD-19', 'ODD', 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 'IF', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hod_data`
--

CREATE TABLE `hod_data` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `is_reg_started` varchar(2) DEFAULT 'n',
  `programme` varchar(255) DEFAULT NULL,
  `shift` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hod_data`
--

INSERT INTO `hod_data` (`id`, `firstname`, `lastname`, `password`, `username`, `education`, `user`, `is_reg_started`, `programme`, `shift`) VALUES
(1, 'S_R', 'DESHMUKH', 'DESHMUKH123', 'S_R', 'M.E', 'hod', 'n', 'CE', 1),
(2, 'C_Y', 'SEEMIKERI', 'SEEMIKERI123SS', 'C_YSS', 'ME', 'hod', 'n', 'ME', 2),
(3, 'RAJESH', 'SHELKE', 'SHELKE123', 'RAJESH', 'ME', 'hod', 'n', 'EE', 1),
(4, 'ABHIJIT_DINKAR', 'PAISODKAR', 'PAISODKAR123', 'ABHIJIT_DINKAR', 'PHD', 'hod', 'n', 'PE', 1),
(5, 'PRERNA_VIJAYKUMAR', 'RATHOD', 'RATHOD123', 'PRERNA_VIJAYKUMAR', 'PHD', 'hod', 'n', 'E&TC', 1),
(6, 'SHEKHAR_YADGIRI', 'GAJJAL', 'GAJJAL123', 'SHEKHAR_YADGIRI', 'ME', 'hod', 'n', 'AE', 1),
(7, 'N_N', 'GARUDE', 'GARUDE123', 'N_N', 'M.B.A.', 'hod', 'n', 'DDGM', 1),
(8, 'VISHAKHA_SANJAY', 'PATIL', 'PATIL123', 'VISHAKHA_SANJAY', 'B.ARCH', 'hod', 'n', 'IDD', 1),
(9, 'SACHIN_DATTATRAY', 'PABALE', 'PABALE123SS', 'SACHIN_DATTATRAYSS', 'PHD', 'hod', 'n', 'E&TC', 2),
(10, 'C_Y', 'SEEMIKERI', 'SEEMIKERI123', 'C_Y', 'ME', 'hod', 'n', 'ME', 1),
(11, 'S_R', 'DESHMUKH', 'DESHMUKH123SS', 'S_RSS', 'ME', 'hod', 'n', 'CE', 2),
(13, 'S_r', 'SEEMIKARI', 'SEEMIKARI123', 'S_r', 'PHD', 'hod', 'n', 'ME', 1),
(15, 'RCE', 'RCEL', 'RCE123', 'RCE', 'BE', 'registrar', 'n', 'CE', 1),
(16, 'RME', 'RMEL', 'RME123', 'RME', 'BE', 'registrar', 'n', 'ME', 1),
(17, 'REE', 'REEL', 'REE123', 'REE', 'BE', 'registrar', 'n', 'EE', 1),
(19, 'RPE', 'RPEL', 'RPE123', 'RPE', 'BE', 'registrar', 'n', 'PE', 1),
(20, 'RE&TCE', 'RE&TCEL', 'RE&TCE123', 'RE&TCE', 'BE', 'registrar', 'n', 'E&TC', 1),
(21, 'RAE', 'RAEL', 'RAE123', 'RAE', 'BE', 'registrar', 'n', 'AE', 1),
(22, 'RDDGME', 'RDDGML', 'RDDGME123', 'RDDGME', 'BE', 'registrar', 'n', 'DDGM', 1),
(23, 'RIDDE', 'RIDDL', 'RIDDE123', 'RIDDE', 'BE', 'registrar', 'n', 'IDD', 1),
(24, 'Yogesh', 'Sanap', 'sanap123', 'sanap', 'ME', 'hod', 'y', 'CM', 1),
(25, 'PRAVIN', 'MALI', 'MALI123', 'MALI', 'ME', 'hod', 'y', 'IF', 1),
(26, 'RCM', 'RCML', 'RCM123', 'RCM', 'BE', 'registrar', 'n', 'CM', 1),
(27, 'RIF', 'RIFL', 'RIF123', 'RIF', 'BE', 'registrar', 'n', 'IF', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invigilator_details`
--

CREATE TABLE `invigilator_details` (
  `Invigilator_Id` varchar(20) NOT NULL,
  `Invigilator_Password` varchar(30) DEFAULT NULL,
  `Invigilator_Name` varchar(30) DEFAULT NULL,
  `Invigilator_Base` varchar(30) NOT NULL,
  `Department` int(10) DEFAULT NULL,
  `Designation` varchar(30) DEFAULT NULL,
  `Allowance_Key` varchar(20) DEFAULT NULL,
  `Email_Id` varchar(30) NOT NULL,
  `Contact_Number` bigint(12) NOT NULL,
  `Qualification` varchar(30) NOT NULL,
  `Experience` varchar(30) NOT NULL,
  `Specialized_Subject1` varchar(30) NOT NULL,
  `Specialized_Subject2` varchar(30) NOT NULL,
  `Specialized_Subject3` varchar(30) NOT NULL,
  `Specialized_Subject4` varchar(30) NOT NULL,
  `Address` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invigilator_details`
--

INSERT INTO `invigilator_details` (`Invigilator_Id`, `Invigilator_Password`, `Invigilator_Name`, `Invigilator_Base`, `Department`, `Designation`, `Allowance_Key`, `Email_Id`, `Contact_Number`, `Qualification`, `Experience`, `Specialized_Subject1`, `Specialized_Subject2`, `Specialized_Subject3`, `Specialized_Subject4`, `Address`) VALUES
('Administrator', 'dgplq', 'Administrator', 'indigenous', NULL, 'Administrator', NULL, 'bagulpragati15@gmail.com', 9874663310, 'M.E(Computer Technology)', '52', 'Java Programming', 'C Programming', 'None', 'None', 'College Road,Nashik'),
('DTEGPN1232', 'vhohqdjrphc', 'Selena Gomez', 'indigenous', 0, '', 'DTEGPN123224267', 'bagulpragati15@gmail.com', 7845123690, 'B.E(Computer Technology)', '36', 'COM. FUNDA. & ORGANIZATIO', 'COMMUNICATION SKILLS', 'None', 'None', 'College Road,Nashik'),
('DTEGPN1233', 'mxvwlqelhehu', 'Justin Drew Bieber', 'indigenous', 61, 'Head Of Department', 'DTEGPN123385633', 'bagulpragati15@gmail.com', 9874563210, 'B.E(Computer Technology)', '36', 'COMMUNICATION SKILLS', 'None', 'None', 'None', 'College Road,Nashik'),
('DTEGPN1234', 'jljlkdglg', 'Zayn Malik', 'external', 0, '', 'DTEGPN12347629', 'bagulpragati15@gmail.com', 9874563210, 'B.E(Computer Technology)', '24', 'C PROGRAMMING', 'C++ PROGRAMMING', 'None', 'None', 'College Road,Nashik'),
('DTEGPN15462', 'jljlkdglg', 'Gigi Hadid', 'indigenous', 0, '', 'DTEGPN1546260845', 'bagulpragati15@gmail.com', 9874512306, 'B.Tech(Computer Technology)', '36', 'COMMUNICATION SKILLS', 'C++ PROGRAMMING', 'None', 'None', 'College Road,Nashik'),
('DTEGPN4444', 'GWHJSQ7777', 'Radhi Jay Shetty', 'indigenous', 61, 'Lecturer', 'DTEGPN444420060', 'radhishetty@gmail.com', 8830675426, 'B.Tech(Computer Technology)', '36', 'DBMS', 'C PROGRAMMING', 'JAVA PROGRAMMING', 'OBJ.ORIENTED PROGRAMMING C++', 'College Road, Nashik'),
('dtepbm18601', '456', 'pravin', 'indigenous', 0, '', 'dtepbm1860174828', 'pravinmali598@gmail.com', 81088993352, 'Mtech', '10', 'JAVA PROGRAMMING', 'None', 'None', 'None', 'gp nashik');

-- --------------------------------------------------------

--
-- Table structure for table `mark_sheets`
--

CREATE TABLE `mark_sheets` (
  `Mark_Sheet_Number` int(20) NOT NULL,
  `Course_Code` varchar(10) NOT NULL,
  `Examination_Scheme` varchar(20) DEFAULT NULL,
  `Department` int(10) NOT NULL,
  `Invigilator_Assigned` varchar(20) DEFAULT NULL,
  `Examination` varchar(30) DEFAULT NULL,
  `Confirmation` varchar(6) DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark_sheets`
--

INSERT INTO `mark_sheets` (`Mark_Sheet_Number`, `Course_Code`, `Examination_Scheme`, `Department`, `Invigilator_Assigned`, `Examination`, `Confirmation`) VALUES
(1, 'CM4354', 'Periodic Test', 61, NULL, 'ODD-2019', 'false'),
(2, 'CM4354', 'Periodic Test', 61, NULL, NULL, 'false'),
(6, 'CM4354', 'Periodic Test', 61, NULL, 'ODD-2019', 'false'),
(10, 'CM6242', 'Theory', 61, 'DTEGPN4444', 'ODD-19', 'false'),
(20, 'CM6242', 'Theory', 61, NULL, 'null', 'false'),
(7896, 'CM6453', 'Periodic Test', 61, 'DTEGPN1233', 'Summer-2019', 'false'),
(8521, 'CM6453', 'Periodic Test', 61, NULL, 'Summer-2019', 'false'),
(9632, 'CM4354', 'Periodic Test', 61, NULL, 'Summer-2019', 'false'),
(12351, 'CM6101', 'Periodic Test', 61, 'Administrator', 'Summer-2019', 'false'),
(12352, 'CM6106', 'Periodic Test', 61, 'Administrator', 'Summer-2019', 'false'),
(611903, 'CM6453', 'Theory', 61, 'Administrator', 'Summer-2019', 'false'),
(611904, 'CM6453', 'Termwork', 61, 'DTEGPN1233', 'Summer-2019', 'true'),
(1691121, 'CM6453', 'Periodic Test', 61, 'DTEGPN1233', 'Summer-2019', 'false'),
(1691122, 'CM6453', 'Periodic Test', 61, 'DTEGPN1233', 'Summer-2019', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `Student_Id` int(11) NOT NULL,
  `Course_Code` varchar(20) NOT NULL,
  `Is_Backlog` int(11) NOT NULL,
  `Periodic_Test` int(11) NOT NULL,
  `Theory` int(11) NOT NULL,
  `Theory_Mark_Sheet_Number` int(11) NOT NULL,
  `Theory_Is_Pass` bit(1) NOT NULL,
  `Termwork` int(11) NOT NULL,
  `Termwork_Is_Pass` bit(1) NOT NULL,
  `Practical` int(11) NOT NULL,
  `Practical_Is_Pass` bit(1) NOT NULL,
  `Oral` int(11) NOT NULL,
  `Oral_Is_Pass` bit(1) NOT NULL,
  `Total` int(11) NOT NULL,
  `Examination` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_courses`
--

INSERT INTO `student_courses` (`Student_Id`, `Course_Code`, `Is_Backlog`, `Periodic_Test`, `Theory`, `Theory_Mark_Sheet_Number`, `Theory_Is_Pass`, `Termwork`, `Termwork_Is_Pass`, `Practical`, `Practical_Is_Pass`, `Oral`, `Oral_Is_Pass`, `Total`, `Examination`) VALUES
(166126, 'CM6453', 0, 20, 35, 0, b'0', 25, b'0', 30, b'0', 25, b'1', 65, 'WINTER-18'),
(166126, 'CM6798', 0, 20, 35, 0, b'0', 25, b'0', 30, b'0', 25, b'1', 65, 'WINTER-18');

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` int(11) NOT NULL,
  `rollno` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `s_name` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `username` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `programme` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `term` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `adm_date` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `caste` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `cerno` int(11) DEFAULT NULL,
  `conduct` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `dob_place` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `dob_words` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `leaving_date` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `ncode1` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `ncode2` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `photo` blob,
  `progress` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `reason_of_learning` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `reg_cand_no` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `s_add` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `s_adm_yr` int(11) DEFAULT NULL,
  `s_category` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `s_dob` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `s_hsc_mark` float DEFAULT NULL,
  `s_hsc_pass` int(11) DEFAULT NULL,
  `s_l_school` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `s_regular` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `s_remark` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `s_sex` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `s_ssc_mark` float DEFAULT NULL,
  `s_ssc_tech` int(11) DEFAULT NULL,
  `s_ut_ru` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `shift2007` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `sign` blob,
  `state` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `status1` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `status2` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `stcr1` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `stcr2` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `studying_when` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `s_email` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `phone_no` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `shift` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `rollno`, `s_name`, `username`, `password`, `programme`, `year`, `term`, `adm_date`, `caste`, `cerno`, `conduct`, `dob_place`, `dob_words`, `leaving_date`, `ncode1`, `ncode2`, `photo`, `progress`, `reason_of_learning`, `reg_cand_no`, `s_add`, `s_adm_yr`, `s_category`, `s_dob`, `s_hsc_mark`, `s_hsc_pass`, `s_l_school`, `s_regular`, `s_remark`, `s_sex`, `s_ssc_mark`, `s_ssc_tech`, `s_ut_ru`, `shift2007`, `sign`, `state`, `status1`, `status2`, `stcr1`, `stcr2`, `studying_when`, `s_email`, `phone_no`, `shift`) VALUES
(4, '176111', 'Raju Chaudhari', '176111', '176111', 'CM', 3, 'ODD', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2017, NULL, NULL, 0, 0, NULL, 'r', NULL, 'M', 85, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'raju12345@gmail.com', '9875462310', 1),
(5, '176112', 'Shruti Hasan', '176112', '176112', 'IF', 1, 'ODD', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2017, NULL, NULL, 0, 0, NULL, 'r', NULL, 'F', 95, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shruti10@gmail.com', '9032154687', 1),
(6, '176113', 'John Battle', '176113', '176113', 'CM', 3, 'ODD', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2017, NULL, NULL, 0, 0, NULL, 'r', NULL, 'M', 88, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'john111@gmail.com', '9215467380', 1),
(7, '176114', 'Sham Yadhav', '176114', '176114', 'CM', 3, 'ODD', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2017, NULL, NULL, 0, 0, NULL, 'r', NULL, 'M', 85, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sham34@gmail.com', '9120546083', 1),
(8, '185101', 'Shraddha Chaudhari', '185101', '185101', 'IF', 2, 'ODD', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2018, NULL, NULL, 0, 0, NULL, 'r', NULL, 'F', 90, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shraddha@gmail.com', '930214587', 1),
(9, '185102', 'Poonam Deole', '185102', '185102', 'IF', 2, 'ODD', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2018, NULL, NULL, 65, 1, NULL, 'd', NULL, 'F', 88, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'poonam1020@gmail.com', '91020306040', 1),
(10, '185103', 'Rahul Kaushik', '175103', '175103', 'IF', 2, 'ODD', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2018, NULL, NULL, 0, 0, NULL, 'r', NULL, 'M', 80, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rahulk@gmail.com', '9021546876', 1),
(11, '185104', 'Radha Krishna', '185104', '185104', 'IF', 2, 'ODD', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2018, NULL, NULL, 0, 0, NULL, 'r', NULL, 'F', 89, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'radhae123@gmail.com', '9010203050', 1),
(29, '175114', 'Aniket Dalal', '175114', '175114', 'IF', 3, 'ODD', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2017, NULL, NULL, 0, 0, NULL, 'r', NULL, 'M', 90, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aniket@gmail.com', '9658741230', 1),
(30, '175118', 'Sarvesh Dhawale', '175118', '175118', 'IF', 3, 'ODD', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2017, NULL, NULL, 88, 0, NULL, 'r', NULL, 'M', 0, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sarvesh@gmail.com', '9874521036', 1),
(31, '175110', 'Himani', '175110', '175110', 'IF', 1, 'ODD', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2017, NULL, NULL, 0, 0, NULL, 'r', NULL, 'F', 95, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'himani@gmail.com', '9658741203', 1),
(32, '166126', 'Utkarsha Ramchandra Nehe', '166126', '166126', 'IF', 1, 'ODD', '2017', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2017, NULL, NULL, 0, 0, NULL, 'r', NULL, 'F', 90, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'srushti@gmail.com', '95442186630', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `Student_Id` int(10) NOT NULL,
  `Student_Password` varchar(20) DEFAULT NULL,
  `Student_Name` varchar(20) DEFAULT NULL,
  `Student_Department` int(10) DEFAULT NULL,
  `Student_Year` varchar(10) DEFAULT NULL,
  `Student_Term` varchar(10) DEFAULT NULL,
  `Student_Address` varchar(50) DEFAULT NULL,
  `Student_Date_Of_Birth` varchar(20) DEFAULT NULL,
  `Student_Blood_Group` varchar(5) DEFAULT NULL,
  `Gender` varchar(5) NOT NULL,
  `Student_Contact_Number` int(12) DEFAULT NULL,
  `Student_Email_Id` varchar(20) DEFAULT NULL,
  `Previous_Credits` int(20) NOT NULL,
  `Total_Credits` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`Student_Id`, `Student_Password`, `Student_Name`, `Student_Department`, `Student_Year`, `Student_Term`, `Student_Address`, `Student_Date_Of_Birth`, `Student_Blood_Group`, `Gender`, `Student_Contact_Number`, `Student_Email_Id`, `Previous_Credits`, `Total_Credits`) VALUES
(166101, '166101', 'Gautam K Gambhir', 61, '1', 'EVEN', 'Nashik', '7/0', NULL, '', NULL, NULL, 64, 200);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_data`
--
ALTER TABLE `admin_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursereg`
--
ALTER TABLE `coursereg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_code` (`course_code`);

--
-- Indexes for table `examreg`
--
ALTER TABLE `examreg`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regno_5` (`regno`,`course_code`,`ex_reg_date`,`ex_reg_term`,`ex_reg_year`);

--
-- Indexes for table `hod_data`
--
ALTER TABLE `hod_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invigilator_details`
--
ALTER TABLE `invigilator_details`
  ADD PRIMARY KEY (`Invigilator_Id`);

--
-- Indexes for table `mark_sheets`
--
ALTER TABLE `mark_sheets`
  ADD PRIMARY KEY (`Mark_Sheet_Number`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`Student_Id`,`Course_Code`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`Student_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_data`
--
ALTER TABLE `admin_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coursereg`
--
ALTER TABLE `coursereg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `examreg`
--
ALTER TABLE `examreg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `hod_data`
--
ALTER TABLE `hod_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
