-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2021 at 01:55 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `officedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trainer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `name`, `location`, `trainer`, `start_date`, `end_date`, `period`, `created_at`, `updated_at`) VALUES
(1, 'အပတ်စိုင် (၅၃)', 'လိကျင့်ရီးကွင်းသစ်', 'ဗိုလ်မှူး ညွန့်အောင်', '2019-06-17', '2019-09-24', '99', '2021-02-23 18:01:07', '2021-02-23 18:01:07'),
(2, 'အပတ်စိုင် (၅၂)', 'လိကျင့်ရီးကွင်းသစ်', 'ဗိုလ်မှူး ညွန့်အောင်', '2019-06-16', '2019-08-17', '62', '2021-02-24 07:03:13', '2021-02-24 07:03:13');

-- --------------------------------------------------------

--
-- Table structure for table `bloods`
--

CREATE TABLE `bloods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bloods`
--

INSERT INTO `bloods` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'B', '2021-02-23 18:02:18', '2021-02-23 18:02:18'),
(2, 'A', '2021-02-24 07:02:02', '2021-02-24 07:02:02'),
(3, 'O', '2021-02-24 07:02:08', '2021-02-24 07:02:08'),
(4, 'AB', '2021-02-24 07:02:13', '2021-02-24 07:02:13');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trainer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `location`, `trainer`, `start_date`, `end_date`, `period`, `created_at`, `updated_at`) VALUES
(1, 'ကွန်ပျူတာ', 'ကွန်ပျူတာခန်းမ', 'တပ်ကြပ်ကြီးသန္တာဖြူ', '2020-01-01', '2021-01-01', '366', '2021-02-23 18:13:45', '2021-02-23 18:13:45'),
(2, 'Spoken English', 'သတိုးဓမ္မရာဇာ ခန်းမ', 'တပ်ကြပ်ကြီးဇော်ဇော်သိန်း', '2020-11-03', '2020-04-21', '-196', '2021-02-24 07:44:10', '2021-02-24 07:44:10'),
(3, 'NCO သင်တန်း', 'လိကျင့်ရီးကွင်းသစ်', 'ဗိုလ်မှူး ညွန့်အောင်', '2020-12-15', '2020-12-09', '-6', '2021-02-24 21:31:07', '2021-02-24 21:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `course_personal`
--

CREATE TABLE `course_personal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `personal_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_personal`
--

