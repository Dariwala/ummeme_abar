-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 25, 2020 at 08:02 AM
-- Server version: 10.2.30-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medihelp_test`
--
CREATE DATABASE IF NOT EXISTS `medihelp_test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `medihelp_test`;

-- --------------------------------------------------------

--
-- Table structure for table `addiction`
--

CREATE TABLE `addiction` (
  `id` int(10) UNSIGNED NOT NULL,
  `addiction_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_addiction_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addiction_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_addiction_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addiction_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addiction_description` blob DEFAULT NULL,
  `b_addiction_description` blob DEFAULT NULL,
  `addiction_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_addiction_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addiction_email_ad` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addiction_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addiction_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addiction_total_bed` blob DEFAULT NULL,
  `b_addiction_total_bed` blob DEFAULT NULL,
  `addiction_total_doctor` int(11) DEFAULT NULL,
  `b_addiction_total_doctor` int(11) DEFAULT NULL,
  `addiction_total_staff` int(11) DEFAULT NULL,
  `b_addiction_total_staff` int(11) DEFAULT NULL,
  `addiction_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_addiction_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addiction_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `addiction_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addiction`
--

INSERT INTO `addiction` (`id`, `addiction_name`, `b_addiction_name`, `addiction_subname`, `b_addiction_subname`, `addiction_photo`, `photo_path`, `addiction_description`, `b_addiction_description`, `addiction_phone_no`, `b_addiction_phone_no`, `addiction_email_ad`, `addiction_fb_link`, `addiction_web_link`, `addiction_total_bed`, `b_addiction_total_bed`, `addiction_total_doctor`, `b_addiction_total_doctor`, `addiction_total_staff`, `b_addiction_total_staff`, `addiction_address`, `b_addiction_address`, `addiction_latitude`, `addiction_longitude`, `district_id`, `subdistrict_id`, `created_at`, `updated_at`) VALUES
(588, 'Crea-Mohammadpur Branch', 'ক্রিয়া-মোহাম্মাদপুর শাখা', '', '', NULL, NULL, '', '', 'Contact Number:\r\n+88-02-8115887\r\n+88-01190-877772\r\n+88-01711-153185', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০২-৮১১৫৮৮৭\r\n+৮৮-০১১৯০-৮৭৭৭৭২\r\n+৮৮-০১৭১১-১৫৩১৮৫', '', NULL, '', '', '', NULL, NULL, NULL, NULL, '1/14, Block-A, Iqbal Road, Mohammadpur, Dhaka-1207', '১/১৪, ব্লক-এ, ইকবাল রোড, মোহাম্মাদপুর, ঢাকা-১২০৭', '', '', 18, 129, '2020-01-20 09:19:11', '2020-01-24 10:53:52'),
(589, 'Crea-Uttara Branch', 'ক্রিয়া-উত্তরা শাখা', NULL, NULL, NULL, NULL, '', '', 'Contact Number:\r\n+88-01759-800700', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৫৯-৮০০৭০০', '', NULL, ' www.medihelpbd.com', '', '', NULL, NULL, NULL, NULL, 'House-12, Road-34, Sector-7, Uttara Model Town, Dhaka-1230', 'বাড়ি-১২, রোড-৩৪, সেক্টর-৭, উত্তরা মডেল টাউন, ঢাকা-১২৩০', '', '', 18, 129, '2020-01-24 11:03:16', '2020-01-24 11:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `addiction_doctor`
--

CREATE TABLE `addiction_doctor` (
  `id` int(10) UNSIGNED NOT NULL,
  `addiction_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addiction_email`
--

CREATE TABLE `addiction_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `addiction_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addiction_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addiction_notice`
--

CREATE TABLE `addiction_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addiction_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_addiction_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addiction_notice_description` blob DEFAULT NULL,
  `b_addiction_notice_description` blob DEFAULT NULL,
  `addiction_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addiction_phone`
--

CREATE TABLE `addiction_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `addiction_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addiction_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addiction_service`
--

CREATE TABLE `addiction_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `addiction_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_addiction_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addiction_service_description` blob DEFAULT NULL,
  `b_addiction_service_description` blob DEFAULT NULL,
  `addiction_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `subservice_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `air_ambulance`
--

CREATE TABLE `air_ambulance` (
  `id` int(10) UNSIGNED NOT NULL,
  `air_ambulance_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_air_ambulance_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `air_ambulance_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_air_ambulance_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `air_ambulance_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `air_ambulance_description` blob DEFAULT NULL,
  `b_air_ambulance_description` blob DEFAULT NULL,
  `air_ambulance_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `air_ambulance_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_air_ambulance` blob DEFAULT NULL,
  `b_total_air_ambulance` blob DEFAULT NULL,
  `air_ambulance_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_air_ambulance_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `air_ambulance_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `air_ambulance_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `air_ambulance_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_air_ambulance_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `air_ambulance_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `air_ambulance_email`
--

CREATE TABLE `air_ambulance_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `air_ambulance_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `air_ambulance_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `air_ambulance_notice`
--

CREATE TABLE `air_ambulance_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `air_ambulance_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_air_ambulance_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `air_ambulance_notice_description` blob DEFAULT NULL,
  `b_air_ambulance_notice_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `air_ambulance_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `air_ambulance_phone`
--

CREATE TABLE `air_ambulance_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `air_ambulance_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `air_ambulance_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `air_ambulance_pricing`
--

CREATE TABLE `air_ambulance_pricing` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_package_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `package_details` blob DEFAULT NULL,
  `b_package_details` blob DEFAULT NULL,
  `air_ambulance_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `air_ambulance_service`
--

CREATE TABLE `air_ambulance_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `air_ambulance_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_air_ambulance_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `air_ambulance_service_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_air_ambulance_service_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `air_ambulance_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `subservice_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance`
--

CREATE TABLE `ambulance` (
  `id` int(10) UNSIGNED NOT NULL,
  `ambulance_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_ambulance_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ambulance_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_ambulance_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ambulance_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ambulance_description` blob DEFAULT NULL,
  `b_ambulance_description` blob DEFAULT NULL,
  `ambulance_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ambulance_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_ambulance` blob DEFAULT NULL,
  `b_total_ambulance` blob DEFAULT NULL,
  `ambulance_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_ambulance_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ambulance_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `ambulance_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `ambulance_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_ambulance_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ambulance_email` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ambulance`
--

INSERT INTO `ambulance` (`id`, `ambulance_name`, `b_ambulance_name`, `ambulance_subname`, `b_ambulance_subname`, `ambulance_photo`, `photo_path`, `ambulance_description`, `b_ambulance_description`, `ambulance_fb_link`, `ambulance_web_link`, `total_ambulance`, `b_total_ambulance`, `ambulance_address`, `b_ambulance_address`, `ambulance_latitude`, `ambulance_longitude`, `ambulance_phone`, `b_ambulance_phone`, `district_id`, `subdistrict_id`, `created_at`, `updated_at`, `ambulance_email`) VALUES
(20, 'Alif Ambulance Service', 'আলিফ অ্যাম্বুলেন্স সার্ভিস', NULL, NULL, NULL, NULL, '', '', 'www.medihelpbd.com', NULL, '', '', 'Ahmed Plaza, 76/A, Bir Uttam Kazi Nuruzzaman Sarak, West Panthapath, Dhaka-1215', 'আহমেদ প্লাজা, ৭৬/এ, বীর উত্তম কাজী নুরুজ্জামান সড়ক, পশ্চিম পান্থপথ, ঢাকা-১২১৫', '', '', 'Contact Number:\r\n+88-02-8117576\r\n+88-02-9131688\r\n+88-01713-205555', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০২-৮১১৭৫৭৬\r\n+৮৮-০২-৯১৩১৬৮৮\r\n+৮৮-০১৭১৩-২০৫৫৫৫', 18, 129, '2020-01-24 09:46:33', '2020-01-24 10:23:40', ''),
(21, 'Anjuman-E-Mufidul Islam', 'আঞ্জুমান-ই-মুফিদুল ইসলাম ', NULL, NULL, NULL, NULL, '', '', 'www.medihelpbd.com', NULL, '', '', '42, Anjuman-E-Mufidul Islam Road, Kakrail, Dhaka-1000', '৪২, আঞ্জুমান-ই-মুফিদুল ইসলাম রোড, কাকরাইল, ঢাকা-১০০০', '', '', 'Contact Number: \r\n+88-02-9336611\r\n+88-02-7119808\r\n+88-02-7410786\r\n+88-02-7411660\r\n+88-02-7411680', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০২-৯৩৩৬৬১১\r\n+৮৮-০২-৭১১৯৮০৮\r\n+৮৮-০২-৭৪১০৭৮৬\r\n+৮৮-০২-৭৪১১৬৬০\r\n+৮৮-০২-৭৪১১৬৮০', 18, 129, '2020-01-24 10:05:36', '2020-01-24 10:20:11', '');

-- --------------------------------------------------------

--
-- Table structure for table `ambulance_email`
--

CREATE TABLE `ambulance_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `ambulance_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ambulance_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance_notice`
--

CREATE TABLE `ambulance_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ambulance_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_ambulance_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ambulance_notice_description` blob DEFAULT NULL,
  `b_ambulance_notice_description` blob DEFAULT NULL,
  `ambulance_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance_phone`
--

CREATE TABLE `ambulance_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `ambulance_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ambulance_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance_pricing`
--

CREATE TABLE `ambulance_pricing` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_package_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `package_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_package_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ambulance_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE `blood_bank` (
  `id` int(10) UNSIGNED NOT NULL,
  `blood_bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_blood_bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_bank_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_blood_bank_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_bank_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_bank_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_blood_bank_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_blood_group_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_bank_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_bank_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_blood_bag` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_total_blood_bag` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_bank_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_blood_bank_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_bank_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `blood_bank_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `blood_bank_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_blood_bank_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_bank_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`id`, `blood_bank_name`, `b_blood_bank_name`, `blood_bank_subname`, `b_blood_bank_subname`, `blood_bank_photo`, `photo_path`, `blood_bank_description`, `b_blood_bank_description`, `blood_group_details`, `b_blood_group_details`, `blood_bank_fb_link`, `blood_bank_web_link`, `total_blood_bag`, `b_total_blood_bag`, `blood_bank_address`, `b_blood_bank_address`, `blood_bank_latitude`, `blood_bank_longitude`, `blood_bank_phone_no`, `b_blood_bank_phone_no`, `blood_bank_email_ad`, `district_id`, `subdistrict_id`, `created_at`, `updated_at`) VALUES
(16, 'Bangladesh Red Crescent Blood Bank', 'বাংলাদেশ রেড ক্রিসেন্ট ব্লাড ব্যাংক', '', '', NULL, NULL, '', '', '', '', 'www.medihelpbd.com', NULL, NULL, NULL, '7/5, Aurongzeb Road, Mohammadpur, Dhaka-1207', '৭/৫, আওরঙ্গজেব রোড, মোহাম্মাদপুর, ঢাকা-১২০৭', '', '', 'Contact Number:\r\n+88-02-8121497\r\n+88-02-9116563', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০২-৮১২১৪৯৭\r\n+৮৮-০২-৯১১৬৫৬৩', '', 18, 129, '2020-01-24 10:31:32', '2020-01-24 13:08:45'),
(17, 'Badhan', ' বাঁধন', '', '', NULL, NULL, '', '', '', '', 'www.medihelpbd.com', NULL, NULL, NULL, 'TSC (Ground Floor), University of Dhaka, Dhaka-1000\r\n', 'টিএসসি (নিচ তলা), ঢাকা বিশ্ববিদ্যালয়, ঢাকা-১০০০', '', '', 'Contact Number:\r\n+88-02-8629042\r\n+88-01711-025876', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০২-৮৬২৯০৪২\r\n+৮৮-০১৭১১-০২৫৮৭৬', '', 18, 129, '2020-01-24 10:42:33', '2020-01-24 10:50:52');

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank_doctor`
--

CREATE TABLE `blood_bank_doctor` (
  `id` int(10) UNSIGNED NOT NULL,
  `blood_bank_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank_email`
--

CREATE TABLE `blood_bank_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `blood_bank_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_bank_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank_notice`
--

CREATE TABLE `blood_bank_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_bank_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_blood_bank_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_bank_notice_description` blob DEFAULT NULL,
  `b_blood_bank_notice_description` blob DEFAULT NULL,
  `blood_bank_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank_phone`
--

CREATE TABLE `blood_bank_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `blood_bank_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_bank_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank_service`
--

CREATE TABLE `blood_bank_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `blood_bank_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_blood_bank_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_bank_service_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_blood_bank_service_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_bank_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `subservice_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor`
--

CREATE TABLE `blood_donor` (
  `id` int(10) UNSIGNED NOT NULL,
  `blood_donor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_blood_donor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_donor_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_blood_donor_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_donor_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_donor_gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_blood_donor_gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_blood_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_donor_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_blood_donor_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_donor_general_info` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_blood_donor_general_info` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_donor_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_donor_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_donor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_blood_donor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_donor_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `blood_donor_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `blood_donor_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_blood_donor_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_donor_email_ad` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_donate_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_last_donate_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor_email`
--

CREATE TABLE `blood_donor_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `blood_donor_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_donor_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor_phone`
--

CREATE TABLE `blood_donor_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `blood_donor_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_donor_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor_pricing`
--

CREATE TABLE `blood_donor_pricing` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_details` blob DEFAULT NULL,
  `b_package_details` blob DEFAULT NULL,
  `blood_donor_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blood_donor_pricing`
--

INSERT INTO `blood_donor_pricing` (`id`, `package_details`, `b_package_details`, `blood_donor_id`, `created_at`, `updated_at`) VALUES
(1, 0x3c703e64657461696c7320653c2f703e0d0a, 0x3c703e64657461696c732062266e6273703b3c2f703e0d0a, 1, '2018-04-02 03:05:20', '2018-04-02 03:35:27'),
(2, 0x3c703e786667683c2f703e0d0a, 0x3c703e73793c2f703e0d0a, 3, '2018-04-08 08:52:39', '2018-04-08 08:52:39'),
(3, 0x3c703e7472687472683c2f703e0d0a, 0x3c703e74726874793c2f703e0d0a, 4, '2018-04-08 12:51:30', '2018-04-08 12:51:30'),
(4, 0x3c703e61727469636c653c2f703e0d0a, 0x3c703e61727469636c652062616e676c613c2f703e0d0a, 5, '2018-04-08 14:41:46', '2018-04-08 14:44:03'),
(5, 0x3c703e3c7374726f6e673e4c6f76653c2f7374726f6e673e3c2f703e0d0a0d0a3c703e49204c6f766520596f753c2f703e0d0a0d0a3c703e266e6273703b3c2f703e0d0a, 0x3c703e3c7374726f6e673ee0a6ade0a6bee0a6b2e0a78be0a6ace0a6bee0a6b8e0a6be203c2f7374726f6e673e3c2f703e0d0a0d0a3c703ee0a686e0a6aee0a6bf20e0a6a4e0a78be0a6aee0a6bee0a695e0a78720e0a6ade0a6bee0a6b2e0a78be0a6ace0a6bee0a6b8e0a6bf3c2f703e0d0a0d0a3c703ee0a686e0a6aee0a6bf20e0a6a4e0a78be0a6aee0a6bee0a695e0a78720e0a6ade0a6bee0a6b2e0a78be0a6ace0a6bee0a6b8e0a6bf3c2f703e0d0a, 2, '2018-04-08 15:52:34', '2018-04-11 15:41:05'),
(6, 0x3c703e41266e6273703b3c7374726f6e673e626c6f673c2f7374726f6e673e266e6273703b2861266e6273703b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f436c697070696e675f286d6f7270686f6c6f67792922207469746c653d22436c697070696e6720286d6f7270686f6c6f677929223e7472756e636174696f6e3c2f613e266e6273703b6f66207468652065787072657373696f6e202671756f743b3c7374726f6e673e7765626c6f673c2f7374726f6e673e2671756f743b293c7375703e3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f426c6f6723636974655f6e6f74652d31223e5b315d3c2f613e3c2f7375703e266e6273703b697320612064697363757373696f6e206f7220696e666f726d6174696f6e616c266e6273703b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f5765627369746522207469746c653d2257656273697465223e776562736974653c2f613e266e6273703b7075626c6973686564206f6e20746865266e6273703b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f576f726c645f576964655f57656222207469746c653d22576f726c64205769646520576562223e576f726c642057696465205765623c2f613e636f6e73697374696e67206f662064697363726574652c206f6674656e20696e666f726d616c266e6273703b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f446961727922207469746c653d224469617279223e64696172793c2f613e2d7374796c65207465787420656e747269657320282671756f743b706f7374732671756f743b292e20506f73747320617265207479706963616c6c7920646973706c6179656420696e2072657665727365206368726f6e6f6c6f676963616c206f726465722c20736f207468617420746865206d6f737420726563656e7420706f737420617070656172732066697273742c2061742074686520746f70206f66207468652077656220706167652e20556e74696c20323030392c20626c6f6773207765726520757375616c6c792074686520776f726b206f6620612073696e676c6520696e646976696475616c2c3c7375703e5b3c656d3e3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f57696b6970656469613a4369746174696f6e5f6e656564656422207469746c653d2257696b6970656469613a4369746174696f6e206e6565646564223e6369746174696f6e206e65656465643c2f613e3c2f656d3e5d3c2f7375703e266e6273703b6f63636173696f6e616c6c79206f66206120736d616c6c2067726f75702c20616e64206f6674656e20636f766572656420612073696e676c65207375626a656374206f7220746f7069632e20496e207468652032303130732c202671756f743b6d756c74692d617574686f7220626c6f67732671756f743b20284d41427329206861766520646576656c6f7065642c207769746820706f737473207772697474656e206279206c61726765206e756d62657273206f6620617574686f727320616e6420736f6d6574696d65732070726f66657373696f6e616c6c79206564697465642e204d4142732066726f6d266e6273703b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f4e657773706170657222207469746c653d224e6577737061706572223e6e6577737061706572733c2f613e2c206f74686572206d65646961206f75746c6574732c266e6273703b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f556e697665727369747922207469746c653d22556e6976657273697479223e756e697665727369746965733c2f613e2c266e6273703b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f5468696e6b5f74616e6b22207469746c653d225468696e6b2074616e6b223e7468696e6b2074616e6b733c2f613e2c266e6273703b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f4164766f636163795f67726f757022207469746c653d224164766f636163792067726f7570223e6164766f636163792067726f7570733c2f613e2c20616e642073696d696c617220696e737469747574696f6e73206163636f756e7420666f7220616e20696e6372656173696e67207175616e74697479206f6620626c6f6720747261666669632e205468652072697365206f66266e6273703b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f5477697474657222207469746c653d2254776974746572223e547769747465723c2f613e266e6273703b616e64206f74686572202671756f743b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f4d6963726f626c6f6767696e6722207469746c653d224d6963726f626c6f6767696e67223e6d6963726f626c6f6767696e673c2f613e2671756f743b2073797374656d732068656c707320696e74656772617465204d41427320616e642073696e676c652d617574686f7220626c6f677320696e746f20746865206e657773206d656469612e266e6273703b3c656d3e426c6f673c2f656d3e266e6273703b63616e20616c736f2062652075736564206173206120766572622c206d65616e696e67266e6273703b3c656d3e746f206d61696e7461696e206f722061646420636f6e74656e7420746f206120626c6f673c2f656d3e2e3c2f703e0d0a, 0x3c703ee0a689e0a69ae0a78de0a69a20e0a686e0a6a6e0a6bee0a6b2e0a6a4e0a787e0a6b020e0a6a8e0a6bfe0a6b0e0a78de0a6a6e0a787e0a6b6e0a6a8e0a6bee0a6b020e0a6aae0a6b0e0a6bfe0a6aae0a78de0a6b0e0a787e0a695e0a78de0a6b7e0a6bfe0a6a4e0a78720e0a697e0a6bee0a69ce0a780e0a6aae0a781e0a6b020e0a6b8e0a6bfe0a69fe0a6bf20e0a695e0a6b0e0a6aae0a78be0a6b0e0a787e0a6b6e0a6a8e0a78720e0a6b8e0a6ac20e0a6a7e0a6b0e0a6a8e0a787e0a6b020e0a6a8e0a6bfe0a6b0e0a78de0a6ace0a6bee0a69ae0a6a8e0a78020e0a695e0a6bee0a69c20e0a6ace0a6a8e0a78de0a6a720e0a6b0e0a6bee0a696e0a6bee0a6b020e0a6a8e0a6bfe0a6b0e0a78de0a6a6e0a787e0a6b620e0a6a6e0a6bfe0a79fe0a787e0a69be0a78720e0a6a8e0a6bfe0a6b0e0a78de0a6ace0a6bee0a69ae0a6a820e0a695e0a6aee0a6bfe0a6b6e0a6a82028e0a687e0a6b8e0a6bf29e0a5a420e0a686e0a6a6e0a6bee0a6b2e0a6a4e0a787e0a6b020e0a6a8e0a6bfe0a6b0e0a78de0a6a6e0a787e0a6b6e0a6a8e0a6be20e0a6aae0a781e0a6b0e0a78be0a6aae0a781e0a6b0e0a6bf20e0a6b9e0a6bee0a6a4e0a78720e0a6aae0a6bee0a693e0a79fe0a6bee0a6b020e0a6aae0a6b020e0a687e0a6b8e0a6bf20e0a6aae0a6b0e0a6ace0a6b0e0a78de0a6a4e0a78020e0a695e0a6b0e0a6a3e0a780e0a79f20e0a6a0e0a6bfe0a69520e0a695e0a6b0e0a6ace0a787e0a5a43c2f703e0d0a, 6, '2018-04-15 06:04:26', '2018-05-07 15:33:11'),
(7, 0x3c703e4d792066617468657220636f6d706c61696e7320616c6c207468652074696d652e20486973206261636b2061636865732c207468652073757065726d61726b6574207365656d7320746f206265206675727468657220616e6420667572746865722061776179206576657279206461792c20636f6d7075746572732e2e2e206f682c20646f6e262333393b74206765742068696d20737461727465642e3c2f703e0d0a0d0a3c703e4d792066617468657220636f6d706c61696e7320616c6c207468652074696d652e20486973206261636b2061636865732c207468652073757065726d61726b6574207365656d7320746f206265206675727468657220616e6420667572746865722061776179206576657279206461792c20636f6d7075746572732e2e2e206f682c20646f6e262333393b74206765742068696d20737461727465642e3c2f703e0d0a, 0x3c70207374796c653d22746578742d616c69676e3a6a757374696679223ee0a689e0a69ae0a78de0a69a20e0a686e0a6a6e0a6bee0a6b2e0a6a4e0a787e0a6b020e0a6a8e0a6bfe0a6b0e0a78de0a6a6e0a787e0a6b6e0a6a8e0a6bee0a6b020e0a6aae0a6b0e0a6bfe0a6aae0a78de0a6b0e0a787e0a695e0a78de0a6b7e0a6bfe0a6a4e0a78720e0a697e0a6bee0a69ce0a780e0a6aae0a781e0a6b020e0a6b8e0a6bfe0a69fe0a6bf20e0a695e0a6b0e0a6aae0a78be0a6b0e0a787e0a6b6e0a6a8e0a78720e0a6b8e0a6ac20e0a6a7e0a6b0e0a6a8e0a787e0a6b020e0a6a8e0a6bfe0a6b0e0a78de0a6ace0a6bee0a69ae0a6a8e0a78020e0a695e0a6bee0a69c20e0a6ace0a6a8e0a78de0a6a720e0a6b0e0a6bee0a696e0a6bee0a6b020e0a6a8e0a6bfe0a6b0e0a78de0a6a6e0a787e0a6b620e0a6a6e0a6bfe0a79fe0a787e0a69be0a78720e0a6a8e0a6bfe0a6b0e0a78de0a6ace0a6bee0a69ae0a6a820e0a695e0a6aee0a6bfe0a6b6e0a6a82028e0a687e0a6b8e0a6bf29e0a5a420e0a686e0a6a6e0a6bee0a6b2e0a6a4e0a787e0a6b020e0a6a8e0a6bfe0a6b0e0a78de0a6a6e0a787e0a6b6e0a6a8e0a6be20e0a6aae0a781e0a6b0e0a78be0a6aae0a781e0a6b0e0a6bf20e0a6b9e0a6bee0a6a4e0a78720e0a6aae0a6bee0a693e0a79fe0a6bee0a6b020e0a6aae0a6b020e0a687e0a6b8e0a6bf20e0a6aae0a6b0e0a6ace0a6b0e0a78de0a6a4e0a78020e0a695e0a6b0e0a6a3e0a780e0a79f20e0a6a0e0a6bfe0a69520e0a695e0a6b0e0a6ace0a787e0a5a43c2f703e0d0a0d0a3c70207374796c653d22746578742d616c69676e3a6a757374696679223ee0a689e0a69ae0a78de0a69a20e0a686e0a6a6e0a6bee0a6b2e0a6a4e0a787e0a6b020e0a6a8e0a6bfe0a6b0e0a78de0a6a6e0a787e0a6b6e0a6a8e0a6bee0a6b020e0a6aae0a6b0e0a6bfe0a6aae0a78de0a6b0e0a787e0a695e0a78de0a6b7e0a6bfe0a6a4e0a78720e0a697e0a6bee0a69ce0a780e0a6aae0a781e0a6b020e0a6b8e0a6bfe0a69fe0a6bf20e0a695e0a6b0e0a6aae0a78be0a6b0e0a787e0a6b6e0a6a8e0a78720e0a6b8e0a6ac20e0a6a7e0a6b0e0a6a8e0a787e0a6b020e0a6a8e0a6bfe0a6b0e0a78de0a6ace0a6bee0a69ae0a6a8e0a78020e0a695e0a6bee0a69c20e0a6ace0a6a8e0a78de0a6a720e0a6b0e0a6bee0a696e0a6bee0a6b020e0a6a8e0a6bfe0a6b0e0a78de0a6a6e0a787e0a6b620e0a6a6e0a6bfe0a79fe0a787e0a69be0a78720e0a6a8e0a6bfe0a6b0e0a78de0a6ace0a6bee0a69ae0a6a820e0a695e0a6aee0a6bfe0a6b6e0a6a82028e0a687e0a6b8e0a6bf29e0a5a420e0a686e0a6a6e0a6bee0a6b2e0a6a4e0a787e0a6b020e0a6a8e0a6bfe0a6b0e0a78de0a6a6e0a787e0a6b6e0a6a8e0a6be20e0a6aae0a781e0a6b0e0a78be0a6aae0a781e0a6b0e0a6bf20e0a6b9e0a6bee0a6a4e0a78720e0a6aae0a6bee0a693e0a79fe0a6bee0a6b020e0a6aae0a6b020e0a687e0a6b8e0a6bf20e0a6aae0a6b0e0a6ace0a6b0e0a78de0a6a4e0a78020e0a695e0a6b0e0a6a3e0a780e0a79f20e0a6a0e0a6bfe0a69520e0a695e0a6b0e0a6ace0a787e0a5a43c2f703e0d0a, 9, '2018-10-31 08:54:26', '2018-11-02 19:18:03'),
(8, 0x3c703e3c7374726f6e673e4c6f72656d20497073756d3c2f7374726f6e673e266e6273703b69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e647573747279262333393b73207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e20497420686173207375727669766564206e6f74206f6e6c7920666976652063656e7475726965732c2062757420616c736f20746865206c65617020696e746f20656c656374726f6e6963207479706573657474696e672c2072656d61696e696e6720657373656e7469616c6c7920756e6368616e6765642e2049742077617320706f70756c61726973656420696e207468652031393630732077697468207468652072656c65617365206f66204c657472617365742073686565747320636f6e7461696e696e67204c6f72656d20497073756d2070617373616765732c20616e64206d6f726520726563656e746c792077697468206465736b746f70207075626c697368696e6720736f667477617265206c696b6520416c64757320506167654d616b657220696e636c7564696e672076657273696f6e73206f66204c6f72656d20497073756d2e3c2f703e0d0a, 0x3c703ee0a69ce0a6bee0a6b0e0a78de0a6aee0a6bee0a6a8e0a6bfe0a6b020e0a6b8e0a6bee0a6ace0a787e0a69520e0a6a8e0a6bee0a6b0e0a78de0a6b820e0a6a8e0a6bfe0a79fe0a787e0a69fe0a6b820e0a6b9e0a78be0a697e0a7872028e0a69ce0a6bee0a6b0e0a78de0a6aee0a6bee0a6a820e0a689e0a69ae0a78de0a69ae0a6bee0a6b0e0a6a3e0a7872920e0a69be0a79fe0a69ce0a6a820e0a6b0e0a78be0a697e0a78020e0a6b9e0a6a4e0a78de0a6afe0a6bee0a6b020e0a6a6e0a6bee0a79fe0a78720e0a69ce0a787e0a6b220e0a696e0a6bee0a69fe0a69be0a787e0a6a8e0a5a420e0a695e0a6bfe0a6a8e0a78de0a6a4e0a78120e0a68fe0a696e0a6a820e0a6b8e0a6a8e0a78de0a6a6e0a787e0a6b920e0a6ace0a6bee0a79ce0a69be0a78720e0a6a4e0a6bfe0a6a8e0a6bf20e0a68fe0a6b020e0a69ae0a787e0a79fe0a787e0a69320e0a6ace0a787e0a6b6e0a6bf20e0a696e0a781e0a6a820e0a695e0a6b0e0a787e0a69be0a787e0a6a8e0a5a420e0a6a4e0a6ace0a78720e0a6a4e0a6be20e0a68fe0a695e0a69fe0a6bf2de0a6a6e0a781e0a69fe0a6bf20e0a6ace0a6be20e0a69ae0a6bee0a6b02de0a6aae0a6bee0a681e0a69ae0a69fe0a6bfe0a6b020e0a6ace0a787e0a6b6e0a6bf20e0a6a8e0a79f2c20e0a6a4e0a6bfe0a6a8e0a6bf20e0a7a7e0a7a6e0a7a620e0a69ce0a6a8e0a695e0a78720e0a696e0a781e0a6a820e0a695e0a6b0e0a787e0a69be0a787e0a6a820e0a6ace0a6b2e0a78720e0a685e0a6ade0a6bfe0a6afe0a78be0a69720e0a689e0a6a0e0a787e0a69be0a787e0a5a420e0a68fe0a68720e0a685e0a6ade0a6bfe0a6afe0a78be0a697e0a78720e0a686e0a69c20e0a6aee0a699e0a78de0a697e0a6b2e0a6ace0a6bee0a6b020e0a6a5e0a787e0a695e0a78720e0a6a4e0a6bee0a681e0a695e0a78720e0a6ace0a6bfe0a69ae0a6bee0a6b0e0a787e0a6b020e0a6aee0a781e0a696e0a78be0a6aee0a781e0a696e0a6bf20e0a695e0a6b0e0a6be20e0a6b9e0a79fe0a787e0a69be0a787e0a5a420e0a6a4e0a6ace0a78720e0a698e0a69fe0a6a8e0a6bee0a6b020e0a6a4e0a6a6e0a6a8e0a78de0a6a4e0a78720e0a6a8e0a6bfe0a79fe0a78be0a69ce0a6bfe0a6a420e0a695e0a6b0e0a78de0a6aee0a695e0a6b0e0a78de0a6a4e0a6bee0a6b0e0a6be20e0a6aee0a6a8e0a78720e0a695e0a6b0e0a69be0a787e0a6a82c20e0a6a4e0a6bfe0a6a8e0a6bf20e0a7a8e0a7a6e0a7a6266e646173683be0a68fe0a6b020e0a6ace0a787e0a6b6e0a6bf20e0a696e0a781e0a6a820e0a695e0a6b0e0a78720e0a6a5e0a6bee0a695e0a6a4e0a78720e0a6aae0a6bee0a6b0e0a787e0a6a8e0a5a43c2f703e0d0a0d0a3c703ee0a69ce0a6bee0a6b0e0a78de0a6aee0a6bee0a6a820e0a68fe0a68720e0a6b2e0a78be0a695e0a787e0a6b020e0a6ace0a79fe0a6b820e0a7aae0a7a820e0a6ace0a69be0a6b0e0a5a420e0a6a4e0a6bfe0a6a8e0a6bf20e0a6a6e0a787e0a6b6e0a69fe0a6bfe0a6b020e0a689e0a6a4e0a78de0a6a4e0a6b0e0a78720e0a689e0a6aae0a695e0a782e0a6b2e0a780e0a79f20e0a6b6e0a6b9e0a6b020e0a6ade0a6bfe0a6b2e0a6b9e0a787e0a6aee0a6b8e0a6bee0a6abe0a6a8e0a78720e0a69ce0a6a8e0a78de0a6ae20e0a6a8e0a787e0a6a8e0a5a420e0a6ace0a6bee0a6ace0a6bee0a69320e0a69be0a6bfe0a6b2e0a787e0a6a820e0a6a8e0a6bee0a6b0e0a78de0a6b8e0a5a420e0a6ace0a6bee0a6ace0a6bee0a6b020e0a6aee0a6a4e0a78b20e0a7a7e0a7af20e0a6ace0a69be0a6b020e0a6ace0a79fe0a6b8e0a78720e0a6b9e0a78be0a697e0a78720e0a6a8e0a6bee0a6b0e0a78de0a6b820e0a6aae0a787e0a6b6e0a6bee0a79f20e0a6aae0a78de0a6b0e0a6ace0a787e0a6b620e0a695e0a6b0e0a787e0a6a8e0a5a420e0a7a7e0a7afe0a7afe0a7af20e0a6b8e0a6bee0a6b2e0a78720e0a6a4e0a6bfe0a6a8e0a6bf20e0a69ce0a6bee0a6b0e0a78de0a6aee0a6bee0a6a8e0a6bfe0a6b020e0a693e0a6a1e0a787e0a6a8e0a6ace0a6bee0a6b0e0a78de0a697e0a787e0a6b020e0a68fe0a695e0a69fe0a6bf20e0a6aae0a78de0a6b0e0a6a7e0a6bee0a6a820e0a6b9e0a6bee0a6b8e0a6aae0a6bee0a6a4e0a6bee0a6b2e0a78720e0a6a8e0a6bee0a6b0e0a78de0a6b820e0a6b9e0a6bfe0a6b8e0a787e0a6ace0a78720e0a6afe0a78be0a69720e0a6a6e0a787e0a6a8e0a5a420e0a7a8e0a7a6e0a7a6e0a7a920e0a6b8e0a6bee0a6b2e0a78720e0a6a4e0a6bfe0a6a8e0a6bf20e0a6aae0a6bee0a6b6e0a787e0a6b020e0a6a1e0a787e0a6aee0a787e0a6a8e0a6b9e0a78be0a6b0e0a78de0a6b8e0a78de0a69f20e0a69ce0a787e0a6b2e0a6bee0a79f20e0a6ace0a6a6e0a6b2e0a6bf20e0a6b9e0a6a8e0a5a43c2f703e0d0a0d0a3c703ee0a68fe0a69520e0a695e0a6a8e0a78de0a6afe0a6bee0a6b020e0a6ace0a6bee0a6ace0a6be20e0a6b9e0a787e0a6bee0a697e0a787e0a695e0a78720e0a6b8e0a6bee0a6ace0a787e0a69520e0a6b8e0a6b9e0a695e0a6b0e0a78de0a6aee0a780e0a6b0e0a6be20e0a6aae0a6b0e0a6bfe0a6b6e0a78de0a6b0e0a6aee0a78020e0a69320e0a6aae0a69be0a6a8e0a78de0a6a6e0a6b8e0a68720e0a6ace0a78de0a6afe0a695e0a78de0a6a4e0a6bf20e0a6b9e0a6bfe0a6b8e0a787e0a6ace0a787e0a68720e0a6aee0a6a8e0a78720e0a695e0a6b0e0a6a4e0a787e0a6a8e0a5a420e0a695e0a6bfe0a6a8e0a78de0a6a4e0a78120e0a6a4e0a6bee0a681e0a6b0e0a6be20e0a6b9e0a6a0e0a6bee0a78e20e0a6b2e0a695e0a78de0a6b720e0a695e0a6b0e0a6be20e0a6b6e0a781e0a6b0e0a78120e0a695e0a6b0e0a787e0a6a82c20e0a6b9e0a6bee0a6b8e0a6aae0a6bee0a6a4e0a6bee0a6b2e0a787e0a6b020e0a6a8e0a6bfe0a6ace0a6bfe0a79c20e0a6aae0a6b0e0a78de0a6afe0a6ace0a787e0a695e0a78de0a6b7e0a6a3e0a695e0a787e0a6a8e0a78de0a6a6e0a78de0a6b0e0a7872028e0a686e0a687e0a6b8e0a6bfe0a687e0a6892920e0a6b9e0a78be0a697e0a787e0a6b020e0a6a4e0a6a4e0a78de0a6a4e0a78de0a6ace0a6bee0a6ace0a6a7e0a6bee0a6a8e0a78720e0a6a5e0a6bee0a695e0a6be20e0a6ace0a787e0a6b620e0a695e0a79fe0a787e0a69520e0a69ce0a6a820e0a6b0e0a78be0a697e0a780e0a6b020e0a6aee0a783e0a6a4e0a78de0a6afe0a781e0a6b020e0a695e0a78de0a6b7e0a787e0a6a4e0a78de0a6b0e0a78720266c7371756f3be0a6b8e0a6aee0a6b8e0a78de0a6afe0a6be26727371756f3b20e0a6b0e0a79fe0a787e0a69be0a787e0a5a420e0a7a8e0a7a6e0a7a6e0a7a620e0a6a5e0a787e0a695e0a78720e0a7a8e0a7a6e0a7a6e0a7ab20e0a6b8e0a6bee0a6b2e0a787e0a6b020e0a6aee0a6a7e0a78de0a6afe0a78720e0a6aee0a783e0a6a4e0a78de0a6afe0a78120e0a6aae0a6a5e0a6afe0a6bee0a6a4e0a78de0a6b0e0a78020e0a6ace0a787e0a6b6e0a6bfe0a6b020e0a6ade0a6bee0a69720e0a6ace0a79fe0a6b8e0a78de0a69520e0a6b0e0a78be0a697e0a780e0a6a6e0a787e0a6b020e0a693e0a6b7e0a781e0a6a7e0a787e0a6b020e0a6aee0a6bee0a6a4e0a78de0a6b0e0a6bee0a6a4e0a6bfe0a6b0e0a6bfe0a695e0a78de0a6a420e0a6a1e0a78be0a69c20e0a6aae0a78de0a6b0e0a79fe0a78be0a69720e0a695e0a6b0e0a78720e0a6a4e0a6bfe0a6a8e0a6bf20e0a6aee0a783e0a6a4e0a78de0a6afe0a78120e0a6a4e0a78de0a6ace0a6b0e0a6bee0a6a8e0a78de0a6ace0a6bfe0a6a420e0a695e0a6b0e0a6a4e0a787e0a6a8e0a5a420e0a7a8e0a7a6e0a7a6e0a7ab20e0a6b8e0a6bee0a6b2e0a78720e0a6a4e0a6bfe0a6a8e0a6bf20e0a6b9e0a6bee0a6a4e0a787e0a6a8e0a6bee0a6a4e0a78720e0a6a7e0a6b0e0a6be20e0a6aae0a79ce0a787e0a6a8e0a5a43c2f703e0d0a0d0a3c703ee0a6b9e0a78be0a697e0a787e0a6b020e0a6ace0a78de0a6afe0a6bee0a6aae0a6bee0a6b0e0a78720e0a6aee0a6a8e0a78be0a69ae0a6bfe0a695e0a6bfe0a78ee0a6b8e0a69520e0a69ce0a6bee0a6a8e0a6bfe0a79fe0a787e0a69be0a787e0a6a82c20e0a6a4e0a6bfe0a6a8e0a6bf2028e0a6b9e0a78be0a697e0a7872920e0a6a8e0a6bee0a6b0e0a6b8e0a6bfe0a6b8e0a6b8e0a6bfe0a6b8e0a69fe0a6bfe0a69520e0a6a1e0a6bfe0a69ce0a685e0a6b0e0a78de0a6a1e0a6bee0a6b0e0a78720e0a6ade0a781e0a697e0a69be0a787e0a6a8e0a5a420e0a6a8e0a6bee0a6b0e0a6b8e0a6bfe0a6b8e0a6b8e0a6bfe0a6b8e0a69fe0a6bfe0a69520e0a6aae0a6bee0a6b0e0a6b8e0a78be0a6a8e0a6bee0a6b2e0a6bfe0a69fe0a6bf20e0a6a1e0a6bfe0a69ce0a685e0a6b0e0a78de0a6a1e0a6bee0a6b02028e0a68fe0a6a8e0a6aae0a6bfe0a6a1e0a6bf2920e0a68fe0a695e0a69fe0a6bf20e0a6ace0a78de0a6afe0a695e0a78de0a6a4e0a6bfe0a6a4e0a78de0a6ac266e646173683be0a6b8e0a682e0a695e0a78de0a6b0e0a6bee0a6a8e0a78de0a6a420e0a685e0a6b8e0a781e0a6b8e0a78de0a6a5e0a6a4e0a6bee0a5a420e0a68f20e0a6b8e0a6aee0a6b8e0a78de0a6afe0a6bee0a79f20e0a6ade0a78be0a697e0a6be20e0a6aee0a6bee0a6a8e0a781e0a6b7e0a787e0a6b020e0a6aee0a6a7e0a78de0a6af20e0a6a6e0a780e0a6b0e0a78de0a69820e0a6b8e0a6aee0a79f20e0a6a7e0a6b0e0a78720e0a685e0a6b8e0a78de0a6ace0a6bee0a6ade0a6bee0a6ace0a6bfe0a69520e0a686e0a69ae0a6b0e0a6a320e0a6a6e0a787e0a696e0a6be20e0a6afe0a6bee0a79fe0a5a420e0a6a4e0a6bee0a681e0a6b0e0a6be20e0a6a8e0a6bfe0a69ce0a787e0a6a6e0a787e0a6b020e0a6ace0a787e0a6b6e0a6bf20e0a697e0a781e0a6b0e0a781e0a6a4e0a78de0a6ac20e0a6a6e0a787e0a6a8e0a5a420e0a6ace0a787e0a6b6e0a6bf20e0a6ace0a787e0a6b6e0a6bf20e0a6aae0a78de0a6b0e0a6b6e0a682e0a6b8e0a6be20e0a6aae0a78de0a6b0e0a6bee0a6aae0a78de0a6a4e0a6bfe0a6b020e0a69ae0a6bee0a6b9e0a6bfe0a6a6e0a6be20e0a6a5e0a6bee0a695e0a78720e0a6a4e0a6bee0a681e0a6a6e0a787e0a6b0e0a5a420e0a6b8e0a787e0a68720e0a6b8e0a699e0a78de0a697e0a78720e0a6a4e0a6bee0a681e0a6a6e0a787e0a6b020e0a6aee0a6a7e0a78de0a6afe0a78720e0a6b8e0a6b9e0a6bee0a6a8e0a781e0a6ade0a782e0a6a4e0a6bfe0a6b0e0a69320e0a685e0a6ade0a6bee0a6ac20e0a6a6e0a787e0a696e0a6be20e0a6afe0a6bee0a79fe0a5a43c2f703e0d0a0d0a3c703ee0a7a7e0a7a6e0a7a620e0a69ce0a6a8e0a787e0a6b0e0a69320e0a6ace0a787e0a6b6e0a6bf20e0a6b0e0a78be0a697e0a780e0a695e0a78720e0a6b9e0a6a4e0a78de0a6afe0a6bee0a6b020e0a685e0a6ade0a6bfe0a6afe0a78be0a697e0a78720e0a6ace0a6bfe0a69ae0a6bee0a6b0e0a787e0a6b020e0a6aee0a781e0a696e0a78be0a6aee0a781e0a696e0a6bf20e0a695e0a6b0e0a6be20e0a6b9e0a79fe0a787e0a69be0a78720e0a6b9e0a78be0a697e0a787e0a695e0a787e0a5a420e0a6a4e0a6ace0a78720e0a6b9e0a78be0a697e0a78720e0a7a9e0a7a620e0a69ce0a6a8e0a787e0a6b020e0a6aee0a6a4e0a78b20e0a6b0e0a78be0a697e0a78020e0a6b9e0a6a4e0a78de0a6afe0a6bee0a6b020e0a695e0a6a5e0a6be20e0a6b8e0a78de0a6ace0a780e0a695e0a6bee0a6b020e0a695e0a6b0e0a787e0a69be0a787e0a6a8e0a5a43c2f703e0d0a, 8, '2018-10-31 09:06:44', '2018-10-31 09:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `common_modules`
--

CREATE TABLE `common_modules` (
  `id` int(11) UNSIGNED NOT NULL,
  `vision` blob DEFAULT NULL,
  `b_vision` blob DEFAULT NULL,
  `contact` blob DEFAULT NULL,
  `b_contact` blob DEFAULT NULL,
  `appointment` blob DEFAULT NULL,
  `b_appointment` blob DEFAULT NULL,
  `serviceEntry` blob DEFAULT NULL,
  `b_serviceEntry` blob DEFAULT NULL,
  `faq` blob DEFAULT NULL,
  `b_faq` blob DEFAULT NULL,
  `serviceList` blob DEFAULT NULL,
  `b_serviceList` blob DEFAULT NULL,
  `latest_news` blob DEFAULT NULL,
  `b_latest_news` blob DEFAULT NULL,
  `notice` blob DEFAULT NULL,
  `b_notice` blob DEFAULT NULL,
  `report_delivery` blob DEFAULT NULL,
  `b_report_delivery` blob DEFAULT NULL,
  `emergency_helpline` blob DEFAULT NULL,
  `b_emergency_helpline` blob DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `common_modules`
--

INSERT INTO `common_modules` (`id`, `vision`, `b_vision`, `contact`, `b_contact`, `appointment`, `b_appointment`, `serviceEntry`, `b_serviceEntry`, `faq`, `b_faq`, `serviceList`, `b_serviceList`, `latest_news`, `b_latest_news`, `notice`, `b_notice`, `report_delivery`, `b_report_delivery`, `emergency_helpline`, `b_emergency_helpline`, `created_at`, `updated_at`) VALUES
(2, 0x3c703e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e41626f75743c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, 0x3c703e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223ee0a6b8e0a6aee0a78de0a6ace0a6a8e0a78de0a6a7e0a7873c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, 0x3c703e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e436f6e746163743c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c703e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e4468616b612c2042616e676c61646573682e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c703e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e2b38382d30313633332d3030393930303c6120687265663d2274656c3a2b38382d30313633332d30303939303022207374796c653d22636f6c6f723a626c61636b3b223e3c6920636c6173733d2266612066612d70686f6e6522207374796c653d226d617267696e2d6c6566743a3570783b223e3c2f693e3c2f613e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c703e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e313020414d2d3520504d3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c703e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e4672696461792026616d703b206f7468657220476f76742e20686f6c69646179732061726520636c6f7365642e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c703e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e636f6e74616374406d65646968656c7062642e636f6d3c6120687265663d226d61696c746f3a636f6e74616374406d65646968656c7062642e636f6d22207374796c653d22636f6c6f723a626c61636b3b223e3c6920636c6173733d2266612066612d656e76656c6f706522207374796c653d226d617267696e2d6c6566743a3570783b223e3c2f693e3c2f613e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c703e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e7777772e6d65646968656c7062642e636f6d3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, 0x3c70207374796c653d226d617267696e2d6c6566743a30696e3b206d617267696e2d72696768743a30696e223e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223ee0a6afe0a78be0a697e0a6bee0a6afe0a78be0a6973c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c70207374796c653d226d617267696e2d6c6566743a30696e3b206d617267696e2d72696768743a30696e223e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223ee0a6a2e0a6bee0a695e0a6be2c20e0a6ace0a6bee0a682e0a6b2e0a6bee0a6a6e0a787e0a6b6e0a5a43c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c70207374796c653d226d617267696e2d6c6566743a30696e3b206d617267696e2d72696768743a30696e223e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e2be0a7aee0a7ae2de0a7a6e0a7a7e0a7ace0a7a9e0a7a92de0a7a6e0a7a6e0a7afe0a7afe0a7a6e0a7a63c6120687265663d2274656c3a2b38382d30313633332d30303939303022207374796c653d22636f6c6f723a626c61636b3b223e3c6920636c6173733d2266612066612d70686f6e6522207374796c653d226d617267696e2d6c6566743a3570783b223e3c2f693e3c2f613e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c70207374796c653d226d617267696e2d6c6566743a30696e3b206d617267696e2d72696768743a30696e223e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223ee0a6b8e0a695e0a6bee0a6b220e0a7a7e0a7a6e0a69fe0a6be2de0a6ace0a6bfe0a695e0a6bee0a6b220e0a7abe0a69fe0a6be3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c70207374796c653d226d617267696e2d6c6566743a30696e3b206d617267696e2d72696768743a30696e223e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223ee0a6b6e0a781e0a695e0a78de0a6b0e0a6ace0a6bee0a6b020e0a69320e0a685e0a6a8e0a78de0a6afe0a6bee0a6a8e0a78de0a6af20e0a6b8e0a6b0e0a695e0a6bee0a6b0e0a6bf20e0a69be0a781e0a69fe0a6bfe0a6b020e0a6a6e0a6bfe0a6a820e0a6ace0a6a8e0a78de0a6a7e0a5a4266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c703e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e636f6e74616374406d65646968656c7062642e636f6d3c6120687265663d226d61696c746f3a636f6e74616374406d65646968656c7062642e636f6d22207374796c653d22636f6c6f723a626c61636b3b223e3c6920636c6173733d2266612066612d656e76656c6f706522207374796c653d226d617267696e2d6c6566743a3570783b223e3c2f693e3c2f613e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c703e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e7777772e6d65646968656c7062642e636f6d3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, 0x3c703e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e4170706f696e746d656e743c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, 0x3c703e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223ee0a6b8e0a6bee0a695e0a78de0a6b7e0a6bee0a78e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, 0x3c703e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e456e6c69737420596f757220536572766963653c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, 0x3c70207374796c653d226d617267696e2d6c6566743a30696e3b206d617267696e2d72696768743a30696e223e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223ee0a686e0a6aae0a6a8e0a6bee0a6b020e0a6b8e0a787e0a6ace0a6be20e0a6afe0a781e0a695e0a78de0a6a420e0a695e0a6b0e0a781e0a6a83c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, 0x3c703e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e464151733c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, 0x3c703e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223ee0a6b8e0a6bee0a6a7e0a6bee0a6b0e0a6a320e0a69ce0a6bfe0a69ce0a78de0a69ee0a6bee0a6b8e0a6be3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, 0x3c703e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d73657269663b20666f6e742d73697a653a31347078223e4c697374206f662053657276696365733c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c756c207374796c653d226c6973742d7374796c652d747970653a737175617265223e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e323420486f75727320506861726d6163793c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e416464696374696f6e205265686162696c69746174696f6e2043656e7465723c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e41697220416d62756c616e63653c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e416d62756c616e63653c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e426561757479205061726c6f75722026616d703b205370613c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e426c6f6f642042616e6b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e426c6f6f6420446f6e6f723c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e446f63746f72732050616e656c3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e4579652042616e6b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e466f726569676e204d65646963616c20496e666f726d6174696f6e2043656e7465723c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e47796d3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e4865616c746820436172652043656e7465723c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e48657262616c204d65646963696e652043656e7465723c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e486f6d656f706174686963204d65646963696e652043656e7465723c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e4f70746963733c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e506861726d6163793c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e50687973696f746865726170792026616d703b205265686162696c69746174696f6e2043656e7465723c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e536b696e20436172652026616d703b204c617365722043656e7465723c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e56616363696e6174696f6e2043656e7465723c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e596f67612043656e7465723c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a3c2f756c3e0d0a, 0x3c703e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223ee0a6b8e0a787e0a6ace0a6bee0a6b8e0a6aee0a782e0a6b9e0a787e0a6b020e0a6a4e0a6bee0a6b2e0a6bfe0a695e0a6be3c7374726f6e673e203c2f7374726f6e673e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c756c207374796c653d226c6973742d7374796c652d747970653a737175617265223e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a7a8e0a7aa20e0a686e0a689e0a79fe0a6bee0a6b0e0a6b8e0a78d267a776e6a3b20e0a6abe0a6bee0a6b0e0a78de0a6aee0a787e0a6b8e0a780203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a685e0a78de0a6afe0a6bee0a6a1e0a6bfe0a695e0a6b6e0a6a820e0a6b0e0a6bfe0a6b9e0a78de0a6afe0a6bee0a6ace0a6bfe0a6b2e0a6bfe0a69fe0a787e0a6b6e0a6a820e0a6b8e0a787e0a6a8e0a78de0a69fe0a6bee0a6b0203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a68fe0a79fe0a6bee0a6b020e0a685e0a78de0a6afe0a6bee0a6aee0a78de0a6ace0a781e0a6b2e0a787e0a6a8e0a78de0a6b8203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a685e0a78de0a6afe0a6bee0a6aee0a78de0a6ace0a781e0a6b2e0a787e0a6a8e0a78de0a6b8203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a6ace0a6bfe0a689e0a69fe0a6bf20e0a6aae0a6bee0a6b0e0a78de0a6b2e0a6bee0a6b020e0a685e0a78de0a6afe0a6bee0a6a8e0a78de0a6a120e0a6b8e0a78de0a6aae0a6be3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a6ace0a78de0a6b2e0a6bee0a6a120e0a6ace0a78de0a6afe0a6bee0a682e0a695203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a6ace0a78de0a6b2e0a6bee0a6a120e0a6a1e0a78be0a6a8e0a6bee0a6b0203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a6a1e0a695e0a78de0a69fe0a6b0e0a6b8e0a78d267a776e6a3b20e0a6aae0a78de0a6afe0a6bee0a6a8e0a787e0a6b2203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a686e0a68720e0a6ace0a78de0a6afe0a6bee0a682e0a695203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a6abe0a6b0e0a787e0a6a820e0a6aee0a787e0a6a1e0a6bfe0a695e0a78de0a6afe0a6bee0a6b220e0a687e0a6a8e0a6abe0a6b0e0a6aee0a787e0a6b6e0a6a820e0a6b8e0a787e0a6a8e0a78de0a69fe0a6bee0a6b03c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a69ce0a6bfe0a6ae203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a6b9e0a787e0a6b2e0a78d267a776e6a3be0a6a520e0a695e0a787e0a79fe0a6bee0a6b020e0a6b8e0a787e0a6a8e0a78de0a69fe0a6bee0a6b0203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a6b9e0a6bee0a6b0e0a6ace0a6bee0a6b220e0a6aee0a787e0a6a1e0a6bfe0a6b8e0a6bfe0a6a820e0a6b8e0a787e0a6a8e0a78de0a69fe0a6bee0a6b0203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a6b9e0a78be0a6aee0a6bfe0a693e0a6aae0a78de0a6afe0a6bee0a6a5e0a6bfe0a69520e0a6aee0a787e0a6a1e0a6bfe0a6b8e0a6bfe0a6a820e0a6b8e0a787e0a6a8e0a78de0a69fe0a6bee0a6b0203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a685e0a6aae0a69fe0a6bfe0a695e0a78d267a776e6a3be0a6b83c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a6abe0a6bee0a6b0e0a78de0a6aee0a787e0a6b8e0a780203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a6abe0a6bfe0a69ce0a6bfe0a693e0a6a5e0a787e0a6b0e0a6bee0a6aae0a6bf20e0a685e0a78de0a6afe0a6bee0a6a8e0a78de0a6a120e0a6b0e0a6bfe0a6b9e0a78de0a6afe0a6bee0a6ace0a6bfe0a6b2e0a6bfe0a69fe0a787e0a6b6e0a6a820e0a6b8e0a787e0a6a8e0a78de0a69fe0a6bee0a6b0203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a6b8e0a78de0a695e0a6bfe0a6a820e0a695e0a787e0a79fe0a6bee0a6b020e0a685e0a78de0a6afe0a6bee0a6a8e0a78de0a6a120e0a6b2e0a787e0a69ce0a6bee0a6b020e0a6b8e0a787e0a6a8e0a78de0a69fe0a6bee0a6b0203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a6ade0a78de0a6afe0a6bee0a695e0a6b8e0a6bfe0a6a8e0a787e0a6b6e0a6a820e0a6b8e0a787e0a6a8e0a78de0a69fe0a6bee0a6b0203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f6c693e0d0a093c6c693e3c7370616e207374796c653d22636f6c6f723a23303030303030223e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e3c7370616e207374796c653d226c696e652d6865696768743a6e6f726d616c223ee0a687e0a79fe0a78be0a697e0a6be20e0a6b8e0a787e0a6a8e0a78de0a69fe0a6bee0a6b0203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e266e6273703b3c2f7370616e3e3c2f6c693e0d0a3c2f756c3e0d0a, 0x3c703e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e4164766572746973656d656e743c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, 0x3c703e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223ee0a6ace0a6bfe0a69ce0a78de0a69ee0a6bee0a6aae0a6a83c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, 0x3c70207374796c653d22746578742d616c69676e3a6a757374696679223e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e4e6f746963653c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, 0x3c703e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223ee0a6ace0a6bfe0a69ce0a78de0a69ee0a6aae0a78de0a6a4e0a6bf3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, 0x3c703e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e5265706f72742044656c69766572793c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c703e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e5765262333393b6c6c206c61756e636820746869732073657276696365207665727920736f6f6e2e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, 0x3c703e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223ee0a6b0e0a6bfe0a6aae0a78be0a6b0e0a78de0a69f20e0a6a1e0a787e0a6b2e0a6bfe0a6ade0a6bee0a6b0e0a6bf3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c703e3c7370616e207374796c653d22666f6e742d73697a653a31327078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223ee0a686e0a6aee0a6b0e0a6be20e0a696e0a781e0a6ac20e0a6b6e0a780e0a698e0a78de0a6b0e0a68720e0a68fe0a68720e0a6b8e0a787e0a6ace0a6be20e0a69ae0a6bee0a6b2e0a78120e0a695e0a6b0e0a6ace0a78be0a5a4266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, 0x3c703e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223e48656c706c696e653c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, 0x3c703e3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c48656c7665746963612c73616e732d7365726966223ee0a6b9e0a787e0a6b2e0a78de0a6aae0a6b2e0a6bee0a687e0a6a83c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, '2019-07-29 20:26:26', '2020-01-20 22:23:18');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `b_department_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department_name`, `b_department_name`, `created_at`, `updated_at`) VALUES
(5, 'Cardiology', 'হৃদরোগ', '2017-10-16 19:49:55', '2018-05-09 23:36:17'),
(6, 'Medicine', 'মেডিসিন', '2017-12-02 08:19:32', '2018-05-09 23:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `directory_type`
--

CREATE TABLE `directory_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `directory_type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `b_directory_type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(10) UNSIGNED NOT NULL,
  `district_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `b_district_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `district_name`, `b_district_name`, `created_at`, `updated_at`) VALUES
(6, 'Bandarban ', 'বান্দরবান', '2017-10-15 19:26:29', '2017-10-15 19:26:29'),
(7, 'Barguna ', 'বরগুনা', '2017-10-15 22:48:39', '2017-10-15 22:48:39'),
(8, 'Barishal ', 'বরিশাল', '2017-10-15 22:49:51', '2018-04-02 07:43:06'),
(9, 'Bhola ', 'ভোলা', '2017-10-15 22:50:57', '2017-10-15 22:50:57'),
(10, 'Bagura  ', 'বগুড়া', '2017-10-15 22:52:01', '2018-04-23 09:08:22'),
(11, 'Brahmanbaria ', 'ব্রাহ্মণবাড়িয়া', '2017-10-15 22:53:03', '2017-10-15 22:53:03'),
(12, 'Chandpur', 'চাঁদপুর', '2017-10-15 22:53:57', '2017-10-15 22:53:57'),
(13, 'Chapainawabganj ', 'চাঁপাইনবাবগঞ্জ', '2017-10-15 22:57:04', '2017-10-15 22:57:04'),
(14, 'Chattagram  ', 'চট্টগ্রাম', '2017-10-15 22:58:29', '2018-04-02 07:44:07'),
(15, 'Chuadanga ', 'চুয়াডাঙ্গা', '2017-10-15 22:59:34', '2017-10-15 22:59:34'),
(16, 'Cumilla  ', 'কুমিল্লা', '2017-10-15 23:00:48', '2018-04-03 10:40:39'),
(17, 'Cox\'sbazar ', 'কক্সবাজার ', '2017-10-15 23:03:33', '2017-10-15 23:03:33'),
(18, 'Dhaka', 'ঢাকা', '2017-10-15 23:05:03', '2017-10-15 23:05:03'),
(19, 'Dinajpur ', 'দিনাজপুর', '2017-10-15 23:06:14', '2017-10-15 23:06:14'),
(20, 'Faridpur ', 'ফরিদপুর', '2017-10-15 23:07:40', '2017-10-15 23:07:40'),
(21, 'Feni ', 'ফেনী', '2017-10-15 23:08:52', '2017-10-15 23:08:52'),
(22, 'Gaibandha ', 'গাইবান্ধা ', '2017-10-15 23:09:39', '2017-10-15 23:09:39'),
(23, 'Gazipur ', 'গাজীপুর', '2017-10-15 23:10:44', '2017-10-15 23:10:44'),
(24, 'Gopalganj ', 'গোপালগঞ্জ', '2017-10-15 23:11:50', '2017-10-15 23:11:50'),
(25, 'Habiganj ', 'হবিগঞ্জ ', '2017-10-15 23:13:06', '2017-10-15 23:13:06'),
(26, 'Jamalpur ', 'জামালপুর', '2017-10-15 23:13:59', '2017-10-15 23:13:59'),
(27, 'Jashore', 'যশোর', '2017-10-15 23:14:58', '2018-04-02 07:46:06'),
(28, 'Jhalokathi', 'ঝালকাঠি', '2017-10-15 23:17:49', '2017-10-15 23:17:49'),
(29, 'Jhenaidah', 'ঝিনাইদহ', '2017-10-15 23:18:50', '2017-10-15 23:18:50'),
(30, 'Joypurhat ', 'জয়পুরহাট', '2017-10-15 23:19:39', '2017-10-15 23:19:39'),
(31, 'Khagrachhari ', 'খাগড়াছড়ি', '2017-10-15 23:20:42', '2017-10-15 23:20:42'),
(32, 'Khulna ', 'খুলনা', '2017-10-15 23:21:43', '2017-10-15 23:21:43'),
(33, 'Kishoreganj  ', 'কিশোরগঞ্জ', '2017-10-15 23:22:34', '2017-10-15 23:22:34'),
(34, 'Kurigram ', 'কুড়িগ্রাম', '2017-10-15 23:23:45', '2017-10-15 23:23:45'),
(35, 'Kushtia ', 'কুষ্টিয়া', '2017-10-15 23:24:29', '2017-10-15 23:24:29'),
(36, 'Lakshmipur ', 'লক্ষ্মীপুর', '2017-10-15 23:27:42', '2017-10-16 15:59:07'),
(37, 'Lalmonirhat ', 'লালমনিরহাট', '2017-10-15 23:28:40', '2017-10-15 23:28:40'),
(38, 'Madaripur ', 'মাদারীপুর', '2017-10-15 23:29:44', '2017-10-15 23:29:44'),
(39, 'Magura ', 'মাগুরা', '2017-10-15 23:30:30', '2017-10-15 23:30:30'),
(40, 'Manikganj ', 'মানিকগঞ্জ', '2017-10-15 23:31:22', '2017-10-15 23:31:22'),
(41, 'Meherpur ', 'মেহেরপুর', '2017-10-15 23:32:17', '2017-10-15 23:32:17'),
(42, 'Moulvibazar', 'মৌলভীবাজার', '2017-10-15 23:33:08', '2017-10-15 23:33:08'),
(44, 'Munsiganj ', 'মুন্সিগঞ্জ ', '2017-10-15 23:35:41', '2018-03-17 06:41:50'),
(45, 'Mymensingh', 'ময়মনসিংহ ', '2017-10-16 15:57:55', '2017-10-16 15:57:55'),
(46, 'Naogaon  ', 'নওগাঁ ', '2017-10-16 16:00:33', '2017-10-16 16:00:33'),
(47, 'Narail ', 'নড়াইল ', '2017-10-16 16:01:28', '2017-10-16 16:01:28'),
(48, 'Narayanganj ', 'নারায়ণগঞ্জ ', '2017-10-16 16:02:28', '2017-10-16 16:02:28'),
(49, 'Narsingdi ', 'নরসিংদী', '2017-10-16 16:03:21', '2017-10-16 16:03:21'),
(50, 'Natore ', 'নাটোর', '2017-10-16 16:04:13', '2017-10-16 16:04:13'),
(51, 'Netrokona ', 'নেত্রকোনা', '2017-10-16 16:05:06', '2017-10-16 16:05:06'),
(52, 'Nilfamari ', 'নীলফামারি ', '2017-10-16 16:05:55', '2018-06-02 09:15:03'),
(53, 'Noakhali ', 'নোয়াখালী', '2017-10-16 16:06:58', '2017-10-16 16:06:58'),
(54, 'Pabna ', 'পাবনা', '2017-10-16 16:07:53', '2017-10-16 16:07:53'),
(55, 'Panchagarh ', 'পঞ্চগড়', '2017-10-16 16:08:43', '2017-10-16 16:08:43'),
(56, 'Patuakhali ', 'পটুয়াখালী', '2017-10-16 16:09:35', '2017-10-16 16:09:35'),
(57, 'Pirojpur ', 'পিরোজপুর', '2017-10-16 16:10:22', '2017-10-16 16:10:22'),
(58, 'Rajbari ', 'রাজবাড়ি ', '2017-10-16 16:11:32', '2017-10-16 16:11:32'),
(59, 'Rajshahi ', ' রাজশাহী', '2017-10-16 16:13:19', '2017-10-16 16:13:19'),
(60, 'Rangamati ', 'রাঙ্গামাটি', '2017-10-16 16:14:05', '2017-10-16 16:14:05'),
(61, 'Rangpur ', 'রংপুর ', '2017-10-16 16:14:58', '2017-10-16 16:14:58'),
(62, 'Satkhira ', 'সাতক্ষীরা', '2017-10-16 16:21:45', '2017-10-16 16:21:45'),
(63, 'Shariatpur ', 'শরিয়তপুর', '2017-10-16 16:39:46', '2017-10-16 16:39:46'),
(64, 'Sherpur ', 'শেরপুর', '2017-10-16 16:41:00', '2017-10-16 16:41:00'),
(65, 'Sirajganj ', 'সিরাজগঞ্জ', '2017-10-16 16:41:57', '2017-10-16 16:41:57'),
(66, 'Sunamganj ', 'সুনামগঞ্জ ', '2017-10-16 16:42:44', '2017-10-16 16:42:44'),
(67, 'Sylhet ', 'সিলেট', '2017-10-16 16:44:17', '2017-10-16 16:44:17'),
(68, 'Tangail ', 'টাঙ্গাইল', '2017-10-16 16:45:19', '2017-10-16 16:45:19'),
(69, 'Thakurgaon', 'ঠাকুরগাঁও', '2017-10-16 16:46:05', '2017-10-19 12:02:51'),
(72, 'Bagerhat', 'বাগেরহাট', '2019-05-08 22:15:36', '2019-05-08 22:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `eye_bank`
--

CREATE TABLE `eye_bank` (
  `id` int(10) UNSIGNED NOT NULL,
  `eye_bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_eye_bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eye_bank_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_eye_bank_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eye_bank_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eye_bank_description` blob DEFAULT NULL,
  `b_eye_bank_description` blob DEFAULT NULL,
  `eye_bank_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_eye_bank_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eye_bank_email_ad` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eye_group_details` blob DEFAULT NULL,
  `b_eye_group_details` blob DEFAULT NULL,
  `eye_bank_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eye_bank_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_eye` blob DEFAULT NULL,
  `b_total_eye` blob DEFAULT NULL,
  `eye_bank_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_eye_bank_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eye_bank_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `eye_bank_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eye_bank_doctor`
--

CREATE TABLE `eye_bank_doctor` (
  `id` int(10) UNSIGNED NOT NULL,
  `eye_bank_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eye_bank_email`
--

CREATE TABLE `eye_bank_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `eye_bank_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eye_bank_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eye_bank_notice`
--

CREATE TABLE `eye_bank_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eye_bank_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_eye_bank_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eye_bank_notice_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_eye_bank_notice_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `eye_bank_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eye_bank_phone`
--

CREATE TABLE `eye_bank_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `eye_bank_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eye_bank_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eye_bank_service`
--

CREATE TABLE `eye_bank_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `eye_bank_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_eye_bank_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eye_bank_service_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_eye_bank_service_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `eye_bank_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `subservice_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foreignmedical`
--

CREATE TABLE `foreignmedical` (
  `id` int(10) UNSIGNED NOT NULL,
  `foreignmedical_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_foreignmedical_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreignmedical_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_foreignmedical_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreignmedical_description` blob DEFAULT NULL,
  `b_foreignmedical_description` blob DEFAULT NULL,
  `foreignmedical_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_foreignmedical_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreignmedical_email_ad` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreignmedical_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreignmedical_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreignmedical_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_medicine` blob DEFAULT NULL,
  `b_total_medicine` blob DEFAULT NULL,
  `foreignmedical_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_foreignmedical_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreignmedical_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `foreignmedical_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foreignmedical_doctor`
--

CREATE TABLE `foreignmedical_doctor` (
  `id` int(10) UNSIGNED NOT NULL,
  `foreignmedical_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foreignmedical_email`
--

CREATE TABLE `foreignmedical_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `foreignmedical_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreignmedical_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foreignmedical_notice`
--

CREATE TABLE `foreignmedical_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreignmedical_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_foreignmedical_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreignmedical_notice_description` blob DEFAULT NULL,
  `b_foreignmedical_notice_description` blob DEFAULT NULL,
  `foreignmedical_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foreignmedical_phone`
--

CREATE TABLE `foreignmedical_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `foreignmedical_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreignmedical_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foreignmedical_product`
--

CREATE TABLE `foreignmedical_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `foreignmedical_product_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_foreignmedical_product_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreignmedical_product_description` blob DEFAULT NULL,
  `b_foreignmedical_product_description` blob DEFAULT NULL,
  `foreignmedical_product_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreignmedical_id` int(10) UNSIGNED NOT NULL,
  `product_category_id` int(10) UNSIGNED DEFAULT NULL,
  `product_subcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foreignmedical_service`
--

CREATE TABLE `foreignmedical_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `foreignmedical_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_foreignmedical_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreignmedical_service_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_foreignmedical_service_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreignmedical_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `subservice_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gym`
--

CREATE TABLE `gym` (
  `id` int(10) UNSIGNED NOT NULL,
  `gym_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_gym_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gym_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_gym_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gym_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gym_description` blob DEFAULT NULL,
  `b_gym_description` blob DEFAULT NULL,
  `gym_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_gym_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gym_email_ad` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gym_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gym_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gym_total_bed` blob DEFAULT NULL,
  `b_gym_total_bed` blob DEFAULT NULL,
  `gym_total_doctor` int(11) DEFAULT NULL,
  `b_gym_total_doctor` int(11) DEFAULT NULL,
  `gym_total_staff` int(11) DEFAULT NULL,
  `b_gym_total_staff` int(11) DEFAULT NULL,
  `gym_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_gym_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gym_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `gym_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gym_doctor`
--

CREATE TABLE `gym_doctor` (
  `id` int(10) UNSIGNED NOT NULL,
  `gym_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gym_email`
--

CREATE TABLE `gym_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `gym_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gym_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gym_notice`
--

CREATE TABLE `gym_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gym_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_gym_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gym_notice_description` blob DEFAULT NULL,
  `b_gym_notice_description` blob DEFAULT NULL,
  `gym_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gym_phone`
--

CREATE TABLE `gym_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `gym_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gym_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gym_service`
--

CREATE TABLE `gym_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `gym_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_gym_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gym_service_description` blob DEFAULT NULL,
  `b_gym_service_description` blob DEFAULT NULL,
  `gym_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `subservice_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `herbal_center`
--

CREATE TABLE `herbal_center` (
  `id` int(10) UNSIGNED NOT NULL,
  `herbal_center_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_herbal_center_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `herbal_center_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_herbal_center_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `herbal_center_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `herbal_center_description` blob DEFAULT NULL,
  `b_herbal_center_description` blob DEFAULT NULL,
  `herbal_center_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_herbal_center_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `herbal_center_email_ad` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `herbal_center_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `herbal_center_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `herbal_center_total_bed` blob DEFAULT NULL,
  `b_herbal_center_total_bed` blob DEFAULT NULL,
  `herbal_center_total_doctor` int(11) DEFAULT NULL,
  `b_herbal_center_total_doctor` int(11) DEFAULT NULL,
  `herbal_center_total_staff` int(11) DEFAULT NULL,
  `b_herbal_center_total_staff` int(11) DEFAULT NULL,
  `herbal_center_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_herbal_center_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `herbal_center_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `herbal_center_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `herbal_center_doctor`
--

CREATE TABLE `herbal_center_doctor` (
  `id` int(10) UNSIGNED NOT NULL,
  `herbal_center_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `herbal_center_email`
--

CREATE TABLE `herbal_center_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `herbal_center_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `herbal_center_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `herbal_center_notice`
--

CREATE TABLE `herbal_center_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `herbal_center_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_herbal_center_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `herbal_center_notice_description` blob DEFAULT NULL,
  `b_herbal_center_notice_description` blob DEFAULT NULL,
  `herbal_center_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `herbal_center_phone`
--

CREATE TABLE `herbal_center_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `herbal_center_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `herbal_center_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `herbal_center_product`
--

CREATE TABLE `herbal_center_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `herbal_center_product_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_herbal_center_product_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `herbal_center_product_description` blob DEFAULT NULL,
  `b_herbal_center_product_description` blob DEFAULT NULL,
  `herbal_center_product_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `herbal_center_id` int(10) UNSIGNED DEFAULT NULL,
  `product_category_id` int(10) UNSIGNED NOT NULL,
  `product_subcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `herbal_center_product`
--

INSERT INTO `herbal_center_product` (`id`, `herbal_center_product_title`, `b_herbal_center_product_title`, `herbal_center_product_description`, `b_herbal_center_product_description`, `herbal_center_product_photo`, `photo_path`, `herbal_center_id`, `product_category_id`, `product_subcategory_id`, `created_at`, `updated_at`) VALUES
(1, 'check', 'check', 0x636865636b, 0x20636865636b, NULL, NULL, 1, 4, 5, '2017-10-30 04:49:15', '2017-10-30 05:11:35'),
(2, NULL, NULL, 0x3c70207374796c653d22746578742d616c69676e3a6a757374696679223e4d792066617468657220636f6d706c61696e7320616c6c207468652074696d652e20486973206261636b2061636865732c207468652073757065726d61726b6574207365656d7320746f206265206675727468657220616e6420667572746865722061776179206576657279206461792c20636f6d7075746572732e2e2e206f682c266e6273703b646f6e262333393b74206765742068696d20737461727465642e3c2f703e0d0a0d0a3c70207374796c653d22746578742d616c69676e3a6a757374696679223e4d792066617468657220636f6d706c61696e7320616c6c207468652074696d652e20486973206261636b2061636865732c207468652073757065726d61726b6574207365656d7320746f206265206675727468657220616e6420667572746865722061776179206576657279206461792c20636f6d7075746572732e2e2e206f682c266e6273703b646f6e262333393b74206765742068696d20737461727465643c2f703e0d0a, 0x3c70207374796c653d22746578742d616c69676e3a6a757374696679223e3c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a689e0a69ae0a78de0a69a3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a686e0a6a6e0a6bee0a6b2e0a6a4e0a787e0a6b03c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6a8e0a6bfe0a6b0e0a78de0a6a6e0a787e0a6b6e0a6a8e0a6bee0a6b03c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6aae0a6b0e0a6bfe0a6aae0a78de0a6b0e0a787e0a695e0a78de0a6b7e0a6bfe0a6a4e0a7873c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a697e0a6bee0a69ce0a780e0a6aae0a781e0a6b03c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6b8e0a6bfe0a69fe0a6bf3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a695e0a6b0e0a6aae0a78be0a6b0e0a787e0a6b6e0a6a8e0a7873c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6b8e0a6ac3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6a7e0a6b0e0a6a8e0a787e0a6b03c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6a8e0a6bfe0a6b0e0a78de0a6ace0a6bee0a69ae0a6a8e0a7803c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a695e0a6bee0a69c3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6ace0a6a8e0a78de0a6a73c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6b0e0a6bee0a696e0a6bee0a6b03c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6a8e0a6bfe0a6b0e0a78de0a6a6e0a787e0a6b63c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6a6e0a6bfe0a79fe0a787e0a69be0a7873c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6a8e0a6bfe0a6b0e0a78de0a6ace0a6bee0a69ae0a6a83c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a695e0a6aee0a6bfe0a6b6e0a6a83c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b417269616c2671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223e20283c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a687e0a6b8e0a6bf3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b417269616c2671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223e293c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a5a43c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a686e0a6a6e0a6bee0a6b2e0a6a4e0a787e0a6b03c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6a8e0a6bfe0a6b0e0a78de0a6a6e0a787e0a6b6e0a6a8e0a6be3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6aae0a781e0a6b0e0a78be0a6aae0a781e0a6b0e0a6bf3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6b9e0a6bee0a6a4e0a7873c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6aae0a6bee0a693e0a79fe0a6bee0a6b03c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6aae0a6b03c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a687e0a6b8e0a6bf3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6aae0a6b0e0a6ace0a6b0e0a78de0a6a4e0a7803c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a695e0a6b0e0a6a3e0a780e0a79f3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6a0e0a6bfe0a6953c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a695e0a6b0e0a6ace0a787e0a5a43c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c70207374796c653d22746578742d616c69676e3a6a757374696679223e3c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a689e0a69ae0a78de0a69a3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a686e0a6a6e0a6bee0a6b2e0a6a4e0a787e0a6b03c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6a8e0a6bfe0a6b0e0a78de0a6a6e0a787e0a6b6e0a6a8e0a6bee0a6b03c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6aae0a6b0e0a6bfe0a6aae0a78de0a6b0e0a787e0a695e0a78de0a6b7e0a6bfe0a6a4e0a7873c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a697e0a6bee0a69ce0a780e0a6aae0a781e0a6b03c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6b8e0a6bfe0a69fe0a6bf3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a695e0a6b0e0a6aae0a78be0a6b0e0a787e0a6b6e0a6a8e0a7873c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6b8e0a6ac3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6a7e0a6b0e0a6a8e0a787e0a6b03c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6a8e0a6bfe0a6b0e0a78de0a6ace0a6bee0a69ae0a6a8e0a7803c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a695e0a6bee0a69c3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6ace0a6a8e0a78de0a6a73c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6b0e0a6bee0a696e0a6bee0a6b03c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6a8e0a6bfe0a6b0e0a78de0a6a6e0a787e0a6b63c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6a6e0a6bfe0a79fe0a787e0a69be0a7873c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6a8e0a6bfe0a6b0e0a78de0a6ace0a6bee0a69ae0a6a83c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a695e0a6aee0a6bfe0a6b6e0a6a83c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b417269616c2671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223e20283c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a687e0a6b8e0a6bf3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b417269616c2671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223e293c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a5a43c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a686e0a6a6e0a6bee0a6b2e0a6a4e0a787e0a6b03c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6a8e0a6bfe0a6b0e0a78de0a6a6e0a787e0a6b6e0a6a8e0a6be3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6aae0a781e0a6b0e0a78be0a6aae0a781e0a6b0e0a6bf3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6b9e0a6bee0a6a4e0a7873c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6aae0a6bee0a693e0a79fe0a6bee0a6b03c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6aae0a6b03c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a687e0a6b8e0a6bf3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6aae0a6b0e0a6ace0a6b0e0a78de0a6a4e0a7803c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a695e0a6b0e0a6a3e0a780e0a79f3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a6a0e0a6bfe0a6953c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e203c7370616e207374796c653d22666f6e742d73697a653a31302e357074223e3c7370616e207374796c653d226c696e652d6865696768743a31313525223e3c7370616e207374796c653d22666f6e742d66616d696c793a2671756f743b4e69726d616c612055492671756f743b2c2671756f743b73616e732d73657269662671756f743b223e3c7370616e207374796c653d22636f6c6f723a626c61636b223ee0a695e0a6b0e0a6ace0a787e0a5a43c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a, NULL, NULL, 3, 3, NULL, '2018-04-08 15:19:28', '2018-11-02 21:24:40'),
(3, NULL, NULL, 0x3c703e41266e6273703b3c7374726f6e673e626c6f673c2f7374726f6e673e266e6273703b2861266e6273703b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f436c697070696e675f286d6f7270686f6c6f67792922207469746c653d22436c697070696e6720286d6f7270686f6c6f677929223e7472756e636174696f6e3c2f613e266e6273703b6f66207468652065787072657373696f6e202671756f743b3c7374726f6e673e7765626c6f673c2f7374726f6e673e2671756f743b293c7375703e3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f426c6f6723636974655f6e6f74652d31223e5b315d3c2f613e3c2f7375703e266e6273703b697320612064697363757373696f6e206f7220696e666f726d6174696f6e616c266e6273703b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f5765627369746522207469746c653d2257656273697465223e776562736974653c2f613e266e6273703b7075626c6973686564206f6e20746865266e6273703b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f576f726c645f576964655f57656222207469746c653d22576f726c64205769646520576562223e576f726c642057696465205765623c2f613e636f6e73697374696e67206f662064697363726574652c206f6674656e20696e666f726d616c266e6273703b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f446961727922207469746c653d224469617279223e64696172793c2f613e2d7374796c65207465787420656e747269657320282671756f743b706f7374732671756f743b292e20506f73747320617265207479706963616c6c7920646973706c6179656420696e2072657665727365206368726f6e6f6c6f676963616c206f726465722c20736f207468617420746865206d6f737420726563656e7420706f737420617070656172732066697273742c2061742074686520746f70206f66207468652077656220706167652e20556e74696c20323030392c20626c6f6773207765726520757375616c6c792074686520776f726b206f6620612073696e676c6520696e646976696475616c2c3c7375703e5b3c656d3e3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f57696b6970656469613a4369746174696f6e5f6e656564656422207469746c653d2257696b6970656469613a4369746174696f6e206e6565646564223e6369746174696f6e206e65656465643c2f613e3c2f656d3e5d3c2f7375703e266e6273703b6f63636173696f6e616c6c79206f66206120736d616c6c2067726f75702c20616e64206f6674656e20636f766572656420612073696e676c65207375626a656374206f7220746f7069632e20496e207468652032303130732c202671756f743b6d756c74692d617574686f7220626c6f67732671756f743b20284d41427329206861766520646576656c6f7065642c207769746820706f737473207772697474656e206279206c61726765206e756d62657273206f6620617574686f727320616e6420736f6d6574696d65732070726f66657373696f6e616c6c79206564697465642e204d4142732066726f6d266e6273703b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f4e657773706170657222207469746c653d224e6577737061706572223e6e6577737061706572733c2f613e2c206f74686572206d65646961206f75746c6574732c266e6273703b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f556e697665727369747922207469746c653d22556e6976657273697479223e756e697665727369746965733c2f613e2c266e6273703b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f5468696e6b5f74616e6b22207469746c653d225468696e6b2074616e6b223e7468696e6b2074616e6b733c2f613e2c266e6273703b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f4164766f636163795f67726f757022207469746c653d224164766f636163792067726f7570223e6164766f636163792067726f7570733c2f613e2c20616e642073696d696c617220696e737469747574696f6e73206163636f756e7420666f7220616e20696e6372656173696e67207175616e74697479206f6620626c6f6720747261666669632e205468652072697365206f66266e6273703b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f5477697474657222207469746c653d2254776974746572223e547769747465723c2f613e266e6273703b616e64206f74686572202671756f743b3c6120687265663d2268747470733a2f2f656e2e77696b6970656469612e6f72672f77696b692f4d6963726f626c6f6767696e6722207469746c653d224d6963726f626c6f6767696e67223e6d6963726f626c6f6767696e673c2f613e2671756f743b2073797374656d732068656c707320696e74656772617465204d41427320616e642073696e676c652d617574686f7220626c6f677320696e746f20746865206e657773206d656469612e266e6273703b3c656d3e426c6f673c2f656d3e266e6273703b63616e20616c736f2062652075736564206173206120766572622c206d65616e696e67266e6273703b3c656d3e746f206d61696e7461696e206f722061646420636f6e74656e7420746f206120626c6f673c2f656d3e2e3c2f703e0d0a, 0x3c703ee0a686e0a69c20e0a6b0e0a78be0a6ace0a6ace0a6bee0a6b020e0a6ace0a6bfe0a695e0a787e0a6b2e0a78720e0a6b0e0a6bee0a69ce0a6a7e0a6bee0a6a8e0a780e0a6b020e0a686e0a697e0a6bee0a6b0e0a697e0a6bee0a681e0a69320e0a6a8e0a6bfe0a69c20e0a695e0a6bee0a6b0e0a78de0a6afe0a6bee0a6b2e0a79fe0a78720e0a6a8e0a6bfe0a6b0e0a78de0a6ace0a6bee0a69ae0a6a820e0a695e0a6aee0a6bfe0a6b6e0a6a8e0a6bee0a6b020e0a6aee0a6bee0a6b9e0a6ace0a781e0a6ac20e0a6a4e0a6bee0a6b2e0a781e0a695e0a6a6e0a6bee0a6b020e0a6b8e0a6bee0a682e0a6ace0a6bee0a6a6e0a6bfe0a695e0a6a6e0a787e0a6b020e0a68f20e0a695e0a6a5e0a6be20e0a69ce0a6bee0a6a8e0a6bee0a6a8e0a5a420e0a6a4e0a6bfe0a6a8e0a6bf20e0a6ace0a6b2e0a787e0a6a82c20e0a69fe0a787e0a6b2e0a6bfe0a6ade0a6bfe0a6b6e0a6a8e0a78720e0a6a4e0a6bee0a681e0a6b0e0a6be20e0a6a6e0a787e0a696e0a787e0a69be0a787e0a6a820e0a6b9e0a6bee0a687e0a695e0a78be0a6b0e0a78de0a69f20e0a697e0a6bee0a69ce0a780e0a6aae0a781e0a6b020e0a6b8e0a6bfe0a69fe0a6bf20e0a695e0a6b0e0a6aae0a78be0a6b0e0a787e0a6b6e0a6a820e0a6a8e0a6bfe0a6b0e0a78de0a6ace0a6bee0a69ae0a6a820e0a69be0a79f20e0a6aee0a6bee0a6b8e0a787e0a6b020e0a69ce0a6a8e0a78de0a6af20e0a6b8e0a78de0a6a5e0a697e0a6bfe0a6a420e0a695e0a6b0e0a787e0a69be0a787e0a6a8e0a5a420e0a6a4e0a6ace0a78720e0a687e0a6b8e0a6bf20e0a68fe0a696e0a6a8e0a78b20e0a68f20e0a686e0a6a6e0a787e0a6b6e0a787e0a6b020e0a695e0a78be0a6a8e0a78b20e0a695e0a6aae0a6bf20e0a6aae0a6bee0a79fe0a6a8e0a6bfe0a5a420e0a6afe0a787e0a6b9e0a787e0a6a4e0a78120e0a687e0a6b8e0a6bf20e0a6b9e0a6bee0a687e0a695e0a78be0a6b0e0a78de0a69fe0a787e0a6b020e0a686e0a6a6e0a787e0a6b6e0a787e0a6b020e0a6ace0a6bfe0a6b7e0a79fe0a69fe0a6bf20e0a69ce0a6bee0a6a8e0a6a4e0a78720e0a6aae0a787e0a6b0e0a787e0a69be0a7872c20e0a6a4e0a6bee0a687266e6273703b3c6120687265663d22687474703a2f2f7777772e70726f74686f6d616c6f2e636f6d2f62616e676c61646573682f61727469636c652f313438333435362f2545302541362539372545302541362542452545302541362539432545302541372538302545302541362541412545302541372538312545302541362542302d2545302541362542382545302541362542462545302541362539462545302541362542462d2545302541362541382545302541362542462545302541362542302545302541372538442545302541362541432545302541362542452545302541362539412545302541362541382545302541372538372d2545302541362542382545302541372538442545302541362541352545302541362539372545302541362542462545302541362541342545302541362542452545302541362541362545302541372538372545302541362542362d25453025413625423925453025413625424525453025413625383725453025413625393525453025413725384225453025413625423025453025413725384425453025413625394625453025413725383725453025413625423022207461726765743d225f626c616e6b223ee0a6a8e0a6bfe0a6b0e0a78de0a6ace0a6bee0a69ae0a6a8e0a78020e0a695e0a6bee0a6b0e0a78de0a6afe0a695e0a78de0a6b0e0a6ae20e0a6ace0a6a8e0a78de0a6a720e0a6b0e0a6bee0a696e0a6bee0a6b020e0a6a8e0a6bfe0a6b0e0a78de0a6a6e0a787e0a6b620e0a6a6e0a6bfe0a79fe0a787e0a69be0a7873c2f613ee0a5a43c2f703e0d0a, NULL, NULL, 2, 3, NULL, '2018-04-08 17:47:23', '2018-05-08 14:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `herbal_center_service`
--

CREATE TABLE `herbal_center_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `herbal_center_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_herbal_center_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `herbal_center_service_description` blob DEFAULT NULL,
  `b_herbal_center_service_description` blob DEFAULT NULL,
  `herbal_center_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `subservice_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homeopathic`
--

CREATE TABLE `homeopathic` (
  `id` int(10) UNSIGNED NOT NULL,
  `homeopathic_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_homeopathic_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homeopathic_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_homeopathic_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homeopathic_description` blob DEFAULT NULL,
  `b_homeopathic_description` blob DEFAULT NULL,
  `homeopathic_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_homeopathic_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homeopathic_email_ad` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homeopathic_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homeopathic_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homeopathic_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_medicine` blob DEFAULT NULL,
  `b_total_medicine` blob DEFAULT NULL,
  `homeopathic_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_homeopathic_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homeopathic_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `homeopathic_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homeopathic_doctor`
--

CREATE TABLE `homeopathic_doctor` (
  `id` int(10) UNSIGNED NOT NULL,
  `homeopathic_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homeopathic_email`
--

CREATE TABLE `homeopathic_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `homeopathic_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homeopathic_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homeopathic_notice`
--

CREATE TABLE `homeopathic_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homeopathic_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_homeopathic_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homeopathic_notice_description` blob DEFAULT NULL,
  `b_homeopathic_notice_description` blob DEFAULT NULL,
  `homeopathic_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homeopathic_phone`
--

CREATE TABLE `homeopathic_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `homeopathic_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homeopathic_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homeopathic_product`
--

CREATE TABLE `homeopathic_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `homeopathic_product_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_homeopathic_product_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homeopathic_product_description` blob DEFAULT NULL,
  `b_homeopathic_product_description` blob DEFAULT NULL,
  `homeopathic_product_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homeopathic_id` int(10) UNSIGNED NOT NULL,
  `product_category_id` int(10) UNSIGNED DEFAULT NULL,
  `product_subcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homeopathic_service`
--

CREATE TABLE `homeopathic_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `homeopathic_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_homeopathic_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homeopathic_service_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_homeopathic_service_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `homeopathic_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `subservice_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(10) UNSIGNED NOT NULL,
  `hospital_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_hospital_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospital_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_hospital_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospital_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospital_description` blob DEFAULT NULL,
  `b_hospital_description` blob DEFAULT NULL,
  `hospital_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_hospital_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospital_email_ad` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospital_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospital_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospital_total_bed` blob DEFAULT NULL,
  `b_hospital_total_bed` blob DEFAULT NULL,
  `hospital_total_doctor` int(11) DEFAULT NULL,
  `b_hospital_total_doctor` int(11) DEFAULT NULL,
  `hospital_total_staff` int(11) DEFAULT NULL,
  `b_hospital_total_staff` int(11) DEFAULT NULL,
  `hospital_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_hospital_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospital_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `hospital_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `hospital_name`, `b_hospital_name`, `hospital_subname`, `b_hospital_subname`, `hospital_photo`, `photo_path`, `hospital_description`, `b_hospital_description`, `hospital_phone_no`, `b_hospital_phone_no`, `hospital_email_ad`, `hospital_fb_link`, `hospital_web_link`, `hospital_total_bed`, `b_hospital_total_bed`, `hospital_total_doctor`, `b_hospital_total_doctor`, `hospital_total_staff`, `b_hospital_total_staff`, `hospital_address`, `b_hospital_address`, `hospital_latitude`, `hospital_longitude`, `district_id`, `subdistrict_id`, `created_at`, `updated_at`) VALUES
(17, 'Bandarban Sadar Hospital', 'বান্দরবান সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল ', 'Health Care Center277.png', 'uploads/hospital/Health Care Center277.png', '', '', 'Contact Number: \r\n+88-01730-324765', 'যোগাযোগের নম্বরঃ  \r\n+৮৮-০১৭৩০-৩২৪৭৬৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bandarban Sadar, Bandarban.', 'বান্দরবান সদর, বান্দরবান।', '', '', 6, 21, '2018-04-22 15:25:37', '2019-12-28 10:38:00'),
(18, 'Alikadam Upazila Health Complex', 'আলীকদম উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center347.png', 'uploads/hospital/Health Care Center347.png', '', '', 'Contact Number:\r\n+88-01730-324824', 'যোগাযোগের নম্বরঃ \r\n+৮৮-০১৭৩০-৩২৪৮২৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Alikadam, Bandarban.', 'আলীকদম, বান্দরবান।', '', '', 6, 22, '2018-04-22 15:33:44', '2019-12-28 10:37:11'),
(19, 'Lama Upazila Health Complex  ', 'লামা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center124.png', 'uploads/hospital/Health Care Center124.png', '', '', 'Contact Number:      \r\n+88-01730-324825', 'যোগাযোগের নম্বরঃ \r\n+৮৮-০১৭৩০-৩২৪৮২৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Lama, Bandarban.', 'লামা, বান্দরবান।', '', '', 6, 23, '2018-04-22 16:21:15', '2019-12-28 10:38:44'),
(20, 'Naikhongchhari Upazila Health Complex ', 'নাইক্ষ্যংছড়ি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center353.png', 'uploads/hospital/Health Care Center353.png', '', '', 'Contact Number:    \r\n+88-01730-324826', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮২৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Naikhongchhari, Bandarban.', 'নাইক্ষ্যংছড়ি, বান্দরবান।', '', '', 6, 24, '2018-04-22 23:24:03', '2019-12-28 10:39:25'),
(21, 'Rowangchhari Upazila Health Complex  ', 'রোয়াংছড়ি  উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center171.png', 'uploads/hospital/Health Care Center171.png', '', '', 'Contact Number:     \r\n+88-01811-444605', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৮১১-৪৪৪৬০৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Rowangchhari, Bandarban.', 'রোয়াংছড়ি, বান্দরবান।', '', '', 6, 25, '2018-04-22 23:31:53', '2019-12-28 10:40:07'),
(22, 'Ruma Upazila Health Complex ', 'রুমা উপজেলা স্বাস্থ্য কমপ্লেক্স            ', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center140.png', 'uploads/hospital/Health Care Center140.png', '', '', 'Contact Number: \r\n+88-01730-324828', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮২৮', '', NULL, 'www.medihelpbd.com ', '', '', 0, 0, 0, 0, 'Ruma, Bandarban.', 'রুমা, বান্দরবান।', '', '', 6, 26, '2018-04-22 23:39:23', '2019-12-28 10:40:53'),
(23, 'Thanchi Upazila Health Complex', 'থানচি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center303.png', 'uploads/hospital/Health Care Center303.png', '', '', 'Contact Number:\r\n+88-01552-140401', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৫৫২-১৪০৪০১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Thanchi, Bandarban.', 'থানচি, বান্দরবান।', '', '', 6, 27, '2018-04-22 23:47:59', '2019-12-28 10:41:33'),
(24, 'Barguna Sadar Hospital', 'বরগুনা সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল', 'Health Care Center277.png', 'uploads/hospital/Health Care Center277.png', '', '', 'Contact Number:     \r\n+88-01730-324884', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৮৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Barguna Sadar, Barguna.', 'বরগুনা সদর, বরগুনা।                    ', '', '', 7, 28, '2018-04-23 00:09:37', '2019-12-28 10:45:10'),
(25, 'Amtali Upazila Health Complex ', 'আমতলী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center336.png', 'uploads/hospital/Health Care Center336.png', '', '', 'Contact Number:\r\n+88-01730-324759', ' যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৫৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Amtali, Barguna.', 'আমতলী, বরগুনা।              ', '', '', 7, 29, '2018-04-23 00:15:39', '2019-12-30 16:55:22'),
(26, 'Bamna Upazila Health Complex', 'বামনা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center499.png', 'uploads/hospital/Health Care Center499.png', '', '', 'Contact Number:\r\n+88-01730-324405', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪০৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bamna, Barguna.', 'বামনা, বরগুনা।', '', '', 7, 30, '2018-04-23 00:21:16', '2019-12-28 10:42:57'),
(28, 'Patharghata Upazila Health Complex ', 'পাথরঘাটা উপজেলা স্বাস্থ্য কমপ্লেক্স ', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center483.png', 'uploads/hospital/Health Care Center483.png', '', '', 'Contact Number:       \r\n+88-01730-324407', 'যোগাযোগের নম্বরঃ \r\n+৮৮-০১৭৩০-৩২৪৪০৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Patharghata, Barguna.', 'পাথরঘাটা, বরগুনা।', '', '', 7, 32, '2018-04-23 09:39:52', '2019-12-28 10:47:29'),
(30, 'Barishal Sadar Hospital', 'বরিশাল সদর হাসপাতাল   ', 'Sadar Hospital', 'সদর হাসপাতাল ', 'Health Care Center255.png', 'uploads/hospital/Health Care Center255.png', '', '', 'Contact Number:\r\n+88-01730-324760', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৬০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Barishal Sadar, Barisal.', 'বরিশাল সদর, বরিশাল।', '', '', 8, 34, '2018-04-23 10:04:09', '2019-12-28 10:53:40'),
(31, 'Agailjhara  Upazila Health Complex', 'আগৈলঝাড়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center312.png', 'uploads/hospital/Health Care Center312.png', '', '', 'Contact Number:     \r\n+88-01730-324408', 'যোগাযোগের নম্বরঃ  \r\n+৮৮-০১৭৩০-৩২৪৪০৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Agailjhara, Barishal.', 'আগৈলঝাড়া, বরিশাল।                                        ', '', '', 8, 35, '2018-04-23 10:10:42', '2019-12-28 10:50:07'),
(32, 'Babuganj Upazila Health Complex', 'বাবুগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center89.png', 'uploads/hospital/Health Care Center89.png', '', '', 'Contact Number: \r\n+88-01730-324409', ' যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪০৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Babuganj, Barishal.', 'বাবুগঞ্জ, বরিশাল।', '', '', 8, 36, '2018-04-23 10:17:29', '2019-12-28 10:50:51'),
(33, 'Bakerganj Upazila Health Complex ', 'বাকেরগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center277.png', 'uploads/hospital/Health Care Center277.png', '', '', 'Contact Number: \r\n+88-01730-324410', 'যোগাযোগের নম্বরঃ \r\n+৮৮-০১৭৩০-৩২৪৪১০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bakerganj, Barishal.', 'বাকেরগঞ্জ, বরিশাল।', '', '', 8, 37, '2018-04-23 10:26:48', '2019-12-28 10:51:34'),
(34, 'Banaripara Upazila Health Complex', 'বানারীপাড়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center31.png', 'uploads/hospital/Health Care Center31.png', '', '', 'Contact Number: \r\n+88-01730-324411', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪১১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Banaripara, Barishal.', 'বানারীপাড়া, বরিশাল।', '', '', 8, 38, '2018-04-23 10:34:27', '2019-12-28 10:52:16'),
(35, 'Gournadi Upazila Health Complex ', 'গৌরনদী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center459.png', 'uploads/hospital/Health Care Center459.png', '', '', 'Contact Number:       \r\n+88-01730-324412', 'যোগাযোগের নম্বরঃ \r\n+৮৮-০১৭৩০-৩২৪৪১২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Gournadi, Barishal.', 'গৌরনদী, বরিশাল।', '', '', 8, 39, '2018-04-23 10:39:38', '2019-12-28 10:54:25'),
(36, 'Hizla Upazila Health Complex', 'হিজলা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center124.png', 'uploads/hospital/Health Care Center124.png', '', '', 'Contact Number:\r\n+88-01730-324413', 'যোগাযোগের নম্বরঃ \r\n+৮৮-০১৭৩০-৩২৪৪১৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Hizla, Barishal.', 'হিজলা, বরিশাল।', '', '', 8, 40, '2018-04-23 10:50:55', '2019-12-28 10:55:03'),
(37, 'Mehendiganj Upazila Health Complex ', 'মেহেন্দিগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center499.png', 'uploads/hospital/Health Care Center499.png', '', '', 'Contact Number:\r\n+88-01730-324414', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪১৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Mehendiganj, Barishal.', 'মেহেন্দিগঞ্জ, বরিশাল।', '', '', 8, 41, '2018-04-23 10:55:59', '2019-12-28 10:55:48'),
(38, 'Muladi Upazila Health Complex', 'মুলাদী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center432.png', 'uploads/hospital/Health Care Center432.png', '', '', 'Contact Number:\r\n+88-01730-324415', 'যোগাযোগের নম্বরঃ \r\n+৮৮-০১৭৩০-৩২৪৪১৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Muladi, Barishal.', 'মুলাদী, বরিশাল।', '', '', 8, 42, '2018-04-23 11:01:15', '2019-12-28 10:56:26'),
(39, 'Wazirpur Upazila Health Complex', 'উজিরপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center233.png', 'uploads/hospital/Health Care Center233.png', '', '', 'Contact Number:     \r\n+88-01730-324416', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪১৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Wazirpur, Barishal.', 'উজিরপুর, বরিশাল।', '', '', 8, 43, '2018-04-23 11:06:03', '2019-12-28 10:57:04'),
(40, 'Bhola Sadar Hospital ', 'ভোলা সদর হাসপাতাল', 'Sadar Hospital ', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324761', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৬১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bhola Sadar, Bhola.', 'ভোলা সদর, ভোলা।                   ', '', '', 9, 44, '2018-04-23 11:56:25', '2019-10-24 15:35:43'),
(41, 'Borhanuddin Upazila Health Complex ', 'বোরহানউদ্দিন উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324417', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪১৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Borhanuddin, Bhola.', 'বোরহানউদ্দিন, ভোলা।', '', '', 9, 45, '2018-04-23 12:01:29', '2019-10-24 15:36:33'),
(42, 'Charfashion Upazila Health Complex', 'চরফ্যাশন উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324418', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪১৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Charfashion, Bhola.', 'চরফ্যাশন, ভোলা।', '', '', 9, 46, '2018-04-23 12:11:37', '2019-10-24 15:37:24'),
(43, 'Daulatkhan Upazila Health Complex', 'দৌলতখান উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324419', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪১৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Daulatkhan, Bhola.', 'দৌলতখান, ভোলা।', '', '', 9, 47, '2018-04-23 12:16:50', '2019-10-24 15:38:25'),
(44, 'Lalmohan Upazila Health Complex', 'লালমোহন উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324420', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪২০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Lalmohan, Bhola.', 'লালমোহন, ভোলা।', '', '', 9, 48, '2018-04-23 12:22:09', '2019-10-24 15:40:25'),
(45, 'Manpura Upazila Health Complex', 'মনপুরা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324421', 'যোগাযোগের নম্বরঃ \r\n+৮৮-০১৭৩০-৩২৪৪২১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Manpura, Bhola.', 'মনপুরা, ভোলা।', '', '', 9, 49, '2018-04-23 12:33:51', '2019-10-24 15:41:20'),
(46, 'Tajumuddin Upazila Health Complex', 'তজুমুদ্দিন উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324422', 'যোগাযোগের নম্বরঃ \r\n+৮৮-০১৭৩০-৩২৪৪২২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Tajumuddin, Bhola.', 'তজুমুদ্দিন, ভোলা।', '', '', 9, 50, '2018-04-23 12:38:37', '2019-10-24 15:42:05'),
(47, 'Bagura Sadar Hospital', 'বগুড়া সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', 'Health Care Center230.png', 'uploads/hospital/Health Care Center230.png', '', '', 'Contact Number:\r\n+88-01730-324803', ' যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮০৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bagura Sadar, Bagura.', 'বগুড়া সদর, বগুড়া।                                  ', '', '', 10, 51, '2018-04-23 13:00:30', '2019-12-26 08:29:31'),
(48, 'Adamdighi Upazila Health Complex', 'আদমদীঘি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center40.png', 'uploads/hospital/Health Care Center40.png', '', '', 'Contact Number:\r\n+88-01730-324620', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬২০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Adamdighi, Bagura.', 'আদমদীঘি, বগুড়া।                           ', '', '', 10, 52, '2018-04-23 13:12:45', '2019-12-26 08:28:42'),
(49, 'Dhunat Upazila Health Complex ', 'ধুনট উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center127.png', 'uploads/hospital/Health Care Center127.png', '', '', 'Contact Number:\r\n+88-01730-324621', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬২১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dhunat, Bagura.', 'ধুনট, বগুড়া।', '', '', 10, 53, '2018-04-23 13:21:23', '2019-12-26 08:30:27'),
(50, 'Dhupchanchia Upazila Health Complex', 'ধুপচাঁচিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center159.png', 'uploads/hospital/Health Care Center159.png', '', '', 'Contact Number:      \r\n+88-01730-324622', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬২২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dhupchanchia, Bagura.', 'ধুপচাঁচিয়া, বগুড়া।                            ', '', '', 10, 54, '2018-04-23 21:12:23', '2019-12-26 08:31:17'),
(51, 'Gabtoli Upazila Health Complex', 'গাবতলী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center500.png', 'uploads/hospital/Health Care Center500.png', '', '', 'Contact Number:\r\n+88-01730-324623', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬২৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Gabtoli, Bagura.', 'গাবতলী, বগুড়া।', '', '', 10, 55, '2018-04-23 21:19:52', '2019-12-26 08:32:15'),
(52, 'Kahaloo Upazila Health Complex', 'কাহালু উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center80.png', 'uploads/hospital/Health Care Center80.png', '', '', ' Contact Number:\r\n+88-01730-324624', 'যোগাযোগের নম্বরঃ \r\n+৮৮-০১৭৩০-৩২৪৬২৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kahaloo, Bagura.', 'কাহালু, বগুড়া।                                          ', '', '', 10, 56, '2018-04-23 21:27:27', '2019-12-26 08:33:05'),
(53, 'Nandigram Upazila Health Complex', 'নন্দীগ্রাম উপজেলা স্বাস্থ্য কমপ্লেক্স ', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center236.png', 'uploads/hospital/Health Care Center236.png', '', '', 'Contact Number:     \r\n+88-01730-324625', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬২৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nandigram, Bagura.', 'নন্দীগ্রাম, বগুড়া।                            ', '', '', 10, 57, '2018-04-23 21:36:07', '2019-12-26 08:34:01'),
(54, 'Sariakandi Upazila Health Complex', 'সারিয়াকান্দি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center416.png', 'uploads/hospital/Health Care Center416.png', '', '', 'Contact Number:\r\n+88-01730-324626', ' যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬২৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sariakandi, Bagura.', 'সারিয়াকান্দি, বগুড়া।                                  ', '', '', 10, 58, '2018-04-23 21:46:43', '2019-12-26 08:40:40'),
(55, 'Shajahanpur Upazila Health Complex', 'শাজাহানপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center320.png', 'uploads/hospital/Health Care Center320.png', '', '', 'Contact Number:      \r\n+88-01730-324877', 'যোগাযোগের নম্বরঃ \r\n+৮৮-০১৭৩০-৩২৪৮৭৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Shajahanpur, Bagura.', 'শাজাহানপুর, বগুড়া।                             ', '', '', 10, 59, '2018-04-23 21:52:29', '2019-12-26 08:41:22'),
(56, 'Sherpur Upazila Health Complex', 'শেরপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center409.png', 'uploads/hospital/Health Care Center409.png', '', '', 'Contact Number:\r\n+88-01730-324627', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬২৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sherpur, Bagura.', 'শেরপুর, বগুড়া।                                        ', '', '', 10, 60, '2018-04-23 21:59:12', '2019-12-26 08:42:17'),
(57, 'Shibganj Upazila Health Complex ', 'শিবগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center310.png', 'uploads/hospital/Health Care Center310.png', '', '', 'Contact Number:\r\n+88-01730-324628', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬২৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Shibganj, Bagura.', 'শিবগঞ্জ, বগুড়া।                               ', '', '', 10, 61, '2018-04-23 22:05:48', '2019-12-26 09:06:30'),
(58, 'Sonatola Upazila Health Complex', 'সোনাতলা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center451.png', 'uploads/hospital/Health Care Center451.png', '', '', 'Contact Number:\r\n+88-01730-324629', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬২৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sonatola, Bagura.', 'সোনাতলা, বগুড়া।                                         ', '', '', 10, 62, '2018-04-23 22:16:49', '2019-12-26 08:43:37'),
(59, 'Brahmanbaria Sadar Hospital ', 'ব্রাহ্মণবাড়িয়া সদর হাসপাতাল  ', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324766', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৬৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Brahmanbaria Sadar, Brahmanbaria.', 'ব্রাহ্মণবাড়িয়া সদর, ব্রাহ্মণবাড়িয়া।', '', '', 11, 63, '2018-04-23 22:44:47', '2019-10-24 15:47:43'),
(60, 'Akhaura Upazila Health Complex ', 'আখাউড়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:      \r\n+88-01730-324436', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৩৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Akhaura, Brahmanbaria.', 'আখাউড়া, ব্রাহ্মণবাড়িয়া।', '', '', 11, 64, '2018-04-23 22:53:07', '2019-10-24 15:43:39'),
(61, 'Ashuganj Upazila Health Complex  ', 'আশুগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324867', 'যোগাযোগের নম্বরঃ \r\n+৮৮-০১৭৩০-৩২৪৮৬৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Ashuganj, Brahmanbaria.', 'আশুগঞ্জ, ব্রাহ্মণবাড়িয়া।', '', '', 11, 65, '2018-04-23 22:59:25', '2019-10-24 15:44:28'),
(62, 'Bancharampur Upazila Health Complex ', 'বাঞ্ছারামপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number: \r\n+88-01730-324438', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৩৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bancharampur, Brahmanbaria.', 'বাঞ্ছারামপুর, ব্রাহ্মণবাড়িয়া।', '', '', 11, 66, '2018-04-23 23:06:17', '2019-10-24 15:45:21'),
(63, 'Nabinagar Upazila Health Complex', 'নবীনগর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324440', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৪০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nabinagar, Brahmanbaria.', 'নবীনগর, ব্রাহ্মণবাড়িয়া।', '', '', 11, 69, '2018-04-23 23:14:32', '2019-10-24 15:50:03'),
(64, 'Nasirnagar Upazila Health Complex ', 'নাসিরনগর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324441', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৪১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nasirnagar, Brahmanbaria.', 'নাসিরনগর, ব্রাহ্মণবাড়িয়া।', '', '', 11, 70, '2018-04-23 23:19:13', '2019-10-24 15:50:59'),
(65, 'Sarail Upazila Health Complex', 'সরাইল উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324442', ' যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৪২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sarail, Brahmanbaria.', 'সরাইল, ব্রাহ্মণবাড়িয়া।', '', '', 11, 71, '2018-04-23 23:23:43', '2019-10-24 15:51:43'),
(66, 'Chandpur Sadar Hospital', 'চাঁদপুর সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324767', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৬৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Chandpur Sadar, Chandpur.', 'চাঁদপুর সদর, চাঁদপুর।', '', '', 12, 72, '2018-04-24 11:46:59', '2019-10-24 15:59:16'),
(67, 'Faridganj Upazila Health Complex', 'ফরিদগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324830', ' যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৩০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Faridganj, Chandpur.', 'ফরিদগঞ্জ, চাঁদপুর।', '', '', 12, 75, '2018-04-24 11:52:47', '2019-10-02 14:36:46'),
(68, 'Haimchar Upazila Health Complex ', 'হাইমচর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324831', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৩১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Haimchar, Chandpur.', 'হাইমচর, চাঁদপুর।', '', '', 12, 73, '2018-04-24 11:57:23', '2019-10-02 14:38:24'),
(69, 'Haziganj Upazila Health Complex', 'হাজীগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324832', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৩২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Haziganj, Chandpur.', 'হাজীগঞ্জ, চাঁদপুর।', '', '', 12, 74, '2018-04-24 12:02:05', '2019-10-02 14:40:03'),
(70, 'Kachua Upazila Health Complex', 'কচুয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324833', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৩৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kachua, Chandpur.', 'কচুয়া, চাঁদপুর।', '', '', 12, 76, '2018-04-24 12:06:40', '2019-10-02 14:42:21'),
(71, 'Matlab Dakshin Upazila Health Complex', 'মতলব দক্ষিণ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324834', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৩৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Matlab Dakshin, Chandpur.', 'মতলব দক্ষিণ, চাঁদপুর।', '', '', 12, 77, '2018-04-24 12:11:22', '2019-10-02 14:43:41'),
(72, 'Matlab Uttar Upazila Health Complex', 'মতলব উত্তর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324835', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৩৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Matlab Uttar, Chandpur.', 'মতলব উত্তর, চাঁদপুর।', '', '', 12, 78, '2018-04-24 12:16:24', '2019-10-02 14:45:05'),
(73, 'Shahrasti Upazila Health Complex', 'শাহ্‌রাস্তি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324836', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৩৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Shahrasti, Chandpur.', 'শাহ্‌রাস্তি, চাঁদপুর।', '', '', 12, 79, '2018-04-24 12:20:57', '2019-10-02 14:46:20'),
(74, 'Chapainawabganj Sadar Hospital', 'চাঁপাইনবাবগঞ্জ সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324804', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮০৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Chapainawabganj Sadar, Chapainawabganj.', 'চাঁপাইনবাবগঞ্জ সদর, চাঁপাইনবাবগঞ্জ।', '', '', 13, 80, '2018-04-24 12:32:20', '2019-10-02 16:35:51'),
(75, 'Bholahat Upazila Health Complex', 'ভোলাহাট উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324630', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৩০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bholahat, Chapainawabganj.', 'ভোলাহাট, চাঁপাইনবাবগঞ্জ।', '', '', 13, 81, '2018-04-24 12:40:49', '2019-10-02 16:32:46'),
(76, 'Gomastapur Upazila Health Complex', 'গোমস্তাপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324631', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৩১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Gomastapur, Chapainawabganj.', 'গোমস্তাপুর, চাঁপাইনবাবগঞ্জ।', '', '', 13, 82, '2018-04-24 12:45:16', '2019-10-24 16:40:10'),
(77, 'Nachol Upazila Health Complex', 'নাচোল উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324632', ' যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৩২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nachol, Chapainawabganj.', 'নাচোল, চাঁপাইনবাবগঞ্জ।', '', '', 13, 83, '2018-04-24 12:49:36', '2019-10-24 16:42:33'),
(78, 'Shibganj Upazila Health Complex', 'শিবগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324633', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৩৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Shibganj, Chapainawabganj.', 'শিবগঞ্জ, চাঁপাইনবাবগঞ্জ।', '', '', 13, 84, '2018-04-24 12:53:43', '2019-10-02 16:41:37'),
(79, 'Chattagram Sadar Hospital', 'চট্টগ্রাম সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324768', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৬৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Chattagram Sadar, Chattagram.', 'চট্টগ্রাম সদর, চট্টগ্রাম।', '', '', 14, 85, '2018-04-24 13:13:25', '2019-10-02 16:52:10'),
(80, 'Anwara Upazila Health Complex', 'আনোয়ারা উপজেলা স্বাস্থ্য কমপ্লেক্স ', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324443', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৪৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Anwara, Chattagram.', 'আনোয়ারা, চট্টগ্রাম।', '', '', 14, 86, '2018-04-24 13:19:26', '2019-10-24 16:48:30'),
(81, 'Banshkhali Upazila Health Complex', 'বাঁশখালী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324444', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৪৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Banshkhali,  Chattagram.', 'বাঁশখালী, চট্টগ্রাম।', '', '', 14, 87, '2018-04-24 13:27:21', '2019-10-24 16:50:36'),
(82, 'Boalkhali Upazila Health Complex', 'বোয়ালখালী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324445', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৪৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Boalkhali,  Chattagram.', 'বোয়ালখালী, চট্টগ্রাম।', '', '', 14, 88, '2018-04-24 13:47:08', '2019-10-02 16:46:26'),
(83, 'Chandanaish Upazila Health Complex', 'চন্দনাঈশ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324446', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৪৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Chandanaish, Chattagram.', 'চন্দনাঈশ, চট্টগ্রাম।', '', '', 14, 89, '2018-04-24 13:52:21', '2019-10-02 16:48:00'),
(84, 'Fatikchhari Upazila Health Complex', 'ফটিকছড়ি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324447', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৪৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Fatikchhari, Chattagram.', 'ফটিকছড়ি, চট্টগ্রাম।', '', '', 14, 90, '2018-04-24 13:57:56', '2019-10-02 16:53:28'),
(85, 'Hathazari Upazila Health Complex', 'হাটহাজারী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324448', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৪৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Hathazari, Chattagram.', 'হাটহাজারী, চট্টগ্রাম।', '', '', 14, 92, '2018-04-24 14:03:39', '2019-10-24 17:46:37'),
(86, 'Lohagara Upazila Health Complex', 'লোহাগাড়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324449', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৪৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Lohagara, Chattagram.', 'লোহাগাড়া, চট্টগ্রাম।', '', '', 14, 93, '2018-04-24 14:11:17', '2019-10-02 16:58:50'),
(87, 'Mirsarai Upazila Health Complex', 'মীরসরাই উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:     \r\n+88-01730-324450', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৫০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Mirsarai, Chattagram.', 'মীরসরাই, চট্টগ্রাম।', '', '', 14, 94, '2018-04-24 14:15:59', '2019-10-02 17:01:25'),
(88, 'Patiya Upazila Health Complex', 'পটিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324451', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৫১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Patiya, Chattagram.', 'পটিয়া, চট্টগ্রাম।', '', '', 14, 95, '2018-04-24 14:20:58', '2019-10-02 17:02:56'),
(89, 'Rangunia Upazila Health Complex', 'রাঙ্গুনিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324452', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৫২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Rangunia, Chattagram.', 'রাঙ্গুনিয়া, চট্টগ্রাম।', '', '', 14, 96, '2018-04-24 14:26:00', '2019-10-02 17:05:05'),
(90, 'Rawzan Upazila Health Complex', 'রাউজান উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324453', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৫৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Rawzan, Chattagram.', 'রাউজান, চট্টগ্রাম।', '', '', 14, 97, '2018-04-24 14:36:13', '2019-10-02 17:08:23'),
(91, 'Rawzan 31 Bedded Hospital', 'রাউজান ৩১ শয্যা বিশিষ্ট হাসপাতাল', 'Medical College, Hospital & Clinic', 'মেডিক্যাল কলেজ, হসপিটাল অ্যান্ড ক্লিনিক ', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324883', ' যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৮৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Rawzan, Chattagram.', 'রাউজান, চট্টগ্রাম।', '', '', 14, 97, '2018-04-24 14:43:37', '2019-12-29 18:16:12'),
(92, 'Sandwip Upazila Health Complex', 'সন্দ্বীপ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324454', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৫৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sandwip, Chattagram.', 'সন্দ্বীপ, চট্টগ্রাম।', '', '', 14, 98, '2018-04-24 14:52:18', '2019-10-24 18:07:20'),
(93, 'Satkania Upazila Health Complex', 'সাতকানিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324455', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৫৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Satkania, Chattagram.', 'সাতকানিয়া, চট্টগ্রাম।', '', '', 14, 99, '2018-04-24 14:57:38', '2019-10-02 17:12:19'),
(94, 'Sitakunda Upazila Health Complex', 'সীতাকুন্ড উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324456', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৫৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sitakunda, Chattagram.', 'সীতাকুন্ড, চট্টগ্রাম।', '', '', 14, 100, '2018-04-24 15:04:49', '2019-10-02 17:14:44'),
(95, 'Chuadanga Sadar Hospital', 'চুয়াডাঙ্গা সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324794', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৯৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Chuadanga Sadar, Chuadanga.', 'চুয়াডাঙ্গা সদর, চুয়াডাঙ্গা।', '', '', 15, 101, '2018-04-24 15:15:55', '2019-10-02 17:18:28'),
(96, 'Alamdanga Upazila Health Complex', ' আলমডাঙ্গা  উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324578', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৭৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Alamdanga, Chuadanga.', 'আলমডাঙ্গা, চুয়াডাঙ্গা।', '', '', 15, 102, '2018-04-24 15:29:08', '2019-10-02 17:16:44'),
(97, 'Damurhuda Upazila Health Complex', 'দামুড়হুদা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324579', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৭৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Damurhuda, Chuadanga.', 'দামুড়হুদা, চুয়াডাঙ্গা।', '', '', 15, 103, '2018-04-24 15:34:16', '2019-10-02 17:19:43'),
(98, 'Jibannagar Upazila Health Complex', 'জীবননগর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324580', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৮০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Jibannagar, Chuadanga.', 'জীবননগর, চুয়াডাঙ্গা।', '', '', 15, 104, '2018-04-24 15:39:01', '2019-10-02 17:21:17'),
(99, 'Cumilla Adarsha Sadar Hospital', 'কুমিল্লা আদর্শ সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, NULL, '', '', 'Contact Number:     \r\n+88-01730-324769', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৬৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Cumilla  Adarsha Sadar, Cumilla.', 'কুমিল্লা আদর্শ সদর, কুমিল্লা।', '', '', 16, 105, '2018-04-25 18:58:50', '2019-10-03 08:03:14'),
(100, 'Cumilla Sadar Dakshin Upazila Health Complex ', 'কুমিল্লা সদর দক্ষিণ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324842', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৪২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Cumilla Sadar Dakshin, Cumilla.', 'কুমিল্লা সদর দক্ষিণ, কুমিল্লা।', '', '', 16, 106, '2018-04-25 19:05:51', '2019-10-03 08:06:03'),
(101, 'Barura Upazila Health Complex', 'বরুড়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324457', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৫৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Barura, Cumilla.', 'বরুড়া, কুমিল্লা।', '', '', 16, 107, '2018-04-25 19:11:25', '2019-10-03 07:49:45'),
(102, 'Brahmanpara Upazila Health Complex', 'ব্রাহ্মণপাড়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324458', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৫৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Brahmanpara, Cumilla.', 'ব্রাহ্মণপাড়া, কুমিল্লা।', '', '', 16, 108, '2018-04-25 19:17:13', '2019-10-03 07:52:34'),
(103, 'Burichong Upazila Health Complex ', 'বুড়িচং উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324459', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৫৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Burichong, Cumilla.', 'বুড়িচং, কুমিল্লা।', '', '', 16, 109, '2018-04-25 19:22:45', '2019-10-03 07:55:23'),
(104, 'Chandina Upazila Health Complex', 'চান্দিনা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324461', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৬১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Chandina, Cumilla.', 'চান্দিনা, কুমিল্লা।', '', '', 16, 110, '2018-04-25 19:27:43', '2019-10-24 22:57:07'),
(105, 'Chowddagram Upazila Health Complex', 'চৌদ্দগ্রাম উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324460', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৬০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Chowddagram, Cumilla.', 'চৌদ্দগ্রাম, কুমিল্লা।', '', '', 16, 111, '2018-04-25 19:33:05', '2019-10-03 08:00:28'),
(106, 'Daudkandi Upazila Health Complex ', 'দাউদকান্দি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324462', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৬২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Daudkandi, Cumilla.', 'দাউদকান্দি, কুমিল্লা।', '', '', 16, 112, '2018-04-25 19:37:38', '2019-10-03 08:08:04'),
(107, 'Debidwar Upazila Health Complex', 'দেবীদ্বার উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324463', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৬৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Debidwar, Cumilla.', 'দেবীদ্বার, কুমিল্লা।', '', '', 16, 113, '2018-04-25 19:41:48', '2019-10-03 08:21:22'),
(108, 'Homna Upazila Health Complex', 'হোমনা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:    \r\n+88-01730-324464', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৬৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Homna, Cumilla.', 'হোমনা, কুমিল্লা।', '', '', 16, 114, '2018-04-25 19:46:27', '2019-10-03 08:23:52'),
(109, 'Laksam Upazila Health Complex', 'লাকসাম উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324465', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৬৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Laksam, Cumilla.', 'লাকসাম, কুমিল্লা।', '', '', 16, 115, '2018-04-25 19:52:47', '2019-10-03 08:27:13'),
(110, 'Meghna Upazila Health Complex', 'মেঘনা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324838', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৩৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Meghna, Cumilla.', 'মেঘনা, কুমিল্লা।', '', '', 16, 116, '2018-04-25 19:58:28', '2019-10-03 08:38:52'),
(111, 'Monoharganj Upazila Health Complex', 'মনোহরগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324839', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৩৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Monoharganj, Cumilla.', 'মনোহরগঞ্জ, কুমিল্লা।', '', '', 16, 117, '2018-04-25 20:11:07', '2019-10-03 08:41:30'),
(112, 'Muradnagar Upazila Health Complex', 'মুরাদনগর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, NULL, '', '', 'Contact Number:\r\n+88-01730-324840', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৪০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Muradnagar, Cumilla.', 'মুরাদনগর, কুমিল্লা।', '', '', 16, 118, '2018-04-25 20:17:05', '2019-10-24 23:29:51'),
(113, 'Nangalkot Upazila Health Complex', 'লাঙ্গলকোট উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324841', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৪১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nangalkot, Cumilla.', 'লাঙ্গলকোট, কুমিল্লা।', '', '', 16, 119, '2018-04-25 20:21:38', '2019-10-03 08:47:57'),
(114, 'Titas Upazila Health Complex', 'তিতাস উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324837', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৩৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Titas, Cumilla.', 'তিতাস, কুমিল্লা।', '', '', 16, 120, '2018-04-25 20:26:03', '2019-10-03 08:49:51'),
(115, 'Cox\'sbazar Sadar Hospital', 'কক্সবাজার সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324770', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৭০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Cox’sbazar Sadar, Cox’sbazar.', 'কক্সবাজার সদর, কক্সবাজার।', '', '', 17, 121, '2018-04-25 20:49:20', '2019-10-02 17:53:14'),
(116, 'Chakaria Upazila Health Complex', 'চকোরিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324466', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৬৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Chakaria, Cox’sbazar.', 'চকোরিয়া, কক্সবাজার।', '', '', 17, 122, '2018-04-25 20:56:08', '2019-10-02 17:50:24'),
(117, 'Kutubdia Upazila Health Complex', 'কুতুবদিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324467', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৬৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kutubdia, Cox’sbazar.', 'কুতুবদিয়া, কক্সবাজার।', '', '', 17, 123, '2018-04-25 21:00:44', '2019-10-02 17:54:45'),
(118, 'Moheshkhali Upazila Health Complex', 'মহেশখালী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:     \r\n+88-01730-324468', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৬৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Moheshkhali, Cox’sbazar.', 'মহেশখালী, কক্সবাজার।', '', '', 17, 124, '2018-04-25 21:08:21', '2019-10-02 17:56:11'),
(119, 'Pekua Upazila Health Complex', 'পেকুয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324843', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৪৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Pekua, Cox’sbazar.', 'পেকুয়া, কক্সবাজার।', '', '', 17, 125, '2018-04-25 21:15:14', '2019-10-02 17:57:44'),
(120, 'Ramu Upazila Health Complex', 'রামু উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:     \r\n+88-01730-324469', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৬৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Ramu, Cox’sbazar.', 'রামু, কক্সবাজার।', '', '', 17, 126, '2018-04-26 00:45:09', '2019-10-02 17:59:03'),
(121, 'Teknaf Upazila Health Complex', 'টেকনাফ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324470', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৭০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Teknaf, Cox’sbazar.', 'টেকনাফ, কক্সবাজার।', '', '', 17, 127, '2018-04-26 00:50:53', '2019-10-02 18:00:28'),
(122, 'Ukhia Upazila Health Complex', 'উখিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324471', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৭১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Ukhia, Cox’sbazar.', 'উখিয়া, কক্সবাজার।', '', '', 17, 128, '2018-04-26 00:56:32', '2019-10-02 18:02:06'),
(123, 'Dhamrai Upazila Health Complex', 'ধামরাই উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324400', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪০০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dhamrai, Dhaka.', 'ধামরাই, ঢাকা।', '', '', 18, 130, '2018-04-26 10:19:03', '2019-10-03 08:54:05'),
(124, 'Dohar Upazila Health Complex', 'দোহার উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324401', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪০১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dohar, Dhaka.', 'দোহার, ঢাকা।', '', '', 18, 131, '2018-04-26 10:24:32', '2019-10-03 08:58:53'),
(125, 'Keraniganj Upazila Health Complex', 'কেরানীগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324402', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪০২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Keraniganj, Dhaka.', 'কেরানীগঞ্জ, ঢাকা।', '', '', 18, 132, '2018-04-26 10:30:34', '2019-10-03 09:00:38'),
(126, 'Nawabganj Upazila Health Complex', 'নবাবগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324403', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪০৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nawabganj, Dhaka.', 'নবাবগঞ্জ, ঢাকা।', '', '', 18, 133, '2018-04-26 11:02:31', '2019-10-03 09:02:53'),
(127, 'Savar Upazila Health Complex', 'সাভার উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324404', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪০৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Savar, Dhaka.', 'সাভার, ঢাকা।', '', '', 18, 134, '2018-04-26 11:07:00', '2019-10-03 09:05:56'),
(128, 'Dinajpur Sadar Hospital', 'দিনাজপুর সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324805', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮০৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dinajpur Sadar, Dinajpur.', 'দিনাজপুর সদর, দিনাজপুর।', '', '', 19, 135, '2018-04-26 11:17:03', '2019-10-03 09:36:37'),
(129, 'Birampur Upazila Health Complex', 'বিরামপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324634', ' যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৩৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Birampur, Dinajpur.', 'বিরামপুর, দিনাজপুর।', '', '', 19, 136, '2018-04-26 11:24:07', '2019-10-03 09:21:59'),
(130, 'Birganj Upazila Health Complex', 'বীরগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324635', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৩৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Birganj, Dinajpur.', 'বীরগঞ্জ, দিনাজপুর।', '', '', 19, 137, '2018-04-26 11:28:43', '2019-10-03 09:23:49'),
(131, 'Birol Upazila Health Complex', 'বিরল উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324636', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৩৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Birol, Dinajpur.', 'বিরল, দিনাজপুর।', '', '', 19, 138, '2018-04-26 11:37:20', '2019-10-03 09:25:30'),
(132, 'Bochaganj Upazila Health Complex', 'বোচাগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324637', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৩৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bochaganj, Dinajpur.', 'বোচাগঞ্জ, দিনাজপুর।', '', '', 19, 139, '2018-04-26 11:42:06', '2019-10-03 09:29:31'),
(133, 'Chirirbandar Upazila Health Complex', 'চিরিরবন্দর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324638', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৩৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Chirirbandar, Dinajpur.', 'চিরিরবন্দর, দিনাজপুর।', '', '', 19, 140, '2018-04-26 11:47:07', '2019-10-03 09:31:55'),
(134, 'Fulbari Upazila Health Complex', 'ফুলবাড়ি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number: \r\n+88-01730-324639', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৩৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Fulbari, Dinajpur.', 'ফুলবাড়ি, দিনাজপুর।', '', '', 19, 141, '2018-04-26 11:59:12', '2019-10-03 09:39:10'),
(135, 'Ghoraghat Upazila Health Complex', 'ঘোড়াঘাট  উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324640', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৪০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Ghoraghat, Dinajpur.', 'ঘোড়াঘাট, দিনাজপুর।', '', '', 19, 142, '2018-04-26 12:04:28', '2019-10-03 09:40:41'),
(136, 'Hakimpur Upazila Health Complex', 'হাকিমপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:  \r\n+88-01730-324641', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৪১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Hakimpur, Dinajpur.', 'হাকিমপুর, দিনাজপুর।', '', '', 19, 143, '2018-04-26 12:08:55', '2019-10-03 09:42:02'),
(137, 'Kaharol Upazila Health Complex', 'কাহারোল উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324642', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৪২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kaharol, Dinajpur.', 'কাহারোল, দিনাজপুর।', '', '', 19, 144, '2018-04-26 12:13:37', '2019-10-03 09:43:36');
INSERT INTO `hospital` (`id`, `hospital_name`, `b_hospital_name`, `hospital_subname`, `b_hospital_subname`, `hospital_photo`, `photo_path`, `hospital_description`, `b_hospital_description`, `hospital_phone_no`, `b_hospital_phone_no`, `hospital_email_ad`, `hospital_fb_link`, `hospital_web_link`, `hospital_total_bed`, `b_hospital_total_bed`, `hospital_total_doctor`, `b_hospital_total_doctor`, `hospital_total_staff`, `b_hospital_total_staff`, `hospital_address`, `b_hospital_address`, `hospital_latitude`, `hospital_longitude`, `district_id`, `subdistrict_id`, `created_at`, `updated_at`) VALUES
(138, 'Khansama Upazila Health Complex', 'খানসামা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324643', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৪৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Khansama, Dinajpur.', 'খানসামা, দিনাজপুর।', '', '', 19, 145, '2018-04-26 12:18:03', '2019-10-03 09:44:56'),
(139, 'Nawabganj Upazila Health Complex', 'নবাবগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324644', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৪৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nawabganj, Dinajpur.', 'নবাবগঞ্জ, দিনাজপুর।', '', '', 19, 146, '2018-04-26 12:22:19', '2019-10-03 09:46:43'),
(140, 'Parbatipur Upazila Health Complex', 'পার্বতীপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324645', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৪৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Parbatipur, Dinajpur.', 'পার্বতীপুর, দিনাজপুর।', '', '', 19, 147, '2018-04-26 12:30:34', '2019-10-03 09:48:03'),
(141, 'Faridpur Sadar Hospital ', 'ফরিদপুর সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324776', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৭৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Faridpur Sadar, Faridpur.', 'ফরিদপুর সদর, ফরিদপুর।', '', '', 20, 148, '2018-04-26 12:54:50', '2019-10-03 10:02:22'),
(142, 'Alfadanga Upazila Health Complex', 'আলফাডাঙা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324472', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৭২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Alfadanga, Faridpur.', 'আলফাডাঙা, ফরিদপুর।', '', '', 20, 149, '2018-04-26 12:59:29', '2019-10-03 09:49:40'),
(143, 'Bhanga Upazila Health Complex', 'ভাঙ্গা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324473', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৭৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bhanga, Faridpur.', 'ভাঙ্গা, ফরিদপুর।', '', '', 20, 150, '2018-04-26 13:04:40', '2019-10-03 09:53:28'),
(144, 'Boalmari Upazila Health Complex', 'বোয়ালমারী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324474', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৭৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Boalmari, Faridpur.', 'বোয়ালমারী, ফরিদপুর।', '', '', 20, 151, '2018-04-26 13:11:52', '2019-10-03 09:55:57'),
(145, 'Charbhadrason Upazila Health Complex', 'চরভদ্রাসন উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324475', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৭৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Charbhadrason, Faridpur.', 'চরভদ্রাসন, ফরিদপুর।', '', '', 20, 152, '2018-04-26 13:18:32', '2019-10-03 09:58:16'),
(146, 'Madhukhali Upazila Health Complex', 'মধুখালী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number: \r\n+88-01730-324476', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৭৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Madhukhali, Faridpur.', 'মধুখালী, ফরিদপুর।', '', '', 20, 153, '2018-04-26 13:24:55', '2019-10-03 10:09:17'),
(147, 'Nagarkanda Upazila Health Complex', 'নগরকান্দা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324477', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৭৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nagarkanda, Faridpur.', 'নগরকান্দা, ফরিদপুর।', '', '', 20, 154, '2018-04-26 13:29:25', '2019-10-03 10:12:20'),
(148, 'Sadarpur Upazila Health Complex', 'সদরপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number: \r\n+88-01730-324478', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৭৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sadarpur, Faridpur.', 'সদরপুর, ফরিদপুর।', '', '', 20, 155, '2018-04-26 13:34:14', '2019-10-03 10:13:50'),
(150, 'Feni Sadar Hospital', 'ফেনী সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324771', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৭১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Feni Sadar, Feni.', 'ফেনী সদর, ফেনী।', '', '', 21, 157, '2018-04-26 14:02:40', '2019-10-03 10:57:18'),
(151, 'Chhagalnaiya Upazila Health Complex', 'ছাগলনাইয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:  \r\n+88-01730-324844', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৪৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Chhagalnaiya, Feni.', 'ছাগলনাইয়া, ফেনী।', '', '', 21, 158, '2018-04-26 14:07:31', '2019-10-03 10:43:00'),
(152, 'Daganbhuiyan Upazila Health Complex', 'দাগনভূঁইয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324845', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৪৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Daganbhuiyan, Feni.', 'দাগনভূঁইয়া, ফেনী।', '', '', 21, 159, '2018-04-26 14:15:24', '2019-10-03 10:44:49'),
(153, 'Fulgazi Upazila Health Complex', 'ফুলগাজী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324847', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৪৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Fulgazi, Feni.', 'ফুলগাজী, ফেনী।', '', '', 21, 160, '2018-04-26 14:24:22', '2019-10-03 10:59:31'),
(154, 'Parshuram Upazila Health Complex', 'পরশুরাম উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324846', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৪৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Parshuram, Feni.', 'পরশুরাম, ফেনী।', '', '', 21, 161, '2018-04-26 14:30:09', '2019-10-03 11:01:43'),
(155, 'Sonagazi Upazila Health Complex', 'সোনাগাজী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324848', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৪৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sonagazi, Feni.', 'সোনাগাজী, ফেনী।', '', '', 21, 162, '2018-04-26 14:34:26', '2019-10-03 11:03:57'),
(156, 'Gaibandha Sadar Hospital', 'গাইবান্ধা সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324806', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮০৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Gaibandha Sadar, Gaibandha.', 'গাইবান্ধা সদর, গাইবান্ধা।', '', '', 22, 163, '2018-04-26 15:13:26', '2019-10-03 12:29:56'),
(157, 'Fulchhari Upazila Health Complex', 'ফুলছড়ি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:     \r\n+88-01730-324646', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৪৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Fulchhari, Gaibandha.', 'ফুলছড়ি, গাইবান্ধা।', '', '', 22, 164, '2018-04-26 15:17:43', '2019-10-03 11:48:59'),
(158, 'Gobindaganj Upazila Health Complex', 'গোবিন্দগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:  \r\n+88-01730-324647', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৪৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Gobindaganj, Gaibandha.', 'গোবিন্দগঞ্জ, গাইবান্ধা।', '', '', 22, 165, '2018-04-26 15:21:48', '2019-10-03 12:31:45'),
(159, 'Palashbari Upazila Health Complex', 'পলাশবাড়ি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324648', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৪৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Palashbari, Gaibandha.', 'পলাশবাড়ি, গাইবান্ধা।', '', '', 22, 166, '2018-04-26 15:46:52', '2019-10-03 12:33:42'),
(160, 'Sadullapur Upazila Health Complex', 'সাদুল্লাপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:     \r\n+88-01730-324649', 'যোগাযোগের নম্বরঃ \r\n+৮৮-০১৭৩০-৩২৪৬৪৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sadullapur, Gaibandha.', 'সাদুল্লাপুর, গাইবান্ধা।', '', '', 22, 167, '2018-04-26 15:52:06', '2019-10-03 12:35:16'),
(161, 'Saghata Upazila Health Complex', 'সাঘাটা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number: \r\n+88-01730-324650', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৫০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Saghata, Gaibandha.', 'সাঘাটা, গাইবান্ধা।', '', '', 22, 168, '2018-04-26 16:00:27', '2019-10-03 12:36:40'),
(162, 'Sundarganj Upazila Health Complex', 'সুন্দরগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324651', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৫১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sundarganj, Gaibandha.', 'সুন্দরগঞ্জ, গাইবান্ধা।', '', '', 22, 169, '2018-04-26 16:05:15', '2019-10-03 12:38:09'),
(163, 'Gazipur Sadar Hospital', 'গাজীপুর সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324777', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৭৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Gazipur Sadar, Gazipur.', 'গাজীপুর সদর, গাজীপুর।', '', '', 23, 170, '2018-04-26 20:10:41', '2019-10-03 12:46:39'),
(164, 'Kaliakoir Upazila Health Complex', 'কালিয়াকৈর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324479', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৭৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kaliakoir, Gazipur.', 'কালিয়াকৈর, গাজীপুর।', '', '', 23, 171, '2018-04-26 20:15:27', '2019-12-30 18:10:34'),
(165, 'Kaliganj Upazila Health Complex', 'কালীগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:  \r\n+88-01730-324480', ' যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৮০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kaliganj, Gazipur.', 'কালীগঞ্জ, গাজীপুর।', '', '', 23, 172, '2018-04-26 20:21:23', '2019-10-03 12:49:51'),
(166, 'Kapasia Upazila Health Complex', 'কাপাসিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324481', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৮১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kapasia, Gazipur.', 'কাপাসিয়া, গাজীপুর।', '', '', 23, 173, '2018-04-26 20:25:50', '2019-10-03 12:52:58'),
(167, 'Sreepur Upazila Health Complex', 'শ্রীপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:     \r\n+88-01730-324482', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৮২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sreepur, Gazipur.', 'শ্রীপুর, গাজীপুর।', '', '', 23, 174, '2018-04-26 20:33:38', '2019-10-03 12:54:20'),
(168, 'Tongi 50 Bedded Hospital ', 'টঙ্গী ৫০ শয্যা বিশিষ্ট হাসপাতাল ', 'Medical College, Hospital & Clinic', 'মেডিক্যাল কলেজ, হসপিটাল অ্যান্ড ক্লিনিক', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324821', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮২১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Tongi, Gazipur Sadar, Gazipur.', 'টঙ্গী, গাজীপুর সদর, গাজীপুর।', '', '', 23, 170, '2018-04-26 21:01:28', '2019-12-29 18:14:09'),
(169, 'Gopalganj Sadar Hospital', 'গোপালগঞ্জ সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324778', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৭৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Gopalganj Sadar, Gopalganj.', 'গোপালগঞ্জ সদর, গোপালগঞ্জ।', '', '', 24, 175, '2018-04-26 21:12:07', '2019-10-03 12:58:40'),
(170, 'Kashiani Upazila Health Complex', 'কাশিয়ানী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324483', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৮৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kashiani, Gopalganj.', 'কাশিয়ানী, গোপালগঞ্জ।', '', '', 24, 176, '2018-04-26 21:17:58', '2019-10-03 13:00:05'),
(171, 'Kotalipara Upazila Health Complex', 'কোটালীপাড়া  উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324484', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৮৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kotalipara, Gopalganj.', 'কোটালীপাড়া, গোপালগঞ্জ।', '', '', 24, 177, '2018-04-26 21:22:36', '2019-10-03 13:01:41'),
(172, 'Muksedpur Upazila Health Complex', 'মুকসেদপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324485', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৮৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Muksedpur, Gopalganj.', 'মুকসেদপুর, গোপালগঞ্জ।', '', '', 24, 178, '2018-04-26 21:27:32', '2019-10-03 13:03:22'),
(173, 'Tungipara Upazila Health Complex', 'টুঙ্গীপাড়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324486', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৮৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Tungipara, Gopalganj.', 'টুঙ্গীপাড়া, গোপালগঞ্জ।', '', '', 24, 179, '2018-04-26 21:31:47', '2019-10-03 13:05:02'),
(174, 'Habiganj Sadar Hospital', 'হবিগঞ্জ সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:     \r\n+88-01730-324817', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮১৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Habiganj Sadar, Habiganj.', 'হবিগঞ্জ সদর, হবিগঞ্জ।', '', '', 25, 180, '2018-04-26 22:44:26', '2019-10-03 15:49:02'),
(175, 'Azmiriganj Upazila Health Complex', 'আজমিরীগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324728', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭২৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Azmiriganj, Habiganj.', 'আজমিরীগঞ্জ, হবিগঞ্জ।', '', '', 25, 181, '2018-04-26 22:49:19', '2019-10-03 15:42:43'),
(176, 'Bahubal Upazila Health Complex ', 'বাহুবল উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324729', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭২৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bahubal, Habiganj.', 'বাহুবল, হবিগঞ্জ।', '', '', 25, 182, '2018-04-26 22:55:59', '2019-10-03 15:44:26'),
(177, 'Baniachong Upazila Health Complex ', 'বানিয়াচং উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324730', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৩০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Baniachong, Habiganj.', 'বানিয়াচং, হবিগঞ্জ।', '', '', 25, 183, '2018-04-26 23:02:02', '2019-10-03 15:46:06'),
(178, 'Chunarughat Upazila Health Complex', 'চুনারুঘাট উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324731', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৩১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Chunarughat, Habiganj.', 'চুনারুঘাট, হবিগঞ্জ।', '', '', 25, 184, '2018-04-26 23:10:38', '2019-10-25 09:51:37'),
(179, 'Lakhai Upazila Health Complex', 'লাখাই উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number: \r\n+88-01730-324732', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৩২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Lakhai, Habiganj.', 'লাখাই, হবিগঞ্জ।', '', '', 25, 187, '2018-04-26 23:16:24', '2019-10-03 15:50:34'),
(180, 'Madhabpur Upazila Health Complex ', 'মাধবপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324733', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৩৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Madhabpur, Habiganj.', 'মাধবপুর, হবিগঞ্জ।', '', '', 25, 185, '2018-04-26 23:22:01', '2019-10-03 15:51:57'),
(181, 'Nabiganj Upazila Health Complex', 'নবীগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324734', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৩৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nabiganj, Habiganj.', 'নবীগঞ্জ, হবিগঞ্জ।', '', '', 25, 186, '2018-04-26 23:26:48', '2019-10-03 15:53:23'),
(182, 'Jamalpur Sadar Hospital', 'জামালপুর সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number: \r\n+88-01730-324779', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৭৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Jamalpur Sadar, Jamalpur.', 'জামালপুর সদর, জামালপুর।', '', '', 26, 188, '2018-04-26 23:35:13', '2019-10-03 16:03:01'),
(183, 'Bakshiganj Upazila Health Complex', 'বকশীগঞ্জ  উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324487', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৮৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bakshiganj, Jamalpur.', 'বকশীগঞ্জ, জামালপুর।', '', '', 26, 189, '2018-04-26 23:40:37', '2019-10-03 15:57:17'),
(184, 'Dewanganj Upazila Health Complex', 'দেওয়ানগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324488', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৮৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dewanganj, Jamalpur.', 'দেওয়ানগঞ্জ, জামালপুর।', '', '', 26, 190, '2018-04-26 23:47:21', '2019-10-03 15:58:49'),
(185, 'Islampur Upazila Health Complex', 'ইসলামপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324489', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৮৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Islampur, Jamalpur.', 'ইসলামপুর, জামালপুর।', '', '', 26, 191, '2018-04-26 23:51:53', '2019-10-03 16:00:09'),
(186, 'Madarganj Upazila Health Complex', 'মাদারগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324490', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৯০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Madarganj, Jamalpur.', 'মাদারগঞ্জ, জামালপুর।', '', '', 26, 192, '2018-04-26 23:56:19', '2019-10-03 16:05:26'),
(187, 'Melandaha Upazila Health Complex', 'মেলান্দহ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324491', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৯১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Melandaha, Jamalpur.', 'মেলান্দহ, জামালপুর।', '', '', 26, 193, '2018-04-27 00:00:50', '2019-10-03 16:06:48'),
(188, 'Sarishabari Upazila Health Complex', 'সরিষাবাড়ি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324492', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৯২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sarishabari, Jamalpur.', 'সরিষাবাড়ি, জামালপুর।', '', '', 26, 194, '2018-04-27 00:06:55', '2019-10-03 16:08:21'),
(189, 'Taltali Upazila Health Complex', 'তালতলী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center89.png', 'uploads/hospital/Health Care Center89.png', '', '', 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', '', 7, 33, '2018-04-27 12:24:50', '2019-12-30 16:57:41'),
(190, 'Bijoynagar Upazila Health Complex', 'বিজয়নগর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', '', 11, 67, '2018-04-27 12:37:06', '2019-10-24 15:46:09'),
(191, 'Kasba Upazila Health Complex', 'কসবা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324439', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৩৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kasba, Brahmanbaria.', 'কসবা, ব্রাহ্মণবাড়িয়া।', '', '', 11, 68, '2018-04-27 13:59:55', '2019-10-24 15:49:16'),
(192, 'Lalmai Upazila Health Complex', 'লালমাই উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, NULL, '', '', 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', '', 16, 505, '2018-04-27 14:08:09', '2019-10-03 08:29:41'),
(193, 'Saltha Upazila Health Complex', 'সালথা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', '', 20, 156, '2018-04-27 14:12:19', '2019-10-03 10:17:00'),
(194, 'Shayestaganj Upazila Health Complex', 'শায়েস্তাগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', '', 25, 506, '2018-04-27 14:17:20', '2019-10-03 15:55:32'),
(195, 'Jashore Sadar Hospital', 'যশোর সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324795', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৯৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Jashore Sadar, Jashore.', 'যশোর সদর, যশোর।', '', '', 27, 195, '2018-04-27 21:21:51', '2019-10-03 16:16:18'),
(196, 'Abhoynagar Upazila Health Complex', 'অভয়নগর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324581', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৮১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Abhoynagar, Jashore.', 'অভয়নগর, যশোর।', '', '', 27, 196, '2018-04-27 21:28:30', '2019-10-03 16:09:53'),
(197, 'Bagherpara Upazila Health Complex ', 'বাঘেরপাড়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324582', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৮২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bagherpara, Jashore.', 'বাঘেরপাড়া, যশোর।', '', '', 27, 197, '2018-04-27 21:34:55', '2019-10-25 14:15:57'),
(198, 'Chowgachha Upazila Health Complex ', 'চৌগাছা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324583', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৮৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Chowgachha, Jashore.', 'চৌগাছা, যশোর।', '', '', 27, 198, '2018-04-27 21:40:15', '2019-10-25 14:18:58'),
(199, 'Jhikargachha Upazila Health Complex ', 'ঝিকরগাছা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number: \r\n+88-01730-324584', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৮৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Jhikargachha, Jashore.', 'ঝিকরগাছা, যশোর।', '', '', 27, 199, '2018-04-27 21:51:39', '2019-10-25 14:27:46'),
(200, 'Keshabpur Upazila Health Complex', 'কেশবপুর উপজেলা স্বাস্থ্য কমপ্লেক্স ', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324585', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৮৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Keshabpur, Jashore.', 'কেশবপুর, যশোর।', '', '', 27, 200, '2018-04-27 21:58:36', '2019-10-03 16:19:45'),
(201, 'Monirampur Upazila Health Complex', 'মনিরামপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324586', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৮৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Monirampur, Jashore.', 'মনিরামপুর, যশোর।', '', '', 27, 201, '2018-04-27 22:03:32', '2019-10-03 16:21:02'),
(202, 'Sharsha Upazila Health Complex', 'শার্শা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324587', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৮৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sharsha, Jashore.', 'শার্শা, যশোর।', '', '', 27, 202, '2018-04-27 22:08:12', '2019-10-03 16:22:38'),
(203, 'Jhalokathi Sadar Hospital', 'ঝালকাঠি সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324762', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৬২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Jhalokathi Sadar, Jhalokathi.', 'ঝালকাঠি সদর, ঝালকাঠি।', '', '', 28, 203, '2018-04-27 22:14:46', '2019-10-03 16:29:13'),
(204, 'Kathalia Upazila Health Complex', 'কাঁঠালিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324423', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪২৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kathalia, Jhalokathi.', 'কাঁঠালিয়া, ঝালকাঠি।', '', '', 28, 204, '2018-04-27 22:20:17', '2019-10-03 16:30:49'),
(205, 'Nalchhity Upazila Health Complex', 'নলছিটি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number: \r\n+88-01730-324424', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪২৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nalchhity, Jhalokathi.', 'নলছিটি, ঝালকাঠি।', '', '', 28, 205, '2018-04-27 22:25:39', '2019-10-03 16:32:43'),
(206, 'Rajapur Upazila Health Complex', 'রাজাপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324425', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪২৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Rajapur, Jhalokathi.', 'রাজাপুর, ঝালকাঠি।', '', '', 28, 206, '2018-04-27 22:31:11', '2019-10-03 16:34:55'),
(207, 'Jhenaidah Sadar Hospital', 'ঝিনাইদহ সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324796', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৯৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Jhenaidah Sadar, Jhenaidah.', 'ঝিনাইদহ সদর, ঝিনাইদহ।', '', '', 29, 207, '2018-04-27 22:44:34', '2019-10-03 16:38:48'),
(209, 'Harinakunda Upazila Health Complex ', 'হরিণাকুন্ড উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, NULL, '', '', 'Contact Number:\r\n+88-01730-324588', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৮৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Harinakunda, Jhenaidah.', 'হরিণাকুন্ড, ঝিনাইদহ।', '', '', 29, 208, '2018-04-27 22:49:49', '2019-10-03 16:36:51'),
(210, 'Kaliganj Upazila Health Complex ', 'কালীগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324589', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৮৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kaliganj, Jhenaidah.', 'কালীগঞ্জ, ঝিনাইদহ।', '', '', 29, 209, '2018-04-27 22:54:11', '2019-10-25 14:49:00'),
(211, 'Kotchandpur Upazila Health Complex ', 'কোটচাঁদপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324590', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৯০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kotchandpur, Jhenaidah.', 'কোটচাঁদপুর, ঝিনাইদহ।', '', '', 29, 210, '2018-04-27 22:58:19', '2019-10-25 14:51:38'),
(212, 'Moheshpur Upazila Health Complex', ' মহেশপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324591', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৯১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Moheshpur, Jhenaidah.', 'মহেশপুর, ঝিনাইদহ।', '', '', 29, 211, '2018-04-27 23:04:05', '2019-10-03 16:45:42'),
(213, 'Shoilkupa Upazila Health Complex ', ' শৈলকুপা উপজেলা স্বাস্থ্য কমপ্লেক্স ', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:   \r\n+88-01730-324592', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৯২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Shoilkupa, Jhenaidah.', 'শৈলকুপা, ঝিনাইদহ।', '', '', 29, 212, '2018-04-27 23:09:35', '2019-12-30 19:00:44'),
(214, 'Joypurhat Sadar Hospital', 'জয়পুরহাট সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324807', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮০৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Joypurhat Sadar, Joypurhat.', 'জয়পুরহাট সদর, জয়পুরহাট।', '', '', 30, 213, '2018-04-27 23:15:43', '2019-10-03 17:39:31'),
(215, 'Akkelpur Upazila Health Complex', 'আক্কেলপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324652', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৫২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Akkelpur, Joypurhat.', 'আক্কেলপুর, জয়পুরহাট।', '', '', 30, 214, '2018-04-27 23:20:06', '2019-10-03 17:33:17'),
(216, 'Kalai Upazila Health Complex ', 'কালাই উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:     \r\n+88-01730-324653', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৫৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kalai, Joypurhat.', 'কালাই, জয়পুরহাট।', '', '', 30, 215, '2018-04-27 23:24:38', '2019-10-03 17:41:40'),
(217, 'Khetlal Upazila Health Complex', 'ক্ষেতলাল উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324654', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৫৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Khetlal, Joypurhat.', 'ক্ষেতলাল, জয়পুরহাট।', '', '', 30, 216, '2018-04-27 23:36:08', '2019-10-25 15:15:36'),
(218, 'Panchbibi Upazila Health Complex ', 'পাঁচবিবি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324655', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৫৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Panchbibi, Joypurhat.', 'পাঁচবিবি, জয়পুরহাট।', '', '', 30, 217, '2018-04-27 23:40:27', '2019-10-03 17:46:01'),
(219, 'Khagrachhari Sadar Hospital', 'খাগড়াছড়ি সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324772', ' যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৭২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Khagrachhari Sadar, Khagrachhari.', 'খাগড়াছড়ি সদর, খাগড়াছড়ি।', '', '', 31, 218, '2018-04-28 01:20:02', '2019-10-03 19:31:29'),
(220, 'Dighinala Upazila Health Complex ', 'দীঘিনালা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324849', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৪৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dighinala, Khagrachhari.', 'দীঘিনালা, খাগড়াছড়ি।', '', '', 31, 219, '2018-04-28 01:24:48', '2019-10-25 15:47:55'),
(221, 'Lakshmichhari Upazila Health Complex', 'লক্ষ্মীছড়ি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324850', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৫০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Lakshmichhari, Khagrachhari.', 'লক্ষ্মীছড়ি, খাগড়াছড়ি।', '', '', 31, 220, '2018-04-28 01:30:12', '2019-10-03 19:33:05'),
(222, 'Manikchhari Upazila Health Complex', 'মানিকছড়ি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324851', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৫১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Manikchhari, Khagrachhari.', 'মানিকছড়ি, খাগড়াছড়ি।', '', '', 31, 221, '2018-04-28 01:35:23', '2019-10-25 15:57:14'),
(223, 'Matiranga Upazila Health Complex', 'মাটিরাঙ্গা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01552-140402', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৫৫২-১৪০৪০২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Matiranga, Khagrachhari.', 'মাটিরাঙ্গা, খাগড়াছড়ি।', '', '', 31, 222, '2018-04-28 01:40:54', '2019-10-03 19:37:28'),
(224, 'Mohalchhari Upazila Health Complex', 'মহালছড়ি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324853', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৫৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Mohalchhari, Khagrachhari.', 'মহালছড়ি, খাগড়াছড়ি।', '', '', 31, 223, '2018-04-28 01:45:59', '2019-10-03 19:38:49'),
(225, 'Panchhari Upazila Health Complex ', 'পানছড়ি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324854', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৫৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Panchhari, Khagrachhari.', 'পানছড়ি, খাগড়াছড়ি।', '', '', 31, 224, '2018-04-28 01:53:19', '2019-10-03 19:40:07'),
(226, 'Ramgarh Upazila Health Complex', 'রামগড় উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01811-443518', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৮১১-৪৪৩৫১৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Ramgarh, Khagrachhari.', 'রামগড়, খাগড়াছড়ি।', '', '', 31, 225, '2018-04-28 01:57:41', '2019-10-03 19:41:36'),
(227, 'Khulna Sadar Hospital', 'খুলনা সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324797', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৯৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Khulna Sadar, Khulna.', 'খুলনা সদর, খুলনা।', '', '', 32, 226, '2018-04-28 09:39:21', '2019-10-03 20:27:58'),
(228, 'Batiaghata Upazila Health Complex', 'বটিয়াঘাটা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324593', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৯৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Batiaghata, Khulna.', 'বটিয়াঘাটা, খুলনা। ', '', '', 32, 227, '2018-04-28 09:44:44', '2019-10-03 20:09:58'),
(229, 'Dacope Upazila Health Complex', 'দাকোপ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, NULL, '', '', 'Contact Number:\r\n+88-01730-324594', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৯৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dacope, Khulna.', 'দাকোপ, খুলনা।', '', '', 32, 228, '2018-04-28 09:54:22', '2019-10-03 20:11:35'),
(230, 'Dighalia Upazila Health Complex', 'দীঘলিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324595', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৯৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dighalia, Khulna.', 'দীঘলিয়া, খুলনা।', '', '', 32, 229, '2018-04-28 09:58:45', '2019-10-03 20:13:10'),
(231, 'Dumuria Upazila Health Complex', 'ডুমুরিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324596', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৯৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dumuria, Khulna.', 'ডুমুরিয়া, খুলনা।', '', '', 32, 230, '2018-04-28 10:03:23', '2019-10-03 20:15:14'),
(232, 'Fultola Upazila Health Complex ', 'ফুলতলা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324597', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৯৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Fultola, Khulna.', 'ফুলতলা, খুলনা।', '', '', 32, 231, '2018-04-28 10:08:37', '2019-10-03 20:19:05'),
(233, 'Koyra Upazila Health Complex ', 'কয়রা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324598', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৯৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Koyra, Khulna.', 'কয়রা, খুলনা।', '', '', 32, 232, '2018-04-28 10:14:05', '2019-10-03 20:38:56'),
(234, 'Paikgachha Upazila Health Complex', 'পাইকগাছা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324599', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৯৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Paikgachha, Khulna.', 'পাইকগাছা, খুলনা।', '', '', 32, 233, '2018-04-28 10:19:02', '2019-10-03 20:41:09'),
(235, 'Rupsa Upazila Health Complex', 'রূপসা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:     \r\n+88-01730-324600', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬০০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Rupsa, Khulna.', 'রূপসা, খুলনা।', '', '', 32, 234, '2018-04-28 10:24:23', '2019-10-03 20:43:05'),
(236, 'Terokhada Upazila Health Complex', 'তেরখাদা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324601', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬০১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Terokhada, Khulna.', 'তেরখাদা, খুলনা।', '', '', 32, 235, '2018-04-28 10:29:31', '2019-10-25 16:28:33'),
(237, 'Kishoreganj Sadar Hospital', 'কিশোরগঞ্জ সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324780', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৮০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kishoreganj Sadar, Kishoreganj.', 'কিশোরগঞ্জ সদর, কিশোরগঞ্জ।', '', '', 33, 236, '2018-04-28 10:39:08', '2019-10-04 08:38:37'),
(238, 'Austagram Upazila Health Complex', 'অষ্টগ্রাম উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324493', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৯৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Austagram, Kishoreganj.', 'অষ্টগ্রাম, কিশোরগঞ্জ।', '', '', 33, 237, '2018-04-28 11:10:48', '2019-10-03 21:22:44'),
(239, 'Bajitpur Upazila Health Complex', 'বাজিতপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324494', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৯৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bajitpur, Kishoreganj.', 'বাজিতপুর, কিশোরগঞ্জ।', '', '', 33, 238, '2018-04-28 11:15:53', '2019-10-03 21:24:44'),
(240, 'Bhoirab Upazila Health Complex', 'ভৈরব উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324495', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৯৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bhoirab, Kishoreganj.', 'ভৈরব, কিশোরগঞ্জ।', '', '', 33, 239, '2018-04-28 11:21:04', '2019-12-30 19:22:18'),
(241, 'Hossainpur Upazila Health Complex', 'হোসেনপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324496', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৯৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Hossainpur, Kishoreganj.', 'হোসেনপুর, কিশোরগঞ্জ।', '', '', 33, 240, '2018-04-28 11:25:38', '2019-10-03 21:29:13'),
(242, 'Itna Upazila Health Complex', 'ইটনা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324497', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৯৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Itna, Kishoreganj.', 'ইটনা, কিশোরগঞ্জ।', '', '', 33, 241, '2018-04-28 11:30:06', '2019-10-04 08:32:02'),
(243, 'Karimganj Upazila Health Complex', 'করিমগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324498', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৯৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Karimganj, Kishoreganj.', 'করিমগঞ্জ, কিশোরগঞ্জ।', '', '', 33, 242, '2018-04-28 11:34:35', '2019-10-04 08:33:15'),
(244, 'Katiadi Upazila Health Complex ', 'কটিয়াদী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324499', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৯৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Katiadi, Kishoreganj.', 'কটিয়াদী, কিশোরগঞ্জ।', '', '', 33, 243, '2018-04-28 13:04:19', '2019-10-04 08:34:20'),
(245, 'Kuliarchar Upazila Health Complex', 'কুলিয়ারচর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324500', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫০০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kuliarchar, Kishoreganj.', 'কুলিয়ারচর, কিশোরগঞ্জ।', '', '', 33, 244, '2018-04-28 13:08:33', '2019-10-04 08:39:53'),
(246, 'Mithamoin Upazila Health Complex ', 'মিঠামইন  উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324501', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫০১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Mithamoin, Kishoreganj.', 'মিঠামইন, কিশোরগঞ্জ।', '', '', 33, 245, '2018-04-28 13:15:29', '2019-10-04 08:40:59'),
(247, 'Nikli Upazila Health Complex', 'নিকলী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324502', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫০২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nikli, Kishoreganj.', 'নিকলী, কিশোরগঞ্জ।', '', '', 33, 246, '2018-04-28 13:20:01', '2019-10-25 18:22:21'),
(248, 'Pakundia Upazila Health Complex ', 'পাকুন্দিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324503', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫০৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Pakundia, Kishoreganj.', 'পাকুন্দিয়া, কিশোরগঞ্জ।', '', '', 33, 247, '2018-04-28 13:27:28', '2019-10-04 08:43:02'),
(249, 'Tarail Upazila Health Complex', 'তাড়াইল উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324504', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫০৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Tarail, Kishoreganj.', 'তাড়াইল, কিশোরগঞ্জ।', '', '', 33, 248, '2018-04-28 13:32:52', '2019-10-04 08:44:31'),
(250, 'Kurigram Sadar Hospital', 'কুড়িগ্রাম সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324808', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮০৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kurigram Sadar, Kurigram.', 'কুড়িগ্রাম সদর, কুড়িগ্রাম।', '', '', 34, 249, '2018-04-28 13:54:11', '2019-10-04 09:02:07'),
(251, 'Bhurungamari Upazila Health Complex', 'ভুরুঙ্গামারী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324656', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৫৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bhurungamari, Kurigram.', 'ভুরুঙ্গামারী, কুড়িগ্রাম।', '', '', 34, 250, '2018-04-28 13:59:08', '2019-10-04 08:57:08'),
(252, 'Chilmari Upazila Health Complex', 'চিলমারী  উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324657', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৫৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Chilmari, Kurigram.', 'চিলমারী, কুড়িগ্রাম।', '', '', 34, 251, '2018-04-28 14:03:54', '2019-10-04 08:58:08'),
(253, 'Fulbari Upazila Health Complex', 'ফুলবাড়ি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324658', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৫৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Fulbari, Kurigram.', 'ফুলবাড়ি, কুড়িগ্রাম।', '', '', 34, 252, '2018-04-28 14:08:50', '2019-10-04 08:59:11'),
(254, 'Nageshwari Upazila Health Complex ', 'নাগেশ্বরী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324659', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৫৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nageshwari, Kurigram.', 'নাগেশ্বরী, কুড়িগ্রাম।', '', '', 34, 253, '2018-04-28 14:14:56', '2019-10-04 09:03:18'),
(255, 'Rajarhat Upazila Health Complex', 'রাজারহাট উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:    \r\n+88-01730-324660', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৬০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Rajarhat, Kurigram.', 'রাজারহাট, কুড়িগ্রাম।', '', '', 34, 254, '2018-04-28 14:26:48', '2019-10-04 09:04:21'),
(256, 'Rajibpur Upazila Health Complex ', 'রাজিবপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324661', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৬১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Rajibpur, Kurigram.', 'রাজিবপুর, কুড়িগ্রাম।', '', '', 34, 255, '2018-04-28 14:31:17', '2019-10-25 18:40:22'),
(257, 'Rowmari Upazila Health Complex', 'রৌমারী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324662', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৬২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Rowmari, Kurigram.', 'রৌমারী, কুড়িগ্রাম।', '', '', 34, 256, '2018-04-28 14:38:48', '2019-10-04 09:07:03'),
(258, 'Ulipur Upazila Health Complex', 'উলিপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:     \r\n+88-01730-324663', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৬৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Ulipur, Kurigram.', 'উলিপুর, কুড়িগ্রাম।', '', '', 34, 257, '2018-04-28 14:43:12', '2019-10-04 09:08:02'),
(259, 'Kushtia Sadar Hospital', 'কুষ্টিয়া সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:     \r\n+88-01730-324798', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৯৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kushtia Sadar, Kushtia.', 'কুষ্টিয়া সদর, কুষ্টিয়া।', '', '', 35, 258, '2018-04-28 15:02:43', '2019-10-04 09:14:54'),
(260, 'Bheramara Upazila Health Complex', 'ভেড়ামারা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324602', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬০২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bheramara, Kushtia.', 'ভেড়ামারা, কুষ্টিয়া।', '', '', 35, 259, '2018-04-28 15:07:53', '2019-10-04 09:10:30'),
(261, 'Daulatpur Upazila Health Complex ', 'দৌলতপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324603', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬০৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Daulatpur, Kushtia.', 'দৌলতপুর, কুষ্টিয়া।', '', '', 35, 260, '2018-04-28 15:12:31', '2019-10-04 09:11:50'),
(262, 'Khoksa Upazila Health Complex', 'খোকসা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324604', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬০৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Khoksa, Kushtia.', 'খোকসা, কুষ্টিয়া।', '', '', 35, 261, '2018-04-28 15:16:56', '2019-10-04 09:12:55'),
(263, 'Kumarkhali Upazila Health Complex', 'কুমারখালী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324605', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬০৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kumarkhali, Kushtia.', 'কুমারখালী, কুষ্টিয়া।', '', '', 35, 262, '2018-04-28 15:22:23', '2019-10-04 09:13:57'),
(264, 'Mirpur Upazila Health Complex', 'মিরপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324606', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬০৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Mirpur, Kushtia.', 'মিরপুর, কুষ্টিয়া।', '', '', 35, 263, '2018-04-28 15:26:41', '2019-10-04 09:16:24'),
(265, 'Lakshmipur Sadar Hospital', 'লক্ষ্মীপুর সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324773', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৭৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Lakshmipur Sadar, Lakshmipur.', 'লক্ষ্মীপুর সদর, লক্ষ্মীপুর।', '', '', 36, 264, '2018-04-28 19:13:07', '2019-10-04 09:54:35');
INSERT INTO `hospital` (`id`, `hospital_name`, `b_hospital_name`, `hospital_subname`, `b_hospital_subname`, `hospital_photo`, `photo_path`, `hospital_description`, `b_hospital_description`, `hospital_phone_no`, `b_hospital_phone_no`, `hospital_email_ad`, `hospital_fb_link`, `hospital_web_link`, `hospital_total_bed`, `b_hospital_total_bed`, `hospital_total_doctor`, `b_hospital_total_doctor`, `hospital_total_staff`, `b_hospital_total_staff`, `hospital_address`, `b_hospital_address`, `hospital_latitude`, `hospital_longitude`, `district_id`, `subdistrict_id`, `created_at`, `updated_at`) VALUES
(266, 'Kamalnagar Upazila Health Complex ', 'কমলনগর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324856', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৫৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kamalnagar, Lakshmipur.', 'কমলনগর, লক্ষ্মীপুর।', '', '', 36, 265, '2018-04-28 20:12:01', '2019-10-04 09:49:54'),
(267, 'Raipur Upazila Health Complex', 'রায়পুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324857', ' যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৫৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Raipur, Lakshmipur.', 'রায়পুর, লক্ষ্মীপুর।', '', '', 36, 266, '2018-04-28 20:17:56', '2019-10-04 09:55:38'),
(268, 'Ramganj Upazila Health Complex', 'রামগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324859', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৫৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Ramganj, Lakshmipur.', 'রামগঞ্জ, লক্ষ্মীপুর।', '', '', 36, 267, '2018-04-28 20:22:44', '2019-10-04 09:56:47'),
(269, 'Ramgati Upazila Health Complex', 'রামগতি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324858', ' যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৫৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Ramgati, Lakshmipur.', 'রামগতি, লক্ষ্মীপুর।', '', '', 36, 268, '2018-04-28 20:27:46', '2019-10-04 09:57:50'),
(270, 'Lalmonirhat Sadar Hospital', 'লালমনিরহাট সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324809', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮০৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Lalmonirhat Sadar, Lalmonirhat.', 'লালমনিরহাট সদর, লালমনিরহাট।', '', '', 37, 269, '2018-04-28 20:36:12', '2019-10-04 10:07:50'),
(271, 'Aditmari Upazila Health Complex', 'আদিতমারী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324664', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৬৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Aditmari, Lalmonirhat.', 'আদিতমারী, লালমনিরহাট।', '', '', 37, 270, '2018-04-28 20:43:07', '2019-10-04 09:59:11'),
(272, 'Hatibandha Upazila Health Complex', 'হাতীবান্ধা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324665', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৬৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Hatibandha, Lalmonirhat.', 'হাতীবান্ধা, লালমনিরহাট।', '', '', 37, 271, '2018-04-28 20:48:37', '2019-10-04 10:02:25'),
(273, 'Kaliganj Upazila Health Complex', 'কালীগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324666', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৬৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kaliganj, Lalmonirhat.', 'কালীগঞ্জ, লালমনিরহাট।', '', '', 37, 272, '2018-04-28 20:54:06', '2019-10-04 10:04:02'),
(274, 'Patgram Upazila Health Complex', 'পাটগ্রাম উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324667', ' যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৬৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Patgram, Lalmonirhat.', 'পাটগ্রাম, লালমনিরহাট।', '', '', 37, 273, '2018-04-28 20:58:07', '2019-10-04 10:09:01'),
(275, 'Madaripur Sadar Hospital ', 'মাদারীপুর সদর হাসপাতাল', 'Sadar Hospital ', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324781', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৮১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Madaripur Sadar, Madaripur.', 'মাদারীপুর সদর, মাদারীপুর।', '', '', 38, 274, '2018-04-28 22:12:16', '2019-10-04 10:15:19'),
(276, 'Kalkini Upazila Health Complex', 'কালকিনী  উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324505', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫০৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kalkini, Madaripur.', 'কালকিনী, মাদারীপুর।', '', '', 38, 275, '2018-04-28 22:22:09', '2019-10-04 10:11:46'),
(277, 'Rajoir Upazila Health Complex', 'রাজৈর উপজেলা স্বাস্থ্য কমপ্লেক্স ', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324506', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫০৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Rajoir, Madaripur.', 'রাজৈর, মাদারীপুর।', '', '', 38, 276, '2018-04-28 22:28:28', '2019-10-04 10:16:34'),
(278, 'Shibchar Upazila Health Complex ', 'শিবচর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324507', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫০৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Shibchar, Madaripur.', 'শিবচর, মাদারীপুর।', '', '', 38, 277, '2018-04-28 22:32:35', '2019-10-27 16:59:38'),
(279, 'Magura Sadar Hospital', 'মাগুরা সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324799', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৯৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Magura Sadar, Magura.', 'মাগুরা সদর, মাগুরা।', '', '', 39, 278, '2018-04-29 10:13:57', '2019-10-04 12:21:44'),
(280, 'Mohammadpur Upazila Health Complex', 'মোহাম্মাদপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324607', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬০৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Mohammadpur, Magura.', 'মোহাম্মাদপুর, মাগুরা।', '', '', 39, 279, '2018-04-29 10:20:34', '2019-12-29 10:08:07'),
(281, 'Shalikha Upazila Health Complex', 'শালিখা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324608', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬০৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Shalikha, Magura.', 'শালিখা, মাগুরা।', '', '', 39, 280, '2018-04-29 10:24:53', '2019-10-27 17:11:17'),
(282, 'Sreepur Upazila Health Complex', 'শ্রীপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324609', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬০৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sreepur, Magura.', 'শ্রীপুর, মাগুরা।', '', '', 39, 281, '2018-04-29 10:29:46', '2019-10-27 17:14:29'),
(283, 'Manikganj Sadar Hospital', 'মানিকগঞ্জ সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল ', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324782', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৮২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Manikganj Sadar, Manikganj.', 'মানিকগঞ্জ সদর, মানিকগঞ্জ।', '', '', 40, 282, '2018-04-29 10:36:07', '2019-10-04 16:13:28'),
(284, 'Daulatpur Upazila Health Complex', 'দৌলতপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324508', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫০৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Daulatpur, Manikganj.', 'দৌলতপুর, মানিকগঞ্জ।', '', '', 40, 283, '2018-04-29 10:41:52', '2019-10-04 16:05:50'),
(285, 'Ghior Upazila Health Complex', 'ঘিওর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324509', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫০৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Ghior, Manikganj.', 'ঘিওর, মানিকগঞ্জ।', '', '', 40, 284, '2018-04-29 10:54:16', '2019-10-04 16:07:28'),
(286, 'Harirampur Upazila Health Complex', 'হরিরামপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324510', ' যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫১০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Harirampur, Manikganj.', 'হরিরামপুর, মানিকগঞ্জ।', '', '', 40, 285, '2018-04-29 10:59:09', '2019-10-04 16:09:10'),
(287, 'Saturia Upazila Health Complex', 'সাটুরিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324511', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫১১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Saturia, Manikganj.', 'সাটুরিয়া,মানিকগঞ্জ।', '', '', 40, 286, '2018-04-29 11:04:15', '2019-10-04 16:17:02'),
(288, 'Shibalaya Upazila Health Complex', 'শিবালয় উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324512', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫১২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Shibalaya, Manikganj.', 'শিবালয়, মানিকগঞ্জ।', '', '', 40, 287, '2018-04-29 11:09:47', '2019-10-04 16:18:48'),
(289, 'Singair Upazila Health Complex', 'সিঙ্গাইর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324513', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫১৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Singair, Manikganj.', 'সিঙ্গাইর, মানিকগঞ্জ।', '', '', 40, 288, '2018-04-29 11:18:47', '2019-10-04 16:20:52'),
(290, 'Meherpur Sadar Hospital  ', 'মেহেরপুর সদর হাসপাতাল ', 'Sadar Hospital ', 'সদর হাসপাতাল ', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324800', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮০০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Meherpur Sadar, Meherpur.', 'মেহেরপুর সদর, মেহেরপুর।', '', '', 41, 289, '2018-04-29 11:26:49', '2019-10-04 16:25:18'),
(291, 'Gangni Upazila Health Complex', 'গাংনী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324610', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬১০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Gangni, Meherpur.', 'গাংনী, মেহেরপুর।', '', '', 41, 290, '2018-04-29 11:31:36', '2019-10-04 16:29:01'),
(292, 'Mujibnagar Upazila Health Complex', 'মুজিবনগর উপজেলা স্বাস্থ্য কমপ্লেক্স ', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324611', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬১১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Mujibnagar, Meherpur.', 'মুজিবনগর, মেহেরপুর।', '', '', 41, 291, '2018-04-29 11:36:08', '2019-10-04 16:26:47'),
(293, 'Moulvibazar Sadar Hospital', 'মৌলভীবাজার সদর হাসপাতাল  ', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324818', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮১৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Moulvibazar Sadar, Moulvibazar.', 'মৌলভীবাজার সদর, মৌলভীবাজার।', '', '', 42, 292, '2018-04-29 11:45:35', '2019-10-04 16:47:24'),
(294, 'Barlekha Upazila Health Complex', 'বড়লেখা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324735', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৩৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Barlekha, Moulvibazar.', 'বড়লেখা, মৌলভীবাজার।', '', '', 42, 293, '2018-04-29 12:03:23', '2019-10-04 16:35:13'),
(295, 'Juri Upazila Health Complex', 'জুরী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324878', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৭৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Juri, Moulvibazar.', 'জুরী, মৌলভীবাজার।', '', '', 42, 294, '2018-04-29 12:08:16', '2019-10-04 16:36:37'),
(296, 'Kamalganj Upazila Health Complex', 'কমলগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324736', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৩৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kamalganj, Moulvibazar.', 'কমলগঞ্জ, মৌলভীবাজার।', '', '', 42, 295, '2018-04-29 12:15:12', '2019-10-04 16:39:23'),
(297, 'Kulaura Upazila Health Complex', 'কুলাউড়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324737', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৩৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kulaura, Moulvibazar.', 'কুলাউড়া, মৌলভীবাজার।', '', '', 42, 296, '2018-04-29 12:19:26', '2019-10-04 16:40:48'),
(298, 'Rajnagar Upazila Health Complex', 'রাজনগর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324738', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৩৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Rajnagar, Moulvibazar.', 'রাজনগর, মৌলভীবাজার।', '', '', 42, 297, '2018-04-29 12:23:47', '2019-10-04 16:49:22'),
(299, 'Sreemangal Upazila Health Complex', 'শ্রীমঙ্গল উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324739', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৩৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sreemangal, Moulvibazar.', 'শ্রীমঙ্গল, মৌলভীবাজার।', '', '', 42, 298, '2018-04-29 12:28:38', '2019-10-04 16:50:53'),
(300, 'Munsiganj Sadar Hospital', 'মুন্সিগঞ্জ সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324783', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৮৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Munsiganj Sadar, Munsiganj.', 'মুন্সিগঞ্জ সদর, মুন্সিগঞ্জ।', '', '', 44, 299, '2018-04-29 12:46:18', '2019-10-04 16:57:11'),
(301, 'Gazaria Upazila Health Complex', 'গজারিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324514', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫১৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Gazaria, Munsiganj.', 'গজারিয়া, মুন্সিগঞ্জ।', '', '', 44, 300, '2018-04-29 12:50:30', '2019-10-29 18:26:20'),
(302, 'Lowhajang Upazila Health Complex', 'লৌহজং উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324515', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫১৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Lowhajang, Munsiganj.', 'লৌহজং, মুন্সিগঞ্জ।', '', '', 44, 301, '2018-04-29 12:54:32', '2019-10-04 16:53:40'),
(303, 'Sirajdikhan Upazila Health Complex', 'সিরাজদীখাঁন উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324516', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫১৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sirajdikhan, Munsiganj.', 'সিরাজদীখাঁন, মুন্সিগঞ্জ।', '', '', 44, 302, '2018-04-29 12:59:12', '2019-10-29 18:38:13'),
(304, 'Sreenagar Upazila Health Complex', 'শ্রীনগর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324517', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫১৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sreenagar, Munsiganj.', 'শ্রীনগর, মুন্সিগঞ্জ।', '', '', 44, 303, '2018-04-29 13:04:04', '2019-10-04 17:01:42'),
(305, 'Tongibari Upazila Health Complex', 'টঙ্গীবাড়ি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324518', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫১৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Tongibari, Munsiganj.', 'টঙ্গীবাড়ি, মুন্সিগঞ্জ।', '', '', 44, 304, '2018-04-29 13:08:27', '2019-10-04 17:03:11'),
(306, 'Bhaluka Upazila Health Complex', 'ভালুকা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324519', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫১৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bhaluka, Mymensingh.', 'ভালুকা, ময়মনসিংহ।', '', '', 45, 306, '2018-04-29 13:18:48', '2019-10-04 17:04:52'),
(307, 'Dhobaura Upazila Health Complex', 'ধোবাউড়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324520', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫২০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dhobaura, Mymensingh.', 'ধোবাউড়া, ময়মনসিংহ।', '', '', 45, 307, '2018-04-29 13:23:03', '2019-10-04 17:06:13'),
(308, 'Fulbaria Upazila Health Complex', 'ফুলবাড়িয়া  উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324521', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫২১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Fulbaria, Mymensingh.', 'ফুলবাড়িয়া, ময়মনসিংহ।', '', '', 45, 308, '2018-04-29 13:27:52', '2019-10-04 17:07:21'),
(309, 'Fulpur Upazila Health Complex', 'ফুলপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324522', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫২২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Fulpur, Mymensingh.', 'ফুলপুর, ময়মনসিংহ।', '', '', 45, 309, '2018-04-29 13:32:11', '2019-10-04 17:08:30'),
(310, 'Gafargaon Upazila Health Complex', 'গফরগাঁও উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324523', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫২৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Gafargaon, Mymensingh.', 'গফরগাঁও, ময়মনসিংহ।', '', '', 45, 310, '2018-04-29 13:36:35', '2019-10-04 17:19:57'),
(311, 'Gouripur Upazila Health Complex ', 'গৌরীপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324524', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫২৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Gouripur, Mymensingh.', 'গৌরীপুর, ময়মনসিংহ।', '', '', 45, 311, '2018-04-29 13:47:34', '2019-10-04 17:21:26'),
(312, 'Haluaghat Upazila Health Complex', 'হালুয়াঘাট উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324525', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫২৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Haluaghat, Mymensingh.', 'হালুয়াঘাট, ময়মনসিংহ।', '', '', 45, 312, '2018-04-29 13:52:39', '2019-10-04 17:22:43'),
(313, 'Ishwarganj Upazila Health Complex', 'ঈশ্বরগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324526', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫২৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Ishwarganj, Mymensingh.', 'ঈশ্বরগঞ্জ, ময়মনসিংহ।', '', '', 45, 313, '2018-04-29 13:57:33', '2019-10-04 17:23:53'),
(314, 'Muktagachha Upazila Health Complex', 'মুক্তাগাছা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324527', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫২৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Muktagachha, Mymensingh.', 'মুক্তাগাছা, ময়মনসিংহ।', '', '', 45, 314, '2018-04-29 14:10:57', '2019-10-04 17:25:09'),
(315, 'Nandail Upazila Health Complex ', 'নান্দাইল উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324528', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫২৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nandail, Mymensingh.', 'নান্দাইল, ময়মনসিংহ।', '', '', 45, 315, '2018-04-29 14:16:25', '2019-10-04 17:28:08'),
(316, 'Tarakanda Upazila Health Complex', 'তারাকান্দা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', '', 45, 316, '2018-04-29 14:21:08', '2019-10-04 17:30:06'),
(317, 'Trishal Upazila Health Complex', 'ত্রিশাল উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324529', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫২৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Trishal, Mymensingh.', 'ত্রিশাল, ময়মনসিংহ।', '', '', 45, 317, '2018-04-29 14:24:42', '2019-10-04 17:31:25'),
(318, 'Naogaon Sadar Hospital ', 'নওগাঁ সদর হাসপাতাল', 'Sadar Hospital ', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324810', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮১০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Naogaon Sadar, Naogaon.', 'নওগাঁ সদর, নওগাঁ।', '', '', 46, 318, '2018-04-29 14:33:31', '2019-10-04 17:47:23'),
(319, 'Atrai Upazila Health Complex', 'আত্রাই উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324668', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৬৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Atrai, Naogaon.', 'আত্রাই, নওগাঁ। ', '', '', 46, 319, '2018-04-29 14:38:05', '2019-10-04 17:32:55'),
(320, 'Badalgachhi Upazila Health Complex', 'বদলগাছী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324669', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৬৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Badalgachhi, Naogaon.', 'বদলগাছী, নওগাঁ।', '', '', 46, 320, '2018-04-29 14:43:42', '2019-10-04 17:36:06'),
(321, 'Dhamoirhat Upazila Health Complex', 'ধামুরহাট উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324670', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৭০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dhamoirhat, Naogaon.', 'ধামুরহাট, নওগাঁ।', '', '', 46, 321, '2018-04-29 14:51:38', '2019-10-04 17:37:22'),
(322, 'Manda Upazila Health Complex', 'মান্দা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324671', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৭১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Manda, Naogaon.', 'মান্দা, নওগাঁ।', '', '', 46, 322, '2018-04-29 14:58:46', '2019-10-04 17:39:21'),
(323, 'Mohadevpur Upazila Health Complex', 'মহাদেবপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324672', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৭২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Mohadevpur, Naogaon.', 'মহাদেবপুর, নওগাঁ।', '', '', 46, 323, '2018-04-29 15:04:12', '2019-10-04 17:42:20'),
(324, 'Niamatpur Upazila Health Complex', 'নিয়ামতপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324673', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৭৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Niamatpur, Naogaon.', 'নিয়ামতপুর, নওগাঁ।', '', '', 46, 324, '2018-04-29 15:09:09', '2019-10-04 17:48:59'),
(325, 'Patnitala Upazila Health Complex', 'পত্নীতলা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324674', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৭৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Patnitala, Naogaon.', 'পত্নীতলা, নওগাঁ।', '', '', 46, 325, '2018-04-29 15:13:23', '2019-10-04 17:50:22'),
(326, 'Porsha Upazila Health Complex ', 'পরশা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324675', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৭৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Porsha, Naogaon.', 'পরশা, নওগাঁ।', '', '', 46, 326, '2018-04-29 15:20:10', '2019-10-30 07:47:13'),
(327, 'Raninagar Upazila Health Complex', 'রানীনগর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324676', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৭৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Raninagar, Naogaon.', 'রানীনগর, নওগাঁ।', '', '', 46, 327, '2018-04-29 15:25:11', '2019-10-04 17:54:10'),
(328, 'Sapahar Upazila Health Complex', 'সাপাহার উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:     \r\n+88-01730-324677', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৭৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sapahar, Naogaon.', 'সাপাহার, নওগাঁ।', '', '', 46, 328, '2018-04-29 15:29:23', '2019-10-04 17:55:35'),
(329, 'Narail Sadar Hospital', 'নড়াইল সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল ', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324801', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮০১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Narail Sadar, Narail.', 'নড়াইল সদর, নড়াইল।', '', '', 47, 329, '2018-04-29 15:35:52', '2019-10-04 21:01:38'),
(330, 'Kalia Upazila Health Complex ', 'কালিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স ', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324612', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬১২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kalia, Narail.', 'কালিয়া, নড়াইল।', '', '', 47, 330, '2018-04-29 15:40:09', '2019-10-30 07:53:28'),
(331, 'Lohagara Upazila Health Complex', 'লোহাগড়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324613', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬১৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Lohagara, Narail.', 'লোহাগড়া, নড়াইল।', '', '', 47, 331, '2018-04-29 15:44:17', '2019-10-30 07:56:05'),
(332, 'Narayanganj Sadar General (Victoria) Hospital', 'নারায়ণগঞ্জ সদর জেনারেল (ভিক্টোরিয়া) হাসপাতাল  ', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324784', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৮৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Narayanganj Sadar, Narayanganj.', 'নারায়ণগঞ্জ সদর, নারায়ণগঞ্জ।', '', '', 48, 332, '2018-04-29 20:51:14', '2019-10-04 21:07:48'),
(333, 'Narayanganj 300 Bedded Hospital', 'নারায়ণগঞ্জ ৩০০ শয্যা বিশিষ্ট হাসপাতাল', 'Medical College, Hospital & Clinic', 'মেডিক্যাল কলেজ, হসপিটাল অ্যান্ড ক্লিনিক', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324785', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৮৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Narayanganj Sadar, Narayanganj. ', 'নারায়ণগঞ্জ সদর, নারায়ণগঞ্জ।', '', '', 48, 332, '2018-04-29 21:01:59', '2019-12-29 18:26:41'),
(334, 'Araihazar Upazila Health Complex', 'আড়াইহাজার উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324530', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৩০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Araihazar, Narayanganj.', 'আড়াইহাজার, নারায়ণগঞ্জ।', '', '', 48, 333, '2018-04-29 21:08:41', '2019-10-04 21:02:51'),
(335, 'Bandar Upazila Health Complex', 'বন্দর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324531', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৩১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bandar, Narayanganj.', 'বন্দর, নারায়ণগঞ্জ।', '', '', 48, 334, '2018-04-29 21:13:36', '2019-10-04 21:04:10'),
(336, 'Rupganj Upazila Health Complex', 'রূপগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324532', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৩২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Rupganj, Narayanganj.', 'রূপগঞ্জ, নারায়ণগঞ্জ।', '', '', 48, 335, '2018-04-29 21:32:34', '2019-10-04 21:08:51'),
(337, 'Sonargaon Upazila Health Complex', 'সোনারগাঁও উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324533', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৩৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sonargaon, Narayanganj.', 'সোনারগাঁও, নারায়ণগঞ্জ।', '', '', 48, 336, '2018-04-29 21:37:45', '2019-10-04 21:10:03'),
(338, 'Narsingdi Sadar Hospital ', 'নরসিংদী সদর হাসপাতাল  ', 'Sadar Hospital ', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324786', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৮৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Narsingdi Sadar, Narsingdi.', 'নরসিংদী সদর, নরসিংদী।', '', '', 49, 337, '2018-04-29 21:48:21', '2019-10-04 22:46:53'),
(339, 'Narsingdi 100 Bedded Zila Hospital', 'নরসিংদী ১০০ শয্যা বিশিষ্ট জেলা হাসপাতাল', 'Medical College, Hospital & Clinic', 'মেডিক্যাল কলেজ, হসপিটাল অ্যান্ড ক্লিনিক ', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324787', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৮৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Narsingdi Sadar, Narsingdi.', 'নরসিংদী সদর, নরসিংদী।', '', '', 49, 337, '2018-04-29 21:55:45', '2019-12-29 18:33:08'),
(340, 'Belabo Upazila Health Complex', 'বেলাবো উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324534', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৩৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Belabo, Narsingdi.', 'বেলাবো, নরসিংদী।', '', '', 49, 338, '2018-04-29 22:08:10', '2019-10-04 22:34:07'),
(341, 'Monohardi Upazila Health Complex', 'মনোহরদী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324535', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৩৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Monohardi, Narsingdi.', 'মনোহরদী, নরসিংদী।', '', '', 49, 339, '2018-04-29 22:15:16', '2019-10-04 22:35:19'),
(342, 'Palash Upazila Health Complex', 'পলাশ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324536', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৩৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Palash, Narsingdi.', 'পলাশ, নরসিংদী।', '', '', 49, 340, '2018-04-29 22:21:36', '2019-10-04 22:47:54'),
(343, 'Raipura Upazila Health Complex', 'রায়পুরা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324537', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৩৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Raipura, Narsingdi.', 'রায়পুরা, নরসিংদী।', '', '', 49, 341, '2018-04-29 22:26:06', '2019-10-04 22:49:04'),
(344, 'Shibpur Upazila Health Complex', 'শিবপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324538', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৩৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Shibpur, Narsingdi.', 'শিবপুর, নরসিংদী।', '', '', 49, 342, '2018-04-29 22:30:19', '2019-10-04 22:50:08'),
(345, 'Natore Sadar Hospital ', 'নাটোর সদর হাসপাতাল ', 'Sadar Hospital ', 'সদর হাসপাতাল ', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324811', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮১১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Natore Sadar, Natore. ', 'নাটোর সদর, নাটোর। ', '', '', 50, 343, '2018-04-29 22:37:30', '2019-10-04 23:03:41'),
(346, 'Bagatipara Upazila Health Complex', 'বাগাতিপাড়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324678', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৭৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bagatipara, Natore.', 'বাগাতিপাড়া, নাটোর।', '', '', 50, 344, '2018-04-29 22:42:12', '2019-10-04 22:51:10'),
(347, 'Baraigram Upazila Health Complex ', 'বরাইগ্রাম উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324679', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৭৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Baraigram, Natore.', 'বরাইগ্রাম, নাটোর।', '', '', 50, 345, '2018-04-29 22:48:46', '2019-10-04 22:52:21'),
(348, 'Gurudaspur Upazila Health Complex', 'গুরুদাসপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324680', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৮০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Gurudaspur, Natore.', 'গুরুদাসপুর, নাটোর।', '', '', 50, 346, '2018-04-29 22:51:50', '2019-10-04 22:57:11'),
(349, 'Lalpur Upazila Health Complex ', 'লালপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324681', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৮১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Lalpur, Natore.', 'লালপুর, নাটোর।', '', '', 50, 347, '2018-04-29 22:57:05', '2019-10-04 22:58:44'),
(350, 'Naldanga Upazila Health Complex', 'নলডাঙ্গা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', '', 50, 348, '2018-04-29 23:05:33', '2019-10-04 23:00:53'),
(351, 'Singra Upazila Health Complex ', 'সিংড়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324682', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৮২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Singra, Natore.', 'সিংড়া, নাটোর।', '', '', 50, 349, '2018-04-29 23:09:08', '2019-10-30 16:48:29'),
(352, 'Netrokona Sadar Hospital', 'নেত্রকোনা সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324788', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৮৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Netrokona Sadar, Netrokona.', 'নেত্রকোনা সদর, নেত্রকোনা।', '', '', 51, 350, '2018-04-30 10:31:59', '2019-10-04 23:18:18'),
(353, 'Atpara Upazila Health Complex', 'আটপাড়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324539', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৩৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Atpara, Netrokona.', 'আটপাড়া, নেত্রকোনা।', '', '', 51, 351, '2018-04-30 10:37:07', '2019-10-04 23:07:08'),
(354, 'Barhatta Upazila Health Complex', 'বারহাট্টা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324540', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৪০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Barhatta, Netrokona.', 'বারহাট্টা, নেত্রকোনা।', '', '', 51, 352, '2018-04-30 10:41:40', '2019-10-04 23:08:22'),
(355, 'Durgapur Upazila Health Complex ', 'দূর্গাপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324541', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৪১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Durgapur, Netrokona.', 'দুর্গাপুর, নেত্রকোনা।', '', '', 51, 353, '2018-04-30 10:46:57', '2019-10-04 23:09:32'),
(356, 'Kalmakanda Upazila Health Complex ', 'কলমাকান্দা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324542', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৪২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kalmakanda, Netrokona.', 'কলমাকান্দা, নেত্রকোনা।', '', '', 51, 354, '2018-04-30 10:52:59', '2019-10-04 23:10:36'),
(357, 'Kendua Upazila Health Complex', 'কেন্দুয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324543', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৪৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kendua, Netrokona.', 'কেন্দুয়া, নেত্রকোনা।', '', '', 51, 355, '2018-04-30 10:58:33', '2019-10-04 23:11:40'),
(358, 'Khaliajuri Upazila Health Complex', 'খালিয়াজুরী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324544', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৪৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Khaliajuri, Netrokona.', 'খালিয়াজুরী, নেত্রকোনা।', '', '', 51, 356, '2018-04-30 11:04:32', '2019-10-04 23:12:47'),
(359, 'Madan Upazila Health Complex', 'মদন উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324545', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৪৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Madan, Netrokona.', 'মদন, নেত্রকোনা।', '', '', 51, 357, '2018-04-30 11:17:05', '2019-10-04 23:13:54'),
(360, 'Mohanganj Upazila Health Complex ', 'মোহনগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স ', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324546', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৪৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Mohanganj, Netrokona.', 'মোহনগঞ্জ, নেত্রকোনা।', '', '', 51, 358, '2018-04-30 11:23:36', '2019-10-04 23:14:57'),
(361, 'Purbadhala Upazila Health Complex', 'পূর্বধলা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324547', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৪৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Purbadhala, Netrokona.', 'পূর্বধলা, নেত্রকোনা।', '', '', 51, 359, '2018-04-30 11:34:09', '2019-10-04 23:19:32'),
(362, 'Nilfamari Sadar Hospital', 'নীলফামারি সদর হাসপাতাল  ', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324812', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮১২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nilfamari Sadar, Nilfamari.', 'নীলফামারি সদর, নীলফামারি।', '', '', 52, 360, '2018-04-30 11:47:14', '2019-10-05 08:19:44'),
(363, 'Dimla Upazila Health Complex ', 'ডিমলা  উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324683', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৮৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dimla, Nilfamari.', 'ডিমলা, নীলফামারি।', '', '', 52, 361, '2018-04-30 11:59:38', '2019-10-04 23:20:40'),
(364, 'Domar Upazila Health Complex', 'ডোমার উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324684', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৮৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Domar, Nilfamari.', 'ডোমার, নীলফামারি।', '', '', 52, 362, '2018-04-30 12:04:43', '2019-10-04 23:22:15'),
(365, 'Jaldhaka Upazila Health Complex', 'জলঢাকা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324685', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৮৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Jaldhaka, Nilfamari.', 'জলঢাকা, নীলফামারি।', '', '', 52, 363, '2018-04-30 12:09:24', '2019-10-04 23:23:47'),
(366, 'Kishoreganj Upazila Health Complex', 'কিশোরগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324686', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৮৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kishoreganj, Nilfamari.', 'কিশোরগঞ্জ, নীলফামারি।', '', '', 52, 364, '2018-04-30 12:13:52', '2019-10-04 23:26:18'),
(367, 'Syedpur Upazila Health Complex', 'সৈয়দপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324687', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৮৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Syedpur, Nilfamari.', 'সৈয়দপুর, নীলফামারি।', '', '', 52, 365, '2018-04-30 12:18:27', '2019-10-30 17:29:58'),
(368, 'Syedpur 100 Bedded Hospital', 'সৈয়দপুর ১০০ শয্যা বিশিষ্ট হাসপাতাল', 'Medical College, Hospital & Clinic', 'মেডিক্যাল কলেজ, হসপিটাল অ্যান্ড ক্লিনিক ', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324822', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮২২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Syedpur, Nilfamari.', 'সৈয়দপুর, নীলফামারি।', '', '', 52, 365, '2018-04-30 12:30:46', '2019-12-29 18:37:02'),
(369, 'Noakhali Sadar Hospital', 'নোয়াখালী সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল ', NULL, '', '', '', 'Contact Number: \r\n+88-01730-324774', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৭৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Noakhali Sadar, Noakhali.', 'নোয়াখালী সদর, নোয়াখালী।', '', '', 53, 366, '2018-04-30 14:09:28', '2019-10-05 08:32:42'),
(370, 'Begumganj Upazila Health Complex', 'বেগমগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324860', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৬০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Begumganj, Noakhali.', 'বেগমগঞ্জ, নোয়াখালী।', '', '', 53, 367, '2018-04-30 14:15:56', '2019-10-05 08:25:30'),
(371, 'Chatkhil Upazila Health Complex', 'চাটখিল উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324861', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৬১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Chatkhil, Noakhali.', 'চাটখিল, নোয়াখালী।', '', '', 53, 368, '2018-04-30 14:44:35', '2019-10-05 08:26:34'),
(372, 'Companiganj Upazila Health Complex', 'কোম্পানিগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324862', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৬২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Companiganj, Noakhali.', 'কোম্পানিগঞ্জ, নোয়াখালী।', '', '', 53, 369, '2018-04-30 14:48:45', '2019-10-05 08:27:45'),
(373, 'Hatiya Upazila Health Complex ', 'হাতিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324863', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৬৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Hatiya, Noakhali.', 'হাতিয়া, নোয়াখালী।', '', '', 53, 370, '2018-04-30 15:01:28', '2019-10-05 08:28:50'),
(374, 'Kabirhat Upazila Health Complex', 'কবিরহাট উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', '', 53, 371, '2018-04-30 15:10:04', '2019-10-05 08:31:17'),
(375, 'Senbagh Upazila Health Complex', 'সেনবাগ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', 0x2020, 'Contact Number:\r\n+88-01730-324864', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৬৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Senbagh, Noakhali.', 'সেনবাগ, নোয়াখালী।', '', '', 53, 372, '2018-04-30 15:24:21', '2019-12-29 11:33:47'),
(376, 'Sonaimuri Upazila Health Complex', 'সোনাইমুড়ি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324865', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৬৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sonaimuri, Noakhali.', 'সোনাইমুড়ি, নোয়াখালী।', '', '', 53, 373, '2018-04-30 15:29:59', '2019-10-05 08:34:48'),
(377, 'Subarnachar Upazila Health Complex', 'সুবর্ণচর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324866', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৬৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Subarnachar, Noakhali.', 'সুবর্ণচর, নোয়াখালী।', '', '', 53, 374, '2018-04-30 15:34:50', '2019-10-05 08:35:57'),
(378, 'Pabna Sadar Hospital ', 'পাবনা সদর হাসপাতাল  ', 'Sadar Hospital ', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324813', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮১৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Pabna Sadar, Pabna.', 'পাবনা সদর, পাবনা।', '', '', 54, 375, '2018-04-30 15:42:53', '2019-10-05 08:49:26'),
(379, 'Ataikula Upazila Health Complex ', 'আতাইকুলা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি ! ', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found ! ', 'কোন তথ্য পাওয়া যায়নি ! ', '', '', 54, 376, '2018-04-30 16:50:35', '2019-10-05 08:38:10'),
(380, 'Atghoria Upazila Health Complex', 'আটঘরিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324688', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৮৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Atghoria, Pabna.', 'আটঘরিয়া, পাবনা। ', '', '', 54, 377, '2018-05-01 11:34:11', '2019-10-05 08:41:05'),
(381, 'Bera Upazila Health Complex', 'বেড়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324690', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৯০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bera, Pabna.', 'বেড়া, পাবনা।', '', '', 54, 378, '2018-05-01 11:39:28', '2019-10-05 08:43:21'),
(382, 'Bhangura Upazila Health Complex', 'ভাঙ্গুরা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324689', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৮৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bhangura, Pabna.', 'ভাঙ্গুরা, পাবনা।', '', '', 54, 379, '2018-05-01 11:45:13', '2019-10-05 08:44:24'),
(383, 'Chatmohar Upazila Health Complex', 'চাটমোহর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324691', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৯১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Chatmohar, Pabna.', 'চাটমোহর, পাবনা।', '', '', 54, 380, '2018-05-01 11:51:20', '2019-10-05 08:45:38'),
(384, 'Faridpur Upazila Health Complex', 'ফরিদপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324692', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৯২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Faridpur, Pabna.', 'ফরিদপুর, পাবনা।', '', '', 54, 381, '2018-05-01 12:01:09', '2019-10-05 08:47:01'),
(385, 'Ishwardi Upazila Health Complex', 'ঈশ্বরদী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324693', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৯৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Ishwardi, Pabna.', 'ঈশ্বরদী, পাবনা।', '', '', 54, 382, '2018-05-01 12:14:49', '2019-10-05 08:48:12'),
(386, 'Santhia Upazila Health Complex', 'সাঁথিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number: \r\n+88-01730-324694', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৯৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Santhia, Pabna.', 'সাঁথিয়া, পাবনা।', '', '', 54, 383, '2018-05-01 12:19:23', '2019-10-05 08:51:56'),
(387, 'Sujanagar Upazila Health Complex', 'সুজানগর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324695', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৯৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sujanagar, Pabna.', 'সুজানগর, পাবনা।', '', '', 54, 384, '2018-05-01 12:23:06', '2019-10-05 08:53:02'),
(388, 'Panchagarh Sadar Hospital', 'পঞ্চগড় সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324814', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮১৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Panchagarh Sadar, Panchagarh.', 'পঞ্চগড় সদর, পঞ্চগড়।', '', '', 55, 385, '2018-05-01 14:20:25', '2019-10-05 09:01:46'),
(389, 'Atwari Upazila Health Complex', 'আটোয়ারী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324696', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৯৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Atwari, Panchagarh.', 'আটোয়ারী, পঞ্চগড়।', '', '', 55, 386, '2018-05-01 14:29:38', '2019-10-05 08:54:28'),
(390, 'Boda Upazila Health Complex', 'বোদা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number: \r\n+88-01730-324697', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৯৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Boda, Panchagarh.', 'বোদা, পঞ্চগড়।', '', '', 55, 387, '2018-05-01 14:35:02', '2019-10-05 08:56:46'),
(391, 'Debiganj Upazila Health Complex', 'দেবীগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324698', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৯৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Debiganj, Panchagarh.', 'দেবীগঞ্জ, পঞ্চগড়।', '', '', 55, 388, '2018-05-01 14:39:38', '2019-10-05 08:58:19');
INSERT INTO `hospital` (`id`, `hospital_name`, `b_hospital_name`, `hospital_subname`, `b_hospital_subname`, `hospital_photo`, `photo_path`, `hospital_description`, `b_hospital_description`, `hospital_phone_no`, `b_hospital_phone_no`, `hospital_email_ad`, `hospital_fb_link`, `hospital_web_link`, `hospital_total_bed`, `b_hospital_total_bed`, `hospital_total_doctor`, `b_hospital_total_doctor`, `hospital_total_staff`, `b_hospital_total_staff`, `hospital_address`, `b_hospital_address`, `hospital_latitude`, `hospital_longitude`, `district_id`, `subdistrict_id`, `created_at`, `updated_at`) VALUES
(392, 'Tetulia Upazila Health Complex', 'তেঁতুলিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324699', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬৯৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Tetulia, Panchagarh.', 'তেঁতুলিয়া, পঞ্চগড়।', '', '', 55, 389, '2018-05-01 14:47:07', '2019-10-05 09:03:19'),
(393, 'Patuakhali Sadar Hospital ', 'পটুয়াখালী সদর হাসপাতাল', 'Sadar Hospital ', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324763', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৬৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Patuakhali Sadar, Patuakhali.', 'পটুয়াখালী সদর, পটুয়াখালী।', '', '', 56, 390, '2018-05-01 14:55:18', '2019-10-05 09:18:27'),
(394, 'Baufal Upazila Health Complex ', 'বাউফল উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324426', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪২৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Baufal, Patuakhali.', 'বাউফল, পটুয়াখালী।', '', '', 56, 391, '2018-05-02 10:36:22', '2019-10-30 18:32:02'),
(395, 'Dashmina Upazila Health Complex', 'দশমিনা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324427', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪২৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dashmina, Patuakhali.', 'দশমিনা, পটুয়াখালী।', '', '', 56, 392, '2018-05-02 10:43:25', '2019-10-05 09:07:03'),
(396, 'Dumki Upazila Health Complex', 'দুমকি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324823', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮২৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dumki, Patuakhali.', 'দুমকি, পটুয়াখালী।', '', '', 56, 393, '2018-05-02 10:49:08', '2019-10-05 09:08:54'),
(397, 'Galachipa Upazila Health Complex', 'গলাচিপা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324428', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪২৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Galachipa, Patuakhali.', 'গলাচিপা, পটুয়াখালী।', '', '', 56, 394, '2018-05-02 10:53:07', '2019-10-05 09:10:08'),
(398, 'Kalapara Upazila Health Complex', 'কলাপাড়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324429', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪২৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kalapara, Patuakhali.', 'কলাপাড়া, পটুয়াখালী।', '', '', 56, 395, '2018-05-02 10:57:56', '2019-10-05 09:11:29'),
(399, 'Mirzaganj Upazila Health Complex', 'মির্জাগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324430', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৩০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Mirzaganj, Patuakhali.', 'মির্জাগঞ্জ, পটুয়াখালী।', '', '', 56, 396, '2018-05-02 11:02:29', '2019-10-05 09:14:55'),
(400, 'Rangabali Upazila Health Complex ', 'রাঙ্গাবালি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি ! ', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি ! ', '', '', 56, 397, '2018-05-02 11:07:38', '2019-10-05 09:20:21'),
(401, 'Pirojpur Sadar Hospital ', 'পিরোজপুর সদর হাসপাতাল ', 'Sadar Hospital ', 'সদর হাসপাতাল ', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324764', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৬৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Pirojpur Sadar, Pirojpur.', 'পিরোজপুর সদর, পিরোজপুর।', '', '', 57, 398, '2018-05-02 11:15:10', '2019-10-05 09:30:27'),
(402, 'Bhandaria Upazila Health Complex', 'ভাণ্ডারিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324431', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৩১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bhandaria, Pirojpur.', 'ভাণ্ডারিয়া, পিরোজপুর।', '', '', 57, 399, '2018-05-02 11:24:27', '2019-10-05 09:22:07'),
(403, 'Kawkhali Upazila Health Complex', 'কাউখালী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324432', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৩২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kawkhali, Pirojpur.', 'কাউখালী, পিরোজপুর।', '', '', 57, 400, '2018-05-02 11:29:04', '2019-10-05 09:23:15'),
(404, 'Mathbaria Upazila Health Complex', 'মঠবাড়িয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324433', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৩৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Mathbaria, Pirojpur.', 'মঠবাড়িয়া, পিরোজপুর।', '', '', 57, 401, '2018-05-02 11:33:18', '2019-10-05 09:24:24'),
(405, 'Nazirpur Upazila Health Complex ', 'নাজিরপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324435', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৩৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nazirpur, Pirojpur.', 'নাজিরপুর, পিরোজপুর।', '', '', 57, 402, '2018-05-02 11:37:44', '2019-10-05 09:25:46'),
(406, 'Nesarabad (Swarupkathi) Upazila Health Complex ', 'নেসারাবাদ (স্বরূপকাঠি) উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324434', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৪৩৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nesarabad (Swarupkathi), Pirojpur.', 'নেসারাবাদ (স্বরূপকাঠি), পিরোজপুর।', '', '', 57, 403, '2018-05-02 11:42:28', '2019-10-05 09:26:59'),
(407, 'Zianagar Upazila Health Complex', 'জিয়ানগর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324880', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৮০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Zianagar, Pirojpur.', 'জিয়ানগর, পিরোজপুর।', '', '', 57, 404, '2018-05-02 11:49:03', '2019-10-31 07:28:01'),
(408, 'Rajbari Sadar Hospital', 'রাজবাড়ি সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number: \r\n+88-01730-324789', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৮৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Rajbari Sadar, Rajbari.', 'রাজবাড়ি সদর, রাজবাড়ি।', '', '', 58, 405, '2018-05-03 07:59:20', '2019-10-05 10:00:09'),
(409, 'Baliakandi Upazila Health Complex ', 'বালিয়াকান্দি  উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324548', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৪৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Baliakandi, Rajbari.', 'বালিয়াকান্দি, রাজবাড়ি।', '', '', 58, 406, '2018-05-03 08:06:07', '2019-10-05 09:34:23'),
(410, 'Goalanda Upazila Health Complex ', 'গোয়ালন্দ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324549', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৪৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Goalanda, Rajbari.', 'গোয়ালন্দ, রাজবাড়ি।', '', '', 58, 407, '2018-05-03 08:11:08', '2019-10-05 09:36:26'),
(411, 'Kalukhali Upazila Health Complex', 'কালুখালী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', '', 58, 408, '2018-05-03 08:15:34', '2019-10-05 09:55:58'),
(412, 'Pangsha Upazila Health Complex', 'পাংশা  উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324550', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৫০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Pangsha, Rajbari.', 'পাংশা, রাজবাড়ি।', '', '', 58, 409, '2018-05-03 08:19:38', '2019-10-05 09:57:16'),
(413, 'Bagha Upazila Health Complex', 'বাঘা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324701', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭০১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bagha, Rajshahi.', 'বাঘা, রাজশাহী।', '', '', 59, 411, '2018-05-03 08:35:12', '2019-10-05 10:03:24'),
(414, 'Bagmara Upazila Health Complex', 'বাগমারা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324700', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭০০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bagmara, Rajshahi.', 'বাগমারা, রাজশাহী।', '', '', 59, 412, '2018-05-03 08:43:07', '2019-10-05 10:04:38'),
(415, 'Charghat Upazila Health Complex', 'চারঘাট উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি ! ', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found ! ', 'কোন তথ্য পাওয়া যায়নি ! ', '', '', 59, 413, '2018-05-03 08:47:59', '2019-10-05 10:07:37'),
(416, 'Durgapur Upazila Health Complex', 'দূর্গাপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324703', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭০৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Durgapur, Rajshahi.', 'দূর্গাপুর, রাজশাহী।', '', '', 59, 414, '2018-05-03 08:51:26', '2019-10-05 10:08:56'),
(417, 'Godagari Upazila Health Complex', 'গোদাগারী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324704', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭০৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Godagari, Rajshahi.', 'গোদাগারী, রাজশাহী।', '', '', 59, 415, '2018-05-03 08:55:39', '2019-10-05 10:11:14'),
(418, 'Godagari 31 Bedded Hospital', 'গোদাগারী ৩১ শয্যা বিশিষ্ট হাসপাতাল', 'Medical College, Hospital & Clinic', 'মেডিক্যাল কলেজ, হসপিটাল অ্যান্ড ক্লিনিক ', NULL, NULL, '', '', 'Contact Number:\r\n+88-01730-324881', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৮১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Godagari, Rajshahi.', 'গোদাগারী, রাজশাহী।', '', '', 59, 415, '2018-05-03 09:01:31', '2019-12-29 18:41:06'),
(419, 'Mohanpur Upazila Health Complex', 'মোহনপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324705', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭০৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Mohanpur, Rajshahi.', 'মোহনপুর, রাজশাহী।', '', '', 59, 416, '2018-05-03 09:06:29', '2019-10-05 10:12:31'),
(420, 'Paba Upazila Health Complex ', 'পবা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324706', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭০৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Paba, Rajshahi.', 'পবা, রাজশাহী।', '', '', 59, 417, '2018-05-03 09:11:01', '2019-10-05 10:13:38'),
(421, 'Puthia Upazila Health Complex', 'পুঠিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324707', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭০৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Puthia, Rajshahi.', 'পুঠিয়া, রাজশাহী।', '', '', 59, 418, '2018-05-03 09:17:33', '2019-10-31 07:57:08'),
(422, 'Tanore Upazila Health Complex', 'তানোর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324708', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭০৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Tanore, Rajshahi.', 'তানোর, রাজশাহী।', '', '', 59, 419, '2018-05-03 09:22:15', '2019-10-05 10:18:32'),
(423, 'Rangamati Sadar Hospital', 'রাঙ্গামাটি সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল ', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324775', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৭৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Rangamati Sadar, Rangamati.', 'রাঙ্গামাটি সদর, রাঙ্গামাটি।', '', '', 60, 420, '2018-05-03 09:34:07', '2019-10-05 11:04:42'),
(424, 'Baghaichhari Upazila Health Complex', 'বাঘাইছড়ি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01811-120499', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৮১১-১২০৪৯৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Baghaichhari, Rangamati.', 'বাঘাইছড়ি, রাঙ্গামাটি।', '', '', 60, 421, '2018-05-03 09:40:55', '2019-10-05 10:21:27'),
(426, 'Barkal Upazila Health Complex', 'বরকল উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01552-140397', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৫৫২-১৪০৩৯৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Barkal, Rangamati.', 'বরকল, রাঙ্গামাটি।', '', '', 60, 422, '2018-05-03 09:58:01', '2019-10-05 10:25:58'),
(427, 'Juraichhari Upazila Health Complex', 'জুরাইছড়ি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01552-140398', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৫৫২-১৪০৩৯৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Juraichhari, Rangamati.', 'জুরাইছড়ি, রাঙ্গামাটি।', '', '', 60, 424, '2018-05-03 10:03:15', '2019-10-05 10:28:39'),
(428, 'Belaichhari Upazila Health Complex', 'বিলাইছড়ি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01552-140399', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৫৫২-১৪০৩৯৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Belaichhari, Rangamati.', 'বিলাইছড়ি, রাঙ্গামাটি।', '', '', 60, 423, '2018-05-03 10:21:36', '2019-10-05 10:27:06'),
(429, 'Kaptai Upazila Health Complex', 'কাপ্তাই উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01811-443516', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৮১১-৪৪৩৫১৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kaptai, Rangamati.', 'কাপ্তাই, রাঙ্গামাটি।', '', '', 60, 425, '2018-05-03 10:29:19', '2019-10-05 10:52:05'),
(430, 'Kawkhali Upazila Health Complex', 'কাউখালী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324872', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৭২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kawkhali, Rangamati.', 'কাউখালী, রাঙ্গামাটি।', '', '', 60, 426, '2018-05-03 10:36:18', '2019-10-05 10:53:22'),
(431, 'Langadu Upazila Health Complex', 'লংগদু উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01811-443519', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৮১১-৪৪৩৫১৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Langadu, Rangamati.', 'লংগদু, রাঙ্গামাটি।', '', '', 60, 427, '2018-05-03 10:42:12', '2019-10-05 10:55:31'),
(432, 'Naniarchar Upazila Health Complex', 'নানিয়ারচর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01811-444606', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৮১১-৪৪৪৬০৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Naniarchar, Rangamati.', 'নানিয়ারচর, রাঙ্গামাটি।', '', '', 60, 428, '2018-05-03 10:46:09', '2019-10-05 10:57:11'),
(433, 'Rajasthali Upazila Health Complex', 'রাজস্থলী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01811-443517', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৮১১-৪৪৩৫১৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Rajasthali, Rangamati.', 'রাজস্থলী, রাঙ্গামাটি।', '', '', 60, 429, '2018-05-03 10:50:22', '2019-10-05 11:00:36'),
(434, 'Badarganj Upazila Health Complex', 'বদরগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324709', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭০৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Badarganj, Rangpur.', 'বদরগঞ্জ, রংপুর।', '', '', 61, 431, '2018-05-03 10:55:36', '2019-10-05 11:05:49'),
(435, 'Gangachhara Upazila Health Complex', 'গংগাছড়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324710', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭১০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Gangachhara, Rangpur.', 'গংগাছড়া, রংপুর।', '', '', 61, 432, '2018-05-03 11:00:44', '2019-10-05 11:06:52'),
(436, 'Kawnia Upazila Health Complex', 'কাউনিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324711', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭১১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kawnia, Rangpur.', 'কাউনিয়া, রংপুর।', '', '', 61, 433, '2018-05-03 11:15:20', '2019-10-05 11:09:09'),
(437, 'Kawnia 31 Bedded Hospital', 'কাউনিয়া ৩১ শয্যা বিশিষ্ট হাসপাতাল', 'Medical College, Hospital & Clinic', 'মেডিক্যাল কলেজ, হসপিটাল অ্যান্ড ক্লিনিক ', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324882', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৮২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kawnia, Rangpur.', 'কাউনিয়া, রংপুর।', '', '', 61, 433, '2018-05-03 11:21:03', '2019-12-29 18:45:33'),
(438, 'Mithapukur Upazila Health Complex', 'মিঠাপুকুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324712', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭১২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Mithapukur, Rangpur.', 'মিঠাপুকুর, রংপুর।', '', '', 61, 434, '2018-05-03 11:27:41', '2019-10-31 08:50:32'),
(439, 'Pirgachha Upazila Health Complex', 'পীরগাছা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324713', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭১৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Pirgachha, Rangpur.', 'পীরগাছা, রংপুর।', '', '', 61, 435, '2018-05-03 11:35:13', '2019-10-05 11:11:55'),
(440, 'Pirganj Upazila Health Complex', 'পীরগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324714', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭১৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Pirganj, Rangpur.', 'পীরগঞ্জ, রংপুর।', '', '', 61, 436, '2018-05-03 11:40:13', '2019-10-05 11:12:54'),
(441, 'Taraganj Upazila Health Complex', 'তারাগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324715', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭১৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Taraganj, Rangpur.', 'তারাগঞ্জ, রংপুর।', '', '', 61, 437, '2018-05-03 11:44:39', '2019-10-31 09:06:55'),
(442, 'Satkhira Sadar Hospital', 'সাতক্ষীরা সদর হাসপাতাল  ', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324802', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮০২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Satkhira Sadar, Satkhira.', 'সাতক্ষীরা সদর, সাতক্ষীরা।', '', '', 62, 438, '2018-05-03 15:16:00', '2019-10-05 11:32:05'),
(443, 'Ashashuni Upazila Health Complex', 'আশাশুনি উপজেলা স্বাস্থ্য কমপ্লেক্স ', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324614', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬১৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Ashashuni, Satkhira.', 'আশাশুনি, সাতক্ষীরা।', '', '', 62, 439, '2018-05-03 15:31:18', '2019-10-05 11:20:10'),
(444, 'Debhata Upazila Health Complex', 'দেবহাটা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324615', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬১৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Debhata, Satkhira.', 'দেবহাটা, সাতক্ষীরা।', '', '', 62, 440, '2018-05-03 15:36:54', '2019-10-05 11:21:17'),
(445, 'Kalaroa Upazila Health Complex', 'কলারোয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324617', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬১৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kalaroa, Satkhira.', 'কলারোয়া, সাতক্ষীরা।', '', '', 62, 441, '2018-05-03 15:41:16', '2019-10-05 11:22:20'),
(446, 'Kaliganj Upazila Health Complex', 'কালীগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324616', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬১৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kaliganj, Satkhira.', 'কালীগঞ্জ, সাতক্ষীরা।', '', '', 62, 442, '2018-05-03 15:52:33', '2019-10-05 11:23:52'),
(447, 'Shyamnagar Upazila Health Complex', 'শ্যামনগর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324618', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬১৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Shyamnagar, Satkhira.', 'শ্যামনগর, সাতক্ষীরা।', '', '', 62, 443, '2018-05-03 15:58:13', '2019-10-05 11:35:23'),
(448, 'Tala Upazila Health Complex ', 'তালা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324619', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৬১৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Tala, Satkhira.', 'তালা, সাতক্ষীরা।', '', '', 62, 444, '2018-05-03 16:02:35', '2019-10-05 11:36:40'),
(449, 'Bhedarganj Upazila Health Complex', 'ভেদরগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324551', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৫১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bhedarganj, Shariatpur.', 'ভেদরগঞ্জ, শরিয়তপুর।', '', '', 63, 446, '2018-05-03 18:00:52', '2019-10-05 11:59:12'),
(450, 'Damudya Upazila Health Complex', 'ডামুড্যা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324552', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৫২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Damudya, Shariatpur.', 'ডামুড্যা, শরিয়তপুর।', '', '', 63, 447, '2018-05-03 18:05:35', '2019-10-05 13:42:55'),
(451, 'Gosairhat Upazila Health Complex', 'গোসাইরহাট উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324553', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৫৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Gosairhat, Shariatpur.', 'গোসাইরহাট, শরিয়তপুর।', '', '', 63, 448, '2018-05-03 18:09:43', '2019-10-05 13:45:46'),
(452, 'Naria Upazila Health Complex', 'নড়িয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324554', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৫৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Naria, Shariatpur.', 'নড়িয়া, শরিয়তপুর।', '', '', 63, 449, '2018-05-03 18:13:35', '2019-10-05 13:46:48'),
(453, 'Zajira Upazila Health Complex ', 'জাজিরা  উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324555', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৫৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Zajira, Shariatpur.', 'জাজিরা, শরিয়তপুর।', '', '', 63, 450, '2018-05-03 18:18:43', '2019-10-05 13:52:54'),
(454, 'Sakhipur Upazila Health Complex', 'সখিপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি ! ', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি ! ', '', '', 63, 507, '2018-05-03 18:22:55', '2019-10-05 13:48:21'),
(455, 'Sherpur Sadar Hospital  ', 'শেরপুর সদর হাসপাতাল ', 'Sadar Hospital ', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324791', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৯১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sherpur Sadar, Sherpur.', 'শেরপুর সদর, শেরপুর।', '', '', 64, 451, '2018-05-03 18:27:22', '2019-10-05 14:01:27'),
(456, 'Jhenaigati Upazila Health Complex', 'ঝিনাইগাতী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324556', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৫৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Jhenaigati, Sherpur.', 'ঝিনাইগাতী, শেরপুর।', '', '', 64, 452, '2018-05-03 18:31:47', '2019-10-05 13:55:17'),
(457, 'Nakla Upazila Health Complex', 'নকলা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324557', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৫৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nakla, Sherpur.', 'নকলা, শেরপুর।', '', '', 64, 453, '2018-05-03 18:36:39', '2019-10-05 13:56:23'),
(458, 'Nalitabari Upazila Health Complex', 'নালিতাবাড়ি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324558', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৫৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nalitabari, Sherpur.', 'নালিতাবাড়ি, শেরপুর।', '', '', 64, 454, '2018-05-03 18:40:38', '2019-10-05 13:58:19'),
(459, 'Sreebardi Upazila Health Complex', 'শ্রীবর্দি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324559', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৫৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sreebardi, Sherpur.', 'শ্রীবর্দি, শেরপুর।', '', '', 64, 455, '2018-05-03 18:44:30', '2019-10-05 14:02:32'),
(460, 'Sirajganj Sadar Hospital', 'সিরাজগঞ্জ সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল ', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324815', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮১৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sirajganj Sadar, Sirajganj.', 'সিরাজগঞ্জ সদর, সিরাজগঞ্জ।', '', '', 65, 456, '2018-05-03 20:19:33', '2019-10-05 14:22:10'),
(461, 'Belkuchi Upazila Health Complex', 'বেলকুচি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324716', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭১৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Belkuchi, Sirajganj. ', 'বেলকুচি, সিরাজগঞ্জ। ', '', '', 65, 457, '2018-05-03 20:24:52', '2019-10-05 14:03:39'),
(462, 'Chowhali Upazila Health Complex', 'চৌহালি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324717', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭১৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Chowhali, Sirajganj.', 'চৌহালি, সিরাজগঞ্জ। ', '', '', 65, 458, '2018-05-03 20:38:13', '2019-10-31 09:51:22'),
(463, 'Kamarkhanda Upazila Health Complex', 'কামারখন্দ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324718', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭১৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kamarkhanda, Sirajganj.', 'কামারখন্দ, সিরাজগঞ্জ।', '', '', 65, 460, '2018-05-03 20:42:55', '2019-10-05 14:14:55'),
(464, 'Kazipur Upazila Health Complex', 'কাজীপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324719', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭১৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kazipur, Sirajganj.', 'কাজীপুর, সিরাজগঞ্জ।', '', '', 65, 461, '2018-05-03 20:47:41', '2019-10-05 14:15:53'),
(465, 'Raiganj Upazila Health Complex', 'রায়গঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324720', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭২০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Raiganj, Sirajganj.', 'রায়গঞ্জ, সিরাজগঞ্জ।', '', '', 65, 459, '2018-05-03 20:51:43', '2019-10-05 14:16:51'),
(466, 'Shahajadpur Upazila Health Complex', 'শাহাজাদপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324721', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭২১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Shahajadpur, Sirajganj.', 'শাহাজাদপুর, সিরাজগঞ্জ।', '', '', 65, 462, '2018-05-03 20:55:58', '2019-10-05 14:19:57'),
(467, 'Tarash Upazila Health Complex', 'তাড়াশ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324722', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭২২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Tarash, Sirajganj.', 'তাড়াশ, সিরাজগঞ্জ।', '', '', 65, 463, '2018-05-03 20:59:52', '2019-10-05 14:23:30'),
(468, 'Ullapara Upazila Health Complex', 'উল্লাপাড়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324723', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭২৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Ullapara, Sirajganj.', 'উল্লাপাড়া, সিরাজগঞ্জ।', '', '', 65, 464, '2018-05-03 21:05:04', '2019-10-05 14:24:30'),
(469, 'Sunamganj Sadar Hospital  ', 'সুনামগঞ্জ সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324819', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮১৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sunamganj Sadar, Sunamganj.', 'সুনামগঞ্জ সদর, সুনামগঞ্জ।', '', '', 66, 465, '2018-05-03 21:10:23', '2019-10-05 14:38:22'),
(470, 'Bishwamvarpur Upazila Health Complex', 'বিশ্বম্ভরপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324740', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৪০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bishwamvarpur, Sunamganj.', 'বিশ্বম্ভরপুর, সুনামগঞ্জ।', '', '', 66, 466, '2018-05-03 21:15:19', '2019-10-05 14:25:48'),
(471, 'Chhatak Upazila Health Complex ', 'ছাতক উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324741', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৪১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Chhatak, Sunamganj.', 'ছাতক, সুনামগঞ্জ।', '', '', 66, 467, '2018-05-03 21:19:45', '2019-10-05 14:26:50'),
(472, 'Derai Upazila Health Complex', 'দিরাই উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324742', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৪২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Derai, Sunamganj.', 'দিরাই, সুনামগঞ্জ।', '', '', 66, 468, '2018-05-03 21:24:13', '2019-10-05 14:29:20'),
(473, 'Dharmapasha Upazila Health Complex', 'ধর্মপাশা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324743', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৪৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dharmapasha, Sunamganj.', 'ধর্মপাশা, সুনামগঞ্জ।', '', '', 66, 469, '2018-05-03 21:41:37', '2019-10-05 14:30:29'),
(474, 'Doarabazar Upazila Health Complex', 'দোয়ারাবাজার উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324744', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৪৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Doarabazar, Sunamganj.', 'দোয়ারাবাজার, সুনামগঞ্জ।', '', '', 66, 470, '2018-05-03 21:46:28', '2019-10-05 14:31:27'),
(475, 'Dakshin Sunamganj Upazila Health Complex', 'দক্ষিণ সুনামগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'No data could be found ! ', 'কোন তথ্য পাওয়া যায়নি !', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found ! ', 'কোন তথ্য পাওয়া যায়নি !', '', '', 66, 509, '2018-05-03 21:50:12', '2019-10-05 14:28:27'),
(476, 'Jagannathpur Upazila Health Complex', 'জগন্নাথপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324745', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৪৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Jagannathpur, Sunamganj.', 'জগন্নাথপুর, সুনামগঞ্জ।', '', '', 66, 471, '2018-05-03 21:54:09', '2019-10-05 14:32:18'),
(477, 'Jamalganj Upazila Health Complex', 'জামালগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324746', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৪৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Jamalganj, Sunamganj.', 'জামালগঞ্জ, সুনামগঞ্জ।', '', '', 66, 472, '2018-05-03 21:58:07', '2019-10-05 14:34:50'),
(478, 'Salla Upazila Health Complex', 'সাল্লা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324747', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৪৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Salla, Sunamganj.', 'সাল্লা, সুনামগঞ্জ।', '', '', 66, 473, '2018-05-03 22:03:48', '2019-10-05 14:35:53'),
(479, 'Tahirpur Upazila Health Complex', 'তাহিরপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324748', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৪৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Tahirpur, Sunamganj.', 'তাহিরপুর, সুনামগঞ্জ।', '', '', 66, 474, '2018-05-03 22:08:23', '2019-10-05 14:40:42'),
(480, 'Sylhet Sadar Hospital  ', 'সিলেট সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324820', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮২০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sylhet Sadar, Sylhet.', 'সিলেট সদর, সিলেট।', '', '', 67, 475, '2018-05-03 22:14:51', '2019-10-05 14:55:36'),
(481, 'Balaganj Upazila Health Complex', 'বালাগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324749', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৪৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Balaganj, Sylhet.', 'বালাগঞ্জ, সিলেট।', '', '', 67, 476, '2018-05-03 22:23:50', '2019-10-05 14:41:48'),
(482, 'Beanibazar Upazila Health Complex', 'বিয়ানীবাজার উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324750', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৫০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Beanibazar, Sylhet.', 'বিয়ানীবাজার, সিলেট।', '', '', 67, 477, '2018-05-03 22:29:14', '2019-10-31 10:38:41'),
(483, 'Bishwanath Upazila Health Complex', 'বিশ্বনাথ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-0170-324751', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৫১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bishwanath, Sylhet.', 'বিশ্বনাথ, সিলেট।', '', '', 67, 478, '2018-05-03 22:34:13', '2019-10-05 14:44:21'),
(484, 'Companiganj Upazila Health Complex ', 'কোম্পানিগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324752', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৫২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Companiganj, Sylhet.', 'কোম্পানিগঞ্জ, সিলেট।', '', '', 67, 479, '2018-05-03 22:39:12', '2019-10-05 14:45:33'),
(485, 'Fenchuganj Upazila Health Complex', 'ফেঞ্চুগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324753', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৫৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Fenchuganj, Sylhet.', 'ফেঞ্চুগঞ্জ, সিলেট।', '', '', 67, 480, '2018-05-03 22:45:27', '2019-10-31 10:44:51'),
(486, 'Golapganj Upazila Health Complex', 'গোলাপগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324754', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৫৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Golapganj, Sylhet.', 'গোলাপগঞ্জ, সিলেট।', '', '', 67, 481, '2018-05-03 22:51:48', '2019-10-05 14:49:47'),
(487, 'Gowainghat Upazila Health Complex', 'গোয়াইনঘাট উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324755', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৫৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Gowainghat, Sylhet.', 'গোয়াইনঘাট, সিলেট।', '', '', 67, 482, '2018-05-03 22:56:08', '2019-10-05 14:50:45'),
(488, 'Jointapur Upazila Health Complex', 'জৈন্তাপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324756', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৫৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Jointapur, Sylhet.', 'জৈন্তাপুর, সিলেট।', '', '', 67, 483, '2018-05-03 23:02:41', '2019-10-05 14:52:04'),
(489, 'Kanaighat Upazila Health Complex', 'কানাইঘাট উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324757', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৫৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kanaighat, Sylhet.', 'কানাইঘাট, সিলেট।', '', '', 67, 484, '2018-05-03 23:07:46', '2019-10-05 14:52:59'),
(490, 'Osmaninagar Upazila Health Complex ', 'ওসমানীনগর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি ! ', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি ! ', '', '', 67, 485, '2018-05-03 23:14:44', '2019-10-05 14:54:29'),
(491, 'Dakshin Surma Upazila Health Complex', 'দক্ষিণ সুরমা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324879', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৭৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dakshin Surma, Sylhet.', 'দক্ষিণ সুরমা, সিলেট।', '', '', 67, 486, '2018-05-03 23:23:21', '2019-10-05 14:46:32'),
(492, 'Zakiganj Upazila Health Complex ', 'জকিগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324758', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৫৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Zakiganj, Sylhet.', 'জকিগঞ্জ, সিলেট।', '', '', 67, 487, '2018-05-03 23:28:42', '2019-10-05 14:56:39'),
(493, 'Tangail Sadar Hospital ', 'টাঙ্গাইল সদর হাসপাতাল ', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324792', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৯২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Tangail Sadar, Tangail.', 'টাঙ্গাইল সদর, টাঙ্গাইল।', '', '', 68, 488, '2018-05-03 23:35:12', '2019-10-05 15:13:00'),
(494, 'Basail Upazila Health Complex ', 'বাসাইল উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324560', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৬০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Basail, Tangail.', 'বাসাইল, টাঙ্গাইল।', '', '', 68, 489, '2018-05-03 23:56:10', '2019-10-05 14:57:45'),
(495, 'Bhuapur Upazila Health Complex', 'ভূঞাপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324561', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৬১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bhuapur, Tangail.', 'ভূঞাপুর, টাঙ্গাইল।', '', '', 68, 490, '2018-05-04 00:01:37', '2019-10-05 14:58:51'),
(496, 'Delduar Upazila Health Complex', 'দেলদুয়ার উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324562', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৬২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Delduar, Tangail.', 'দেলদুয়ার, টাঙ্গাইল।', '', '', 68, 491, '2018-05-04 00:07:17', '2019-10-31 10:57:55'),
(497, 'Dhanbari Upazila Health Complex', 'ধনবাড়ি উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324876', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮৭৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dhanbari, Tangail.', 'ধনবাড়ি, টাঙ্গাইল।', '', '', 68, 492, '2018-05-04 00:11:20', '2019-10-05 15:01:36'),
(498, 'Ghatail Upazila Health Complex', 'ঘাটাইল উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324563', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৬৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Ghatail, Tangail.', 'ঘাটাইল, টাঙ্গাইল।', '', '', 68, 493, '2018-05-04 00:15:47', '2019-10-05 15:02:40'),
(499, 'Gopalpur Upazila Health Complex', 'গোপালপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324564', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৬৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Gopalpur, Tangail.', 'গোপালপুর, টাঙ্গাইল।', '', '', 68, 494, '2018-05-04 00:19:48', '2019-10-05 15:04:44'),
(500, 'Kalihati Upazila Health Complex', 'কালিহাতী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324565', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৬৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kalihati, Tangail. ', 'কালিহাতী, টাঙ্গাইল।', '', '', 68, 495, '2018-05-04 00:25:22', '2019-10-05 15:05:49'),
(501, 'Madhupur Upazila Health Complex', 'মধুপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324567', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৬৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Madhupur, Tangail.', 'মধুপুর, টাঙ্গাইল।', '', '', 68, 496, '2018-05-04 00:33:20', '2019-10-05 15:07:01'),
(502, 'Mirzapur Upazila Health Complex', 'মির্জাপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324566', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৬৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Mirzapur, Tangail.', 'মির্জাপুর, টাঙ্গাইল।', '', '', 68, 497, '2018-05-04 00:37:58', '2019-10-05 15:08:06'),
(503, 'Nagarpur Upazila Health Complex ', 'নাগরপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324568', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৬৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nagarpur, Tangail.', 'নাগরপুর, টাঙ্গাইল।', '', '', 68, 498, '2018-05-04 00:42:17', '2019-10-05 15:09:13'),
(504, 'Sakhipur Upazila Health Complex', 'সখিপুর  উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324569', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৬৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sakhipur, Tangail.', 'সখিপুর, টাঙ্গাইল।', '', '', 68, 499, '2018-05-04 00:46:06', '2019-10-05 15:10:12'),
(505, 'Thakurgaon Sadar Hospital ', 'ঠাকুরগাঁও সদর হাসপাতাল ', 'Sadar Hospital ', 'সদর হাসপাতাল', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324816', ' যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৮১৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Thakurgaon Sadar, Thakurgaon.', 'ঠাকুরগাঁও সদর, ঠাকুরগাঁও।', '', '', 69, 500, '2018-05-04 00:52:04', '2019-10-05 15:21:01'),
(506, 'Baliadangi Upazila Health Complex', 'বালিয়াডাঙ্গী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:  \r\n+88-01730-324724', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭২৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Baliadangi, Thakurgaon.', 'বালিয়াডাঙ্গী, ঠাকুরগাঁও।', '', '', 69, 501, '2018-05-04 00:57:33', '2019-10-05 15:14:00'),
(507, 'Haripur Upazila Health Complex', 'হরিপুর উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324725', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭২৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Haripur, Thakurgaon.', 'হরিপুর, ঠাকুরগাঁও।', '', '', 69, 502, '2018-05-04 01:03:19', '2019-10-05 15:14:55'),
(508, 'Pirganj Upazila Health Complex', 'পীরগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324726', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭২৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Pirganj, Thakurgaon.', 'পীরগঞ্জ, ঠাকুরগাঁও।', '', '', 69, 503, '2018-05-04 01:07:19', '2019-10-05 15:15:56'),
(509, 'Ranishankoil Upazila Health Complex ', 'রানীশংকৈল উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex ', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', NULL, '', '', '', 'Contact Number:\r\n+88-01730-324727', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭২৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Ranishankoil, Thakurgaon.', 'রানীশংকৈল, ঠাকুরগাঁও।', '', '', 69, 504, '2018-05-04 01:11:16', '2020-01-01 17:11:11'),
(511, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center460.png', 'uploads/hospital/Health Care Center460.png', '', '', 'Contact Number: \r\n+88-01733-955019\r\n+88-01756-965156', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩৩-৯৫৫০১৯\r\n+৮৮-০১৭৫৬-৯৬৫১৫৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '143, College Road, Barguna Sadar, Barguna.', '১৪৩, কলেজ রোড, বরগুনা সদর, বরগুনা।', '', '', 7, 28, '2018-05-04 12:43:47', '2019-12-28 10:44:01'),
(512, 'Marie Stopes Clinic ', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center42.png', 'uploads/hospital/Health Care Center42.png', '', '', 'Contact Number: \r\n+88-0431-2173228\r\n+88-01712-626948', 'যোগাযোগের নম্বরঃ \r\n+৮৮-০৪৩১-২১৭৩২২৮\r\n+৮৮-০১৭১২-৬২৬৯৪৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '365/370, Baitul Aman, Jordon Road, Beside Club Road, Barisal Sadar, Barisal.', '৩৬৫/৩৭০, বায়তুল আমান, জর্ডন রোড, ক্লাব রোডের পাশে, বরিশাল সদর, বরিশাল।', '', '', 8, 34, '2018-05-04 21:53:55', '2019-12-28 10:52:59'),
(513, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center262.png', 'uploads/hospital/Health Care Center262.png', '', '', 'Contact Number:\r\n+88-0491-615760\r\n+88-01726-077482', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০৪৯১-৬১৫৭৬০\r\n+৮৮-০১৭২৬-০৭৭৪৮২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '258/4, Ukilpara, Bhola Sadar, Bhola.', '২৫৮/৪, উকিলপাড়া, ভোলা সদর, ভোলা।', '', '', 9, 44, '2018-05-04 23:14:12', '2019-12-28 10:57:47'),
(514, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center183.png', 'uploads/hospital/Health Care Center183.png', '', '', 'Contact Number:\r\n+88-0851-52987\r\n+88-01712-997477', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০৮৫১-৫২৯৮৭\r\n+৮৮-০১৭১২-৯৯৭৪৭৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Alam Manjil (1st Floor), Jail Road, West Paikpara, Brahmanbaria Sadar, Brahmanbaria.', 'আলম মঞ্জিল (২য় তলা), জেল রোড, পশ্চিম পাইকপাড়া, ব্রাহ্মনবাড়িয়া সদর,  ব্রাহ্মনবাড়িয়া।', '', '', 11, 63, '2018-05-04 23:28:26', '2019-12-28 11:03:58'),
(515, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center42.png', 'uploads/hospital/Health Care Center42.png', '', '', 'Contact Number:\r\n+88-01720-911596', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭২০-৯১১৫৯৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bishnodi, GT Road, Chairmanghat, Opposite DC Office, Chandpur Sadar, Chandpur.', 'বিশনদী, জিটি রোড, চেয়ারম্যানঘাট, ডিসি অফিসের বিপরীত পাশে, চাঁদপুর সদর, চাঁদপুর।', '', '', 12, 72, '2018-05-05 08:58:27', '2019-12-28 11:08:39'),
(516, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center59.png', 'uploads/hospital/Health Care Center59.png', '', '', 'Contact Number:\r\n+88-01719-363996\r\n+88-01730-030038', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭১৯-৩৬৩৯৯৬\r\n+৮৮-০১৭৩০-০৩০০৩৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '133, Islampur, Nimtola Moor, Fakirpara, Chapainawabganj Sadar, Chapainawabganj.', '১৩৩, ইসলামপুর, নিমতলা মোড়, ফকিরপাড়া, চাঁপাইনবাবগঞ্জ সদর, চাঁপাইনবাবগঞ্জ।', '', '', 13, 80, '2018-05-05 09:16:57', '2019-12-28 11:41:59');
INSERT INTO `hospital` (`id`, `hospital_name`, `b_hospital_name`, `hospital_subname`, `b_hospital_subname`, `hospital_photo`, `photo_path`, `hospital_description`, `b_hospital_description`, `hospital_phone_no`, `b_hospital_phone_no`, `hospital_email_ad`, `hospital_fb_link`, `hospital_web_link`, `hospital_total_bed`, `b_hospital_total_bed`, `hospital_total_doctor`, `b_hospital_total_doctor`, `hospital_total_staff`, `b_hospital_total_staff`, `hospital_address`, `b_hospital_address`, `hospital_latitude`, `hospital_longitude`, `district_id`, `subdistrict_id`, `created_at`, `updated_at`) VALUES
(517, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center191.png', 'uploads/hospital/Health Care Center191.png', '', '', 'Contact Number:\r\n+88-0341-51067\r\n+88-01716-643693', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০৩৪১-৫১০৬৭\r\n+৮৮-০১৭১৬-৬৪৩৬৯৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dipali Building, Boddyamondir Sarak, Cox’sbazar Sadar, Cox’sbazar.', 'দ্বীপালি বিল্ডিং, বৌদ্ধমন্দির সড়ক, কক্সবাজার সদর, কক্সবাজার।', '', '', 17, 121, '2018-05-05 10:12:11', '2019-12-28 11:58:32'),
(518, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center60.png', 'uploads/hospital/Health Care Center60.png', '', '', 'Contact Number:\r\n+88-0531-51876\r\n+88-01732-660017', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০৫৩১-৫১৮৭৬\r\n+৮৮-০১৭৩২-৬৬০০১৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Jhautola, Balubari, Shaheed Minar Road, Dinajpur Sadar, Dinajpur.', 'ঝাউতলা, বালুবাড়ি, শহীদ মিনার রোড, দিনাজপুর সদর, দিনাজপুর।', '', '', 19, 135, '2018-05-05 10:29:37', '2019-12-29 08:00:31'),
(519, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center4.png', 'uploads/hospital/Health Care Center4.png', '', '', 'Contact Number:\r\n+88-01732-660010\r\n+88-01712-396699', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩২-৬৬০০১০\r\n+৮৮-০১৭১২-৩৯৬৬৯৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '1/A, Mosjidbari Road, Chowrangi, Faridpur Sadar, Faridpur.', '১/এ, মসজিদবাড়ি রোড, চৌরঙ্গী, ফরিদপুর সদর, ফরিদপুর।', '', '', 20, 148, '2018-05-05 10:46:43', '2019-12-29 08:09:43'),
(520, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center190.png', 'uploads/hospital/Health Care Center190.png', '', '', 'Contact Number:\r\n+88-0331-73380\r\n+88-01711-796282', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০৩৩১-৭৩৩৮০\r\n+৮৮-০১৭১১-৭৯৬২৮২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Shaheed Sahidullah Kaisar Road, Panchagachhia Sarak, Feni Sadar, Feni.', 'শহীদ সহিদুল্লাহ কায়সার রোড, পঞ্চগাছিয়া সড়ক, ফেনী সদর, ফেনী।', '', '', 21, 157, '2018-05-05 12:01:55', '2019-12-29 08:16:10'),
(521, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center190.png', 'uploads/hospital/Health Care Center190.png', '', '', 'Contact Number:\r\n+88-01733-955003', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩৩-৯৫৫০০৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Hospital Road, Infront of Fire Service Office, Gaibandha Sadar, Gaibandha.', 'হসপিটাল রোড, ফায়ার সার্ভিস অফিসের সামনে, গাইবান্ধা সদর, গাইবান্ধা।', '', '', 22, 163, '2018-05-05 12:14:10', '2019-12-29 08:20:18'),
(522, 'Marie Stopes Clinic ', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center265.png', 'uploads/hospital/Health Care Center265.png', '', '', 'Contact Number:\r\n+88-01733-955012', 'যোগাযোগের নম্বরঃ \r\n+৮৮-০১৭৩৩-৯৫৫০১২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '28, Great Wall City, Nalganj, Gazipur Sadar, Gazipur.', '২৮, গ্রেট ওয়াল সিটি, নলগঞ্জ, গাজীপুর সদর, গাজীপুর।', '', '', 23, 170, '2018-05-06 11:10:27', '2019-12-29 08:33:48'),
(523, 'Marie Stopes Clinic-Tongi', 'মেরী স্টোপস ক্লিনিক-টঙ্গী', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center93.png', 'uploads/hospital/Health Care Center93.png', '', '', 'Contact Number:\r\n+88-02-9804167\r\n+88-01711-620085', 'যোগাযোগের নম্বরঃ \r\n+৮৮-০২-৯৮০৪১৬৭\r\n+৮৮-০১৭১১-৬২০০৮৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '153 (1st Floor), Jalil Khan Market, Opposite Bata Gate, Mymensingh Road, Tongi, Gazipur Sadar, Gazipur.', '১৫৩ (২য় তলা), জলিল খান মার্কেট, বাটা গেইটের বিপরীত পাশে, ময়মনসিংহ রোড, টঙ্গী, গাজীপুর সদর, গাজীপুর।', '', '', 23, 170, '2018-05-06 11:15:04', '2019-12-29 08:33:01'),
(524, 'Marie Stopes Clinic ', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center133.png', 'uploads/hospital/Health Care Center133.png', '', '', 'Contact Number:\r\n+88-01732-660013', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩২-৬৬০০১৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kabarasthan Road, Miapara, Gopalganj Sadar, Gopalganj.', 'কবরস্থান রোড, মিয়াপাড়া, গোপালগঞ্জ সদর, গোপালগঞ্জ।', '', '', 24, 175, '2018-05-06 11:28:41', '2019-12-29 08:38:53'),
(525, 'Marie Stopes Clinic ', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic ', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center217.png', 'uploads/hospital/Health Care Center217.png', '', '', 'Contact Number:\r\n+88-01712-507455', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭১২-৫০৭৪৫৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Jaman Bhaban, Opposite Sardar Mosque, Bazrapur, Jamalpur Sadar, Jamalpur.', 'জামান ভবন, সর্দার মসজিদের বিপরীত পাশে, বজ্রপুর, জামালপুর সদর, জামালপুর।', '', '', 26, 188, '2018-05-06 12:16:15', '2019-12-29 08:49:50'),
(526, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center247.png', 'uploads/hospital/Health Care Center247.png', '', '', 'Contact Number:\r\n+88-0421-63841\r\n+88-01733-955027', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০৪২১-৬৩৮৪১\r\n+৮৮-০১৭৩৩-৯৫৫০২৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Ghop, Zail Road, Kotwali, Jashore Sadar, Jashore.', 'ঘোপ, জেল রোড, কোতওয়ালী, যশোর সদর, যশোর।', '', '', 27, 195, '2018-05-06 12:27:44', '2019-12-29 08:56:43'),
(527, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center486.png', 'uploads/hospital/Health Care Center486.png', '', '', 'Contact Number:\r\n+88-01733-955015', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩৩-৯৫৫০১৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '25, College Road, Poshchim Chandkhathi, Jhalokathi Sadar, Jhalokathi.', '২৫, কলেজ রোড, পশ্চিম চাঁদকাঠি, ঝালকাঠি সদর, ঝালকাঠি।', '', '', 28, 203, '2018-05-06 12:52:22', '2019-12-29 09:03:55'),
(528, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center162.png', 'uploads/hospital/Health Care Center162.png', '', '', 'Contact Number:\r\n+88-01731-288056', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩১-২৮৮০৫৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Islam Bhaban, Professorpara, Islamganj Road, Joypurhat Sadar, Joypurhat.', 'ইসলাম ভবন, প্রফেসরপাড়া, ইসলামগঞ্জ রোড, জয়পুরহাট সদর, জয়পুরহাট।', '', '', 30, 213, '2018-05-06 13:03:31', '2019-12-29 09:12:25'),
(529, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center39.png', 'uploads/hospital/Health Care Center39.png', '', '', 'Contact Number:\r\n+88-041-721902\r\n+88-041-731120\r\n+88-041-731190\r\n+88-01711-850056', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০৪১-৭২১৯০২\r\n+৮৮-০৪১-৭৩১১২০\r\n+৮৮-০৪১-৭৩১১৯০\r\n+৮৮-০১৭১১-৮৫০০৫৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nadira villa (B-12), Mojid Sarani, Sonadanga C/A, Khulna Sadar, Khulna.', 'নাদিরা ভিলা (বি-১২), মজিদ স্বরণী, সোনাডাঙ্গা বা/এ, খুলনা সদর, খুলনা।', '', '', 32, 226, '2018-05-06 13:40:25', '2019-12-29 09:28:10'),
(530, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center276.png', 'uploads/hospital/Health Care Center276.png', '', '', 'Contact Number:\r\n+88-01732-660015\r\n+88-01750-114101', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩২-৬৬০০১৫\r\n+৮৮-০১৭৫০-১১৪১০১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Alka, Fultola, Khulna.', 'অলকা, ফুলতলা, খুলনা।', '', '', 32, 231, '2018-05-06 13:45:55', '2019-12-29 09:25:32'),
(531, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center63.png', 'uploads/hospital/Health Care Center63.png', '', '', 'Contact Number:\r\n+88-01733-955011', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩৩-৯৫৫০১১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '586, Nilganj Road, Ukilpara, Kishoreganj Sadar, Kishoreganj.', '৫৮৬, নীলগঞ্জ রোড, উকিলপাড়া, কিশোরগঞ্জ সদর, কিশোরগঞ্জ।', '', '', 33, 236, '2018-05-06 20:28:13', '2019-12-29 09:35:42'),
(532, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center312.png', 'uploads/hospital/Health Care Center312.png', '', '', 'Contact Number:\r\n+88-01733-955021', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩৩-৯৫৫০২১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'RK Road, Puraton Dakbanglapara, Kurigram Sadar, Kurigram.', 'আরকে রোড, পুরাতন ডাকবাংলাপাড়া, কুড়িগ্রাম সদর, কুড়িগ্রাম।', '', '', 34, 249, '2018-05-06 20:53:08', '2019-12-29 09:41:20'),
(533, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center300.png', 'uploads/hospital/Health Care Center300.png', '', '', 'Contact Number:\r\n+88-01913-617373', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৯১৩-৬১৭৩৭৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Mahmud Villa, 738, Ramgati Road, Majupur, Lakshmipur Sadar, Lakshmipur.', 'মাহ্‌মুদ ভিলা, ৭৩৮, রামগতি রোড, মজুপুর, লক্ষ্মীপুর সদর, লক্ষ্মীপুর।', '', '', 36, 264, '2018-05-06 21:07:20', '2019-12-29 09:49:25'),
(534, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center165.png', 'uploads/hospital/Health Care Center165.png', '', '', 'Contact Number:\r\n+88-01733-955026', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩৩-৯৫৫০২৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'LGED Road, Lalmonirhat Sadar, Lalmonirhat.', 'এলজিইডি রোড, লালমনিরহাট সদর, লালমনিরহাট।\r\n', '', '', 37, 269, '2018-05-06 21:17:49', '2019-12-29 09:53:56'),
(535, 'Marie Stopes Clinic ', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center134.png', 'uploads/hospital/Health Care Center134.png', '', '', 'Contact Number:\r\n+88-01732-660012', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩২-৬৬০০১২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Panichhatra, Shariatpur Road, Madaripur Sadar, Madaripur.', 'পানিছত্র, শরিয়তপুর রোড, মাদারীপুর সদর, মাদারীপুর।', '', '', 38, 274, '2018-05-07 09:40:34', '2019-12-29 09:57:25'),
(536, 'Marie Stopes Clinic ', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center98.png', 'uploads/hospital/Health Care Center98.png', '', '', 'Contact Number:\r\n+88-01733-955008', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩৩-৯৫৫০০৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Nahar Mansion, 114, Upazila Road, North Side of Upazila Office, Vania Moor, Magura Sadar, Magura.', 'নাহার ম্যানসন, ১১৪, উপজেলা রোড, উপজেলা অফিসের উত্তর পাশে, ভানিয়া মোড়, মাগুরা সদর, মাগুরা।', '', '', 39, 278, '2018-05-07 09:56:50', '2019-12-29 10:00:12'),
(537, 'Marie Stopes Clinic ', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center278.png', 'uploads/hospital/Health Care Center278.png', '', '', 'Contact Number:\r\n+88-01712-783955', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭১২-৭৮৩৯৫৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '195, Sarnakar Potty, Madrasa Road, Manikganj Sadar, Manikganj.', '১৯৫, স্বর্ণকার পট্টি, মাদ্রাসা রোড, মানিকগঞ্জ সদর, মানিকগঞ্জ।', '', '', 40, 282, '2018-05-07 10:12:26', '2019-12-29 10:12:39'),
(538, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center473.png', 'uploads/hospital/Health Care Center473.png', '', '', 'Contact Number:\r\n+88-01733-955005', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩৩-৯৫৫০০৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '568, Sadar Ali Road, Mollikpara, Meherpur Sadar, Meherpur.', '৫৬৮, সদর আলী রোড, মল্লিকপাড়া, মেহেরপুর সদর, মেহেরপুর।', '', '', 41, 289, '2018-05-07 10:26:39', '2019-12-29 10:17:13'),
(539, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক ', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center110.png', 'uploads/hospital/Health Care Center110.png', '', '', 'Contact Number:\r\n+88-0861-53090', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০৮৬১-৫৩০৯০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '91, Shamsernagar Road, Moulvibazar Sadar, Moulvibazar.', '৯১, শমসেরনগর রোড, মৌলভীবাজার সদর, মৌলভীবাজার।', '', '', 42, 292, '2018-05-07 10:36:40', '2019-12-29 10:21:57'),
(540, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক ', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক ', 'Health Care Center352.png', 'uploads/hospital/Health Care Center352.png', '', '', 'Contact Number:\r\n+88-01733-955013', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩৩-৯৫৫০১৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Deovog, Zorpukurpar, Munsiganj Sadar, Munsiganj.', 'দেওভোগ, জোড়পুকুরপাড়, মুন্সিগঞ্জ সদর, মুন্সিগঞ্জ।', '', '', 44, 299, '2018-05-07 10:50:31', '2019-12-29 10:27:05'),
(541, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center81.png', 'uploads/hospital/Health Care Center81.png', '', '', 'Contact Number:\r\n+88-01718-757617', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭১৮-৭৫৭৬১৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Shawkat Market (2nd Floor), KB Ismail Road, Gafargaon, Mymensingh.', 'শওকত মার্কেট (৩য় তলা), কেবি ইসমাইল রোড, গফরগাঁও, ময়মনসিংহ।', '', '', 45, 310, '2018-05-07 11:07:38', '2019-12-29 10:32:14'),
(542, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center147.png', 'uploads/hospital/Health Care Center147.png', '', '', 'Contact Number:\r\n+88-01916-953450', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৯১৬-৯৫৩৪৫০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kazir Moor, Main Road, Naogaon Sadar, Naogaon.', 'কাজীর মোড়, মেইন রোড, নওগাঁ সদর, নওগাঁ।', '', '', 46, 318, '2018-05-07 11:17:33', '2019-12-29 10:48:01'),
(543, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center151.png', 'uploads/hospital/Health Care Center151.png', '', '', 'Contact Number:\r\n+88-01733-955025', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩৩-৯৫৫০২৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Boalkhali, Puraton Bus Stand, Narail Sadar, Narail.', 'বোয়ালখালী, পুরাতন বাস স্ট্যান্ড, নড়াইল সদর, নড়াইল।', '', '', 47, 329, '2018-05-07 11:28:06', '2019-12-29 10:54:05'),
(544, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center186.png', 'uploads/hospital/Health Care Center186.png', '', '', 'Contact Number:\r\n+88-0628-63623\r\n+88-01711-620086', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০৬২৮-৬৩৬২৩\r\n+৮৮-০১৭১১-৬২০০৮৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '304, Court Road, Upazila Moor, Narsingdi Sadar, Narsingdi.', '৩০৪, কোর্ট রোড, উপজেলা মোড়, নরসিংদী সদর, নরসিংদী।', '', '', 49, 337, '2018-05-07 11:59:13', '2019-12-29 11:03:05'),
(545, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center13.png', 'uploads/hospital/Health Care Center13.png', '', '', 'Contact Number:\r\n+88-01712-052841', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭১২-০৫২৮৪১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dakshin Borogachha, Hazipara, Natore Sadar, Natore.', 'দক্ষিণ বড়গাছা, হাজীপাড়া, নাটোর সদর, নাটোর।', '', '', 50, 343, '2018-05-07 12:09:20', '2019-12-29 11:09:31'),
(546, 'Marie Stopes Clinic ', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center275.png', 'uploads/hospital/Health Care Center275.png', '', '', 'Contact Number:\r\n+88-01733-955014', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩৩-৯৫৫০১৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '270, Shohor Satpai, Kalibari Moor, Battola, Netrokona Sadar, Netrokona.', '২৭০, শহর সাতপাই, কালীবাড়ি মোড়, বটতলা, নেত্রকোনা সদর, নেত্রকোনা।', '', '', 51, 350, '2018-05-07 12:56:28', '2019-12-29 11:21:28'),
(547, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center159.png', 'uploads/hospital/Health Care Center159.png', '', '', 'Contact Number:\r\n+88-01732-660019', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩২-৬৬০০১৯', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Hospital Road, Shantinagar, Nilfamari Sadar, Nilfamari.', 'হসপিটাল রোড, শান্তিনগর, নীলফামারি সদর, নীলফামারি।', '', '', 52, 360, '2018-05-07 13:08:44', '2019-12-29 11:26:00'),
(548, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center44.png', 'uploads/hospital/Health Care Center44.png', '', '', 'Contact Number:\r\n+88-01718-303293', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭১৮-৩০৩২৯৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Dokrapara, Tetulia Road, Panchagarh Sadar, Panchagarh.', 'দোকরাপাড়া, তেঁতুলিয়া রোড, পঞ্চগড় সদর, পঞ্চগড়।', '', '', 55, 385, '2018-05-07 13:25:23', '2019-12-29 11:44:13'),
(549, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center237.png', 'uploads/hospital/Health Care Center237.png', '', '', 'Contact Number:\r\n+88-01716-011848', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭১৬-০১১৮৪৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Mridha Mansion, Jalerkal Sarak, Puranbazar, Patuakhali Sadar, Patuakhali.', 'মৃধা ম্যনশন, জলেরকাল সড়ক, পুরানবাজার, পটুয়াখালী সদর, পটুয়াখালী।', '', '', 56, 390, '2018-05-07 13:47:57', '2020-01-01 12:43:33'),
(550, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center253.png', 'uploads/hospital/Health Care Center253.png', '', '', 'Contact Number:\r\n+88-01733-955018\r\n+88-01727-077540', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩৩-৯৫৫০১৮\r\n+৮৮-০১৭২৭-০৭৭৫৪০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '206/1, Parerhat Road, Opposite Girls College, Pirojpur Sadar, Pirojpur.', '২০৬/১, পারেরহাট রোড, গার্লস্‌ কলেজের বিপরীত পাশে, পিরোজপুর সদর, পিরোজপুর। ', '', '', 57, 398, '2018-05-07 14:02:33', '2019-12-29 11:56:42'),
(551, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center445.png', 'uploads/hospital/Health Care Center445.png', '', '', 'Contact Number:\r\n+88-01732-660011', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩২-৬৬০০১১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '18, Sajankanda, Rajbari Sadar, Rajbari.', '১৮, স্বজনকান্দা, রাজবাড়ি সদর, রাজবাড়ি।', '', '', 58, 405, '2018-05-07 14:12:47', '2019-12-29 15:42:45'),
(552, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center61.png', 'uploads/hospital/Health Care Center61.png', '', '', 'Contact Number:\r\n+88-0721-771847', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০৭২১-৭৭১৮৪৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '351/318, Barnali Moor, Greater Road, Rajshahi Sadar, Rajshahi.', '৩৫১/৩১৮, বর্ণালী মোড়, গ্রেটার রোড, রাজশাহী সদর, রাজশাহী।', '', '', 59, 410, '2018-05-07 14:21:11', '2019-12-29 15:51:16'),
(553, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center288.png', 'uploads/hospital/Health Care Center288.png', '', '', 'Contact Number:\r\n+88-01733-955022', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩৩-৯৫৫০২২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bijan Sarani, Uttar Kalindipur, Rangamati Sadar, Rangamati.', 'বিজন স্মরণী, উত্তর কালিন্দীপুর, রাঙ্গামাটি সদর, রাঙ্গামাটি।', '', '', 60, 420, '2018-05-07 14:36:17', '2019-12-29 16:55:33'),
(554, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center60.png', 'uploads/hospital/Health Care Center60.png', '', '', 'Contact Number:\r\n+88-0521-66693', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০৫২১-৬৬৬৯৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'House-87/1, Road-2, RK Road, Islambagh, Kotwali, Rangpur Sadar, Rangpur.', 'হাউজ-৮৭/১, রোড-২, আরকে রোড, ইসলামবাগ, কোতওয়ালী, রংপুর সদর, রংপুর।', '', '', 61, 430, '2018-05-07 14:46:31', '2019-12-29 17:01:35'),
(555, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center55.png', 'uploads/hospital/Health Care Center55.png', '', '', 'Contact Number:\r\n+88-01732-660016', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩২-৬৬০০১৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Noor Ahmed Road, Palashpool, Satkhira Sadar, Satkhira.', 'নূর আহ্‌মেদ রোড, পলাশপুল, সাতক্ষীরা সদর, সাতক্ষীরা।', '', '', 62, 438, '2018-05-07 14:56:17', '2019-12-29 17:06:47'),
(556, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center340.png', 'uploads/hospital/Health Care Center340.png', '', '', 'Contact Number:\r\n+88-0601-61460\r\n+88-01712-622599\r\n+88-01726-135778', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০৬০১-৬১৪৬০\r\n+৮৮-০১৭১২-৬২২৫৯৯\r\n+৮৮-০১৭২৬-১৩৫৭৭৮', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '554 (1st Floor), Beside Girls High School, Tolaser, Sadar Road, Shariatpur Sadar, Shariatpur.', '৫৫৪ (২য় তলা), গার্লস্‌ হাই স্কুলের পাশে, তোলাসের, সদর রোড, শরিয়তপুর সদর, শরিয়তপুর।\r\n', '', '', 63, 445, '2018-05-07 15:07:39', '2019-12-29 17:12:14'),
(557, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic ', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center210.png', 'uploads/hospital/Health Care Center210.png', '', '', 'Contact Number:\r\n+88-01718-479801', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭১৮-৪৭৯৮০১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'House-36, Road-1/2, Natunbazar, Kharampur, Sherpur Sadar, Sherpur.', 'হাউজ-৩৬, রোড-১/২, নতুনবাজার, খড়মপুর, শেরপুর সদর, শেরপুর।\r\n', '', '', 64, 451, '2018-05-07 15:16:42', '2020-01-01 13:48:18'),
(558, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center170.png', 'uploads/hospital/Health Care Center170.png', '', '', 'Contact Number:\r\n+88-01711-100906', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭১১-১০০৯০৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '703, SS Road, Sirajganj Sadar, Sirajganj.', '৭০৩, এসএস রোড, সিরাজগঞ্জ সদর, সিরাজগঞ্জ।', '', '', 65, 456, '2018-05-07 15:28:42', '2019-12-29 17:25:44'),
(559, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center311.png', 'uploads/hospital/Health Care Center311.png', '', '', 'Contact Number:\r\n+88-01710-036966', 'যোগাযোগের নম্বরঃ \r\n+৮৮-০১৭১০-০৩৬৯৬৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'ChuniaKhalipara, Shahajadpur, Sirajganj.', 'চুনিয়াখালীপাড়া, শাহাজাদপুর, সিরাজগঞ্জ।', '', '', 65, 462, '2018-05-07 15:32:39', '2019-12-29 17:23:50'),
(560, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center40.png', 'uploads/hospital/Health Care Center40.png', '', '', 'Contact Number:\r\n+88-01732-660025', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩২-৬৬০০২৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Ukilpara, DS Road, Sunamganj Sadar, Sunamganj.', 'উকিলপাড়া, ডিএস রোড, সুনামগঞ্জ সদর, সুনামগঞ্জ।', '', '', 66, 465, '2018-05-07 15:39:50', '2019-12-29 17:34:20'),
(561, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center75.png', 'uploads/hospital/Health Care Center75.png', '', '', 'Contact Number:\r\n+88-01733-955001', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩৩-৯৫৫০০১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Akurtakurpara, Kalibari Road, Tangail Sadar, Tangail.', 'আকুরটাকুরপাড়া, কালীবাড়ি রোড, টাঙ্গাইল সদর, টাঙ্গাইল।', '', '', 68, 488, '2018-05-07 15:49:27', '2019-12-29 17:36:44'),
(562, 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Marie Stopes Clinic', 'মেরী স্টোপস ক্লিনিক', 'Health Care Center354.png', 'uploads/hospital/Health Care Center354.png', '', '', 'Contact Number:\r\n+88-01733-955020', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩৩-৯৫৫০২০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, '648, Ghoshpara, Bangabandhu Road, Behind Roads & Highway Office, Thakurgaon Sadar, Thakurgaon.', '৬৪৮, ঘোষপাড়া, বঙ্গবন্ধু রোড, রোডস্‌ অ্যান্ড হাইওয়ে অফিসের পেছনে, ঠাকুরগাঁও সদর, ঠাকুরগাঁও।', '', '', 69, 500, '2018-05-07 16:00:18', '2019-12-29 17:58:37'),
(565, 'Mymensingh Sadar Hospital', 'ময়মনসিংহ সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, NULL, '', '', 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', '', 45, 305, '2018-06-02 02:11:05', '2019-10-04 17:26:57'),
(566, 'Rajshahi Sadar Hospital', 'রাজশাহী সদর হাসপাতাল  ', 'Sadar Hospital', 'সদর হাসপাতাল  ', NULL, NULL, '', '', 'No data could be found ! ', 'কোন তথ্য পাওয়া যায়নি !', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found ! ', 'কোন তথ্য পাওয়া যায়নি !', '', '', 59, 410, '2018-06-02 15:14:47', '2019-10-05 10:15:37'),
(567, 'Rangpur Sadar Hospital', 'রংপুর সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'No data could be found ! ', 'কোন তথ্য পাওয়া যায়নি ! ', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found ! ', 'কোন তথ্য পাওয়া যায়নি ! ', '', '', 61, 430, '2018-06-02 16:16:16', '2019-10-05 11:15:02'),
(568, 'Shariatpur Sadar Hospital', 'শরিয়তপুর সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, '', '', '', 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি ! ', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি ! ', '', '', 63, 445, '2018-06-02 17:01:19', '2019-10-05 13:50:16'),
(572, 'Bagerhat Sadar Hospital', 'বাগেরহাট সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', 'Health Care Center38.png', 'uploads/hospital/Health Care Center38.png', '', '', 'Contact Number:\r\n+88-01730-324793', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৭৯৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bagerhat Sadar, Bagerhat.', 'বাগেরহাট সদর, বাগেরহাট।', '', '', 72, 520, '2019-10-02 18:09:01', '2019-12-31 20:22:37'),
(573, 'Chitalmari Upazila Health Complex', 'চিতলমারী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center303.png', 'uploads/hospital/Health Care Center303.png', '', '', 'Contact Number:\r\n+88-01730-324570', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৭০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Chitalmari, Bagerhat.', 'চিতলমারী, বাগেরহাট।', '', '', 72, 521, '2019-10-02 18:23:07', '2019-12-31 20:21:59'),
(574, 'Fakirhat Upazila Health Complex ', 'ফকিরহাট উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center420.png', 'uploads/hospital/Health Care Center420.png', '', '', 'Contact Number:\r\n+88-01730-324571', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৭১', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Fakirhat, Bagerhat.', 'ফকিরহাট, বাগেরহাট।', '', '', 72, 522, '2019-10-02 18:31:28', '2019-12-26 08:10:32'),
(575, 'Kachua Upazila Health Complex', 'কচুয়া উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center13.png', 'uploads/hospital/Health Care Center13.png', '', '', 'Contact Number:\r\n+88-01730-324572', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৭২', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Kachua, Bagerhat.', 'কচুয়া, বাগেরহাট।', '', '', 72, 523, '2019-10-02 18:37:07', '2019-12-26 08:13:04'),
(576, 'Mollahat Upazila Health Complex', 'মোল্লাহাট উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center490.png', 'uploads/hospital/Health Care Center490.png', '', '', 'Contact Number:\r\n+88-01730-324573', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৭৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Mollahat, Bagerhat.', 'মোল্লাহাট, বাগেরহাট।', '', '', 72, 524, '2019-10-02 18:42:58', '2019-12-26 08:13:52'),
(577, 'Mongla Upazila Health Complex', 'মংলা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center425.png', 'uploads/hospital/Health Care Center425.png', '', '', 'Contact Number:\r\n+88-01730-324574', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৭৪', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Mongla, Bagerhat.', 'মংলা, বাগেরহাট।', '', '', 72, 525, '2019-10-02 18:49:02', '2019-12-26 08:14:40'),
(578, 'Morrelganj Upazila Health Complex', 'মোড়েলগঞ্জ উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center402.png', 'uploads/hospital/Health Care Center402.png', '', '', 'Contact Number:\r\n+88-01730-324575', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৭৫', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Morrelganj, Bagerhat.', 'মোড়েলগঞ্জ, বাগেরহাট।', '', '', 72, 526, '2019-10-02 21:33:40', '2019-12-26 08:15:22'),
(580, 'Rampal Upazila Health Complex', 'রামপাল উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center260.png', 'uploads/hospital/Health Care Center260.png', '', '', 'Contact Number:\r\n+88-01730-324576', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৭৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Rampal, Bagerhat.', 'রামপাল, বাগেরহাট।', '', '', 72, 527, '2019-10-02 21:44:26', '2019-12-26 08:16:08'),
(581, 'Sharankhola Upazila Health Complex ', 'শরণখোলা উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center156.png', 'uploads/hospital/Health Care Center156.png', '', '', 'Contact Number:\r\n+88-01730-324577', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০১৭৩০-৩২৪৫৭৭', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Sharankhola, Bagerhat.', 'শরণখোলা, বাগেরহাট।', '', '', 72, 528, '2019-10-02 21:53:10', '2019-12-26 08:16:48'),
(582, 'Betagi Upazila Health Complex', 'বেতাগী উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Upazila Health Complex', 'উপজেলা স্বাস্থ্য কমপ্লেক্স', 'Health Care Center466.png', 'uploads/hospital/Health Care Center466.png', '', '', 'Contact Number:    \r\n+88-01730-324406', 'যোগাযোগের নম্বরঃ \r\n+৮৮-০১৭৩০-৩২৪৪০৬', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Betagi, Barguna.', 'বেতাগী, বরগুনা।', '', '', 7, 31, '2019-10-02 22:22:11', '2019-12-28 10:46:34'),
(583, 'Dhaka Sadar Hospital', 'ঢাকা সদর হাসপাতাল', 'Sadar Hospital', 'সদর হাসপাতাল', NULL, NULL, '', '', 'No data could be found ! ', 'কোন তথ্য পাওয়া যায়নি ! ', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'No data could be found !', 'কোন তথ্য পাওয়া যায়নি !', '', '', 18, 129, '2020-01-01 17:17:05', '2020-01-01 17:21:16'),
(584, 'Bangabandhu Sheikh Mujib Medical University (PG Hospital)', 'বঙ্গবন্ধু শেখ মুজিব মেডিক্যাল বিশ্ববিদ্যালয় (পিজি হাসপাতাল)', 'Medical University', 'মেডিক্যাল বিশ্ববিদ্যালয়', NULL, NULL, '', '', 'Contact Number:\r\n+88-02-8611737 \r\n+88-02-8611738 \r\n+88-02-8611739 \r\n+88-02-8611740 \r\n+88-02-8611741 \r\n+88-02-8618653', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০২-৮৬১১৭৩৭\r\n+৮৮-০২-৮৬১১৭৩৮\r\n+৮৮-০২-৮৬১১৭৩৯\r\n+৮৮-০২-৮৬১১৭৪০\r\n+৮৮-০২-৮৬১১৭৪১\r\n+৮৮-০২-৮৬১৮৬৫৩', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Shahbagh, Dhaka-1000', 'শাহ্‌বাগ, ঢাকা-১০০০', '23.740205', '90.394720', 18, 129, '2020-01-02 07:47:18', '2020-01-24 10:59:00'),
(585, 'Dhaka Medical College Hospital', 'ঢাকা মেডিক্যাল কলেজ হাসপাতাল', 'Medical College, Hospital & Clinic', 'মেডিক্যাল কলেজ, হসপিটাল অ্যান্ড ক্লিনিক', NULL, NULL, '', '', 'Contact Number:\r\n+88-02-8626812\r\n+88-02-8626823\r\n+88-02-9500121\r\n+88-02-9505025\r\n+88-02-9669340', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০২-৮৬২৬৮১২\r\n+৮৮-০২-৮৬২৬৮২৩\r\n+৮৮-০২-৯৫০০১২১\r\n+৮৮-০২-৯৫০৫০২৫\r\n+৮৮-০২-৯৬৬৯৩৪০', '', NULL, 'www.medihelpbd.com', '', '', 0, 0, 0, 0, 'Bakshi Bazar, Beside Central Shaheed Minar, 100, Ramna, Dhaka-1000', 'বকশী বাজার, কেন্দ্রীয় শহীদ মিনারের পাশে, ১০০, রমনা, ঢাকা-১০০০', '23.725862', '90.397077', 18, 129, '2020-01-02 08:27:32', '2020-01-24 11:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_doctor`
--

CREATE TABLE `hospital_doctor` (
  `id` int(10) UNSIGNED NOT NULL,
  `hospital_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospital_email`
--

CREATE TABLE `hospital_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `hospital_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospital_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospital_notice`
--

CREATE TABLE `hospital_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospital_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_hospital_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospital_notice_description` blob DEFAULT NULL,
  `b_hospital_notice_description` blob DEFAULT NULL,
  `hospital_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospital_phone`
--

CREATE TABLE `hospital_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `hospital_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospital_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospital_service`
--

CREATE TABLE `hospital_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `hospital_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_hospital_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospital_service_description` blob DEFAULT NULL,
  `b_hospital_service_description` blob DEFAULT NULL,
  `hospital_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `subservice_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_specialist`
--

CREATE TABLE `medical_specialist` (
  `id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_medical_specialist_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_specialist_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_medical_specialist_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specialty` blob DEFAULT NULL,
  `b_specialty` blob DEFAULT NULL,
  `medical_specialist_description` blob DEFAULT NULL,
  `b_medical_specialist_description` blob DEFAULT NULL,
  `medical_specialist_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_medical_specialist_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_specialist_email_ad` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_specialist_details` blob DEFAULT NULL,
  `b_medical_specialist_details` blob DEFAULT NULL,
  `medical_specialist_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_specialist_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_specialist_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee_new` blob DEFAULT NULL,
  `b_fee_new` blob DEFAULT NULL,
  `fee_old` int(11) DEFAULT NULL,
  `b_fee_old` int(11) DEFAULT NULL,
  `fee_report` int(11) DEFAULT NULL,
  `b_fee_report` int(11) DEFAULT NULL,
  `medical_specialist_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_medical_specialist_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_specialist_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `medical_specialist_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_specialists_appointment_booking`
--

CREATE TABLE `medical_specialists_appointment_booking` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `chamber_id` int(10) UNSIGNED NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` tinyint(4) NOT NULL,
  `appointment_type` tinyint(4) NOT NULL,
  `patient_name` varchar(191) NOT NULL,
  `contact_number` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_specialist_appointment`
--

CREATE TABLE `medical_specialist_appointment` (
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `chamber_name` text COLLATE utf8_unicode_ci NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `chamber_name_bn` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `details_bn` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_serial_limit_morning_new_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_serial_limit_morning_new_bn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_serial_limit_morning_report_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_serial_limit_morning_report_bn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_serial_limit_evening_new_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_serial_limit_evening_new_bn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_serial_limit_evening_report_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_serial_limit_evening_report_bn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial_time_morning_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial_time_morning_bn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial_time_evening_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial_time_evening_bn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial_given_before_days_en` int(11) DEFAULT NULL,
  `serial_given_before_days_bn` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_bn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time_morning` time DEFAULT NULL,
  `end_time_morning` time DEFAULT NULL,
  `start_time_evening` time DEFAULT NULL,
  `end_time_evening` time DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_specialist_appointment_notice`
--

CREATE TABLE `medical_specialist_appointment_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `notice` text COLLATE utf8_unicode_ci NOT NULL,
  `notice_bn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_specialist_chamber`
--

CREATE TABLE `medical_specialist_chamber` (
  `id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_chamber_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_medical_specialist_chamber_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_specialist_chamber_description` blob DEFAULT NULL,
  `b_medical_specialist_chamber_description` blob DEFAULT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_specialist_chember`
--

CREATE TABLE `medical_specialist_chember` (
  `id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_chember_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_medical_specialist_chember_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_specialist_chember_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_medical_specialist_chember_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_specilaist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_specialist_email`
--

CREATE TABLE `medical_specialist_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_specialist_notice`
--

CREATE TABLE `medical_specialist_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_specialist_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_medical_specialist_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_specialist_notice_description` blob DEFAULT NULL,
  `b_medical_specialist_notice_description` blob DEFAULT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_specialist_phone`
--

CREATE TABLE `medical_specialist_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_01_15_0000001_create_district_table', 1),
(4, '2017_01_15_000002_create_subdistrict_table', 1),
(5, '2017_01_15_000003_create_product_category_table', 1),
(6, '2017_01_15_00004_create_product_sub_category_table', 1),
(7, '2017_01_15_180411_create_service_table', 1),
(8, '2017_01_15_180501_create_sub_service_table', 1),
(9, '2017_01_15_180606_create_department_table', 1),
(10, '2017_01_15_180658_create_directory_type_table', 1),
(11, '2017_01_15_1807001_create_medical_specialist_table', 1),
(12, '2017_01_15_1807002_create_medical_specialist_phone_table', 1),
(13, '2017_01_15_1807003_create_medical_specialist_email_table', 1),
(14, '2017_01_15_1807004_create_medical_specialist_notice_table', 1),
(15, '2017_01_15_1807005_create_medical_specialist_chember_table', 1),
(16, '2017_01_15_1807006_create_medical_specialist_chamber_table', 1),
(17, '2017_01_15_180752_create_hospital_table', 1),
(18, '2017_01_15_180822_create_hospital_phone_table', 1),
(19, '2017_01_15_180840_create_hospital_email_table', 1),
(20, '2017_01_15_180912_create_hospital_sevice_table', 1),
(21, '2017_01_15_180933_create_hospital_doctor_table', 1),
(22, '2017_01_15_181000_create_hospital_notice_table', 1),
(23, '2017_01_15_181124_create_pharmacy_table', 1),
(24, '2017_01_15_181146_create_pharmacy_phone_table', 1),
(25, '2017_01_15_181208_create_pharmacy_email_table', 1),
(26, '2017_01_15_181229_create_pharmacy_product_table', 1),
(27, '2017_01_15_181249_create_pharmacy_doctor_table', 1),
(28, '2017_01_15_181318_create_pharmacy_notice_table', 1),
(29, '2017_01_15_181713_create_blood_bank_table', 1),
(30, '2017_01_15_181737_create_blood_bank_phone_table', 1),
(31, '2017_01_15_181751_create_blood_bank_email_table', 1),
(32, '2017_01_15_181829_create_blood_bank_service_table', 1),
(33, '2017_01_15_181850_create_blood_bank_notice_table', 1),
(34, '2017_01_15_181925_create_blood_donor_table', 1),
(35, '2017_01_15_182008_create_blood_donor_email_table', 1),
(36, '2017_01_15_182026_create_blood_donor_phone_table', 1),
(37, '2017_01_15_182118_create_air_ambulance_table', 1),
(38, '2017_01_15_182202_create_air_ambulance_phone_table', 1),
(39, '2017_01_15_182219_create_air_ambulance_email_table', 1),
(40, '2017_01_15_182306_create_air_ambulance_notice_table', 1),
(41, '2017_01_15_182307_create_air_ambulance_pricing_table', 1),
(42, '2017_01_15_182609_create_eye_bank_table', 1),
(43, '2017_01_15_182640_create_eye_bank_phone_table', 1),
(44, '2017_01_15_182700_create_eye_bank_email_table', 1),
(45, '2017_01_15_182747_create_eye_bank_service_table', 1),
(46, '2017_01_15_182815_create_eye_bank_notice_table', 1),
(47, '2017_01_15_183632_create_vaccine_point_table', 1),
(48, '2017_01_15_183823_create_vaccine_point_phone_table', 1),
(49, '2017_01_15_183837_create_vaccine_point_email_table', 1),
(50, '2017_01_15_183901_create_vaccine_point_service_table', 1),
(51, '2017_01_15_183920_create_vaccine_point_doctor_table', 1),
(52, '2017_01_15_183946_create_vaccine_point_notice_table', 1),
(53, '2017_01_15_184133_create_skin_care_laser_center_table', 1),
(54, '2017_01_15_184216_create_skin_care_laser_center_phone_table', 1),
(55, '2017_01_15_184230_create_skin_care_laser_center_email_table', 1),
(56, '2017_01_15_184253_create_skin_care_laser_center_service_table', 1),
(57, '2017_01_15_184321_create_skin_care_laser_center_doctor_table', 1),
(58, '2017_01_15_184343_create_skin_care_laser_center_notice_table', 1),
(59, '2017_03_21_100022_create_ambulance_table', 1),
(60, '2017_03_21_100127_create_ambulance_phone_table', 1),
(61, '2017_03_21_100155_create_ambulance_email_table', 1),
(62, '2017_03_21_100314_create_ambulance_notice_table', 1),
(63, '2017_03_21_100357_create_ambulance_pricing_table', 1),
(64, '2017_03_24_103949_create_herbal_center_table', 1),
(65, '2017_03_24_104016_create_herbal_center_phone_table', 1),
(66, '2017_03_24_104036_create_herbal_center_email_table', 1),
(67, '2017_03_24_105458_create_herbal_center_doctor_table', 1),
(68, '2017_03_24_105537_create_herbal_center_service_table', 1),
(69, '2017_03_24_105605_create_herbal_center_notice_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `sub_district_id` int(11) NOT NULL,
  `service_provider` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_details` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `optical`
--

CREATE TABLE `optical` (
  `id` int(10) UNSIGNED NOT NULL,
  `optical_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_optical_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optical_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_optical_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optical_description` blob DEFAULT NULL,
  `b_optical_description` blob DEFAULT NULL,
  `optical_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_optical_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optical_email_ad` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optical_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optical_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optical_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_medicine` blob DEFAULT NULL,
  `b_total_medicine` blob DEFAULT NULL,
  `optical_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_optical_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optical_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `optical_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `optical_doctor`
--

CREATE TABLE `optical_doctor` (
  `id` int(10) UNSIGNED NOT NULL,
  `optical_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `optical_email`
--

CREATE TABLE `optical_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `optical_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optical_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `optical_notice`
--

CREATE TABLE `optical_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optical_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_optical_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optical_notice_description` blob DEFAULT NULL,
  `b_optical_notice_description` blob DEFAULT NULL,
  `optical_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `optical_phone`
--

CREATE TABLE `optical_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `optical_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optical_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `optical_product`
--

CREATE TABLE `optical_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `optical_product_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_optical_product_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optical_product_description` blob DEFAULT NULL,
  `b_optical_product_description` blob DEFAULT NULL,
  `optical_product_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optical_id` int(10) UNSIGNED NOT NULL,
  `product_category_id` int(10) UNSIGNED DEFAULT NULL,
  `product_subcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `optical_service`
--

CREATE TABLE `optical_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `optical_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_optical_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optical_service_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_optical_service_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `optical_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `subservice_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parlour`
--

CREATE TABLE `parlour` (
  `id` int(10) UNSIGNED NOT NULL,
  `parlour_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_parlour_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parlour_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_parlour_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parlour_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parlour_description` blob DEFAULT NULL,
  `b_parlour_description` blob DEFAULT NULL,
  `parlour_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_parlour_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parlour_email_ad` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parlour_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parlour_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parlour_total_bed` blob DEFAULT NULL,
  `b_parlour_total_bed` blob DEFAULT NULL,
  `parlour_total_doctor` int(11) DEFAULT NULL,
  `b_parlour_total_doctor` int(11) DEFAULT NULL,
  `parlour_total_staff` int(11) DEFAULT NULL,
  `b_parlour_total_staff` int(11) DEFAULT NULL,
  `parlour_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_parlour_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parlour_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `parlour_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parlour_doctor`
--

CREATE TABLE `parlour_doctor` (
  `id` int(10) UNSIGNED NOT NULL,
  `parlour_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parlour_email`
--

CREATE TABLE `parlour_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `parlour_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parlour_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parlour_notice`
--

CREATE TABLE `parlour_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parlour_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_parlour_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parlour_notice_description` blob DEFAULT NULL,
  `b_parlour_notice_description` blob DEFAULT NULL,
  `parlour_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parlour_phone`
--

CREATE TABLE `parlour_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `parlour_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parlour_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parlour_service`
--

CREATE TABLE `parlour_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `parlour_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_parlour_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parlour_service_description` blob DEFAULT NULL,
  `b_parlour_service_description` blob DEFAULT NULL,
  `parlour_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `subservice_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('info@medihelpbd.com', '096b6557ee3c87ab014a6d0bd5e5ffb34b818c83ef1d195d3ead6ae356565f73', '2019-04-19 22:22:24');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `id` int(10) UNSIGNED NOT NULL,
  `pharmacy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_pharmacy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacy_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_pharmacy_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacy_description` blob DEFAULT NULL,
  `b_pharmacy_description` blob DEFAULT NULL,
  `pharmacy_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_pharmacy_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacy_email_ad` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacy_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacy_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacy_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_medicine` blob DEFAULT NULL,
  `b_total_medicine` blob DEFAULT NULL,
  `pharmacy_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_pharmacy_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacy_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `pharmacy_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`id`, `pharmacy_name`, `b_pharmacy_name`, `pharmacy_subname`, `b_pharmacy_subname`, `pharmacy_description`, `b_pharmacy_description`, `pharmacy_phone_no`, `b_pharmacy_phone_no`, `pharmacy_email_ad`, `pharmacy_photo`, `photo_path`, `pharmacy_fb_link`, `pharmacy_web_link`, `total_medicine`, `b_total_medicine`, `pharmacy_address`, `b_pharmacy_address`, `pharmacy_latitude`, `pharmacy_longitude`, `district_id`, `subdistrict_id`, `created_at`, `updated_at`) VALUES
(20, 'Lazz Pharma-Kalabagan Branch', 'লাজ ফার্মা-কলাবাগান শাখা', '', '', '', '', 'Contact Number:\r\n+88-02-9110864\r\n+88-02-9111842\r\n+88-02-9117839', 'যোগাযোগের নম্বরঃ\r\n+৮৮-০২-৯১১০৮৬৪\r\n+৮৮-০২-৯১১১৮৪২\r\n+৮৮-০২-৯১১৭৮৩৯', '', NULL, NULL, NULL, 'www.medihelpbd.com', '', '', '63/C, Lake Circus, Mirpur Road, Kalabagan, Dhaka-1205', '৬৩/সি, লেক সার্কাস, মিরপুর রোড, কলাবাগান, ঢাকা-১২০৫', '', '', 18, 129, '2020-01-20 08:49:39', '2020-01-24 10:52:44');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacynew`
--

CREATE TABLE `pharmacynew` (
  `id` int(10) UNSIGNED NOT NULL,
  `pharmacynew_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_pharmacynew_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacynew_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_pharmacynew_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacynew_description` blob DEFAULT NULL,
  `b_pharmacynew_description` blob DEFAULT NULL,
  `pharmacynew_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_pharmacynew_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacynew_email_ad` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacynew_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacynew_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacynew_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_medicine` blob DEFAULT NULL,
  `b_total_medicine` blob DEFAULT NULL,
  `pharmacynew_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_pharmacynew_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacynew_doctor`
--

CREATE TABLE `pharmacynew_doctor` (
  `id` int(10) UNSIGNED NOT NULL,
  `pharmacynew_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacynew_email`
--

CREATE TABLE `pharmacynew_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `pharmacynew_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacynew_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacynew_notice`
--

CREATE TABLE `pharmacynew_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacynew_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_pharmacynew_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacynew_notice_description` blob DEFAULT NULL,
  `b_pharmacynew_notice_description` blob DEFAULT NULL,
  `pharmacynew_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacynew_phone`
--

CREATE TABLE `pharmacynew_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `pharmacynew_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacynew_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacynew_product`
--

CREATE TABLE `pharmacynew_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `pharmacynew_product_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_pharmacynew_product_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacynew_product_description` blob DEFAULT NULL,
  `b_pharmacynew_product_description` blob DEFAULT NULL,
  `pharmacynew_product_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacynew_id` int(10) UNSIGNED NOT NULL,
  `product_category_id` int(10) UNSIGNED DEFAULT NULL,
  `product_subcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacynew_service`
--

CREATE TABLE `pharmacynew_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `pharmacynew_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_pharmacynew_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacynew_service_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_pharmacynew_service_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacynew_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `subservice_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_doctor`
--

CREATE TABLE `pharmacy_doctor` (
  `id` int(10) UNSIGNED NOT NULL,
  `pharmacy_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_email`
--

CREATE TABLE `pharmacy_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `pharmacy_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacy_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_notice`
--

CREATE TABLE `pharmacy_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacy_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_pharmacy_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacy_notice_description` blob DEFAULT NULL,
  `b_pharmacy_notice_description` blob DEFAULT NULL,
  `pharmacy_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_phone`
--

CREATE TABLE `pharmacy_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `pharmacy_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacy_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_product`
--

CREATE TABLE `pharmacy_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `pharmacy_product_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_pharmacy_product_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacy_product_description` blob DEFAULT NULL,
  `b_pharmacy_product_description` blob DEFAULT NULL,
  `pharmacy_product_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacy_id` int(10) UNSIGNED NOT NULL,
  `product_category_id` int(10) UNSIGNED DEFAULT NULL,
  `product_subcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_service`
--

CREATE TABLE `pharmacy_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `pharmacy_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_pharmacy_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacy_service_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_pharmacy_service_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `pharmacy_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `subservice_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `physiotherapy`
--

CREATE TABLE `physiotherapy` (
  `id` int(10) UNSIGNED NOT NULL,
  `physiotherapy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_physiotherapy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physiotherapy_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_physiotherapy_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physiotherapy_description` blob DEFAULT NULL,
  `b_physiotherapy_description` blob DEFAULT NULL,
  `physiotherapy_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_physiotherapy_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physiotherapy_email_ad` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physiotherapy_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physiotherapy_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physiotherapy_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_medicine` blob DEFAULT NULL,
  `b_total_medicine` blob DEFAULT NULL,
  `physiotherapy_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_physiotherapy_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physiotherapy_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `physiotherapy_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `physiotherapy_doctor`
--

CREATE TABLE `physiotherapy_doctor` (
  `id` int(10) UNSIGNED NOT NULL,
  `physiotherapy_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `physiotherapy_email`
--

CREATE TABLE `physiotherapy_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `physiotherapy_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physiotherapy_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `physiotherapy_notice`
--

CREATE TABLE `physiotherapy_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physiotherapy_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_physiotherapy_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physiotherapy_notice_description` blob DEFAULT NULL,
  `b_physiotherapy_notice_description` blob DEFAULT NULL,
  `physiotherapy_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `physiotherapy_phone`
--

CREATE TABLE `physiotherapy_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `physiotherapy_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physiotherapy_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `physiotherapy_product`
--

CREATE TABLE `physiotherapy_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `physiotherapy_product_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_physiotherapy_product_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physiotherapy_product_description` blob DEFAULT NULL,
  `b_physiotherapy_product_description` blob DEFAULT NULL,
  `physiotherapy_product_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physiotherapy_id` int(10) UNSIGNED NOT NULL,
  `product_category_id` int(10) UNSIGNED DEFAULT NULL,
  `product_subcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `physiotherapy_service`
--

CREATE TABLE `physiotherapy_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `physiotherapy_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_physiotherapy_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physiotherapy_service_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_physiotherapy_service_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `physiotherapy_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `subservice_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `b_product_category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `product_category_name`, `b_product_category_name`, `created_at`, `updated_at`) VALUES
(4, 'p1', 'p1', '2018-04-15 12:13:43', '2018-04-15 12:13:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_subcategory`
--

CREATE TABLE `product_subcategory` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_subcategory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `b_product_subcategory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `b_service_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `service_name`, `b_service_name`, `created_at`, `updated_at`) VALUES
(15, 'Diagnostic Test', 'রোগ নির্ণয় সংক্রান্ত পরীক্ষা-নিরীক্ষা ', '2018-04-15 16:25:39', '2018-04-21 22:40:29'),
(17, 'Room Service', 'কক্ষ সেবা', '2018-04-21 22:38:45', '2018-04-21 22:38:45'),
(18, 'Medical Department', 'চিকিৎসা বিভাগ', '2018-04-21 22:39:14', '2018-09-01 12:01:36'),
(20, 'Home Service ', 'হোম সার্ভিস  ', '2018-09-09 19:30:28', '2018-09-09 19:30:28'),
(22, 'Facilities', 'সুযোগ-সুবিধা', '2018-12-01 18:19:03', '2018-12-01 18:19:03'),
(23, 'Air Ambulance', 'এয়ার অ্যাম্বুলেন্স', '2018-12-01 18:20:47', '2018-12-01 18:20:47'),
(24, 'Ambulance', 'অ্যাম্বুলেন্স', '2018-12-01 18:21:12', '2018-12-01 18:21:12'),
(25, 'Pharmacy', 'ফার্মেসী', '2018-12-04 07:55:30', '2018-12-04 07:55:30'),
(26, 'Physiotherapy & Rehabilitation Center', 'ফিজিওথেরাপি অ্যান্ড রিহ্যাবিলিটেশন সেন্টার', '2018-12-04 07:56:09', '2018-12-04 07:56:09'),
(27, 'Blood Bank', 'ব্লাড ব্যাংক', '2018-12-04 07:56:52', '2018-12-04 07:56:52'),
(28, 'Eye Bank', 'আই ব্যাংক', '2018-12-04 07:57:45', '2018-12-04 07:57:45'),
(29, 'Vaccination Center', 'ভ্যাকসিনেশন সেন্টার', '2018-12-04 07:59:43', '2018-12-04 07:59:43'),
(30, 'Medical Service', 'চিকিৎসা সেবা', '2018-12-04 08:00:30', '2018-12-04 08:00:30'),
(31, 'Optical Shop', 'অপটিক্যাল সপ', '2018-12-04 08:01:14', '2018-12-04 08:01:14'),
(32, 'Out Patient Service', 'আউট পেশন্ট সার্ভিস ', '2018-12-04 08:06:09', '2018-12-04 08:06:09'),
(33, 'Health Check Up Package', 'হেলথ্‌ চেক আপ প্যাকেজ', '2018-12-04 08:06:59', '2018-12-04 08:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `skin_laser_center`
--

CREATE TABLE `skin_laser_center` (
  `id` int(10) UNSIGNED NOT NULL,
  `skin_laser_center_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_skin_laser_center_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skin_laser_center_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_skin_laser_center_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skin_laser_center_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skin_laser_center_description` blob DEFAULT NULL,
  `b_skin_laser_center_description` blob DEFAULT NULL,
  `skin_laser_center_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_skin_laser_center_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skin_laser_center_email_ad` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skin_laser_center_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skin_laser_center_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skin_laser_center_total_bed` blob DEFAULT NULL,
  `b_skin_laser_center_total_bed` blob DEFAULT NULL,
  `skin_laser_center_total_doctor` int(11) DEFAULT NULL,
  `b_skin_laser_center_total_doctor` int(11) DEFAULT NULL,
  `skin_laser_center_total_staff` int(11) DEFAULT NULL,
  `b_skin_laser_center_total_staff` int(11) DEFAULT NULL,
  `skin_laser_center_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_skin_laser_center_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skin_laser_center_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `skin_laser_center_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skin_laser_center_doctor`
--

CREATE TABLE `skin_laser_center_doctor` (
  `id` int(10) UNSIGNED NOT NULL,
  `skin_laser_center_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skin_laser_center_email`
--

CREATE TABLE `skin_laser_center_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `skin_laser_center_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skin_laser_center_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skin_laser_center_notice`
--

CREATE TABLE `skin_laser_center_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skin_laser_center_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_skin_laser_center_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skin_laser_center_notice_description` blob DEFAULT NULL,
  `b_skin_laser_center_notice_description` blob DEFAULT NULL,
  `skin_laser_center_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skin_laser_center_phone`
--

CREATE TABLE `skin_laser_center_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `skin_laser_center_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skin_laser_center_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skin_laser_center_service`
--

CREATE TABLE `skin_laser_center_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `skin_laser_center_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_skin_laser_center_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skin_laser_center_service_description` blob DEFAULT NULL,
  `b_skin_laser_center_service_description` blob DEFAULT NULL,
  `skin_laser_center_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `subservice_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subdistrict`
--

CREATE TABLE `subdistrict` (
  `id` int(11) NOT NULL,
  `sub_district_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `b_sub_district_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subdistrict`
--

INSERT INTO `subdistrict` (`id`, `sub_district_name`, `b_sub_district_name`, `district_id`, `created_at`, `updated_at`) VALUES
(21, 'Bandarban Sadar ', 'বান্দরবান সদর   ', 6, '2017-10-15 23:27:33', '2017-10-15 23:27:33'),
(22, 'Alikadam ', 'আলীকদম  ', 6, '2017-10-15 23:28:39', '2017-10-15 23:28:39'),
(23, 'Lama  ', 'লামা	', 6, '2017-10-15 23:29:37', '2017-10-15 23:29:37'),
(24, 'Naikhongchhari ', 'নাইক্ষ্যংছড়ি', 6, '2017-10-15 23:30:30', '2017-10-15 23:30:30'),
(25, 'Rowangchhari  ', 'রোয়াংছড়ি', 6, '2017-10-15 23:31:06', '2017-10-15 23:31:06'),
(26, 'Ruma ', 'রুমা', 6, '2017-10-15 23:31:54', '2017-10-15 23:31:54'),
(27, 'Thanchi ', 'থানচি', 6, '2017-10-15 23:32:54', '2017-10-15 23:32:54'),
(28, 'Barguna Sadar ', 'বরগুনা সদর', 7, '2017-10-16 20:56:59', '2017-10-16 20:56:59'),
(29, 'Amtali ', 'আমতলী', 7, '2017-10-16 20:58:07', '2019-12-30 16:56:11'),
(30, 'Bamna ', 'বামনা', 7, '2017-10-16 20:59:03', '2017-10-16 20:59:03'),
(31, 'Betagi', 'বেতাগী', 7, '2017-10-16 20:59:46', '2017-10-16 20:59:46'),
(32, 'Patharghata', 'পাথরঘাটা', 7, '2017-10-16 21:00:30', '2017-10-16 21:00:30'),
(33, 'Taltali ', 'তালতলী', 7, '2017-10-16 21:01:04', '2019-12-30 16:56:46'),
(34, 'Barishal Sadar ', 'বরিশাল সদর', 8, '2017-10-19 09:49:40', '2018-04-02 11:47:51'),
(35, 'Agailjhara ', 'আগৈলঝাড়া', 8, '2017-10-19 09:51:07', '2017-10-19 09:51:07'),
(36, 'Babuganj  ', 'বাবুগঞ্জ', 8, '2017-10-19 09:51:56', '2017-10-19 09:51:56'),
(37, 'Bakerganj ', 'বাকেরগঞ্জ', 8, '2017-10-19 09:53:24', '2017-10-19 09:53:24'),
(38, 'Banaripara ', 'বানারীপাড়া', 8, '2017-10-19 09:54:09', '2017-10-19 09:54:09'),
(39, 'Gournadi  ', 'গৌরনদী', 8, '2017-10-19 09:54:59', '2017-10-19 09:54:59'),
(40, 'Hizla ', 'হিজলা', 8, '2017-10-19 09:55:35', '2017-10-19 09:55:35'),
(41, 'Mehendiganj ', 'মেহেন্দিগঞ্জ', 8, '2017-10-19 09:56:10', '2017-10-19 09:56:10'),
(42, 'Muladi ', 'মুলাদী', 8, '2017-10-19 09:56:49', '2017-10-19 09:56:49'),
(43, 'Wazirpur ', 'উজিরপুর', 8, '2017-10-19 09:57:31', '2017-10-19 09:57:31'),
(44, 'Bhola Sadar ', 'ভোলা সদর', 9, '2017-10-19 09:59:08', '2017-10-19 09:59:08'),
(45, 'Borhanuddin', 'বোরহানউদ্দিন', 9, '2017-10-19 09:59:54', '2017-10-19 09:59:54'),
(46, 'Charfashion ', 'চরফ্যাশন', 9, '2017-10-19 10:00:35', '2018-03-15 19:25:39'),
(47, 'Daulatkhan ', 'দৌলতখান', 9, '2017-10-19 10:01:16', '2017-10-19 10:01:16'),
(48, 'Lalmohan ', 'লালমোহন', 9, '2017-10-19 10:02:14', '2017-10-19 10:02:14'),
(49, 'Manpura ', 'মনপুরা', 9, '2017-10-19 10:03:01', '2017-10-19 10:03:01'),
(50, 'Tajumuddin ', 'তজুমুদ্দিন', 9, '2017-10-19 10:03:43', '2017-10-19 10:03:43'),
(51, 'Bagura Sadar ', 'বগুড়া সদর', 10, '2017-10-19 10:06:23', '2018-04-23 13:09:22'),
(52, 'Adamdighi ', 'আদমদীঘি', 10, '2017-10-19 10:07:37', '2017-10-19 10:07:37'),
(53, 'Dhunat ', 'ধুনট', 10, '2017-10-19 10:08:33', '2017-10-19 10:08:33'),
(54, 'Dhupchanchia ', 'ধুপচাঁচিয়া', 10, '2017-10-19 10:09:16', '2017-10-19 10:09:16'),
(55, 'Gabtoli ', 'গাবতলী', 10, '2017-10-19 10:10:08', '2018-05-28 11:10:42'),
(56, 'Kahaloo 	', 'কাহালু', 10, '2017-10-19 10:11:04', '2017-10-19 10:11:04'),
(57, 'Nandigram ', 'নন্দীগ্রাম', 10, '2017-10-19 10:11:41', '2017-10-19 10:11:41'),
(58, 'Sariakandi ', 'সারিয়াকান্দি', 10, '2017-10-19 10:12:17', '2017-10-19 10:12:17'),
(59, 'Shajahanpur  ', 'শাজাহানপুর', 10, '2017-10-19 10:13:03', '2017-10-19 10:13:03'),
(60, 'Sherpur ', 'শেরপুর', 10, '2017-10-19 10:13:39', '2017-10-19 10:13:39'),
(61, 'Shibganj ', 'শিবগঞ্জ', 10, '2017-10-19 10:14:17', '2017-10-19 10:14:17'),
(62, 'Sonatola ', 'সোনাতলা', 10, '2017-10-19 10:15:05', '2017-10-19 10:15:05'),
(63, 'Brahmanbaria Sadar', 'ব্রাহ্মণবাড়িয়া সদর', 11, '2017-10-19 10:16:38', '2017-10-19 10:16:38'),
(64, 'Akhaura  ', 'আখাউড়া', 11, '2017-10-19 10:17:21', '2017-10-19 10:17:21'),
(65, 'Ashuganj', 'আশুগঞ্জ', 11, '2017-10-19 10:18:04', '2017-10-19 10:18:04'),
(66, 'Bancharampur', 'বাঞ্ছারামপুর', 11, '2017-10-19 10:18:58', '2017-10-19 10:18:58'),
(67, 'Bijoynagar  ', 'বিজয়নগর', 11, '2017-10-19 10:19:37', '2018-03-15 19:00:24'),
(68, 'Kasba ', 'কসবা', 11, '2017-10-19 10:20:16', '2017-10-19 10:20:16'),
(69, 'Nabinagar ', 'নবীনগর', 11, '2017-10-19 10:20:53', '2018-03-15 19:01:09'),
(70, 'Nasirnagar ', 'নাসিরনগর', 11, '2017-10-19 10:21:30', '2018-03-15 19:01:53'),
(71, 'Sarail', 'সরাইল', 11, '2017-10-19 10:22:17', '2017-10-19 10:22:17'),
(72, 'Chandpur Sadar ', 'চাঁদপুর সদর', 12, '2017-10-19 10:24:17', '2017-10-19 10:24:17'),
(73, 'Haimchar ', 'হাইমচর', 12, '2017-10-19 10:25:00', '2017-10-19 10:25:00'),
(74, 'Haziganj ', 'হাজীগঞ্জ', 12, '2017-10-19 10:25:34', '2017-10-19 10:25:34'),
(75, 'Faridganj ', 'ফরিদগঞ্জ', 12, '2017-10-19 10:27:32', '2017-10-19 10:27:32'),
(76, 'Kachua ', 'কচুয়া', 12, '2017-10-19 10:28:33', '2017-10-19 10:28:33'),
(77, 'Matlab Dakshin ', 'মতলব দক্ষিন', 12, '2017-10-19 10:29:58', '2017-10-19 10:29:58'),
(78, 'Matlab Uttar ', 'মতলব উত্তর', 12, '2017-10-19 10:31:13', '2017-10-19 10:31:13'),
(79, 'Shahrasti  ', 'শাহ্‌রাস্তি', 12, '2017-10-19 10:32:59', '2017-10-19 10:32:59'),
(80, 'Chapainawabganj Sadar', 'চাঁপাইনবাবগঞ্জ সদর', 13, '2017-10-19 10:35:29', '2017-10-19 10:35:29'),
(81, 'Bholahat  ', 'ভোলাহাট', 13, '2017-10-19 10:36:10', '2017-10-19 10:36:10'),
(82, 'Gomastapur ', 'গোমস্তাপুর', 13, '2017-10-19 10:37:02', '2017-10-19 10:37:02'),
(83, 'Nachol ', 'নাচোল', 13, '2017-10-19 10:37:58', '2017-10-19 10:37:58'),
(84, 'Shibganj', 'শিবগঞ্জ', 13, '2017-10-19 10:38:42', '2017-10-19 10:38:42'),
(85, 'Chattagram Sadar ', 'চট্টগ্রাম সদর', 14, '2017-10-19 10:41:25', '2018-04-02 11:50:54'),
(86, 'Anwara ', 'আনোয়ারা', 14, '2017-10-19 10:42:05', '2017-10-19 10:42:05'),
(87, 'Banshkhali ', 'বাঁশখালী', 14, '2017-10-19 10:43:07', '2017-10-19 10:43:07'),
(88, 'Boalkhali ', 'বোয়ালখালী', 14, '2017-10-19 10:45:45', '2017-10-19 10:45:45'),
(89, 'Chandanaish ', 'চন্দনাঈশ', 14, '2017-10-19 10:46:33', '2017-10-19 10:46:33'),
(90, 'Fatikchhari ', 'ফটিকছড়ি', 14, '2017-10-19 10:47:37', '2017-10-19 10:47:37'),
(92, 'Hathazari ', 'হাটহাজারী', 14, '2017-10-19 10:49:11', '2017-10-19 10:49:11'),
(93, 'Lohagara ', 'লোহাগাড়া', 14, '2017-10-19 10:50:02', '2017-10-19 10:50:02'),
(94, 'Mirsarai ', 'মীরসরাই', 14, '2017-10-19 10:51:01', '2017-10-19 10:51:01'),
(95, 'Patiya ', 'পটিয়া', 14, '2017-10-19 10:51:40', '2017-10-19 10:51:40'),
(96, 'Rangunia ', 'রাঙ্গুনিয়া', 14, '2017-10-19 10:52:37', '2017-10-19 10:52:37'),
(97, 'Rawzan ', 'রাউজান', 14, '2017-10-19 10:53:25', '2018-04-24 14:41:21'),
(98, 'Sandwip ', 'সন্দ্বীপ', 14, '2017-10-19 10:54:07', '2017-10-19 10:54:07'),
(99, 'Satkania ', 'সাতকানিয়া', 14, '2017-10-19 10:54:50', '2017-10-19 10:54:50'),
(100, 'Sitakunda ', 'সীতাকুন্ড', 14, '2017-10-19 10:55:33', '2017-10-19 10:55:33'),
(101, 'Chuadanga Sadar ', 'চুয়াডাঙ্গা সদর', 15, '2017-10-19 10:57:23', '2017-10-19 10:57:23'),
(102, 'Alamdanga ', 'আলমডাঙ্গা', 15, '2017-10-19 10:58:11', '2017-10-19 10:58:11'),
(103, 'Damurhuda', 'দামুড়হুদা', 15, '2017-10-19 10:58:56', '2017-10-19 10:58:56'),
(104, 'Jibannagar', 'জীবননগর', 15, '2017-10-19 10:59:51', '2018-03-15 20:14:14'),
(105, 'Cumilla Adarsha Sadar  ', 'কুমিল্লা আদর্শ সদর', 16, '2017-10-19 11:01:24', '2018-04-03 14:44:12'),
(106, 'Cumilla Sadar Dakshin ', 'কুমিল্লা সদর দক্ষিণ', 16, '2017-10-19 11:02:31', '2018-04-03 14:44:51'),
(107, 'Barura ', 'বরুড়া', 16, '2017-10-19 11:03:14', '2017-10-19 11:03:14'),
(108, 'Brahmanpara', 'ব্রাহ্মণপাড়া', 16, '2017-10-19 11:05:47', '2017-10-19 11:05:47'),
(109, 'Burichong ', 'বুড়িচং', 16, '2017-10-19 11:06:31', '2017-10-19 11:06:31'),
(110, 'Chandina ', 'চান্দিনা', 16, '2017-10-19 11:07:12', '2017-10-19 11:07:12'),
(111, 'Chowddagram ', 'চৌদ্দগ্রাম', 16, '2017-10-19 11:07:52', '2017-10-19 11:07:52'),
(112, 'Daudkandi ', 'দাউদকান্দি', 16, '2017-10-19 11:08:40', '2017-10-19 11:08:40'),
(113, 'Debidwar ', 'দেবীদ্বার', 16, '2017-10-19 11:09:23', '2017-10-19 11:09:23'),
(114, 'Homna ', 'হোমনা', 16, '2017-10-19 11:10:13', '2017-10-19 11:10:13'),
(115, 'Laksam', 'লাকসাম', 16, '2017-10-19 11:10:56', '2017-10-19 11:10:56'),
(116, 'Meghna ', 'মেঘনা', 16, '2017-10-19 11:11:50', '2017-10-19 11:11:50'),
(117, 'Monoharganj ', 'মনোহরগঞ্জ', 16, '2017-10-19 11:12:47', '2017-10-19 11:12:47'),
(118, 'Muradnagar', 'মুরাদনগর', 16, '2017-10-19 11:13:38', '2018-03-15 20:44:41'),
(119, 'Nangalkot ', 'লাঙ্গলকোট', 16, '2017-10-19 11:14:22', '2017-10-19 11:14:22'),
(120, 'Titas ', 'তিতাস', 16, '2017-10-19 11:15:07', '2017-10-19 11:15:07'),
(121, 'Cox\'sbazar Sadar', 'কক্সবাজার সদর   ', 17, '2017-10-19 11:17:25', '2017-10-19 11:17:25'),
(122, 'Chakaria  ', 'চকোরিয়া', 17, '2017-10-19 11:18:27', '2017-10-19 11:18:27'),
(123, 'Kutubdia', 'কুতুবদিয়া', 17, '2017-10-19 11:19:28', '2017-10-19 11:19:28'),
(124, 'Moheshkhali ', 'মহেশখালী', 17, '2017-10-19 11:20:23', '2017-10-19 11:20:23'),
(125, 'Pekua', 'পেকুয়া', 17, '2017-10-19 11:21:09', '2017-10-19 11:21:09'),
(126, 'Ramu', 'রামু', 17, '2017-10-19 11:22:01', '2017-10-19 11:22:01'),
(127, 'Teknaf', 'টেকনাফ', 17, '2017-10-19 11:22:50', '2017-10-19 11:22:50'),
(128, 'Ukhia', 'উখিয়া', 17, '2017-10-19 11:23:35', '2017-10-19 11:23:35'),
(129, 'Dhaka Sadar ', 'ঢাকা সদর', 18, '2017-10-19 11:25:00', '2017-10-19 11:25:00'),
(130, 'Dhamrai', 'ধামরাই', 18, '2017-10-19 11:25:41', '2017-10-19 11:25:41'),
(131, 'Dohar ', 'দোহার', 18, '2017-10-19 11:26:32', '2017-10-19 11:26:32'),
(132, 'Keraniganj ', 'কেরানীগঞ্জ', 18, '2017-10-19 11:27:14', '2017-10-19 11:27:14'),
(133, 'Nawabganj ', 'নবাবগঞ্জ', 18, '2017-10-19 11:27:54', '2017-10-19 11:27:54'),
(134, 'Savar ', 'সাভার', 18, '2017-10-19 11:28:37', '2017-10-19 11:28:37'),
(135, 'Dinajpur Sadar ', 'দিনাজপুর সদর', 19, '2017-10-19 11:44:24', '2017-10-19 11:44:24'),
(136, 'Birampur', 'বিরামপুর', 19, '2017-10-19 11:45:16', '2017-10-19 11:45:16'),
(137, 'Birganj', 'বীরগঞ্জ', 19, '2017-10-19 11:48:09', '2017-10-19 11:48:09'),
(138, 'Birol ', 'বিরল', 19, '2017-10-19 11:48:52', '2017-10-19 11:48:52'),
(139, 'Bochaganj ', 'বোচাগঞ্জ', 19, '2017-10-19 11:49:37', '2017-10-19 11:49:37'),
(140, 'Chirirbandar', 'চিরিরবন্দর', 19, '2017-10-19 11:50:27', '2017-10-19 11:50:27'),
(141, 'Fulbari', 'ফুলবাড়ি', 19, '2017-10-19 11:51:36', '2017-10-19 11:51:36'),
(142, 'Ghoraghat ', 'ঘোড়াঘাট', 19, '2017-10-19 11:52:18', '2017-10-19 11:52:18'),
(143, 'Hakimpur ', 'হাকিমপুর', 19, '2017-10-19 11:53:05', '2017-10-19 11:53:05'),
(144, 'Kaharol ', 'কাহারোল', 19, '2017-10-19 11:53:52', '2017-10-19 11:53:52'),
(145, 'Khansama ', 'খানসামা', 19, '2017-10-19 11:54:32', '2017-10-19 11:54:32'),
(146, 'Nawabganj ', 'নবাবগঞ্জ', 19, '2017-10-19 11:55:16', '2017-10-19 11:55:16'),
(147, 'Parbatipur ', 'পার্বতীপুর', 19, '2017-10-19 11:55:59', '2017-10-19 11:55:59'),
(148, 'Faridpur Sadar ', 'ফরিদপুর সদর', 20, '2017-10-19 11:59:52', '2017-10-19 11:59:52'),
(149, 'Alfadanga', 'আলফাডাঙা', 20, '2017-10-19 12:03:53', '2017-10-19 12:03:53'),
(150, 'Bhanga', 'ভাঙ্গা', 20, '2017-10-19 12:04:56', '2017-10-19 12:04:56'),
(151, 'Boalmari', 'বোয়ালমারী', 20, '2017-10-19 12:05:53', '2017-10-19 12:05:53'),
(152, 'Charbhadrason', 'চরভদ্রাসন', 20, '2017-10-19 12:06:50', '2017-10-19 12:06:50'),
(153, 'Madhukhali', 'মধুখালী', 20, '2017-10-19 12:07:51', '2017-10-19 12:07:51'),
(154, 'Nagarkanda', 'নগরকান্দা', 20, '2017-10-19 12:08:53', '2017-10-19 12:08:53'),
(155, 'Sadarpur', 'সদরপুর', 20, '2017-10-19 12:09:41', '2017-10-19 12:09:41'),
(156, 'Saltha ', 'সালথা', 20, '2017-10-19 12:10:23', '2017-10-19 12:10:23'),
(157, 'Feni Sadar ', 'ফেনী সদর', 21, '2017-10-19 12:12:07', '2017-10-19 12:12:07'),
(158, 'Chhagalnaiya ', 'ছাগলনাইয়া', 21, '2017-10-19 12:13:07', '2017-10-19 12:13:07'),
(159, 'Daganbhuiyan ', 'দাগনভূঁইয়া', 21, '2017-10-19 12:13:48', '2017-10-19 12:13:48'),
(160, 'Fulgazi', 'ফুলগাজী', 21, '2017-10-19 12:15:21', '2017-10-19 12:15:21'),
(161, 'Parshuram ', 'পরশুরাম', 21, '2017-10-19 12:16:02', '2017-10-19 12:16:02'),
(162, 'Sonagazi ', 'সোনাগাজী', 21, '2017-10-19 12:16:39', '2017-10-19 12:16:39'),
(163, 'Gaibandha Sadar ', 'গাইবান্ধা সদর', 22, '2017-10-19 12:20:00', '2017-10-19 12:20:00'),
(164, 'Fulchhari ', 'ফুলছড়ি', 22, '2017-10-19 12:20:51', '2017-10-19 12:20:51'),
(165, 'Gobindaganj ', 'গোবিন্দগঞ্জ', 22, '2017-10-19 12:21:39', '2017-10-19 12:21:39'),
(166, 'Palashbari ', 'পলাশবাড়ি', 22, '2017-10-19 12:22:21', '2017-10-19 12:22:21'),
(167, 'Sadullapur ', 'সাদুল্লাপুর', 22, '2017-10-19 12:23:13', '2017-10-19 12:23:13'),
(168, 'Saghata', 'সাঘাটা', 22, '2017-10-19 12:24:05', '2017-10-19 12:24:05'),
(169, 'Sundarganj ', 'সুন্দরগঞ্জ', 22, '2017-10-19 12:24:46', '2017-10-19 12:24:46'),
(170, 'Gazipur Sadar ', 'গাজীপুর সদর', 23, '2017-10-19 12:26:26', '2017-10-19 12:26:26'),
(171, 'Kaliakoir ', 'কালিয়াকৈর', 23, '2017-10-19 12:27:12', '2019-12-30 18:18:19'),
(172, 'Kaliganj ', 'কালীগঞ্জ', 23, '2017-10-19 12:27:50', '2017-10-19 12:27:50'),
(173, 'Kapasia ', 'কাপাসিয়া', 23, '2017-10-19 12:28:34', '2017-10-19 12:28:34'),
(174, 'Sreepur', 'শ্রীপুর', 23, '2017-10-19 12:29:22', '2017-10-19 12:29:22'),
(175, 'Gopalganj Sadar', 'গোপালগঞ্জ সদর', 24, '2017-10-19 12:30:47', '2017-10-19 12:30:47'),
(176, 'Kashiani ', 'কাশিয়ানী', 24, '2017-10-19 12:31:26', '2017-10-19 12:31:26'),
(177, 'Kotalipara ', 'কোটালীপাড়া', 24, '2017-10-19 12:32:11', '2017-10-19 12:32:11'),
(178, 'Muksedpur ', 'মুকসেদপুর', 24, '2017-10-19 12:32:54', '2017-10-19 12:32:54'),
(179, 'Tungipara', 'টুঙ্গীপাড়া', 24, '2017-10-19 12:33:42', '2017-10-19 12:33:42'),
(180, 'Habiganj Sadar ', 'হবিগঞ্জ সদর', 25, '2017-10-19 12:35:02', '2017-10-19 12:35:02'),
(181, 'Azmiriganj ', 'আজমিরীগঞ্জ ', 25, '2017-10-19 12:37:18', '2017-10-19 12:37:18'),
(182, 'Bahubal', 'বাহুবল', 25, '2017-10-19 12:38:13', '2017-10-19 12:38:13'),
(183, 'Baniachong ', 'বানিয়াচং', 25, '2017-10-19 12:39:02', '2017-10-19 12:39:02'),
(184, 'Chunarughat ', 'চুনারুঘাট', 25, '2017-10-19 12:39:43', '2017-10-19 12:39:43'),
(185, 'Madhabpur', 'মাধবপুর', 25, '2017-10-19 12:40:31', '2017-10-19 12:40:31'),
(186, 'Nabiganj', 'নবীগঞ্জ', 25, '2017-10-19 12:41:39', '2017-10-19 12:41:39'),
(187, 'Lakhai', 'লাখাই', 25, '2017-10-19 12:42:29', '2017-10-19 12:42:29'),
(188, 'Jamalpur Sadar ', 'জামালপুর সদর', 26, '2017-10-19 12:45:36', '2017-10-19 12:45:36'),
(189, 'Bakshiganj ', 'বকশীগঞ্জ', 26, '2017-10-19 12:46:20', '2017-10-19 12:46:20'),
(190, 'Dewanganj ', 'দেওয়ানগঞ্জ', 26, '2017-10-19 12:47:04', '2017-10-19 12:47:04'),
(191, 'Islampur ', 'ইসলামপুর', 26, '2017-10-19 12:47:45', '2017-10-19 12:47:45'),
(192, 'Madarganj ', 'মাদারগঞ্জ', 26, '2017-10-19 12:48:28', '2017-10-19 12:48:28'),
(193, 'Melandaha ', 'মেলান্দহ', 26, '2017-10-19 12:49:10', '2017-10-19 12:49:10'),
(194, 'Sarishabari', 'সরিষাবাড়ি', 26, '2017-10-19 12:49:54', '2017-10-19 12:49:54'),
(195, 'Jashore Sadar ', 'যশোর সদর', 27, '2017-10-19 12:51:42', '2018-04-02 11:58:51'),
(196, 'Abhoynagar ', 'অভয়নগর', 27, '2017-10-19 12:52:41', '2018-03-15 20:20:01'),
(197, 'Bagherpara  ', 'বাঘেরপাড়া', 27, '2017-10-19 12:53:29', '2017-10-19 12:53:29'),
(198, 'Chowgachha', 'চৌগাছা', 27, '2017-10-19 12:54:19', '2017-10-19 12:54:19'),
(199, 'Jhikargachha', 'ঝিকরগাছা', 27, '2017-10-19 12:55:07', '2017-10-19 12:55:07'),
(200, 'Keshabpur', 'কেশবপুর', 27, '2017-10-19 12:56:07', '2017-10-19 12:56:07'),
(201, 'Monirampur', 'মনিরামপুর', 27, '2017-10-19 12:57:01', '2017-10-19 12:57:01'),
(202, 'Sharsha', 'শার্শা', 27, '2017-10-19 12:58:01', '2017-10-19 12:58:01'),
(203, 'Jhalokathi Sadar', 'ঝালকাঠি সদর', 28, '2017-10-19 13:01:25', '2017-10-19 13:01:25'),
(204, 'Kathalia ', 'কাঁঠালিয়া', 28, '2017-10-19 13:02:22', '2017-10-19 13:02:22'),
(205, 'Nalchhity', 'নলছিটি', 28, '2017-10-19 13:03:13', '2017-10-19 13:03:13'),
(206, 'Rajapur', 'রাজাপুর', 28, '2017-10-19 13:04:05', '2017-10-19 13:04:05'),
(207, 'Jhenaidah Sadar', 'ঝিনাইদহ সদর', 29, '2017-10-19 13:05:53', '2017-10-19 13:05:53'),
(208, 'Harinakunda', 'হরিণাকুন্ড', 29, '2017-10-19 13:06:39', '2017-10-19 13:06:39'),
(209, 'Kaliganj', 'কালীগঞ্জ', 29, '2017-10-19 13:08:43', '2017-10-19 13:08:43'),
(210, 'Kotchandpur', 'কোটচাঁদপুর', 29, '2017-10-19 13:10:04', '2017-10-19 13:10:04'),
(211, 'Moheshpur', 'মহেশপুর', 29, '2017-10-19 13:10:51', '2017-10-19 13:10:51'),
(212, 'Shoilkupa', 'শৈলকুপা', 29, '2017-10-19 13:12:09', '2019-12-30 18:58:51'),
(213, 'Joypurhat Sadar', 'জয়পুরহাট সদর', 30, '2017-10-19 13:13:59', '2017-10-19 13:13:59'),
(214, 'Akkelpur', 'আক্কেলপুর', 30, '2017-10-19 13:14:44', '2017-10-19 13:14:44'),
(215, 'Kalai', 'কালাই', 30, '2017-10-19 13:15:35', '2017-10-19 13:15:35'),
(216, 'Khetlal', 'ক্ষেতলাল', 30, '2017-10-19 13:16:37', '2017-10-19 13:16:37'),
(217, 'Panchbibi ', 'পাঁচবিবি', 30, '2017-10-19 13:17:40', '2017-10-19 13:17:40'),
(218, 'Khagrachhari Sadar', 'খাগড়াছড়ি সদর', 31, '2017-10-19 13:22:53', '2017-10-19 13:22:53'),
(219, 'Dighinala', 'দীঘিনালা', 31, '2017-10-19 13:23:41', '2017-10-19 13:23:41'),
(220, 'Lakshmichhari  ', 'লক্ষ্মীছড়ি', 31, '2017-10-19 13:24:24', '2017-10-19 13:24:24'),
(221, 'Manikchhari', 'মানিকছড়ি', 31, '2017-10-19 13:25:38', '2017-10-19 13:25:38'),
(222, 'Matiranga', 'মাটিরাঙ্গা', 31, '2017-10-19 13:26:30', '2017-10-19 13:26:30'),
(223, 'Mohalchhari  ', 'মহালছড়ি', 31, '2017-10-19 13:27:34', '2017-10-19 13:27:34'),
(224, 'Panchhari  ', 'পানছড়ি', 31, '2017-10-19 13:28:19', '2017-10-19 13:28:19'),
(225, 'Ramgarh', 'রামগড়', 31, '2017-10-19 13:29:01', '2017-10-19 13:29:01'),
(226, 'Khulna Sadar ', 'খুলনা সদর', 32, '2017-10-19 13:30:20', '2017-10-19 13:30:20'),
(227, 'Batiaghata', 'বটিয়াঘাটা', 32, '2017-10-19 13:31:16', '2017-10-19 13:31:16'),
(228, 'Dacope', 'দাকোপ', 32, '2017-10-19 13:32:43', '2017-10-19 13:32:43'),
(229, 'Dighalia', 'দীঘলিয়া', 32, '2017-10-19 13:33:36', '2017-10-19 13:33:36'),
(230, 'Dumuria', 'ডুমুরিয়া', 32, '2017-10-19 13:34:20', '2017-10-19 13:34:20'),
(231, 'Fultola ', 'ফুলতলা ', 32, '2017-10-19 13:35:13', '2018-06-01 18:20:32'),
(232, 'Koyra', 'কয়রা', 32, '2017-10-19 13:35:56', '2017-10-19 13:35:56'),
(233, 'Paikgachha', 'পাইকগাছা', 32, '2017-10-19 13:36:38', '2017-10-19 13:36:38'),
(234, 'Rupsa', 'রূপসা', 32, '2017-10-19 13:37:20', '2017-10-19 13:37:20'),
(235, 'Terokhada', 'তেরখাদা', 32, '2017-10-19 13:38:05', '2018-06-01 18:27:43'),
(236, 'Kishoreganj Sadar', 'কিশোরগঞ্জ সদর', 33, '2017-10-19 14:09:23', '2017-10-19 14:09:23'),
(237, 'Austagram', 'অষ্টগ্রাম', 33, '2017-10-19 14:10:17', '2017-10-19 14:10:17'),
(238, 'Bajitpur', 'বাজিতপুর', 33, '2017-10-19 14:11:09', '2017-10-19 14:11:09'),
(239, 'Bhoirab', 'ভৈরব', 33, '2017-10-19 14:11:57', '2019-12-30 19:21:02'),
(240, 'Hossainpur', 'হোসেনপুর', 33, '2017-10-19 14:13:14', '2017-10-19 14:13:14'),
(241, 'Itna', 'ইটনা', 33, '2017-10-19 14:14:06', '2017-10-19 14:14:06'),
(242, 'Karimganj', 'করিমগঞ্জ', 33, '2017-10-19 14:14:56', '2017-10-19 14:14:56'),
(243, 'Katiadi ', 'কটিয়াদী', 33, '2017-10-19 14:15:54', '2017-10-19 14:15:54'),
(244, 'Kuliarchar ', 'কুলিয়ারচর', 33, '2017-10-19 14:16:40', '2017-10-19 14:16:40'),
(245, 'Mithamoin', 'মিঠামইন', 33, '2017-10-19 14:17:35', '2017-10-19 14:17:35'),
(246, 'Nikli', 'নিকলী', 33, '2017-10-19 14:18:24', '2017-10-19 14:18:24'),
(247, 'Pakundia', 'পাকুন্দিয়া', 33, '2017-10-19 14:19:11', '2017-10-19 14:19:11'),
(248, 'Tarail', 'তাড়াইল', 33, '2017-10-19 14:20:03', '2017-10-19 14:20:03'),
(249, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 34, '2017-10-19 14:22:02', '2017-10-19 14:22:02'),
(250, 'Bhurungamari', 'ভুরুঙ্গামারী', 34, '2017-10-19 14:22:49', '2017-10-19 14:22:49'),
(251, 'Chilmari', 'চিলমারী', 34, '2017-10-19 14:23:33', '2017-10-19 14:23:33'),
(252, 'Fulbari', 'ফুলবাড়ি', 34, '2017-10-19 14:24:30', '2018-03-16 13:33:02'),
(253, 'Nageshwari', 'নাগেশ্বরী', 34, '2017-10-19 14:25:26', '2017-10-19 14:25:26'),
(254, 'Rajarhat', 'রাজারহাট', 34, '2017-10-19 14:26:14', '2017-10-19 14:26:14'),
(255, 'Rajibpur', 'রাজিবপুর', 34, '2017-10-19 14:27:22', '2017-10-19 14:27:22'),
(256, 'Rowmari', 'রৌমারী', 34, '2017-10-19 14:28:14', '2017-10-19 14:28:14'),
(257, 'Ulipur', 'উলিপুর', 34, '2017-10-19 14:29:10', '2017-10-19 14:29:10'),
(258, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 35, '2017-10-19 14:30:44', '2017-10-19 14:30:44'),
(259, 'Bheramara', 'ভেড়ামারা', 35, '2017-10-19 14:31:27', '2017-10-19 14:31:27'),
(260, 'Daulatpur', 'দৌলতপুর', 35, '2017-10-19 14:32:14', '2017-10-19 14:32:14'),
(261, 'Khoksa', 'খোকসা', 35, '2017-10-19 14:33:00', '2017-10-19 14:33:00'),
(262, 'Kumarkhali ', 'কুমারখালী ', 35, '2017-10-19 14:34:20', '2017-10-19 14:34:20'),
(263, 'Mirpur', 'মিরপুর', 35, '2017-10-19 14:35:08', '2017-10-19 14:35:08'),
(264, 'Lakshmipur Sadar', 'লক্ষ্মীপুর সদর', 36, '2017-10-19 14:36:38', '2017-10-19 14:36:38'),
(265, 'Kamalnagar', 'কমলনগর', 36, '2017-10-19 14:37:25', '2018-03-15 20:43:04'),
(266, 'Raipur', 'রায়পুর', 36, '2017-10-19 14:38:15', '2017-10-19 14:38:15'),
(267, 'Ramganj', 'রামগঞ্জ', 36, '2017-10-19 14:39:02', '2017-10-19 14:39:02'),
(268, 'Ramgati', 'রামগতি', 36, '2017-10-19 14:39:53', '2017-10-19 14:39:53'),
(269, 'Lalmonirhat Sadar', 'লালমনিরহাট সদর', 37, '2017-10-19 14:44:02', '2017-10-19 14:44:02'),
(270, 'Aditmari ', 'আদিতমারী', 37, '2017-10-19 14:44:48', '2017-10-19 14:44:48'),
(271, 'Hatibandha', 'হাতীবান্ধা', 37, '2017-10-19 14:45:38', '2017-10-19 14:45:38'),
(272, 'Kaliganj', 'কালীগঞ্জ', 37, '2017-10-19 14:46:33', '2017-10-19 14:46:33'),
(273, 'Patgram', 'পাটগ্রাম', 37, '2017-10-19 14:47:25', '2017-10-19 14:47:25'),
(274, 'Madaripur Sadar', 'মাদারীপুর সদর', 38, '2017-10-19 14:49:10', '2017-10-19 14:49:10'),
(275, 'Kalkini', 'কালকিনী', 38, '2017-10-19 14:50:02', '2017-10-19 14:50:02'),
(276, 'Rajoir', 'রাজৈর', 38, '2017-10-19 14:50:51', '2017-10-19 14:50:51'),
(277, 'Shibchar', 'শিবচর', 38, '2017-10-19 14:51:33', '2017-10-19 14:51:33'),
(278, 'Magura Sadar', 'মাগুরা সদর', 39, '2017-10-19 14:53:04', '2017-10-19 14:53:04'),
(279, 'Mohammadpur', 'মোহাম্মাদপুর', 39, '2017-10-19 14:53:49', '2019-12-29 10:03:31'),
(280, 'Shalikha', 'শালিখা', 39, '2017-10-19 14:54:35', '2017-10-19 14:54:35'),
(281, 'Sreepur', 'শ্রীপুর', 39, '2017-10-19 14:55:21', '2017-10-19 14:55:21'),
(282, 'Manikganj Sadar', 'মানিকগঞ্জ সদর', 40, '2017-10-19 14:58:03', '2017-10-19 14:58:03'),
(283, 'Daulatpur', 'দৌলতপুর', 40, '2017-10-19 14:58:53', '2017-10-19 14:58:53'),
(284, 'Ghior', 'ঘিওর', 40, '2017-10-19 14:59:40', '2017-10-19 14:59:40'),
(285, 'Harirampur', 'হরিরামপুর', 40, '2017-10-19 15:02:53', '2017-10-19 15:02:53'),
(286, 'Saturia', 'সাটুরিয়া', 40, '2017-10-19 15:03:58', '2017-10-19 15:03:58'),
(287, 'Shibalaya', 'শিবালয়', 40, '2017-10-19 15:04:49', '2017-10-19 15:04:49'),
(288, 'Singair', 'সিঙ্গাইর', 40, '2017-10-19 15:05:44', '2017-10-19 15:05:44'),
(289, 'Meherpur Sadar', 'মেহেরপুর সদর', 41, '2017-10-19 15:10:37', '2017-10-19 15:10:37'),
(290, 'Gangni', 'গাংনী', 41, '2017-10-19 15:11:16', '2017-10-19 15:11:16'),
(291, 'Mujibnagar', 'মুজিবনগর', 41, '2017-10-19 15:12:04', '2018-03-15 20:32:11'),
(292, 'Moulvibazar Sadar', 'মৌলভীবাজার সদর', 42, '2017-10-19 15:13:31', '2017-10-19 15:13:31'),
(293, 'Barlekha', 'বড়লেখা', 42, '2017-10-19 15:14:15', '2017-10-19 15:14:15'),
(294, 'Juri', 'জুরী', 42, '2017-10-19 15:15:06', '2017-10-19 15:15:06'),
(295, 'Kamalganj', 'কমলগঞ্জ', 42, '2017-10-19 15:15:50', '2017-10-19 15:15:50'),
(296, 'Kulaura', 'কুলাউড়া', 42, '2017-10-19 15:16:49', '2017-10-19 15:16:49'),
(297, 'Rajnagar', 'রাজনগর', 42, '2017-10-19 15:18:23', '2018-03-15 20:33:16'),
(298, 'Sreemangal', 'শ্রীমঙ্গল', 42, '2017-10-19 15:19:39', '2017-10-19 15:19:39'),
(299, 'Munsiganj Sadar', 'মুন্সিগঞ্জ সদর', 44, '2017-10-19 15:21:38', '2018-03-17 10:40:10'),
(300, 'Gazaria', 'গজারিয়া', 44, '2017-10-19 15:22:26', '2017-10-19 15:22:26'),
(301, 'Lowhajang', 'লৌহজং', 44, '2017-10-19 15:23:26', '2017-10-19 15:23:26'),
(302, 'Sirajdikhan', 'সিরাজদীখাঁন', 44, '2017-10-19 15:24:31', '2019-10-29 18:39:48'),
(303, 'Sreenagar', 'শ্রীনগর', 44, '2017-10-19 15:25:34', '2017-10-19 15:25:34'),
(304, 'Tongibari', 'টঙ্গীবাড়ি', 44, '2017-10-19 15:26:37', '2017-10-19 15:26:37'),
(305, 'Mymensingh Sadar', 'ময়মনসিংহ সদর', 45, '2017-10-19 15:29:06', '2017-10-19 15:29:06'),
(306, 'Bhaluka', 'ভালুকা', 45, '2017-10-19 15:30:01', '2017-10-19 15:30:01'),
(307, 'Dhobaura', 'ধোবাউড়া', 45, '2017-10-19 15:32:28', '2017-10-19 15:32:28'),
(308, 'Fulbaria', 'ফুলবাড়িয়া', 45, '2017-10-19 15:33:13', '2018-03-16 13:35:17'),
(309, 'Fulpur', 'ফুলপুর', 45, '2017-10-19 15:33:59', '2018-03-16 13:36:03'),
(310, 'Gafargaon', 'গফরগাঁও', 45, '2017-10-19 15:35:07', '2017-10-19 15:35:07'),
(311, 'Gouripur', 'গৌরীপুর', 45, '2017-10-19 15:35:51', '2017-10-19 15:35:51'),
(312, 'Haluaghat', 'হালুয়াঘাট', 45, '2017-10-19 15:36:52', '2017-10-19 15:36:52'),
(313, 'Ishwarganj', 'ঈশ্বরগঞ্জ', 45, '2017-10-19 15:37:41', '2017-10-19 15:37:41'),
(314, 'Muktagachha', 'মুক্তাগাছা', 45, '2017-10-19 15:38:31', '2017-10-19 15:38:31'),
(315, 'Nandail', 'নান্দাইল', 45, '2017-10-19 15:39:16', '2017-10-19 15:39:16'),
(316, 'Tarakanda', 'তারাকান্দা', 45, '2017-10-19 15:39:59', '2017-10-19 15:39:59'),
(317, 'Trishal', 'ত্রিশাল', 45, '2017-10-19 15:40:43', '2017-10-19 15:40:43'),
(318, 'Naogaon Sadar', 'নওগাঁ সদর', 46, '2017-10-19 16:04:27', '2017-10-19 16:04:27'),
(319, 'Atrai', 'আত্রাই', 46, '2017-10-19 16:05:22', '2017-10-19 16:05:22'),
(320, 'Badalgachhi', 'বদলগাছী', 46, '2017-10-19 16:06:18', '2017-10-19 16:06:18'),
(321, 'Dhamoirhat', 'ধামুরহাট', 46, '2017-10-19 16:07:21', '2018-04-29 14:52:47'),
(322, 'Manda', 'মান্দা', 46, '2017-10-19 16:08:03', '2017-10-19 16:08:03'),
(323, 'Mohadevpur', 'মহাদেবপুর', 46, '2017-10-19 16:08:50', '2017-10-19 16:08:50'),
(324, 'Niamatpur', 'নিয়ামতপুর', 46, '2017-10-19 16:09:33', '2017-10-19 16:09:33'),
(325, 'Patnitala', 'পত্নীতলা', 46, '2017-10-19 16:10:23', '2017-10-19 16:10:23'),
(326, 'Porsha', 'পরশা', 46, '2017-10-19 16:11:11', '2017-10-19 16:11:11'),
(327, 'Raninagar', 'রানীনগর', 46, '2017-10-19 16:11:52', '2018-03-15 20:36:04'),
(328, 'Sapahar', 'সাপাহার', 46, '2017-10-19 16:13:07', '2017-10-19 16:13:07'),
(329, 'Narail Sadar', 'নড়াইল সদর', 47, '2017-10-19 16:14:39', '2017-10-19 16:14:39'),
(330, 'Kalia', 'কালিয়া', 47, '2017-10-19 16:15:24', '2017-10-19 16:15:24'),
(331, 'Lohagara', 'লোহাগড়া', 47, '2017-10-19 16:16:12', '2017-10-19 16:16:12'),
(332, 'Narayanganj Sadar', 'নারায়ণগঞ্জ সদর', 48, '2017-10-19 16:32:53', '2017-10-19 16:32:53'),
(333, 'Araihazar', 'আড়াইহাজার', 48, '2017-10-19 16:33:42', '2017-10-19 16:33:42'),
(334, 'Bandar', 'বন্দর', 48, '2017-10-19 16:34:59', '2017-10-19 16:34:59'),
(335, 'Rupganj', 'রূপগঞ্জ', 48, '2017-10-19 16:35:54', '2017-10-19 16:35:54'),
(336, 'Sonargaon', 'সোনারগাঁও', 48, '2017-10-19 16:36:41', '2017-10-19 16:36:41'),
(337, 'Narsingdi Sadar', 'নরসিংদী সদর', 49, '2017-10-19 16:40:27', '2017-10-19 16:40:27'),
(338, 'Belabo', 'বেলাবো', 49, '2017-10-19 16:41:22', '2017-10-19 16:41:22'),
(339, 'Monohardi', 'মনোহরদী', 49, '2017-10-19 16:43:04', '2017-10-19 16:43:04'),
(340, 'Palash', 'পলাশ', 49, '2017-10-19 16:43:49', '2017-10-19 16:43:49'),
(341, 'Raipura', 'রায়পুরা', 49, '2017-10-19 16:44:47', '2017-10-19 16:44:47'),
(342, 'Shibpur', 'শিবপুর', 49, '2017-10-19 16:45:32', '2017-10-19 16:45:32'),
(343, 'Natore Sadar', 'নাটোর সদর', 50, '2017-10-19 16:47:26', '2017-10-19 16:47:26'),
(344, 'Bagatipara', 'বাগাতিপাড়া', 50, '2017-10-19 16:48:13', '2017-10-19 16:48:13'),
(345, 'Baraigram', 'বরাইগ্রাম', 50, '2017-10-19 16:49:01', '2017-10-19 16:49:01'),
(346, 'Gurudaspur', 'গুরুদাসপুর', 50, '2017-10-19 16:50:12', '2017-10-19 16:50:12'),
(347, 'Lalpur', 'লালপুর', 50, '2017-10-19 16:52:18', '2017-10-19 16:52:18'),
(348, 'Naldanga', 'নলডাঙ্গা', 50, '2017-10-19 16:53:01', '2017-10-19 16:53:01'),
(349, 'Singra', 'সিংড়া', 50, '2017-10-19 16:53:51', '2017-10-19 16:53:51'),
(350, 'Netrokona Sadar', 'নেত্রকোনা সদর', 51, '2017-10-19 16:55:44', '2017-10-19 16:55:44'),
(351, 'Atpara', 'আটপাড়া', 51, '2017-10-19 16:56:32', '2017-10-19 16:56:32'),
(352, 'Barhatta', 'বারহাট্টা', 51, '2017-10-19 16:57:23', '2017-10-19 16:57:23'),
(353, 'Durgapur', 'দূর্গাপুর', 51, '2017-10-19 16:58:20', '2018-06-02 15:27:04'),
(354, 'Kalmakanda', 'কলমাকান্দা', 51, '2017-10-19 16:59:07', '2017-10-19 16:59:07'),
(355, 'Kendua', 'কেন্দুয়া', 51, '2017-10-19 16:59:53', '2017-10-19 16:59:53'),
(356, 'Khaliajuri', 'খালিয়াজুরী', 51, '2017-10-19 17:01:31', '2017-10-19 17:01:31'),
(357, 'Madan', 'মদন', 51, '2017-10-19 17:02:32', '2017-10-19 17:02:32'),
(358, 'Mohanganj', 'মোহনগঞ্জ', 51, '2017-10-19 17:03:56', '2017-10-19 17:03:56'),
(359, 'Purbadhala', 'পূর্বধলা', 51, '2017-10-19 17:04:50', '2017-10-19 17:04:50'),
(360, 'Nilfamari Sadar', 'নীলফামারি সদর', 52, '2017-10-19 17:07:42', '2018-06-02 13:16:08'),
(361, 'Dimla', 'ডিমলা', 52, '2017-10-19 17:08:42', '2017-10-19 17:08:42'),
(362, 'Domar', 'ডোমার', 52, '2017-10-19 17:09:32', '2017-10-19 17:09:32'),
(363, 'Jaldhaka', 'জলঢাকা', 52, '2017-10-19 17:10:18', '2017-10-19 17:10:18'),
(364, 'Kishoreganj', 'কিশোরগঞ্জ', 52, '2017-10-19 17:11:41', '2017-10-19 17:11:41'),
(365, 'Syedpur', 'সৈয়দপুর', 52, '2017-10-19 17:12:33', '2019-10-30 17:25:44'),
(366, 'Noakhali Sadar', 'নোয়াখালী সদর', 53, '2017-10-19 17:13:44', '2017-10-19 17:13:44'),
(367, 'Begumganj', 'বেগমগঞ্জ', 53, '2017-10-19 17:14:32', '2017-10-19 17:14:32'),
(368, 'Chatkhil', 'চাটখিল', 53, '2017-10-19 17:15:21', '2017-10-19 17:15:21'),
(369, 'Companiganj', 'কোম্পানিগঞ্জ', 53, '2017-10-19 17:16:13', '2017-10-19 17:16:13'),
(370, 'Hatiya', 'হাতিয়া', 53, '2017-10-19 17:17:02', '2017-10-19 17:17:02'),
(371, 'Kabirhat', 'কবিরহাট', 53, '2017-10-19 17:18:18', '2017-10-19 17:18:18'),
(372, 'Senbagh', 'সেনবাগ', 53, '2017-10-19 17:19:19', '2019-12-29 11:32:19'),
(373, 'Sonaimuri', 'সোনাইমুড়ি', 53, '2017-10-19 17:20:42', '2017-10-19 17:20:42'),
(374, 'Subarnachar', 'সুবর্ণচর', 53, '2017-10-19 17:21:45', '2017-10-19 17:21:45'),
(375, 'Pabna Sadar', 'পাবনা সদর', 54, '2017-10-19 20:03:05', '2017-10-19 20:03:05'),
(376, 'Ataikula', 'আতাইকুলা', 54, '2017-10-19 20:04:09', '2017-10-19 20:04:09'),
(377, 'Atghoria', 'আটঘরিয়া', 54, '2017-10-19 20:05:09', '2017-10-19 20:05:09'),
(378, 'Bera', 'বেড়া', 54, '2017-10-19 20:05:50', '2017-10-19 20:05:50'),
(379, 'Bhangura', 'ভাঙ্গুরা', 54, '2017-10-19 20:06:32', '2017-10-19 20:06:32'),
(380, 'Chatmohar', 'চাটমোহর', 54, '2017-10-19 20:07:23', '2017-10-19 20:07:23'),
(381, 'Faridpur', 'ফরিদপুর', 54, '2017-10-19 20:08:28', '2017-10-19 20:08:28'),
(382, 'Ishwardi', 'ঈশ্বরদী', 54, '2017-10-19 20:09:22', '2017-10-19 20:09:22'),
(383, 'Santhia', 'সাঁথিয়া', 54, '2017-10-19 20:10:19', '2017-10-19 20:10:19'),
(384, 'Sujanagar', 'সুজানগর', 54, '2017-10-19 20:11:38', '2017-10-19 20:11:38'),
(385, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 55, '2017-10-19 20:13:17', '2017-10-19 20:13:17'),
(386, 'Atwari', 'আটোয়ারী', 55, '2017-10-19 20:14:10', '2017-10-19 20:14:10'),
(387, 'Boda', 'বোদা', 55, '2017-10-19 20:15:01', '2017-10-19 20:15:01'),
(388, 'Debiganj', 'দেবীগঞ্জ', 55, '2017-10-19 20:15:58', '2017-10-19 20:15:58'),
(389, 'Tetulia', 'তেঁতুলিয়া', 55, '2017-10-19 20:16:51', '2017-10-19 20:16:51'),
(390, 'Patuakhali Sadar', 'পটুয়াখালী সদর', 56, '2017-10-19 20:18:28', '2017-10-19 20:18:28'),
(391, 'Baufal', 'বাউফল', 56, '2017-10-19 20:19:28', '2018-03-16 14:35:06'),
(392, 'Dashmina', 'দশমিনা', 56, '2017-10-19 20:20:23', '2017-10-19 20:20:23'),
(393, 'Dumki', 'দুমকি', 56, '2017-10-19 20:21:23', '2017-10-19 20:21:23'),
(394, 'Galachipa', 'গলাচিপা', 56, '2017-10-19 20:22:10', '2017-10-19 20:22:10'),
(395, 'Kalapara', 'কলাপাড়া', 56, '2017-10-19 20:23:08', '2017-10-19 20:23:08'),
(396, 'Mirzaganj', 'মির্জাগঞ্জ', 56, '2017-10-19 20:24:14', '2017-10-19 20:24:14'),
(397, 'Rangabali', 'রাঙ্গাবালি', 56, '2017-10-19 20:25:04', '2017-10-19 20:25:04'),
(398, 'Pirojpur Sadar', 'পিরোজপুর সদর', 57, '2017-10-19 20:26:46', '2017-10-19 20:26:46'),
(399, 'Bhandaria', 'ভাণ্ডারিয়া', 57, '2017-10-19 20:28:07', '2017-10-19 20:28:07'),
(400, 'Kawkhali', 'কাউখালী', 57, '2017-10-19 20:28:47', '2017-10-19 20:28:47'),
(401, 'Mathbaria', 'মঠবাড়িয়া', 57, '2017-10-19 20:29:39', '2017-10-19 20:29:39'),
(402, 'Nazirpur', 'নাজিরপুর', 57, '2017-10-19 20:30:33', '2017-10-19 20:30:33'),
(403, 'Nesarabad (Swarupkathi)', 'নেসারাবাদ (স্বরূপকাঠি)', 57, '2017-10-19 20:32:21', '2017-10-19 20:32:21'),
(404, 'Zianagar', 'জিয়ানগর', 57, '2017-10-19 20:33:18', '2018-03-15 20:37:39'),
(405, 'Rajbari Sadar', 'রাজবাড়ি সদর', 58, '2017-10-19 20:36:59', '2017-10-19 20:36:59'),
(406, 'Baliakandi', 'বালিয়াকান্দি', 58, '2017-10-19 20:37:58', '2017-10-19 20:37:58'),
(407, 'Goalanda', 'গোয়ালন্দ', 58, '2017-10-19 20:39:36', '2017-10-19 20:39:36'),
(408, 'Kalukhali', 'কালুখালী', 58, '2017-10-19 20:40:55', '2017-10-19 20:40:55'),
(409, 'Pangsha', 'পাংশা', 58, '2017-10-19 20:41:42', '2017-10-19 20:41:42'),
(410, 'Rajshahi Sadar', 'রাজশাহী সদর', 59, '2017-10-19 20:43:00', '2017-10-19 20:43:00'),
(411, 'Bagha', 'বাঘা', 59, '2017-10-19 20:43:55', '2018-05-03 08:30:28'),
(412, 'Bagmara', 'বাগমারা', 59, '2017-10-19 20:44:39', '2017-10-19 20:44:39'),
(413, 'Charghat', 'চারঘাট', 59, '2017-10-19 20:46:01', '2017-10-19 20:46:01'),
(414, 'Durgapur', 'দূর্গাপুর', 59, '2017-10-19 20:46:43', '2017-10-19 20:46:43'),
(415, 'Godagari', 'গোদাগারী', 59, '2017-10-19 20:47:32', '2017-10-19 20:47:32'),
(416, 'Mohanpur', 'মোহনপুর', 59, '2017-10-19 20:48:28', '2017-10-19 20:48:28'),
(417, 'Paba', 'পবা', 59, '2017-10-19 20:49:43', '2017-10-19 20:49:43'),
(418, 'Puthia', 'পুঠিয়া', 59, '2017-10-19 20:51:03', '2017-10-19 20:51:03'),
(419, 'Tanore', 'তানোর', 59, '2017-10-19 20:52:02', '2017-10-19 20:52:02'),
(420, 'Rangamati Sadar', 'রাঙ্গামাটি সদর', 60, '2017-10-19 20:54:00', '2017-10-19 20:54:00'),
(421, 'Baghaichhari', 'বাঘাইছড়ি', 60, '2017-10-19 20:54:50', '2017-10-19 20:54:50'),
(422, 'Barkal', 'বরকল', 60, '2017-10-19 20:55:45', '2017-10-19 20:55:45'),
(423, 'Belaichhari', 'বিলাইছড়ি', 60, '2017-10-19 20:56:30', '2017-10-19 20:56:30'),
(424, 'Juraichhari', 'জুরাইছড়ি', 60, '2017-10-19 20:57:18', '2017-10-19 20:57:18'),
(425, 'Kaptai', 'কাপ্তাই', 60, '2017-10-19 20:58:23', '2017-10-19 20:58:23'),
(426, 'Kawkhali', 'কাউখালী', 60, '2017-10-19 20:59:11', '2017-10-19 20:59:11'),
(427, 'Langadu', 'লংগদু', 60, '2017-10-19 20:59:54', '2017-10-19 20:59:54'),
(428, 'Naniarchar', 'নানিয়ারচর', 60, '2017-10-19 21:00:33', '2017-10-19 21:00:33'),
(429, 'Rajasthali', 'রাজস্থলী', 60, '2017-10-19 21:01:19', '2017-10-19 21:01:19'),
(430, 'Rangpur Sadar', 'রংপুর সদর', 61, '2017-10-19 21:05:07', '2017-10-19 21:05:07'),
(431, 'Badarganj', 'বদরগঞ্জ', 61, '2017-10-19 21:06:09', '2017-10-19 21:06:09'),
(432, 'Gangachhara', 'গংগাছড়া', 61, '2017-10-19 21:07:01', '2018-03-15 14:17:29'),
(433, 'Kawnia', 'কাউনিয়া', 61, '2017-10-19 21:08:05', '2017-10-19 21:08:05'),
(434, 'Mithapukur', 'মিঠাপুকুর', 61, '2017-10-19 21:09:01', '2017-10-19 21:09:01'),
(435, 'Pirgachha', 'পীরগাছা', 61, '2017-10-19 21:10:05', '2017-10-19 21:10:05'),
(436, 'Pirganj', 'পীরগঞ্জ', 61, '2017-10-19 21:11:08', '2017-10-19 21:11:08'),
(437, 'Taraganj', 'তারাগঞ্জ', 61, '2017-10-19 21:11:59', '2017-10-19 21:11:59'),
(438, 'Satkhira Sadar', 'সাতক্ষীরা সদর', 62, '2017-10-19 21:14:34', '2017-10-19 21:14:34'),
(439, 'Ashashuni', 'আশাশুনি', 62, '2017-10-19 21:15:16', '2017-10-19 21:15:16'),
(440, 'Debhata', 'দেবহাটা', 62, '2017-10-19 21:16:02', '2017-10-19 21:16:02'),
(441, 'Kalaroa', 'কলারোয়া', 62, '2017-10-19 21:16:58', '2017-10-19 21:16:58'),
(442, 'Kaliganj', 'কালীগঞ্জ', 62, '2017-10-19 21:19:01', '2017-10-19 21:19:01'),
(443, 'Shyamnagar', 'শ্যামনগর', 62, '2017-10-19 21:20:03', '2017-10-19 21:20:03'),
(444, 'Tala', 'তালা', 62, '2017-10-19 21:21:05', '2017-10-19 21:21:05'),
(445, 'Shariatpur Sadar', 'শরিয়তপুর সদর', 63, '2017-10-19 21:23:02', '2017-10-19 21:23:02'),
(446, 'Bhedarganj', 'ভেদরগঞ্জ', 63, '2017-10-19 21:23:45', '2017-10-19 21:23:45'),
(447, 'Damudya', 'ডামুড্যা', 63, '2017-10-19 21:24:32', '2017-10-19 21:24:32'),
(448, 'Gosairhat', 'গোসাইরহাট', 63, '2017-10-19 21:25:49', '2017-10-19 21:25:49'),
(449, 'Naria', 'নড়িয়া', 63, '2017-10-19 21:27:01', '2017-10-19 21:27:01'),
(450, 'Zajira', 'জাজিরা', 63, '2017-10-19 21:27:52', '2017-10-19 21:27:52'),
(451, 'Sherpur Sadar', 'শেরপুর সদর', 64, '2017-10-19 21:31:52', '2017-10-19 21:31:52'),
(452, 'Jhenaigati', 'ঝিনাইগাতী', 64, '2017-10-19 21:32:47', '2017-10-19 21:32:47'),
(453, 'Nakla', 'নকলা', 64, '2017-10-19 21:33:58', '2017-10-19 21:33:58'),
(454, 'Nalitabari', 'নালিতাবাড়ি', 64, '2017-10-19 21:34:57', '2017-10-19 21:34:57'),
(455, 'Sreebardi', 'শ্রীবর্দি ', 64, '2017-10-19 21:35:54', '2018-03-15 14:33:35'),
(456, 'Sirajganj Sadar', 'সিরাজগঞ্জ সদর', 65, '2017-10-19 21:37:25', '2017-10-19 21:37:25'),
(457, 'Belkuchi', 'বেলকুচি', 65, '2017-10-19 21:38:41', '2017-10-19 21:38:41'),
(458, 'Chowhali', 'চৌহালি', 65, '2017-10-19 21:39:31', '2017-10-19 21:39:31'),
(459, 'Raiganj', 'রায়গঞ্জ', 65, '2017-10-19 21:40:16', '2017-10-19 21:40:16'),
(460, 'Kamarkhanda', 'কামারখন্দ', 65, '2017-10-19 21:41:07', '2017-10-19 21:41:07'),
(461, 'Kazipur', 'কাজীপুর', 65, '2017-10-19 21:41:52', '2017-10-19 21:41:52'),
(462, 'Shahajadpur', 'শাহাজাদপুর', 65, '2017-10-19 21:43:08', '2017-10-19 21:43:08'),
(463, 'Tarash', 'তাড়াশ', 65, '2017-10-19 21:44:03', '2017-10-19 21:44:03'),
(464, 'Ullapara', 'উল্লাপাড়া', 65, '2017-10-19 21:44:47', '2017-10-19 21:44:47'),
(465, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 66, '2017-10-19 21:48:16', '2017-10-19 21:48:16'),
(466, 'Bishwamvarpur', 'বিশ্বম্ভরপুর', 66, '2017-10-19 21:48:57', '2017-10-19 21:48:57'),
(467, 'Chhatak', 'ছাতক', 66, '2017-10-19 21:49:56', '2017-10-19 21:49:56'),
(468, 'Derai', 'দিরাই', 66, '2017-10-19 21:50:51', '2017-10-19 21:50:51'),
(469, 'Dharmapasha', 'ধর্মপাশা', 66, '2017-10-19 21:51:39', '2017-10-19 21:51:39'),
(470, 'Doarabazar', 'দোয়ারাবাজার', 66, '2017-10-19 21:52:51', '2017-10-19 21:52:51'),
(471, 'Jagannathpur', 'জগন্নাথপুর', 66, '2017-10-19 21:53:36', '2017-10-19 21:53:36'),
(472, 'Jamalganj', 'জামালগঞ্জ', 66, '2017-10-19 21:54:25', '2017-10-19 21:54:25'),
(473, 'Salla', 'সাল্লা', 66, '2017-10-19 21:55:05', '2018-06-02 18:53:35'),
(474, 'Tahirpur', 'তাহিরপুর', 66, '2017-10-19 21:55:44', '2017-10-19 21:55:44'),
(475, 'Sylhet Sadar', 'সিলেট সদর', 67, '2017-10-19 21:57:46', '2017-10-19 21:57:46'),
(476, 'Balaganj', 'বালাগঞ্জ', 67, '2017-10-19 21:58:27', '2017-10-19 21:58:27'),
(477, 'Beanibazar', 'বিয়ানীবাজার', 67, '2017-10-19 21:59:49', '2017-10-19 21:59:49'),
(478, 'Bishwanath', 'বিশ্বনাথ', 67, '2017-10-19 22:00:43', '2017-10-19 22:00:43'),
(479, 'Companiganj', 'কোম্পানিগঞ্জ', 67, '2017-10-19 22:01:43', '2017-10-19 22:01:43'),
(480, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 67, '2017-10-19 22:02:39', '2017-10-19 22:02:39'),
(481, 'Golapganj', 'গোলাপগঞ্জ', 67, '2017-10-19 22:03:22', '2017-10-19 22:03:22'),
(482, 'Gowainghat', 'গোয়াইনঘাট', 67, '2017-10-19 22:04:21', '2017-10-19 22:04:21'),
(483, 'Jointapur', 'জৈন্তাপুর', 67, '2017-10-19 22:05:05', '2017-10-19 22:05:05'),
(484, 'Kanaighat', 'কানাইঘাট', 67, '2017-10-19 22:06:06', '2017-10-19 22:06:06'),
(485, 'Osmaninagar', 'ওসমানীনগর', 67, '2017-10-19 22:07:15', '2017-10-19 22:07:15'),
(486, 'Dakshin Surma', 'দক্ষিণ সুরমা', 67, '2017-10-19 22:08:00', '2018-05-03 23:20:53'),
(487, 'Zakiganj', 'জকিগঞ্জ', 67, '2017-10-19 22:08:40', '2017-10-19 22:08:40'),
(488, 'Tangail Sadar', 'টাঙ্গাইল সদর', 68, '2017-10-19 22:10:12', '2017-10-19 22:10:12'),
(489, 'Basail', 'বাসাইল', 68, '2017-10-19 22:12:21', '2017-10-19 22:12:21'),
(490, 'Bhuapur', 'ভূঞাপুর', 68, '2017-10-19 22:13:01', '2017-10-19 22:13:01'),
(491, 'Delduar', 'দেলদুয়ার', 68, '2017-10-19 22:14:14', '2017-10-19 22:14:14'),
(492, 'Dhanbari', 'ধনবাড়ি', 68, '2017-10-19 22:15:02', '2017-10-19 22:15:02'),
(493, 'Ghatail', 'ঘাটাইল', 68, '2017-10-19 22:15:59', '2017-10-19 22:15:59'),
(494, 'Gopalpur', 'গোপালপুর', 68, '2017-10-19 22:16:42', '2017-10-19 22:16:42'),
(495, 'Kalihati', 'কালিহাতী', 68, '2017-10-19 22:18:18', '2017-10-19 22:18:18'),
(496, 'Madhupur', 'মধুপুর', 68, '2017-10-19 22:18:58', '2017-10-19 22:18:58'),
(497, 'Mirzapur', 'মির্জাপুর', 68, '2017-10-19 22:19:38', '2017-10-19 22:19:38'),
(498, 'Nagarpur', 'নাগরপুর', 68, '2017-10-19 22:20:21', '2017-10-19 22:20:21'),
(499, 'Sakhipur', 'সখিপুর', 68, '2017-10-19 22:21:02', '2017-10-19 22:21:02'),
(500, 'Thakurgaon Sadar', 'ঠাকুরগাঁও সদর', 69, '2017-10-19 22:23:42', '2017-10-19 22:23:42'),
(501, 'Baliadangi', 'বালিয়াডাঙ্গী', 69, '2017-10-19 22:24:34', '2017-10-19 22:24:34'),
(502, 'Haripur', 'হরিপুর', 69, '2017-10-19 22:25:23', '2017-10-19 22:25:23'),
(503, 'Pirganj', 'পীরগঞ্জ', 69, '2017-10-19 22:26:08', '2017-10-19 22:26:08'),
(504, 'Ranishankoil', 'রানীশংকৈল', 69, '2017-10-19 22:27:24', '2020-01-01 17:12:24'),
(505, 'Lalmai', 'লালমাই', 16, '2018-03-15 12:11:34', '2018-03-15 12:11:34'),
(506, 'Shayestaganj', 'শায়েস্তাগঞ্জ', 25, '2018-03-15 12:36:49', '2018-03-15 12:36:49'),
(507, 'Sakhipur ', 'সখিপুর', 63, '2018-03-15 14:26:04', '2018-03-15 14:26:04'),
(509, 'Dakshin Sunamganj', 'দক্ষিণ সুনামগঞ্জ', 66, '2018-04-14 19:50:36', '2018-04-14 19:50:36'),
(520, 'Bagerhat Sadar ', 'বাগেরহাট সদর', 72, '2019-05-10 21:55:46', '2019-05-10 21:55:46'),
(521, 'Chitalmari', 'চিতলমারী', 72, '2019-05-10 21:57:10', '2019-05-10 21:57:10'),
(522, 'Fakirhat', 'ফকিরহাট', 72, '2019-05-10 21:58:23', '2019-05-10 21:58:23'),
(523, 'Kachua', 'কচুয়া', 72, '2019-05-10 21:59:29', '2019-05-10 21:59:29'),
(524, 'Mollahat', 'মোল্লাহাট', 72, '2019-05-10 22:00:43', '2019-05-10 22:00:43'),
(525, 'Mongla', 'মংলা', 72, '2019-05-10 22:01:45', '2019-05-10 22:01:45'),
(526, 'Morrelganj', 'মোড়েলগঞ্জ', 72, '2019-05-10 22:02:42', '2019-05-10 22:02:42'),
(527, 'Rampal', 'রামপাল', 72, '2019-05-10 22:04:01', '2019-05-10 22:04:01'),
(528, 'Sharankhola', 'শরণখোলা', 72, '2019-05-10 22:05:06', '2019-05-10 22:05:06');

-- --------------------------------------------------------

--
-- Table structure for table `subdistricts`
--

CREATE TABLE `subdistricts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_district_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `b_sub_district_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subdistricts`
--

INSERT INTO `subdistricts` (`id`, `sub_district_name`, `b_sub_district_name`, `district_id`, `created_at`, `updated_at`) VALUES
(21, 'Bandarban Sadar ', 'বান্দরবান সদর   ', 6, '2017-10-15 23:27:33', '2017-10-15 23:27:33'),
(22, 'Alikadam ', 'আলীকদম  ', 6, '2017-10-15 23:28:39', '2017-10-15 23:28:39'),
(23, 'Lama  ', 'লামা	', 6, '2017-10-15 23:29:37', '2017-10-15 23:29:37'),
(24, 'Naikhongchhari ', 'নাইক্ষ্যংছড়ি', 6, '2017-10-15 23:30:30', '2017-10-15 23:30:30'),
(25, 'Rowangchhari  ', 'রোয়াংছড়ি', 6, '2017-10-15 23:31:06', '2017-10-15 23:31:06'),
(26, 'Ruma ', 'রুমা', 6, '2017-10-15 23:31:54', '2017-10-15 23:31:54'),
(27, 'Thanchi ', 'থানচি', 6, '2017-10-15 23:32:54', '2017-10-15 23:32:54'),
(28, 'Barguna Sadar ', 'বরগুনা সদর', 7, '2017-10-16 20:56:59', '2017-10-16 20:56:59'),
(29, 'Amtali ', 'আমতলী', 7, '2017-10-16 20:58:07', '2017-10-16 20:58:07'),
(30, 'Bamna ', 'বামনা', 7, '2017-10-16 20:59:03', '2017-10-16 20:59:03'),
(31, 'Betagi', 'বেতাগী', 7, '2017-10-16 20:59:46', '2017-10-16 20:59:46'),
(32, 'Patharghata', 'পাথরঘাটা', 7, '2017-10-16 21:00:30', '2017-10-16 21:00:30'),
(33, 'Taltali ', 'তালতলী', 7, '2017-10-16 21:01:04', '2017-10-16 21:01:04'),
(34, 'Barishal Sadar ', 'বরিশাল সদর', 8, '2017-10-19 09:49:40', '2018-04-02 11:47:51'),
(35, 'Agailjhara ', 'আগৈলঝাড়া', 8, '2017-10-19 09:51:07', '2017-10-19 09:51:07'),
(36, 'Babuganj  ', 'বাবুগঞ্জ', 8, '2017-10-19 09:51:56', '2017-10-19 09:51:56'),
(37, 'Bakerganj ', 'বাকেরগঞ্জ', 8, '2017-10-19 09:53:24', '2017-10-19 09:53:24'),
(38, 'Banaripara ', 'বানারীপাড়া', 8, '2017-10-19 09:54:09', '2017-10-19 09:54:09'),
(39, 'Gournadi  ', 'গৌরনদী', 8, '2017-10-19 09:54:59', '2017-10-19 09:54:59'),
(40, 'Hizla ', 'হিজলা', 8, '2017-10-19 09:55:35', '2017-10-19 09:55:35'),
(41, 'Mehendiganj ', 'মেহেন্দিগঞ্জ', 8, '2017-10-19 09:56:10', '2017-10-19 09:56:10'),
(42, 'Muladi ', 'মুলাদী', 8, '2017-10-19 09:56:49', '2017-10-19 09:56:49'),
(43, 'Wazirpur ', 'উজিরপুর', 8, '2017-10-19 09:57:31', '2017-10-19 09:57:31'),
(44, 'Bhola Sadar ', 'ভোলা সদর', 9, '2017-10-19 09:59:08', '2017-10-19 09:59:08'),
(45, 'Borhanuddin', 'বোরহানউদ্দিন', 9, '2017-10-19 09:59:54', '2017-10-19 09:59:54'),
(46, 'Charfashion ', 'চরফ্যাশন', 9, '2017-10-19 10:00:35', '2018-03-15 19:25:39'),
(47, 'Daulatkhan ', 'দৌলতখান', 9, '2017-10-19 10:01:16', '2017-10-19 10:01:16'),
(48, 'Lalmohan ', 'লালমোহন', 9, '2017-10-19 10:02:14', '2017-10-19 10:02:14'),
(49, 'Manpura ', 'মনপুরা', 9, '2017-10-19 10:03:01', '2017-10-19 10:03:01'),
(50, 'Tajumuddin ', 'তজুমুদ্দিন', 9, '2017-10-19 10:03:43', '2017-10-19 10:03:43'),
(51, 'Bagura Sadar ', 'বগুড়া সদর', 10, '2017-10-19 10:06:23', '2018-04-23 13:09:22'),
(52, 'Adamdighi ', 'আদমদীঘি', 10, '2017-10-19 10:07:37', '2017-10-19 10:07:37'),
(53, 'Dhunat ', 'ধুনট', 10, '2017-10-19 10:08:33', '2017-10-19 10:08:33'),
(54, 'Dhupchanchia ', 'ধুপচাঁচিয়া', 10, '2017-10-19 10:09:16', '2017-10-19 10:09:16'),
(55, 'Gabtoli ', 'গাবতলী', 10, '2017-10-19 10:10:08', '2018-05-28 11:10:42'),
(56, 'Kahaloo 	', 'কাহালু', 10, '2017-10-19 10:11:04', '2017-10-19 10:11:04'),
(57, 'Nandigram ', 'নন্দীগ্রাম', 10, '2017-10-19 10:11:41', '2017-10-19 10:11:41'),
(58, 'Sariakandi ', 'সারিয়াকান্দি', 10, '2017-10-19 10:12:17', '2017-10-19 10:12:17'),
(59, 'Shajahanpur  ', 'শাজাহানপুর', 10, '2017-10-19 10:13:03', '2017-10-19 10:13:03'),
(60, 'Sherpur ', 'শেরপুর', 10, '2017-10-19 10:13:39', '2017-10-19 10:13:39'),
(61, 'Shibganj ', 'শিবগঞ্জ', 10, '2017-10-19 10:14:17', '2017-10-19 10:14:17'),
(62, 'Sonatola ', 'সোনাতলা', 10, '2017-10-19 10:15:05', '2017-10-19 10:15:05'),
(63, 'Brahmanbaria Sadar', 'ব্রাহ্মণবাড়িয়া সদর', 11, '2017-10-19 10:16:38', '2017-10-19 10:16:38'),
(64, 'Akhaura  ', 'আখাউড়া', 11, '2017-10-19 10:17:21', '2017-10-19 10:17:21'),
(65, 'Ashuganj', 'আশুগঞ্জ', 11, '2017-10-19 10:18:04', '2017-10-19 10:18:04'),
(66, 'Bancharampur', 'বাঞ্ছারামপুর', 11, '2017-10-19 10:18:58', '2017-10-19 10:18:58'),
(67, 'Bijoynagar  ', 'বিজয়নগর', 11, '2017-10-19 10:19:37', '2018-03-15 19:00:24'),
(68, 'Kasba ', 'কসবা', 11, '2017-10-19 10:20:16', '2017-10-19 10:20:16'),
(69, 'Nabinagar ', 'নবীনগর', 11, '2017-10-19 10:20:53', '2018-03-15 19:01:09'),
(70, 'Nasirnagar ', 'নাসিরনগর', 11, '2017-10-19 10:21:30', '2018-03-15 19:01:53'),
(71, 'Sarail', 'সরাইল', 11, '2017-10-19 10:22:17', '2017-10-19 10:22:17'),
(72, 'Chandpur Sadar ', 'চাঁদপুর সদর', 12, '2017-10-19 10:24:17', '2017-10-19 10:24:17'),
(73, 'Haimchar ', 'হাইমচর', 12, '2017-10-19 10:25:00', '2017-10-19 10:25:00'),
(74, 'Haziganj ', 'হাজীগঞ্জ', 12, '2017-10-19 10:25:34', '2017-10-19 10:25:34'),
(75, 'Faridganj ', 'ফরিদগঞ্জ', 12, '2017-10-19 10:27:32', '2017-10-19 10:27:32'),
(76, 'Kachua ', 'কচুয়া', 12, '2017-10-19 10:28:33', '2017-10-19 10:28:33'),
(77, 'Matlab Dakshin ', 'মতলব দক্ষিন', 12, '2017-10-19 10:29:58', '2017-10-19 10:29:58'),
(78, 'Matlab Uttar ', 'মতলব উত্তর', 12, '2017-10-19 10:31:13', '2017-10-19 10:31:13'),
(79, 'Shahrasti  ', 'শাহ্‌রাস্তি', 12, '2017-10-19 10:32:59', '2017-10-19 10:32:59'),
(80, 'Chapainawabganj Sadar', 'চাঁপাইনবাবগঞ্জ সদর', 13, '2017-10-19 10:35:29', '2017-10-19 10:35:29'),
(81, 'Bholahat  ', 'ভোলাহাট', 13, '2017-10-19 10:36:10', '2017-10-19 10:36:10'),
(82, 'Gomastapur ', 'গোমস্তাপুর', 13, '2017-10-19 10:37:02', '2017-10-19 10:37:02'),
(83, 'Nachol ', 'নাচোল', 13, '2017-10-19 10:37:58', '2017-10-19 10:37:58'),
(84, 'Shibganj', 'শিবগঞ্জ', 13, '2017-10-19 10:38:42', '2017-10-19 10:38:42'),
(85, 'Chattagram Sadar ', 'চট্টগ্রাম সদর', 14, '2017-10-19 10:41:25', '2018-04-02 11:50:54'),
(86, 'Anwara ', 'আনোয়ারা', 14, '2017-10-19 10:42:05', '2017-10-19 10:42:05'),
(87, 'Banshkhali ', 'বাঁশখালী', 14, '2017-10-19 10:43:07', '2017-10-19 10:43:07'),
(88, 'Boalkhali ', 'বোয়ালখালী', 14, '2017-10-19 10:45:45', '2017-10-19 10:45:45'),
(89, 'Chandanaish ', 'চন্দনাঈশ', 14, '2017-10-19 10:46:33', '2017-10-19 10:46:33'),
(90, 'Fatikchhari ', 'ফটিকছড়ি', 14, '2017-10-19 10:47:37', '2017-10-19 10:47:37'),
(92, 'Hathazari ', 'হাটহাজারী', 14, '2017-10-19 10:49:11', '2017-10-19 10:49:11'),
(93, 'Lohagara ', 'লোহাগাড়া', 14, '2017-10-19 10:50:02', '2017-10-19 10:50:02'),
(94, 'Mirsarai ', 'মীরসরাই', 14, '2017-10-19 10:51:01', '2017-10-19 10:51:01'),
(95, 'Patiya ', 'পটিয়া', 14, '2017-10-19 10:51:40', '2017-10-19 10:51:40'),
(96, 'Rangunia ', 'রাঙ্গুনিয়া', 14, '2017-10-19 10:52:37', '2017-10-19 10:52:37'),
(97, 'Rawzan ', 'রাউজান', 14, '2017-10-19 10:53:25', '2018-04-24 14:41:21'),
(98, 'Sandwip ', 'সন্দ্বীপ', 14, '2017-10-19 10:54:07', '2017-10-19 10:54:07'),
(99, 'Satkania ', 'সাতকানিয়া', 14, '2017-10-19 10:54:50', '2017-10-19 10:54:50'),
(100, 'Sitakunda ', 'সীতাকুন্ড', 14, '2017-10-19 10:55:33', '2017-10-19 10:55:33'),
(101, 'Chuadanga Sadar ', 'চুয়াডাঙ্গা সদর', 15, '2017-10-19 10:57:23', '2017-10-19 10:57:23'),
(102, 'Alamdanga ', 'আলমডাঙ্গা', 15, '2017-10-19 10:58:11', '2017-10-19 10:58:11'),
(103, 'Damurhuda', 'দামুড়হুদা', 15, '2017-10-19 10:58:56', '2017-10-19 10:58:56'),
(104, 'Jibannagar', 'জীবননগর', 15, '2017-10-19 10:59:51', '2018-03-15 20:14:14'),
(105, 'Cumilla Adarsha Sadar  ', 'কুমিল্লা আদর্শ সদর', 16, '2017-10-19 11:01:24', '2018-04-03 14:44:12'),
(106, 'Cumilla Sadar Dakshin ', 'কুমিল্লা সদর দক্ষিণ', 16, '2017-10-19 11:02:31', '2018-04-03 14:44:51'),
(107, 'Barura ', 'বরুড়া', 16, '2017-10-19 11:03:14', '2017-10-19 11:03:14'),
(108, 'Brahmanpara', 'ব্রাহ্মণপাড়া', 16, '2017-10-19 11:05:47', '2017-10-19 11:05:47'),
(109, 'Burichong ', 'বুড়িচং', 16, '2017-10-19 11:06:31', '2017-10-19 11:06:31'),
(110, 'Chandina ', 'চান্দিনা', 16, '2017-10-19 11:07:12', '2017-10-19 11:07:12'),
(111, 'Chowddagram ', 'চৌদ্দগ্রাম', 16, '2017-10-19 11:07:52', '2017-10-19 11:07:52'),
(112, 'Daudkandi ', 'দাউদকান্দি', 16, '2017-10-19 11:08:40', '2017-10-19 11:08:40'),
(113, 'Debidwar ', 'দেবীদ্বার', 16, '2017-10-19 11:09:23', '2017-10-19 11:09:23'),
(114, 'Homna ', 'হোমনা', 16, '2017-10-19 11:10:13', '2017-10-19 11:10:13'),
(115, 'Laksam', 'লাকসাম', 16, '2017-10-19 11:10:56', '2017-10-19 11:10:56'),
(116, 'Meghna ', 'মেঘনা', 16, '2017-10-19 11:11:50', '2017-10-19 11:11:50'),
(117, 'Monoharganj ', 'মনোহরগঞ্জ', 16, '2017-10-19 11:12:47', '2017-10-19 11:12:47'),
(118, 'Muradnagar', 'মুরাদনগর', 16, '2017-10-19 11:13:38', '2018-03-15 20:44:41'),
(119, 'Nangalkot ', 'লাঙ্গলকোট', 16, '2017-10-19 11:14:22', '2017-10-19 11:14:22'),
(120, 'Titas ', 'তিতাস', 16, '2017-10-19 11:15:07', '2017-10-19 11:15:07'),
(121, 'Cox\'sbazar Sadar', 'কক্সবাজার সদর   ', 17, '2017-10-19 11:17:25', '2017-10-19 11:17:25'),
(122, 'Chakaria  ', 'চকোরিয়া', 17, '2017-10-19 11:18:27', '2017-10-19 11:18:27'),
(123, 'Kutubdia', 'কুতুবদিয়া', 17, '2017-10-19 11:19:28', '2017-10-19 11:19:28'),
(124, 'Moheshkhali ', 'মহেশখালী', 17, '2017-10-19 11:20:23', '2017-10-19 11:20:23'),
(125, 'Pekua', 'পেকুয়া', 17, '2017-10-19 11:21:09', '2017-10-19 11:21:09'),
(126, 'Ramu', 'রামু', 17, '2017-10-19 11:22:01', '2017-10-19 11:22:01'),
(127, 'Teknaf', 'টেকনাফ', 17, '2017-10-19 11:22:50', '2017-10-19 11:22:50'),
(128, 'Ukhia', 'উখিয়া', 17, '2017-10-19 11:23:35', '2017-10-19 11:23:35'),
(129, 'Dhaka Sadar ', 'ঢাকা সদর', 18, '2017-10-19 11:25:00', '2017-10-19 11:25:00'),
(130, 'Dhamrai', 'ধামরাই', 18, '2017-10-19 11:25:41', '2017-10-19 11:25:41'),
(131, 'Dohar ', 'দোহার', 18, '2017-10-19 11:26:32', '2017-10-19 11:26:32'),
(132, 'Keraniganj ', 'কেরানীগঞ্জ', 18, '2017-10-19 11:27:14', '2017-10-19 11:27:14'),
(133, 'Nawabganj ', 'নবাবগঞ্জ', 18, '2017-10-19 11:27:54', '2017-10-19 11:27:54'),
(134, 'Savar ', 'সাভার', 18, '2017-10-19 11:28:37', '2017-10-19 11:28:37'),
(135, 'Dinajpur Sadar ', 'দিনাজপুর সদর', 19, '2017-10-19 11:44:24', '2017-10-19 11:44:24'),
(136, 'Birampur', 'বিরামপুর', 19, '2017-10-19 11:45:16', '2017-10-19 11:45:16'),
(137, 'Birganj', 'বীরগঞ্জ', 19, '2017-10-19 11:48:09', '2017-10-19 11:48:09'),
(138, 'Birol ', 'বিরল', 19, '2017-10-19 11:48:52', '2017-10-19 11:48:52'),
(139, 'Bochaganj ', 'বোচাগঞ্জ', 19, '2017-10-19 11:49:37', '2017-10-19 11:49:37'),
(140, 'Chirirbandar', 'চিরিরবন্দর', 19, '2017-10-19 11:50:27', '2017-10-19 11:50:27'),
(141, 'Fulbari', 'ফুলবাড়ি', 19, '2017-10-19 11:51:36', '2017-10-19 11:51:36'),
(142, 'Ghoraghat ', 'ঘোড়াঘাট', 19, '2017-10-19 11:52:18', '2017-10-19 11:52:18'),
(143, 'Hakimpur ', 'হাকিমপুর', 19, '2017-10-19 11:53:05', '2017-10-19 11:53:05'),
(144, 'Kaharol ', 'কাহারোল', 19, '2017-10-19 11:53:52', '2017-10-19 11:53:52'),
(145, 'Khansama ', 'খানসামা', 19, '2017-10-19 11:54:32', '2017-10-19 11:54:32'),
(146, 'Nawabganj ', 'নবাবগঞ্জ', 19, '2017-10-19 11:55:16', '2017-10-19 11:55:16'),
(147, 'Parbatipur ', 'পার্বতীপুর', 19, '2017-10-19 11:55:59', '2017-10-19 11:55:59'),
(148, 'Faridpur Sadar ', 'ফরিদপুর সদর', 20, '2017-10-19 11:59:52', '2017-10-19 11:59:52'),
(149, 'Alfadanga', 'আলফাডাঙা', 20, '2017-10-19 12:03:53', '2017-10-19 12:03:53'),
(150, 'Bhanga', 'ভাঙ্গা', 20, '2017-10-19 12:04:56', '2017-10-19 12:04:56'),
(151, 'Boalmari', 'বোয়ালমারী', 20, '2017-10-19 12:05:53', '2017-10-19 12:05:53'),
(152, 'Charbhadrason', 'চরভদ্রাসন', 20, '2017-10-19 12:06:50', '2017-10-19 12:06:50'),
(153, 'Madhukhali', 'মধুখালী', 20, '2017-10-19 12:07:51', '2017-10-19 12:07:51'),
(154, 'Nagarkanda', 'নগরকান্দা', 20, '2017-10-19 12:08:53', '2017-10-19 12:08:53'),
(155, 'Sadarpur', 'সদরপুর', 20, '2017-10-19 12:09:41', '2017-10-19 12:09:41'),
(156, 'Saltha ', 'সালথা', 20, '2017-10-19 12:10:23', '2017-10-19 12:10:23'),
(157, 'Feni Sadar ', 'ফেনী সদর', 21, '2017-10-19 12:12:07', '2017-10-19 12:12:07'),
(158, 'Chhagalnaiya ', 'ছাগলনাইয়া', 21, '2017-10-19 12:13:07', '2017-10-19 12:13:07'),
(159, 'Daganbhuiyan ', 'দাগনভূঁইয়া', 21, '2017-10-19 12:13:48', '2017-10-19 12:13:48'),
(160, 'Fulgazi', 'ফুলগাজী', 21, '2017-10-19 12:15:21', '2017-10-19 12:15:21'),
(161, 'Parshuram ', 'পরশুরাম', 21, '2017-10-19 12:16:02', '2017-10-19 12:16:02'),
(162, 'Sonagazi ', 'সোনাগাজী', 21, '2017-10-19 12:16:39', '2017-10-19 12:16:39'),
(163, 'Gaibandha Sadar ', 'গাইবান্ধা সদর', 22, '2017-10-19 12:20:00', '2017-10-19 12:20:00'),
(164, 'Fulchhari ', 'ফুলছড়ি', 22, '2017-10-19 12:20:51', '2017-10-19 12:20:51'),
(165, 'Gobindaganj ', 'গোবিন্দগঞ্জ', 22, '2017-10-19 12:21:39', '2017-10-19 12:21:39'),
(166, 'Palashbari ', 'পলাশবাড়ি', 22, '2017-10-19 12:22:21', '2017-10-19 12:22:21'),
(167, 'Sadullapur ', 'সাদুল্লাপুর', 22, '2017-10-19 12:23:13', '2017-10-19 12:23:13'),
(168, 'Saghata', 'সাঘাটা', 22, '2017-10-19 12:24:05', '2017-10-19 12:24:05'),
(169, 'Sundarganj ', 'সুন্দরগঞ্জ', 22, '2017-10-19 12:24:46', '2017-10-19 12:24:46'),
(170, 'Gazipur Sadar ', 'গাজীপুর সদর', 23, '2017-10-19 12:26:26', '2017-10-19 12:26:26'),
(171, 'Kaliakair ', 'কালিয়াকৈর', 23, '2017-10-19 12:27:12', '2017-10-19 12:27:12'),
(172, 'Kaliganj ', 'কালীগঞ্জ', 23, '2017-10-19 12:27:50', '2017-10-19 12:27:50'),
(173, 'Kapasia ', 'কাপাসিয়া', 23, '2017-10-19 12:28:34', '2017-10-19 12:28:34'),
(174, 'Sreepur', 'শ্রীপুর', 23, '2017-10-19 12:29:22', '2017-10-19 12:29:22'),
(175, 'Gopalganj Sadar', 'গোপালগঞ্জ সদর', 24, '2017-10-19 12:30:47', '2017-10-19 12:30:47'),
(176, 'Kashiani ', 'কাশিয়ানী', 24, '2017-10-19 12:31:26', '2017-10-19 12:31:26'),
(177, 'Kotalipara ', 'কোটালীপাড়া', 24, '2017-10-19 12:32:11', '2017-10-19 12:32:11'),
(178, 'Muksedpur ', 'মুকসেদপুর', 24, '2017-10-19 12:32:54', '2017-10-19 12:32:54'),
(179, 'Tungipara', 'টুঙ্গীপাড়া', 24, '2017-10-19 12:33:42', '2017-10-19 12:33:42'),
(180, 'Habiganj Sadar ', 'হবিগঞ্জ সদর', 25, '2017-10-19 12:35:02', '2017-10-19 12:35:02'),
(181, 'Azmiriganj ', 'আজমিরীগঞ্জ ', 25, '2017-10-19 12:37:18', '2017-10-19 12:37:18'),
(182, 'Bahubal', 'বাহুবল', 25, '2017-10-19 12:38:13', '2017-10-19 12:38:13'),
(183, 'Baniachong ', 'বানিয়াচং', 25, '2017-10-19 12:39:02', '2017-10-19 12:39:02'),
(184, 'Chunarughat ', 'চুনারুঘাট', 25, '2017-10-19 12:39:43', '2017-10-19 12:39:43'),
(185, 'Madhabpur', 'মাধবপুর', 25, '2017-10-19 12:40:31', '2017-10-19 12:40:31'),
(186, 'Nabiganj', 'নবীগঞ্জ', 25, '2017-10-19 12:41:39', '2017-10-19 12:41:39'),
(187, 'Lakhai', 'লাখাই', 25, '2017-10-19 12:42:29', '2017-10-19 12:42:29'),
(188, 'Jamalpur Sadar ', 'জামালপুর সদর', 26, '2017-10-19 12:45:36', '2017-10-19 12:45:36'),
(189, 'Bakshiganj ', 'বকশীগঞ্জ', 26, '2017-10-19 12:46:20', '2017-10-19 12:46:20'),
(190, 'Dewanganj ', 'দেওয়ানগঞ্জ', 26, '2017-10-19 12:47:04', '2017-10-19 12:47:04'),
(191, 'Islampur ', 'ইসলামপুর', 26, '2017-10-19 12:47:45', '2017-10-19 12:47:45'),
(192, 'Madarganj ', 'মাদারগঞ্জ', 26, '2017-10-19 12:48:28', '2017-10-19 12:48:28'),
(193, 'Melandaha ', 'মেলান্দহ', 26, '2017-10-19 12:49:10', '2017-10-19 12:49:10'),
(194, 'Sarishabari', 'সরিষাবাড়ি', 26, '2017-10-19 12:49:54', '2017-10-19 12:49:54'),
(195, 'Jashore Sadar ', 'যশোর সদর', 27, '2017-10-19 12:51:42', '2018-04-02 11:58:51'),
(196, 'Abhoynagar ', 'অভয়নগর', 27, '2017-10-19 12:52:41', '2018-03-15 20:20:01'),
(197, 'Bagherpara  ', 'বাঘেরপাড়া', 27, '2017-10-19 12:53:29', '2017-10-19 12:53:29'),
(198, 'Chowgachha', 'চৌগাছা', 27, '2017-10-19 12:54:19', '2017-10-19 12:54:19'),
(199, 'Jhikargachha', 'ঝিকরগাছা', 27, '2017-10-19 12:55:07', '2017-10-19 12:55:07'),
(200, 'Keshabpur', 'কেশবপুর', 27, '2017-10-19 12:56:07', '2017-10-19 12:56:07'),
(201, 'Monirampur', 'মনিরামপুর', 27, '2017-10-19 12:57:01', '2017-10-19 12:57:01'),
(202, 'Sharsha', 'শার্শা', 27, '2017-10-19 12:58:01', '2017-10-19 12:58:01'),
(203, 'Jhalokathi Sadar', 'ঝালকাঠি সদর', 28, '2017-10-19 13:01:25', '2017-10-19 13:01:25'),
(204, 'Kathalia ', 'কাঁঠালিয়া', 28, '2017-10-19 13:02:22', '2017-10-19 13:02:22'),
(205, 'Nalchhity', 'নলছিটি', 28, '2017-10-19 13:03:13', '2017-10-19 13:03:13'),
(206, 'Rajapur', 'রাজাপুর', 28, '2017-10-19 13:04:05', '2017-10-19 13:04:05'),
(207, 'Jhenaidah Sadar', 'ঝিনাইদহ সদর', 29, '2017-10-19 13:05:53', '2017-10-19 13:05:53'),
(208, 'Harinakunda', 'হরিণাকুন্ড', 29, '2017-10-19 13:06:39', '2017-10-19 13:06:39'),
(209, 'Kaliganj', 'কালীগঞ্জ', 29, '2017-10-19 13:08:43', '2017-10-19 13:08:43'),
(210, 'Kotchandpur', 'কোটচাঁদপুর', 29, '2017-10-19 13:10:04', '2017-10-19 13:10:04'),
(211, 'Moheshpur', 'মহেশপুর', 29, '2017-10-19 13:10:51', '2017-10-19 13:10:51'),
(212, 'Shailkupa', 'শৈলকুপা', 29, '2017-10-19 13:12:09', '2017-10-19 13:12:09'),
(213, 'Joypurhat Sadar', 'জয়পুরহাট সদর', 30, '2017-10-19 13:13:59', '2017-10-19 13:13:59'),
(214, 'Akkelpur', 'আক্কেলপুর', 30, '2017-10-19 13:14:44', '2017-10-19 13:14:44'),
(215, 'Kalai', 'কালাই', 30, '2017-10-19 13:15:35', '2017-10-19 13:15:35'),
(216, 'Khetlal', 'ক্ষেতলাল', 30, '2017-10-19 13:16:37', '2017-10-19 13:16:37'),
(217, 'Panchbibi ', 'পাঁচবিবি', 30, '2017-10-19 13:17:40', '2017-10-19 13:17:40'),
(218, 'Khagrachhari Sadar', 'খাগড়াছড়ি সদর', 31, '2017-10-19 13:22:53', '2017-10-19 13:22:53'),
(219, 'Dighinala', 'দীঘিনালা', 31, '2017-10-19 13:23:41', '2017-10-19 13:23:41'),
(220, 'Lakshmichhari  ', 'লক্ষ্মীছড়ি', 31, '2017-10-19 13:24:24', '2017-10-19 13:24:24'),
(221, 'Manikchhari', 'মানিকছড়ি', 31, '2017-10-19 13:25:38', '2017-10-19 13:25:38'),
(222, 'Matiranga', 'মাটিরাঙ্গা', 31, '2017-10-19 13:26:30', '2017-10-19 13:26:30'),
(223, 'Mohalchhari  ', 'মহালছড়ি', 31, '2017-10-19 13:27:34', '2017-10-19 13:27:34'),
(224, 'Panchhari  ', 'পানছড়ি', 31, '2017-10-19 13:28:19', '2017-10-19 13:28:19'),
(225, 'Ramgarh', 'রামগড়', 31, '2017-10-19 13:29:01', '2017-10-19 13:29:01'),
(226, 'Khulna Sadar ', 'খুলনা সদর', 32, '2017-10-19 13:30:20', '2017-10-19 13:30:20'),
(227, 'Batiaghata', 'বটিয়াঘাটা', 32, '2017-10-19 13:31:16', '2017-10-19 13:31:16'),
(228, 'Dacope', 'দাকোপ', 32, '2017-10-19 13:32:43', '2017-10-19 13:32:43'),
(229, 'Dighalia', 'দীঘলিয়া', 32, '2017-10-19 13:33:36', '2017-10-19 13:33:36'),
(230, 'Dumuria', 'ডুমুরিয়া', 32, '2017-10-19 13:34:20', '2017-10-19 13:34:20'),
(231, 'Fultola ', 'ফুলতলা ', 32, '2017-10-19 13:35:13', '2018-06-01 18:20:32'),
(232, 'Koyra', 'কয়রা', 32, '2017-10-19 13:35:56', '2017-10-19 13:35:56'),
(233, 'Paikgachha', 'পাইকগাছা', 32, '2017-10-19 13:36:38', '2017-10-19 13:36:38'),
(234, 'Rupsa', 'রূপসা', 32, '2017-10-19 13:37:20', '2017-10-19 13:37:20'),
(235, 'Terokhada', 'তেরখাদা', 32, '2017-10-19 13:38:05', '2018-06-01 18:27:43'),
(236, 'Kishoreganj Sadar', 'কিশোরগঞ্জ সদর', 33, '2017-10-19 14:09:23', '2017-10-19 14:09:23'),
(237, 'Austagram', 'অষ্টগ্রাম', 33, '2017-10-19 14:10:17', '2017-10-19 14:10:17'),
(238, 'Bajitpur', 'বাজিতপুর', 33, '2017-10-19 14:11:09', '2017-10-19 14:11:09'),
(239, 'Bhairab', 'ভৈরব', 33, '2017-10-19 14:11:57', '2017-10-19 14:11:57'),
(240, 'Hossainpur', 'হোসেনপুর', 33, '2017-10-19 14:13:14', '2017-10-19 14:13:14'),
(241, 'Itna', 'ইটনা', 33, '2017-10-19 14:14:06', '2017-10-19 14:14:06'),
(242, 'Karimganj', 'করিমগঞ্জ', 33, '2017-10-19 14:14:56', '2017-10-19 14:14:56'),
(243, 'Katiadi ', 'কটিয়াদী', 33, '2017-10-19 14:15:54', '2017-10-19 14:15:54'),
(244, 'Kuliarchar ', 'কুলিয়ারচর', 33, '2017-10-19 14:16:40', '2017-10-19 14:16:40'),
(245, 'Mithamoin', 'মিঠামইন', 33, '2017-10-19 14:17:35', '2017-10-19 14:17:35'),
(246, 'Nikli', 'নিকলী', 33, '2017-10-19 14:18:24', '2017-10-19 14:18:24'),
(247, 'Pakundia', 'পাকুন্দিয়া', 33, '2017-10-19 14:19:11', '2017-10-19 14:19:11'),
(248, 'Tarail', 'তাড়াইল', 33, '2017-10-19 14:20:03', '2017-10-19 14:20:03'),
(249, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 34, '2017-10-19 14:22:02', '2017-10-19 14:22:02'),
(250, 'Bhurungamari', 'ভুরুঙ্গামারী', 34, '2017-10-19 14:22:49', '2017-10-19 14:22:49'),
(251, 'Chilmari', 'চিলমারী', 34, '2017-10-19 14:23:33', '2017-10-19 14:23:33'),
(252, 'Fulbari', 'ফুলবাড়ি', 34, '2017-10-19 14:24:30', '2018-03-16 13:33:02'),
(253, 'Nageshwari', 'নাগেশ্বরী', 34, '2017-10-19 14:25:26', '2017-10-19 14:25:26'),
(254, 'Rajarhat', 'রাজারহাট', 34, '2017-10-19 14:26:14', '2017-10-19 14:26:14'),
(255, 'Rajibpur', 'রাজিবপুর', 34, '2017-10-19 14:27:22', '2017-10-19 14:27:22'),
(256, 'Rowmari', 'রৌমারী', 34, '2017-10-19 14:28:14', '2017-10-19 14:28:14'),
(257, 'Ulipur', 'উলিপুর', 34, '2017-10-19 14:29:10', '2017-10-19 14:29:10'),
(258, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 35, '2017-10-19 14:30:44', '2017-10-19 14:30:44'),
(259, 'Bheramara', 'ভেড়ামারা', 35, '2017-10-19 14:31:27', '2017-10-19 14:31:27'),
(260, 'Daulatpur', 'দৌলতপুর', 35, '2017-10-19 14:32:14', '2017-10-19 14:32:14'),
(261, 'Khoksa', 'খোকসা', 35, '2017-10-19 14:33:00', '2017-10-19 14:33:00'),
(262, 'Kumarkhali ', 'কুমারখালী ', 35, '2017-10-19 14:34:20', '2017-10-19 14:34:20'),
(263, 'Mirpur', 'মিরপুর', 35, '2017-10-19 14:35:08', '2017-10-19 14:35:08'),
(264, 'Lakshmipur Sadar', 'লক্ষ্মীপুর সদর', 36, '2017-10-19 14:36:38', '2017-10-19 14:36:38'),
(265, 'Kamalnagar', 'কমলনগর', 36, '2017-10-19 14:37:25', '2018-03-15 20:43:04'),
(266, 'Raipur', 'রায়পুর', 36, '2017-10-19 14:38:15', '2017-10-19 14:38:15'),
(267, 'Ramganj', 'রামগঞ্জ', 36, '2017-10-19 14:39:02', '2017-10-19 14:39:02'),
(268, 'Ramgati', 'রামগতি', 36, '2017-10-19 14:39:53', '2017-10-19 14:39:53'),
(269, 'Lalmonirhat Sadar', 'লালমনিরহাট সদর', 37, '2017-10-19 14:44:02', '2017-10-19 14:44:02'),
(270, 'Aditmari ', 'আদিতমারী', 37, '2017-10-19 14:44:48', '2017-10-19 14:44:48'),
(271, 'Hatibandha', 'হাতীবান্ধা', 37, '2017-10-19 14:45:38', '2017-10-19 14:45:38'),
(272, 'Kaliganj', 'কালীগঞ্জ', 37, '2017-10-19 14:46:33', '2017-10-19 14:46:33'),
(273, 'Patgram', 'পাটগ্রাম', 37, '2017-10-19 14:47:25', '2017-10-19 14:47:25'),
(274, 'Madaripur Sadar', 'মাদারীপুর সদর', 38, '2017-10-19 14:49:10', '2017-10-19 14:49:10'),
(275, 'Kalkini', 'কালকিনী', 38, '2017-10-19 14:50:02', '2017-10-19 14:50:02'),
(276, 'Rajoir', 'রাজৈর', 38, '2017-10-19 14:50:51', '2017-10-19 14:50:51'),
(277, 'Shibchar', 'শিবচর', 38, '2017-10-19 14:51:33', '2017-10-19 14:51:33'),
(278, 'Magura Sadar', 'মাগুরা সদর', 39, '2017-10-19 14:53:04', '2017-10-19 14:53:04'),
(279, 'Mohammadpur', 'মোহাম্মদপুর', 39, '2017-10-19 14:53:49', '2017-10-19 14:53:49'),
(280, 'Shalikha', 'শালিখা', 39, '2017-10-19 14:54:35', '2017-10-19 14:54:35'),
(281, 'Sreepur', 'শ্রীপুর', 39, '2017-10-19 14:55:21', '2017-10-19 14:55:21'),
(282, 'Manikganj Sadar', 'মানিকগঞ্জ সদর', 40, '2017-10-19 14:58:03', '2017-10-19 14:58:03'),
(283, 'Daulatpur', 'দৌলতপুর', 40, '2017-10-19 14:58:53', '2017-10-19 14:58:53'),
(284, 'Ghior', 'ঘিওর', 40, '2017-10-19 14:59:40', '2017-10-19 14:59:40'),
(285, 'Harirampur', 'হরিরামপুর', 40, '2017-10-19 15:02:53', '2017-10-19 15:02:53'),
(286, 'Saturia', 'সাটুরিয়া', 40, '2017-10-19 15:03:58', '2017-10-19 15:03:58'),
(287, 'Shibalaya', 'শিবালয়', 40, '2017-10-19 15:04:49', '2017-10-19 15:04:49'),
(288, 'Singair', 'সিঙ্গাইর', 40, '2017-10-19 15:05:44', '2017-10-19 15:05:44'),
(289, 'Meherpur Sadar', 'মেহেরপুর সদর', 41, '2017-10-19 15:10:37', '2017-10-19 15:10:37'),
(290, 'Gangni', 'গাংনী', 41, '2017-10-19 15:11:16', '2017-10-19 15:11:16'),
(291, 'Mujibnagar', 'মুজিবনগর', 41, '2017-10-19 15:12:04', '2018-03-15 20:32:11'),
(292, 'Moulvibazar Sadar', 'মৌলভীবাজার সদর', 42, '2017-10-19 15:13:31', '2017-10-19 15:13:31'),
(293, 'Barlekha', 'বড়লেখা', 42, '2017-10-19 15:14:15', '2017-10-19 15:14:15'),
(294, 'Juri', 'জুরী', 42, '2017-10-19 15:15:06', '2017-10-19 15:15:06'),
(295, 'Kamalganj', 'কমলগঞ্জ', 42, '2017-10-19 15:15:50', '2017-10-19 15:15:50'),
(296, 'Kulaura', 'কুলাউড়া', 42, '2017-10-19 15:16:49', '2017-10-19 15:16:49'),
(297, 'Rajnagar', 'রাজনগর', 42, '2017-10-19 15:18:23', '2018-03-15 20:33:16'),
(298, 'Sreemangal', 'শ্রীমঙ্গল', 42, '2017-10-19 15:19:39', '2017-10-19 15:19:39'),
(299, 'Munsiganj Sadar', 'মুন্সিগঞ্জ সদর', 44, '2017-10-19 15:21:38', '2018-03-17 10:40:10'),
(300, 'Gazaria', 'গজারিয়া', 44, '2017-10-19 15:22:26', '2017-10-19 15:22:26'),
(301, 'Lowhajang', 'লৌহজং', 44, '2017-10-19 15:23:26', '2017-10-19 15:23:26'),
(302, 'Sirajdikhan', 'সিরাজদীখান', 44, '2017-10-19 15:24:31', '2017-10-19 15:24:31'),
(303, 'Sreenagar', 'শ্রীনগর', 44, '2017-10-19 15:25:34', '2017-10-19 15:25:34'),
(304, 'Tongibari', 'টঙ্গীবাড়ি', 44, '2017-10-19 15:26:37', '2017-10-19 15:26:37'),
(305, 'Mymensingh Sadar', 'ময়মনসিংহ সদর', 45, '2017-10-19 15:29:06', '2017-10-19 15:29:06'),
(306, 'Bhaluka', 'ভালুকা', 45, '2017-10-19 15:30:01', '2017-10-19 15:30:01'),
(307, 'Dhobaura', 'ধোবাউড়া', 45, '2017-10-19 15:32:28', '2017-10-19 15:32:28'),
(308, 'Fulbaria', 'ফুলবাড়িয়া', 45, '2017-10-19 15:33:13', '2018-03-16 13:35:17'),
(309, 'Fulpur', 'ফুলপুর', 45, '2017-10-19 15:33:59', '2018-03-16 13:36:03'),
(310, 'Gafargaon', 'গফরগাঁও', 45, '2017-10-19 15:35:07', '2017-10-19 15:35:07'),
(311, 'Gouripur', 'গৌরীপুর', 45, '2017-10-19 15:35:51', '2017-10-19 15:35:51'),
(312, 'Haluaghat', 'হালুয়াঘাট', 45, '2017-10-19 15:36:52', '2017-10-19 15:36:52'),
(313, 'Ishwarganj', 'ঈশ্বরগঞ্জ', 45, '2017-10-19 15:37:41', '2017-10-19 15:37:41'),
(314, 'Muktagachha', 'মুক্তাগাছা', 45, '2017-10-19 15:38:31', '2017-10-19 15:38:31'),
(315, 'Nandail', 'নান্দাইল', 45, '2017-10-19 15:39:16', '2017-10-19 15:39:16'),
(316, 'Tarakanda', 'তারাকান্দা', 45, '2017-10-19 15:39:59', '2017-10-19 15:39:59'),
(317, 'Trishal', 'ত্রিশাল', 45, '2017-10-19 15:40:43', '2017-10-19 15:40:43'),
(318, 'Naogaon Sadar', 'নওগাঁ সদর', 46, '2017-10-19 16:04:27', '2017-10-19 16:04:27'),
(319, 'Atrai', 'আত্রাই', 46, '2017-10-19 16:05:22', '2017-10-19 16:05:22'),
(320, 'Badalgachhi', 'বদলগাছী', 46, '2017-10-19 16:06:18', '2017-10-19 16:06:18'),
(321, 'Dhamoirhat', 'ধামুরহাট', 46, '2017-10-19 16:07:21', '2018-04-29 14:52:47'),
(322, 'Manda', 'মান্দা', 46, '2017-10-19 16:08:03', '2017-10-19 16:08:03'),
(323, 'Mohadevpur', 'মহাদেবপুর', 46, '2017-10-19 16:08:50', '2017-10-19 16:08:50'),
(324, 'Niamatpur', 'নিয়ামতপুর', 46, '2017-10-19 16:09:33', '2017-10-19 16:09:33'),
(325, 'Patnitala', 'পত্নীতলা', 46, '2017-10-19 16:10:23', '2017-10-19 16:10:23'),
(326, 'Porsha', 'পরশা', 46, '2017-10-19 16:11:11', '2017-10-19 16:11:11'),
(327, 'Raninagar', 'রানীনগর', 46, '2017-10-19 16:11:52', '2018-03-15 20:36:04'),
(328, 'Sapahar', 'সাপাহার', 46, '2017-10-19 16:13:07', '2017-10-19 16:13:07'),
(329, 'Narail Sadar', 'নড়াইল সদর', 47, '2017-10-19 16:14:39', '2017-10-19 16:14:39'),
(330, 'Kalia', 'কালিয়া', 47, '2017-10-19 16:15:24', '2017-10-19 16:15:24'),
(331, 'Lohagara', 'লোহাগড়া', 47, '2017-10-19 16:16:12', '2017-10-19 16:16:12'),
(332, 'Narayanganj Sadar', 'নারায়ণগঞ্জ সদর', 48, '2017-10-19 16:32:53', '2017-10-19 16:32:53'),
(333, 'Araihazar', 'আড়াইহাজার', 48, '2017-10-19 16:33:42', '2017-10-19 16:33:42'),
(334, 'Bandar', 'বন্দর', 48, '2017-10-19 16:34:59', '2017-10-19 16:34:59'),
(335, 'Rupganj', 'রূপগঞ্জ', 48, '2017-10-19 16:35:54', '2017-10-19 16:35:54'),
(336, 'Sonargaon', 'সোনারগাঁও', 48, '2017-10-19 16:36:41', '2017-10-19 16:36:41'),
(337, 'Narsingdi Sadar', 'নরসিংদী সদর', 49, '2017-10-19 16:40:27', '2017-10-19 16:40:27'),
(338, 'Belabo', 'বেলাবো', 49, '2017-10-19 16:41:22', '2017-10-19 16:41:22'),
(339, 'Monohardi', 'মনোহরদী', 49, '2017-10-19 16:43:04', '2017-10-19 16:43:04'),
(340, 'Palash', 'পলাশ', 49, '2017-10-19 16:43:49', '2017-10-19 16:43:49'),
(341, 'Raipura', 'রায়পুরা', 49, '2017-10-19 16:44:47', '2017-10-19 16:44:47'),
(342, 'Shibpur', 'শিবপুর', 49, '2017-10-19 16:45:32', '2017-10-19 16:45:32'),
(343, 'Natore Sadar', 'নাটোর সদর', 50, '2017-10-19 16:47:26', '2017-10-19 16:47:26'),
(344, 'Bagatipara', 'বাগাতিপাড়া', 50, '2017-10-19 16:48:13', '2017-10-19 16:48:13'),
(345, 'Baraigram', 'বরাইগ্রাম', 50, '2017-10-19 16:49:01', '2017-10-19 16:49:01'),
(346, 'Gurudaspur', 'গুরুদাসপুর', 50, '2017-10-19 16:50:12', '2017-10-19 16:50:12'),
(347, 'Lalpur', 'লালপুর', 50, '2017-10-19 16:52:18', '2017-10-19 16:52:18'),
(348, 'Naldanga', 'নলডাঙ্গা', 50, '2017-10-19 16:53:01', '2017-10-19 16:53:01'),
(349, 'Singra', 'সিংড়া', 50, '2017-10-19 16:53:51', '2017-10-19 16:53:51'),
(350, 'Netrokona Sadar', 'নেত্রকোনা সদর', 51, '2017-10-19 16:55:44', '2017-10-19 16:55:44'),
(351, 'Atpara', 'আটপাড়া', 51, '2017-10-19 16:56:32', '2017-10-19 16:56:32'),
(352, 'Barhatta', 'বারহাট্টা', 51, '2017-10-19 16:57:23', '2017-10-19 16:57:23'),
(353, 'Durgapur', 'দূর্গাপুর', 51, '2017-10-19 16:58:20', '2018-06-02 15:27:04'),
(354, 'Kalmakanda', 'কলমাকান্দা', 51, '2017-10-19 16:59:07', '2017-10-19 16:59:07'),
(355, 'Kendua', 'কেন্দুয়া', 51, '2017-10-19 16:59:53', '2017-10-19 16:59:53'),
(356, 'Khaliajuri', 'খালিয়াজুরী', 51, '2017-10-19 17:01:31', '2017-10-19 17:01:31'),
(357, 'Madan', 'মদন', 51, '2017-10-19 17:02:32', '2017-10-19 17:02:32'),
(358, 'Mohanganj', 'মোহনগঞ্জ', 51, '2017-10-19 17:03:56', '2017-10-19 17:03:56'),
(359, 'Purbadhala', 'পূর্বধলা', 51, '2017-10-19 17:04:50', '2017-10-19 17:04:50'),
(360, 'Nilfamari Sadar', 'নীলফামারি সদর', 52, '2017-10-19 17:07:42', '2018-06-02 13:16:08'),
(361, 'Dimla', 'ডিমলা', 52, '2017-10-19 17:08:42', '2017-10-19 17:08:42'),
(362, 'Domar', 'ডোমার', 52, '2017-10-19 17:09:32', '2017-10-19 17:09:32'),
(363, 'Jaldhaka', 'জলঢাকা', 52, '2017-10-19 17:10:18', '2017-10-19 17:10:18'),
(364, 'Kishoreganj', 'কিশোরগঞ্জ', 52, '2017-10-19 17:11:41', '2017-10-19 17:11:41'),
(365, 'Saidpur', 'সৈয়দপুর', 52, '2017-10-19 17:12:33', '2017-10-19 17:12:33'),
(366, 'Noakhali Sadar', 'নোয়াখালী সদর', 53, '2017-10-19 17:13:44', '2017-10-19 17:13:44'),
(367, 'Begumganj', 'বেগমগঞ্জ', 53, '2017-10-19 17:14:32', '2017-10-19 17:14:32'),
(368, 'Chatkhil', 'চাটখিল', 53, '2017-10-19 17:15:21', '2017-10-19 17:15:21'),
(369, 'Companiganj', 'কোম্পানিগঞ্জ', 53, '2017-10-19 17:16:13', '2017-10-19 17:16:13'),
(370, 'Hatiya', 'হাতিয়া', 53, '2017-10-19 17:17:02', '2017-10-19 17:17:02'),
(371, 'Kabirhat', 'কবিরহাট', 53, '2017-10-19 17:18:18', '2017-10-19 17:18:18'),
(372, 'Senbag', 'সেনবাগ', 53, '2017-10-19 17:19:19', '2017-10-19 17:19:19'),
(373, 'Sonaimuri', 'সোনাইমুড়ি', 53, '2017-10-19 17:20:42', '2017-10-19 17:20:42'),
(374, 'Subarnachar', 'সুবর্ণচর', 53, '2017-10-19 17:21:45', '2017-10-19 17:21:45'),
(375, 'Pabna Sadar', 'পাবনা সদর', 54, '2017-10-19 20:03:05', '2017-10-19 20:03:05'),
(376, 'Ataikula', 'আতাইকুলা', 54, '2017-10-19 20:04:09', '2017-10-19 20:04:09'),
(377, 'Atghoria', 'আটঘরিয়া', 54, '2017-10-19 20:05:09', '2017-10-19 20:05:09'),
(378, 'Bera', 'বেড়া', 54, '2017-10-19 20:05:50', '2017-10-19 20:05:50'),
(379, 'Bhangura', 'ভাঙ্গুরা', 54, '2017-10-19 20:06:32', '2017-10-19 20:06:32'),
(380, 'Chatmohar', 'চাটমোহর', 54, '2017-10-19 20:07:23', '2017-10-19 20:07:23'),
(381, 'Faridpur', 'ফরিদপুর', 54, '2017-10-19 20:08:28', '2017-10-19 20:08:28'),
(382, 'Ishwardi', 'ঈশ্বরদী', 54, '2017-10-19 20:09:22', '2017-10-19 20:09:22'),
(383, 'Santhia', 'সাঁথিয়া', 54, '2017-10-19 20:10:19', '2017-10-19 20:10:19'),
(384, 'Sujanagar', 'সুজানগর', 54, '2017-10-19 20:11:38', '2017-10-19 20:11:38'),
(385, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 55, '2017-10-19 20:13:17', '2017-10-19 20:13:17'),
(386, 'Atwari', 'আটোয়ারী', 55, '2017-10-19 20:14:10', '2017-10-19 20:14:10'),
(387, 'Boda', 'বোদা', 55, '2017-10-19 20:15:01', '2017-10-19 20:15:01'),
(388, 'Debiganj', 'দেবীগঞ্জ', 55, '2017-10-19 20:15:58', '2017-10-19 20:15:58'),
(389, 'Tetulia', 'তেঁতুলিয়া', 55, '2017-10-19 20:16:51', '2017-10-19 20:16:51'),
(390, 'Patuakhali Sadar', 'পটুয়াখালী সদর', 56, '2017-10-19 20:18:28', '2017-10-19 20:18:28'),
(391, 'Baufal', 'বাউফল', 56, '2017-10-19 20:19:28', '2018-03-16 14:35:06'),
(392, 'Dashmina', 'দশমিনা', 56, '2017-10-19 20:20:23', '2017-10-19 20:20:23'),
(393, 'Dumki', 'দুমকি', 56, '2017-10-19 20:21:23', '2017-10-19 20:21:23'),
(394, 'Galachipa', 'গলাচিপা', 56, '2017-10-19 20:22:10', '2017-10-19 20:22:10'),
(395, 'Kalapara', 'কলাপাড়া', 56, '2017-10-19 20:23:08', '2017-10-19 20:23:08'),
(396, 'Mirzaganj', 'মির্জাগঞ্জ', 56, '2017-10-19 20:24:14', '2017-10-19 20:24:14'),
(397, 'Rangabali', 'রাঙ্গাবালি', 56, '2017-10-19 20:25:04', '2017-10-19 20:25:04'),
(398, 'Pirojpur Sadar', 'পিরোজপুর সদর', 57, '2017-10-19 20:26:46', '2017-10-19 20:26:46'),
(399, 'Bhandaria', 'ভাণ্ডারিয়া', 57, '2017-10-19 20:28:07', '2017-10-19 20:28:07'),
(400, 'Kawkhali', 'কাউখালী', 57, '2017-10-19 20:28:47', '2017-10-19 20:28:47'),
(401, 'Mathbaria', 'মঠবাড়িয়া', 57, '2017-10-19 20:29:39', '2017-10-19 20:29:39'),
(402, 'Nazirpur', 'নাজিরপুর', 57, '2017-10-19 20:30:33', '2017-10-19 20:30:33'),
(403, 'Nesarabad (Swarupkathi)', 'নেসারাবাদ (স্বরূপকাঠি)', 57, '2017-10-19 20:32:21', '2017-10-19 20:32:21'),
(404, 'Zianagar', 'জিয়ানগর', 57, '2017-10-19 20:33:18', '2018-03-15 20:37:39'),
(405, 'Rajbari Sadar', 'রাজবাড়ি সদর', 58, '2017-10-19 20:36:59', '2017-10-19 20:36:59'),
(406, 'Baliakandi', 'বালিয়াকান্দি', 58, '2017-10-19 20:37:58', '2017-10-19 20:37:58'),
(407, 'Goalanda', 'গোয়ালন্দ', 58, '2017-10-19 20:39:36', '2017-10-19 20:39:36'),
(408, 'Kalukhali', 'কালুখালী', 58, '2017-10-19 20:40:55', '2017-10-19 20:40:55'),
(409, 'Pangsha', 'পাংশা', 58, '2017-10-19 20:41:42', '2017-10-19 20:41:42'),
(410, 'Rajshahi Sadar', 'রাজশাহী সদর', 59, '2017-10-19 20:43:00', '2017-10-19 20:43:00'),
(411, 'Bagha', 'বাঘা', 59, '2017-10-19 20:43:55', '2018-05-03 08:30:28'),
(412, 'Bagmara', 'বাগমারা', 59, '2017-10-19 20:44:39', '2017-10-19 20:44:39'),
(413, 'Charghat', 'চারঘাট', 59, '2017-10-19 20:46:01', '2017-10-19 20:46:01'),
(414, 'Durgapur', 'দূর্গাপুর', 59, '2017-10-19 20:46:43', '2017-10-19 20:46:43'),
(415, 'Godagari', 'গোদাগারী', 59, '2017-10-19 20:47:32', '2017-10-19 20:47:32'),
(416, 'Mohanpur', 'মোহনপুর', 59, '2017-10-19 20:48:28', '2017-10-19 20:48:28'),
(417, 'Paba', 'পবা', 59, '2017-10-19 20:49:43', '2017-10-19 20:49:43'),
(418, 'Puthia', 'পুঠিয়া', 59, '2017-10-19 20:51:03', '2017-10-19 20:51:03'),
(419, 'Tanore', 'তানোর', 59, '2017-10-19 20:52:02', '2017-10-19 20:52:02'),
(420, 'Rangamati Sadar', 'রাঙ্গামাটি সদর', 60, '2017-10-19 20:54:00', '2017-10-19 20:54:00'),
(421, 'Baghaichhari', 'বাঘাইছড়ি', 60, '2017-10-19 20:54:50', '2017-10-19 20:54:50'),
(422, 'Barkal', 'বরকল', 60, '2017-10-19 20:55:45', '2017-10-19 20:55:45'),
(423, 'Belaichhari', 'বিলাইছড়ি', 60, '2017-10-19 20:56:30', '2017-10-19 20:56:30'),
(424, 'Juraichhari', 'জুরাইছড়ি', 60, '2017-10-19 20:57:18', '2017-10-19 20:57:18'),
(425, 'Kaptai', 'কাপ্তাই', 60, '2017-10-19 20:58:23', '2017-10-19 20:58:23'),
(426, 'Kawkhali', 'কাউখালী', 60, '2017-10-19 20:59:11', '2017-10-19 20:59:11'),
(427, 'Langadu', 'লংগদু', 60, '2017-10-19 20:59:54', '2017-10-19 20:59:54'),
(428, 'Naniarchar', 'নানিয়ারচর', 60, '2017-10-19 21:00:33', '2017-10-19 21:00:33'),
(429, 'Rajasthali', 'রাজস্থলী', 60, '2017-10-19 21:01:19', '2017-10-19 21:01:19'),
(430, 'Rangpur Sadar', 'রংপুর সদর', 61, '2017-10-19 21:05:07', '2017-10-19 21:05:07'),
(431, 'Badarganj', 'বদরগঞ্জ', 61, '2017-10-19 21:06:09', '2017-10-19 21:06:09'),
(432, 'Gangachhara', 'গংগাছড়া', 61, '2017-10-19 21:07:01', '2018-03-15 14:17:29'),
(433, 'Kawnia', 'কাউনিয়া', 61, '2017-10-19 21:08:05', '2017-10-19 21:08:05'),
(434, 'Mithapukur', 'মিঠাপুকুর', 61, '2017-10-19 21:09:01', '2017-10-19 21:09:01'),
(435, 'Pirgachha', 'পীরগাছা', 61, '2017-10-19 21:10:05', '2017-10-19 21:10:05'),
(436, 'Pirganj', 'পীরগঞ্জ', 61, '2017-10-19 21:11:08', '2017-10-19 21:11:08'),
(437, 'Taraganj', 'তারাগঞ্জ', 61, '2017-10-19 21:11:59', '2017-10-19 21:11:59'),
(438, 'Satkhira Sadar', 'সাতক্ষীরা সদর', 62, '2017-10-19 21:14:34', '2017-10-19 21:14:34'),
(439, 'Ashashuni', 'আশাশুনি', 62, '2017-10-19 21:15:16', '2017-10-19 21:15:16'),
(440, 'Debhata', 'দেবহাটা', 62, '2017-10-19 21:16:02', '2017-10-19 21:16:02'),
(441, 'Kalaroa', 'কলারোয়া', 62, '2017-10-19 21:16:58', '2017-10-19 21:16:58'),
(442, 'Kaliganj', 'কালীগঞ্জ', 62, '2017-10-19 21:19:01', '2017-10-19 21:19:01'),
(443, 'Shyamnagar', 'শ্যামনগর', 62, '2017-10-19 21:20:03', '2017-10-19 21:20:03'),
(444, 'Tala', 'তালা', 62, '2017-10-19 21:21:05', '2017-10-19 21:21:05'),
(445, 'Shariatpur Sadar', 'শরিয়তপুর সদর', 63, '2017-10-19 21:23:02', '2017-10-19 21:23:02'),
(446, 'Bhedarganj', 'ভেদরগঞ্জ', 63, '2017-10-19 21:23:45', '2017-10-19 21:23:45'),
(447, 'Damudya', 'ডামুড্যা', 63, '2017-10-19 21:24:32', '2017-10-19 21:24:32'),
(448, 'Gosairhat', 'গোসাইরহাট', 63, '2017-10-19 21:25:49', '2017-10-19 21:25:49'),
(449, 'Naria', 'নড়িয়া', 63, '2017-10-19 21:27:01', '2017-10-19 21:27:01'),
(450, 'Zajira', 'জাজিরা', 63, '2017-10-19 21:27:52', '2017-10-19 21:27:52'),
(451, 'Sherpur Sadar', 'শেরপুর সদর', 64, '2017-10-19 21:31:52', '2017-10-19 21:31:52'),
(452, 'Jhenaigati', 'ঝিনাইগাতী', 64, '2017-10-19 21:32:47', '2017-10-19 21:32:47'),
(453, 'Nakla', 'নকলা', 64, '2017-10-19 21:33:58', '2017-10-19 21:33:58'),
(454, 'Nalitabari', 'নালিতাবাড়ি', 64, '2017-10-19 21:34:57', '2017-10-19 21:34:57'),
(455, 'Sreebardi', 'শ্রীবর্দি ', 64, '2017-10-19 21:35:54', '2018-03-15 14:33:35'),
(456, 'Sirajganj Sadar', 'সিরাজগঞ্জ সদর', 65, '2017-10-19 21:37:25', '2017-10-19 21:37:25'),
(457, 'Belkuchi', 'বেলকুচি', 65, '2017-10-19 21:38:41', '2017-10-19 21:38:41'),
(458, 'Chowhali', 'চৌহালি', 65, '2017-10-19 21:39:31', '2017-10-19 21:39:31'),
(459, 'Raiganj', 'রায়গঞ্জ', 65, '2017-10-19 21:40:16', '2017-10-19 21:40:16'),
(460, 'Kamarkhanda', 'কামারখন্দ', 65, '2017-10-19 21:41:07', '2017-10-19 21:41:07'),
(461, 'Kazipur', 'কাজীপুর', 65, '2017-10-19 21:41:52', '2017-10-19 21:41:52'),
(462, 'Shahajadpur', 'শাহাজাদপুর', 65, '2017-10-19 21:43:08', '2017-10-19 21:43:08'),
(463, 'Tarash', 'তাড়াশ', 65, '2017-10-19 21:44:03', '2017-10-19 21:44:03'),
(464, 'Ullapara', 'উল্লাপাড়া', 65, '2017-10-19 21:44:47', '2017-10-19 21:44:47'),
(465, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 66, '2017-10-19 21:48:16', '2017-10-19 21:48:16'),
(466, 'Bishwamvarpur', 'বিশ্বম্ভরপুর', 66, '2017-10-19 21:48:57', '2017-10-19 21:48:57'),
(467, 'Chhatak', 'ছাতক', 66, '2017-10-19 21:49:56', '2017-10-19 21:49:56'),
(468, 'Derai', 'দিরাই', 66, '2017-10-19 21:50:51', '2017-10-19 21:50:51'),
(469, 'Dharmapasha', 'ধর্মপাশা', 66, '2017-10-19 21:51:39', '2017-10-19 21:51:39'),
(470, 'Doarabazar', 'দোয়ারাবাজার', 66, '2017-10-19 21:52:51', '2017-10-19 21:52:51'),
(471, 'Jagannathpur', 'জগন্নাথপুর', 66, '2017-10-19 21:53:36', '2017-10-19 21:53:36'),
(472, 'Jamalganj', 'জামালগঞ্জ', 66, '2017-10-19 21:54:25', '2017-10-19 21:54:25'),
(473, 'Salla', 'সাল্লা', 66, '2017-10-19 21:55:05', '2018-06-02 18:53:35'),
(474, 'Tahirpur', 'তাহিরপুর', 66, '2017-10-19 21:55:44', '2017-10-19 21:55:44'),
(475, 'Sylhet Sadar', 'সিলেট সদর', 67, '2017-10-19 21:57:46', '2017-10-19 21:57:46'),
(476, 'Balaganj', 'বালাগঞ্জ', 67, '2017-10-19 21:58:27', '2017-10-19 21:58:27'),
(477, 'Beanibazar', 'বিয়ানীবাজার', 67, '2017-10-19 21:59:49', '2017-10-19 21:59:49'),
(478, 'Bishwanath', 'বিশ্বনাথ', 67, '2017-10-19 22:00:43', '2017-10-19 22:00:43'),
(479, 'Companiganj', 'কোম্পানিগঞ্জ', 67, '2017-10-19 22:01:43', '2017-10-19 22:01:43'),
(480, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 67, '2017-10-19 22:02:39', '2017-10-19 22:02:39'),
(481, 'Golapganj', 'গোলাপগঞ্জ', 67, '2017-10-19 22:03:22', '2017-10-19 22:03:22'),
(482, 'Gowainghat', 'গোয়াইনঘাট', 67, '2017-10-19 22:04:21', '2017-10-19 22:04:21'),
(483, 'Jointapur', 'জৈন্তাপুর', 67, '2017-10-19 22:05:05', '2017-10-19 22:05:05'),
(484, 'Kanaighat', 'কানাইঘাট', 67, '2017-10-19 22:06:06', '2017-10-19 22:06:06'),
(485, 'Osmaninagar', 'ওসমানীনগর', 67, '2017-10-19 22:07:15', '2017-10-19 22:07:15'),
(486, 'Dakshin Surma', 'দক্ষিণ সুরমা', 67, '2017-10-19 22:08:00', '2018-05-03 23:20:53'),
(487, 'Zakiganj', 'জকিগঞ্জ', 67, '2017-10-19 22:08:40', '2017-10-19 22:08:40'),
(488, 'Tangail Sadar', 'টাঙ্গাইল সদর', 68, '2017-10-19 22:10:12', '2017-10-19 22:10:12'),
(489, 'Basail', 'বাসাইল', 68, '2017-10-19 22:12:21', '2017-10-19 22:12:21'),
(490, 'Bhuapur', 'ভূঞাপুর', 68, '2017-10-19 22:13:01', '2017-10-19 22:13:01'),
(491, 'Delduar', 'দেলদুয়ার', 68, '2017-10-19 22:14:14', '2017-10-19 22:14:14'),
(492, 'Dhanbari', 'ধনবাড়ি', 68, '2017-10-19 22:15:02', '2017-10-19 22:15:02'),
(493, 'Ghatail', 'ঘাটাইল', 68, '2017-10-19 22:15:59', '2017-10-19 22:15:59'),
(494, 'Gopalpur', 'গোপালপুর', 68, '2017-10-19 22:16:42', '2017-10-19 22:16:42'),
(495, 'Kalihati', 'কালিহাতী', 68, '2017-10-19 22:18:18', '2017-10-19 22:18:18'),
(496, 'Madhupur', 'মধুপুর', 68, '2017-10-19 22:18:58', '2017-10-19 22:18:58'),
(497, 'Mirzapur', 'মির্জাপুর', 68, '2017-10-19 22:19:38', '2017-10-19 22:19:38'),
(498, 'Nagarpur', 'নাগরপুর', 68, '2017-10-19 22:20:21', '2017-10-19 22:20:21'),
(499, 'Sakhipur', 'সখিপুর', 68, '2017-10-19 22:21:02', '2017-10-19 22:21:02'),
(500, 'Thakurgaon Sadar', 'ঠাকুরগাঁও সদর', 69, '2017-10-19 22:23:42', '2017-10-19 22:23:42'),
(501, 'Baliadangi', 'বালিয়াডাঙ্গী', 69, '2017-10-19 22:24:34', '2017-10-19 22:24:34'),
(502, 'Haripur', 'হরিপুর', 69, '2017-10-19 22:25:23', '2017-10-19 22:25:23'),
(503, 'Pirganj', 'পীরগঞ্জ', 69, '2017-10-19 22:26:08', '2017-10-19 22:26:08'),
(504, 'Ranishankail', 'রানীশংকৈল', 69, '2017-10-19 22:27:24', '2017-10-19 22:27:24'),
(505, 'Lalmai', 'লালমাই', 16, '2018-03-15 12:11:34', '2018-03-15 12:11:34'),
(506, 'Shayestaganj', 'শায়েস্তাগঞ্জ', 25, '2018-03-15 12:36:49', '2018-03-15 12:36:49'),
(507, 'Sakhipur ', 'সখিপুর', 63, '2018-03-15 14:26:04', '2018-03-15 14:26:04'),
(509, 'Dakshin Sunamganj', 'দক্ষিণ সুনামগঞ্জ', 66, '2018-04-14 19:50:36', '2018-04-14 19:50:36'),
(520, 'Bagerhat Sadar', 'বাগেরহাট সদর', 72, NULL, NULL),
(521, 'Chitalmari', 'চিতলমারী', 72, NULL, NULL),
(522, 'Fakirhat', 'ফকিরহাট', 72, NULL, NULL),
(523, 'Kachua', 'কচুয়া', 72, NULL, NULL),
(524, 'Mollahat', 'মোল্লাহাট', 72, NULL, NULL),
(525, 'Mongla', 'মংলা', 72, NULL, NULL),
(526, 'Morrelganj', 'মোড়েলগঞ্জ', 72, NULL, NULL),
(527, 'Rampal', 'রামপাল', 72, NULL, NULL),
(528, 'Sharankhola', 'শরণখোলা', 72, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subservice`
--

CREATE TABLE `subservice` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_service_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `b_sub_service_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'info@medihelpbd.com', '$2y$10$hr1FEaImPBJLnyR25gM5UeQp7WC81wxXdCiVGE4rhEFRNSLJfoD9i', 'wwsqvXAHRJdHGdyTQUXkeG7kDJ86quf9YnwtONeHKQJl1izXG0LQVfN0xCm9', NULL, '2020-01-25 13:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_point`
--

CREATE TABLE `vaccine_point` (
  `id` int(10) UNSIGNED NOT NULL,
  `vaccine_point_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_vaccine_point_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vaccine_point_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_vaccine_point_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vaccine_point_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vaccine_point_description` blob DEFAULT NULL,
  `b_vaccine_point_description` blob DEFAULT NULL,
  `vaccine_point_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_vaccine_point_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vaccine_point_email_ad` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vaccine_point_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vaccine_point_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vaccine_point_total_bed` blob DEFAULT NULL,
  `b_vaccine_point_total_bed` blob DEFAULT NULL,
  `vaccine_point_total_doctor` int(11) DEFAULT NULL,
  `b_vaccine_point_total_doctor` int(11) DEFAULT NULL,
  `vaccine_point_total_staff` int(11) DEFAULT NULL,
  `b_vaccine_point_total_staff` int(11) DEFAULT NULL,
  `vaccine_point_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_vaccine_point_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vaccine_point_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `vaccine_point_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_point_doctor`
--

CREATE TABLE `vaccine_point_doctor` (
  `id` int(10) UNSIGNED NOT NULL,
  `vaccine_point_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_point_email`
--

CREATE TABLE `vaccine_point_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `vaccine_point_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vaccine_point_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_point_notice`
--

CREATE TABLE `vaccine_point_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vaccine_point_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_vaccine_point_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vaccine_point_notice_description` blob DEFAULT NULL,
  `b_vaccine_point_notice_description` blob DEFAULT NULL,
  `vaccine_point_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_point_phone`
--

CREATE TABLE `vaccine_point_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `vaccine_point_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vaccine_point_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_point_service`
--

CREATE TABLE `vaccine_point_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `vaccine_point_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_vaccine_point_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vaccine_point_service_description` blob DEFAULT NULL,
  `b_vaccine_point_service_description` blob DEFAULT NULL,
  `vaccine_point_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `subservice_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `yoga`
--

CREATE TABLE `yoga` (
  `id` int(10) UNSIGNED NOT NULL,
  `yoga_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_yoga_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yoga_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_yoga_subname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yoga_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yoga_description` blob DEFAULT NULL,
  `b_yoga_description` blob DEFAULT NULL,
  `yoga_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_yoga_phone_no` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yoga_email_ad` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yoga_fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yoga_web_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yoga_total_bed` blob DEFAULT NULL,
  `b_yoga_total_bed` blob DEFAULT NULL,
  `yoga_total_doctor` int(11) DEFAULT NULL,
  `b_yoga_total_doctor` int(11) DEFAULT NULL,
  `yoga_total_staff` int(11) DEFAULT NULL,
  `b_yoga_total_staff` int(11) DEFAULT NULL,
  `yoga_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_yoga_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yoga_latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `yoga_longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `yoga_doctor`
--

CREATE TABLE `yoga_doctor` (
  `id` int(10) UNSIGNED NOT NULL,
  `yoga_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `medical_specialist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `yoga_email`
--

CREATE TABLE `yoga_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `yoga_email_ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yoga_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `yoga_notice`
--

CREATE TABLE `yoga_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yoga_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_yoga_notice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yoga_notice_description` blob DEFAULT NULL,
  `b_yoga_notice_description` blob DEFAULT NULL,
  `yoga_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `yoga_phone`
--

CREATE TABLE `yoga_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `yoga_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yoga_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `yoga_service`
--

CREATE TABLE `yoga_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `yoga_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_yoga_service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yoga_service_description` blob DEFAULT NULL,
  `b_yoga_service_description` blob DEFAULT NULL,
  `yoga_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `subservice_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addiction`
--
ALTER TABLE `addiction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addiction_district_id_foreign` (`district_id`),
  ADD KEY `addiction_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `addiction_doctor`
--
ALTER TABLE `addiction_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addiction_doctor_addiction_id_foreign` (`addiction_id`),
  ADD KEY `addiction_doctor_department_id_foreign` (`department_id`),
  ADD KEY `addiction_doctor_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `addiction_email`
--
ALTER TABLE `addiction_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addiction_email_addiction_id_foreign` (`addiction_id`);

--
-- Indexes for table `addiction_notice`
--
ALTER TABLE `addiction_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addiction_notice_addiction_id_foreign` (`addiction_id`);

--
-- Indexes for table `addiction_phone`
--
ALTER TABLE `addiction_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addiction_phone_addiction_id_foreign` (`addiction_id`);

--
-- Indexes for table `addiction_service`
--
ALTER TABLE `addiction_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addiction_service_addiction_id_foreign` (`addiction_id`),
  ADD KEY `addiction_service_service_id_foreign` (`service_id`),
  ADD KEY `addiction_service_subservice_id_foreign` (`subservice_id`);

--
-- Indexes for table `air_ambulance`
--
ALTER TABLE `air_ambulance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `air_ambulance_district_id_foreign` (`district_id`),
  ADD KEY `air_ambulance_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `air_ambulance_email`
--
ALTER TABLE `air_ambulance_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `air_ambulance_email_air_ambulance_id_foreign` (`air_ambulance_id`);

--
-- Indexes for table `air_ambulance_notice`
--
ALTER TABLE `air_ambulance_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `air_ambulance_notice_air_ambulance_id_foreign` (`air_ambulance_id`);

--
-- Indexes for table `air_ambulance_phone`
--
ALTER TABLE `air_ambulance_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `air_ambulance_phone_air_ambulance_id_foreign` (`air_ambulance_id`);

--
-- Indexes for table `air_ambulance_pricing`
--
ALTER TABLE `air_ambulance_pricing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `air_ambulance_pricing_air_ambulance_id_foreign` (`air_ambulance_id`);

--
-- Indexes for table `air_ambulance_service`
--
ALTER TABLE `air_ambulance_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `air_ambulance_service_blood_bank_id_foreign` (`air_ambulance_id`),
  ADD KEY `air_ambulance_service_service_id_foreign` (`service_id`),
  ADD KEY `air_ambulance_service_subservice_id_foreign` (`subservice_id`);

--
-- Indexes for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ambulance_district_id_foreign` (`district_id`),
  ADD KEY `ambulance_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `ambulance_email`
--
ALTER TABLE `ambulance_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ambulance_email_ambulance_id_foreign` (`ambulance_id`);

--
-- Indexes for table `ambulance_notice`
--
ALTER TABLE `ambulance_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ambulance_notice_ambulance_id_foreign` (`ambulance_id`);

--
-- Indexes for table `ambulance_phone`
--
ALTER TABLE `ambulance_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ambulance_phone_ambulance_id_foreign` (`ambulance_id`);

--
-- Indexes for table `ambulance_pricing`
--
ALTER TABLE `ambulance_pricing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ambulance_pricing_ambulance_id_foreign` (`ambulance_id`);

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_bank_district_id_foreign` (`district_id`),
  ADD KEY `blood_bank_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `blood_bank_doctor`
--
ALTER TABLE `blood_bank_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_bank_doctor_blood_bank_id_foreign` (`blood_bank_id`),
  ADD KEY `blood_bank_doctor_department_id_foreign` (`department_id`),
  ADD KEY `blood_bank_doctor_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `blood_bank_email`
--
ALTER TABLE `blood_bank_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_bank_email_blood_bank_id_foreign` (`blood_bank_id`);

--
-- Indexes for table `blood_bank_notice`
--
ALTER TABLE `blood_bank_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_bank_notice_blood_bank_id_foreign` (`blood_bank_id`);

--
-- Indexes for table `blood_bank_phone`
--
ALTER TABLE `blood_bank_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_bank_phone_blood_bank_id_foreign` (`blood_bank_id`);

--
-- Indexes for table `blood_bank_service`
--
ALTER TABLE `blood_bank_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_bank_service_blood_bank_id_foreign` (`blood_bank_id`),
  ADD KEY `blood_bank_service_service_id_foreign` (`service_id`),
  ADD KEY `blood_bank_service_subservice_id_foreign` (`subservice_id`);

--
-- Indexes for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_donor_district_id_foreign` (`district_id`),
  ADD KEY `blood_donor_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `blood_donor_email`
--
ALTER TABLE `blood_donor_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_donor_email_blood_donor_id_foreign` (`blood_donor_id`);

--
-- Indexes for table `blood_donor_phone`
--
ALTER TABLE `blood_donor_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_donor_phone_blood_donor_id_foreign` (`blood_donor_id`);

--
-- Indexes for table `blood_donor_pricing`
--
ALTER TABLE `blood_donor_pricing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_donor_pricing_blood_donor_id_foreign` (`blood_donor_id`);

--
-- Indexes for table `common_modules`
--
ALTER TABLE `common_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directory_type`
--
ALTER TABLE `directory_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eye_bank`
--
ALTER TABLE `eye_bank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eye_bank_district_id_foreign` (`district_id`),
  ADD KEY `eye_bank_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `eye_bank_doctor`
--
ALTER TABLE `eye_bank_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eye_bank_doctor_eye_bank_id_foreign` (`eye_bank_id`),
  ADD KEY `eye_bank_doctor_department_id_foreign` (`department_id`),
  ADD KEY `eye_bank_doctor_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `eye_bank_email`
--
ALTER TABLE `eye_bank_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eye_bank_email_eye_bank_id_foreign` (`eye_bank_id`);

--
-- Indexes for table `eye_bank_notice`
--
ALTER TABLE `eye_bank_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eye_bank_notice_eye_bank_id_foreign` (`eye_bank_id`);

--
-- Indexes for table `eye_bank_phone`
--
ALTER TABLE `eye_bank_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eye_bank_phone_eye_bank_id_foreign` (`eye_bank_id`);

--
-- Indexes for table `eye_bank_service`
--
ALTER TABLE `eye_bank_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eye_bank_service_eye_bank_id_foreign` (`eye_bank_id`),
  ADD KEY `eye_bank_service_service_id_foreign` (`service_id`),
  ADD KEY `eye_bank_service_subservice_id_foreign` (`subservice_id`);

--
-- Indexes for table `foreignmedical`
--
ALTER TABLE `foreignmedical`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreignmedical_district_id_foreign` (`district_id`),
  ADD KEY `foreignmedical_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `foreignmedical_doctor`
--
ALTER TABLE `foreignmedical_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreignmedical_doctor_foreignmedical_id_foreign` (`foreignmedical_id`),
  ADD KEY `foreignmedical_doctor_department_id_foreign` (`department_id`),
  ADD KEY `foreignmedical_doctor_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `foreignmedical_email`
--
ALTER TABLE `foreignmedical_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreignmedical_email_foreignmedical_id_foreign` (`foreignmedical_id`);

--
-- Indexes for table `foreignmedical_notice`
--
ALTER TABLE `foreignmedical_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreignmedical_notice_foreignmedical_id_foreign` (`foreignmedical_id`);

--
-- Indexes for table `foreignmedical_phone`
--
ALTER TABLE `foreignmedical_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreignmedical_phone_foreignmedical_id_foreign` (`foreignmedical_id`);

--
-- Indexes for table `foreignmedical_product`
--
ALTER TABLE `foreignmedical_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreignmedical_product_foreignmedical_id_foreign` (`foreignmedical_id`),
  ADD KEY `foreignmedical_product_product_category_id_foreign` (`product_category_id`),
  ADD KEY `foreignmedical_product_product_subcategory_id_foreign` (`product_subcategory_id`);

--
-- Indexes for table `foreignmedical_service`
--
ALTER TABLE `foreignmedical_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreignmedical_service_foreignmedical_id_foreign` (`foreignmedical_id`),
  ADD KEY `foreignmedical_service_service_id_foreign` (`service_id`),
  ADD KEY `foreignmedical_service_subservice_id_foreign` (`subservice_id`);

--
-- Indexes for table `gym`
--
ALTER TABLE `gym`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gym_district_id_foreign` (`district_id`),
  ADD KEY `gym_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `gym_doctor`
--
ALTER TABLE `gym_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gym_doctor_gym_id_foreign` (`gym_id`),
  ADD KEY `gym_doctor_department_id_foreign` (`department_id`),
  ADD KEY `gym_doctor_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `gym_email`
--
ALTER TABLE `gym_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gym_email_gym_id_foreign` (`gym_id`);

--
-- Indexes for table `gym_notice`
--
ALTER TABLE `gym_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gym_notice_gym_id_foreign` (`gym_id`);

--
-- Indexes for table `gym_phone`
--
ALTER TABLE `gym_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gym_phone_gym_id_foreign` (`gym_id`);

--
-- Indexes for table `gym_service`
--
ALTER TABLE `gym_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gym_service_gym_id_foreign` (`gym_id`),
  ADD KEY `gym_service_service_id_foreign` (`service_id`),
  ADD KEY `gym_service_subservice_id_foreign` (`subservice_id`);

--
-- Indexes for table `herbal_center`
--
ALTER TABLE `herbal_center`
  ADD PRIMARY KEY (`id`),
  ADD KEY `herbal_center_district_id_foreign` (`district_id`),
  ADD KEY `herbal_center_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `herbal_center_doctor`
--
ALTER TABLE `herbal_center_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `herbal_center_doctor_herbal_center_id_foreign` (`herbal_center_id`),
  ADD KEY `herbal_center_doctor_department_id_foreign` (`department_id`),
  ADD KEY `herbal_center_doctor_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `herbal_center_email`
--
ALTER TABLE `herbal_center_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `herbal_center_email_herbal_center_id_foreign` (`herbal_center_id`);

--
-- Indexes for table `herbal_center_notice`
--
ALTER TABLE `herbal_center_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `herbal_center_notice_herbal_center_id_foreign` (`herbal_center_id`);

--
-- Indexes for table `herbal_center_phone`
--
ALTER TABLE `herbal_center_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `herbal_center_phone_herbal_center_id_foreign` (`herbal_center_id`);

--
-- Indexes for table `herbal_center_product`
--
ALTER TABLE `herbal_center_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `herbal_center_product_herbal_center_id_foreign` (`herbal_center_id`),
  ADD KEY `herbal_center_product_product_category_id_foreign` (`product_category_id`),
  ADD KEY `herbal_center_product_product_subcategory_id_foreign` (`product_subcategory_id`);

--
-- Indexes for table `herbal_center_service`
--
ALTER TABLE `herbal_center_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `herbal_center_service_herbal_center_id_foreign` (`herbal_center_id`),
  ADD KEY `herbal_center_service_service_id_foreign` (`service_id`),
  ADD KEY `herbal_center_service_subservice_id_foreign` (`subservice_id`);

--
-- Indexes for table `homeopathic`
--
ALTER TABLE `homeopathic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homeopathic_district_id_foreign` (`district_id`),
  ADD KEY `homeopathic_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `homeopathic_doctor`
--
ALTER TABLE `homeopathic_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homeopathic_doctor_homeopathic_id_foreign` (`homeopathic_id`),
  ADD KEY `homeopathic_doctor_department_id_foreign` (`department_id`),
  ADD KEY `homeopathic_doctor_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `homeopathic_email`
--
ALTER TABLE `homeopathic_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homeopathic_email_homeopathic_id_foreign` (`homeopathic_id`);

--
-- Indexes for table `homeopathic_notice`
--
ALTER TABLE `homeopathic_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homeopathic_notice_homeopathic_id_foreign` (`homeopathic_id`);

--
-- Indexes for table `homeopathic_phone`
--
ALTER TABLE `homeopathic_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homeopathic_phone_homeopathic_id_foreign` (`homeopathic_id`);

--
-- Indexes for table `homeopathic_product`
--
ALTER TABLE `homeopathic_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homeopathic_product_homeopathic_id_foreign` (`homeopathic_id`),
  ADD KEY `homeopathic_product_product_category_id_foreign` (`product_category_id`),
  ADD KEY `homeopathic_product_product_subcategory_id_foreign` (`product_subcategory_id`);

--
-- Indexes for table `homeopathic_service`
--
ALTER TABLE `homeopathic_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homeopathic_service_homeopathic_id_foreign` (`homeopathic_id`),
  ADD KEY `homeopathic_service_service_id_foreign` (`service_id`),
  ADD KEY `homeopathic_service_subservice_id_foreign` (`subservice_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_district_id_foreign` (`district_id`),
  ADD KEY `hospital_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `hospital_doctor`
--
ALTER TABLE `hospital_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_doctor_hospital_id_foreign` (`hospital_id`),
  ADD KEY `hospital_doctor_department_id_foreign` (`department_id`),
  ADD KEY `hospital_doctor_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `hospital_email`
--
ALTER TABLE `hospital_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_email_hospital_id_foreign` (`hospital_id`);

--
-- Indexes for table `hospital_notice`
--
ALTER TABLE `hospital_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_notice_hospital_id_foreign` (`hospital_id`);

--
-- Indexes for table `hospital_phone`
--
ALTER TABLE `hospital_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_phone_hospital_id_foreign` (`hospital_id`);

--
-- Indexes for table `hospital_service`
--
ALTER TABLE `hospital_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_service_hospital_id_foreign` (`hospital_id`),
  ADD KEY `hospital_service_service_id_foreign` (`service_id`),
  ADD KEY `hospital_service_subservice_id_foreign` (`subservice_id`);

--
-- Indexes for table `medical_specialist`
--
ALTER TABLE `medical_specialist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medical_specialist_department_id_foreign` (`department_id`),
  ADD KEY `medical_specialist_district_id_foreign` (`district_id`),
  ADD KEY `medical_specialist_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `medical_specialists_appointment_booking`
--
ALTER TABLE `medical_specialists_appointment_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_specialist_appointment`
--
ALTER TABLE `medical_specialist_appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `med_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `medical_specialist_appointment_notice`
--
ALTER TABLE `medical_specialist_appointment_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medical_specialist_appointment_notice_medical_special_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `medical_specialist_chamber`
--
ALTER TABLE `medical_specialist_chamber`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medical_specialist_chamber_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `medical_specialist_chember`
--
ALTER TABLE `medical_specialist_chember`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medical_specialist_chember_medical_specilaist_id_foreign` (`medical_specilaist_id`);

--
-- Indexes for table `medical_specialist_email`
--
ALTER TABLE `medical_specialist_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medical_specialist_email_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `medical_specialist_notice`
--
ALTER TABLE `medical_specialist_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medical_specialist_notice_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `medical_specialist_phone`
--
ALTER TABLE `medical_specialist_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medical_specialist_phone_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id_fk` (`district_id`),
  ADD KEY `sub_district_id_fk` (`sub_district_id`);

--
-- Indexes for table `optical`
--
ALTER TABLE `optical`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optical_district_id_foreign` (`district_id`),
  ADD KEY `optical_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `optical_doctor`
--
ALTER TABLE `optical_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optical_doctor_optical_id_foreign` (`optical_id`),
  ADD KEY `optical_doctor_department_id_foreign` (`department_id`),
  ADD KEY `optical_doctor_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `optical_email`
--
ALTER TABLE `optical_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optical_email_optical_id_foreign` (`optical_id`);

--
-- Indexes for table `optical_notice`
--
ALTER TABLE `optical_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optical_notice_optical_id_foreign` (`optical_id`);

--
-- Indexes for table `optical_phone`
--
ALTER TABLE `optical_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optical_phone_optical_id_foreign` (`optical_id`);

--
-- Indexes for table `optical_product`
--
ALTER TABLE `optical_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optical_product_optical_id_foreign` (`optical_id`),
  ADD KEY `optical_product_product_category_id_foreign` (`product_category_id`),
  ADD KEY `optical_product_product_subcategory_id_foreign` (`product_subcategory_id`);

--
-- Indexes for table `optical_service`
--
ALTER TABLE `optical_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optical_service_optical_id_foreign` (`optical_id`),
  ADD KEY `optical_service_service_id_foreign` (`service_id`),
  ADD KEY `optical_service_subservice_id_foreign` (`subservice_id`);

--
-- Indexes for table `parlour`
--
ALTER TABLE `parlour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parlour_district_id_foreign` (`district_id`),
  ADD KEY `parlour_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `parlour_doctor`
--
ALTER TABLE `parlour_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parlour_doctor_parlour_id_foreign` (`parlour_id`),
  ADD KEY `parlour_doctor_department_id_foreign` (`department_id`),
  ADD KEY `parlour_doctor_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `parlour_email`
--
ALTER TABLE `parlour_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parlour_email_parlour_id_foreign` (`parlour_id`);

--
-- Indexes for table `parlour_notice`
--
ALTER TABLE `parlour_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parlour_notice_parlour_id_foreign` (`parlour_id`);

--
-- Indexes for table `parlour_phone`
--
ALTER TABLE `parlour_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parlour_phone_parlour_id_foreign` (`parlour_id`);

--
-- Indexes for table `parlour_service`
--
ALTER TABLE `parlour_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parlour_service_parlour_id_foreign` (`parlour_id`),
  ADD KEY `parlour_service_service_id_foreign` (`service_id`),
  ADD KEY `parlour_service_subservice_id_foreign` (`subservice_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacy_district_id_foreign` (`district_id`),
  ADD KEY `pharmacy_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `pharmacynew`
--
ALTER TABLE `pharmacynew`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacynew_district_id_foreign` (`district_id`),
  ADD KEY `pharmacynew_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `pharmacynew_doctor`
--
ALTER TABLE `pharmacynew_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacynew_doctor_pharmacynew_id_foreign` (`pharmacynew_id`),
  ADD KEY `pharmacynew_doctor_department_id_foreign` (`department_id`),
  ADD KEY `pharmacynew_doctor_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `pharmacynew_email`
--
ALTER TABLE `pharmacynew_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacynew_email_pharmacynew_id_foreign` (`pharmacynew_id`);

--
-- Indexes for table `pharmacynew_notice`
--
ALTER TABLE `pharmacynew_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacynew_notice_pharmacynew_id_foreign` (`pharmacynew_id`);

--
-- Indexes for table `pharmacynew_phone`
--
ALTER TABLE `pharmacynew_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacynew_phone_pharmacynew_id_foreign` (`pharmacynew_id`);

--
-- Indexes for table `pharmacynew_product`
--
ALTER TABLE `pharmacynew_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacynew_product_pharmacynew_id_foreign` (`pharmacynew_id`),
  ADD KEY `pharmacynew_product_product_category_id_foreign` (`product_category_id`),
  ADD KEY `pharmacynew_product_product_subcategory_id_foreign` (`product_subcategory_id`);

--
-- Indexes for table `pharmacynew_service`
--
ALTER TABLE `pharmacynew_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacynew_service_pharmacynew_id_foreign` (`pharmacynew_id`),
  ADD KEY `pharmacynew_service_service_id_foreign` (`service_id`),
  ADD KEY `pharmacynew_service_subservice_id_foreign` (`subservice_id`);

--
-- Indexes for table `pharmacy_doctor`
--
ALTER TABLE `pharmacy_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacy_doctor_pharmacy_id_foreign` (`pharmacy_id`),
  ADD KEY `pharmacy_doctor_department_id_foreign` (`department_id`),
  ADD KEY `pharmacy_doctor_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `pharmacy_email`
--
ALTER TABLE `pharmacy_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacy_email_pharmacy_id_foreign` (`pharmacy_id`);

--
-- Indexes for table `pharmacy_notice`
--
ALTER TABLE `pharmacy_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacy_notice_pharmacy_id_foreign` (`pharmacy_id`);

--
-- Indexes for table `pharmacy_phone`
--
ALTER TABLE `pharmacy_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacy_phone_pharmacy_id_foreign` (`pharmacy_id`);

--
-- Indexes for table `pharmacy_product`
--
ALTER TABLE `pharmacy_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacy_product_pharmacy_id_foreign` (`pharmacy_id`),
  ADD KEY `pharmacy_product_product_category_id_foreign` (`product_category_id`),
  ADD KEY `pharmacy_product_product_subcategory_id_foreign` (`product_subcategory_id`);

--
-- Indexes for table `pharmacy_service`
--
ALTER TABLE `pharmacy_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacy_service_pharmacy_id_foreign` (`pharmacy_id`),
  ADD KEY `pharmacy_service_service_id_foreign` (`service_id`),
  ADD KEY `pharmacy_service_subservice_id_foreign` (`subservice_id`);

--
-- Indexes for table `physiotherapy`
--
ALTER TABLE `physiotherapy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `physiotherapy_district_id_foreign` (`district_id`),
  ADD KEY `physiotherapy_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `physiotherapy_doctor`
--
ALTER TABLE `physiotherapy_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `physiotherapy_doctor_physiotherapy_id_foreign` (`physiotherapy_id`),
  ADD KEY `physiotherapy_doctor_department_id_foreign` (`department_id`),
  ADD KEY `physiotherapy_doctor_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `physiotherapy_email`
--
ALTER TABLE `physiotherapy_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `physiotherapy_email_physiotherapy_id_foreign` (`physiotherapy_id`);

--
-- Indexes for table `physiotherapy_notice`
--
ALTER TABLE `physiotherapy_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `physiotherapy_notice_physiotherapy_id_foreign` (`physiotherapy_id`);

--
-- Indexes for table `physiotherapy_phone`
--
ALTER TABLE `physiotherapy_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `physiotherapy_phone_physiotherapy_id_foreign` (`physiotherapy_id`);

--
-- Indexes for table `physiotherapy_product`
--
ALTER TABLE `physiotherapy_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `physiotherapy_product_physiotherapy_id_foreign` (`physiotherapy_id`),
  ADD KEY `physiotherapy_product_product_category_id_foreign` (`product_category_id`),
  ADD KEY `physiotherapy_product_product_subcategory_id_foreign` (`product_subcategory_id`);

--
-- Indexes for table `physiotherapy_service`
--
ALTER TABLE `physiotherapy_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `physiotherapy_service_physiotherapy_id_foreign` (`physiotherapy_id`),
  ADD KEY `physiotherapy_service_service_id_foreign` (`service_id`),
  ADD KEY `physiotherapy_service_subservice_id_foreign` (`subservice_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_subcategory`
--
ALTER TABLE `product_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_subcategory_product_category_id_foreign` (`product_category_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skin_laser_center`
--
ALTER TABLE `skin_laser_center`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skin_laser_center_district_id_foreign` (`district_id`),
  ADD KEY `skin_laser_center_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `skin_laser_center_doctor`
--
ALTER TABLE `skin_laser_center_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skin_laser_center_doctor_skin_laser_center_id_foreign` (`skin_laser_center_id`),
  ADD KEY `skin_laser_center_doctor_department_id_foreign` (`department_id`),
  ADD KEY `skin_laser_center_doctor_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `skin_laser_center_email`
--
ALTER TABLE `skin_laser_center_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skin_laser_center_email_skin_laser_center_id_foreign` (`skin_laser_center_id`);

--
-- Indexes for table `skin_laser_center_notice`
--
ALTER TABLE `skin_laser_center_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skin_laser_center_notice_skin_laser_center_id_foreign` (`skin_laser_center_id`);

--
-- Indexes for table `skin_laser_center_phone`
--
ALTER TABLE `skin_laser_center_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skin_laser_center_phone_skin_laser_center_id_foreign` (`skin_laser_center_id`);

--
-- Indexes for table `skin_laser_center_service`
--
ALTER TABLE `skin_laser_center_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skin_laser_center_service_skin_laser_center_id_foreign` (`skin_laser_center_id`),
  ADD KEY `skin_laser_center_service_service_id_foreign` (`service_id`),
  ADD KEY `skin_laser_center_service_subservice_id_foreign` (`subservice_id`);

--
-- Indexes for table `subdistrict`
--
ALTER TABLE `subdistrict`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subdistricts`
--
ALTER TABLE `subdistricts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subdistrict_district_id_foreign` (`district_id`);

--
-- Indexes for table `subservice`
--
ALTER TABLE `subservice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subservice_service_id_foreign` (`service_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vaccine_point`
--
ALTER TABLE `vaccine_point`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vaccine_point_district_id_foreign` (`district_id`),
  ADD KEY `vaccine_point_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `vaccine_point_doctor`
--
ALTER TABLE `vaccine_point_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vaccine_point_doctor_vaccine_point_id_foreign` (`vaccine_point_id`),
  ADD KEY `vaccine_point_doctor_department_id_foreign` (`department_id`),
  ADD KEY `vaccine_point_doctor_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `vaccine_point_email`
--
ALTER TABLE `vaccine_point_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vaccine_point_email_vaccine_point_id_foreign` (`vaccine_point_id`);

--
-- Indexes for table `vaccine_point_notice`
--
ALTER TABLE `vaccine_point_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vaccine_point_notice_vaccine_point_id_foreign` (`vaccine_point_id`);

--
-- Indexes for table `vaccine_point_phone`
--
ALTER TABLE `vaccine_point_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vaccine_point_phone_vaccine_point_id_foreign` (`vaccine_point_id`);

--
-- Indexes for table `vaccine_point_service`
--
ALTER TABLE `vaccine_point_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vaccine_point_service_vaccine_point_id_foreign` (`vaccine_point_id`),
  ADD KEY `vaccine_point_service_service_id_foreign` (`service_id`),
  ADD KEY `vaccine_point_service_subservice_id_foreign` (`subservice_id`);

--
-- Indexes for table `yoga`
--
ALTER TABLE `yoga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `yoga_district_id_foreign` (`district_id`),
  ADD KEY `yoga_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `yoga_doctor`
--
ALTER TABLE `yoga_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `yoga_doctor_yoga_id_foreign` (`yoga_id`),
  ADD KEY `yoga_doctor_department_id_foreign` (`department_id`),
  ADD KEY `yoga_doctor_medical_specialist_id_foreign` (`medical_specialist_id`);

--
-- Indexes for table `yoga_email`
--
ALTER TABLE `yoga_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `yoga_email_yoga_id_foreign` (`yoga_id`);

--
-- Indexes for table `yoga_notice`
--
ALTER TABLE `yoga_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `yoga_notice_yoga_id_foreign` (`yoga_id`);

--
-- Indexes for table `yoga_phone`
--
ALTER TABLE `yoga_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `yoga_phone_yoga_id_foreign` (`yoga_id`);

--
-- Indexes for table `yoga_service`
--
ALTER TABLE `yoga_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `yoga_service_yoga_id_foreign` (`yoga_id`),
  ADD KEY `yoga_service_service_id_foreign` (`service_id`),
  ADD KEY `yoga_service_subservice_id_foreign` (`subservice_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addiction`
--
ALTER TABLE `addiction`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=590;

--
-- AUTO_INCREMENT for table `addiction_doctor`
--
ALTER TABLE `addiction_doctor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `addiction_email`
--
ALTER TABLE `addiction_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addiction_notice`
--
ALTER TABLE `addiction_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `addiction_phone`
--
ALTER TABLE `addiction_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addiction_service`
--
ALTER TABLE `addiction_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `air_ambulance`
--
ALTER TABLE `air_ambulance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `air_ambulance_email`
--
ALTER TABLE `air_ambulance_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `air_ambulance_notice`
--
ALTER TABLE `air_ambulance_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `air_ambulance_phone`
--
ALTER TABLE `air_ambulance_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `air_ambulance_pricing`
--
ALTER TABLE `air_ambulance_pricing`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `air_ambulance_service`
--
ALTER TABLE `air_ambulance_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ambulance`
--
ALTER TABLE `ambulance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ambulance_email`
--
ALTER TABLE `ambulance_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ambulance_notice`
--
ALTER TABLE `ambulance_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ambulance_phone`
--
ALTER TABLE `ambulance_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ambulance_pricing`
--
ALTER TABLE `ambulance_pricing`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_bank`
--
ALTER TABLE `blood_bank`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `blood_bank_doctor`
--
ALTER TABLE `blood_bank_doctor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `blood_bank_email`
--
ALTER TABLE `blood_bank_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_bank_notice`
--
ALTER TABLE `blood_bank_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blood_bank_phone`
--
ALTER TABLE `blood_bank_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_bank_service`
--
ALTER TABLE `blood_bank_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `blood_donor`
--
ALTER TABLE `blood_donor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blood_donor_email`
--
ALTER TABLE `blood_donor_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_donor_phone`
--
ALTER TABLE `blood_donor_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_donor_pricing`
--
ALTER TABLE `blood_donor_pricing`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `common_modules`
--
ALTER TABLE `common_modules`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `directory_type`
--
ALTER TABLE `directory_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `eye_bank`
--
ALTER TABLE `eye_bank`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eye_bank_doctor`
--
ALTER TABLE `eye_bank_doctor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `eye_bank_email`
--
ALTER TABLE `eye_bank_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eye_bank_notice`
--
ALTER TABLE `eye_bank_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `eye_bank_phone`
--
ALTER TABLE `eye_bank_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eye_bank_service`
--
ALTER TABLE `eye_bank_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `foreignmedical`
--
ALTER TABLE `foreignmedical`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `foreignmedical_doctor`
--
ALTER TABLE `foreignmedical_doctor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foreignmedical_email`
--
ALTER TABLE `foreignmedical_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foreignmedical_notice`
--
ALTER TABLE `foreignmedical_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `foreignmedical_phone`
--
ALTER TABLE `foreignmedical_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foreignmedical_product`
--
ALTER TABLE `foreignmedical_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foreignmedical_service`
--
ALTER TABLE `foreignmedical_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gym`
--
ALTER TABLE `gym`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=577;

--
-- AUTO_INCREMENT for table `gym_doctor`
--
ALTER TABLE `gym_doctor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_email`
--
ALTER TABLE `gym_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_notice`
--
ALTER TABLE `gym_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gym_phone`
--
ALTER TABLE `gym_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_service`
--
ALTER TABLE `gym_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `herbal_center`
--
ALTER TABLE `herbal_center`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `herbal_center_doctor`
--
ALTER TABLE `herbal_center_doctor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `herbal_center_email`
--
ALTER TABLE `herbal_center_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `herbal_center_notice`
--
ALTER TABLE `herbal_center_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `herbal_center_phone`
--
ALTER TABLE `herbal_center_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `herbal_center_product`
--
ALTER TABLE `herbal_center_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `herbal_center_service`
--
ALTER TABLE `herbal_center_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `homeopathic`
--
ALTER TABLE `homeopathic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `homeopathic_doctor`
--
ALTER TABLE `homeopathic_doctor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `homeopathic_email`
--
ALTER TABLE `homeopathic_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeopathic_notice`
--
ALTER TABLE `homeopathic_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `homeopathic_phone`
--
ALTER TABLE `homeopathic_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeopathic_product`
--
ALTER TABLE `homeopathic_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `homeopathic_service`
--
ALTER TABLE `homeopathic_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=586;

--
-- AUTO_INCREMENT for table `hospital_doctor`
--
ALTER TABLE `hospital_doctor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hospital_email`
--
ALTER TABLE `hospital_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital_notice`
--
ALTER TABLE `hospital_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hospital_phone`
--
ALTER TABLE `hospital_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital_service`
--
ALTER TABLE `hospital_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medical_specialist`
--
ALTER TABLE `medical_specialist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `medical_specialists_appointment_booking`
--
ALTER TABLE `medical_specialists_appointment_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `medical_specialist_appointment`
--
ALTER TABLE `medical_specialist_appointment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `medical_specialist_appointment_notice`
--
ALTER TABLE `medical_specialist_appointment_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medical_specialist_chamber`
--
ALTER TABLE `medical_specialist_chamber`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `medical_specialist_chember`
--
ALTER TABLE `medical_specialist_chember`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_specialist_email`
--
ALTER TABLE `medical_specialist_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_specialist_notice`
--
ALTER TABLE `medical_specialist_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `medical_specialist_phone`
--
ALTER TABLE `medical_specialist_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `optical`
--
ALTER TABLE `optical`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `optical_doctor`
--
ALTER TABLE `optical_doctor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `optical_email`
--
ALTER TABLE `optical_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `optical_notice`
--
ALTER TABLE `optical_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `optical_phone`
--
ALTER TABLE `optical_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `optical_product`
--
ALTER TABLE `optical_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `optical_service`
--
ALTER TABLE `optical_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `parlour`
--
ALTER TABLE `parlour`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=576;

--
-- AUTO_INCREMENT for table `parlour_doctor`
--
ALTER TABLE `parlour_doctor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parlour_email`
--
ALTER TABLE `parlour_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parlour_notice`
--
ALTER TABLE `parlour_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `parlour_phone`
--
ALTER TABLE `parlour_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parlour_service`
--
ALTER TABLE `parlour_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pharmacynew`
--
ALTER TABLE `pharmacynew`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pharmacynew_doctor`
--
ALTER TABLE `pharmacynew_doctor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pharmacynew_email`
--
ALTER TABLE `pharmacynew_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacynew_notice`
--
ALTER TABLE `pharmacynew_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pharmacynew_phone`
--
ALTER TABLE `pharmacynew_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacynew_product`
--
ALTER TABLE `pharmacynew_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pharmacynew_service`
--
ALTER TABLE `pharmacynew_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pharmacy_doctor`
--
ALTER TABLE `pharmacy_doctor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pharmacy_email`
--
ALTER TABLE `pharmacy_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacy_notice`
--
ALTER TABLE `pharmacy_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pharmacy_phone`
--
ALTER TABLE `pharmacy_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacy_product`
--
ALTER TABLE `pharmacy_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pharmacy_service`
--
ALTER TABLE `pharmacy_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `physiotherapy`
--
ALTER TABLE `physiotherapy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `physiotherapy_doctor`
--
ALTER TABLE `physiotherapy_doctor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `physiotherapy_email`
--
ALTER TABLE `physiotherapy_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `physiotherapy_notice`
--
ALTER TABLE `physiotherapy_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `physiotherapy_phone`
--
ALTER TABLE `physiotherapy_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `physiotherapy_product`
--
ALTER TABLE `physiotherapy_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `physiotherapy_service`
--
ALTER TABLE `physiotherapy_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_subcategory`
--
ALTER TABLE `product_subcategory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `skin_laser_center`
--
ALTER TABLE `skin_laser_center`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `skin_laser_center_doctor`
--
ALTER TABLE `skin_laser_center_doctor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `skin_laser_center_email`
--
ALTER TABLE `skin_laser_center_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skin_laser_center_notice`
--
ALTER TABLE `skin_laser_center_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skin_laser_center_phone`
--
ALTER TABLE `skin_laser_center_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skin_laser_center_service`
--
ALTER TABLE `skin_laser_center_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subdistrict`
--
ALTER TABLE `subdistrict`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=529;

--
-- AUTO_INCREMENT for table `subdistricts`
--
ALTER TABLE `subdistricts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=530;

--
-- AUTO_INCREMENT for table `subservice`
--
ALTER TABLE `subservice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vaccine_point`
--
ALTER TABLE `vaccine_point`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vaccine_point_doctor`
--
ALTER TABLE `vaccine_point_doctor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vaccine_point_email`
--
ALTER TABLE `vaccine_point_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vaccine_point_notice`
--
ALTER TABLE `vaccine_point_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vaccine_point_phone`
--
ALTER TABLE `vaccine_point_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vaccine_point_service`
--
ALTER TABLE `vaccine_point_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `yoga`
--
ALTER TABLE `yoga`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=575;

--
-- AUTO_INCREMENT for table `yoga_doctor`
--
ALTER TABLE `yoga_doctor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `yoga_email`
--
ALTER TABLE `yoga_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `yoga_notice`
--
ALTER TABLE `yoga_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `yoga_phone`
--
ALTER TABLE `yoga_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `yoga_service`
--
ALTER TABLE `yoga_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addiction`
--
ALTER TABLE `addiction`
  ADD CONSTRAINT `addiction_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addiction_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `addiction_doctor`
--
ALTER TABLE `addiction_doctor`
  ADD CONSTRAINT `addiction_doctor_addiction_id_foreign` FOREIGN KEY (`addiction_id`) REFERENCES `addiction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addiction_doctor_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addiction_doctor_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `addiction_email`
--
ALTER TABLE `addiction_email`
  ADD CONSTRAINT `addiction_email_addiction_id_foreign` FOREIGN KEY (`addiction_id`) REFERENCES `addiction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `addiction_notice`
--
ALTER TABLE `addiction_notice`
  ADD CONSTRAINT `addiction_notice_addiction_id_foreign` FOREIGN KEY (`addiction_id`) REFERENCES `addiction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `addiction_phone`
--
ALTER TABLE `addiction_phone`
  ADD CONSTRAINT `addiction_phone_addiction_id_foreign` FOREIGN KEY (`addiction_id`) REFERENCES `addiction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `addiction_service`
--
ALTER TABLE `addiction_service`
  ADD CONSTRAINT `addiction_service_addiction_id_foreign` FOREIGN KEY (`addiction_id`) REFERENCES `addiction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addiction_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addiction_service_subservice_id_foreign` FOREIGN KEY (`subservice_id`) REFERENCES `subservice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `air_ambulance`
--
ALTER TABLE `air_ambulance`
  ADD CONSTRAINT `air_ambulance_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `air_ambulance_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `air_ambulance_email`
--
ALTER TABLE `air_ambulance_email`
  ADD CONSTRAINT `air_ambulance_email_air_ambulance_id_foreign` FOREIGN KEY (`air_ambulance_id`) REFERENCES `air_ambulance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `air_ambulance_notice`
--
ALTER TABLE `air_ambulance_notice`
  ADD CONSTRAINT `air_ambulance_notice_air_ambulance_id_foreign` FOREIGN KEY (`air_ambulance_id`) REFERENCES `air_ambulance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `air_ambulance_phone`
--
ALTER TABLE `air_ambulance_phone`
  ADD CONSTRAINT `air_ambulance_phone_air_ambulance_id_foreign` FOREIGN KEY (`air_ambulance_id`) REFERENCES `air_ambulance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `air_ambulance_pricing`
--
ALTER TABLE `air_ambulance_pricing`
  ADD CONSTRAINT `air_ambulance_pricing_air_ambulance_id_foreign` FOREIGN KEY (`air_ambulance_id`) REFERENCES `air_ambulance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `air_ambulance_service`
--
ALTER TABLE `air_ambulance_service`
  ADD CONSTRAINT `air_ambulance_service_air_ambulance_id_foreign` FOREIGN KEY (`air_ambulance_id`) REFERENCES `air_ambulance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `air_ambulance_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `air_ambulance_service_subservice_id_foreign` FOREIGN KEY (`subservice_id`) REFERENCES `subservice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD CONSTRAINT `ambulance_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ambulance_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ambulance_email`
--
ALTER TABLE `ambulance_email`
  ADD CONSTRAINT `ambulance_email_ambulance_id_foreign` FOREIGN KEY (`ambulance_id`) REFERENCES `ambulance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ambulance_notice`
--
ALTER TABLE `ambulance_notice`
  ADD CONSTRAINT `ambulance_notice_ambulance_id_foreign` FOREIGN KEY (`ambulance_id`) REFERENCES `ambulance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ambulance_phone`
--
ALTER TABLE `ambulance_phone`
  ADD CONSTRAINT `ambulance_phone_ambulance_id_foreign` FOREIGN KEY (`ambulance_id`) REFERENCES `ambulance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ambulance_pricing`
--
ALTER TABLE `ambulance_pricing`
  ADD CONSTRAINT `ambulance_pricing_ambulance_id_foreign` FOREIGN KEY (`ambulance_id`) REFERENCES `ambulance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD CONSTRAINT `blood_bank_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_bank_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blood_bank_doctor`
--
ALTER TABLE `blood_bank_doctor`
  ADD CONSTRAINT `blood_bank_doctor_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_bank_doctor_ibfk_1` FOREIGN KEY (`blood_bank_id`) REFERENCES `blood_bank` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_bank_doctor_ibfk_2` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blood_bank_email`
--
ALTER TABLE `blood_bank_email`
  ADD CONSTRAINT `blood_bank_email_blood_bank_id_foreign` FOREIGN KEY (`blood_bank_id`) REFERENCES `blood_bank` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blood_bank_notice`
--
ALTER TABLE `blood_bank_notice`
  ADD CONSTRAINT `blood_bank_notice_blood_bank_id_foreign` FOREIGN KEY (`blood_bank_id`) REFERENCES `blood_bank` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blood_bank_phone`
--
ALTER TABLE `blood_bank_phone`
  ADD CONSTRAINT `blood_bank_phone_blood_bank_id_foreign` FOREIGN KEY (`blood_bank_id`) REFERENCES `blood_bank` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blood_bank_service`
--
ALTER TABLE `blood_bank_service`
  ADD CONSTRAINT `blood_bank_service_blood_bank_id_foreign` FOREIGN KEY (`blood_bank_id`) REFERENCES `blood_bank` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_bank_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_bank_service_subservice_id_foreign` FOREIGN KEY (`subservice_id`) REFERENCES `subservice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD CONSTRAINT `blood_donor_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_donor_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blood_donor_email`
--
ALTER TABLE `blood_donor_email`
  ADD CONSTRAINT `blood_donor_email_blood_donor_id_foreign` FOREIGN KEY (`blood_donor_id`) REFERENCES `blood_donor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blood_donor_phone`
--
ALTER TABLE `blood_donor_phone`
  ADD CONSTRAINT `blood_donor_phone_blood_donor_id_foreign` FOREIGN KEY (`blood_donor_id`) REFERENCES `blood_donor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eye_bank`
--
ALTER TABLE `eye_bank`
  ADD CONSTRAINT `eye_bank_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eye_bank_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eye_bank_doctor`
--
ALTER TABLE `eye_bank_doctor`
  ADD CONSTRAINT `eye_bank_doctor_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eye_bank_doctor_eye_bank_id_foreign` FOREIGN KEY (`eye_bank_id`) REFERENCES `eye_bank` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eye_bank_doctor_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eye_bank_email`
--
ALTER TABLE `eye_bank_email`
  ADD CONSTRAINT `eye_bank_email_eye_bank_id_foreign` FOREIGN KEY (`eye_bank_id`) REFERENCES `eye_bank` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eye_bank_notice`
--
ALTER TABLE `eye_bank_notice`
  ADD CONSTRAINT `eye_bank_notice_eye_bank_id_foreign` FOREIGN KEY (`eye_bank_id`) REFERENCES `eye_bank` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eye_bank_phone`
--
ALTER TABLE `eye_bank_phone`
  ADD CONSTRAINT `eye_bank_phone_eye_bank_id_foreign` FOREIGN KEY (`eye_bank_id`) REFERENCES `eye_bank` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eye_bank_service`
--
ALTER TABLE `eye_bank_service`
  ADD CONSTRAINT `eye_bank_service_eye_bank_id_foreign` FOREIGN KEY (`eye_bank_id`) REFERENCES `eye_bank` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eye_bank_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eye_bank_service_subservice_id_foreign` FOREIGN KEY (`subservice_id`) REFERENCES `subservice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foreignmedical`
--
ALTER TABLE `foreignmedical`
  ADD CONSTRAINT `foreignmedical_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foreignmedical_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foreignmedical_doctor`
--
ALTER TABLE `foreignmedical_doctor`
  ADD CONSTRAINT `foreignmedical_doctor_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foreignmedical_doctor_foreignmedical_id_foreign` FOREIGN KEY (`foreignmedical_id`) REFERENCES `foreignmedical` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foreignmedical_doctor_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foreignmedical_email`
--
ALTER TABLE `foreignmedical_email`
  ADD CONSTRAINT `foreignmedical_email_foreignmedical_id_foreign` FOREIGN KEY (`foreignmedical_id`) REFERENCES `foreignmedical` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foreignmedical_notice`
--
ALTER TABLE `foreignmedical_notice`
  ADD CONSTRAINT `foreignmedical_notice_foreignmedical_id_foreign` FOREIGN KEY (`foreignmedical_id`) REFERENCES `foreignmedical` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foreignmedical_phone`
--
ALTER TABLE `foreignmedical_phone`
  ADD CONSTRAINT `foreignmedical_phone_foreignmedical_id_foreign` FOREIGN KEY (`foreignmedical_id`) REFERENCES `foreignmedical` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foreignmedical_product`
--
ALTER TABLE `foreignmedical_product`
  ADD CONSTRAINT `foreignmedical_product_foreignmedical_id_foreign` FOREIGN KEY (`foreignmedical_id`) REFERENCES `foreignmedical` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foreignmedical_product_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foreignmedical_product_product_subcategory_id_foreign` FOREIGN KEY (`product_subcategory_id`) REFERENCES `product_subcategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foreignmedical_service`
--
ALTER TABLE `foreignmedical_service`
  ADD CONSTRAINT `foreignmedical_service_foreignmedical_id_foreign` FOREIGN KEY (`foreignmedical_id`) REFERENCES `foreignmedical` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foreignmedical_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foreignmedical_service_subservice_id_foreign` FOREIGN KEY (`subservice_id`) REFERENCES `subservice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gym`
--
ALTER TABLE `gym`
  ADD CONSTRAINT `gym_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gym_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gym_doctor`
--
ALTER TABLE `gym_doctor`
  ADD CONSTRAINT `gym_doctor_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gym_doctor_gym_id_foreign` FOREIGN KEY (`gym_id`) REFERENCES `gym` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gym_doctor_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gym_email`
--
ALTER TABLE `gym_email`
  ADD CONSTRAINT `gym_email_gym_id_foreign` FOREIGN KEY (`gym_id`) REFERENCES `gym` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gym_notice`
--
ALTER TABLE `gym_notice`
  ADD CONSTRAINT `gym_notice_gym_id_foreign` FOREIGN KEY (`gym_id`) REFERENCES `gym` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gym_phone`
--
ALTER TABLE `gym_phone`
  ADD CONSTRAINT `gym_phone_gym_id_foreign` FOREIGN KEY (`gym_id`) REFERENCES `gym` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gym_service`
--
ALTER TABLE `gym_service`
  ADD CONSTRAINT `gym_service_gym_id_foreign` FOREIGN KEY (`gym_id`) REFERENCES `gym` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gym_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gym_service_subservice_id_foreign` FOREIGN KEY (`subservice_id`) REFERENCES `subservice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `herbal_center`
--
ALTER TABLE `herbal_center`
  ADD CONSTRAINT `herbal_center_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `herbal_center_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `herbal_center_doctor`
--
ALTER TABLE `herbal_center_doctor`
  ADD CONSTRAINT `herbal_center_doctor_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `herbal_center_doctor_herbal_center_id_foreign` FOREIGN KEY (`herbal_center_id`) REFERENCES `herbal_center` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `herbal_center_doctor_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `herbal_center_email`
--
ALTER TABLE `herbal_center_email`
  ADD CONSTRAINT `herbal_center_email_herbal_center_id_foreign` FOREIGN KEY (`herbal_center_id`) REFERENCES `herbal_center` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `herbal_center_notice`
--
ALTER TABLE `herbal_center_notice`
  ADD CONSTRAINT `herbal_center_notice_herbal_center_id_foreign` FOREIGN KEY (`herbal_center_id`) REFERENCES `herbal_center` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `herbal_center_phone`
--
ALTER TABLE `herbal_center_phone`
  ADD CONSTRAINT `herbal_center_phone_herbal_center_id_foreign` FOREIGN KEY (`herbal_center_id`) REFERENCES `herbal_center` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `herbal_center_service`
--
ALTER TABLE `herbal_center_service`
  ADD CONSTRAINT `herbal_center_service_herbal_center_id_foreign` FOREIGN KEY (`herbal_center_id`) REFERENCES `herbal_center` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `herbal_center_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `herbal_center_service_subservice_id_foreign` FOREIGN KEY (`subservice_id`) REFERENCES `subservice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homeopathic`
--
ALTER TABLE `homeopathic`
  ADD CONSTRAINT `homeopathic_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `homeopathic_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homeopathic_doctor`
--
ALTER TABLE `homeopathic_doctor`
  ADD CONSTRAINT `homeopathic_doctor_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `homeopathic_doctor_homeopathic_id_foreign` FOREIGN KEY (`homeopathic_id`) REFERENCES `homeopathic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `homeopathic_doctor_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homeopathic_email`
--
ALTER TABLE `homeopathic_email`
  ADD CONSTRAINT `homeopathic_email_homeopathic_id_foreign` FOREIGN KEY (`homeopathic_id`) REFERENCES `homeopathic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homeopathic_notice`
--
ALTER TABLE `homeopathic_notice`
  ADD CONSTRAINT `homeopathic_notice_homeopathic_id_foreign` FOREIGN KEY (`homeopathic_id`) REFERENCES `homeopathic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homeopathic_phone`
--
ALTER TABLE `homeopathic_phone`
  ADD CONSTRAINT `homeopathic_phone_homeopathic_id_foreign` FOREIGN KEY (`homeopathic_id`) REFERENCES `homeopathic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homeopathic_product`
--
ALTER TABLE `homeopathic_product`
  ADD CONSTRAINT `homeopathic_product_homeopathic_id_foreign` FOREIGN KEY (`homeopathic_id`) REFERENCES `homeopathic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `homeopathic_product_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `homeopathic_product_product_subcategory_id_foreign` FOREIGN KEY (`product_subcategory_id`) REFERENCES `product_subcategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homeopathic_service`
--
ALTER TABLE `homeopathic_service`
  ADD CONSTRAINT `homeopathic_service_homeopathic_id_foreign` FOREIGN KEY (`homeopathic_id`) REFERENCES `homeopathic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `homeopathic_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `homeopathic_service_subservice_id_foreign` FOREIGN KEY (`subservice_id`) REFERENCES `subservice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hospital`
--
ALTER TABLE `hospital`
  ADD CONSTRAINT `hospital_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hospital_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hospital_doctor`
--
ALTER TABLE `hospital_doctor`
  ADD CONSTRAINT `hospital_doctor_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hospital_doctor_hospital_id_foreign` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hospital_doctor_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hospital_email`
--
ALTER TABLE `hospital_email`
  ADD CONSTRAINT `hospital_email_hospital_id_foreign` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hospital_notice`
--
ALTER TABLE `hospital_notice`
  ADD CONSTRAINT `hospital_notice_hospital_id_foreign` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hospital_phone`
--
ALTER TABLE `hospital_phone`
  ADD CONSTRAINT `hospital_phone_hospital_id_foreign` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hospital_service`
--
ALTER TABLE `hospital_service`
  ADD CONSTRAINT `hospital_service_hospital_id_foreign` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hospital_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hospital_service_subservice_id_foreign` FOREIGN KEY (`subservice_id`) REFERENCES `subservice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical_specialist`
--
ALTER TABLE `medical_specialist`
  ADD CONSTRAINT `medical_specialist_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medical_specialist_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medical_specialist_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical_specialist_appointment`
--
ALTER TABLE `medical_specialist_appointment`
  ADD CONSTRAINT `med_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical_specialist_appointment_notice`
--
ALTER TABLE `medical_specialist_appointment_notice`
  ADD CONSTRAINT `medical_specialist_appointment_notice_medical_special_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical_specialist_chamber`
--
ALTER TABLE `medical_specialist_chamber`
  ADD CONSTRAINT `medical_specialist_chamber_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical_specialist_chember`
--
ALTER TABLE `medical_specialist_chember`
  ADD CONSTRAINT `medical_specialist_chember_medical_specilaist_id_foreign` FOREIGN KEY (`medical_specilaist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical_specialist_email`
--
ALTER TABLE `medical_specialist_email`
  ADD CONSTRAINT `medical_specialist_email_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical_specialist_notice`
--
ALTER TABLE `medical_specialist_notice`
  ADD CONSTRAINT `medical_specialist_notice_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical_specialist_phone`
--
ALTER TABLE `medical_specialist_phone`
  ADD CONSTRAINT `medical_specialist_phone_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notice`
--
ALTER TABLE `notice`
  ADD CONSTRAINT `district_id_fk` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sub_district_id_fk` FOREIGN KEY (`sub_district_id`) REFERENCES `subdistrict` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `optical`
--
ALTER TABLE `optical`
  ADD CONSTRAINT `optical_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `optical_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `optical_doctor`
--
ALTER TABLE `optical_doctor`
  ADD CONSTRAINT `optical_doctor_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `optical_doctor_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `optical_doctor_optical_id_foreign` FOREIGN KEY (`optical_id`) REFERENCES `optical` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `optical_email`
--
ALTER TABLE `optical_email`
  ADD CONSTRAINT `optical_email_optical_id_foreign` FOREIGN KEY (`optical_id`) REFERENCES `optical` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `optical_notice`
--
ALTER TABLE `optical_notice`
  ADD CONSTRAINT `optical_notice_optical_id_foreign` FOREIGN KEY (`optical_id`) REFERENCES `optical` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `optical_phone`
--
ALTER TABLE `optical_phone`
  ADD CONSTRAINT `optical_phone_optical_id_foreign` FOREIGN KEY (`optical_id`) REFERENCES `optical` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `optical_product`
--
ALTER TABLE `optical_product`
  ADD CONSTRAINT `optical_product_optical_id_foreign` FOREIGN KEY (`optical_id`) REFERENCES `optical` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `optical_product_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `optical_product_product_subcategory_id_foreign` FOREIGN KEY (`product_subcategory_id`) REFERENCES `product_subcategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `optical_service`
--
ALTER TABLE `optical_service`
  ADD CONSTRAINT `optical_service_optical_id_foreign` FOREIGN KEY (`optical_id`) REFERENCES `optical` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `optical_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `optical_service_subservice_id_foreign` FOREIGN KEY (`subservice_id`) REFERENCES `subservice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parlour`
--
ALTER TABLE `parlour`
  ADD CONSTRAINT `parlour_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `parlour_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parlour_doctor`
--
ALTER TABLE `parlour_doctor`
  ADD CONSTRAINT `parlour_doctor_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `parlour_doctor_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `parlour_doctor_parlour_id_foreign` FOREIGN KEY (`parlour_id`) REFERENCES `parlour` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parlour_email`
--
ALTER TABLE `parlour_email`
  ADD CONSTRAINT `parlour_email_parlour_id_foreign` FOREIGN KEY (`parlour_id`) REFERENCES `parlour` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parlour_notice`
--
ALTER TABLE `parlour_notice`
  ADD CONSTRAINT `parlour_notice_parlour_id_foreign` FOREIGN KEY (`parlour_id`) REFERENCES `parlour` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parlour_phone`
--
ALTER TABLE `parlour_phone`
  ADD CONSTRAINT `parlour_phone_parlour_id_foreign` FOREIGN KEY (`parlour_id`) REFERENCES `parlour` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parlour_service`
--
ALTER TABLE `parlour_service`
  ADD CONSTRAINT `parlour_service_parlour_id_foreign` FOREIGN KEY (`parlour_id`) REFERENCES `parlour` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `parlour_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `parlour_service_subservice_id_foreign` FOREIGN KEY (`subservice_id`) REFERENCES `subservice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD CONSTRAINT `pharmacy_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pharmacy_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pharmacynew`
--
ALTER TABLE `pharmacynew`
  ADD CONSTRAINT `pharmacynew_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pharmacynew_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pharmacynew_doctor`
--
ALTER TABLE `pharmacynew_doctor`
  ADD CONSTRAINT `pharmacynew_doctor_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pharmacynew_doctor_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pharmacynew_doctor_pharmacynew_id_foreign` FOREIGN KEY (`pharmacynew_id`) REFERENCES `pharmacynew` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pharmacynew_email`
--
ALTER TABLE `pharmacynew_email`
  ADD CONSTRAINT `pharmacynew_email_pharmacynew_id_foreign` FOREIGN KEY (`pharmacynew_id`) REFERENCES `pharmacynew` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pharmacynew_notice`
--
ALTER TABLE `pharmacynew_notice`
  ADD CONSTRAINT `pharmacynew_notice_pharmacynew_id_foreign` FOREIGN KEY (`pharmacynew_id`) REFERENCES `pharmacynew` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pharmacynew_phone`
--
ALTER TABLE `pharmacynew_phone`
  ADD CONSTRAINT `pharmacynew_phone_pharmacynew_id_foreign` FOREIGN KEY (`pharmacynew_id`) REFERENCES `pharmacynew` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pharmacynew_product`
--
ALTER TABLE `pharmacynew_product`
  ADD CONSTRAINT `pharmacynew_product_pharmacynew_id_foreign` FOREIGN KEY (`pharmacynew_id`) REFERENCES `pharmacynew` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pharmacynew_product_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pharmacynew_product_product_subcategory_id_foreign` FOREIGN KEY (`product_subcategory_id`) REFERENCES `product_subcategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pharmacynew_service`
--
ALTER TABLE `pharmacynew_service`
  ADD CONSTRAINT `pharmacynew_service_pharmacynew_id_foreign` FOREIGN KEY (`pharmacynew_id`) REFERENCES `pharmacynew` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pharmacynew_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pharmacynew_service_subservice_id_foreign` FOREIGN KEY (`subservice_id`) REFERENCES `subservice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pharmacy_doctor`
--
ALTER TABLE `pharmacy_doctor`
  ADD CONSTRAINT `pharmacy_doctor_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pharmacy_doctor_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pharmacy_doctor_pharmacy_id_foreign` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pharmacy_email`
--
ALTER TABLE `pharmacy_email`
  ADD CONSTRAINT `pharmacy_email_pharmacy_id_foreign` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pharmacy_notice`
--
ALTER TABLE `pharmacy_notice`
  ADD CONSTRAINT `pharmacy_notice_pharmacy_id_foreign` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pharmacy_phone`
--
ALTER TABLE `pharmacy_phone`
  ADD CONSTRAINT `pharmacy_phone_pharmacy_id_foreign` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pharmacy_product`
--
ALTER TABLE `pharmacy_product`
  ADD CONSTRAINT `pharmacy_product_pharmacy_id_foreign` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pharmacy_product_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pharmacy_product_product_subcategory_id_foreign` FOREIGN KEY (`product_subcategory_id`) REFERENCES `product_subcategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pharmacy_service`
--
ALTER TABLE `pharmacy_service`
  ADD CONSTRAINT `pharmacy_service_pharmacy_id_foreign` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pharmacy_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pharmacy_service_subservice_id_foreign` FOREIGN KEY (`subservice_id`) REFERENCES `subservice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `physiotherapy`
--
ALTER TABLE `physiotherapy`
  ADD CONSTRAINT `physiotherapy_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `physiotherapy_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `physiotherapy_doctor`
--
ALTER TABLE `physiotherapy_doctor`
  ADD CONSTRAINT `physiotherapy_doctor_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `physiotherapy_doctor_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `physiotherapy_doctor_physiotherapy_id_foreign` FOREIGN KEY (`physiotherapy_id`) REFERENCES `physiotherapy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `physiotherapy_email`
--
ALTER TABLE `physiotherapy_email`
  ADD CONSTRAINT `physiotherapy_email_physiotherapy_id_foreign` FOREIGN KEY (`physiotherapy_id`) REFERENCES `physiotherapy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `physiotherapy_notice`
--
ALTER TABLE `physiotherapy_notice`
  ADD CONSTRAINT `physiotherapy_notice_physiotherapy_id_foreign` FOREIGN KEY (`physiotherapy_id`) REFERENCES `physiotherapy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `physiotherapy_phone`
--
ALTER TABLE `physiotherapy_phone`
  ADD CONSTRAINT `physiotherapy_phone_physiotherapy_id_foreign` FOREIGN KEY (`physiotherapy_id`) REFERENCES `physiotherapy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `physiotherapy_product`
--
ALTER TABLE `physiotherapy_product`
  ADD CONSTRAINT `physiotherapy_product_physiotherapy_id_foreign` FOREIGN KEY (`physiotherapy_id`) REFERENCES `physiotherapy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `physiotherapy_product_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `physiotherapy_product_product_subcategory_id_foreign` FOREIGN KEY (`product_subcategory_id`) REFERENCES `product_subcategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `physiotherapy_service`
--
ALTER TABLE `physiotherapy_service`
  ADD CONSTRAINT `physiotherapy_service_physiotherapy_id_foreign` FOREIGN KEY (`physiotherapy_id`) REFERENCES `physiotherapy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `physiotherapy_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `physiotherapy_service_subservice_id_foreign` FOREIGN KEY (`subservice_id`) REFERENCES `subservice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_subcategory`
--
ALTER TABLE `product_subcategory`
  ADD CONSTRAINT `product_subcategory_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skin_laser_center`
--
ALTER TABLE `skin_laser_center`
  ADD CONSTRAINT `skin_laser_center_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `skin_laser_center_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skin_laser_center_doctor`
--
ALTER TABLE `skin_laser_center_doctor`
  ADD CONSTRAINT `skin_laser_center_doctor_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `skin_laser_center_doctor_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `skin_laser_center_doctor_skin_laser_center_id_foreign` FOREIGN KEY (`skin_laser_center_id`) REFERENCES `skin_laser_center` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skin_laser_center_email`
--
ALTER TABLE `skin_laser_center_email`
  ADD CONSTRAINT `skin_laser_center_email_skin_laser_center_id_foreign` FOREIGN KEY (`skin_laser_center_id`) REFERENCES `skin_laser_center` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skin_laser_center_notice`
--
ALTER TABLE `skin_laser_center_notice`
  ADD CONSTRAINT `skin_laser_center_notice_skin_laser_center_id_foreign` FOREIGN KEY (`skin_laser_center_id`) REFERENCES `skin_laser_center` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skin_laser_center_phone`
--
ALTER TABLE `skin_laser_center_phone`
  ADD CONSTRAINT `skin_laser_center_phone_skin_laser_center_id_foreign` FOREIGN KEY (`skin_laser_center_id`) REFERENCES `skin_laser_center` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skin_laser_center_service`
--
ALTER TABLE `skin_laser_center_service`
  ADD CONSTRAINT `skin_laser_center_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `skin_laser_center_service_skin_laser_center_id_foreign` FOREIGN KEY (`skin_laser_center_id`) REFERENCES `skin_laser_center` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `skin_laser_center_service_subservice_id_foreign` FOREIGN KEY (`subservice_id`) REFERENCES `subservice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subdistricts`
--
ALTER TABLE `subdistricts`
  ADD CONSTRAINT `subdistrict_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subservice`
--
ALTER TABLE `subservice`
  ADD CONSTRAINT `subservice_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vaccine_point`
--
ALTER TABLE `vaccine_point`
  ADD CONSTRAINT `vaccine_point_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vaccine_point_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vaccine_point_doctor`
--
ALTER TABLE `vaccine_point_doctor`
  ADD CONSTRAINT `vaccine_point_doctor_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vaccine_point_doctor_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vaccine_point_doctor_vaccine_point_id_foreign` FOREIGN KEY (`vaccine_point_id`) REFERENCES `vaccine_point` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vaccine_point_email`
--
ALTER TABLE `vaccine_point_email`
  ADD CONSTRAINT `vaccine_point_email_vaccine_point_id_foreign` FOREIGN KEY (`vaccine_point_id`) REFERENCES `vaccine_point` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vaccine_point_notice`
--
ALTER TABLE `vaccine_point_notice`
  ADD CONSTRAINT `vaccine_point_notice_vaccine_point_id_foreign` FOREIGN KEY (`vaccine_point_id`) REFERENCES `vaccine_point` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vaccine_point_phone`
--
ALTER TABLE `vaccine_point_phone`
  ADD CONSTRAINT `vaccine_point_phone_vaccine_point_id_foreign` FOREIGN KEY (`vaccine_point_id`) REFERENCES `vaccine_point` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vaccine_point_service`
--
ALTER TABLE `vaccine_point_service`
  ADD CONSTRAINT `vaccine_point_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vaccine_point_service_subservice_id_foreign` FOREIGN KEY (`subservice_id`) REFERENCES `subservice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vaccine_point_service_vaccine_point_id_foreign` FOREIGN KEY (`vaccine_point_id`) REFERENCES `vaccine_point` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `yoga`
--
ALTER TABLE `yoga`
  ADD CONSTRAINT `yoga_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `yoga_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `yoga_doctor`
--
ALTER TABLE `yoga_doctor`
  ADD CONSTRAINT `yoga_doctor_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `yoga_doctor_medical_specialist_id_foreign` FOREIGN KEY (`medical_specialist_id`) REFERENCES `medical_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `yoga_doctor_yoga_id_foreign` FOREIGN KEY (`yoga_id`) REFERENCES `yoga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `yoga_email`
--
ALTER TABLE `yoga_email`
  ADD CONSTRAINT `yoga_email_yoga_id_foreign` FOREIGN KEY (`yoga_id`) REFERENCES `yoga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `yoga_notice`
--
ALTER TABLE `yoga_notice`
  ADD CONSTRAINT `yoga_notice_yoga_id_foreign` FOREIGN KEY (`yoga_id`) REFERENCES `yoga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `yoga_phone`
--
ALTER TABLE `yoga_phone`
  ADD CONSTRAINT `yoga_phone_yoga_id_foreign` FOREIGN KEY (`yoga_id`) REFERENCES `yoga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `yoga_service`
--
ALTER TABLE `yoga_service`
  ADD CONSTRAINT `yoga_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `yoga_service_subservice_id_foreign` FOREIGN KEY (`subservice_id`) REFERENCES `subservice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `yoga_service_yoga_id_foreign` FOREIGN KEY (`yoga_id`) REFERENCES `yoga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
