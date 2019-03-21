-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2018 at 03:07 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nsbm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `ID` varchar(5) NOT NULL,
  `username` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`ID`, `username`, `Password`) VALUES
('A001', 'shermi', 'shermi12'),
('A002', 'Maleesha', 'Maleesha24');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `Reg_no` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `NIC` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone_no` varchar(50) NOT NULL,
  `Faculty` varchar(20) NOT NULL,
  `Subject` varchar(70) NOT NULL,
  `Lab_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`Reg_no`, `Name`, `NIC`, `Email`, `Phone_no`, `Faculty`, `Subject`, `Lab_no`) VALUES
(1, 'Sithum Lakmendra', '967865678V', 'Sithum@gmail.com', '075689568', 'School of Computing', 'aaaaa1', '1'),
(2, 'Sadun Perera', '88765783V', 'sadun@gmail.com', '0723471627', 'School of Computing', 'ccc1,ccc4', '2,3');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `Reg_no` int(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `NIC` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone_no` varchar(50) NOT NULL,
  `Faculty` varchar(20) NOT NULL,
  `Subjects` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`Reg_no`, `Name`, `NIC`, `Email`, `Phone_no`, `Faculty`, `Subjects`) VALUES
(1, 'saman Gamage', '9878676987V', 'sama@gmail.com', '8689759657', 'School of Computing', 'aaaaa1'),
(2, 'Kasun Silva', '7890697776V', 'kas@gmail.com', '09897896986', 'School of Computing', 'aaaaaaa2'),
(3, 'Silva Dias', '565908787V', 'silva@gmail.com', '978698509', 'School of Computing', 'aaa2'),
(5, 'Deepa Silva', '78906789V', 'Deepa@gmail.com', '07190875789', 'School of Computing', 'bbbbb1'),
(6, 'Dr.Pathrana', '765493892V', 'pathirana@gmail.com', '0712316283', 'School of Computing', 'ccc1,ccc5,ccc8');

-- --------------------------------------------------------

--
-- Table structure for table `postgraduate`
--

CREATE TABLE `postgraduate` (
  `Reg_no` int(250) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `NIC` varchar(25) NOT NULL,
  `Date_of_birth` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Intake_year` varchar(4) NOT NULL,
  `Intake_month` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone_no` varchar(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Faculty` varchar(50) NOT NULL,
  `Course` varchar(100) NOT NULL,
  `Qualification_type` varchar(200) NOT NULL,
  `Institute` varchar(100) NOT NULL,
  `Year_of_Completion` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postgraduate`
--

INSERT INTO `postgraduate` (`Reg_no`, `Name`, `NIC`, `Date_of_birth`, `Gender`, `Intake_year`, `Intake_month`, `Email`, `Phone_no`, `Address`, `Faculty`, `Course`, `Qualification_type`, `Institute`, `Year_of_Completion`) VALUES
(1, 'shermi Maleesha', '968311212V', '1996/11/26', 'Female', '2018', 'February', 'shem@gmail.com', '0710989464', 'no,98/1,Galle', 'School of Computing', 'Computer Science', 'cs(bs.c)', 'UCSC', '2017'),
(2, 'Saman Gamage', '967823272V', '1996/5/9', 'Male', '2018', 'February', 'shermiliyanaarachchi@gmail.com', '0774546782', 'Kirinda,Matara', 'School of Business', 'Management', 'Bsc', 'University of colombo', '2017'),
(3, 'Asmari Pramodya', '898098597V', '1995/02/4', 'Female', '2018', 'February', 'shermiliyanaarachchi@gmail.com', '0986987686', 'Kandy', 'School of Business', 'Management', '(Accounting)B.sc', 'ICBT', '2017'),
(4, 'Chathuri Chandima', '987890687V', '1996/9/8', 'Female', '2018', 'February', 'chandi@gmail.com', '0912236789', 'Kaduwela,Colombo', 'School of Computing', 'Computer science', 'Bsc', 'University of colombo', '2017'),
(5, 'sanajana Herath', '956789898V', '1995/8/9', 'Male', '2018', 'July', 'sanj@gmail.com', '0912234454', 'Piliyandala,Colombo', 'School of Engineering', 'Civil engineering', 'Diploma in CS', 'SLITT', '2016'),
(6, 'Dinuka Kasun', '943929889V', '1994/3/5', 'Male', '2018', 'February', 'din@gmail.com', '0777233567', 'Moratuwa,Colombo', 'School of Engineering', 'Software engineering', 'Bsc. in  ComputerScience', 'UCSC', '2016'),
(7, 'Dilsha Navodi', '956787871V', '1995/2/5', 'Female', '2018', 'February', 'dil@gmail.com', '0912235656', 'JaEla,Colombo', 'School of Computing', 'Computer science', 'Diploma in CS', 'ICBT', '2016'),
(8, 'Lahiru Madushan', '967812332V', '1996/4/5', 'Male', '2018', 'February', 'Lah@gmai.com', '0715645345', 'Pasyala.Gmapaha', 'School of Engineering', 'Civil engineering', 'Bsc', 'University of Ruhuna', '2017'),
(9, 'Manjitha Teshara', '9512335565V', '1995/7/12', 'Male', '2018', 'July', 'Manji@gmail.com', '0786788945', 'Nugegoada,Colombo', 'School of Engineering', 'Software engineering', 'Bsc. in Computer science', 'UCSC', '2016');

-- --------------------------------------------------------

--
-- Table structure for table `postgraduate_lab`
--

CREATE TABLE `postgraduate_lab` (
  `lab_num` int(50) NOT NULL,
  `regid` varchar(50) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `Subject_code` varchar(50) NOT NULL,
  `lab_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postgraduate_lab`
--

INSERT INTO `postgraduate_lab` (`lab_num`, `regid`, `faculty`, `course`, `Subject_code`, `lab_no`) VALUES
(1, '2', 'School of Engineering', 'Computer Science', '1', '2'),
(2, '1', 'School of Engineering', 'Computer Science', '1', '2'),
(3, '2', 'School of Business', 'Management', '3', '3'),
(4, '3', 'School of Business', 'Management', '4', '2');

-- --------------------------------------------------------

--
-- Table structure for table `postgraduate_payment`
--

CREATE TABLE `postgraduate_payment` (
  `Reg_no` varchar(50) NOT NULL,
  `Year` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Subject_code_1` varchar(50) NOT NULL,
  `Subject_code_2` varchar(50) NOT NULL,
  `Subject_code_3` varchar(50) NOT NULL,
  `Subject_code_4` varchar(50) NOT NULL,
  `Subject_code_5` varchar(50) NOT NULL,
  `Subject_code_6` varchar(50) NOT NULL,
  `Fee_1` varchar(50) NOT NULL,
  `Fee_2` varchar(50) NOT NULL,
  `Fee_3` varchar(50) NOT NULL,
  `Fee_4` varchar(50) NOT NULL,
  `Fee_5` varchar(50) NOT NULL,
  `Fee_6` varchar(50) NOT NULL,
  `Total` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postgraduate_payment`
--

INSERT INTO `postgraduate_payment` (`Reg_no`, `Year`, `Semester`, `Subject_code_1`, `Subject_code_2`, `Subject_code_3`, `Subject_code_4`, `Subject_code_5`, `Subject_code_6`, `Fee_1`, `Fee_2`, `Fee_3`, `Fee_4`, `Fee_5`, `Fee_6`, `Total`) VALUES
('3', '1', '1', '1', '2', '3', '4', '5', '6', '20000', '', '', '', '', '', '2000'),
('2', '1', '1', '1', '2', '3', '4', '5', '6', '20000', '', '', '', '', '', ''),
('2', '1', '1', '3', '4', '5', '6', '7', '8', '3000', '2800', '3000', '2800', '3000', '3000', '17600'),
('3', '1', '1', '3', '4', '6', '7', '8', '9', '3000', '2800', '2800', '3000', '3000', '3000', '17600');

-- --------------------------------------------------------

--
-- Table structure for table `postgraduate_results`
--

CREATE TABLE `postgraduate_results` (
  `Reg_no` varchar(50) NOT NULL,
  `Faculty` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Year` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Subject_code_1` varchar(50) NOT NULL,
  `Result_1` varchar(50) NOT NULL,
  `Subject_code_2` varchar(50) NOT NULL,
  `Result_2` varchar(50) NOT NULL,
  `Subject_code_3` varchar(50) NOT NULL,
  `Result_3` varchar(50) NOT NULL,
  `Subject_code_4` varchar(50) NOT NULL,
  `Result_4` varchar(50) NOT NULL,
  `Subject_code_5` varchar(50) NOT NULL,
  `Result_5` varchar(50) NOT NULL,
  `Subject_code_6` varchar(50) NOT NULL,
  `Result_6` varchar(50) NOT NULL,
  `Rank` varchar(50) NOT NULL,
  `GPA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postgraduate_results`
--

INSERT INTO `postgraduate_results` (`Reg_no`, `Faculty`, `Course`, `Year`, `Semester`, `Subject_code_1`, `Result_1`, `Subject_code_2`, `Result_2`, `Subject_code_3`, `Result_3`, `Subject_code_4`, `Result_4`, `Subject_code_5`, `Result_5`, `Subject_code_6`, `Result_6`, `Rank`, `GPA`) VALUES
('2', 'School of Buiness', 'Management', '1', '1', '3', 'A', '4', 'B', '5', 'C', '6', 'A+', '7', 'A+', '8', 'A-', '30', '3.0897'),
('3', 'School of Buiness', 'Management', '1', '1', '3', 'A', '4', 'A', '6', 'B', '7', 'B', '8', 'C', '9', 'C', '45', '2.897');

-- --------------------------------------------------------

--
-- Table structure for table `postgraduate_select_subjects`
--

CREATE TABLE `postgraduate_select_subjects` (
  `Reg_no` varchar(50) NOT NULL,
  `Faculty` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Year` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Subject_code_1` varchar(50) NOT NULL,
  `Subject_1` varchar(50) NOT NULL,
  `Subject_code_2` varchar(50) NOT NULL,
  `Subject_2` varchar(50) NOT NULL,
  `Subject_code_3` varchar(50) NOT NULL,
  `Subject_3` varchar(50) NOT NULL,
  `Subject_code_4` varchar(50) NOT NULL,
  `Subject_4` varchar(50) NOT NULL,
  `Subject_code_5` varchar(50) NOT NULL,
  `Subject_5` varchar(50) NOT NULL,
  `Subject_code_6` varchar(50) NOT NULL,
  `Subject_6` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postgraduate_select_subjects`
--

INSERT INTO `postgraduate_select_subjects` (`Reg_no`, `Faculty`, `Course`, `Year`, `Semester`, `Subject_code_1`, `Subject_1`, `Subject_code_2`, `Subject_2`, `Subject_code_3`, `Subject_3`, `Subject_code_4`, `Subject_4`, `Subject_code_5`, `Subject_5`, `Subject_code_6`, `Subject_6`) VALUES
('2', 'School of Buiness', 'Management', '1', '1', '3', 'm1', '4', 'm2', '5', 'm3', '6', 'm4', '7', 'm5', '8', 'm6'),
('3', 'School of Buiness', 'Management', '1', '1', '3', 'm1', '4', 'm2', '6', 'm4', '7', 'm5', '8', 'm6', '9', 'm7');

-- --------------------------------------------------------

--
-- Table structure for table `postgraduate_subjects`
--

CREATE TABLE `postgraduate_subjects` (
  `Subject_code` int(20) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `Faculty` varchar(25) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Lecturer` varchar(50) NOT NULL,
  `Fee` varchar(50) NOT NULL,
  `No_of_credits` varchar(50) NOT NULL,
  `Is_Compulsory` varchar(50) NOT NULL,
  `Year` varchar(10) NOT NULL,
  `Semester` varchar(20) NOT NULL,
  `Instructor_1` varchar(50) NOT NULL,
  `lab_no_1` varchar(50) NOT NULL,
  `Instructor_2` varchar(50) NOT NULL,
  `lab_no_2` varchar(50) NOT NULL,
  `Instructor_3` varchar(50) NOT NULL,
  `lab_no_3` varchar(50) NOT NULL,
  `Instructor_4` varchar(50) NOT NULL,
  `lab_no_4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postgraduate_subjects`
--

INSERT INTO `postgraduate_subjects` (`Subject_code`, `Subject`, `Faculty`, `Course`, `Lecturer`, `Fee`, `No_of_credits`, `Is_Compulsory`, `Year`, `Semester`, `Instructor_1`, `lab_no_1`, `Instructor_2`, `lab_no_2`, `Instructor_3`, `lab_no_3`, `Instructor_4`, `lab_no_4`) VALUES
(3, 'm1', 'Shool of Business', 'Management', '4', '3000', '2', 'Yes', '1', '1', '4', '7', '13', '3', '22', '2', '1', '8'),
(4, 'm2', 'Shool of Business', 'Management', '10', '2800', '2', 'Yes', '1', '1', '4', '2', '8', '3', '1', '5', '2', '8'),
(5, 'm3', 'Shool of Business', 'Management', '7', '3000', '2', 'No', '1', '1', '1', '6', '4', '3', '7', '5', '9', '1'),
(6, 'm4', 'School of Business', 'Management', '15', '2800', '2', 'No', '1', '1', '3', '2', '5', '7', '1', '1', '16', '3'),
(7, 'm5', 'School of Business', 'Management', '6', '3000', '2', 'No', '1', '1', '3', '1', '12', '2', '20', '5', '22', '6'),
(8, 'm6', 'School of Business', 'Management', '4', '3000', '2', 'No', '1', '1', '2', '3', '5', '4', '1', '6', '23', '7'),
(9, 'm7', 'School of Business', 'Management', '45', '3000', '2', 'No', '1', '1', '4', '4', '26', '5', '16', '2', '11', '6');

-- --------------------------------------------------------

--
-- Table structure for table `undergraduate`
--

CREATE TABLE `undergraduate` (
  `Reg_no` int(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `NIC` varchar(25) NOT NULL,
  `Date_of_birth` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Intake_year` varchar(4) NOT NULL,
  `Intake_month` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone_no` varchar(30) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Faculty` varchar(50) NOT NULL,
  `Course` varchar(200) NOT NULL,
  `Year` varchar(4) NOT NULL,
  `Attempt` varchar(2) NOT NULL,
  `Subject_1` varchar(50) NOT NULL,
  `Subject_1_mark` varchar(2) NOT NULL,
  `Subject_2` varchar(50) NOT NULL,
  `Subject_2_mark` varchar(2) NOT NULL,
  `Subject_3` varchar(50) NOT NULL,
  `Subject_3_mark` varchar(2) NOT NULL,
  `Subject_4` varchar(50) NOT NULL,
  `Subject_4_mark` varchar(2) NOT NULL,
  `District` varchar(50) NOT NULL,
  `rank` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `undergraduate`
--

INSERT INTO `undergraduate` (`Reg_no`, `Name`, `NIC`, `Date_of_birth`, `Gender`, `Intake_year`, `Intake_month`, `Email`, `Phone_no`, `Address`, `Faculty`, `Course`, `Year`, `Attempt`, `Subject_1`, `Subject_1_mark`, `Subject_2`, `Subject_2_mark`, `Subject_3`, `Subject_3_mark`, `Subject_4`, `Subject_4_mark`, `District`, `rank`) VALUES
(1, 'Ishani shehara', '938462375V', '1996/03/12', 'female', '2018', 'February', 'ishs@gmail.com', '07198782732', 'hiribura,Galle', 'School of Engineering', 'Civil Engineering', '2015', '1', 'Maths', 'A', 'Physics', 'B', 'Chemistry', 'B', 'English', 'B', 'Galle', '213'),
(2, 'Rukshan Sathayananda', '934578767V', '1993/9/10', 'Male', '2018', 'February', 'ruki@gmail.com', '0789655662', 'Karapitiya,Galle', 'School of Engineering', 'Software engineering', '2012', '2', 'Maths', 'A', 'Physics', 'A', 'Chemistry', 'B', 'Engilish', 'B', 'Galle', '100'),
(3, 'Rangika Sewmini', '945672323V', '1994/3/23', 'Male', '2018', 'February', 'rangi@gmail.com', '0715674523', 'Kalegana,Galle', 'School of Business', 'Management', '2013', '1', 'Accounting', 'A', 'Econ', 'B', 'Business', 'A', 'Engilish', 'A', 'Galle', '57'),
(4, 'Ama Kalpani', '957889237V', '1995/4/26', 'female', '2018', 'July', 'ama@gmail.com', '0725612982', 'Hapugala,galle', 'School of Engineering', 'Software engineering', '2014', '2', 'Maths', 'B', 'Physics', 'B', 'Chemistry', 'B', 'English', 'C', 'Galle', '354'),
(5, 'Isusru Dihan', '957823334V', '1995/8/9', 'Male', '2018', 'February', 'shermiliyanaarachchi@gmail.com', '0719024356', 'Kadawatha,Colombo', 'School of Computing', 'Computer science', '2015', '2', 'Biology', 'B', 'Physics', 'C', 'chemistry', 'C', 'English', 'C', 'Colombo', '300'),
(6, 'Dilip Kasun', '956725163V', '1995/8/3', 'Male', '2018', 'July', 'shamikakarunarathne@gmail.com', '0719892193', 'Peradeniya,kandy', 'School of Computing', 'Computer science', '2015', '2', 'Maths', 'B', 'Physics', 'C', 'Chemistry', 'A', 'English', 'A', 'Kandy', '200'),
(7, 'Nadeesha Shihani', '948992335V', '1994/2/6', 'female', '2018', 'February', 'pkashmari1996@gmail.com', '0712372546', 'Weligama,Matara', 'School of Computing', 'Computer science', '2017', '3', 'Accounting ', 'B', 'Econ ', 'C', 'Business', 'A', 'English ', 'C', 'Matara', '196'),
(8, 'Dulip Alwis', '956127381V', '1995/5/12', 'Male', '2018', 'February', 'dulip@gmail.com', '0712327183', 'Maharagama,Colombo', 'School of Computing', 'Computer science', '2016', '2', 'Sinhala ', 'B', 'Econ', 'C', 'IT ', 'B', 'English', 'A', 'Colombo', '264'),
(9, 'Seveni Dileesha', '967814236V', '1996/7/3', 'female', '2018', 'February', 'seveni@gmail.com', '0712391828', 'Anuradapura', 'School of Computing', 'Computer science', '2015', '1', 'IT ', 'B', 'Maths', 'B', 'Physics', 'B', 'English', 'B', 'Anuradapura', '38'),
(10, 'Sasini Prathiba', '94781298V', '1994/6/2', 'female', '2018', 'February', 'sasini@gmail.com ', '0721893465', 'Peradeniya,Kandy', 'School of Computing', 'Computer science', '2016', '3', 'Biology ', 'B', 'Chemsitry ', 'A', 'Physics ', 'B', 'English', 'B', 'kandy', '195'),
(11, 'Sandani Imasha', '956736893V', '1995/2/5', 'female', '2018', 'February', 'san@gmail.com', '0912235882', 'Hambanthota', 'School of Computing', 'Computer science', '2017', '3', 'Econ ', 'B', 'Logic', 'C', 'Political ', 'C', 'English', 'B', 'Hambanthota', '100'),
(12, 'Binuri Maleesha', '945624315V', '994/7/1', 'female', '2018', 'July', 'binusr@gmail.com', '082667783', 'Kegalle', 'School of Computing', 'Computer science', '2016', '3', 'Maths', 'A', 'Physics', 'C', 'IT ', 'C', 'English', 'B', 'Kegalle', '250'),
(13, 'Himath Harshajith', '963478728V', '1996/8/9', 'Male', '2018', 'July', 'himath@gmail.com', '0727368789', 'Badulla', 'School of Computing', 'Computer science', '2016', '2', 'Political ', 'A', 'Logic ', 'B', 'Logic ', 'B', 'English', 'B', 'Badulla', '150'),
(14, 'Januka Madushan', '963478293V', '1995/9/10', 'Male', '2018', 'February', 'janu@gmail.com', '081278637', 'Moratuwa,Colombo', 'School of Computing', 'Computer science', '2016', '2', 'Biology ', 'B', 'Chemsitry ', 'C', 'Physics', 'C', 'English', 'C', 'Colombo', '200'),
(15, 'Buddi Gamage', '938934786V', '1993/6/5', 'Male', '2018', 'February', 'buddi@gmail.com', '0867348233', 'Horana,Colombo', 'School of Computing', 'Computer science', '2016', '3', 'Maths', 'A', 'Physics', 'A', 'IT', 'C', 'English', 'B', 'Colombo', '250'),
(16, 'Sajun Sanadaruwan', '957834987V', '1995/8/5', 'Male', '2018', 'February', 'sajun@gmail.com', '091223898', 'Kurunegala', 'School of Computing', 'Computer science', '2017', '2', 'Maths', 'A', 'Physics', 'B', 'Chemistry', 'B', 'English', 'B', 'Kurunegala', '200'),
(17, 'Pasan gamage', '94676723V', '1994/9/3', 'Male', '2018', 'February', 'pasan@gmail.com', '0712345123', 'Galle', 'School of Computing', 'Computer science', '2017', '3', 'Maths', 'A', 'Physics', 'C', 'Chemistry', 'C', 'English', 'C', 'Galle', '345'),
(18, 'Melan Dinusha', '947238248V', '199/5/5', 'Male', '2018', 'February', 'melan@gmail.com', '0713328935', 'Gintota,Galle', 'School of Computing', 'Computer science', '2016', '3', 'Maths  ', 'B', 'Physics', 'B', 'Chemistry', 'B', 'English', 'B', 'Galle', '300'),
(19, 'Supuni Devindi', '937845688V', '1993/8/9', 'female', '2018', 'July', 'supu@gmail.com', '062378383', 'Badulla', 'School of Computing', 'Computer science', '2016', '3', 'Accounting', 'B', 'Econ ', 'C', 'IT', 'B', 'English', 'A', 'Badulla', '194'),
(20, 'Pavani Malika', '96748344V', '1996/3/3', 'female', '2018', 'February', 'pav@gmail.com', '0756347388', 'Midigama,Matara', 'School of Computing', 'Computer science', '2016', '2', 'Maths', 'B', 'Physics', 'A', 'chemistry', 'B', 'English', 'C', 'Matara', '289'),
(21, 'Hivin Kisalka', '934726377V', '1993/9/6', 'Male', '2018', 'February', 'hivin@gmail.com', '0765678832', 'Moratuwa,Colombo', 'School of Computing', 'Computer science', '2016', '3', 'Sinhala', 'A', 'Logic', 'B', 'IT', 'C', 'English', 'B', 'Colombo', '323'),
(22, 'Gayan Sampath', '976758728V', '1997/4/7', 'Male', '2018', 'February', 'gayan@gmail.com', '0893748374', 'Kandy', 'School of Computing', 'Computer science', '2017', '2', 'Biology', 'A', 'Chemistry', 'B', 'Physics', 'B', 'English', 'C', 'Kandy', '190');

-- --------------------------------------------------------

--
-- Table structure for table `undergraduate_lab`
--

CREATE TABLE `undergraduate_lab` (
  `lab_num` int(50) NOT NULL,
  `regid` varchar(50) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `lab_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `undergraduate_lab`
--

INSERT INTO `undergraduate_lab` (`lab_num`, `regid`, `faculty`, `course`, `subject_code`, `lab_no`) VALUES
(1, '2', 'School of Engineering', 'Computer Science', '1', '3'),
(2, '5', 'School of Computing', 'Computer Science', '3', '1');

-- --------------------------------------------------------

--
-- Table structure for table `undergraduate_payment`
--

CREATE TABLE `undergraduate_payment` (
  `Reg_no` varchar(50) NOT NULL,
  `Year` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Subject_code_1` varchar(50) NOT NULL,
  `Subject_code_2` varchar(50) NOT NULL,
  `Subject_code_3` varchar(50) NOT NULL,
  `Subject_code_4` varchar(50) NOT NULL,
  `Subject_code_5` varchar(50) NOT NULL,
  `Subject_code_6` varchar(50) NOT NULL,
  `Fee_1` varchar(50) NOT NULL,
  `Fee_2` varchar(50) NOT NULL,
  `Fee_3` varchar(50) NOT NULL,
  `Fee_4` varchar(50) NOT NULL,
  `Fee_5` varchar(50) NOT NULL,
  `Fee_6` varchar(50) NOT NULL,
  `Total` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `undergraduate_payment`
--

INSERT INTO `undergraduate_payment` (`Reg_no`, `Year`, `Semester`, `Subject_code_1`, `Subject_code_2`, `Subject_code_3`, `Subject_code_4`, `Subject_code_5`, `Subject_code_6`, `Fee_1`, `Fee_2`, `Fee_3`, `Fee_4`, `Fee_5`, `Fee_6`, `Total`) VALUES
('2', '1', '1', '2', '3', '4', '5', '6', '7', '', '', '', '', '', '', '300'),
('5', '1', '1', '3', '4', '5', '7', '8', '9', '3200', '3200', '3200', '2800', '2800', '2800', '18000');

-- --------------------------------------------------------

--
-- Table structure for table `undergraduate_results`
--

CREATE TABLE `undergraduate_results` (
  `Reg_no` varchar(50) NOT NULL,
  `Faculty` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Year` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Subject_code_1` varchar(50) NOT NULL,
  `Result_1` varchar(50) NOT NULL,
  `Subject_code_2` varchar(50) NOT NULL,
  `Result_2` varchar(50) NOT NULL,
  `Subject_code_3` varchar(50) NOT NULL,
  `Result_3` varchar(50) NOT NULL,
  `Subject_code_4` varchar(50) NOT NULL,
  `Result_4` varchar(50) NOT NULL,
  `Subject_code_5` varchar(50) NOT NULL,
  `Result_5` varchar(50) NOT NULL,
  `Subject_code_6` varchar(50) NOT NULL,
  `Result_6` varchar(50) NOT NULL,
  `Rank` varchar(50) NOT NULL,
  `GPA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `undergraduate_results`
--

INSERT INTO `undergraduate_results` (`Reg_no`, `Faculty`, `Course`, `Year`, `Semester`, `Subject_code_1`, `Result_1`, `Subject_code_2`, `Result_2`, `Subject_code_3`, `Result_3`, `Subject_code_4`, `Result_4`, `Subject_code_5`, `Result_5`, `Subject_code_6`, `Result_6`, `Rank`, `GPA`) VALUES
('5', 'School of Computing', 'Computer science', '1', '1', '3', 'A', '4', 'A', '5', 'B+', '7', 'C+', '8', 'B', '9', 'A-', '56', '2.987'),
('6', 'School of Computing', 'Computer science', '1', '1', '3', 'A', '4', 'A', '6', 'A', '8', 'A', '9', 'A', '10', 'A', '10', '3.236'),
('7', 'School of Computing', 'Computer science', '1', '1', '3', 'B', '4', 'A', '5', 'A', '7', 'C+', '10', 'B-', '11', 'A-', '20', '2.9727'),
('5', 'School of Computing', 'Computer science', '1', '2', '12', 'A', '13', 'B+', '14', 'B+', '16', 'A-', '17', 'C+', '18', 'A', '20', '3.002'),
('6', 'School of Computing', 'Computer science', '1', '2', '12', 'B', '13', 'B+', '15', 'C', '16', 'C+', '17', 'A', '18', 'A', '50', '2.978'),
('7', 'School of Computing', 'Computer science', '1', '2', '12', 'A', '13', 'A', '14', 'C', '16', 'B', '17', 'B+', '18', 'B-', '38', '3.073');

-- --------------------------------------------------------

--
-- Table structure for table `undergraduate_select_subject`
--

CREATE TABLE `undergraduate_select_subject` (
  `Reg_no` varchar(50) NOT NULL,
  `Faculty` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Year` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Subject_code_1` varchar(50) NOT NULL,
  `Subject_1` varchar(50) NOT NULL,
  `Subject_code_2` varchar(50) NOT NULL,
  `Subject_2` varchar(50) NOT NULL,
  `Subject_code_3` varchar(50) NOT NULL,
  `Subject_3` varchar(50) NOT NULL,
  `Subject_code_4` varchar(50) NOT NULL,
  `Subject_4` varchar(50) NOT NULL,
  `Subject_code_5` varchar(50) NOT NULL,
  `Subject_5` varchar(50) NOT NULL,
  `Subject_code_6` varchar(50) NOT NULL,
  `Subject_6` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `undergraduate_select_subject`
--

INSERT INTO `undergraduate_select_subject` (`Reg_no`, `Faculty`, `Course`, `Year`, `Semester`, `Subject_code_1`, `Subject_1`, `Subject_code_2`, `Subject_2`, `Subject_code_3`, `Subject_3`, `Subject_code_4`, `Subject_4`, `Subject_code_5`, `Subject_5`, `Subject_code_6`, `Subject_6`) VALUES
('5', 'School of Computing', 'Computer science', '1', '1', '3', 'c1', '4', 'c2', '5', 'c3', '7', 'c5', '8', 'c6', '9', 'c7'),
('6', 'School of Computing', 'Computer science', '1', '1', '3', 'c1', '4', 'c2', '6', 'c4', '8', 'c6', '9', 'c7', '10', 'c8'),
('7', 'School of Computing', 'Computer science', '1', '1', '3', 'c1', '4', 'c2', '5', 'c3', '7', 'c5', '10', 'c8', '11', 'c9'),
('5', 'School of Computing', 'Computer science', '1', '2', '12', 'c11', '13', 'c12', '14', 'c13', '16', 'c16', '17', 'c17', '18', 'c18'),
('6', 'School of Computing', 'Computer science', '1', '2', '12', 'c11', '13', 'c12', '15', 'c15', '16', 'c16', '17', 'c17', '18', 'c18'),
('7', 'School of Computing', 'Computer science', '1', '2', '12', 'c11', '13', 'c12', '14', 'c13', '16', 'c16', '17', 'c17', '18', 'c18'),
('2', 'School of Engineering', 'Software engineering', '1', '1', '20', 's20', '21', 's1', '22', 's2', '23', 's3', '25', 's5', '26', 's6'),
('4', 'School of Engineering', 'Software engineering', '1', '1', '20', 's20', '21', 's1', '22', 's2', '24', 's4', '25', 's5', '26', 's6');

-- --------------------------------------------------------

--
-- Table structure for table `undergraduate_subjects`
--

CREATE TABLE `undergraduate_subjects` (
  `Subject_code` int(20) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `Faculty` varchar(25) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Lecturer` varchar(50) NOT NULL,
  `Fee` varchar(50) NOT NULL,
  `No_Of_Credits` varchar(10) NOT NULL,
  `Is_Compulsory` varchar(10) NOT NULL,
  `Year` varchar(10) NOT NULL,
  `Semester` varchar(10) NOT NULL,
  `Instructor_1` varchar(50) NOT NULL,
  `lab_no_1` varchar(50) NOT NULL,
  `Instructor_2` varchar(50) NOT NULL,
  `lab_no_2` varchar(50) NOT NULL,
  `Instructor_3` varchar(50) NOT NULL,
  `lab_no_3` varchar(50) NOT NULL,
  `Instructor_4` varchar(50) NOT NULL,
  `lab_no_4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `undergraduate_subjects`
--

INSERT INTO `undergraduate_subjects` (`Subject_code`, `Subject`, `Faculty`, `Course`, `Lecturer`, `Fee`, `No_Of_Credits`, `Is_Compulsory`, `Year`, `Semester`, `Instructor_1`, `lab_no_1`, `Instructor_2`, `lab_no_2`, `Instructor_3`, `lab_no_3`, `Instructor_4`, `lab_no_4`) VALUES
(3, 'c1', 'School of Computing', 'Computer science', '4', '3200', '3', 'Yes', '1', '1', '3', '1', '5', '2', '7', '3', '3', '4'),
(4, 'c2', 'School of Computing', 'Computer science', '3', '3200', '3', 'Yes', '1', '1', '3', '3', '6', '2', '2', '3', '7', '7'),
(5, 'c3', 'School of Computing', 'Computer science', '5', '3200', '3', 'No', '1', '1', '3', '1', '12', '2', '24', '3', '2', '6'),
(6, 'c4', 'School of Computing', 'Computer science', '7', '3200', '3', 'No', '1', '1', '5', '4', '3', '2', '21', '5', '11', '8'),
(7, 'c5', 'School of Computing', 'Computer science', '11', '2800', '2', 'No', '1', '1', '3', '4', '6', '2', '1', '4', '8', '7'),
(8, 'c6', 'School of Computing', 'Computer science', '13', '2800', '2', 'No', '1', '1', '4', '3', '8', '2', '1', '5', '6', '8'),
(9, 'c7', 'School of Computing', 'Computer science', '5', '2800', '2', 'No', '1', '1', '3', '1', '6', '2', '4', '4', '10', '7'),
(10, 'c8', 'School of Computing', 'Computer science', '4', '2800', '2', 'No', '1', '1', '4', '4', '11', '5', '10', '2', '20', '8'),
(11, 'c9', 'School of Computing', 'Computer science', '7', '2800', '2', 'No', '1', '1', '3', '1', '5', '3', '1', '6', '2', '8'),
(12, 'c11', 'School of Computing', 'Computer science', '4', '3200', '3', 'Yes', '1', '2', '2', '4', '4', '2', '5', '5', '9', '3'),
(13, 'c12', 'School of Computing', 'Computer science', '5', '3200', '2', 'Yes', '1', '2', '1', '1', '5', '4', '2', '5', '12', '2'),
(14, 'c13', 'School of Computing', 'Computer science', '6', '3200', '3', 'No', '1', '2', '2', '1', '5', '2', '8', '3', '11', '5'),
(15, 'c14', 'School of Computing', 'Computer science', '5', '3200', '3', 'No', '1', '2', '1', '1', '2', '2', '3', '5', '13', '7'),
(16, 'c16', 'School of Computing', 'Computer Science', '12', '2800', '2', 'No', '1', '2', '4', '2', '6', '3', '11', '5', '17', '1'),
(17, 'c17', 'School of Computing', 'Computer Science', '13', '2800', '2', 'No', '1', '2', '3', '3', '5', '4', '6', '4', '9', '8'),
(18, 'c18', 'School of Computing', 'Computer Science', '11', '2800', '2', 'No', '1', '2', '12', '1', '19', '2', '23', '6', '26', '7'),
(19, 'c19', 'School of Computing', 'Computer Science', '45', '2800', '2', 'No', '1', '2', '2', '3', '6', '5', '4', '6', '9', '7'),
(20, 's20', 'School of Engineering', 'Software Engineering', '3', '3200', '3', 'Yes', '1', '1', '3', '5', '12', '2', '18', '7', '23', '5'),
(21, 's1', 'School of Engineering', 'Software Engineering', '33', '3200', '3', 'Yes', '1', '1', '4', '5', '8', '6', '3', '8', '6', '1'),
(22, 's2', 'School of Engineering', 'Software Engineering', '35', '3200', '3', 'No', '1', '1', '4', '1', '6', '3', '3', '5', '12', '7'),
(23, 's3', 'School of Engineering', 'Software Engineering', '31', '3200', '3', 'No', '1', '1', '25', '3', '12', '4', '23', '6', '3', '7'),
(24, 's4', 'School of Engineering', 'Software Engineering', '20', '3200', '3', 'No', '1', '1', '4', '1', '11', '5', '20', '2', '31', '8'),
(25, 's5', 'School of Engineering', 'Software Engineering', '8', '3200', '2', 'No', '1', '1', '9', '1', '10', '2', '15', '3', '18', '8'),
(26, 's6', 'School of Engineering', 'Software Engineering', '51', '3200', '2', 'No', '1', '1', '6', '2', '45', '5', '35', '1', '21', '7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`Reg_no`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`Reg_no`);

--
-- Indexes for table `postgraduate`
--
ALTER TABLE `postgraduate`
  ADD PRIMARY KEY (`Reg_no`);

--
-- Indexes for table `postgraduate_lab`
--
ALTER TABLE `postgraduate_lab`
  ADD PRIMARY KEY (`lab_num`);

--
-- Indexes for table `postgraduate_subjects`
--
ALTER TABLE `postgraduate_subjects`
  ADD PRIMARY KEY (`Subject_code`);

--
-- Indexes for table `undergraduate`
--
ALTER TABLE `undergraduate`
  ADD PRIMARY KEY (`Reg_no`);

--
-- Indexes for table `undergraduate_lab`
--
ALTER TABLE `undergraduate_lab`
  ADD PRIMARY KEY (`lab_num`);

--
-- Indexes for table `undergraduate_subjects`
--
ALTER TABLE `undergraduate_subjects`
  ADD PRIMARY KEY (`Subject_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `Reg_no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `Reg_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `postgraduate`
--
ALTER TABLE `postgraduate`
  MODIFY `Reg_no` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `postgraduate_lab`
--
ALTER TABLE `postgraduate_lab`
  MODIFY `lab_num` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `postgraduate_subjects`
--
ALTER TABLE `postgraduate_subjects`
  MODIFY `Subject_code` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `undergraduate`
--
ALTER TABLE `undergraduate`
  MODIFY `Reg_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `undergraduate_lab`
--
ALTER TABLE `undergraduate_lab`
  MODIFY `lab_num` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `undergraduate_subjects`
--
ALTER TABLE `undergraduate_subjects`
  MODIFY `Subject_code` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