INSERT INTO `course_personal` (`id`, `course_id`, `personal_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 2, 2, NULL, NULL),
(4, 2, 3, NULL, NULL),
(5, 1, 4, NULL, NULL),
(6, 2, 4, NULL, NULL),
(7, 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ဗဟိုဌာနချုပ်တပ်ရုံး', '2021-02-23 17:59:45', '2021-02-23 17:59:45'),
(2, 'အမှတ်(၁) စစ်ဗျူဟာ', '2021-02-24 07:26:17', '2021-02-24 07:26:17'),
(3, 'အမှတ်(၂) စစ်ဗျူဟာ', '2021-02-24 07:26:27', '2021-02-24 07:26:27'),
(4, 'အမှတ်(၃) စစ်ဗျူဟာ', '2021-02-24 07:26:38', '2021-02-24 07:26:38');

-- --------------------------------------------------------

--
-- Table structure for table `displines`
--

CREATE TABLE `displines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `d_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `officer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `displines`
--

INSERT INTO `displines` (`id`, `d_name`, `d_category`, `officer`, `start_date`, `end_date`, `period`, `remark`, `p_id`, `created_at`, `updated_at`) VALUES
(1, 'အရက်ခိုးသောက်သောကြောင့်', 'ခြောက်ပေါက်ချ', 'အရာခံဗိုလ် ဆန်းမောင်', '2021-02-25', '2021-02-25', '151', 'ကောင်းကောင်းလုပ်', 3, '2021-02-24 19:50:38', '2021-02-24 19:51:40'),
(2, 'ျ်ျ်', 'ျ်ျ်ျ်ျ', '်ျ်ျ်ျ်', '2021-02-01', '2021-02-26', '25', 'ျ်ျ်ျ်', 3, '2021-02-24 21:05:04', '2021-02-24 21:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `families`
--

CREATE TABLE `families` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bod` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `child` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cousin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religious` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town_id` bigint(20) UNSIGNED NOT NULL,
  `p_id` bigint(20) UNSIGNED NOT NULL,
  `blood_id` bigint(20) UNSIGNED NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `families`
--

INSERT INTO `families` (`id`, `name`, `f_name`, `m_name`, `bod`, `address`, `child`, `cousin`, `education`, `job`, `religious`, `nation`, `town_id`, `p_id`, `blood_id`, `remark`, `created_at`, `updated_at`) VALUES
(1, 'မေသက်ခိုင်', 'မောင်မောင်', 'ဒေါ်ဒေါ်', '1998-11-11', 'တဲချောင်းကျေးရွာ', '၄ ယောက်', '၃ ယောက်', 'ဆယ်တန်းအောင်', 'လယ်လုပ်', 'ဗုဒ္ဓ', 'ရခိုင်', 2, 1, 1, NULL, '2021-02-24 05:16:31', '2021-02-25 18:11:59'),
(5, 'မိုးမိုး', 'အောင်သာ', 'စိန်မေသာ', '2021-02-02', 'သဲချောင်း', '၆ ယောက်', '၃ ယောက်', '၉ တန်း', 'လယ်လုပ်', 'ဗုဒ္ဓဘာသာ', 'ရခိုင်', 2, 3, 4, 'ကောင်း', '2021-02-24 20:45:47', '2021-02-24 20:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ကျား', '2021-02-23 18:02:06', '2021-02-23 18:02:06'),
(2, 'မ', '2021-02-24 07:13:50', '2021-02-24 07:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `healths`
--

CREATE TABLE `healths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hostipal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_cat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medician` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `healths`
--

INSERT INTO `healths` (`id`, `name`, `hostipal`, `medicine_cat`, `medician`, `start_date`, `end_date`, `period`, `remark`, `p_id`, `created_at`, `updated_at`) VALUES
(1, 'ငှက်ဖျား', 'စစ်မယ်တပ် ဆီးခန်း', 'Geeilpor', 'တ.က.က မေမျိုးခိုင်', '2021-02-01', '2021-06-30', '149', 'မကောင်းသိမ့်', 3, '2021-02-24 20:22:19', '2021-02-24 20:22:40'),
(2, 'ဖျား', 'စစ်တွေ', '့ပ်ပ်ပအပိအိအပျိအျ', 'နှင်းနန္ဒာအောင်', '2021-02-01', '2021-02-25', '24', 'ကောင်း', 1, '2021-02-24 21:21:07', '2021-02-24 21:32:50');

-- --------------------------------------------------------

--
-- Table structure for table `improvecategories`
--

CREATE TABLE `improvecategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `improvecategories`
--

INSERT INTO `improvecategories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ပေါင်းသင်းဆက်ဆံရီး', '2021-02-24 19:47:21', '2021-02-24 19:47:21'),
(2, 'အလုပ်ကြိုးစားမှု', '2021-02-24 20:23:11', '2021-02-24 20:23:11'),
(3, 'သပ်ရပ်မှု', '2021-02-24 21:31:46', '2021-02-24 21:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `improves`
--

CREATE TABLE `improves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_id` bigint(20) UNSIGNED NOT NULL,
  `i_category_id` bigint(20) UNSIGNED NOT NULL,
  `radio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `improves`
--

INSERT INTO `improves` (`id`, `p_id`, `i_category_id`, `radio`, `start_date`, `end_date`, `period`, `remark`, `created_at`, `updated_at`) VALUES
(6, 3, 1, 'ကောင်း', '2021-02-01', '2021-02-25', '24', '်ျ်ျ်ျ', '2021-02-24 21:03:22', '2021-02-24 21:03:22'),
(7, 3, 2, 'သင့်', '2021-02-01', '2021-02-25', '24', '်ျ်ျ်ျ', '2021-02-24 21:03:22', '2021-02-24 21:03:22'),
(8, 1, 3, 'ညံ့', '2021-02-11', '2021-02-25', '14', '--', '2021-02-24 21:32:14', '2021-02-24 21:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '2021_01_27_014714_create_healths_table', 9),
(55, '2021_02_13_033019_create_department_personal_table', 13),
(56, '2021_02_13_033821_create_department_personal_table', 14),
(57, '2021_02_13_075104_create_department_personal_table', 15),
(117, '2014_10_12_000000_create_users_table', 16),
(118, '2014_10_12_100000_create_password_resets_table', 16),
(119, '2021_01_22_020122_create_permission_tables', 16),
(120, '2021_01_23_035620_create_departments_table', 16),
(121, '2021_01_23_035730_create_subdepartments_table', 16),
(122, '2021_01_24_132357_create_towns_table', 16),
(123, '2021_01_24_135738_create_genders_table', 16),
(124, '2021_01_25_011950_create_bloods_table', 16),
(125, '2021_01_25_032117_create_batches_table', 16),
(126, '2021_01_27_012148_create_courses_table', 16),
(127, '2021_01_28_013619_create_ranks_table', 16),
(138, '2021_01_30_114401_create_personals_table', 17),
(139, '2021_01_30_142233_create_families_table', 17),
(140, '2021_02_02_022126_create_healths_table', 17),
(141, '2021_02_15_024811_create_displines_table', 17),
(142, '2021_02_18_035000_create_personal_subdepartment_table', 17),
(143, '2021_02_18_124742_create_improvecategories_table', 17),
(144, '2021_02_18_131253_create_improves_table', 17),
(145, '2021_02_21_025528_create_course_personal_table', 17),
(146, '2021_02_22_123210_create_warzones_table', 17),
(147, '2021_02_22_132113_create_personal_warzone_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personals`
--

CREATE TABLE `personals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reg_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender_id` bigint(20) UNSIGNED NOT NULL,
  `appointment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_id` bigint(20) UNSIGNED NOT NULL,
  `town_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_contact` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doe` date DEFAULT NULL,
  `batch_id` bigint(20) UNSIGNED NOT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religious` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nation` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hobby` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signmark` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_count` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `health` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date NOT NULL,
  `subdepartment_id` bigint(20) UNSIGNED NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personals`
--

INSERT INTO `personals` (`id`, `reg_no`, `rank_id`, `name`, `gender_id`, `appointment`, `mother`, `father`, `height`, `blood_id`, `town_id`, `address`, `work`, `e_contact`, `doe`, `batch_id`, `education`, `religious`, `nation`, `hobby`, `signmark`, `f_count`, `health`, `image`, `dob`, `subdepartment_id`, `remark`, `created_at`, `updated_at`) VALUES
(1, 'AA-15435', 1, 'ကျော်စိုးလှ', 1, 'တပ်သား', 'ဒေါ်လှဝင်းကြည်', 'ဦးကျော်ခင်သန်း', '၅ ပေ ၅ လက်မ', 1, 1, 'ပြင်ဖြူမော်ကျေးရွာ', 'မရှိ', 'တဲချောင်းဆရာတော်', '2019-05-24', 1, 'ဆယ်တန်းအောင်', 'ဗုဒ္ဓ', 'ရခိုင်', 'ကွန်ပျူတာ', 'လည်ပင်းနား မှဲ့ဟိ', '၃ ယောက်', 'မရှိ', '1614164724.png', '1998-12-20', 1, '--', '2021-02-24 04:35:24', '2021-02-24 04:35:24'),
(2, 'AA-15436', 1, 'အောင်အောင်', 1, 'တပ်သား', 'ဒေါ်မြ', 'ဦးကျော်ခင်သန်း', '၅ ပေ ၅ လက်မ', 1, 1, 'မောင်သာမိုးရွာ', 'မရှိ', 'တဲချောင်းဆရာတော်', '2021-02-10', 1, 'ဆယ်တန်းအောင်', 'ဗုဒ္ဓ', 'ရခိုင်', 'ကွန်ပျူတာ', 'လည်ပင်းနား မှဲ့ဟိ', '၅ ယောက်', 'မရှိ', '1614168862.png', '2021-02-01', 2, '--', '2021-02-24 05:44:22', '2021-02-24 05:44:22'),
(3, 'AA-15433', 2, 'မောင်နီလှ', 1, 'တပ်သား', 'ဒေါ်မြ', 'မောင်ဘ', '၅ ပေ ၅ လက်မ', 3, 1, 'တဲချောင်းကျေးရွာ', 'မရှိ', 'တဲချောင်းဆရာတော်', '2021-02-04', 1, 'ဆယ်တန်းအောင်', 'ဗုဒ္ဓ', 'ရခိုင်', 'ကွန်ပျူတာ', 'လည်ပင်းနား မှဲ့ဟိ', '၅ ယောက်', 'မရှိ', '1614173472.png', '2021-02-08', 1, '--', '2021-02-24 06:57:14', '2021-02-24 07:10:22'),
(4, 'AA-02238', 2, 'မဌေးဝင်း', 2, 'တပ်ကြပ်ကြီး', 'ဒေါ်မြ', 'မောင်ဘ', '၅ ပေ ၅ လက်မ', 2, 1, 'မင်ရွာကျေးရွာ', 'မရှိ', 'တဲချောင်းဆရာတော်', '2020-12-15', 2, 'ဆယ်တန်းအောင်', 'ဗုဒ္ဓ', 'ရခိုင်', 'ကွန်ပျူတာ', 'လည်ပင်းနား မှဲ့ဟိ', '၅ ယောက်', 'မရှိ', '1614224613.webp', '2020-12-30', 2, 'ကြိုးစားနိန်တုန်း', '2021-02-24 21:12:33', '2021-02-24 21:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `personal_subdepartment`
--

CREATE TABLE `personal_subdepartment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subdepartment_id` bigint(20) UNSIGNED NOT NULL,
  `personal_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `started_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_subdepartment`
--

INSERT INTO `personal_subdepartment` (`id`, `subdepartment_id`, `personal_id`, `status`, `started_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2020-12-12', '2021-02-25', NULL, NULL),
(2, 2, 2, 1, '2021-02-09', NULL, NULL, NULL),
(3, 1, 3, 1, '2021-02-01', NULL, NULL, NULL),
(4, 2, 4, 1, NULL, NULL, NULL, NULL),
(5, 3, 1, 1, '2021-02-25', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_warzone`
--

CREATE TABLE `personal_warzone` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warzone_id` bigint(20) UNSIGNED NOT NULL,
  `personal_id` bigint(20) UNSIGNED NOT NULL,
  `started_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ranks`
--

CREATE TABLE `ranks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ranks`
--

INSERT INTO `ranks` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'တပ်သား', '2021-02-23 17:59:17', '2021-02-23 17:59:17'),
(2, 'ဒုတပ်ကြပ်', '2021-02-24 07:02:27', '2021-02-24 07:02:27'),
(3, 'တပ်ကြပ်', '2021-02-24 21:16:23', '2021-02-24 21:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subdepartments`
--

CREATE TABLE `subdepartments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subdepartments`
--

INSERT INTO `subdepartments` (`id`, `name`, `dep_id`, `created_at`, `updated_at`) VALUES
(1, 'စိုက် / မွီး / ပန်း', 1, '2021-02-23 18:00:04', '2021-02-24 21:17:15'),
(2, 'ရုံး', 1, '2021-02-23 18:05:48', '2021-02-23 18:05:48'),
(3, 'အမှတ်(၁၀၃) တပ်ရင်း', 3, '2021-02-24 07:27:04', '2021-02-24 07:27:04'),
(4, 'အမှတ်(၁၀၁) တပ်ရင်း', 2, '2021-02-24 07:27:27', '2021-02-24 07:27:27'),
(5, 'အမှတ်(၁၀၄)တပ်ရင်း', 4, '2021-02-24 07:27:45', '2021-02-24 07:27:45'),
(6, 'စစ်မယ်တပ်', 1, '2021-02-24 21:23:26', '2021-02-24 21:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `towns`
--

CREATE TABLE `towns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `towns`
--

INSERT INTO `towns` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ကျောက်ဖြူမြို့', '2021-02-23 18:02:34', '2021-02-23 18:02:34'),
(2, 'စစ်တွေမြို့', '2021-02-24 06:40:04', '2021-02-24 06:40:04'),
(3, 'ကျောက်တော််', '2021-02-24 21:17:45', '2021-02-24 21:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$CA6lIL340rQ5GwoCL2Lqr.Wu8EAOI8TBrGqpd2TQN5Rvqn16s6TEu', NULL, '2021-02-23 07:56:25', '2021-02-23 07:56:25'),
(2, 'Kyaw Soe Hla', 'kyawsoehla@mail.com', NULL, '$2y$10$BcvPDilDNV3eAUM3/OB9v.0kkRAazm1VbfgtpSrWzSWRZdfk.uHV6', NULL, '2021-02-24 21:33:40', '2021-02-24 21:33:40');

-- --------------------------------------------------------

--
-- Table structure for table `warzones`
--

CREATE TABLE `warzones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wz_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warzones`
--

INSERT INTO `warzones` (`id`, `wz_name`, `created_at`, `updated_at`) VALUES
(1, 'အာလဖာစစ်ဒေသ', '2021-02-24 19:48:23', '2021-02-24 19:48:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloods`
--
ALTER TABLE `bloods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_personal`
--
ALTER TABLE `course_personal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_personal_course_id_foreign` (`course_id`),
  ADD KEY `course_personal_personal_id_foreign` (`personal_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `displines`
--
ALTER TABLE `displines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `displines_p_id_foreign` (`p_id`);

--
-- Indexes for table `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`id`),
  ADD KEY `families_town_id_foreign` (`town_id`),
  ADD KEY `families_p_id_foreign` (`p_id`),
  ADD KEY `families_blood_id_foreign` (`blood_id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `healths`
--
ALTER TABLE `healths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `healths_p_id_foreign` (`p_id`);

--
-- Indexes for table `improvecategories`
--
ALTER TABLE `improvecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `improves`
--
ALTER TABLE `improves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `improves_p_id_foreign` (`p_id`),
  ADD KEY `improves_i_category_id_foreign` (`i_category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personals`
--
ALTER TABLE `personals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personals_rank_id_foreign` (`rank_id`),
  ADD KEY `personals_gender_id_foreign` (`gender_id`),
  ADD KEY `personals_blood_id_foreign` (`blood_id`),
  ADD KEY `personals_town_id_foreign` (`town_id`),
  ADD KEY `personals_batch_id_foreign` (`batch_id`),
  ADD KEY `personals_subdepartment_id_foreign` (`subdepartment_id`);

--
-- Indexes for table `personal_subdepartment`
--
ALTER TABLE `personal_subdepartment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personal_subdepartment_subdepartment_id_foreign` (`subdepartment_id`),
  ADD KEY `personal_subdepartment_personal_id_foreign` (`personal_id`);

--
-- Indexes for table `personal_warzone`
--
ALTER TABLE `personal_warzone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personal_warzone_warzone_id_foreign` (`warzone_id`),
  ADD KEY `personal_warzone_personal_id_foreign` (`personal_id`);

--
-- Indexes for table `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `subdepartments`
--
ALTER TABLE `subdepartments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subdepartments_dep_id_foreign` (`dep_id`);

--
-- Indexes for table `towns`
--
ALTER TABLE `towns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warzones`
--
ALTER TABLE `warzones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bloods`
--
ALTER TABLE `bloods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_personal`
--
ALTER TABLE `course_personal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `displines`
--
ALTER TABLE `displines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `families`
--
ALTER TABLE `families`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `healths`
--
ALTER TABLE `healths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `improvecategories`
--
ALTER TABLE `improvecategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `improves`
--
ALTER TABLE `improves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personals`
--
ALTER TABLE `personals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_subdepartment`
--
ALTER TABLE `personal_subdepartment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_warzone`
--
ALTER TABLE `personal_warzone`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subdepartments`
--
ALTER TABLE `subdepartments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `towns`
--
ALTER TABLE `towns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `warzones`
--
ALTER TABLE `warzones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_personal`
--
ALTER TABLE `course_personal`
  ADD CONSTRAINT `course_personal_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_personal_personal_id_foreign` FOREIGN KEY (`personal_id`) REFERENCES `personals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `displines`
--
ALTER TABLE `displines`
  ADD CONSTRAINT `displines_p_id_foreign` FOREIGN KEY (`p_id`) REFERENCES `personals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `families`
--
ALTER TABLE `families`
  ADD CONSTRAINT `families_blood_id_foreign` FOREIGN KEY (`blood_id`) REFERENCES `bloods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `families_p_id_foreign` FOREIGN KEY (`p_id`) REFERENCES `personals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `families_town_id_foreign` FOREIGN KEY (`town_id`) REFERENCES `towns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `healths`
--
ALTER TABLE `healths`
  ADD CONSTRAINT `healths_p_id_foreign` FOREIGN KEY (`p_id`) REFERENCES `personals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `improves`
--
ALTER TABLE `improves`
  ADD CONSTRAINT `improves_i_category_id_foreign` FOREIGN KEY (`i_category_id`) REFERENCES `improvecategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `improves_p_id_foreign` FOREIGN KEY (`p_id`) REFERENCES `personals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `personals`
--
ALTER TABLE `personals`
  ADD CONSTRAINT `personals_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `personals_blood_id_foreign` FOREIGN KEY (`blood_id`) REFERENCES `bloods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `personals_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `personals_rank_id_foreign` FOREIGN KEY (`rank_id`) REFERENCES `ranks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `personals_subdepartment_id_foreign` FOREIGN KEY (`subdepartment_id`) REFERENCES `subdepartments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `personals_town_id_foreign` FOREIGN KEY (`town_id`) REFERENCES `towns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `personal_subdepartment`
--
ALTER TABLE `personal_subdepartment`
  ADD CONSTRAINT `personal_subdepartment_personal_id_foreign` FOREIGN KEY (`personal_id`) REFERENCES `personals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `personal_subdepartment_subdepartment_id_foreign` FOREIGN KEY (`subdepartment_id`) REFERENCES `subdepartments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `personal_warzone`
--
ALTER TABLE `personal_warzone`
  ADD CONSTRAINT `personal_warzone_personal_id_foreign` FOREIGN KEY (`personal_id`) REFERENCES `personals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `personal_warzone_warzone_id_foreign` FOREIGN KEY (`warzone_id`) REFERENCES `warzones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subdepartments`
--
ALTER TABLE `subdepartments`
  ADD CONSTRAINT `subdepartments_dep_id_foreign` FOREIGN KEY (`dep_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
