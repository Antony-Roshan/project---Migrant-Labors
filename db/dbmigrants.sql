-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 11, 2019 at 06:13 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbmigrants`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaint`
--

CREATE TABLE IF NOT EXISTS `tblcomplaint` (
  `compId` int(11) NOT NULL AUTO_INCREMENT,
  `uEmail` varchar(50) NOT NULL,
  `pEmail` varchar(50) NOT NULL,
  `compDetails` varchar(100) NOT NULL,
  `culpritHeight` varchar(50) NOT NULL,
  `culpritWeight` varchar(50) NOT NULL,
  `compPlace` varchar(50) NOT NULL,
  `compLat` varchar(50) NOT NULL,
  `compLon` varchar(50) NOT NULL,
  `compStatus` varchar(50) NOT NULL,
  PRIMARY KEY (`compId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblcomplaint`
--

INSERT INTO `tblcomplaint` (`compId`, `uEmail`, `pEmail`, `compDetails`, `culpritHeight`, `culpritWeight`, `compPlace`, `compLat`, `compLon`, `compStatus`) VALUES
(1, 'shambu@gmail.com', 'aluvawest@gmail.com', 'jhnjh jhkj ljnkjn innuy unun . un nihniu ijiu uiuiuj iuniuh', '160', '75', 'Panayikulam', '10.10488', '76.29483', 'Submitted');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontractor`
--

CREATE TABLE IF NOT EXISTS `tblcontractor` (
  `conName` varchar(50) NOT NULL,
  `conAddress` varchar(50) NOT NULL,
  `conPhone` varchar(10) NOT NULL,
  `conEmail` varchar(50) NOT NULL,
  `conLicense` varchar(50) NOT NULL,
  `conCertificate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontractor`
--

INSERT INTO `tblcontractor` (`conName`, `conAddress`, `conPhone`, `conEmail`, `conLicense`, `conCertificate`) VALUES
('sasi', 'puthenveetil, aluva', '9584701263', 'sasi@gmail.com', 'jj780', '/media/banner1_boum0gS.jpg'),
('wwer', 'jknhj', '9023615478', 'wwer@gmail.com', 'kjn123', '/media/banner.jpg'),
('reghu', 'jkhhb', '9651203478', 'reghu@gmail.com', 'hhh455', '/media/g4.jpg'),
('Akhil', 'ihi', '9874563211', 'akhil@gmail.com', '98463365', '/media/123.jpg'),
('ravikumar', 'joip', '7896541236', 'ravi@gmail.com', '7899', '/media/pic2.png');

-- --------------------------------------------------------

--
-- Table structure for table `tblfeedback`
--

CREATE TABLE IF NOT EXISTS `tblfeedback` (
  `fId` int(11) NOT NULL AUTO_INCREMENT,
  `workId` int(11) NOT NULL,
  `fdate` date NOT NULL,
  `feedback` varchar(100) NOT NULL,
  PRIMARY KEY (`fId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblfeedback`
--

INSERT INTO `tblfeedback` (`fId`, `workId`, `fdate`, `feedback`) VALUES
(1, 1, '2019-12-10', 'sfvfd rgrfvedr rrfwse fwef wsf wfv sdf sdvklm k s. kjndkcj kjsdd jceff  kwjs e  . sjdnvkjsnv sjvkjsd'),
(2, 2, '2019-12-10', 'Guiddd');

-- --------------------------------------------------------

--
-- Table structure for table `tblglobalid`
--

CREATE TABLE IF NOT EXISTS `tblglobalid` (
  `globalId` int(11) NOT NULL AUTO_INCREMENT,
  `labId` int(11) NOT NULL,
  `dateIssue` date NOT NULL,
  `idStatus` varchar(50) NOT NULL,
  PRIMARY KEY (`globalId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tblglobalid`
--

INSERT INTO `tblglobalid` (`globalId`, `labId`, `dateIssue`, `idStatus`) VALUES
(1, 1, '2019-12-10', 'active'),
(2, 2, '2019-12-10', 'active'),
(3, 3, '2019-12-10', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tbllabour`
--

CREATE TABLE IF NOT EXISTS `tbllabour` (
  `labId` int(11) NOT NULL AUTO_INCREMENT,
  `pEmail` varchar(50) NOT NULL,
  `labName` varchar(50) NOT NULL,
  `labAddress` varchar(50) NOT NULL,
  `labPlace` varchar(50) NOT NULL,
  `labIdMark1` varchar(100) NOT NULL,
  `labIdMark2` varchar(100) NOT NULL,
  `labPhone` varchar(10) NOT NULL,
  `labAadhar` varchar(12) NOT NULL,
  `labPhoto` varchar(100) NOT NULL,
  `labHeight` varchar(10) NOT NULL,
  `labWeight` varchar(10) NOT NULL,
  `labColor` varchar(50) NOT NULL,
  `labDisease` varchar(100) NOT NULL,
  `conEmail` varchar(50) DEFAULT NULL,
  `signature` varchar(100) NOT NULL,
  `aadharfile` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`labId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbllabour`
--

INSERT INTO `tbllabour` (`labId`, `pEmail`, `labName`, `labAddress`, `labPlace`, `labIdMark1`, `labIdMark2`, `labPhone`, `labAadhar`, `labPhoto`, `labHeight`, `labWeight`, `labColor`, `labDisease`, `conEmail`, `signature`, `aadharfile`, `status`) VALUES
(1, 'aluvawest@gmail.com', 'Ajay', 'aerfger', 'erger', 'aerger', 'ergerg', '9632587410', '958621478036', '/media/t7.jpg', '168', '88', 'Fair', 'regaerg', 'sasi@gmail.com', '', '', 'approved'),
(2, 'aluvawest@gmail.com', 'rsgfr', 'wefwerfwfr', 'sfgwerf', 'wergfwef', 'wefe', '9958471026', '965012347856', '/media/t2_Tp0btx6.jpg', '160', '78', 'Fair', 'rgedrgg', 'reghu@gmail.com', '', '', 'approved'),
(3, 'koratty@gmail.com', 'vishnu', '\r\nkbjhbk', 'koratty', 'budb', 'bjgb', '8086589655', '789654123058', '/media/289-2895110_wooden-clipart-sign-board-wood-sign-board-vector.png', '168', '88', 'Medium', 'xzc ', 'akhil@gmail.com', '', '', 'approved'),
(4, 'koratty@gmail.com', 'were', 'dfbvd', 'zsdvd', 'sdfsdfv', 'drsfgverfg', '9650123478', '547896321023', '/media/15.jpg', '170', '78', 'Fair', 'srfgvrfvr', NULL, '/media/Fbb8WxR.png', '/media/floral-background-tumblr-wallpaper-high-quality-resolution.jpg', 'registered');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogin`
--

CREATE TABLE IF NOT EXISTS `tbllogin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllogin`
--

INSERT INTO `tbllogin` (`username`, `password`, `utype`, `status`) VALUES
('admin@gmail.com', 'admin', 'admin', '1'),
('admin@gmail.com', 'admin', 'admin', '1'),
('aluvawest@gmail.com', '@luvawest11', 'police', '1'),
('sss@gmail.com', 'sss@gmail.com', 'police', '1'),
('qqq@gmail.co', 'qqq@gmail.co', 'police', '1'),
('sasi@gmail.com', 's@si1234', 'contractor', '1'),
('wwer@gmail.com', 'a1234!@#$', 'contractor', '0'),
('shambu@gmail.com', 'sh@mbu111', 'user', '1'),
('reghu@gmail.com', 'reghu@123', 'contractor', '1'),
('vyshnavirnair88@gmail.com', 'vychu@12', 'user', '1'),
('akhil@gmail.com', 'akhil', 'contractor', '1'),
('koratty@gmail.com', 'koratty@gmail.com', 'police', '1'),
('ravi@gmail.com', 'ravi', 'contractor', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblpolicestation`
--

CREATE TABLE IF NOT EXISTS `tblpolicestation` (
  `pName` varchar(50) NOT NULL,
  `pStationCode` varchar(50) NOT NULL,
  `pAddress` varchar(50) NOT NULL,
  `pCircle` varchar(50) NOT NULL,
  `pContact` varchar(10) NOT NULL,
  `pEmail` varchar(50) NOT NULL,
  PRIMARY KEY (`pEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpolicestation`
--

INSERT INTO `tblpolicestation` (`pName`, `pStationCode`, `pAddress`, `pCircle`, `pContact`, `pEmail`) VALUES
('Aluva West', 'AA1243', 'Aluva', 'Aluva', '9587410263', 'aluvawest@gmail.com'),
('koratty', 'koratty12', 'koratty', 'koratty', '9874589635', 'koratty@gmail.com'),
('qqq', 'qq11', 'dsdcfsd', 'sdcws', '9658741203', 'qqq@gmail.co'),
('setg', 'ghbtgfr', 'drthrdt', 'sdghsrg', '9632587410', 'sss@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbltender`
--

CREATE TABLE IF NOT EXISTS `tbltender` (
  `reqId` int(11) NOT NULL AUTO_INCREMENT,
  `uEmail` varchar(50) NOT NULL,
  `reqDescription` varchar(100) NOT NULL,
  `reqDate` datetime NOT NULL,
  `reqPlace` varchar(50) NOT NULL,
  `reqLat` varchar(10) NOT NULL,
  `reqLon` varchar(10) NOT NULL,
  `reqStatus` varchar(50) NOT NULL,
  PRIMARY KEY (`reqId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbltender`
--

INSERT INTO `tbltender` (`reqId`, `uEmail`, `reqDescription`, `reqDate`, `reqPlace`, `reqLat`, `reqLon`, `reqStatus`) VALUES
(1, 'shambu@gmail.com', 'jhbj kjknnjh jnjn kjnj jknkjn kjnk. jbjhb jjh kjnln ijnjknjk kjnjknj . jnjn jnjnj j hijnknk.', '2019-12-10 00:00:00', 'Panayikulam', '10.10344', '76.29164', 'set'),
(2, 'shambu@gmail.com', 'afsdgvrd', '2019-12-16 00:00:00', 'Muttom, Choornikara', '10.07312', '76.33346', 'requested'),
(3, 'vyshnavirnair88@gmail.com', 'dgvbgfb', '2019-12-11 00:00:00', 'koratty', '10.26447', '76.34816', 'set');

-- --------------------------------------------------------

--
-- Table structure for table `tbltendercall`
--

CREATE TABLE IF NOT EXISTS `tbltendercall` (
  `tcId` int(11) NOT NULL AUTO_INCREMENT,
  `reqId` int(11) NOT NULL,
  `conEmail` varchar(50) NOT NULL,
  `tenAmt` bigint(20) NOT NULL,
  `tenSdate` varchar(50) NOT NULL,
  `tenEdate` varchar(50) NOT NULL,
  `tenDescription` varchar(100) NOT NULL,
  `tenStatus` varchar(50) NOT NULL,
  PRIMARY KEY (`tcId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbltendercall`
--

INSERT INTO `tbltendercall` (`tcId`, `reqId`, `conEmail`, `tenAmt`, `tenSdate`, `tenEdate`, `tenDescription`, `tenStatus`) VALUES
(1, 1, 'sasi@gmail.com', 45800, '2019-12-10', '2019-12-14', 'jhb jhjh jlhljnk', 'rejected'),
(2, 1, 'reghu@gmail.com', 45000, '2019-12-10', '2019-12-15', 'ljnikjn jnjhjl kjnkjn kjnkj', 'accepted'),
(3, 3, 'akhil@gmail.com', 2000, '2019-12-11', '2019-12-12', 'qedw', 'accepted'),
(4, 3, 'ravi@gmail.com', 1600, '2019-12-11', '2019-12-14', 'dafes', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE IF NOT EXISTS `tbluser` (
  `uName` varchar(50) NOT NULL,
  `uEmail` varchar(50) NOT NULL,
  `uContact` varchar(50) NOT NULL,
  `uAadhar` varchar(50) NOT NULL,
  PRIMARY KEY (`uEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`uName`, `uEmail`, `uContact`, `uAadhar`) VALUES
('shambu', 'shambu@gmail.com', '9587410263', '789456123102'),
('Vyshnavi R Nair', 'vyshnavirnair88@gmail.com', '9865896663', '789654123696');

-- --------------------------------------------------------

--
-- Table structure for table `tblworkdetails`
--

CREATE TABLE IF NOT EXISTS `tblworkdetails` (
  `workId` int(11) NOT NULL AUTO_INCREMENT,
  `tcId` int(11) NOT NULL,
  `workAmt` bigint(20) NOT NULL,
  `wSdate` date NOT NULL,
  `wEdate` date DEFAULT NULL,
  `wStatus` varchar(50) NOT NULL,
  PRIMARY KEY (`workId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblworkdetails`
--

INSERT INTO `tblworkdetails` (`workId`, `tcId`, `workAmt`, `wSdate`, `wEdate`, `wStatus`) VALUES
(1, 2, 46000, '2019-12-10', '2019-12-15', 'Completed'),
(2, 3, 2000, '2019-12-11', '2019-12-13', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `tblworklabors`
--

CREATE TABLE IF NOT EXISTS `tblworklabors` (
  `wlId` int(11) NOT NULL AUTO_INCREMENT,
  `workId` int(11) NOT NULL,
  `globalId` bigint(20) NOT NULL,
  PRIMARY KEY (`wlId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblworklabors`
--

INSERT INTO `tblworklabors` (`wlId`, `workId`, `globalId`) VALUES
(1, 1, 2),
(2, 2, 3);
