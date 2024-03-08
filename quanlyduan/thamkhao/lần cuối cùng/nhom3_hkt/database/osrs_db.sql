-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2022 at 04:51 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osrs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_year`
--

CREATE TABLE `academic_year` (
  `maNamHoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenNamHoc` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(30) NOT NULL,
  `level` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `namhoc` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `level`, `section`, `date_created`, `namhoc`) VALUES
(1, 'Lớp 10', 'A', '2020-11-21 13:38:56', ''),
(2, 'Lớp 10', 'B', '2020-11-21 13:39:21', ''),
(3, 'Lớp 11', 'B', '2020-11-21 13:43:11', ''),
(4, 'Lớp 12', 'B', '2020-11-21 13:46:24', ''),
(5, 'Lớp 12', 'A', '2020-11-21 13:46:33', ''),
(6, 'Lớp 11', 'A', '2020-11-21 13:46:46', '');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(30) NOT NULL,
  `student_id` int(30) NOT NULL,
  `marks_percentage` varchar(5) NOT NULL,
  `class_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `student_id`, `marks_percentage`, `class_id`, `date_created`) VALUES
(1, 1, '87.67', 1, '2020-11-21 16:57:05'),
(2, 2, '89', 1, '2020-11-25 16:45:52'),
(4, 3, '67.5', 2, '2022-11-25 00:58:44'),
(5, 12, '54', 3, '2022-11-25 01:02:46'),
(6, 14, '36', 3, '2022-11-25 08:10:18'),
(7, 15, '42', 1, '2022-11-25 10:40:44'),
(8, 17, '100', 3, '2022-11-25 10:41:11'),
(9, 19, '50', 6, '2022-11-25 10:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `result_items`
--

CREATE TABLE `result_items` (
  `id` int(30) NOT NULL,
  `result_id` int(30) NOT NULL,
  `subject_id` int(30) NOT NULL,
  `mark` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result_items`
--

INSERT INTO `result_items` (`id`, `result_id`, `subject_id`, `mark`, `date_created`) VALUES
(1, 1, 2, 88, '2020-11-21 16:57:05'),
(2, 1, 1, 85, '2020-11-21 16:57:05'),
(3, 1, 3, 90, '2020-11-21 16:57:05'),
(12, 2, 1, 88, '2022-11-25 00:03:54'),
(13, 2, 2, 90, '2022-11-25 00:03:54'),
(14, 4, 7, 85, '2022-11-25 00:58:44'),
(15, 4, 3, 50, '2022-11-25 00:58:44'),
(16, 5, 9, 54, '2022-11-25 01:02:46'),
(20, 6, 1, 70, '2022-11-25 10:33:02'),
(21, 6, 7, 50, '2022-11-25 10:33:02'),
(22, 6, 9, 14, '2022-11-25 10:33:02'),
(23, 6, 8, 10, '2022-11-25 10:33:02'),
(24, 7, 9, 42, '2022-11-25 10:40:44'),
(25, 8, 2, 100, '2022-11-25 10:41:11'),
(26, 9, 7, 50, '2022-11-25 10:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(30) NOT NULL,
  `student_code` varchar(50) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `class_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_code`, `firstname`, `middlename`, `lastname`, `gender`, `address`, `class_id`, `date_created`) VALUES
(1, '62314', 'Nguyễn Lê', 'Thành', 'Tâm', 'Female', 'Sample Address', 2, '2020-11-21 14:29:03'),
(2, '1415', 'Lê', 'Thanh', 'Tuấn', 'Female', 'Vạn Giã', 1, '2020-11-25 16:45:05'),
(3, '12007', 'Hoàng', 'Minh', 'Tâm', 'Female', 'Cam Hòa, Cam Lâm, Khánh Hòa', 2, '2020-11-21 14:29:03'),
(12, '20017', 'Đặng Thị', 'Linh', 'Hiền', 'Female', 'Vạn Giã', 3, '2022-11-25 00:24:49'),
(14, '31034', 'Nguyễn', 'Việt', 'Hưng', 'Female', 'Nha Trang', 3, '2022-11-25 00:47:42'),
(15, '141320', 'Đỗ', 'Tuấn', 'Kiệt', 'Male', 'Nha Trang', 1, '2022-11-25 00:57:38'),
(17, '31567', 'Hoàng ', 'Quốc', 'Nam', 'Female', 'Cam Hòa, Cam Lâm, Khánh Hòa', 3, '2022-11-25 07:23:10'),
(19, '57732', 'Lê', 'Thanh', 'Toàn', 'Female', 'Cam Hòa, Cam Lâm, Khánh Hòa', 6, '2022-11-25 10:09:37');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(30) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_code`, `subject`, `description`, `date_created`) VALUES
(1, '1101', 'Sử', 'Lịch Sử', '2020-11-21 15:43:25'),
(2, '1102', 'Anh', 'Tiếng Anh', '2020-11-21 15:46:30'),
(3, '1103', 'Văn', 'Ngữ Văn', '2020-11-21 15:46:49'),
(7, '1104', 'Toán', 'Toán Học', '2022-11-25 00:50:43'),
(8, '1005', 'Địa', 'Địa Lý', '2022-11-25 00:52:43'),
(9, '1106', 'Công Dân', 'Công Dân', '2022-11-25 00:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Online Student Result System', 'info@sample.comm', '+6948 8542 623', '2102  Caldwell Road, Rochester, New York, 14608', '1605927480_download.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` int(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `type`, `date_created`) VALUES
(1, 'Administrator', '', 'admin', '0192023a7bbd73250516f069df18b500', 1, '2020-11-20 13:25:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_year`
--
ALTER TABLE `academic_year`
  ADD PRIMARY KEY (`maNamHoc`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namhoc` (`namhoc`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `result_items`
--
ALTER TABLE `result_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `result_id` (`result_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
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
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `result_items`
--
ALTER TABLE `result_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`namhoc`) REFERENCES `academic_year` (`maNamHoc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `result_items`
--
ALTER TABLE `result_items`
  ADD CONSTRAINT `result_parent` FOREIGN KEY (`result_id`) REFERENCES `results` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `result_subject` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `student_result` FOREIGN KEY (`id`) REFERENCES `results` (`student_id`),
  ADD CONSTRAINT `students_class` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
