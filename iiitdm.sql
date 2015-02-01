-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 01, 2015 at 10:07 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iiitdm`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `course_id` varchar(9) NOT NULL,
  `faculty_id` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `faculty_id`) VALUES
('COM102', 'BSS'),
('COM102P', 'BSS'),
('COM104', 'BSS'),
('COM104P', 'BSS'),
('COM203', 'NMM'),
('COM203P', 'NMM'),
('COM301', 'NMM'),
('COM301P', 'NMM'),
('COM304', 'NMM'),
('COM304P', 'NMM'),
('COM302', 'NSG'),
('COM302P', 'NSG'),
('COM305', 'NSG'),
('COM305P', 'NSG'),
('COM202', 'VMM'),
('COM202P', 'VMM'),
('COM204', 'VMM'),
('COM204P', 'VMM');

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

CREATE TABLE IF NOT EXISTS `course_student` (
  `course_id` varchar(10) NOT NULL,
  `rollno` varchar(15) NOT NULL,
  `q1` float NOT NULL DEFAULT '0',
  `q2` float NOT NULL DEFAULT '0',
  `ss` float NOT NULL DEFAULT '0',
  `ms` float NOT NULL DEFAULT '0',
  `es` float NOT NULL DEFAULT '0',
  `tt` float NOT NULL DEFAULT '0',
  `gr` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_student`
--

