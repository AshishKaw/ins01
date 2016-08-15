-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 26, 2016 at 03:20 PM
-- Server version: 5.1.37
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ins01`
--

-- --------------------------------------------------------

--
-- Table structure for table `corp_acc_tbl`
--

CREATE TABLE IF NOT EXISTS `corp_acc_tbl` (
  `acc_id` int(11) NOT NULL DEFAULT '0',
  `acc_status` varchar(50) NOT NULL,
  `acc_name` varchar(200) DEFAULT NULL,
  `corp_name` varchar(200) DEFAULT NULL,
  `corp_email_1` varchar(200) DEFAULT NULL,
  `corp_email_2` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zip` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `phone_1` varchar(25) DEFAULT NULL,
  `phone_2` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `associate_name` varchar(200) DEFAULT NULL,
  `associate_tel` varchar(50) DEFAULT NULL,
  `associate_mobile` varchar(25) DEFAULT NULL,
  `associate_email` varchar(200) DEFAULT NULL,
  `acc_plan_ref` int(11) DEFAULT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `currency` varchar(25) NOT NULL,
  `logo` varchar(500) NOT NULL,
  KEY `corp_acc_id` (`acc_id`),
  KEY `corp_acc_name` (`acc_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corp_acc_tbl`
--

INSERT INTO `corp_acc_tbl` (`acc_id`, `acc_status`, `acc_name`, `corp_name`, `corp_email_1`, `corp_email_2`, `address`, `city`, `state`, `zip`, `country`, `phone_1`, `phone_2`, `fax`, `mobile`, `associate_name`, `associate_tel`, `associate_mobile`, `associate_email`, `acc_plan_ref`, `comments`, `currency`, `logo`) VALUES
(1000000001, 'ACTIVE', 'demo_corp', 'NCR', 'ashish.kaw88@gmail.com', 'kaw_ashish@yahoo.co.in', '203 - Gayatri Appartments, Sector - 45 ', 'Faridabad', 'Haryana', '121003', 'India', '+919419160592', '+919419863200', NULL, '+918860009888', 'Ashish Kaw', '+918860009888', '+918860009888', 'ashish.kaw88@yahoo.co.in', NULL, 'This is a Demo Account', 'INR', 'titlencr.png');

-- --------------------------------------------------------

--
-- Table structure for table `corp_admin_tbl`
--

CREATE TABLE IF NOT EXISTS `corp_admin_tbl` (
  `acc_id` int(11) NOT NULL,
  `corp_name` varchar(500) NOT NULL,
  `user_id` varchar(25) NOT NULL,
  `pswd` varchar(25) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `master_0_tbl` varchar(100) NOT NULL,
  `master_1_tbl` varchar(100) NOT NULL,
  `master_2_tbl` varchar(100) NOT NULL,
  `loc_master_0_tbl` varchar(100) NOT NULL,
  `loc_master_1_tbl` varchar(100) NOT NULL,
  `loc_master_2_tbl` varchar(100) NOT NULL,
  `user_token` varchar(100) NOT NULL,
  `valid_token` varchar(50) NOT NULL,
  `token_exp_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `admin_acc_id` (`acc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corp_admin_tbl`
--

INSERT INTO `corp_admin_tbl` (`acc_id`, `corp_name`, `user_id`, `pswd`, `last_updated`, `master_0_tbl`, `master_1_tbl`, `master_2_tbl`, `loc_master_0_tbl`, `loc_master_1_tbl`, `loc_master_2_tbl`, `user_token`, `valid_token`, `token_exp_date`) VALUES
(1000000001, '', 'demo0001', 'demo0001', '2016-01-26 12:44:06', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `corp_data_filter_tbl`
--

CREATE TABLE IF NOT EXISTS `corp_data_filter_tbl` (
  `acc_id` int(11) NOT NULL,
  `corp_name` varchar(200) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `filter_0` varchar(20) NOT NULL,
  `filter_1` varchar(20) NOT NULL,
  `filter_2` varchar(20) NOT NULL,
  `filter_3` varchar(20) NOT NULL,
  `filter_4` varchar(20) NOT NULL,
  `master_0` varchar(20) NOT NULL,
  `master_1` varchar(20) NOT NULL,
  `master_2` varchar(20) NOT NULL,
  `loc_master_0` varchar(20) NOT NULL,
  `loc_master_1` varchar(20) NOT NULL,
  `loc_master_2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corp_data_filter_tbl`
--

INSERT INTO `corp_data_filter_tbl` (`acc_id`, `corp_name`, `last_updated`, `filter_0`, `filter_1`, `filter_2`, `filter_3`, `filter_4`, `master_0`, `master_1`, `master_2`, `loc_master_0`, `loc_master_1`, `loc_master_2`) VALUES
(1000000001, '0', '2016-03-24 15:08:48', 'header_4', 'header_5', 'header_6', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `corp_data_tbl`
--

CREATE TABLE IF NOT EXISTS `corp_data_tbl` (
  `acc_id` int(11) DEFAULT NULL,
  `corp_name` varchar(200) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `latitude` varchar(200) NOT NULL,
  `longitude` varchar(200) NOT NULL,
  `accuracy` varchar(100) NOT NULL,
  `icon_src` varchar(999) NOT NULL,
  `icon_category` varchar(200) NOT NULL,
  `address` varchar(800) NOT NULL,
  `header_0` varchar(500) DEFAULT NULL,
  `header_1` varchar(500) DEFAULT NULL,
  `header_2` varchar(500) DEFAULT NULL,
  `header_3` varchar(500) DEFAULT NULL,
  `header_4` varchar(500) DEFAULT NULL,
  `header_5` varchar(500) DEFAULT NULL,
  `header_6` varchar(500) DEFAULT NULL,
  `header_7` varchar(500) DEFAULT NULL,
  `header_8` varchar(500) DEFAULT NULL,
  `header_9` varchar(500) DEFAULT NULL,
  `header_10` varchar(500) DEFAULT NULL,
  `header_11` varchar(500) DEFAULT NULL,
  `header_12` varchar(500) DEFAULT NULL,
  `header_13` varchar(500) DEFAULT NULL,
  `header_14` varchar(500) DEFAULT NULL,
  `header_15` varchar(500) DEFAULT NULL,
  `header_16` varchar(500) DEFAULT NULL,
  `header_17` varchar(500) DEFAULT NULL,
  `header_18` varchar(500) DEFAULT NULL,
  `header_19` varchar(500) DEFAULT NULL,
  `header_20` varchar(500) DEFAULT NULL,
  `header_21` varchar(500) DEFAULT NULL,
  `header_22` varchar(500) DEFAULT NULL,
  `header_23` varchar(1000) DEFAULT NULL,
  `header_24` varchar(500) DEFAULT NULL,
  `header_25` varchar(500) DEFAULT NULL,
  `header_26` varchar(500) DEFAULT NULL,
  `header_27` varchar(500) DEFAULT NULL,
  `header_28` varchar(500) DEFAULT NULL,
  `header_29` varchar(500) DEFAULT NULL,
  `header_30` varchar(500) DEFAULT NULL,
  `header_31` varchar(500) DEFAULT NULL,
  `header_32` varchar(500) DEFAULT NULL,
  `header_33` varchar(500) DEFAULT NULL,
  `header_34` varchar(500) DEFAULT NULL,
  `header_35` varchar(500) DEFAULT NULL,
  `header_36` varchar(500) DEFAULT NULL,
  `header_37` varchar(500) DEFAULT NULL,
  `header_38` varchar(500) DEFAULT NULL,
  `header_39` varchar(1000) DEFAULT NULL,
  `header_40` varchar(500) DEFAULT NULL,
  `header_41` varchar(500) DEFAULT NULL,
  `header_42` varchar(500) DEFAULT NULL,
  `header_43` varchar(500) DEFAULT NULL,
  `header_44` varchar(500) DEFAULT NULL,
  `header_45` varchar(500) DEFAULT NULL,
  `header_46` varchar(1000) DEFAULT NULL,
  `header_47` varchar(500) DEFAULT NULL,
  `header_48` varchar(500) DEFAULT NULL,
  `header_49` varchar(1000) DEFAULT NULL,
  `header_50` varchar(500) DEFAULT NULL,
  `header_51` varchar(500) DEFAULT NULL,
  `header_52` varchar(500) DEFAULT NULL,
  `header_53` varchar(500) DEFAULT NULL,
  `header_54` varchar(500) DEFAULT NULL,
  `header_55` varchar(500) DEFAULT NULL,
  `header_56` varchar(500) DEFAULT NULL,
  `header_57` varchar(500) DEFAULT NULL,
  `header_58` varchar(500) DEFAULT NULL,
  `header_59` varchar(500) DEFAULT NULL,
  `header_60` varchar(500) DEFAULT NULL,
  `header_61` varchar(500) DEFAULT NULL,
  `header_62` varchar(500) DEFAULT NULL,
  `header_63` varchar(500) DEFAULT NULL,
  `header_64` varchar(500) DEFAULT NULL,
  `header_65` varchar(500) DEFAULT NULL,
  `header_66` varchar(500) DEFAULT NULL,
  `header_67` varchar(500) DEFAULT NULL,
  `header_68` varchar(500) DEFAULT NULL,
  `header_69` varchar(500) DEFAULT NULL,
  `header_70` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corp_data_tbl`
--

INSERT INTO `corp_data_tbl` (`acc_id`, `corp_name`, `last_updated`, `latitude`, `longitude`, `accuracy`, `icon_src`, `icon_category`, `address`, `header_0`, `header_1`, `header_2`, `header_3`, `header_4`, `header_5`, `header_6`, `header_7`, `header_8`, `header_9`, `header_10`, `header_11`, `header_12`, `header_13`, `header_14`, `header_15`, `header_16`, `header_17`, `header_18`, `header_19`, `header_20`, `header_21`, `header_22`, `header_23`, `header_24`, `header_25`, `header_26`, `header_27`, `header_28`, `header_29`, `header_30`, `header_31`, `header_32`, `header_33`, `header_34`, `header_35`, `header_36`, `header_37`, `header_38`, `header_39`, `header_40`, `header_41`, `header_42`, `header_43`, `header_44`, `header_45`, `header_46`, `header_47`, `header_48`, `header_49`, `header_50`, `header_51`, `header_52`, `header_53`, `header_54`, `header_55`, `header_56`, `header_57`, `header_58`, `header_59`, `header_60`, `header_61`, `header_62`, `header_63`, `header_64`, `header_65`, `header_66`, `header_67`, `header_68`, `header_69`, `header_70`) VALUES
(1000000001, 'demo', '2016-03-26 02:31:25', '51.5304236', '-0.1260414', 'NA', '/images/markers/icon_t1/0.png', 'INT', 'Sector 45, Faridabad, IN - 121001', 'Task Number', 'SR Number', 'Task Type', 'processing', 'Test', 'Parts Required', 'Test', 'Customer Number', 'Site Number', 'Site Name', 'Current Site Time', 'Service Tag', 'Task Age', 'SR Age', 'Actual Start', 'Actual End', 'Work Start', 'Work End', 'Requested By', 'Addressee', 'Product Id', 'Product Description', 'Serial Number', 'WO Number', 'Group Name', 'Assignee', 'CE Code', 'Created on', 'Address1', 'Address2', 'City', 'State', 'Country', 'Postal Code', 'Respond By', 'Resolve By', 'Scheduled Start', 'Scheduled End', 'Site Risk', 'Equipment Risk', 'Location', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1000000001, 'demo_corp', '2016-03-26 02:31:55', '0', '0', 'NA', '/images/markers/icon_t1/1.png', 'INT', 'Sector 45, Faridabad, IN - 121001', 'test', 'test', 'test', 'end', 'Test', 'Parts Required', 'Test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1000000001, 'demo_corp', '2016-03-26 02:31:25', '51.5417419', '-0.1123085', 'NA', '/images/markers/icon_t1/2.png', 'INT', '', 'test1', 'test1', 'test', 'start', 'Test', 'Parts Required', 'Test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1000000001, 'demo_corp', '2016-03-26 02:31:25', '51.5628763', '-0.0673332', 'NA', '/images/markers/icon_t1/3.png', 'INT', '', '12132', '1312324', 'test', 'new', 'Test', 'Parts Required', 'Test', 'test', 'test', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1000000001, 'demo_corp', '2016-03-26 02:31:25', '51.5991446', '-0.2194252', 'NA', '/images/markers/icon_t1/4.png', 'INT', '', '12132', '1312324', 'test', 'suspended', 'Test', 'Parts Required', 'Test', 'test', 'test', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `corp_filter_1_tbl`
--

CREATE TABLE IF NOT EXISTS `corp_filter_1_tbl` (
  `acc_id` int(11) NOT NULL,
  `corp_name` varchar(200) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `filter_` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corp_filter_1_tbl`
--

INSERT INTO `corp_filter_1_tbl` (`acc_id`, `corp_name`, `last_updated`, `filter_`) VALUES
(1000000001, '0', '2016-03-24 15:08:48', 'Blue');

-- --------------------------------------------------------

--
-- Table structure for table `corp_filter_2_tbl`
--

CREATE TABLE IF NOT EXISTS `corp_filter_2_tbl` (
  `acc_id` int(11) NOT NULL,
  `corp_name` varchar(200) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `filter_` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corp_filter_2_tbl`
--

INSERT INTO `corp_filter_2_tbl` (`acc_id`, `corp_name`, `last_updated`, `filter_`) VALUES
(1000000001, '0', '2016-03-24 15:08:48', 'Pink');

-- --------------------------------------------------------

--
-- Table structure for table `corp_filter_3_tbl`
--

CREATE TABLE IF NOT EXISTS `corp_filter_3_tbl` (
  `acc_id` int(11) NOT NULL,
  `corp_name` varchar(200) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `filter_` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corp_filter_3_tbl`
--

INSERT INTO `corp_filter_3_tbl` (`acc_id`, `corp_name`, `last_updated`, `filter_`) VALUES
(1000000001, '0', '2016-03-24 15:08:48', 'black');

-- --------------------------------------------------------

--
-- Table structure for table `corp_filter_4_tbl`
--

CREATE TABLE IF NOT EXISTS `corp_filter_4_tbl` (
  `acc_id` int(11) NOT NULL,
  `corp_name` varchar(200) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `filter_` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corp_filter_4_tbl`
--

INSERT INTO `corp_filter_4_tbl` (`acc_id`, `corp_name`, `last_updated`, `filter_`) VALUES
(1000000001, '0', '2016-03-24 15:08:48', '');

-- --------------------------------------------------------

--
-- Table structure for table `corp_filter_0_tbl`
--

CREATE TABLE IF NOT EXISTS `corp_filter_0_tbl` (
  `acc_id` int(11) NOT NULL,
  `corp_name` varchar(200) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `filter_` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corp_filter_0_tbl`
--

INSERT INTO `corp_filter_0_tbl` (`acc_id`, `corp_name`, `last_updated`, `filter_`) VALUES
(1000000001, '0', '2016-03-24 15:08:48', 'Red');

-- --------------------------------------------------------

--
-- Table structure for table `corp_map_icon_tbl`
--

CREATE TABLE IF NOT EXISTS `corp_map_icon_tbl` (
  `acc_id` int(11) NOT NULL,
  `acc_name` varchar(100) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `header_id` varchar(100) NOT NULL,
  `rec_val` varchar(500) NOT NULL,
  `img_src` varchar(100) NOT NULL,
  `src_category` varchar(100) NOT NULL,
  `icons_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corp_map_icon_tbl`
--

INSERT INTO `corp_map_icon_tbl` (`acc_id`, `acc_name`, `last_updated`, `header_id`, `rec_val`, `img_src`, `src_category`, `icons_type`) VALUES
(1000000001, 'demo_corp', '2016-03-25 16:31:28', 'header_3', 'waiting', '1', 'INT', 'icon_t1'),
(1000000001, 'demo_corp', '2016-03-25 16:31:28', 'header_3', 'suspended', '0', 'INT', 'icon_t1'),
(1000000001, 'demo_corp', '2016-03-25 16:31:28', 'header_3', 'new', '2', 'INT', 'icon_t1'),
(1000000001, 'demo_corp', '2016-03-25 16:31:28', 'header_3', 'start', '3', 'INT', 'icon_t1'),
(1000000001, 'demo_corp', '2016-03-25 16:31:28', 'header_3', 'end', '4', 'INT', 'icon_t1'),
(1000000001, 'demo_corp', '2016-03-25 16:31:28', 'header_3', 'processing', '5', 'INT', 'icon_t1');

-- --------------------------------------------------------

--
-- Table structure for table `corp_map_pref_tbl`
--

CREATE TABLE IF NOT EXISTS `corp_map_pref_tbl` (
  `corp_name` varchar(500) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `map_theme` varchar(100) NOT NULL,
  `map_layers` varchar(200) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `acc_id` int(11) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corp_map_pref_tbl`
--

INSERT INTO `corp_map_pref_tbl` (`corp_name`, `user_id`, `map_theme`, `map_layers`, `unit`, `acc_id`, `last_updated`) VALUES
('NCR', '100001', 'white', 'traffic', 'METERIC', 1000000001, '2016-03-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `corp_pref_tbl`
--

CREATE TABLE IF NOT EXISTS `corp_pref_tbl` (
  `corp_name` varchar(500) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `filter_0` varchar(5000) NOT NULL,
  `filter_1` varchar(5000) NOT NULL,
  `filter_2` varchar(5000) NOT NULL,
  `filter_3` varchar(5000) NOT NULL,
  `filter_4` varchar(5000) NOT NULL,
  `country` varchar(100) NOT NULL,
  `auto_refresh` varchar(20) NOT NULL,
  `refresh_time` varchar(20) NOT NULL,
  `acc_id` int(11) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `acc_id` (`acc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corp_pref_tbl`
--

INSERT INTO `corp_pref_tbl` (`corp_name`, `user_id`, `filter_0`, `filter_1`, `filter_2`, `filter_3`, `filter_4`, `country`, `auto_refresh`, `refresh_time`, `acc_id`, `last_updated`) VALUES
('NCR', '100001', 'Test', 'Parts Required', 'Test', 'trt', 'rtr', 'IN', 'true', '10', 1000000001, '2016-03-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `corp_user_tbl`
--

CREATE TABLE IF NOT EXISTS `corp_user_tbl` (
  `USER_ID` varchar(200) NOT NULL,
  `USER_NAME` varchar(200) NOT NULL,
  `PSWD` varchar(100) NOT NULL,
  `USER_ROLE` varchar(200) NOT NULL,
  `USER_STATUS` varchar(200) NOT NULL,
  `USER_DETAILS` varchar(500) NOT NULL,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_BY` varchar(100) NOT NULL,
  `USER_ROLE_DESC` varchar(500) NOT NULL,
  `ACC_ID` int(11) NOT NULL,
  `corp_name` varchar(500) NOT NULL,
  `USER_TOKEN` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corp_user_tbl`
--

INSERT INTO `corp_user_tbl` (`USER_ID`, `USER_NAME`, `PSWD`, `USER_ROLE`, `USER_STATUS`, `USER_DETAILS`, `UPDATE_DATE`, `UPDATED_BY`, `USER_ROLE_DESC`, `ACC_ID`, `corp_name`, `USER_TOKEN`) VALUES
('100001', 'Ashish Kaw', 'shivi1488', 'S', 'A', 'Developer', '2016-03-26 02:15:18', 'System', 'New User', 1000000001, 'NCR', '5f8nfsu0v8pst49ll67d3h6upo');

-- --------------------------------------------------------

--
-- Table structure for table `data_grid_tbl`
--

CREATE TABLE IF NOT EXISTS `data_grid_tbl` (
  `acc_id` int(11) NOT NULL,
  `corp_name` varchar(100) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `col_count` int(11) NOT NULL,
  `header_0` varchar(100) NOT NULL,
  `header_1` varchar(100) NOT NULL,
  `header_2` varchar(100) NOT NULL,
  `header_3` varchar(100) NOT NULL,
  `header_4` varchar(100) NOT NULL,
  `header_5` varchar(100) NOT NULL,
  `header_6` varchar(100) NOT NULL,
  `header_7` varchar(100) NOT NULL,
  `header_8` varchar(100) NOT NULL,
  `header_9` varchar(100) NOT NULL,
  `header_10` varchar(100) NOT NULL,
  `header_11` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_grid_tbl`
--

INSERT INTO `data_grid_tbl` (`acc_id`, `corp_name`, `last_updated`, `col_count`, `header_0`, `header_1`, `header_2`, `header_3`, `header_4`, `header_5`, `header_6`, `header_7`, `header_8`, `header_9`, `header_10`, `header_11`) VALUES
(1000000001, 'NCR', '2016-03-25 11:53:58', 11, 'header_1', 'header_2', 'header_3', 'header_4', 'header_5', 'header_6', 'header_7', 'header_8', 'header_9', 'header_10', 'header_11', 'header_12');

-- --------------------------------------------------------

--
-- Table structure for table `data_header_tbl`
--

CREATE TABLE IF NOT EXISTS `data_header_tbl` (
  `acc_id` int(11) DEFAULT NULL,
  `corp_name` varchar(200) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `header_count` int(11) NOT NULL,
  `latitude` varchar(200) NOT NULL,
  `longitude` varchar(200) NOT NULL,
  `header_0` varchar(100) DEFAULT NULL,
  `header_1` varchar(100) DEFAULT NULL,
  `header_2` varchar(100) DEFAULT NULL,
  `header_3` varchar(100) DEFAULT NULL,
  `header_4` varchar(100) DEFAULT NULL,
  `header_5` varchar(100) DEFAULT NULL,
  `header_6` varchar(100) DEFAULT NULL,
  `header_7` varchar(100) DEFAULT NULL,
  `header_8` varchar(100) DEFAULT NULL,
  `header_9` varchar(100) DEFAULT NULL,
  `header_10` varchar(100) DEFAULT NULL,
  `header_11` varchar(100) DEFAULT NULL,
  `header_12` varchar(100) DEFAULT NULL,
  `header_13` varchar(100) DEFAULT NULL,
  `header_14` varchar(100) DEFAULT NULL,
  `header_15` varchar(100) DEFAULT NULL,
  `header_16` varchar(100) DEFAULT NULL,
  `header_17` varchar(100) DEFAULT NULL,
  `header_18` varchar(100) DEFAULT NULL,
  `header_19` varchar(100) DEFAULT NULL,
  `header_20` varchar(100) DEFAULT NULL,
  `header_21` varchar(100) DEFAULT NULL,
  `header_22` varchar(100) DEFAULT NULL,
  `header_23` varchar(100) DEFAULT NULL,
  `header_24` varchar(100) DEFAULT NULL,
  `header_25` varchar(100) DEFAULT NULL,
  `header_26` varchar(100) DEFAULT NULL,
  `header_27` varchar(100) DEFAULT NULL,
  `header_28` varchar(100) DEFAULT NULL,
  `header_29` varchar(100) DEFAULT NULL,
  `header_30` varchar(100) DEFAULT NULL,
  `header_31` varchar(100) DEFAULT NULL,
  `header_32` varchar(100) DEFAULT NULL,
  `header_33` varchar(100) DEFAULT NULL,
  `header_34` varchar(100) DEFAULT NULL,
  `header_35` varchar(100) DEFAULT NULL,
  `header_36` varchar(100) DEFAULT NULL,
  `header_37` varchar(100) DEFAULT NULL,
  `header_38` varchar(100) DEFAULT NULL,
  `header_39` varchar(100) DEFAULT NULL,
  `header_40` varchar(100) DEFAULT NULL,
  `header_41` varchar(100) DEFAULT NULL,
  `header_42` varchar(100) DEFAULT NULL,
  `header_43` varchar(100) DEFAULT NULL,
  `header_44` varchar(100) DEFAULT NULL,
  `header_45` varchar(100) DEFAULT NULL,
  `header_46` varchar(100) DEFAULT NULL,
  `header_47` varchar(100) DEFAULT NULL,
  `header_48` varchar(100) DEFAULT NULL,
  `header_49` varchar(100) DEFAULT NULL,
  `header_50` varchar(100) DEFAULT NULL,
  `header_51` varchar(100) DEFAULT NULL,
  `header_52` varchar(100) DEFAULT NULL,
  `header_53` varchar(100) DEFAULT NULL,
  `header_54` varchar(100) DEFAULT NULL,
  `header_55` varchar(100) DEFAULT NULL,
  `header_56` varchar(100) DEFAULT NULL,
  `header_57` varchar(100) DEFAULT NULL,
  `header_58` varchar(100) DEFAULT NULL,
  `header_59` varchar(100) DEFAULT NULL,
  `header_60` varchar(100) DEFAULT NULL,
  `header_61` varchar(100) DEFAULT NULL,
  `header_62` varchar(100) DEFAULT NULL,
  `header_63` varchar(100) DEFAULT NULL,
  `header_64` varchar(100) DEFAULT NULL,
  `header_65` varchar(100) DEFAULT NULL,
  `header_66` varchar(100) DEFAULT NULL,
  `header_67` varchar(100) DEFAULT NULL,
  `header_68` varchar(100) DEFAULT NULL,
  `header_69` varchar(100) DEFAULT NULL,
  `header_70` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_header_tbl`
--

INSERT INTO `data_header_tbl` (`acc_id`, `corp_name`, `last_updated`, `header_count`, `latitude`, `longitude`, `header_0`, `header_1`, `header_2`, `header_3`, `header_4`, `header_5`, `header_6`, `header_7`, `header_8`, `header_9`, `header_10`, `header_11`, `header_12`, `header_13`, `header_14`, `header_15`, `header_16`, `header_17`, `header_18`, `header_19`, `header_20`, `header_21`, `header_22`, `header_23`, `header_24`, `header_25`, `header_26`, `header_27`, `header_28`, `header_29`, `header_30`, `header_31`, `header_32`, `header_33`, `header_34`, `header_35`, `header_36`, `header_37`, `header_38`, `header_39`, `header_40`, `header_41`, `header_42`, `header_43`, `header_44`, `header_45`, `header_46`, `header_47`, `header_48`, `header_49`, `header_50`, `header_51`, `header_52`, `header_53`, `header_54`, `header_55`, `header_56`, `header_57`, `header_58`, `header_59`, `header_60`, `header_61`, `header_62`, `header_63`, `header_64`, `header_65`, `header_66`, `header_67`, `header_68`, `header_69`, `header_70`) VALUES
(1000000001, 'demo', '2016-01-26 13:03:22', 41, '', '', 'Task Number', 'SR Number', 'Task Type', 'Task Status', 'Severity', 'Parts Required', 'Customer Name', 'Customer Number', 'Site Number', 'Site Name', 'Current Site Time', 'Service Tag', 'Task Age', 'SR Age', 'Actual Start', 'Actual End', 'Work Start', 'Work End', 'Requested By', 'Addressee', 'Product Id', 'Product Description', 'Serial Number', 'WO Number', 'Group Name', 'Assignee', 'CE Code', 'Created on', 'Address1', 'Address2', 'City', 'State', 'Country', 'Postal Code', 'Respond By', 'Resolve By', 'Scheduled Start', 'Scheduled End', 'Site Risk', 'Equipment Risk', 'Location', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_hover_info_tbl`
--

CREATE TABLE IF NOT EXISTS `data_hover_info_tbl` (
  `acc_id` int(11) NOT NULL,
  `acc_name` varchar(500) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `col_count` int(11) NOT NULL,
  `header_0` varchar(500) NOT NULL,
  `header_1` varchar(500) NOT NULL,
  `header_2` varchar(500) NOT NULL,
  `header_3` varchar(500) NOT NULL,
  `header_4` varchar(500) NOT NULL,
  `header_5` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_hover_info_tbl`
--

INSERT INTO `data_hover_info_tbl` (`acc_id`, `acc_name`, `last_updated`, `col_count`, `header_0`, `header_1`, `header_2`, `header_3`, `header_4`, `header_5`) VALUES
(1000000001, 'demo_corp', '2016-03-25 11:57:18', 6, 'header_3', 'header_4', 'header_5', 'header_6', 'header_7', 'header_8');

-- --------------------------------------------------------

--
-- Table structure for table `data_info_window_tbl`
--

CREATE TABLE IF NOT EXISTS `data_info_window_tbl` (
  `acc_id` int(11) NOT NULL,
  `corp_name` varchar(500) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `col_count` varchar(500) NOT NULL,
  `header_0` varchar(500) NOT NULL,
  `header_1` varchar(500) NOT NULL,
  `header_2` varchar(500) NOT NULL,
  `header_3` varchar(500) NOT NULL,
  `header_4` varchar(500) NOT NULL,
  `header_5` varchar(500) NOT NULL,
  `header_6` varchar(500) NOT NULL,
  `header_7` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_info_window_tbl`
--

INSERT INTO `data_info_window_tbl` (`acc_id`, `corp_name`, `last_updated`, `col_count`, `header_0`, `header_1`, `header_2`, `header_3`, `header_4`, `header_5`, `header_6`, `header_7`) VALUES
(1000000001, 'demo_corp', '2016-03-25 11:59:42', '8', 'header_7', 'header_8', 'header_9', 'header_10', 'header_11', 'header_12', 'header_13', 'header_14');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
