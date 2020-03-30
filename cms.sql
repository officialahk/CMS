
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--

--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'd4cae70468dd19c1931c659ffc40dc61', '06-08-2019 01:12:26 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Internet', 'For Branch Internet', '2019-07-19 06:53:03', NULL),
(2, 'Printers', 'For Branch Printers', '2019-07-19 06:53:44', NULL),
(3, 'Server POS', 'For Branch Server Issue', '2019-07-19 06:54:10', NULL),
(4, 'Counter & Delivery', 'For Branch Counter & Delivery PC', '2019-07-19 06:54:45', NULL),
(5, 'DVR Cameras', 'For Branch DVR & Cameras Issue', '2019-07-19 06:55:19', '2019-07-19 07:27:22'),
(6, 'UPS', 'For Branch UPS Issues', '2019-07-19 06:55:43', NULL),
(7, 'Face ID Machine', 'Attendance Machine', '2019-08-03 06:53:01', NULL),
(8, 'Computer Accessories', 'Mouse,Keyboard,Network Wire etc,..', '2019-08-06 08:01:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `assigned` varchar(250) NOT NULL,
  `remark` mediumtext NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `engineer`
--

CREATE TABLE `engineer` (
  `id` int(11) NOT NULL,
  `engid` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `contact` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `engineer`
--

INSERT INTO `engineer` (`id`, `engid`, `username`, `email`, `contact`, `password`) VALUES
(1, '600007', 'haseeb', 'californiapizza.lhr@gmail.com', '0304-4418389', 'd4cae70468dd19c1931c659ffc40dc61'),
(2, '600008', 'younus', 'younusellahi@gmail.com', '0322-3647419', 'd4cae70468dd19c1931c659ffc40dc61');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(1, 'Lahore', 'For California Pizza Lahore Outlets', '2019-07-18 10:04:21', NULL),
(2, 'Karachi', 'For California Pizza Karachi Outlets', '2019-07-18 10:04:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'First Floor', '2019-07-19 06:56:07', NULL),
(2, 1, 'Backup Internet', '2019-07-19 06:56:38', NULL),
(3, 2, 'Office Printer', '2019-07-19 06:56:48', NULL),
(4, 2, 'Thermal Printer Issue', '2019-07-19 06:57:02', '2019-07-19 07:01:35'),
(5, 2, 'Kitchen Printer', '2019-07-19 06:57:10', NULL),
(6, 3, 'Outlook , Word , Excel Issues', '2019-07-19 06:58:04', NULL),
(7, 3, 'Internet Issue', '2019-07-19 06:58:30', NULL),
(8, 3, 'VPN issue', '2019-07-19 06:58:37', NULL),
(9, 3, 'Inventory OMS issue', '2019-07-19 06:58:54', NULL),
(10, 3, 'POS Software', '2019-07-19 06:59:13', NULL),
(11, 4, 'POS Software', '2019-07-19 07:00:31', NULL),
(12, 4, 'Kitchen Printer', '2019-07-19 07:00:44', NULL),
(13, 4, 'Thermal Printer Issue', '2019-07-19 07:02:18', NULL),
(14, 4, 'Internet Network Issue', '2019-07-19 07:02:57', NULL),
(15, 5, 'Cameras Issues', '2019-07-19 07:08:18', NULL),
(16, 6, 'Server UPS ', '2019-07-19 07:08:41', NULL),
(17, 6, 'Cash Counter UPS', '2019-07-19 07:09:26', NULL),
(18, 6, 'Delivery PC UPS', '2019-07-19 07:09:36', NULL),
(19, 6, 'Cameras UPS', '2019-07-19 07:09:46', NULL),
(20, 6, 'Kitchen Printer UPS', '2019-07-19 07:09:58', NULL),
(21, 6, 'Cash Counter UPS', '2019-07-19 07:10:42', NULL),
(22, 6, 'Network Switch UPS', '2019-07-19 07:10:56', NULL),
(23, 5, 'Recording Issue', '2019-07-19 07:28:21', NULL),
(24, 5, 'Beeping Issue', '2019-07-19 07:28:41', NULL),
(25, 5, 'User/Pass Issue', '2019-07-19 07:29:08', NULL),
(26, 5, 'Backup Export Issue', '2019-07-19 07:29:49', NULL),
(27, 7, 'Time Issue', '2019-08-03 06:53:24', NULL),
(28, 8, 'Mouse', '2019-08-06 08:02:15', NULL),
(29, 8, 'Keyboard', '2019-08-06 08:02:30', NULL),
(30, 8, 'Network Wire Cat6', '2019-08-06 08:02:57', NULL),
(31, 8, 'USB 32GB', '2019-08-06 08:03:21', NULL),
(32, 8, 'USB 64GB', '2019-08-06 08:03:33', NULL),
(33, 8, 'USB 16GB', '2019-08-06 08:04:29', NULL),
(34, 8, 'USB 8GB', '2019-08-06 08:04:40', NULL),
(35, 8, 'LCD Display', '2019-08-06 08:05:32', NULL),
(36, 8, 'VGA Cable', '2019-08-06 08:05:44', NULL),
(37, 8, 'HDMI Cable', '2019-08-06 08:05:51', NULL),
(38, 8, 'Printer USB Cable', '2019-08-06 08:06:36', NULL),
(39, 8, 'Wifi Router', '2019-08-06 08:07:16', NULL),
(40, 8, 'Network Switch', '2019-08-06 08:07:34', NULL),
(41, 8, 'Power Cable ', '2019-08-06 08:08:47', NULL),
(42, 8, 'Thermal Printer Adapter', '2019-08-06 08:09:12', NULL),
(43, 8, 'DVR Adapter', '2019-08-06 08:09:30', NULL),
(44, 7, 'Power Issue', '2019-08-06 08:14:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `assigned` varchar(250) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` varbinary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'Johar Branch', 'lhr.jhr@ca-pizza.com.pk', '4e075844d2e00e4c800c8c62716bed8c', 3331209297, '55 GCP Society Near Shoukat Khanam Hospital Johar town Lahore', 'Lahore', 'Pakistan', 54782, '80e4f4603aa8ead7956fbf88f1ab2d08.png', '2019-07-18 08:58:52', '2019-08-01 08:32:52', 1),
(2, 'Emp Mall Branch', 'lhr.emp@ca-pizza.com.pk', '151501051f414370ef3b0de1aaffa624', 3028405234, 'Shop No 212, Emp Mall Food Court Johar Town Lahore', 'Lahore', 'Pakistan', 54782, '12a03c81c7d5d7a6e3c2f087b0b1220a.png', '2019-07-30 07:42:39', '2019-07-31 08:29:04', 1),
(3, 'Packages Mall Branch', 'lhr.pkg@ca-pizza.com.pk', '4e075844d2e00e4c800c8c62716bed8c', 3331209296, 'California Pizza Food Court Second Floor Packages Mall Branch Walton road, Lahore', 'Lahore', 'Pakistan', 54750, '80e4f4603aa8ead7956fbf88f1ab2d08.png', '2019-08-17 08:57:01', '2019-08-17 09:05:41', 1);
(4, 'MMAlam Branch', 'lhr.mm@ca-pizza.com.pk', '4e075844d2e00e4c800c8c62716bed8c', 3018282668, 'Near Hussain Chowk Noor Jahan Road Gulberg-III Lahore', 'Lahore', 'Pakistan', 54660, '80e4f4603aa8ead7956fbf88f1ab2d08.png', '2019-08-17 08:57:01', '2019-08-26 01:34:41', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engineer`
--
ALTER TABLE `engineer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `engineer`
--
ALTER TABLE `engineer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
