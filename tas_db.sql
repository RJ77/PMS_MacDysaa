-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 16, 2016 at 05:53 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tas_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `aid` int(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `login` varchar(10) NOT NULL,
  `pswd` varchar(20) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin`
--


-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `cid` int(7) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `organisation` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `org_contact` int(11) NOT NULL,
  `login_id` varchar(10) NOT NULL,
  `pswd` varchar(20) NOT NULL,
  `pid` int(7) NOT NULL,
  `details` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `client`
--


-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `eid` int(7) NOT NULL AUTO_INCREMENT,
  `ename` varchar(20) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `contact` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `login` varchar(10) NOT NULL,
  `pswd` varchar(20) NOT NULL,
  `join_date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `department` varchar(20) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `employee`
--


-- --------------------------------------------------------

--
-- Table structure for table `managment`
--

CREATE TABLE IF NOT EXISTS `managment` (
  `mid` int(7) NOT NULL AUTO_INCREMENT,
  `mname` varchar(20) NOT NULL,
  `login` varchar(10) NOT NULL,
  `pswd` varchar(20) NOT NULL,
  `designation` varchar(10) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `managment`
--


-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `pid` int(7) NOT NULL AUTO_INCREMENT,
  `pname` varchar(30) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `prj_details` varchar(200) NOT NULL,
  `req_time` date NOT NULL,
  `commit_time` date NOT NULL,
  `tech_details` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `news` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `project`
--


-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE IF NOT EXISTS `task` (
  `tid` int(7) NOT NULL AUTO_INCREMENT,
  `eid` int(7) NOT NULL,
  `pid` int(7) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `status` varchar(10) NOT NULL,
  `allocation` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `req_time` date NOT NULL,
  `given_time` date NOT NULL,
  `test_status` varchar(10) NOT NULL,
  `test_iterations` int(5) NOT NULL,
  `is_sent_test` varchar(5) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `task`
--