INSERT INTO `course_student` (`course_id`, `rollno`, `q1`, `q2`, `ss`, `ms`, `es`, `tt`, `gr`) VALUES
('COM 305', 'COE10B002', 20, 19, 0, 0, 40, 79, 'C'),
('COM 305', 'COE10B001', 10, 20, 7, 0, 0, 37, 'U'),
('COM 305', 'COE10B003', 20, 20, 10, 0, 49, 99, 'S'),
('COM 305P', 'COE10B001', 10, 20, 7, 0, 0, 37, 'D'),
('COM 305P', 'COE10B002', 20, 19, 0, 0, 40, 79, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `cutoff`
--

CREATE TABLE IF NOT EXISTS `cutoff` (
  `course_id` varchar(10) NOT NULL,
  `q1c` int(2) NOT NULL,
  `q2c` int(2) NOT NULL,
  `ssc` int(2) NOT NULL,
  `msc` int(2) NOT NULL,
  `esc` int(3) NOT NULL,
  `s` int(11) NOT NULL,
  `a` int(11) NOT NULL,
  `b` int(11) NOT NULL,
  `c` int(11) NOT NULL,
  `d` int(11) NOT NULL,
  `e` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cutoff`
--

INSERT INTO `cutoff` (`course_id`, `q1c`, `q2c`, `ssc`, `msc`, `esc`, `s`, `a`, `b`, `c`, `d`, `e`) VALUES
('COM 305', 20, 20, 10, 0, 50, 90, 80, 70, 60, 50, 40),
('COM 305P', 0, 0, 20, 30, 50, 87, 67, 57, 49, 37, 27),
('ELE 517', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('PHY 106', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 211', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 311', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 518', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 209', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 210', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 212', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 213', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 312', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 513', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 510', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 215', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 102', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 214', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 507', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('PHY 106P', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 210P', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 214P', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 102P', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 209P', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 311P', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 212P', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 102P', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 215P', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 213P', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 211P', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ELE 312P', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `enrolled`
--

CREATE TABLE IF NOT EXISTS `enrolled` (
  `rollno` varchar(9) NOT NULL,
  `cnos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrolled`
--

INSERT INTO `enrolled` (`rollno`, `cnos`) VALUES
('COE11B002', 'COM 305,COM 305P,COM 501'),
('COE11B005', 'COM 305,COM 305P,COM 501'),
('COE11B018', 'COM 305,COM 305P');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `faculty_id` varchar(9) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(15) NOT NULL DEFAULT '12',
  `activate` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `name`, `password`, `activate`) VALUES
('BJK', 'Binshu J Kailath', '12', 1),
('BRJ', 'Raja B', '12', 1),
('BSS', 'Sivaselvan B', '12', 1),
('KMM', 'Prof. K M M Prabhu', '12', 1),
('KSJ', 'Selvajyothi K', '12', 1),
('MMM', 'Manimeghalai', 'c20ad4d76fe9775', 0),
('MSK', 'Sreekumar M', '12', 1),
('NKV', 'Naveen Kumar', '12', 1),
('NMM', 'Noor Mahammad Sk', '12', 1),
('NSG', 'N Sadagopan', '12', 1),
('PDD', 'Damodaran', '12', 1),
('PK', 'Priyanka Kokil', '12', 1),
('PTP', 'Pandithevan P', '12', 1),
('RGM', 'Prof. Gnanamoorthy R', '12', 1),
('SHK', 'Shahul Hamid Khan', '12', 1),
('SJV', 'Jayavel S', '12', 1),
('SMA', 'Shalu M A', '12', 1),
('SMD', 'M D Selvaraj', '12', 1),
('SSK', 'Karthekeyan S S', '12', 1),
('SVK', 'Vijayakumar S', '12', 1),
('TPS', 'Tapas Sil', '12', 1),
('VMM', 'Masilamani V', '12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jan_may_2014_slots`
--

CREATE TABLE IF NOT EXISTS `jan_may_2014_slots` (
  `SLOT` varchar(3) NOT NULL,
  `ID` varchar(10) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `FACULTY` varchar(10) NOT NULL,
  `CLASSROOM` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jan_may_2014_slots`
--

INSERT INTO `jan_may_2014_slots` (`SLOT`, `ID`, `NAME`, `FACULTY`, `CLASSROOM`) VALUES
('A', 'MEC 109', 'STATICS AND STRENGTH OF MATERIALS', 'MSK', 'C2'),
('A', 'MAT 203', 'PROBABILITY AND STATISTICS', 'VK', 'C3'),
('A', 'COM 305', 'SOFTWARE ENGINEERING', 'NSG', 'C7'),
('A', 'MEC 315', 'APPLIED THERMAL ENGINEERING', 'BR', 'C5'),
('A', 'MEC 507', 'COMPUTATIONAL FLUID DYNAMICS', 'SJ', 'C1'),
('A', 'DES 509', 'ADVANCED GEOMETRIC MODELLING AND CAD', 'PPT', 'C8'),
('A', 'ELE 517', 'OPTO ELECTRONICS DEVICES', 'NKV', 'C6'),
('B', 'PHY 106', 'ELECTROMAGNETICS AND QUANTUM MECHANICS ', 'TS', 'C9'),
('B', 'ELE 211', 'CONTROL ENGINEERING', 'KSG', 'C8'),
('B', 'COM 204', 'COMPILER DESIGN', 'VMM', 'C6'),
('B', 'ELE 311', 'VLSI DESIGN', 'BJK', 'C2'),
('B', 'MEC 306', 'GEOMETRIC MODELLING AND CAD', 'PPT', 'C5'),
('B', 'ELE 518', 'WIRELESS COMMUNICATION', 'MDS', 'C4'),
('C', 'MAT 103', 'ODE AND PDE', 'SMA', 'C9'),
('C', 'ELE 209', 'SIGNALS AND LINEAR SYSTEMS', 'KMM', 'C1'),
('C', 'COM ', 'NETWORK SYSTEM DESIGN', 'NMM', 'C8'),
('C', 'ELE 210', 'ELECTRONIC CIRCUIT DESIGN', 'SSK', 'C5'),
('C', 'MAN 302', 'QUALITY AND RELIABILITY MANAGEMENT', 'SHK', 'C3'),
('C', 'ELE 212', 'PRINCIPLE OF MEASUREMENTS', 'PDD', 'C4'),
('C', 'MEC 509', 'FAILURE ANALYSIS AND DESIGN', 'RGM', 'C7'),
('D', 'ELE 312', 'PCB/PROTOTYPE DESIGN AND DEVELOPMENT', 'KSJ', 'C5'),
('E', 'COM 104', 'OBJECT ORIENTED PROGRAMMING', 'BSS', 'C6'),
('E', 'ELE 213', 'ANALOG CIRCUITS', 'BJK', 'C5'),
('E', 'INT 503', 'GREEN ENERGY AND PRODUCT DESIGN', 'NKV', 'C3'),
('E', 'MEC 202', 'FLUID MECHANICS AND HEAT TRANSFER', 'SJ', 'C4'),
('E', 'ELE 513', 'DESIGN OF COMMUNICATION PRODUCTS', 'PK', 'C7'),
('E', 'COM 501', 'ADVANCED DATA STRUCTURES AND ALGORITHMS', 'NSG', 'C8'),
('E', 'ELE 510', 'COMMUNICATION SYSTEMS', 'MDS', 'C1'),
('F', 'ELE 215', 'ELECTRONIC CIRCUITS', 'NKV', 'C5'),
('F', 'ELE 102', 'DIGITAL LOGIC DESIGN', 'PK', 'C2'),
('F', 'ELE 214', 'POWER ELECTRONICS AND INDUSTRIAL DRIVES', 'PDD', 'C6'),
('F', 'MEC 212', 'MECHANICAL DESIGN CONCEPTS', 'PPT', 'C4'),
('F', 'MEC 314', 'FINITE ELEMENT ANALYSIS', 'SJ', 'C7'),
('F', 'COM 503', 'DIGITAL IMAGE PROCESSING', 'VMM', 'C8'),
('F', 'MAT 501', 'GRAPH THEORY', 'SMA', 'C1'),
('F', 'DES 508', 'DESIGN FOR X', 'MSK', 'C2'),
('G', 'INT 105', 'ENGINEERING DRAWING', 'CG', 'C9/A9'),
('G', 'MEC 209', 'ENGINEERING SIMULATION', 'CG', 'C3/A9'),
('H', 'DES 504', 'LIFE CYCLE MANAGEMENT', 'SHK', 'C1'),
('I', 'COM 402', 'HUMAN COMPUTER INTERACTION', 'BSS', 'C7'),
('I', 'MAT 502', 'RANDOMIZED AND APPROXIMATION ALGORITHM', 'VK', 'C5'),
('I', 'INT 504', 'DESIGN OF ELECTRONIC COOLING SYSTEM AND PACKAGING', 'BR', 'C3'),
('I', 'ELE 507', 'ELECTROMAGNETIC INTERFERENCE AND COMPATABILITY', 'SSK', 'C2'),
('I', 'COM 304', 'COMPUTER ARCHITECTURE', 'NMM', 'C6'),
('P', 'PHY 106P', 'ELECTRO AND QUANTUM MECHANICS PRACTICE(EDM+MDM 1-20)', 'TS && MM', 'B5'),
('P', 'INT 106', 'MECHANICAL ENGINEERING PRACTICE (MDM 21-40)', 'MSK && MG', 'B2'),
('P', 'ELE 210P', 'ELECTRONIC CIRCUIT DESIGN PRACTICE', 'SSK', 'B8'),
('P', 'ELE 214P', 'POWER ELECTRONICS AND INDUSTRIAL DRIVES', 'PDD', 'B1'),
('P', 'ELE 102P', 'DIGITAL LOGIC DESIGN PRACTICE (COE) ', 'PK', 'NEW'),
('P', 'ELE 209P', 'SIGNALS AND LINEAR SYSTEMS PRACTICE', 'KMM', 'B7'),
('P', 'COM 304P', 'COMPUTER ARCHITECTURE PRACTICE', 'NMM', 'B3'),
('P', 'DES 506', 'PRODUCT DESIGN AND PROTOTYPING', 'BR && MDS', 'C1'),
('P', 'ELE 311P', 'VLSI DESIGN PRACTICE(EDM)', 'BJK', 'B4'),
('Q', 'PHY 106P', 'ELECTROMAGNETICS AND QUANTUM MECHANICS PRACTICE (COE+MDM 21-40)', 'TS && MM', 'B5'),
('Q', 'INT 106', 'MECHANICAL ENGINEERING PRACTICE(MDM 1-20)', 'MSK && MG', 'B2'),
('Q', 'ELE 212P', 'PRINCIPLES OF MEASUREMENTS PRACTICE ', 'PDD', 'B7'),
('Q', 'ELE 102P', 'DIGITAL LOGIC DESIGN PRACTICE (EDM) ', 'PK', 'NEW'),
('Q', 'ELE 215P', 'ELECTRONICS CIRCUITS PRACTICE', 'NKV', 'B8'),
('Q', 'COM 402P', 'HUMAN COMPUTER INTERACTION PRACTICE', 'BSS', 'B3'),
('Q', 'MEC 506', 'ADVANCED ENGINEERING SIMULATION', 'CG', 'A9'),
('Q', 'ELE 311P', 'VLSI DESIGN PRACTICE(COE)', 'SB', 'B4'),
('R', 'INT 105', 'ENGINEERING DRAWING(EDM+MDM 1-20)', 'CG', 'A9'),
('R', 'ELE 213P', 'ANALOG CIRCUITS PRACTICE', 'BJK', 'B8'),
('R', 'MEC 315P', 'APPLIED THERMAL ENGINEERING PRACTICE', 'BR && MG', 'D8'),
('R', 'COM 305P', 'SOFTWARE ENGINEERING PRACTICE', 'NSG', 'B3'),
('R', 'COM 104P', 'OBJECT ORIENTED PROGRAMMING PRACTICE', 'BSS', 'B4'),
('R', 'ELE 211P', 'CONTROL ENGINEERING PRACTICE (MDM)', 'SB', 'B7'),
('S', 'INT 105', 'ENGINEERING DRAWING(COE+MDM 21-40)', 'CG', 'A9'),
('S', 'INT 102', 'BASIC ENGINEERING PRACTICE(EDM)', 'MM', 'B1 && D8'),
('S', 'ELE 211P', 'CONTROL ENGINEERING PRACTICE(EDM)', 'KSJ', 'B7'),
('S', 'COM 304P', 'COMPUTER ARCHITECTURE PRACTICE', 'NMM', 'B3'),
('S', 'COM 204P', 'COMPILER DESIGN PRACTICE', 'VMM', 'B4'),
('S', 'DES 506', 'PRODUCT DESIGN AND PROTOTYPING', 'BR && MDS', 'C1'),
('T', 'DES 505', 'PCB AND EMBEDDED SYSTEM PRACTICE', 'SB', 'NEW'),
('T', 'MEC 209', 'ENGINEERING SIMULATIONS I', 'CG', 'A9'),
('T', 'INT 303', 'PRODUCT DESIGN AND PRACTICE', 'SHK && MDS', 'C1'),
('Y', 'ELE 312P', 'PCB/PROTOTYPE DESIGN', 'KSJ', 'NEW');

-- --------------------------------------------------------

--
-- Table structure for table `jan_may_2014_time_table`
--

CREATE TABLE IF NOT EXISTS `jan_may_2014_time_table` (
  `Day` varchar(15) NOT NULL,
  `8.00-8.50AM` varchar(15) NOT NULL,
  `9.00-9.50AM` varchar(15) NOT NULL,
  `10.00-10.50AM` varchar(15) NOT NULL,
  `11.00-11.50AM` varchar(15) NOT NULL,
  `12.00-12.50PM` varchar(15) NOT NULL,
  `1.00-2.00PM` varchar(15) NOT NULL,
  `2.00-4.45PM` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jan_may_2014_time_table`
--

INSERT INTO `jan_may_2014_time_table` (`Day`, `8.00-8.50AM`, `9.00-9.50AM`, `10.00-10.50AM`, `11.00-11.50AM`, `12.00-12.50PM`, `1.00-2.00PM`, `2.00-4.45PM`) VALUES
('MON', 'A', 'B', 'C & 3U', 'D || A', 'E', 'LUNCH BREAK', 'P'),
('TUE', 'B', 'C', 'E & 3V', 'D', 'A', 'LUNCH BREAK', 'Q'),
('WED', 'H', 'F', 'I & 3W', 'G', 'E', 'LUNCH BREAK', 'R'),
('THU', 'A', 'B', 'H & 3X', 'I', 'F', 'LUNCH BREAK', 'S'),
('FRI', 'C', 'A', 'I & 3Y', 'F', 'H || G', 'LUNCH BREAK', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `rollnumber` varchar(9) NOT NULL,
  `name` varchar(100) NOT NULL,
  `hostel` varchar(15) DEFAULT NULL,
  `room` varchar(15) DEFAULT NULL,
  `st_contact` varchar(30) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `parent_contact` varchar(30) DEFAULT NULL,
  `password` varchar(15) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `activate` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`rollnumber`, `name`, `hostel`, `room`, `st_contact`, `address`, `parent_contact`, `password`, `gender`, `activate`) VALUES
('CDS12M001', 'HARSHIT SRIVASTAVA', 'Ashoka', '303', '7401336504', '', '', '12', '', 1),
('CDS12M002', 'KANNIYAPPAN. C', 'Ashoka', '302', '8883087666', '', '', '12', '', 1),
('CDS12M004', 'NALLAPANENI NAGA RAJU', 'Ashoka', '304', '9940787443', '', '', '12', '', 1),
('CDS12M005', 'PRABHU. T', 'Ashoka', '305', '9940787447', '', '', '12', '', 1),
('CDS12M006', 'RAHUL SINHA', 'Ashoka', '306', '7401361223', '', '', '12', '', 1),
('CDS12M007', 'SAGARIKA MOHANTY', 'Jasmine', '318', '7299102496', '', '', '12', '', 1),
('CDS13M001', 'C. PHALGUNA', 'Ashoka', '619', '9959936090', '', '', '12', '', 1),
('CDS13M002', 'DOMINIC ANTONY', 'Ashoka', '617', '9447327224, 9840037402', '', '', '12', '', 1),
('CDS13M003', 'IQRAM HAIDER', 'Banyan', '50', '9918741201', '', '', '12', '', 1),
('CDS13M004', 'MOHAMMAD ISHTIYAQ QURESHI', 'Ashoka', '613', '8602234169', '', '', '12', '', 1),
('CDS13M005', 'NAGMANI KUMAR', 'Banyan', '47', '8478929162', '', '', '12', '', 1),
('CDS13M006', 'PRADYUMNA KUMAR BISHOYI', 'Banyan', '49', '9439692046', '', '', '12', '', 1),
('CDS13M007', 'PURUSHOTHAMAN. B', 'Ashoka', '628', '8940502060', '', '', '12', '', 1),
('CDS13M008', 'RAHEEM SHAIK', 'Ashoka', '616', '8623247710, 8985007077', '', '', '12', '', 1),
('CDS13M009', 'RANANAVARE ATUL SUBRAO', 'Banyan', '24', '9881813621', '', '', '12', '', 1),
('CDS13M010', 'RUSAN KR BARIK', 'Ashoka', '618', '9853692037, 9962298313', '', '', '12', '', 1),
('CDS13M011', 'SALIL SHARMA', 'Ashoka', '614', '9460570616, 8754598570', '', '', '12', '', 1),
('CDS13M012', 'SHASHANK NAMDEO', 'Banyan', '46', '9799873484', '', '', '12', '', 1),
('CDS13M013', 'SHINDE SWAPNIL SADASHIV ', 'Ashoka', '615', '8390403700', '', '', '12', '', 1),
('CDS13M014', 'SHYAM BHARAT PATHIVADA', 'Ashoka', '612', '8143253263', '', '', '12', '', 1),
('CDS13M015', 'VINEETH MOHAN K K', 'Ashoka', '610', '8129584856', '', '', '12', '', 1),
('COE10B001', 'ANAND. V', 'Ashoka', '503', '9444085602, 04424410249', '', '', '12', '', 1),
('COE10B002', 'ANIL KUMAR. M', 'Ashoka', '504', '9094674760', '', '', '12', '', 1),
('COE10B003', 'BODAPATI SHALINI SALOMI', 'Jasmine', '301', '7299836759', '', '', '12', '', 1),
('COE10B004', 'CHARUGULLA RANJITH KUMAR', 'Ashoka', '505', '08821285641, 9573600865', '', '', '12', '', 1),
('COE10B005', 'GANGASANI SHRAVYA', 'Jasmine', '302', '9543422367', '', '', '12', '', 1),
('COE10B006', 'GIRISH.?K. V. S', 'Ashoka', '506', '7893446707, 8612339423', '', '', '12', '', 1),
('COE10B007', 'LOKESWARA YADAV?. M', 'Ashoka', '507', '8790117405, 8519242002', '', '', '12', '', 1),
('COE10B008', 'MALE DEEPTHI', 'Jasmine', '303', '9884699572, 9441464541', '', '', '12', '', 1),
('COE10B009', 'NAVEEN. C', 'Ashoka', '508', '8686858446', '', '', '12', '', 1),
('COE10B010', 'N.Sowmiya', 'Jasmine', '304', '9094079304', '', '', '12', '', 1),
('COE10B011', 'PAVAN KUMAR. V', 'Ashoka', '509', '9849633572', '', '', '12', '', 1),
('COE10B012', 'PRIYANKA BHANDARE', 'Jasmine', '305', '7305036132', '', '', '12', '', 1),
('COE10B013', 'RAMESH KRISHNAN P S', 'Ashoka', '510', '9789047384', '', '', '12', '', 1),
('COE10B014', 'SHAILAJA. K', 'Jasmine', '306', '9445964751', '', '', '12', '', 1),
('COE10B015', 'SOWMYA JAIN', 'Jasmine', '307', '9346328261 04024000000', '', '', '12', 'm', 1),
('COE10B016', 'SPANDAN. M', 'Ashoka', '511', '8801456020', '', '', '12', '', 1),
('COE10B017', 'SURESH NAIK. J', 'Ashoka', '512', '7842922051', '', '', '12', '', 1),
('COE10B018', 'TRIPURANENI RAGHAVENDRA', 'Ashoka', '513', '8008244333, 9000722625', '', '', '12', '', 1),
('COE10B019', 'VARUN CHANDRA. J', 'Ashoka', '514', '9490118450', '', '', '12', '', 1),
('COE10B020', 'NIMMALA LEELA MANOJ', 'Ashoka', '515', '9618873937', '', '', '12', '', 1),
('COE10D001', 'KANJAR DE', 'Jasmine', '211', '8144104420', '', '', '12', '', 1),
('COE11B001', 'ACHANTA MOUNIKA', 'Jasmine', '325', '9445419520', '', '', '12', '', 1),
('COE11B002', 'ANTHONY VIJAY KUMAR MEKALA', 'Ashoka', '421', '91346294049', '', '', '12', '', 1),
('COE11B003', 'ASHISH', 'Ashoka', '118', '9545404920', '', '', '12', '', 1),
('COE11B004', 'AVULA SANDEEP', 'Ashoka', '207', '9444900335, 8644253302', '', '', '12', '', 1),
('COE11B005', 'BATTINOJU SAI KUMAR', 'Ashoka', '110', '9551913187', 'Hyderabad, Andhra Pradesh - 500060.', '9848313637, 8106135298', '12', 'm', 1),
('COE11B008', 'DASARI ROBERTKIRAN', 'Ashoka', '116', '7299836771', '', '', '12', '', 1),
('COE11B009', 'DEETI SUNIL KUMAR', 'Ashoka', '424', '9094381913', '', '', '12', '', 1),
('COE11B011', 'GOLLA AJAYA TEJASWI', 'Ashoka', '425', '9445419325', '', '', '12', '', 1),
('COE11B012', 'ILLURI MADHULAHARI', 'Jasmine', '328', '7401336509', '', '', '12', '', 1),
('COE11B013', 'KAMLESH CHOUDHARY', 'Ashoka', '125', '8015608090', '', '', '12', '', 1),
('COE11B014', 'KATHA KRISHNA MOHAN REDDY', 'Ashoka', '426', '9094381911', '', '', '12', '', 1),
('COE11B015', 'KAVYA P', 'Jasmine', '324', '9448112651, 8023607539', '', '', '12', '', 1),
('COE11B016', 'KRISHNA CHAURASIA', 'Ashoka', '120', '9444900522, 9305675548', '', '', '12', '', 1),
('COE11B017', 'LAKAVATH RAM NAIK', 'Ashoka', '201', '9642290926', '', '', '12', '', 1),
('COE11B018', 'M AZHAKU SAKTHI VEL', 'Ashoka', '604', '8438414842', '', '', '12', '', 1),
('COE11B019', 'MOHIT SINGHANIYA', 'Ashoka', '203', '9706030401, 03624223304', '', '', '12', 'm', 1),
('COE11B020', 'PENDYALA SUDHEER BABU', 'Ashoka', '204', '7842485733, 8598228022', '', '', '12', '', 1),
('COE11B022', 'SHASHWAT SHIVAM', 'Ashoka', '205', '8608166274', '', '', '12', '', 1),
('COE11B023', 'SIDDHARTHA AGARWAL', 'Ashoka', '206', '9444968068', '', '', '12', '', 1),
('COE11B024', 'SRI SAI KUMAR R', 'Ashoka', '207', '7845669426', '', '', '12', 'm', 1),
('COE11B025', 'SWARESH UTTAM SANKPAL', 'Ashoka', '208', '7845491055', '', '', '12', '', 1),
('COE11B026', 'TUMMALA NAGA KULADEEP', 'Ashoka', '209', '9441723555', '', '', '12', '', 1),
('COE11B027', 'VENNAMANENI MANOGNA', 'Jasmine', '324', '7299417911', '', '', '12', '', 1),
('COE11B030', 'BATTINOJU SAMPATH', 'ASHOKA', '111', 'ASDF', 'ASDF', 'ASDF', 'c20ad4d76fe9775', 'm', 0),
('COE12B001', 'ANITA SEERVI', 'Jasmine', '111', '9461678730, 9047386698', '', '', '12', '', 1),
('COE12B002', 'BODDETI V J SOWJANYA', 'Jasmine', '218', '9848615292, 9940133767', '', '', '12', '', 1),
('COE12B004', 'DEEPANSHU  GAUTAM', 'Lotus', '14', '9176096341, 0184-2266873', '', '', '12', '', 1),
('COE12B005', 'GANTASALA SAI HEMANTH', 'Lotus', '14', '8008578011', '', '', '12', '', 1),
('COE12B006', 'GUDDETI VENKAT SHIVA', 'Lotus', '14', '8121482203', '', '', '12', '', 1),
('COE12B007', 'INIYAI T', 'Jasmine', '111', '9841098488, 04423713277', '', '', '12', '', 1),
('COE12B008', 'JUNOOTHULA RASHMITHA REDDY', 'Jasmine', '219', '9346617346', '', '', '12', '', 1),
('COE12B009', 'KADIMISETTY AVINASH', 'Lotus', '15', '7299102491, 08916452654', '', '', '12', '', 1),
('COE12B010', 'KAPIL GUPTA', 'Lotus', '15', '7401320021, 01492-233768', '', '', '12', '', 1),
('COE12B011', 'KOMARAGIRI GOWTHAMI', 'Jasmine', '112', '8985968276', '', '', '12', '', 1),
('COE12B012', 'KULDEEP GUNTA', 'Lotus', '15', '8977592356', '', '', '12', '', 1),
('COE12B013', 'MAJETY HARI KRISHNA', 'Lotus', '16', '9042236173', '', '', '12', '', 1),
('COE12B014', 'MEDHA VASISHTH', 'Jasmine', '220', '9419142643, 2439443', '', '', '12', '', 1),
('COE12B015', 'NADA ABDUL MAJEED PULATH', 'Jasmine', '220', '97299102508', '', '', '12', '', 1),
('COE12B016', 'NAGALLA PRUTHVI', 'Lotus', '16', '9491226677, 08644226677', '', '', '12', '', 1),
('COE12B017', 'NITHIN SHAMSUDHIN', 'Lotus', '16', '9526626786, 9400734541', '', '', '12', '', 1),
('COE12B018', 'NITIN VIVEK BHARTI', 'Lotus', '17', '8122449454', '', '', '12', '', 1),
('COE12B019', 'NOONE RAMYA', 'Jasmine', '221', '8681980818, 9440657422', '', '', '12', '', 1),
('COE12B020', 'OGURI SRI SIVA KRISHNA TEJA', 'Lotus', '17', '9866073204, 9092266507', '', '', '12', '', 1),
('COE12B021', 'PIDUGU SAI KISHORE', 'Lotus', '17', '9440412884', '', '', '12', '', 1),
('COE12B022', 'PONNEKANTI PRANEETH', 'Lotus', '27', '8912510573, 9701348318', '', '', '12', '', 1),
('COE12B023', 'POTHULABOGUDA  MADHURI', 'Jasmine', '221', '9440355507, 23702099', '', '', '12', '', 1),
('COE12B024', 'PRANJAL CHOUBEY', 'Lotus', '27', '8717978987', '', '', '12', '', 1),
('COE12B025', 'ROOPESH  REDDY K', 'Lotus', '27', '8008570102', '', '', '12', '', 1),
('COE12B026', 'SAJJA BALASUBRAMANYAM', 'Lotus', '28', '9908682806', '', '', '12', '', 1),
('COE12B027', 'SHUBHAM KUMAR SINGH', 'Lotus', '28', '9415804129', '', '', '12', '', 1),
('COE12B028', 'SIMMASETTY SOWMITH', 'Lotus', '28', '9701373459', '', '', '12', '', 1),
('COE12B029', 'TOKALA AVINASH RAJ', 'Lotus', '29', '9490479953', '', '', '12', '', 1),
('COE12B030', 'VADYALA SAI PRAVEEN REDDY', 'Lotus', '29', '9700735934', '', '', '12', '', 1),
('COE12D001', 'M.MOHAMED ASAN BASIN', 'Jasmine', '210', '9442753405', '', '', '12', '', 1),
('COE13B001', 'A NIRMAL KUMAR', 'Banyan', '19', '9704355374, 9962385558', '', '', '12', '', 1),
('COE13B002', 'ABINAYA J L', 'Jasmine', '125', '9486898270, 9600120134', '', '', '12', '', 1),
('COE13B003', 'ADARSH SHRIVASTAVA', 'Banyan', '40', '7587135592, 7752240292', '', '', '12', '', 1),
('COE13B004', 'CHAGAM YAMUNA', 'Jasmine', '119', '9490181378', '', '', '12', '', 1),
('COE13B005', 'CHAKSHU JAIN', 'Banyan', '18', '9414360176, 01413297174', '', '', '12', '', 1),
('COE13B006', 'DHAYALAN B', 'Banyan', '39', '9345720320, 04422232687', '', '', '12', '', 1),
('COE13B007', 'GANDHI SHUBHAM SUNIL', 'Banyan', '6', '9422675678, 8678901402', '', '', '12', '', 1),
('COE13B008', 'GANIPAKA VAMSHI', 'Banyan', '19', '9652432027', '', '', '12', '', 1),
('COE13B009', 'GANTA HARIKA', 'Jasmine', '117', '9949645594, 7299984466', '', '', '12', '', 1),
('COE13B011', 'KIRAN KUMAR K V', 'Banyan', '52', '9445621213, 04426321213', '', '', '12', '', 1),
('COE13B012', 'KOMMU LAKSHMI BHANU MOORTHY', 'Banyan', '39', '9424142903', '', '', '12', '', 1),
('COE13B013', 'KORSA SANDHYA', 'Jasmine', '121', '9441917727, 9492960592', '', '', '12', '', 1),
('COE13B014', 'L VIJAY SRI', 'Jasmine', '117', '9790758527', '', '', '12', '', 1),
('COE13B015', 'LOKESH KUMAR V', 'Banyan', '12', '9380781249, 04424340989', '', '', '12', '', 1),
('COE13B016', 'M V SAI TEJA', 'Banyan', '19', '9885309711, 8518244641', '', '', '12', '', 1),
('COE13B017', 'MOODE TAGORE NAIK', 'Banyan', '19', '9966519049', '', '', '12', '', 1),
('COE13B018', 'MOOLAM HIMA SWETHA', 'Jasmine', '110', '9397091166', '', '', '12', '', 1),
('COE13B019', 'NADIMPALLI KRUTHI MANOJNA', 'Jasmine', '126', '9701372171, 9884156533', '', '', '12', '', 1),
('COE13B020', 'NALLAGATLA PRAVEENA', 'Jasmine', '120', '9963524063, 9866131342', '', '', '12', '', 1),
('COE13B021', 'NUNAVATH MAHENDAR', 'Banyan', '22', '8125846981, 9884682607', '', '', '12', '', 1),
('COE13B022', 'PRAVEEN KUMAR', 'Banyan', '14', '9431326817', '', '', '12', '', 1),
('COE13B023', 'R AVINASH', 'Banyan', '5', '9940083725, 9791034025', '', '', '12', '', 1),
('COE13B024', 'RAMANADHAM HEMANTH KUMAR', 'Banyan', '13', '9848403407, 9962212878', '', '', '12', '', 1),
('COE13B025', 'S. NEERAJ', 'Banyan', '7', '9445397583, 2309570', '', '', '12', '', 1),
('COE13B026', 'S.SESHURAM', 'Banyan', '11', '', '', '', '12', '', 1),
('COE13B027', 'SAGGURTHI SUHAS', 'Banyan', '21', '9441081897', '', '', '12', '', 1),
('COE13B028', 'SARATHI K', 'Banyan', '13', '9443234631, 04288239414', '', '', '12', '', 1),
('COE13B029', 'SHANTANU KARNWAL', 'Banyan', '48', '9810044429, 42151006', '', '', '12', '', 1),
('COE13B030', 'SHRUTI C SARASWATI', 'Jasmine', '115', '9884171385', '', '', '12', '', 1),
('COE13B031', 'SRIPATHI ANASUYA SAI SRUTHI', 'Jasmine', '110', '9247479557, 9347156025', '', '', '12', '', 1),
('COE13B032', 'SUDHEER SURENDRAN', 'Banyan', '41', '9444832100', '', '', '12', '', 1),
('COE13B033', 'SUMA SODAGUDI', 'Jasmine', '121', '9444832100', '', '', '12', '', 1),
('COE13B034', 'SUSHMA', 'Jasmine', '123', '9948763083, 9494269863', '', '', '12', '', 1),
('COE13B035', 'THATIKONDA CHETANA ROHIT', 'Banyan', '6', '9701682924', '', '', '12', '', 1),
('COE13B036', 'THOKALA PRATHYUSHA.', 'Jasmine', '121', '9959106098', '', '', '12', '', 1),
('COE13D003', 'OSWALD. C', 'Jasmine', '214', '9941313457', '', '', '12', '', 1),
('COE13D004', 'SHANMUGAKUMAR. M', 'Jasmine', '213', '8883685621', '', '', '12', '', 1),
('EDM09B003', 'GHANSHYAM', 'Ashoka', '621', '9006790148', '', '', '12', '', 1),
('EDM09D001', 'B. MADHEVAN', 'Jasmine', '217', '9941012884', '', '', '12', '', 1),
('EDM09D002', 'E. PAPANASAM', 'Jasmine', '206', '9698887001', '', '', '12', '', 1),
('EDM10B001', 'ANVITHA?NANDIGAM ', 'Jasmine', '308', '9491145290, 9866344699', '', '', '12', '', 1),
('EDM10B002', 'AVINASH CHANDRA KAUSHIK?', 'Ashoka', '516', '9551953253', '', '', '12', '', 1),
('EDM10B003', 'CHAGALAMARRI HARI KRISHNA?', 'Ashoka', '517', '9094461068, 8564255546', '', '', '12', '', 1),
('EDM10B004', 'CHANDRA KANTH. A ', 'Ashoka', '518', '9848066777', '', '', '12', '', 1),
('EDM10B005', 'GANDAM KUMAR RAJA', 'Ashoka', '519', '8683236569', '', '', '12', '', 1),
('EDM10B006', 'KANNA VENKATESH?', 'Ashoka', '520', '9866009124', '', '', '12', '', 1),
('EDM10B007', 'KEERTHI VIGNESH KUMAR.  J?', 'Ashoka', '521', '7401146627', '', '', '12', '', 1),
('EDM10B008', 'LAXMAN RAM PRASAD REDDY. M?', 'Ashoka', '522', '9440381670', '', '', '12', '', 1),
('EDM10B009', 'NANDITA BHASKHAR', 'Jasmine', '309', '9686908026, 8025231893', '', '', '12', '', 1),
('EDM10B010', 'PRANITHA?BODLA ', 'Jasmine', '115', '7200494029', '', '', '12', '', 1),
('EDM10B011', 'RAJ KUMAR. P ', 'Ashoka', '523', '7667652293', '', '', '12', '', 1),
('EDM10B012', 'RAVITEJA. J ', 'Ashoka', '524', '9444357522', '', '', '12', '', 1),
('EDM10B013', 'SAIBABA VEMURI?', 'Ashoka', '525', '9581439204', '', '', '12', '', 1),
('EDM10B014', 'SANGEETHA. J', 'Jasmine', '311', '9440061750, 9445005633', '', '', '12', '', 1),
('EDM10B015', 'SREE CHANDRA TEJA INTURI?', 'Ashoka', '526', '7299102512', '', '', '12', '', 1),
('EDM10B016', 'SRINIVAS. G?', 'Ashoka', '527', '8297391312', '', '', '12', '', 1),
('EDM10B017', 'V G SAI PHANI RAJA SEKHAR?', 'Ashoka', '528', '9700370500', '', '', '12', '', 1),
('EDM10B018', 'VINEET. S ', 'Ashoka', '401', '9884308990, 04027677686', '', '', '12', '', 1),
('EDM10B019', 'MACHERLA SPOORTHY?', 'Jasmine', '312', '9444359069', '', '', '12', '', 1),
('EDM10D001', 'K. ARUN', 'Jasmine', '208', '9790355036', '', '', '12', '', 1),
('EDM10D002', 'RAJIN M LINUS', 'Jasmine', '204', '9488078881', '', '', '12', '', 1),
('EDM11B001', 'ADITYA NARAYANAN', 'Ashoka', '210', '9868247281, 26105036', '', '', '12', '', 1),
('EDM11B002', 'B ASHOK BABU', 'Ashoka', '211', '9493610875', '', '', '12', '', 1),
('EDM11B003', 'BODDI REDDI SANJUSHA REDDY', 'Jasmine', '325', '9094497494', '', '', '12', '', 1),
('EDM11B004', 'CHUNDURI VENKATA DHEERAJ KUMAR', 'Ashoka', '212', '9440081897, 8438414847', '', '', '12', '', 1),
('EDM11B005', 'DAMMU SAICHARAN REDDY', 'Ashoka', '213', '9949291140', '', '', '12', '', 1),
('EDM11B007', 'GUBBALA ANIL', 'Ashoka', '214', '9550351373', '', '', '12', '', 1),
('EDM11B008', 'JANASWAMY SRAVAN', 'Ashoka', '215', '9866599012, 27619612', '', '', '12', '', 1),
('EDM11B009', 'KATTUPALLI NAVYA', 'Jasmine', '326', '', '', '', '12', '', 1),
('EDM11B010', 'KORLABANDI SISIRSIMHA', 'Ashoka', '216', '9444968201, 8912799687', '', '', '12', '', 1),
('EDM11B011', 'M ABHISHRAVAN', 'Ashoka', '217', '9912402242, 9396927667', '', '', '12', '', 1),
('EDM11B012', 'M ASHWINI', 'Jasmine', '326', '9551913079', '', '', '12', '', 1),
('EDM11B013', 'MORA RAJ KUMAR', 'Ashoka', '218', '9444945138', '', '', '12', '', 1),
('EDM11B014', 'NANDAMURI SOWMIKA', 'Jasmine', '327', '7418312674', '', '', '12', '', 1),
('EDM11B015', 'NIKHIL SHARMA', 'Ashoka', '219', '9848224422, 24617683', '', '', '12', '', 1),
('EDM11B016', 'P L N THANOJ KUMAR', 'Ashoka', '220', '9985490753, 8624253314', '', '', '12', '', 1),
('EDM11B017', 'PAPANABOYINA SRIKANTH', 'Ashoka', '221', '9948951809', '', '', '12', '', 1),
('EDM11B018', 'PARMAR DHRUV CHETAN', 'Ashoka', '222', '8983444078', '', '', '12', '', 1),
('EDM11B019', 'PUJARI KRISHNA SAGAR', 'Ashoka', '223', '8977873932', '', '', '12', '', 1),
('EDM11B020', 'RATOD NAVEEN NAIK', 'Ashoka', '224', '8122991076', '', '', '12', '', 1),
('EDM11B021', 'S MAHESH VARMA', 'Ashoka', '225', '7418276308', '', '', '12', '', 1),
('EDM11B022', 'SOMA LOKESH KUMAR NAGA MANIKANTA', 'Ashoka', '102', '9445419253, 9848660360', '', '', '12', '', 1),
('EDM11B023', 'SONTI AUROBINDO MALLESWAR', 'Ashoka', '104', '8842348248, 7845448046', '', '', '12', '', 1),
('EDM11B024', 'SORNAPUDI LAKSHMI NARESH', 'Ashoka', '106', '9444882603, 8868226738', '', '', '12', '', 1),
('EDM11B025', 'SWETHA M MANUR', 'Jasmine', '327', '7299205232', '', '', '12', '', 1),
('EDM11B026', 'TUMMALA NIKHILA', 'Jasmine', '323', '9445419188', '', '', '12', '', 1),
('EDM11B027', 'UPPADA BALAKRISHNA', 'Ashoka', '108', '9094497445, 8945243500', '', '', '12', '', 1),
('EDM12B001', 'AAQUILA ARUL ARZELA', 'Jasmine', '222', '9787642653, 9176637339', '', '', '12', '', 1),
('EDM12B002', 'AARTHI M SUNDARAM', 'Jasmine', '223', '9566753735', '', '', '12', '', 1),
('EDM12B003', 'ALLU ASHA KUMARI', 'Jasmine', '222', '9666025556', '', '', '12', '', 1),
('EDM12B004', 'AMBATI PRAVALLIKA', 'Jasmine', '320', '9498073579', '', '', '12', '', 1),
('EDM12B005', 'ANKITH V', 'Lotus', '29', '04792360585, 7299102503', '', '', '12', '', 1),
('EDM12B006', 'ANUMULA TEJASWI', 'Jasmine', '219', '9394782990, 8682863984', '', '', '12', '', 1),
('EDM12B007', 'AVULA VENKATA  SAI BHARGAV KUMAR ', 'Lotus', '30', '9676087969, 9703104949', '', '', '12', '', 1),
('EDM12B008', 'BANDHAMRAVURI UTTEJ', 'Lotus', '30', '7299564363', '', '', '12', '', 1),
('EDM12B009', 'DASARI NAVEEN BABU', 'Lotus', '30', '8143178847, 8852255437', '', '', '12', '', 1),
('EDM12B010', 'DEVARLA AVINASH ', 'Lotus', '6', '9948185032', '', '', '12', '', 1),
('EDM12B012', 'GIRIDHARAN K', 'Lotus', '6', '9444423894, 24768551', '', '', '12', '', 1),
('EDM12B013', 'JACOB VAIDIAN P T', 'Lotus', '7', '9176046701', '', '', '12', '', 1),
('EDM12B014', 'KALVAPALLI SRAVANA CHANDRA', 'Jasmine', '114', '9498073586', '', '', '12', '', 1),
('EDM12B015', 'KAVIYA R', 'Jasmine', '223', '8220685437', '', '', '12', '', 1),
('EDM12B016', 'KOMARAVOLU KRISHNA KAUSHIK', 'Lotus', '7', '9705856761, 9940353498', '', '', '12', '', 1),
('EDM12B017', 'KORLAPATI PRANEETH', 'Lotus', '8', '9059787418', '', '', '12', '', 1),
('EDM12B018', 'MASANAM SIVA SAI AKASH DEEP', 'Lotus', '8', '8500283744, 9840076810', '', '', '12', '', 1),
('EDM12B019', 'MOHAMMED AFROZE', 'Lotus', '9', '9490519796', '', '', '12', '', 1),
('EDM12B020', 'MUDDADA AKHIL GANDHI', 'Lotus', '9', '7401336585', '', '', '12', '', 1),
('EDM12B021', 'PANYALA SURYA KIRAN REDDY', 'Lotus', '10', '8500409764', '', '', '12', '', 1),
('EDM12B022', 'PREETAM NAIK A', 'Lotus', '10', '04023045841, 7299101354', '', '', '12', '', 1),
('EDM12B023', 'RAM KUMAR Y', 'Lotus', '11', '8682973280', '', '', '12', '', 1),
('EDM12B024', 'RANGU GOUTHAM', 'Lotus', '11', '9492092133', '', '', '12', '', 1),
('EDM12B025', 'RAVIKANTI VIKRAM', 'Lotus', '12', '87299130300', '', '', '12', '', 1),
('EDM12B026', 'SALE MANOJ KUMAR', 'Lotus', '12', '8686388290, 9094494467', '', '', '12', '', 1),
('EDM12B027', 'SHASHIDHAR D', 'Lotus', '19', '9989352900, 9551957813', '', '', '12', '', 1),
('EDM12B028', 'SOUMYA S VASTRAD', 'Jasmine', '113', '9448865929, 8023439630', '', '', '12', '', 1),
('EDM12B029', 'VANGALA SUSMITHA REDDY', 'Jasmine', '116', '8124249469', '', '', '12', '', 1),
('EDM12B030', 'VIGNESH N', 'Lotus', '19', '8870912638, 9884648064', '', '', '12', '', 1),
('EDM12B031', 'VUYYURU ANUSHA', 'Jasmine', '113', '9498073584', '', '', '12', '', 1),
('EDM13B001', 'ALAJANGI V V S S L P TEJASRI', 'Jasmine', '126', '9908425738', '', '', '12', '', 1),
('EDM13B002', 'AMGOTH SWAMINATH', 'Banyan', '38', '8106049343', '', '', '12', '', 1),
('EDM13B003', 'B TEJ KIRAN', 'Banyan', '11', '9962514324, 04426155084', '', '', '12', '', 1),
('EDM13B004', 'BODEMPUDI VINEETHA', 'Jasmine', '126', '9502446891', '', '', '12', '', 1),
('EDM13B005', 'CHUNDURU SHIVA KAUSHIK', 'Banyan', '40', '9849180546, 9949947272', '', '', '12', '', 1),
('EDM13B006', 'D.RAVALI', 'Jasmine', '125', '9346508043, 8939919034', '', '', '12', '', 1),
('EDM13B007', 'GANJI JAYASREE', 'Jasmine', '118', '9849563037', '', '', '12', '', 1),
('EDM13B008', 'GANTLA SAI ASRITHA', 'Jasmine', '122', '8096688768, 8552251094', '', '', '12', '', 1),
('EDM13B009', 'GEDI HARISH', 'Banyan', '18', '9490143299, 9531845187', '', '', '12', '', 1),
('EDM13B010', 'JAJJARA SANDEEP', 'Banyan', '20', '9866723288', '', '', '12', '', 1),
('EDM13B011', 'JUNOOTHULA HARSHITHA REDDY', 'Jasmine', '124', '9347591099, 7401698079', '', '', '12', '', 1),
('EDM13B012', 'KANDUKURI PHALGUNI AISHWARYA', 'Jasmine', '124', '9346214387, 9701914449', '', '', '12', '', 1),
('EDM13B013', 'KANIMOZHI S', 'Jasmine', '122', '9884810114, 944410114', '', '', '12', '', 1),
('EDM13B014', 'KUDUPUDI RAJESH', 'Banyan', '14', '9290019816', '', '', '12', '', 1),
('EDM13B015', 'M S ADARSH', 'Banyan', '48', '9443323944, 04222644891', '', '', '12', '', 1),
('EDM13B016', 'MALLIKARJUN AKKENAPALLY', 'Banyan', '16', '9390120649', '', '', '12', '', 1),
('EDM13B017', 'MANDAVA POOJITHA', 'Jasmine', '119', '9440269456', '', '', '12', '', 1),
('EDM13B018', 'MANNE SAI SRAVAN', 'Banyan', '41', '9000456130, 08912886130', '', '', '12', '', 1),
('EDM13B019', 'MUKKALA AVINASH REDDY', 'Banyan', '52', '9573173038', '', '', '12', '', 1),
('EDM13B020', 'NAVULURI MADHURI KRISHNA', 'Jasmine', '120', '9490464640, 08612343105', '', '', '12', '', 1),
('EDM13B021', 'P.K.ASHREYA', 'Banyan', '23', '9941572204, 9444383434', '', '', '12', '', 1),
('EDM13B022', 'PILLALAMARRIKRISHNA CHANDRA', 'Banyan', '8', '7730996110', '', '', '12', '', 1),
('EDM13B023', 'POOJA MAHESH', 'Jasmine', '122', '9448412146, 9448412136', '', '', '12', '', 1),
('EDM13B024', 'PREETIKA MURALIDHARAN', 'Jasmine', '122', '9840250719, 9042012241', '', '', '12', '', 1),
('EDM13B025', 'RAJA SRAVYA TANMAYEE', 'Jasmine', '127', '9491103160, 08924248033', '', '', '12', '', 1),
('EDM13B026', 'RATHOD RAJENDER', 'Banyan', '38', '8008267182', '', '', '12', '', 1),
('EDM13B027', 'S MURALI KRISHNA NAIK', 'Banyan', '38', '9963611516', '', '', '12', '', 1),
('EDM13B028', 'SALAVADI ANUSHA', 'Jasmine', '123', '8971423923, 08023403969', '', '', '12', '', 1),
('EDM13B029', 'SAMALA AKHILA', 'Jasmine', '123', '9885564926', '', '', '12', '', 1),
('EDM13B030', 'SHANIGARAPU MANISHA', 'Jasmine', '124', '9848177370, 8713220006', '', '', '12', '', 1),
('EDM13B031', 'SIVAPRASAD SANTHOSH LIKITH NARAYAN', 'Banyan', '8', '9618872083, 9940188591', '', '', '12', '', 1),
('EDM13B033', 'TARIGOPULA HOMA PRIYA', 'Jasmine', '124', '9030632934', '', '', '12', '', 1),
('EDM13B034', 'VANI MRUDULA MAGAPATI', 'Jasmine', '120', '9441072204', '', '', '12', '', 1),
('EDM13B035', 'VANUKURU LAKSHMI SOWJANYA', 'Jasmine', '127', '9441921635, 9962574601', '', '', '12', '', 1),
('EDM13B036', 'VAYILATI DURGA BHAVANI', 'Jasmine', '122', '8008258318', '', '', '12', '', 1),
('EDM13B037', 'VISHNUBHOTLA RUKMINI DEVI', 'Jasmine', '124', '9866484239, 9962768185', '', '', '12', '', 1),
('EDM13B038', 'SYED RUKSHANA', 'Jasmine', '120', '', '', '', '12', '', 1),
('EDM13D001', 'KANAPARTHI V PHANI KUMAR', 'Jasmine', '209', '9380334959', '', '', '12', '', 1),
('EDS12M001', 'NARAYANAN P.P.', 'Ashoka', '307', '9445824317, 04002102703', '', '', '12', '', 1),
('EDS12M003', 'NIRUPAM PAUL', 'Ashoka', '308', '9655574236', '', '', '12', '', 1),
('EDS12M004', 'RAJMOHAN.S', 'Ashoka', '309', '8012042118, 9345473998', '', '', '12', '', 1),
('EDS12M006', 'SAMARESH CHANDRA NAYAK', 'Ashoka', '311', '9551953910', '', '', '12', '', 1),
('EDS12M007', 'SANTHOSHKUMAR. M', 'Ashoka', '312', '9994190409', '', '', '12', '', 1),
('EDS12M008', 'SIKHARAM UDAY KIRAN', 'Ashoka', '313', '9841185516', '', '', '12', '', 1),
('EDS12M009', 'SIVAKUMAR ELANGOVAN', 'Ashoka', '318', '9551399184', '', '', '12', '', 1),
('EDS12M010', 'VIPIN MUKUNDAN', 'Ashoka', '315', '9941057304, 04672270428', '', '', '12', '', 1),
('EDS12M011', 'VIPPIN CHANDHAR. S', 'Ashoka', '314', '9551105637', '', '', '12', '', 1),
('EDS12M012', 'VORUGANTY RAKESH', 'Ashoka', '301', '9092613664', '', '', '12', '', 1),
('EDS13M001', 'ABHAY KUMAR', 'Banyan', '25', '9477511996', '', '', '12', '', 1),
('EDS13M002', 'ABHIJIT BALA', 'Banyan', '29', '9960882856', '', '', '12', '', 1),
('EDS13M003', 'ADDANKI SAI CHARAN', 'Ashoka', '316', '9177750010, 9092805229', '', '', '12', '', 1),
('EDS13M004', 'AMITABH', 'Banyan', '33', '7739562459', '', '', '12', '', 1),
('EDS13M005', 'ANKUR AGARWAL. P', 'Ashoka', '626', '9367736347, 7200587815', '', '', '12', '', 1),
('EDS13M006', 'BALAKRISHNAN. N', 'Banyan', '35', '9962311778', '', '', '12', '', 1),
('EDS13M007', 'GANDRA V MURALI KRISHNA REDDY', 'Banyan', '46', '9666341274', '', '', '12', '', 1),
('EDS13M008', 'LAWANYA. R', 'Jasmine', '315', '8056158165', '', '', '12', '', 1),
('EDS13M009', 'MANO RAJASIMHAN. N', 'Ashoka', '611', '9788740603, 04545251205', '', '', '12', '', 1),
('EDS13M010', 'NISHANTH. P. V', 'Banyan', '30', '7896954557', '', '', '12', '', 1),
('EDS13M011', 'RAMDINESH P.C', 'Ashoka', '627', '9445454211', '', '', '12', '', 1),
('EDS13M012', 'S. DINESH KUMAR', 'Banyan', '26', '9600126276', '', '', '12', '', 1),
('EDS13M013', 'S. KRISHNAKARTHIK', 'Banyan', '32', '08512230355, 9949251176', '', '', '12', '', 1),
('EDS13M014', 'SARATHI KANNAN. R. S', 'Banyan', '34', '9442544606', '', '', '12', '', 1),
('EDS13M015', 'SATYA RAO TAMADAPU', 'Banyan', '31', '9000314302', '', '', '12', '', 1),
('EDS13M016', 'VAKA BABU', 'Banyan', '27', '9133305051', '', '', '12', '', 1),
('EDS13M017', 'VEGESNA S.M. SRINIVASAVARMA', 'Banyan', '51', '9491101366, 08677223443', '', '', '12', '', 1),
('EDS13M018', 'VENKATESAN. K.T', 'Banyan', '28', '9245815136, 04298231876', '', '', '12', '', 1),
('MAT10D001', 'S. DEVI YAMINI', 'Jasmine', '319', '9043708554', '', '', '12', '', 1),
('MAT11D001', 'T.P.SANDHYA', 'Jasmine', '322', '9444950990', '', '', '12', '', 1),
('MAT12D001', 'DHANALAKSHIMI', 'Jasmine', '317', '7418764389', '', '', '12', '', 1),
('MDM10B001', 'ANUJA KANTAREDDY', 'Jasmine', '313', '9941313517', '', '', '12', 'm', 1),
('MDM10B002', 'AVINASH REDDY. K ', 'Ashoka', '402', '8632246255, 9848406316', '', '', '12', '', 1),
('MDM10B003', 'CHAITANYA. C. S ', 'Ashoka', '403', '9444357578, 9963288998', '', '', '12', '', 1),
('MDM10B004', 'C. CHINGMAK LACHUMONG ', 'Ashoka', '404', '9176024604', '', '', '12', '', 1),
('MDM10B005', 'JAYANTH GOUTHAM. V ', 'Ashoka', '405', '9440208657', '', '', '12', '', 1),
('MDM10B006', 'JOSHI RAM. V ', 'Ashoka', '406', '9094434298, 8744243123', '', '', '12', '', 1),
('MDM10B007', 'KARANTOTH SAI KUMAR?', 'Ashoka', '407', '9951127920', '', '', '12', '', 1),
('MDM10B008', 'NAVEEN. B ', 'Ashoka', '408', '9989344694', '', '', '12', '', 1),
('MDM10B009', 'PRAKASH VARMA?Y. E ', 'Ashoka', '409', '9848455798, 8644234766', '', '', '12', '', 1),
('MDM10B010', 'SAIHAREESH. B ', 'Ashoka', '410', '9885012528', '', '', '12', '', 1),
('MDM10B011', 'SATHISH KUMAR. S ', 'Ashoka', '411', '9710702776', '', '', '12', '', 1),
('MDM10B012', 'SATHYANARAYANAN. N ', 'Ashoka', '412', '8939568427', '', '', '12', '', 1),
('MDM10B013', 'SHASHWAT JAIN?', 'Ashoka', '413', '9425075072, 7312550989', '', '', '12', '', 1),
('MDM10B014', ' SIDDHARTH. M ', 'Ashoka', '414', '9910091810', '', '', '12', '', 1),
('MDM10B015', 'UTKARSH SHARMA?', 'Ashoka', '415', '9005481616', '', '', '12', '', 1),
('MDM10B016', 'VASANTH KUMAR. G ', 'Ashoka', '416', '9444344240, 04027173358', '', '', '12', '', 1),
('MDM10B017', 'G.V.S. SASANKA', 'Ashoka', '417', '7842424293', '', '', '12', '', 1),
('MDM10B018', 'N. HEMA RAJESH', 'Ashoka', '418', '9441141516, 8912798810', '', '', '12', '', 1),
('MDM10B019', 'B. VINEELA DEVI', 'Jasmine', '314', '9025146346', '', '', '12', '', 1),
('MDM11B001', 'ADITYA KULKARNI', 'Ashoka', '516', '9952047221, 9827067976', '', '', '12', '', 1),
('MDM11B002', 'AMRUTALURI VINEEL CHANDRA', 'Ashoka', '502', '9566811317', '', '', '12', '', 1),
('MDM11B003', 'ASHISH KUMAR', 'Ashoka', '310', '9444900550, 9889907145', '', '', '12', '', 1),
('MDM11B005', 'CHENGALA SUDHAKAR', 'Ashoka', '112', '9491901577', '', '', '12', '', 1),
('MDM11B007', 'DAKA PAVAN KUMAR REDDY', 'Ashoka', '126', '9445419259, 8632239598', '', '', '12', '', 1),
('MDM11B008', 'DIGALA LALIT KUMAR', 'Ashoka', '115', '8978224262', '', '', '12', '', 1),
('MDM11B009', 'DURGAM GOUTHAM RAJ', 'Ashoka', '223', '9840328545', '', '', '12', '', 1),
('MDM11B010', 'GUTTI NIKHILESH', 'Ashoka', '602', '7299102492, 9848202359', '', '', '12', '', 1),
('MDM11B011', 'K S MANJUNATH', 'Ashoka', '117', '9704669470', '', '', '12', '', 1),
('MDM11B012', 'KUMAR ABHIMANYU', 'Ashoka', '201', '9444967080', '', '', '12', '', 1),
('MDM11B013', 'KUMBHAR PRAMOD YALLAPPA', 'Ashoka', '419', '9404278266', '', '', '12', '', 1),
('MDM11B014', 'MADALA RAJASEKHAR', 'Ashoka', '420', '9710300379', '', '', '12', '', 1),
('MDM11B016', 'MAKULA KARTHIK', 'Ashoka', '607', '9866629389', '', '', '12', '', 1),
('MDM11B017', 'MOHIT VERMA', 'Ashoka', '601', '8015206337', '', '', '12', '', 1),
('MDM11B018', 'MULLAPUDI JOSHI', 'Ashoka', '423', '9962891633, 8818284263', '', '', '12', '', 1),
('MDM11B019', 'MUNIRAM MEENA', 'Ashoka', '120', '7200663418', '', '', '12', '', 1),
('MDM11B020', 'NUKALAVAMSIKRISHNA', 'Ashoka', '428', '9551381661', '', '', '12', '', 1),
('MDM11B021', 'POLUR SAI SANKEERTH RAO', 'Ashoka', '608', '9014724022', '', '', '12', '', 1),
('MDM11B022', 'PULIVARTHI NAGARJUNA', 'Ashoka', '121', '9000715869, 8148598944', '', '', '12', '', 1),
('MDM11B023', 'R AKHIL ABHILASH', 'Ashoka', '407', '9445419194', '', '', '12', '', 1),
('MDM11B024', 'RATHLA BALAJI NAIK', 'Ashoka', '605', '9444882673', '', '', '12', '', 1),
('MDM11B025', 'SAGAR DOLAS', 'Ashoka', '427', '9827318330, 07552765410', '', '', '12', '', 1),
('MDM11B026', 'SAURAV VERMA', 'Ashoka', '202', '9444890763, 9435322071', '', '', '12', '', 1),
('MDM11B027', 'YASHESWI BOCHA', 'Ashoka', '125', '9444965813, 8912730248', '', '', '12', '', 1),
('MDM11B028', 'YEVALKAR ABHISHEK ARUN', 'Ashoka', '122', '9503561279', '', '', '12', '', 1),
('MDM11D001', 'K. BALAJI', 'Jasmine', '205', '9940974909', '', '', '12', '', 1),
('MDM12B001', 'ABHILASH JOSEPH ABRAHAM', 'Lotus', '20', '9647074354, 9940591957', '', '', '12', '', 1),
('MDM12B002', 'ADITYA CHILUKURI', 'Lotus', '20', '9710331589', '', '', '12', '', 1),
('MDM12B003', 'ANANTH B', 'Lotus', '21', '9442817096', '', '', '12', '', 1),
('MDM12B004', 'ANUJ AGRAWAL', 'Lotus', '21', '9826336378', '', '', '12', '', 1),
('MDM12B005', 'ASHISH AMERICA', 'Ashoka', '109', '8695874270', '', '', '12', '', 1),
('MDM12B006', 'CHAVALI KAMESWARA PAVAN SAIGOPAL', 'Ashoka', '109', '9989109365', '', '', '12', '', 1),
('MDM12B007', 'GANESH S', 'Ashoka', '109', '9962610695, 04427472001', '', '', '12', '', 1),
('MDM12B008', 'GOLI SAI KRISHNA', 'Ashoka', '101', '9493988780, 8829244930', '', '', '12', '', 1),
('MDM12B009', 'GUTLA AKHILA', 'Jasmine', '112', '9246582252, 04027052609', '', '', '12', '', 1),
('MDM12B010', 'IRUKUVAJJALA SUJITH', 'Ashoka', '103', '7299122070', '', '', '12', '', 1),
('MDM12B011', 'JUBIN ANTONY J', 'Ashoka', '107', '9841626294, 9940314258', '', '', '12', '', 1),
('MDM12B012', 'KOMMANABOINA MEGHANA SARAT', 'Jasmine', '114', '8124155456', '', '', '12', '', 1),
('MDM12B013', 'KUNDAN KUMAR', 'Ashoka', '107', '9431945276', '', '', '12', '', 1),
('MDM12B014', 'MALLAMPATI TARAKESH', 'Ashoka', '113', '9666622278', '', '', '12', '', 1),
('MDM12B015', 'NENAVATH RAVI CHANDRA', 'Ashoka', '101', '9841191313', '', '', '12', '', 1),
('MDM12B016', 'PERLI RAVI TEJA', 'Ashoka', '101', '9701172376, 7299101347', '', '', '12', '', 1),
('MDM12B017', 'POGULA SHIVA SHANKAR', 'Ashoka', '101', '', '', '', '12', '', 1),
('MDM12B018', 'RAVI CHANDRA GOLI', 'Ashoka', '103', '9989778989, 8662432922', '', '', '12', '', 1),
('MDM12B019', 'RINEETHA CHARLES', 'Jasmine', '218', '9842110747, 04612377277', '', '', '12', '', 1),
('MDM12B020', 'RITESH MEENA', 'Ashoka', '103', '9413316677', '', '', '12', '', 1),
('MDM12B021', 'SADHIQUE K KUNHAHAMED', 'Ashoka', '103', '9944491207', '', '', '12', '', 1),
('MDM12B022', 'SAI KRISHNA INENI', 'Ashoka', '105', '9848528530, 8912790294', '', '', '12', '', 1),
('MDM12B023', 'SAI MOULI MANOHAR RAO Y', 'Ashoka', '105', '9490377718, 9849775656', '', '', '12', '', 1),
('MDM12B024', 'SHREYA K', 'Jasmine', '116', '9995437784, 9444150521', '', '', '12', '', 1),
('MDM12B025', 'VIKAS TIWARI', 'Ashoka', '105', '9893201641', '', '', '12', '', 1),
('MDM12B026', 'VINOD M', 'Ashoka', '105', '7299369997', '', '', '12', '', 1),
('MDM12B027', 'VITHAL RAO V H R K', 'Ashoka', '107', '7299369582', '', '', '12', '', 1),
('MDM12B028', 'VYAS ADITYA KISHOR', 'Ashoka', '107', '9094079625, 80115728793', '', '', '12', '', 1),
('MDM12B029', 'YEDDU CHAITANYA PRAKASH', 'Ashoka', '107', '9551957812', '', '', '12', '', 1),
('MDM13B001', 'ADITTYA', 'Banyan', '7', '996948073, 9894280144', '', '', '12', '', 1),
('MDM13B002', 'C.PRITHVI', 'Banyan', '14', '9949321322, 9059391491', '', '', '12', '', 1),
('MDM13B003', 'CHIRINELLI NAVEEN KUMAR', 'Banyan', '9', '9494589461, 9740659639', '', '', '12', '', 1),
('MDM13B004', 'DEEPAK', 'Banyan', '6', '9741690834', '', '', '12', '', 1),
('MDM13B005', 'DEWARLA SAI ANOOP', 'Banyan', '19', '9440951416, 9841421497', '', '', '12', '', 1),
('MDM13B006', 'DIVYA SRI MAHANTHI', 'Jasmine', '127', '9908681066', '', '', '12', '', 1),
('MDM13B007', 'G V BALAKRISHNA', 'Banyan', '23', '8099149745, 9600031570', '', '', '12', '', 1),
('MDM13B008', 'GOLLAPALLI ARUN TEJA', 'Banyan', '10', '', '', '', '12', '', 1),
('MDM13B009', 'HERWADE SANKET KRISHNA', 'Banyan', '13', '9730848353', '', '', '12', '', 1),
('MDM13B010', 'K RAMTHEERTH', 'Banyan', '17', '9490468470, 8019689716', '', '', '12', '', 1),
('MDM13B011', 'K S KHARTHICKEYEN', 'Banyan', '22', '9884042746, 9884042746', '', '', '12', '', 1),
('MDM13B012', 'K.SAICHARAN', 'Banyan', '39', '9445637947, 9003087755', '', '', '12', '', 1),
('MDM13B013', 'KOTHAPALLI SATYA DURGA PRASAD', 'Banyan', '10', '9989102989, 9444862481', '', '', '12', '', 1),
('MDM13B014', 'MOGILI ADARSH', 'Banyan', '40', '9491736260, 9492878604', '', '', '12', '', 1),
('MDM13B015', 'MRIDUL GANDHI', 'Banyan', '13', '9935340551, 9840666228', '', '', '12', '', 1),
('MDM13B016', 'N PRAMODH', 'Banyan', '9', '9600167934, 04426561496', '', '', '12', '', 1),
('MDM13B017', 'NARAYAN MURMU', 'Banyan', '19', '8895192802', '', '', '12', '', 1),
('MDM13B018', 'PARTHA SARADHI REDDY PERLA', 'Banyan', '6', '7732041784', '', '', '12', '', 1),
('MDM13B019', 'POLAVAINA RAJENDAR', 'Banyan', '17', '9912097589', '', '', '12', '', 1),
('MDM13B020', 'RAMESH S', 'Banyan', '11', '9581401910', '', '', '12', '', 1),
('MDM13B021', 'ROHIT RAJ', 'Banyan', '15', '9771425343', '', '', '12', '', 1),
('MDM13B022', 'S CHANDRASEKAR', 'Banyan', '12', '9445754970, 9445285847', '', '', '12', '', 1),
('MDM13B023', 'S SARAVANAN', 'Banyan', '23', '9440432890, 08832426756', '', '', '12', '', 1),
('MDM13B024', 'SAI GURUPRASAD JAKKALA', 'Banyan', '7', '9840724010, 9840893587', '', '', '12', '', 1),
('MDM13B025', 'SAMANTHULA RAHUL', 'Banyan', '41', '8331847400', '', '', '12', '', 1),
('MDM13B026', 'SAMPATH KUMAR R S', 'Banyan', '5', '9841700480, 04422481453', '', '', '12', '', 1),
('MDM13B027', 'SNEHIL WANKHEDE', 'Banyan', '20', '9425862772', '', '', '12', '', 1),
('MDM13B028', 'SOUMYA ROKKAM', 'Jasmine', '125', '9491605987, 08912716951', '', '', '12', '', 1),
('MDM13B029', 'SUDDARSI SANDEEP', 'Banyan', '14', '9652988801, 9043789995', '', '', '12', '', 1),
('MDM13B030', 'SUMIT RANJAN KUMAR', 'Banyan', '15', '9677178104, 9431963484', '', '', '12', '', 1),
('MDM13B031', 'TALUPULA BALA NAGA YESWANTH', 'Banyan', '13', '9700090233, 08812236277', '', '', '12', '', 1),
('MDM13B032', 'TEKUMATLA SHIVAKUMAR', 'Banyan', '17', '9676600510', '', '', '12', '', 1),
('MDM13B033', 'TUPILI SAI MANOJ REDDY', 'Banyan', '9', '9490561207, 9884944563', '', '', '12', '', 1),
('MDM13B034', 'U VIVEK', 'Banyan', '18', '8106283583, 8106283583', '', '', '12', '', 1),
('MDM13B035', 'UDA SAI KUMAR', 'Banyan', '16', '9491722337', '', '', '12', '', 1),
('MDM13B036', 'V.JANESHWARAN', 'Banyan', '8', '9884743581, 9176060443', '', '', '12', '', 1),
('MDM13B037', 'VIKAS SRIVASTAVA', 'Banyan', '12', '9618669919, 04027551110', '', '', '12', '', 1),
('MDM13B038', 'VILLURI VENKATARAMANA', 'Banyan', '14', '9247107199, 9290045819', '', '', '12', '', 1),
('MDM13D001', 'SANTHOSH', 'Jasmine', '203', '9962010886', '', '', '12', '', 1),
('MDM13D002', 'DEEPAKKUMAR. R', 'Jasmine', '216', '9003693120, 04427238384', '', '', '12', '', 1),
('MDM13D003', 'VINAYAGA MURUGA PANDY. N', 'Jasmine', '201', '9366601787', '', '', '12', '', 1),
('MDS12M001', 'AMIT KUMAR BEDAKA', 'Ashoka', '317', '9551913080', '', '', '12', '', 1),
('MDS12M002', 'ASHISH KUMAR', 'Ashoka', '319', '7299637438', '', '', '12', '', 1),
('MDS12M003', 'NARENDRAN. G', 'Ashoka', '320', '9894357198', '', '', '12', '', 1),
('MDS12M004', 'NIRGUDE VISHAL VASANTRAO', 'Ashoka', '321', '9551370525', '', '', '12', '', 1),
('MDS12M006', 'SANAS MAYUR MOHAN', 'Ashoka', '322', '7401336527', '', '', '12', '', 1),
('MDS12M007', 'SHASHANK UKADLEY', 'Ashoka', '323', '9425658606', '', '', '12', '', 1),
('MDS12M008', 'SRINIVASAN G', 'Ashoka', '324', '9443856641', '', '', '12', '', 1),
('MDS12M009', 'THIRUMAVALVAN. S', 'Ashoka', '325', '9283695471', '', '', '12', '', 1),
('MDS12M010', 'USHA. Y', 'Jasmine', '316', '7299637452', '', '', '12', '', 1),
('MDS12M011', 'UZWAL KIRAN ROKKALA', 'Ashoka', '326', '9551733180, 8811251222', '', '', '12', '', 1),
('MDS12M012', 'VENKATARAMAN SAHOO', 'Ashoka', '327', '9094079696', '', '', '12', '', 1),
('MDS12M013', 'VIMAL . K.M', 'Ashoka', '328', '9994086658', '', '', '12', '', 1),
('MDS13M001', 'ABHINAV KUMAR SHARMA', 'Ashoka', '622', '9816485317, 2808394', '', '', '12', '', 1),
('MDS13M002', 'A.AJAY BABU', 'Ashoka', '625', '8056087504', '', '', '12', '', 1),
('MDS13M003', 'ARUNRAJ. R.S', 'Lotus', '26', '8056092601', '', '', '12', '', 1),
('MDS13M004', 'BANDIKE MANOHAR', 'Lotus', '3', '9885824011, 08516275613', '', '', '12', '', 1),
('MDS13M005', 'BHEMISHETTY GAUTHAM', 'Ashoka', '623', '9963600637, 9444102219', '', '', '12', '', 1),
('MDS13M006', 'GOURAV PANDEY', 'Banyan', '43', '9990739847', '', '', '12', '', 1),
('MDS13M007', 'JAISWAL SANKET VIJAY ', 'Lotus', '24', '8087481427', '', '', '12', '', 1),
('MDS13M008', 'KARTHICK. K', 'Lotus', '22', '9578808692, 9578808692', '', '', '12', '', 1),
('MDS13M009', 'NITHIN S', 'Lotus', '23', '9841139418, 9486086627', '', '', '12', '', 1),
('MDS13M010', 'P. GOHETH', 'Ashoka', '620', '9444111078, 04426611279', '', '', '12', '', 1),
('MDS13M011', 'POYAREKAR SAIPRASAD SANJAY ', 'Ashoka', '624', '9220845833, 9869574781', '', '', '12', '', 1),
('MDS13M012', 'PUNITH REDDY. V', 'Lotus', '4', '9043244755, 04027651046', '', '', '12', '', 1),
('MDS13M013', 'RAJ RAUJI DESAI', 'Lotus', '5', '8882494458', '', '', '12', '', 1),
('MDS13M014', 'RAVI TIWARI', 'Banyan', '42', '9993825239', '', '', '12', '', 1),
('MDS13M015', 'RICKEY RECON DALBEHERA', 'Banyan', '45', '8455885350, 8763417216', '', '', '12', '', 1),
('MDS13M016', 'RINKU KUMAR GOUDA', 'Banyan', '36', '9040975065', '', '', '12', '', 1),
('MDS13M017', 'SIVACHITHAMBARAM. V', 'Lotus', '25', '9677096323, 9940293131', '', '', '12', '', 1),
('PHY10D001', 'K. RAMACHANDRAN', 'Jasmine', '207', '9840305849', '', '', '12', '', 1),
('PHY13D001', 'ASHISH KUMAR', 'Jasmine', '202', '9536630860', '', '', '12', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
 ADD PRIMARY KEY (`course_id`), ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `enrolled`
--
ALTER TABLE `enrolled`
 ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
 ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
 ADD PRIMARY KEY (`rollnumber`), ADD UNIQUE KEY `rollnumber` (`rollnumber`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
