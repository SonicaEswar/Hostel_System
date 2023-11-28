SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'dbms', 'dbms@gmail.com', 'Test@1234', '2023-10-31 20:31:45', '2023-11-04');

-- --------------------------------------------------------

--SET SQL_SAFE_UPDATES = 0;
UPDATE admin
SET
  username = 'dbms',
  email = 'dbms@gmail.com',
  reg_date = '2023-11-04',
  updation_date = '2023-11-17';
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'UE21CS341A', 'SE', 'Software Engineering', '2023-01-01 01:01:42'),
(2, 'UE21CS351A', 'DBMS', 'Database Managment System', '2023-01-01 01:02:46'),
(3, 'UE21CS352A', 'MI', 'Machine Intelligence', '2023-01-01 01:03:23'),
(4, 'UE21CS342AA3', 'IOT', 'Internet Of Things', '2023-0-01 01:04:18'),
(5, 'UE21CS343AB3', 'GTA', 'Graph Theory and its applications', '2023-01-01 01:04:40'),
(6, 'UE21CS342AA2', 'DA', 'Data Analaytics', '2023-01-01 01:05:19'),
(7, 'UE21CS343AA2', 'BD', 'Big Data', '2023-01-01 19:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) DEFAULT NULL,
  `seater` int(11) DEFAULT NULL,
  `feespm` int(11) DEFAULT NULL,
  `foodstatus` int(11) DEFAULT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` int(11) DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint(11) DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint(11) DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int(11) DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int(11) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(1, 1, 3, 8000, 0, '2023-01-25', 12, 'Database Managment System', 10001, 'Arjun', '', 'Reddy', 'male', 8285703354, 'arjun_reddy@gmail.com', 0, 'XYZ', 'Mother', 8285703354, 'New Delhi India', 'Aligarh', 'Uttar Pradesh', 202001, 'New Delhi India', 'Delhi', 'Delhi (NCT)', 202001, '2023-01-25 13:54:09', ''),
(2, 1, 3, 8000, 1, '2023-06-17', 10, 'Machine Intelligence', 10002, 'Rajesh', '', 'kumar', 'male', 8467067344, 'rajesh@gmail.com', 123456789, 'subhash', '', 1236547890, 'New Delhi India', 'Aligarh', 'Uttar Pradesh', 202001, 'New Delhi India', 'Delhi', 'Delhi (NCT)', 202001, '2023-02-09 17:24:35', ''),
(3, 101, 2, 10000, 1, '2023-06-27', 12, 'Internet Of Things', 102355, 'rahul', '', 'Singh', 'male', 6786786786, 'rahul@gmail.com', 789632587, 'XAD', 'father', 1234567890, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, '2023-06-27 22:01:08', ''),
(4, 101, 2, 10000, 1, '2023-05-31', 12, 'Human Computer Interaction', 586952, 'Ganesh', '', 'Reddy', 'male', 8596185625, 'ganesh_reddy@gmail.com', 8285703354, 'Balchandar reddy', 'father', 8285703354, 'Banglore', 'Karnataka', 'Karnataka', 563131 , 'banglore', 'Karnataka', 'Karnataka', 879465, '2023-05-31 18:48:52', ''),
(5, 2, 3, 8000, 1, '2023-06-28', 11, 'Big Data', 586952, 'Ajay', '', 'yadav', 'male', 8596185625, 'ajay@gmail.com', 8285703354, 'vijay', '', 8285703354,'cousin', 'New Delhi India', 'Aligarh', 'Uttar Pradesh', 202001, 'New Delhi India', 'Delhi', 'Delhi (NCT)', 202001, '2023-06-26 22:10:07', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 3, 1, 8000, '2023-10-07 04:15:43'),
(2, 3, 2, 8000, '2023-10-07 04:15:43'),
(3, 3, 3, 8000, '2023-10-07 04:15:43'),
(4, 3, 4, 8000, '2023-10-07 04:15:43'),
(5, 3, 5, 8000, '2023-10-07 04:15:43')
(6, 3, 6, 8000, '2023-10-07 04:15:43')
(7, 3, 7, 8000, '2023-10-07 04:15:43')
(8, 3, 8, 8000, '2023-10-07 04:15:43')
(9, 3, 9, 8000, '2023-10-07 04:15:43')
(10, 3, 10, 8000, '2023-10-07 04:15:43')
(11, 2, 101, 10000, '2023-10-07 04:15:43')
(12, 2, 102, 10000, '2023-10-07 04:15:43')
(13, 2, 103, 10000, '2023-10-07 04:15:43')
(14, 2, 104, 10000, '2023-10-07 04:15:43')
(15, 2, 105, 10000, '2023-10-07 04:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'Uttar Pradesh'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 10, 'test@gmail.com', '', '', '', '2023-11-20 14:30:13'),
(2, 10, 'test@gmail.com', '', '', '', '2023-11-20 14:30:13'),
(4, 10, 'test@gmail.com', 0x3a3a31, '', '', '2023-11-20 14:30:13'),
(5, 10, 'test@gmail.com', 0x3a3a31, '', '', '2023-11-20 14:30:13'),
(6, 20, 'ajay@gmail.com', 0x3a3a31, '', '', '2023-11-20 14:30:13'),
(7, 10, 'test@gmail.com', 0x3a3a31, '', '', '2023-11-20 14:30:13'),
(8, 10, 'test@gmail.com', 0x3a3a31, '', '', '2023-11-20 14:30:13'),
(9, 10, 'test@gmail.com', 0x3a3a31, '', '', '2023-11-20 14:30:13'),
(10, 10, 'test@gmail.com', 0x3a3a31, '', '', '2023-11-20 14:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(1, '10001', 'Arjun', '', 'Reddy', 'male', 8285703354, 'arjun_reddy@gmail.com', 'arjun1080', '2023-10-31 09:51:33', '25-01-2023 13:54:09', NULL),
(2, '1002', 'Rajesh', '', 'kumar', 'male', 8467067344, 'rajesh@gmail.com', '123456', '2023-09-02 17:24:35', '', ''),
(3, '102355', 'Rahul', '', 'Singh', 'male', 6786786786, 'rahul@gmail.com', 'rahul@123', '2023-06-27 22:10:07', '', ''),
(4, '123', 'Ganesh', '', 'Reddy', 'male', 123456789, 'ganesh_reddy@gmail.com', '123456789', '2023-05-31 18:48:52', 'NULL', 'NULL'),
(5, '586952', 'Ajay', '', 'Yadav', 'male', 8596185625, 'ajay@gmail.com', 'ajay@000', '2023-06-26 22:10:07', 'NULL', 'NULL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

DELIMITER //

CREATE PROCEDURE GetUserData()
BEGIN
    
    SELECT * FROM userlog;
  
END //

DELIMITER ;

DELIMITER //
CREATE TRIGGER update_updationDate
BEFORE INSERT ON userregistration 
FOR EACH ROW 
SET NEW.updationDate = CURRENT_TIMESTAMP;
DELIMITER ;

DELETE FROM your_table
WHERE column_name = 'some_value';