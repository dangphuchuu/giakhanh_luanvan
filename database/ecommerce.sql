-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 13, 2024 at 02:00 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luanvan`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(9, 'banners/ab88bcdxe76o30ueaax7', 1, '2023-10-28 19:54:40', '2024-01-04 16:31:01'),
(10, 'banners/fxcgu9beqde08crnjczq', 1, '2023-10-28 19:54:42', '2024-01-04 16:28:30');

-- --------------------------------------------------------

--
-- Table structure for table `banners_featureds`
--

CREATE TABLE `banners_featureds` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners_featureds`
--

INSERT INTO `banners_featureds` (`id`, `name`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Apple collection', 'bannersfeatured/vew050omladqzi3wwmsv', 'http://phcomputer.com/subcategory/1', 1, '2023-10-28 21:32:28', '2024-01-05 02:54:42'),
(3, 'Pc Collection', 'bannersfeatured/onxesa2zb7x4pkf7qt4c', 'http://phcomputer.com/subcategory/2', 1, '2023-10-28 21:39:23', '2024-01-05 02:56:07'),
(4, 'Macbook Collection', 'bannersfeatured/dfetqkq7ud9yxfwjayd8', 'http://phcomputer.com/subcategory/4', 1, '2023-10-28 21:39:37', '2024-01-05 02:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'MSI', 'brands/hc3xpw7aqahmzwjbk4xj', 1, '2023-10-29 04:38:22', '2024-01-05 02:57:56'),
(3, 'Acer', 'brands/mocx4hj9zk0qh979ak3c', 1, '2023-10-26 08:17:44', '2023-10-26 08:18:40'),
(4, 'Lenovo1', 'brands/tozc2i39xpyk42pouho0', 1, '2023-10-26 08:17:52', '2023-11-28 21:28:31'),
(5, 'Apple', 'brands/fphyod7fexyt0swptfzw', 1, '2023-10-26 08:18:29', '2023-10-28 21:54:10'),
(6, 'Dell', 'brands/fj6630ehdm9j0ztjwrsl', 1, '2023-10-26 08:19:03', '2023-10-26 08:19:03'),
(7, 'Samsung', 'brands/b5yc9gk7q8wdia1jy44k', 1, '2023-10-26 08:19:22', '2024-01-05 02:59:06'),
(8, 'Asus', 'brands/mqibspiqcdgmapsmidhq', 1, '2023-10-26 08:46:49', '2023-10-26 08:46:49'),
(9, 'Khác', NULL, 1, '2023-10-26 09:15:33', '2023-10-26 09:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Acer', 1, '2023-10-26 07:34:27', '2024-01-04 16:22:42'),
(2, 'Asus', 1, '2023-11-03 04:10:12', '2023-11-06 03:28:38'),
(17, 'Apple', 1, '2023-11-03 04:10:17', '2023-11-03 04:10:17'),
(18, 'Dell', 1, '2023-11-03 04:10:22', '2023-11-03 04:10:22'),
(19, 'Hp', 1, '2023-11-03 04:10:39', '2023-11-03 04:10:39'),
(20, 'Lenovo', 1, '2023-11-03 04:10:45', '2023-11-03 04:10:45'),
(23, 'PC-máy tính bộ', 1, '2023-12-21 20:34:23', '2023-12-21 20:34:23'),
(24, 'Linh Kiện', 1, '2024-02-13 13:19:51', '2024-02-13 13:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` int NOT NULL,
  `quantity` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `name`, `code`, `percent`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(2, 'test', 'test', 50, 99, 1, '2023-12-24 12:36:47', '2024-01-11 09:27:15'),
(3, 'test', 'koko', 12, 2, 1, '2023-12-24 12:40:10', '2023-12-25 10:41:33'),
(4, 'test3', 'test3', 70, 25, 1, '2023-12-25 10:42:37', '2024-01-05 13:02:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `infos`
--

CREATE TABLE `infos` (
  `id` int UNSIGNED NOT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `worktime` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` float NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `infos`
--

INSERT INTO `infos` (`id`, `logo`, `name`, `phone`, `email`, `facebook`, `twitter`, `youtube`, `address`, `worktime`, `copyright`, `tax`, `created_at`, `updated_at`) VALUES
(1, 'logo.png', 'PhComputer', '0123456789', 'phuchuu0120@gmail.com', 'https://www.facebook.com/', 'http://www.twitter.com', NULL, '123 456, Phường 4, Quận 1,', '7:00 - 22:00', '©PhComputer', 10, NULL, '2024-01-12 11:51:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_23_041801_create_products_table', 1),
(6, '2023_10_23_041817_create_categories_table', 1),
(7, '2023_10_23_071609_create_subcategories_table', 1),
(8, '2023_10_23_073915_create_brands_table', 1),
(9, '2023_10_23_105308_create_permission_tables', 1),
(10, '2023_10_25_055949_create_products_libraries_table', 1),
(11, '2023_10_28_151756_create_banners_table', 2),
(12, '2023_10_29_040353_create_banners_featureds_table', 3),
(13, '2013_01_04_170724_create_wishlists_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `users_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `image`, `content`, `status`, `users_id`, `created_at`, `updated_at`) VALUES
(1, 'Murf AI có phải là voice AI đỉnh nhất?', 'news/w4jn6dnibjhrk97kowqq', '<p><i><strong>Murf AI là công cụ tạo giọng nói AI vô cùng phổ biến trên nhiều nơi trên Thế giới. Với kho tàng ngôn ngữ phong phú và nhiều chất giọng khác nhau, Murf AI dần được biết đến nhiều hơn và đóng vai trò quan trọng trong việc hỗ trợ người dùng trong nhiều tác vụ khác nhau. Hôm nay hãy cùng GEARVN tìm hiểu về Murf AI và cách dùng Murf AI trong nhiều trường hợp ngay sau đây nhé!</strong></i></p><h2><strong>Murf AI là gì?</strong></h2><p><strong>Murf AI </strong>là một trình tạo giọng nói AI tiên tiến sử dụng trí tuệ nhân tạo để sản xuất âm thanh chất lượng cao cho quảng cáo, video giải thích, video YouTube, <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/podcast-la-gi-mot-so-kenh-podcast-hay-khong-nen-bo-qua\">podcast</a> và nhiều nội dung khác. Bằng cách tận dụng công nghệ tổng hợp giọng nói tiên tiến, bạn có thể tạo ra giọng nói tự nhiên mà không cần phải thuê diễn viên lồng tiếng hoặc dành nhiều giờ thu âm và chỉnh sửa âm thanh.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-1_d10ec6c369184ca392cca8f1acaeb315_1024x1024.png\" alt=\"GEARVN - Murf AI là gì?\"></p><h2><strong>Tính năng nổi bật của Murf AI</strong></h2><p>Murf AI cung cấp một loạt ấn tượng các tính năng chính, làm cho nó nổi bật giữa các trình tạo giọng nói AI khác, từ chức năng chuyển văn bản thành giọng nói cho đến việc tăng cường quy trình làm việc của bạn với Murf API.</p><p><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/chuyen-van-ban-thanh-giong-noi\"><strong>Chuyển văn bản thành giọng nói</strong></a><strong> (Text to Speech): </strong>Tính năng này cho phép bạn chuyển đổi văn bản thành âm thanh với giọng đọc tự nhiên và chất lượng cao.</p><p><strong>Canva Add-On: </strong>Bổ sung <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/cach-tai-canva-ve-may-tinh-laptop\">Canva</a> giúp tích hợp dễ dàng giọng đọc AI vào thiết kế của bạn trực tiếp từ nền tảng Canva.</p><p><strong>Tạo giọng nói nhân vật (Voice Cloning): </strong>Tính năng này cho phép bạn tạo ra giọng đọc AI dựa trên giọng của người nổi tiếng.</p><p><strong>Giọng đọc cho video (Voice over Video): </strong>Murf AI cung cấp khả năng thêm giọng đọc vào video để tạo ra nội dung video chuyên nghiệp và chất lượng cao.</p><p><strong>Google Slides Add-on: </strong>Bổ sung cho <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/google-slides-la-gi-huong-dan-su-dung-google-slides\">Google Slides</a> giúp tích hợp giọng đọc vào bài thuyết trình một cách trực tiếp từ Google Slides.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-18_2c2ca83f93eb45e18ac0d1db368b739b_1024x1024.jpg\" alt=\"GEARVN - Tính năng nổi bật của Murf AI\"></p><p><i><strong>&gt;&gt;Xem thêm: </strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/cong-cu-chuyen-van-ban-thanh-giong-noi-tieng-viet\"><i><strong>Chia sẻ 5 công cụ chuyển văn bản thành giọng nói tiếng Việt trên máy tính</strong></i></a><i><strong>.</strong></i></p><h2><strong>Ưu và nhược điểm của Murf AI</strong></h2><h3><strong>Ưu điểm</strong></h3><p>Giao diện thân thiện với người dùng và miễn phí.</p><p>Kho tàng giọng nói đa dạng với hơn 120 giọng nói với hơn 20 loại ngôn ngữ và giọng địa phương.</p><p>Tiết kiệm thời gian và chi phí đáng kể so với cách làm truyền thống.</p><p>Chỉnh sửa bản ghi giọng nói dễ dàng như chỉnh sửa văn bản.</p><p>Khả năng làm cho âm thanh trở nên tự nhiên nhất bằng cách điều chỉ cao độ, tốc độ, và nhiều điều khác.</p><p>Murf AI có thể được sử dụng miễn phí trên Canva và Google Slides.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-3_f655fe30b87c4911bd33d6245b191e00_1024x1024.png\" alt=\"GEARVN -  Ưu và nhược điểm của Murf AI\"></p><h3><strong>Nhược điểm</strong></h3><p><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/google-cong-bo-su-dung-tinh-nang-ai-trong-gmail-google-docs\">Add-on trên Google Slides</a> chỉ cung cấp các tính năng cơ bản của giọng đọc (chỉnh sửa chi tiết hơn phải thực hiện trong Murf Studio).</p><p>Một số giọng còn thiếu sự tự tin, điều này có thể đòi hỏi nhiều công tác chỉnh sửa hơn.</p><h2><strong>Hướng dẫn chi tiết cách dùng Murf AI</strong></h2><h3><strong>Cách dùng Text to Speech trên Murf AI</strong></h3><p>Một trong tính năng nổi bật của Murf AI chính là khả năng chuyển văn bản thành giọng nói. Nếu bạn thấy <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/bat-mi-cach-tao-giong-chi-google-ai-cung-lam-duoc\">giọng chị Google</a> quá bình thường và muốn có một chất giọng mới trông tự nhiên và cuốn hút hơn thì bạn không nên bỏ qua Murf AI với hơn 20 ngôn ngữ và nhiều chất giọng khác nhau.</p><p><strong>Bước 1: </strong>Truy cập trang web Murf AI trên thanh công cụ tìm kiếm hoặc truy cập trực tiếp <a href=\"https://murf.ai/\"><strong>TẠI ĐÂY</strong></a>.</p><p><strong>Bước 2: </strong>Bạn có thể chọn Sign Up để đăng ký tài khoản Murf AI hoặc trực tiếp “<strong>Login</strong>” bằng tài khoản Google của mình nhé.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-1_90b33a0d13d341f08c11a62e5e06e208_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Text to Speech trên Murf AI\"></p><p><strong>Bước 3:</strong>&nbsp;Chọn \"<strong>Create project</strong>\" để bắt đầu dự án mới của bạn.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-2_c54c66840b7f4b8c8307f24982481bb1_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Text to Speech trên Murf AI\"></p><p><strong>Bước 4: </strong>Đặt tên&nbsp;và chọn hình sử dụng voice AI &gt; tiếp tục chọn \"<strong>Create project</strong>\".</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-3_addeda510e9e4714bbf17fb855958792_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Text to Speech trên Murf AI\"></p><p>&nbsp;</p><p><strong>Bước 5: </strong>Bạn có thể tùy chỉnh giọng nói sao cho phù hợp với yêu cầu của mình nhất. Ví dụ như thay thế giọng nói khác, điều chỉnh cao độ, phong thái giọng nói và cả điều chỉnh phát âm. Tất nhiên, nếu bạn chỉ sử dụng tài khoản miễn phí thì không thể lựa chọn những âm thanh “<strong>PRO</strong>” được đâu nhé.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-5_42425f1ed5394766b3097aa990e62157_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Text to Speech trên Murf AI\"></p><p><strong>Bước 6:</strong> Ngoài ra, bạn cũng có thể sử dụng nhiều tính năng khác ở góc bên trái <a href=\"https://gearvn.com/pages/man-hinh\">màn hình</a> như “<strong>Import Script</strong>” để tải lên một đoạn văn bản có sẵn thay vì gõ thủ công; chèn theo media hay thay đổi giọng nói với “<strong>Voice Change</strong>r”. Bản cập nhật mới nhất còn có cả tính năng “<strong>Translate</strong>” để bạn <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/huong-dan-dich-tieng-anh-sang-tieng-viet-bang-hinh-anh\">dịch văn bản</a> và tạo giọng nói nhanh chóng.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-6_94afd51de6974e6ab08d2a3d53b7025d_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Text to Speech trên Murf AI\"></p><p><strong>Bước 7: </strong>Sau khi hoàn tất chỉnh sửa &gt; nhấn chọn “<strong>Export</strong>” để xuất file.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-7_ca204b6755a947239b8181fb526bae2a_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Text to Speech trên Murf AI\"></p><h3><strong>Cách dùng Murf trên Canva Add-on</strong></h3><p>Murf AI đã có màn bắt tay với Canva để tích hợp khả năng text-to-speech vào trong sản phẩm của mình. Để sử dụng Murf AI trên Canva, bạn có thể thực hiện theo những bước sau đây:</p><p><strong>Bước 1:</strong> Truy cập Canva &gt; tạo một project mới hoặc mở project bạn đang thực hiện.</p><p><strong>Bước 2:</strong> Chọn “<strong>Ứng dụng</strong>” &gt; kéo xuống và chọn “<strong>Murf AI</strong>” &gt; chọn “<strong>Mở</strong>”.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-8_5b6fd1177e13464bbe6f5ab2fba1f25e_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Murf trên Canva Add-on\"></p><p><strong>Bước 3: </strong>Hãy kết nối tài khoản Canva của bạn với Murf AI.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-9_73e619bad3a34a779f19c205ab5d0da9_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Murf trên Canva Add-on\"></p><p><strong>Bước 4:</strong> Lúc này bạn đã có thể tạo giọng nói AI bằng Murf AI trực tiếp trên Canva được rồi.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-10_6219c7a5d1244f33b4c3714edb93102a_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Murf trên Canva Add-on\"></p><h3><strong>Cách dùng Murf AI bằng Google Slides Add-on</strong></h3><p>Ngoài Canva, Google Slides cũng là một trong những “đối tác” khác của Murf AI. Giúp bạn tạo ra những trang slide vô cùng sống động từ hình ảnh lẫn âm thanh. Bằng cách này bạn có thể sử dụng Google Slides để tạo nên những thước phim tuyệt vời mà ai cũng có thể làm được kể cả beginner.&nbsp;</p><p>Để sử dụng Murf AI trên Google Slides, bạn có thể thực hiện theo những bước sau đây:</p><p><strong>Bước 1: </strong>Truy cập Google Slides &gt; chọn “<a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/google-extension\"><strong>Tiện ích mở rộng</strong></a>” &gt; tiếp tục chọn “<strong>Tiện ích bổ sung</strong>” &gt; “<strong>Tải tiện ích bổ sung</strong>”.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-11_6962e4690a19462dbd31c5cefcd38c63_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Murf AI bằng Google Slides Add-on\"></p><p><strong>Bước 2: </strong>Tìm kiếm Murf AI, sau đó “<strong>Cài đặt</strong>” tiện ích vào Google Slides.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-13_3fcabdf407b1415596f72db32a814dd2_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Murf AI bằng Google Slides Add-on\"></p><p><strong>Bước 3: </strong>Sau khi đã cài đặt Murf AI vào Google Slides, phần add-on của Murf AI sẽ hiển thị như hình bên dưới.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-14_12a0bd0194f64a6bb8182a2045481c8d_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Murf AI bằng Google Slides Add-on\"></p><p><strong>Bước 4: </strong>Để sử dụng tiện ích, bạn hãy đăng nhập &gt; gõ đoạn văn bạn muốn chuyển thành văn bản và chọn “<strong>Build video</strong>”.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-15_979ff2dd8d3e4952ae49899d39d6a1b4_1024x1024.jpg\" alt=\"GEARVN - Cách dùng Murf AI bằng Google Slides Add-on\"></p><p><strong>Bước 5: </strong>Sau khi đã hoàn tất, bạn có thể chọn “<strong>View Video</strong>” hoặc “<strong>Download video</strong>” về máy tính. Hoặc nhấn “<strong>Re-Build</strong>” để tiện ích xử lý dữ liệu thêm một lần nữa.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-16_5cef2532d6ee4bbd94538744cc68da82_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Murf AI bằng Google Slides Add-on\"></p><blockquote><p><i>Lưu ý khi sử dụng add-on Murf AI trên Google Slides:</i></p><p><i>Thành phẩm cuối cùng sẽ được xuất ra dưới dạng </i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/file-mkv-la-gi\"><i>video MP4</i></a><i>.</i></p><p><i>Chỉ nên nhập một đoạn văn bản vừa đủ để miêu tả nội dung của từng slide. Nếu bạn nhập tất cả nội dung vào một slide, đồng nghĩa Murf AI sẽ chỉ xử lý phần voice ngay tại một slide duy nhất.</i></p></blockquote><p>Tổng kết lại, trên đây là những thông tin về <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/murf-ai\">Murf AI</a>&nbsp;- công cụ tạo voice thông minh giúp bạn thực hiện mọi nhu cầu về giọng nói. Hy vọng bài viết có thể giúp ích cho bạn. Hẹn gặp lại bạn trong những bài viết sau tại <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/\"><strong>GEARVN - Blog Thủ Thuật &amp; Giải Đáp</strong></a>.</p>', 1, 2, '2023-12-05 09:19:42', '2023-12-07 07:23:50'),
(4, 'Bard AI là gì Tìm hiểu đặc điểm và cách sử dụng Google Bard', 'news/ldbongtvunb2ssulynlf', '<p><i><strong>Sự tiến bộ của trí tuệ nhân tạo (AI) đã và đang mở ra nhiều cơ hội mới trong việc tìm kiếm ý tưởng sáng tạo, hỗ trợ công việc hằng ngày. Và chúng ta không thể phủ nhận rằng Bard AI là một trong những AI có đóng góp quan trọng trong thời đại công nghệ ngày nay. Trong bài viết này GEARVN sẽ giúp bạn tìm hiểu kỹ càng hơn về “Google Bard là gì? Những đặc điểm nổi bật và cách ứng dụng trí tuệ nhân tạo từ Google vào công việc và cuộc sống” nhé!</strong></i></p><h2><strong>Giới thiệu về Bard AI&nbsp;</strong></h2><p>Nếu như bạn còn đang thắc mắc Bard AI là gì thì đây là đáp án dành cho bạn. Bard AI là chatbot trí tuệ nhân được ra đời vào khoảng đầu tháng 2/2023 bởi nhà phát hành Google AI. Bard được xây dựng dựa trên mô hình ngôn ngữ LaMDA xử lý tình huống và tương tác trong giao tiếp của cuộc trò chuyện. Kết hợp cùng nguồn dữ liệu lớn (Big data) để mang đến nhiều cuộc đối thoại hữu ích cho người sử dụng Google Bard.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-bard-ai-la-gi-tim-hieu-dac-diem-va-cach-su-dung-google-bard-9_0dbdecab632e49d28dde0356b305c3d5_1024x1024.png\" alt=\"GEARVN - Google Bard AI là gì\"></p><p>Trong khoảng thời gian đầu mới ra mắt công chúng, Bard AI chưa thật sự gây được nhiều tiếng vang. Đặc biệt chịu sự ảnh hưởng bởi mạnh mẽ của ChatGPT trên toàn cầu. Nhưng đến thời điểm hiện tại người dùng phải công nhận rằng Google đã không ngừng cố gắng và cập nhật liên tục cho “đứa con” của mình. Google Bard AI hỗ trợ nhu cầu tìm kiếm ý tưởng cho các công việc hằng ngày, gợi ý những nội dung sáng tạo nhanh chóng với khả năng tiếp cận đa lĩnh vực một cách đáng kinh ngạc. Điều này ngầm hứa hẹn rằng Google Bard AI sẽ trở thành một trong những công cụ trí tuệ nhân tạo đột phá và hữu ích với người dùng trong thời công nghệ số phát triển liên tục.</p><h2><strong>Google Bard AI vận hành như thế nào?</strong></h2><p>Cách mà Google Bard AI hoạt động có phần tương tự như đối thủ ChatGPT. Đều là sản phẩm trí tuệ nhân tạo dưới dạng chatbot nên Bard hoạt động dựa trên sự phân tích những yêu cầu của người dùng dưới dạng văn bản và đưa ra câu trả lời phù hợp nhất.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-bard-ai-la-gi-tim-hieu-dac-diem-va-cach-su-dung-google-bard-10_f9676fcd99fa44ab80b9479e148418c3_1024x1024.jpg\" alt=\"GEARVN - Google Bard AI vận hành thế nào\"></p><p><i><strong>&gt;&gt;&gt; Xem thêm:&nbsp;</strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/sang-tao-anh-ai-leonardo-ai\"><i><strong>Leonardo.ai - Sáng tạo ảnh AI \"nghệ như Leonardo da Vinci\"</strong></i></a><i><strong> &lt;&lt;&lt;</strong></i></p><p>Quy trình có thể hiểu đơn giản như sau:&nbsp;</p><p><strong>Bước 1:</strong> Bạn sẽ nhập các thông tin bất kỳ mô tả vấn đề / câu hỏi mà bạn đang tìm kiếm và gửi cho Bard AI.</p><p><strong>Bước 2:</strong> Bard sẽ dựa trên yêu cầu của bạn để dò tìm với Big data từ hệ thống, sau đó trả về kết quả tương ứng.&nbsp;</p><h2><strong>Công dụng của Google Bard&nbsp;</strong></h2><p>Google Bard sở hữu nhiều đặc điểm nổi bật giúp người dùng giải quyết được các công việc hằng ngày. Và chúng ta có thể dễ dàng thấy rõ những công dụng này khi ứng dụng Bard AI:</p><p><strong>Phân tích dữ liệu và đưa ra dự đoán:</strong> Không chỉ giúp người dùng trong việc tổng hợp thông tin mà còn cung cấp giải pháp cá nhân hóa, đặc biệt là trong lĩnh vực tài chính, bảo hiểm, y tế, và nhiều lĩnh vực khác. Điều này mang lại cho họ khả năng hiểu rõ hơn về dữ liệu và khám phá những xu hướng ẩn sau trong các số liệu.</p><p><strong>Cải thiện và nâng cao trải nghiệm người dùng: </strong>Bard AI không chỉ là một trợ lý ảo thông thường mà còn là một đối tác tương tác, nỗ lực hướng dẫn người dùng qua một hành trình trải nghiệm mượt mà và tích cực. Bằng cách này, nó không chỉ là một công cụ hữu ích mà còn là một nguồn động viên, tối ưu hóa mọi khía cạnh của trải nghiệm người dùng.</p><p><strong>Bard AI đóng vai trò quan trọng trong ngành Marketing: </strong>Không chỉ giúp tối ưu hóa chiến lược quảng cáo mà còn hỗ trợ việc tiếp cận khách hàng thông qua cung cấp nội dung chất lượng, thông tin hữu ích và việc viết blog sáng tạo. Sự linh hoạt và tích hợp của nó giúp doanh nghiệp xây dựng mối quan hệ mạng lưới vững chắc và tăng cường hiệu suất tiếp thị.</p><p><strong>Trong lĩnh vực dịch thuật: </strong>Bard AI vượt trội so với Google Dịch bằng cách sử dụng kho thông tin lớn LaMDA để dịch văn bản, không chỉ chú trọng vào ngôn ngữ mà còn xem xét ngữ cảnh để đảm bảo nghĩa chính xác nhất, đáp ứng mức độ phức tạp của nhiều loại văn bản.</p><p><strong>Hỗ trợ giáo dục và văn phòng: </strong>Bard AI không chỉ là một trợ lý ảo thông thường mà còn là nguồn hỗ trợ đắc lực trong giáo dục và các tác vụ văn phòng. Việc tìm kiếm tài liệu học thuật và thực hiện các nhiệm vụ liên quan đến tin học văn phòng trở nên mạnh mẽ và hiệu quả nhờ vào sự tích hợp linh hoạt của nó trong nhiều lĩnh vực chuyên ngành.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-bard-ai-la-gi-tim-hieu-dac-diem-va-cach-su-dung-google-bard-12_780a4bf8480b46e082e04ed9c0a8840f_1024x1024.png\" alt=\"GEARVN - Công dụng của Google Bard\"></p><p><i><strong>&gt;&gt;&gt; Xem thêm:&nbsp;</strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/murf-ai\"><i><strong>Murf AI có phải là voice AI đỉnh nhất?</strong></i></a><i><strong> &lt;&lt;&lt;</strong></i></p><h2><strong>Hướng dẫn sử dụng trí tuệ nhân tạo Google Bard AI</strong></h2><p>Để sử dụng trí tuệ nhân tạo Bard AI bạn hãy thực hiện lần lượt các bước sau cùng GEARVN nhé!</p><p><strong>Bước 1:</strong> Sử dụng trình duyệt<strong> Google Chrome </strong>và truy cập vào Bard bằng đường link này <a href=\"https://bard.google.com/?hl=vi\"><i><strong>https://bard.google.com/?hl=vi</strong></i></a><i><strong>.</strong></i></p><p><strong>Bước 2: </strong>Tại giao diện trang web Bard bạn hãy chọn <strong>Đăng nhập</strong>.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-bard-ai-la-gi-tim-hieu-dac-diem-va-cach-su-dung-google-bard-1_7029522acdf846aa93700bbb1829007d_1024x1024.png\" alt=\"GEARVN - Hướng dẫn sử dụng trí tuệ nhân tạo Google Bard AI\"></p><p><strong>Bước 3:</strong> Tiến hành đăng nhập <strong>tài khoản Google</strong> để có thể sử dụng Bard AI.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-bard-ai-la-gi-tim-hieu-dac-diem-va-cach-su-dung-google-bard-2_fc60a7405f104ded8111c1ded8acec6d_1024x1024.png\" alt=\"GEARVN - Hướng dẫn sử dụng trí tuệ nhân tạo Google Bard AI\"></p><p><strong>Bước 4: </strong>Chọn <strong>Thử dùng Bard</strong>.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-bard-ai-la-gi-tim-hieu-dac-diem-va-cach-su-dung-google-bard-3_26c826710420444ea99a6ec7efd63d08_1024x1024.png\" alt=\"GEARVN - Hướng dẫn sử dụng trí tuệ nhân tạo Google Bard AI\"></p><p><strong>Bước 5: </strong><a href=\"https://gearvn.com/pages/man-hinh\">Màn hình</a> sẽ hiện box về các điều khoản và chính sách sử dụng Bard AI. Bạn hãy kéo chuột đến cuối và sau đó chọn <strong>Tôi đồng ý</strong>.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-bard-ai-la-gi-tim-hieu-dac-diem-va-cach-su-dung-google-bard-4_30a879ef71bc45948f63185d3311fb8d_1024x1024.png\" alt=\"GEARVN - Hướng dẫn sử dụng trí tuệ nhân tạo Google Bard AI\"></p><p><strong>Bước 6:</strong> Hãy nhập những câu lệnh mà bạn muốn yêu cầu Bard AI trả lời tại khung yêu cầu và gửi.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-bard-ai-la-gi-tim-hieu-dac-diem-va-cach-su-dung-google-bard-7_f7a7bfe1b11841509f773330621046f1_1024x1024.png\" alt=\"GEARVN - Hướng dẫn sử dụng trí tuệ nhân tạo Google Bard AI\"></p><p><strong>Bước 7: </strong>Google Bard AI sẽ đưa ra câu trả lời tương ứng.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-bard-ai-la-gi-tim-hieu-dac-diem-va-cach-su-dung-google-bard-8_e16f1d94163043ca8c387e9fcbbcbbff_1024x1024.png\" alt=\"GEARVN - Hướng dẫn sử dụng trí tuệ nhân tạo Google Bard AI\"></p><blockquote><p><i><strong>Lưu ý:</strong> Những thông tin đến từ Bard AI chỉ mang tính chất tham khảo và có thể thay đổi theo từng thời điểm của bản cập nhật.&nbsp;</i></p></blockquote><p>Sự xuất hiện của Bard AI mở ra một cánh cửa mới về trải nghiệm người dùng và tương tác với thông tin. Bằng cách tận dụng sức mạnh của trí tuệ nhân tạo, Google Bard không chỉ là một công cụ tìm kiếm thông thường mà còn là một đối tác đắc lực, giúp chúng ta tiếp cận thông tin, tìm kiếm ý tưởng một cách hiệu quả và thuận tiện hơn bao giờ hết. Theo dõi <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap\"><i><strong>GEARVN - Thủ Thuật Giải Đáp</strong></i></a> để xem thêm nhiều bài viết hay nhé!</p>', 1, 2, '2023-12-05 18:58:36', '2023-12-07 18:58:36'),
(5, 'Game thủ có nên nâng cấp màn hình gaming OLED không?', 'news/sm4xu6kvbbbmuimjumf4', '<p><i><strong>Màn hình OLED đã không còn là khái niệm xa lạ so với người dùng. Sử dụng công nghệ hiện đại để tái tạo hình ảnh, màn hình OLED không những giây ấn tượng mạnh với giới mộ điệu vì chất lượng hình ảnh hiển thị ấn tượng, mà còn làm cho game thủ đứng ngồi không yên với chất lượng đồ họa màn hình máy tính này mang lại. Tuy nhiên, việc trang bị tấm nền OLED cho màn hình gaming liệu có thực sự cần thiết?</strong></i></p><h2><strong>Màn hình OLED là gì?</strong></h2><p><strong>OLED </strong>là viết tắt của <strong>Organic Light Emitting Diode</strong>, là công nghệ sử dụng tấm nền diode hữu cơ để tạo ra ánh sáng. Mỗi điểm ảnh trong màn hình OLED có thể tự phát sáng khi có dòng điện chạy qua, không cần đèn nền như các công nghệ LED hoặc LCD truyền thống. <strong>Màn hình OLED</strong> không chỉ làm tăng độ sáng, cho phép mỗi điểm ảnh trên màn hình hoạt động độc lập và cải thiện khả năng hiển thị sắc đen và độ tương phản mà còn giảm đáng kể độ dày của màn hình.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-man-hinh-gaming-oled-4_e8473198e18340159a248c73b868a1e0_1024x1024.jpg\" alt=\"GEARVN - Màn hình OLED là gì?\"></p><h2><strong>Ưu và nhược điểm của màn hình OLED</strong></h2><p><strong>Ưu điểm:</strong></p><p><strong>Độ tương phản cao: </strong>Màn hình OLED có khả năng hiển thị màu đen chuẩn và có độ sâu hơn, vì mỗi điểm ảnh có thể tắt đèn khi cần, tạo ra độ tương phản cao và tiết kiệm năng lượng đáng kể.</p><p><strong>Màu sắc sống động: </strong>Màn hình OLED tạo ra màu sắc sống động và chân thực, vì nó có khả năng tái tạo màu rất tốt.</p><p><strong>Độ mỏng và linh hoạt: </strong>Cấu trúc mỏng của OLED cho phép tạo ra màn hình mỏng và linh hoạt, thích hợp cho nhiều ứng dụng và thiết bị.</p><p><strong>Độ phản ứng nhanh: </strong>Màn hình OLED có thời gian phản ứng nhanh, giảm hiện tượng mờ khi chuyển động.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-man-hinh-gaming-oled-5_19f523807b4142f3b086b8d5863ef56f_1024x1024.jpg\" alt=\"GEARVN - Ưu và nhược điểm của màn hình OLED\"></p><p><strong>Nhược điểm:</strong></p><p><strong>Suy giảm tuổi thọ: </strong>Các điểm ảnh trên màn hình OLED có thể suy giảm độ sáng và tuổi thọ theo thời gian, đặc biệt ở các điểm ảnh sáng.</p><p><strong>Giá thành cao: </strong>Quy trình màn hình OLED tương đối đắt đỏ nên giá thành của màn hình OLED cũng vì thế mà cao hơn so với nhiều tấm nền màn hình khác.</p><p><strong>Bị đốm sáng: </strong>Có nguy cơ hình thành đốm cháy (burn-in) khi một hình ảnh được hiển thị liên tục trên màn hình, dẫn đến việc một số khu vực trên màn hình bị đốm sáng.</p><h2><strong>So sánh màn hình OLED và LCD</strong></h2><figure class=\"table\"><table><tbody><tr><td><i><strong>Tiêu chí</strong></i></td><td><i><strong>Màn hình OLED</strong></i></td><td><i><strong>Màn hình LCD</strong></i></td></tr><tr><td><strong>Nguyên lý hoạt động</strong></td><td>Sử dụng các hợp chất hữu cơ phát sáng khi có điện áp. Mỗi điểm ảnh có thể tự phát sáng và tắt đèn khi cần.</td><td>Sử dụng tinh thể lỏng để kiểm soát ánh sáng từ nguồn nền chiếu, và đèn LED ở phía sau <a href=\"https://gearvn.com/pages/man-hinh\">màn hình máy tính</a>.</td></tr><tr><td><strong>Độ tương phản</strong></td><td>Có độ tương phản vô cùng cao, vì mỗi điểm ảnh có thể đạt màu đen chuẩn. Do đó sắc đen được tái tạo có độ sâu và cuốn hút hơn.</td><td>Độ tương phản thấp hơn vì khó có thể đạt được màu đen hoàn toàn.</td></tr><tr><td><strong>Cấu trúc thiết kế</strong></td><td>Cấu trúc màn hình mỏng và linh hoạt, cho phép tạo ra các màn hình cong và linh hoạt.</td><td>Thường có kích thước lớn hơn và không linh hoạt như OLED.</td></tr><tr><td><strong>Góc nhìn màn hình</strong></td><td>Góc nhìn rộng, giữ nguyên chất lượng hình ảnh từ nhiều góc độ.</td><td>Chất lượng hình ảnh không đảm bảo từ nhiều góc nhìn khác nhau.</td></tr><tr><td><strong>Thời gian phản hồi</strong></td><td>Thời gian phản ứng nhanh, giảm tình trạng nhòe khi chuyển động.</td><td>Phụ thuộc vào từng model màn hình và công nghệ đi kèm trên màn hình.</td></tr><tr><td><strong>Tuổi thọ</strong></td><td>Tuổi thọ trung bình khoảng từ 20,000 giờ tới 50,000 giờ</td><td>Khoảng 50,000 giờ</td></tr><tr><td><strong>Năng lượng tiêu thụ</strong></td><td>Tiêu thụ ít năng lượng khi hiển thị màu đen.</td><td>Tiêu thụ năng lượng không đổi không phụ thuộc vào nội dung hiển thị.</td></tr></tbody></table></figure><h2><strong>Game thủ có nên nâng cấp màn hình gaming OLED?</strong></h2><p>Việc nâng cấp màn hình OLED cho <a href=\"https://gearvn.com/collections/man-hinh-tu-5-den-10-trieu\">màn hình gaming</a> có thể phụ thuộc vào một số yếu tố cụ thể và sở thích cá nhân của người chơi. Nếu bạn là game thủ đòi hỏi hình ảnh hiển thị chất lượng cao, màu sắc sặc sỡ đẹp mắt thì màn hình OLED sẽ không khiến bạn thất vọng. Hơn nữa, màn hình OLED tiêu tốn ít năng lượng hơn khi phải tái tạo sắc đen trên màn hình.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-man-hinh-gaming-oled-3_7ce3470192124e02bea0b6acf6206a9b_1024x1024.jpg\" alt=\"GEARVN - Game thủ có nên nâng cấp màn hình gaming OLED?\"></p><p>Ngoài ra màn hình OLED còn sở hữu một vài đặc điểm nổi bật khác, phải kể đến như:</p><p><strong>Độ tương phản màu sắc cao: </strong>Màn hình OLED cung cấp độ tương phản vô cùng cao, giúp hiển thị các màu sắc sắc nét và đậm đặc, đặc biệt là màu đen thực sự.</p><p><strong>Góc nhìn màn hình rộng: </strong>Góc nhìn rộng của màn hình OLED giúp duy trì chất lượng hình ảnh từ nhiều góc độ, điều này cực kỳ quan trọng với game thủ khi bạn có thể bao trọn mọi góc nhìn, nắm bắt mọi chi tiết trên khung hình.</p><p><strong>Thời gian phản ứng nhanh: </strong>Màn hình OLED có thời gian phản ứng nhanh, giảm hiện tượng nhòe khi chuyển động trong các trò chơi nhanh.</p><p><strong>Thiết kế mỏng, tinh tế và linh hoạt:</strong> Màn hình OLED cũng có thiết kế mỏng và linh hoạt và game thủ có thể tận dụng điểm mạnh này để có được trải nghiệm chơi game độc đáo.</p><h2><strong>Màn hình gaming OLED bạn không nên bỏ qua</strong></h2><h3><strong>Màn hình LG 45GR95QE-B UltraGear 45\" OLED 2K 240Hz G-Sync</strong></h3><p><a href=\"https://gearvn.com/products/man-hinh-lg-45gr95qe-b-ultragear-45-oled-2k-240hz-g-sync\"><picture><source srcset=\"https://product.hstatic.net/200000722513/product/45gr95qe-b_1_8d9662e833d5422fb825997e39686e92.jpg\" media=\"(max-width: 767px)\"><img src=\"https://product.hstatic.net/200000722513/product/45gr95qe-b_1_8d9662e833d5422fb825997e39686e92.jpg\" alt=\"Màn hình LG 45GR95QE-B UltraGear 45\"></picture></a></p><p><a href=\"https://gearvn.com/products/man-hinh-lg-45gr95qe-b-ultragear-45-oled-2k-240hz-g-sync\"><strong>Màn hình LG 45GR95QE-B UltraGear 45\" OLED 2K 240Hz G-Sync</strong></a></p><p>41.290.000₫</p><p><strong>33.290.000₫</strong>-19%</p><p><strong>0.0</strong>(0 đánh giá)</p><p><a href=\"https://gearvn.com/products/man-hinh-lg-45gr95qe-b-ultragear-45-oled-2k-240hz-g-sync\">XEM CHI TIẾT</a></p><p><a href=\"https://gearvn.com/products/man-hinh-lg-45gr95qe-b-ultragear-45-oled-2k-240hz-g-sync\"><strong>Màn hình OLED LG 45GR95QE-B UltraGear</strong></a>, một trong những sản phẩm đặc biệt của LG, được thiết kế với sự cầu kỳ và hiện đại. Khả năng tái tạo màu sắc chân thực của màn hình này đạt đến 98.5% <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/dci-p3-la-gi\">DCI-P3</a> (CIE1976), làm nổi bật sự sống động của đồ họa và độ phân giải 2K cao cấp phục vụ nhu cầu chơi game. Với tỷ lệ 21:9 mới nhất, màn hình siêu rộng LG 45GR95QE-B UltraGear không bị hạn chế về chiều rộng, mang đến trải nghiệm tuyệt vời cho người dùng.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-man-hinh-gaming-oled-7_b523715e9bc34722a4bac57a7b86e446_1024x1024.jpg\" alt=\"GEARVN - Màn hình LG 45GR95QE-B UltraGear 45\"></p><p>Tối ưu với tần số quét <a href=\"https://gearvn.com/collections/man-hinh-240hz\">240Hz</a> và thời gian phản hồi 0.03ms GtG, màn hình cong này hướng đến trải nghiệm chơi game tối ưu. Khả năng tương thích với Nvidia G-sync và AMD FreeSync, cùng công nghệ chống xé màn hình, lỗi giật hình, và chống lóa, tạo ra hiệu ứng hình ảnh trôi chảy, mượt mà hơn khi chơi game.</p><p>Thiết kế không chỉ bắt mắt với hệ thống đèn chiếu sáng Hexagon và viền màn hình siêu mỏng tựa như không, mà còn linh hoạt với chân đế có thể điều chỉnh độ nghiêng, độ cao. Điểm cong màn hình 800R chuẩn giúp mọi chi tiết hiển thị trong tầm nhìn, giúp bạn thật sự đắm chìm vào thế giới game.</p><h3><strong>Màn hình LG 27GR95QE-B UltraGear 27\" OLED 2K 240Hz G-Sync</strong></h3><p><a href=\"https://gearvn.com/products/man-hinh-lg-27gr95qe-b-ultragear-27-oled-2k-240hz-g-sync\"><picture><source srcset=\"https://product.hstatic.net/200000722513/product/27gr95qe-b_1_e3d8986ff7594ce68e0986210b024396.jpg\" media=\"(max-width: 767px)\"><img src=\"https://product.hstatic.net/200000722513/product/27gr95qe-b_1_e3d8986ff7594ce68e0986210b024396.jpg\" alt=\"Màn hình LG 27GR95QE-B UltraGear 27\"></picture></a></p><p><a href=\"https://gearvn.com/products/man-hinh-lg-27gr95qe-b-ultragear-27-oled-2k-240hz-g-sync\"><strong>Màn hình LG 27GR95QE-B UltraGear 27\" OLED 2K 240Hz G-Sync</strong></a></p><p>24.490.000₫</p><p><strong>16.990.000₫</strong>-31%</p><p><strong>0.0</strong>(0 đánh giá)</p><p><a href=\"https://gearvn.com/products/man-hinh-lg-27gr95qe-b-ultragear-27-oled-2k-240hz-g-sync\">XEM CHI TIẾT</a></p><p>Nếu bạn ưa chuộng một mô hình nhỏ gọn và tiêu chuẩn hơn để sử dụng dễ dàng hoặc cài đặt đa màn hình, <a href=\"https://gearvn.com/products/man-hinh-lg-27gr95qe-b-ultragear-27-oled-2k-240hz-g-sync\"><strong>màn hình LG 27GR95QE-B UltraGear OLED</strong></a> sẽ là lựa chọn không thể bỏ qua. <a href=\"https://gearvn.com/collections/monitor-lg\">Màn hình LG</a> luôn gây ấn tượng với thiết kế hiện đại và tinh tế, LG 27GR95QE-B UltraGear cũng không ngoại lệ. Không những thế, màn hình gaming này còn sở hữu khả năng tái tạo màu sắc chân thực lên đến 98.5% DCI-P3 (CIE 1976) và độ phân giải 2K cao cấp, là lựa chọn lý tưởng cho game thủ. Tỷ lệ màn hình tiêu chuẩn 16:9 đáp ứng mọi nhu cầu đồ họa trên màn hình kết hợp với tần số quét 240Hz, thời gian phản hồi 0.03ms GtG và công nghệ đồng bộ hóa thích ứng hứa hẹn mang đến trải nghiệm chơi game tuyệt vời.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-man-hinh-gaming-oled-8_42378384709042738a46416eab4a3733_1024x1024.jpg\" alt=\"GEARVN - Màn hình LG 27GR95QE-B UltraGear 27\"></p><p>Tổng kết lại, trên đây là những thông tin bạn cần biết về màn hình OLED và những lưu ý nếu bạn muốn nâng cấp <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/man-hinh-gaming-oled\">màn hình gaming OLED</a>. Màn hình OLED hiện nay đang được xem là tiêu chuẩn màn hình mới do mang đến chất lượng hình ảnh đẹp mắt cho người dùng. Hy vọng bài viết có thể giúp ích cho bạn. Hẹn gặp lại bạn trong những bài viết sau tại <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/\"><strong>GEARVN - Blog Thủ Thuật Giải Đáp</strong></a>.</p>', 1, 2, '2023-12-05 19:04:27', '2023-12-15 19:04:44'),
(6, 'Apple One là gì? Có nên sử dụng Apple One?', 'news/ukkixfcdgpym01qbrgrz', '<p><i><strong>Apple One, một gói dịch vụ đa dạng của Apple, đã thu hút sự chú ý của người dùng với hứa hẹn mang đến sự tiện ích và tiết kiệm chi phí. Nhưng, liệu đây có phải là sự đáp án hoàn hảo cho nhu cầu giải trí và công việc số của bạn hay không? Hãy cùng GEARVN khám phá xem Apple One là gì và liệu có nên sử dụng nó hay không ngay nhé!</strong></i></p><h2><strong>Apple One là gì?</strong></h2><p>\"Apple One\" là một dịch vụ đa dạng của <a href=\"https://gearvn.com/collections/macbook\">Apple</a>, cho phép người dùng đăng ký một loạt các dịch vụ của Apple với một giá hợp lý hơn so với việc mua các dịch vụ này một cách độc lập. Apple One được giới thiệu vào tháng 9 năm 2020. Gói dịch vụ này bao gồm nhiều dịch vụ khác nhau, chẳng hạn như Apple Music, Apple TV+, Apple Arcade, Apple News+, iCloud, và Apple Fitness+.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-apple-one-la-gi-co-nen-su-dung-apple-one-8_7e6b15cc7277443c9ce528fd7d485026_1024x1024.png\" alt=\"GEARVN - Apple One là gì?\"></p><p>Bằng cách đăng ký Apple One, người dùng có thể tiết kiệm chi phí so với việc thanh toán cho từng dịch vụ một cách riêng lẻ. Apple One có một số gói dịch vụ khác nhau để phù hợp với nhu cầu và sở thích của người dùng khác nhau.</p><h2><strong>Apple One cung cấp dịch vụ gì?&nbsp;</strong></h2><p>Apple One cung cấp nhiều dịch vụ khác nhau dưới dạng một gói duy nhất. Các dịch vụ chính bao gồm:</p><p><strong>Apple Music:</strong> Dịch vụ âm nhạc trực tuyến, cho phép người dùng nghe nhạc từ một thư viện lớn các bài hát và album.</p><p><strong>Apple TV+:</strong> Dịch vụ phát sóng video của Apple, cung cấp nhiều chương trình, phim truyện và nội dung giải trí chất lượng cao.</p><p><strong>Apple Arcade: </strong>Nền tảng chơi game đám mây của Apple, nơi người dùng có thể trải nghiệm nhiều trò chơi đa dạng trên nhiều thiết bị khác nhau.</p><p><strong>Apple News+:</strong> Dịch vụ tin tức có phí, cung cấp truy cập đến nhiều tạp chí và báo chí nổi tiếng.</p><p><strong>iCloud:</strong> Dịch vụ lưu trữ đám mây của Apple, giúp người dùng lưu trữ và đồng bộ hóa dữ liệu trên các thiết bị của họ.</p><p><strong>Apple Fitness+:</strong> Dịch vụ tập luyện và theo dõi sức khỏe cá nhân, cung cấp các lớp tập luyện và nội dung tập luyện chất lượng cao.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-apple-one-la-gi-co-nen-su-dung-apple-one-2_71c648ff444a4a708d2b9373f15332d1_1024x1024.png\" alt=\"GEARVN - Apple One cung cấp dịch vụ gì?\"></p><p><i><strong>&gt;&gt;&gt; Xem thêm:&nbsp;</strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/cach-doi-ten-airpod\"><i><strong>Bạn đã biết cách đổi tên Airpod và tùy chỉnh cài đặt Airpod chưa?</strong></i></a><i><strong> &lt;&lt;&lt;</strong></i></p><p>Apple One có các gói khác nhau, nhưng mỗi gói đều kết hợp một số dịch vụ trên để mang lại giá trị tốt nhất cho người dùng.</p><h2><strong>Những gói dịch vụ của Apple One&nbsp;</strong></h2><p>Khi Apple One được giới thiệu, Apple cung cấp ba gói dịch vụ khác nhau với mức giá và tính năng khác nhau. Các gói này bao gồm:</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-apple-one-la-gi-co-nen-su-dung-apple-one-4_86687a203bca4529af28d5ed628236bb_1024x1024.jpg\" alt=\"GEARVN - Những gói dịch vụ của Apple One\"></p><p><i><strong>&gt;&gt;&gt; Xem thêm:&nbsp;</strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/bi-quyet-dang-nhap-icloud-tren-may-tinh-an-toan-hieu-qua-nhat\"><i><strong>Bí quyết đăng nhập iCloud trên máy tính an toàn, hiệu quả nhất</strong></i></a><i><strong> &lt;&lt;&lt;</strong></i></p><figure class=\"table\"><table><tbody><tr><td>&nbsp;</td><td><strong>Individual</strong></td><td><strong>Family</strong></td><td><strong>Premier</strong></td></tr><tr><td><strong>Giá</strong></td><td>$14.95/month<br>239.000đ/tháng</td><td><p>$19.95/month<br>279.000đ/tháng</p><ul><li>Chia sẻ tối đa 6 thành viên trong gia đình thông qua Family Sharing.</li></ul></td><td><p>$29.95/month<br>~ 688.000đ/tháng</p><ul><li>Chia sẻ tối đa 6 thành viên trong gia đình thông qua Family Sharing.</li></ul><p><i>*Hiện tại Việt Nam chưa được hỗ trợ gói Apple One cao cấp.</i></p></td></tr><tr><td><strong>Dịch vụ</strong></td><td><p>Apple Music</p><p>Apple TV+</p><p>Apple Arcade</p><p>iCloud (lưu trữ 50 GB)</p></td><td><p>Tất cả các dịch vụ trong gói Individual</p><p>iCloud (lưu trữ 200GB)</p></td><td><p>Tất cả các dịch vụ trong gói Family</p><p>Apple News+</p><p>Apple Fitness+</p><p>iCloud (lưu trữ 2TB)</p></td></tr></tbody></table></figure><h2><strong>Có nên sử dụng Apple One hay không?&nbsp;</strong></h2><p>Quyết định có nên sử dụng Apple One hay không phụ thuộc vào nhu cầu cá nhân của bạn và liệu các dịch vụ được bao gồm trong gói có phải là những gì bạn thường xuyên sử dụng hay không. Dưới đây là một số điểm cần xem xét khi đưa ra quyết định:</p><p><strong>Tiết kiệm chi phí: </strong>Nếu bạn đã sử dụng hoặc có ý định sử dụng nhiều dịch vụ của Apple, việc đăng ký Apple One có thể là một cách tiết kiệm chi phí so với việc mua các dịch vụ này một cách độc lập.</p><p><strong>Sử dụng thường xuyên: </strong>Đảm bảo rằng bạn thường xuyên sử dụng các dịch vụ được bao gồm trong gói. Nếu một số dịch vụ không phải là một phần quan trọng của hệ sinh thái của bạn, việc đăng ký gói có thể không đem lại giá trị lớn.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-apple-one-la-gi-co-nen-su-dung-apple-one-6_4b50f2ff2d234d448f1c049045ab3e4a_1024x1024.jpg\" alt=\"GEARVN - Có nên sử dụng Apple One hay không?\"></p><p><strong>Phù hợp với gia đình: </strong>Nếu bạn có gia đình và mọi người trong gia đình sử dụng các dịch vụ của Apple, gói Family hoặc Premier có thể là lựa chọn tốt để chia sẻ chi phí và dịch vụ.</p><p><strong>Nhu cầu lưu trữ:</strong> Lưu ý dung lượng lưu trữ iCloud đi kèm với gói bạn chọn. Nếu bạn cần nhiều không gian lưu trữ, việc lựa chọn gói có dung lượng lớn hơn là quan trọng.</p><p><strong>Tính linh hoạt:</strong> Nếu bạn thích linh hoạt và muốn tùy chọn dịch vụ mà bạn sử dụng, việc mua từng dịch vụ một có thể là lựa chọn phù hợp hơn.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-apple-one-la-gi-co-nen-su-dung-apple-one-7_6ab932e479dd4c72b632b5188c2b62f2_1024x1024.png\" alt=\"GEARVN - Có nên sử dụng Apple One hay không?\"></p><p>Trước quyết định đăng ký <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/apple-one-la-gi-co-nen-su-dung-apple-one\">Apple One</a>, hãy cân nhắc kỹ lưỡng với nhu cầu và sở thích cá nhân của bạn. Nếu bạn đang tìm kiếm sự linh hoạt và tiết kiệm chi phí trong hệ sinh thái Apple, Apple One có thể là một lựa chọn hấp dẫn. Tuy nhiên, quan trọng nhất là đảm bảo rằng những dịch vụ được bao gồm thực sự đáp ứng đúng với mong đợi và nhu cầu của bạn. Theo dõi <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap\"><i><strong>GEARVN - Thủ Thuật Giải Đáp</strong></i></a> để xem nhiều bài viết hơn nhé!</p>', 1, 2, '2023-12-05 19:05:44', '2023-12-05 19:05:44');
INSERT INTO `news` (`id`, `title`, `image`, `content`, `status`, `users_id`, `created_at`, `updated_at`) VALUES
(7, 'Top 10 phần mềm thiết kế đồ họa chuyên nghiệp', 'news/pci8ndyslnokjvxi67ps', '<p><i><strong>Ngày nay, nhu cầu về thiết kế đồ họa trở nên quan trọng trong nhiều lĩnh vực, từ sáng tạo nghệ thuật đến công nghiệp và kỹ thuật. Để đáp ứng xu hướng này, việc sử dụng các phần mềm thiết kế đồ họa chuyên nghiệp là không thể phủ nhận. Dưới đây là danh sách \"Top 10 phần mềm thiết kế đồ họa chuyên nghiệp,\" nơi mà sự sáng tạo và chất lượng hình ảnh đạt đến đỉnh cao. Cùng GEARVN tìm hiểu những phần mềm chuyên nghiệp dân thiết kế, sáng tạo không thể bỏ qua này nhé!</strong></i></p><h2><strong>Adobe Photoshop&nbsp;</strong></h2><p><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/photoshop-phan-mem-thiet-ke-do-hoa-hang-dau-hien-nay\">Adobe Photoshop</a> là một phần mềm hàng đầu trong lĩnh vực chỉnh sửa ảnh và đồ họa, đặc biệt được thiết kế để mang lại trải nghiệm sáng tạo tối ưu cho người dùng. Được phát triển bởi Adobe Systems, Photoshop đã trở thành một tiêu chuẩn ngành trong việc xử lý và tạo ra hình ảnh chất lượng cao.</p><p>Adobe Photoshop chủ yếu được sử dụng để chỉnh sửa, cải thiện và tối ưu hóa hình ảnh số. Công cụ này cung cấp một loạt các tính năng mạnh mẽ bao gồm điều chỉnh màu sắc, độ tương phản, làm mịn da, và nhiều hiệu ứng đặc biệt khác. Nó không chỉ dành cho ảnh tĩnh mà còn hỗ trợ chỉnh sửa video và tạo hiệu ứng chuyển động.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-2_28a6464d33e84894a5f86f783d32bb51_1024x1024.jpg\" alt=\"GEARVN - Adobe Photoshop&nbsp;phần mềm thiết kế độ họa chuyên nghiệp\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>Layers và Masking: </strong>Photoshop cho phép người dùng làm việc với các lớp (layers), giúp tổ chức và điều chỉnh từng phần của hình ảnh một cách riêng biệt. Công cụ Masking giúp tạo ra hiệu ứng và sự chuyển động mượt mà.</p><p><strong>Tích Hợp 3D: </strong>Cung cấp khả năng làm việc với đối tượng 3D, làm phong phú thêm trải nghiệm sáng tạo.</p><p><strong>Adobe Creative Cloud: </strong>Photoshop tích hợp tốt với bộ công cụ đồ họa và thiết kế khác trong Adobe Creative Cloud như Illustrator, InDesign, giúp người dùng chuyển đổi dễ dàng giữa các ứng dụng.</p><h2><strong>Adobe Illustrator</strong></h2><p>Adobe Illustrator là một phần mềm thiết kế vector hàng đầu, được phát triển bởi Adobe Systems. Với sức mạnh và linh hoạt của nó, Illustrator đã trở thành công cụ không thể thiếu cho nhiều người làm việc trong lĩnh vực thiết kế đồ họa, đặc biệt là trong việc tạo và chỉnh sửa hình ảnh vector.</p><p>Illustrator chủ yếu tập trung vào việc tạo và chỉnh sửa đồ họa vector. Bạn có thể tạo ra các hình ảnh chất lượng cao mà không làm giảm độ phân giải, điều này làm cho nó trở thành công cụ ưa thích trong việc tạo biểu đồ, biểu đồ tuyến tính, logo, và các hình ảnh có đường nét sắc sảo.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-3_4c885bc1c20440c283e41911685c251d_1024x1024.png\" alt=\"GEARVN - Adobe Illustrator&nbsp;phần mềm thiết kế độ họa chuyên nghiệp\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>Integrations with Creative Cloud: </strong>Illustrator tích hợp mượt mà với các ứng dụng khác trong bộ Adobe Creative Cloud, như Photoshop và InDesign, giúp tối ưu hóa quy trình làm việc.</p><p><strong>Mobile Integration:</strong> Adobe đã phát triển ứng dụng Illustrator trên di động, giúp bạn có thể làm việc trên các thiết bị như iPad và iPhone.</p><p><strong>Performance Improvements: </strong>Phiên bản mới của Illustrator thường xuyên cập nhật với các cải tiến về hiệu suất và tính năng mới để đáp ứng nhu cầu ngày càng cao của người dùng.</p><p><i><strong>&gt;&gt;&gt; Xem thêm:&nbsp;</strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/top-phan-mem-lam-video-tren-may-tinh\"><i><strong>Top 4 phần mềm làm video trên máy tính bạn không nên bỏ qua</strong></i></a><i><strong> &lt;&lt;&lt;</strong></i></p><h2><strong>Phần mềm thiết kế đồ họa Adobe InDesign</strong></h2><p>Adobe InDesign là một ứng dụng chuyên nghiệp trong lĩnh vực thiết kế bản in và đa phương tiện, phát triển bởi Adobe Systems. Nó là công cụ không thể thiếu cho những người làm việc trong ngành xuất bản, đặc biệt là trong việc tạo và biên tập các tài liệu như sách, tờ rơi, tạp chí, và các sản phẩm truyền thông khác.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-4_24685702162446a19f13cd1878d876f8_1024x1024.png\" alt=\"GEARVN - Phần mềm thiết kế đồ họa Adobe InDesign\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>Integration with Adobe Creative Cloud:</strong> InDesign tích hợp tốt với các ứng dụng khác trong bộ Adobe Creative Cloud như Photoshop và Illustrator, giúp tối ưu hóa quy trình làm việc.</p><p><strong>Interactive Documents:</strong> Bạn có thể tạo ra tài liệu tương tác, bao gồm cả các yếu tố như hyperlinks và nút điều hướng.</p><p><strong>Preflight and Packaging:</strong> Cung cấp tính năng Preflight để kiểm tra lỗi trước khi in ấn, và Packaging giúp tổ chức tất cả các tệp cần thiết cho dự án để chia sẻ hoặc in ấn.</p><h2><strong>CorelDraw - thiết kế hình ảnh chuyên nghiệp</strong></h2><p>CorelDRAW là một phần mềm thiết kế đồ họa vector và chỉnh sửa ảnh, phát triển bởi Corel Corporation. Đây là một ứng dụng mạnh mẽ được sử dụng rộng rãi trong lĩnh vực thiết kế đồ họa, từ tạo logo, biểu ngữ đến bảng quảng cáo và các vật liệu tiếp thị khác.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-5_38c4b4b757bb457fa4353c97e5f667ab_1024x1024.jpg\" alt=\"GEARVN - Phần mềm CorelDraw\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>CorelDRAW Graphics Suite:</strong> Bộ sản phẩm này không chỉ bao gồm CorelDRAW mà còn có các ứng dụng khác như Corel PHOTO-PAINT, Corel Font Manager, và Corel CONNECT, giúp tối ưu hóa quy trình làm việc.</p><p><strong>Compatibility and Export Options: </strong>CorelDRAW hỗ trợ nhiều định dạng file, giúp người dùng chia sẻ và làm việc với các ứng dụng khác một cách thuận tiện.</p><p><strong>Community and Learning Resources: </strong>Cộng đồng người dùng CorelDRAW lớn mạnh, và Corel cung cấp nhiều tài nguyên học tập và hỗ trợ trực tuyến cho người sử dụng.</p><h2><strong>Sketchup - Thiết kế 3D</strong></h2><p>SketchUp là một phần mềm mô hình 3D được phát triển bởi Trimble Inc. Nó được sử dụng rộng rãi trong các lĩnh vực như kiến trúc, thiết kế nội thất, xây dựng, và nhiều lĩnh vực sáng tạo khác. SketchUp nổi tiếng với giao diện thân thiện, dễ sử dụng và khả năng tạo ra các mô hình 3D nhanh chóng.</p><p>SketchUp dành cho mọi người, từ những người mới bắt đầu đến các chuyên gia trong lĩnh vực thiết kế không gian. Điều này bởi vì giao diện đơn giản và tính năng mô hình hóa dễ sử dụng của nó làm cho nó trở thành một công cụ hữu ích cho người không có kinh nghiệm về thiết kế 3D.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-6_7095547383a4464dbdd32a3043acf799_1024x1024.png\" alt=\"GEARVN - Thiết kế 3D Sketchup\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>Giao Diện Dễ Sử Dụng: </strong>SketchUp có giao diện thân thiện và dễ sử dụng, giúp người dùng tập trung vào quá trình sáng tạo thay vì phải đối mặt với quá trình học phức tạp.</p><p><strong>Plugin và Extensions: </strong>Cộng đồng người sử dụng SketchUp đã phát triển nhiều plugin và extensions để mở rộng tính năng của phần mềm, làm cho nó phù hợp với nhiều mục đích sử dụng.</p><p><strong>Community Support:</strong> SketchUp có một cộng đồng sôi động, nơi người dùng có thể chia sẻ kiến thức, mô hình và hỗ trợ lẫn nhau.</p><h2><strong>Blender - Phần mềm thiết kế đồ họa 3D</strong></h2><p>Blender là một phần mềm mô hình hóa 3D và làm phim nguồn mở, được phát triển bởi Blender Foundation. Nó là một công cụ đa nhiệm mạnh mẽ, hỗ trợ nhiều lĩnh vực sáng tạo như thiết kế đồ họa, mô hình 3D, animation, rendering, compositing, và làm phim.</p><p>Blender cung cấp các công cụ mô hình hóa mạnh mẽ cho việc tạo ra các đối tượng 3D phức tạp. Điều này bao gồm cả mô hình hóa đường, hình học, và mô hình hóa bề mặt, hỗ trợ animation và rigging, cho phép tạo các cảnh động phức tạp và kiểm soát các đối tượng 3D trong không gian.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-7_f0ed61a40eba4283bb3d58231060af15_1024x1024.png\" alt=\"GEARVN - Thiết kế 3D Blender\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>Open Source:</strong> Blender là phần mềm nguồn mở, điều này có nghĩa là nó miễn phí và có sẵn cho cộng đồng để sửa lỗi và phát triển.</p><p><strong>Community Support:</strong> Có một cộng đồng lớn và tích cực xung quanh Blender, cung cấp tài nguyên học tập, video hướng dẫn, và sự giúp đỡ.</p><p><strong>Cross-Platform: </strong>Blender hỗ trợ nhiều hệ điều hành như Windows, macOS và Linux.</p><h2><strong>GIMP (GNU Image Manipulation Program)</strong></h2><p>GIMP (GNU Image Manipulation Program) là một phần mềm chỉnh sửa ảnh nguồn mở, được phát triển bởi dự án GNU. Nó là một công cụ mạnh mẽ và linh hoạt cho việc chỉnh sửa và xử lý hình ảnh, giúp người dùng tạo ra các tác phẩm nghệ thuật số chất lượng cao mà không phải trả phí chi phí cấp phép.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-8_374d134c7e9f48b4b6726c6fea95e4c6_1024x1024.png\" alt=\"GEARVN - Phần mềm thiết kế đồ họa GIMP (GNU Image Manipulation Program)\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>Open Source:</strong> GIMP là một phần mềm nguồn mở, điều này có nghĩa là nó miễn phí và có sẵn cho cộng đồng để sửa lỗi và phát triển.</p><p><strong>Cross-Platform: </strong>GIMP hỗ trợ nhiều hệ điều hành như Windows, macOS, và Linux.</p><p><strong>Community Support: </strong>Có một cộng đồng người dùng đông đảo và tích cực, cung cấp tài nguyên, hướng dẫn, và hỗ trợ cho người dùng GIMP.</p><h2><strong>Autocad&nbsp;</strong></h2><p>AutoCAD là một phần mềm thiết kế và đồ họa kỹ thuật được phát triển bởi Autodesk. Nó là một trong những ứng dụng phổ biến nhất trong lĩnh vực thiết kế kỹ thuật, kiến trúc, và xây dựng.</p><p>AutoCAD cung cấp một loạt các công cụ vẽ và chỉnh sửa để tạo ra các bản vẽ kỹ thuật và bản vẽ 2D chi tiết. Ngoài ra, AutoCAD hỗ trợ mô hình hóa 3D, cho phép người dùng tạo ra các mô hình 3D phức tạp của các đối tượng kỹ thuật. Có các công cụ để thêm chú thích và kích thước vào bản vẽ, giúp mô tả chi tiết và kích thước của các thành phần kỹ thuật. Hỗ trợ tính năng collaboration, cho phép nhiều người dùng làm việc trên cùng một dự án và chia sẻ thông tin một cách dễ dàng. Nó cho phép người dùng tùy chỉnh các menu, công cụ, và lệnh để đáp ứng nhu cầu cụ thể của họ.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-9_30e26e8a0c0a4172ba8de1ddaf48fd17_1024x1024.png\" alt=\"GEARVN - Phần mềm thiết kế đồ họa Autocad\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>Versatility:</strong> AutoCAD có thể được sử dụng cho nhiều mục đích, từ tạo bản vẽ chi tiết 2D đến mô hình hóa 3D phức tạp.</p><p><strong>Large User Community:</strong> Với một cộng đồng người dùng lớn, người dùng có thể dễ dàng tìm thấy hỗ trợ, tài nguyên, và chia sẻ thông tin.</p><p><strong>Integration with Other Autodesk Products:</strong> AutoCAD tích hợp tốt với các sản phẩm khác của Autodesk, như Revit và Inventor, để tối ưu hóa quy trình làm việc.</p><h2><strong>3ds Max</strong></h2><p>Autodesk 3ds Max, thường được gọi là 3ds Max, là một phần mềm mô hình hóa, animation và render 3D phát triển bởi Autodesk. Nó được sử dụng rộng rãi trong ngành công nghiệp truyền thông và giải trí, bao gồm việc tạo ra đồ họa chuyển động, game, và hiệu ứng đặc biệt trong các sản phẩm đa phương tiện.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-10_1c048a0f5d17433da16033d9d36499f2_1024x1024.png\" alt=\"GEARVN - Phần mềm thiết kế đồ họa 3ds Max chuyên nghiệp\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>Versatile 3D Modeling: </strong>3ds Max cung cấp nhiều công cụ và kỹ thuật mô hình hóa 3D, từ poly-modeling đến spline-based modeling, giúp đáp ứng nhu cầu đa dạng của người dùng.</p><p><strong>Scripting và Customization: </strong>Cho phép người dùng tùy chỉnh và mở rộng chức năng của phần mềm thông qua scripting, giúp tối ưu hóa quy trình làm việc.</p><p><strong>Integration with Other Autodesk Products: </strong>3ds Max tích hợp tốt với các sản phẩm khác của Autodesk, như AutoCAD và Revit, để tối ưu hóa quy trình làm việc trong toàn bộ quá trình thiết kế và kỹ thuật.</p><p><i><strong>&gt;&gt;&gt; Xem thêm:&nbsp;</strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/cach-tai-canva-ve-may-tinh-laptop\"><i><strong>Canva là gì? Cách tải Canva về máy tính, điện thoại miễn ph</strong></i></a><i><strong>í &lt;&lt;&lt;</strong></i></p><h2><strong>Phần mềm thiết kế Revit&nbsp;</strong></h2><p>Autodesk Revit là một phần mềm thiết kế và xây dựng thông minh, được phát triển bởi Autodesk. Revit được thiết kế đặc biệt cho ngành kiến trúc, xây dựng, và quản lý dự án xây dựng, mang lại tính tích hợp cao và khả năng làm việc chung giữa các chuyên gia khác nhau trong quá trình phát triển dự án.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-11_180447f4393b4f579f52170c81a017ad_1024x1024.jpg\" alt=\"GEARVN - Phần mềm thiết kế Revit\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>Parametric Components: </strong>Có khả năng tạo và sử dụng các thành phần có thể thay đổi (parametric components), giúp linh hoạt trong quá trình thiết kế và thay đổi.</p><p><strong>Interoperability:</strong> Revit có khả năng tương thích với nhiều phần mềm khác, giúp tối ưu hóa quy trình làm việc và chia sẻ thông tin dự án.</p><p><strong>Cloud Collaboration:</strong> Autodesk cung cấp tính năng cloud collaboration giúp người dùng làm việc chung một cách linh hoạt, ngay cả khi ở xa nhau.</p><p>Những phần mềm thiết kế đồ họa chuyên nghiệp này không chỉ là những công cụ mạnh mẽ cho sự sáng tạo mà còn là nguồn động viên cho việc định hình và biến ý tưởng thành hiện thực trong thế giới số ngày nay. Dù bạn là một nghệ sĩ đồ họa, kiến trúc sư, hay chuyên gia xây dựng, danh sách này mang lại sự đa dạng và linh hoạt để đáp ứng mọi nhu cầu và thách thức của người sáng tạo. Theo dõi <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap\"><i><strong>GEARVN - Thủ Thuật Giải Đáp</strong></i></a> để xem thêm nhiều bài viết hay nhé!</p>', 1, 2, '2023-12-05 19:07:55', '2023-12-05 19:07:55'),
(8, 'Picture in Picture đã có mặt trên TikTok, thử ngay!', 'news/lrbrjbquhuu7jpkkpczh', '<p><i><strong>Mong muốn&nbsp;bấy lâu của chúng ta đã trở thành hiện thực khi TikTok được chính thức cho ra mắt tính năng Picture in Picture. Tức là cho phép bạn lướt video song song với nhiều tác vụ khác trên thiết bị di động mà không cần phải vuốt để chuyển video. Hãy cùng GEARVN tìm hiểu về tính năng hay ho này ngay sau đây nhé!</strong></i></p><h2><strong>Picture in Picture là gì?</strong></h2><p><strong>Picture in Picture </strong>(<strong>PiP</strong>) là tính năng cho phép một video hay hình ảnh nhỏ xuất hiện trên màn hình và chồng lên trên các ứng dụng khác hoặc trên nền <a href=\"https://gearvn.com/pages/man-hinh\">màn hình</a> chính. Điều này cho phép người dùng theo dõi một phần của nội dung multimedia trong khi tiếp tục làm việc trên các ứng dụng khác. Tính năng này thường được sử dụng trong các ứng dụng video, hội nghị trực tuyến, và các ứng dụng giải trí khác để cải thiện đồng thời hiệu suất làm việc và trải nghiệm giải trí.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-picture-in-picture-tren-tiktok-1_d698f4e40cb14aee96fb6825ad1c5fd3_1024x1024.jpg\" alt=\"GEARVN - Picture in Picture là gì?\"></p><p><i><strong>&gt;&gt;Xem thêm: </strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/huong-dan-su-dung-tinh-nang-picture-in-picture-tren-google-chrome\"><i><strong>Hướng dẫn sử dụng tính năng Picture in Picture trên Google Chrome</strong></i></a><i><strong>.</strong></i></p><p>Đây là một tính năng phổ biến trên nhiều nền tảng phát video ăn khách như Youtube hay Google Chrome. Cũng tương tự như nhiều nền tảng khác, bạn sẽ được cùng lúc xem video TikTok yêu thích và sử dụng nhiều ứng dụng khác cùng một lúc. Vậy làm sao để sử dụng tính năng hay ho này?</p><h2><strong>Cách sử dụng tính năng Picture in Picture trên TikTok</strong></h2><p><strong>Bước 1: </strong>Mở ứng dụng TikTok trên thiết bị của bạn &gt; nhấn giữ vào một vị trí bất kỳ trên màn hình cho đến khi xuất hiện menu tùy chỉnh.</p><p><strong>Bước 2:</strong> Lướt tùy chọn cho đến cuối tùy chọn &gt; chọn “<strong>Picture-in-Picture</strong>”.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-picture-in-picture-tren-tiktok-2_851939aca68a441f90990ce95976da54_1024x1024.jpg\" alt=\"GEARVN - Cách sử dụng tính năng Picture in Picture trên TikTok\"></p><p>Bước 3: Một thông báo sẽ hiển thị ngay sau đó &gt; nhấn chọn “OK”. Vậy là bạn đã có thể xem video TikTok Picture in Picture được rồi.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-picture-in-picture-tren-tiktok-3_2a03cbeec66d418080768c86135cb8bf_1024x1024.jpg\" alt=\"GEARVN - Cách sử dụng tính năng Picture in Picture trên TikTok\"></p><p>Trong trường hợp thiết bị của bạn chưa được phép hiển thị trên các ứng dụng khác, bạn cần phải cấp quyền này. Hệ thống sẽ tự động chuyển bạn đến màn hình cấp quyền. Bạn chỉ cần chọn TikTok và tìm mục \"<strong>Cho phép hiển thị trên các ứng dụng khác</strong>\" và bật công tắc để kích hoạt.&nbsp;</p><p><i><strong>&gt;&gt;Xem thêm: </strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/cach-xem-youtube-ngoai-man-hinh\"><i><strong>Cách xem youtube ngoài màn hình trên điện thoại, máy tính</strong></i></a><i><strong>.</strong></i></p><p>Khi bạn còn quay về \'<i>Màn hình chính</i>\' hoặc chuyển sang ứng dụng khác, video TikTok sẽ hiển thị dưới dạng một hình nhỏ ở góc trên bên phải màn hình như hình bên dưới. Nó cũng sẽ tự động chuyển sang video khác mà không cần bạn vuốt thủ công để chuyển video.</p><p>Để&nbsp;trở lại chế độ toàn màn hình, bạn chỉ cần nhấn vào biểu tượng như hình bên dưới là xong.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-picture-in-picture-tren-tiktok-4_0b3cd1e2764140e8b9fdf821d4bc5fce_1024x1024.jpg\" alt=\"GEARVN - Cách sử dụng tính năng Picture in Picture trên TikTok\"></p><p>Tổng kết lại, trên đây là những cách sử dụng tính năng <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/picture-in-picture-tren-tiktok\">Picture in Picture</a> trên TikTok. Tuy không phải một tính năng mới mẻ nhưng chắc chắn thứ bạn mong chờ bấy lâu nay sẽ nâng cao trải nghiệm sử dụng ứng dụng của bạn. Hy vọng bài viết có thể giúp ích cho bạn. Hẹn gặp lại bạn trong những bài viết sau tại <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/\"><strong>GEARVN - Blog Thủ Thuật &amp; Giải Đáp</strong></a>.</p>', 1, 2, '2023-12-05 19:08:38', '2023-12-05 19:08:38'),
(9, 'Livestream chuyên nghiệp cùng Streamlabs', 'news/xrnozgybh7plzzawutf5', '<p><i><strong>Livestream đã không còn là một khái niệm xa lạ với người dùng công nghệ. Thời gian gần đây, livestream đã và đang trở thành một trào lưu và đáp ứng nhiều mục đích sử dụng. Tuy nhiên việc livestream chuyên nghiệp hay livestream đa nền tảng thì chưa chắc ai cũng biết. Hôm nay hãy cùng GEARVN tìm hiểu cách livestream đa nền tảng và sang xịn mịn như streamer chuyên nghiệp trên Streamlabs&nbsp;nhé!</strong></i></p><h2><strong>Streamlabs là gì?</strong></h2><p><strong>Streamlabs </strong>là một nền tảng giúp người dùng tạo và quản lý nội dung video trực tuyến thu hút nhiều người dùng, đặc biệt là trong lĩnh vực livestream. Nền tảng này cung cấp nhiều công cụ và tính năng hỗ trợ người dùng tạo ra các buổi phát sóng chuyên nghiệp trên các nền tảng như Twitch, YouTube, Facebook, và nhiều nền tảng khác.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-12_9e9f1d61216f454ca1b3dacc75022d41_1024x1024.jpg\" alt=\"GEARVN - Streamlabs là gì?\"></p><p><i><strong>&gt;&gt;Xem thêm: </strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/huong-dan-a-z-cach-live-tren-tiktok\"><i><strong>Hướng dẫn A-Z cách live trên TikTok</strong></i></a><i><strong>.</strong></i></p><h2><strong>Các tính năng nổi bật của Streamlabs</strong></h2><p><strong>Streamlabs OBS (SLOBS):</strong> Một ứng dụng quay phim và phát sóng trực tuyến dựa trên mã nguồn mở OBS (Open Broadcaster Software) với thêm vào nhiều tính năng và giao diện người dùng thân thiện.</p><p><strong>Alerts và Overlays:</strong> Cung cấp các hiệu ứng và thông báo tự động để thông báo cho người xem về các sự kiện như quyên góp, đăng ký, hoặc lời nhắc từ khán giả.</p><p><strong>Widgets:</strong> Bao gồm các công cụ như chatbox, tạo đồng hồ đếm ngược, hiển thị danh sách quyên góp, và nhiều tính năng khác để tương tác với khán giả.</p><p><strong>Donate:</strong> Hỗ trợ việc quản lý thu nhập từ quyên góp của khán giả thông qua các tính năng tích hợp.</p><p><strong>Tích hợp với nhiều nền tảng phát sóng trực tiếp: </strong>Cho phép người dùng kết nối nhanh chóng với các nền tảng phát sóng phổ biến.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-11_a40905192567491097664e6b7a925c7d_1024x1024.jpg\" alt=\"GEARVN - Các tính năng nổi bật của Streamlabs\"></p><h2><strong>Hướng dẫn tải Streamlabs về máy tính</strong></h2><p>Để tải phần mềm về máy tính, bạn có thể thực hiện theo những bước sau:</p><p><strong>Bước 1: </strong>Tìm kiếm Streamlabs và tải ứng dụng về máy tính. Hoặc bạn có thể tải trực tiếp <a href=\"https://streamlabs.com/streamlabs-desktop/download?sdb=0\"><strong>TẠI ĐÂY</strong></a>.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-1_edb88b367d7341999ea6bc936c75649b_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn tải Streamlabs về máy tính\"></p><p><strong>Bước 2:</strong> Quá trình tải ứng dụng sẽ mất một ít thời gian. Sau khi đã tải ứng dụng, bạn hãy tiến hành cài đặt ứng dụng theo từng bước hướng dẫn trên máy tính.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-2_60d871929e424a898ea9b9cf301f02d2_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn tải Streamlabs về máy tính\"></p><h2><strong>Hướng dẫn sử dụng Streamlabs để livestream chuyên nghiệp</strong></h2><p><strong>Bước 1: </strong>Khi mở Streamlabs, bạn sẽ thấy hai tính năng “<strong>Livestream</strong>” và “<strong>Recording Only</strong>” &gt; chọn mục “<strong>Livestream</strong>” &gt; \"<strong>Continue</strong>\" để tiếp tục.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-3_1faaf4c1bbe04e699a140edd6599a7a4_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn sử dụng Streamlabs để livestream chuyên nghiệp\"></p><p><i><strong>&gt;&gt;Xem thêm: </strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/huong-dan-chi-tiet-cach-quay-man-hinh-may-tinh-don-gian-nhat\"><i><strong>Hướng dẫn chi tiết cách quay màn hình máy tính đơn giản nhất</strong></i></a><i><strong>.</strong></i></p><p><strong>Bước 2: </strong>Tiếp tục chọn nền tảng để livestream. Ví dụ nhấn chọn biểu tượng Facebook sử dụng Streamlabs livestream trên Facebook.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-4_2d2006ef9389418aa4b354c3cec1cdc4_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn sử dụng Streamlabs để livestream chuyên nghiệp\"></p><p><i><strong>&gt;&gt;Xem thêm: </strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/2fa-la-gi\"><i><strong>2FA là gì? Hướng dẫn cách sử dụng 2FA trên Facebook</strong></i></a><i><strong>.</strong></i></p><p><strong>Bước 3: </strong>Tiếp theo đăng nhập tài khoản Facebook bạn muốn livestream &gt; click chọn “<strong>Tiếp tục dưới tên…</strong>” để chính thức livestream trên tài khoản Facebook của mình.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-5_550e9f9e420f4700a008f5094460711f_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn sử dụng Streamlabs để livestream chuyên nghiệp\"></p><p><strong>Bước 4: </strong>Chỉnh sửa đối tượng người xem livestream trên Streamlabs &gt; nhấn chọn “<strong>Tiếp tục dưới tên…</strong>”</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-6_9ed2572e5f3842a2a620e694c5d03a78_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn sử dụng Streamlabs để livestream chuyên nghiệp\"></p><p><strong>Bước 5:</strong> Sau đó bạn sẽ được chuyển sang <a href=\"https://gearvn.com/pages/man-hinh\">màn hình</a> cài đặt <a href=\"https://gearvn.com/collections/microphone\">microphone</a> và <a href=\"https://gearvn.com/collections/webcam\">webcam</a> khi livestream trên Streamlabs &gt; nhấn “<strong>Continue</strong>” để tiếp tục.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-10_53d53de86bc44c0dae51f3da0a17e740_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn sử dụng Streamlabs để livestream chuyên nghiệp\"></p><p><strong>Bước 6:</strong> Tiếp đến là thay đổi “<strong>Theme</strong>” giao diện livestream &gt; nếu không nâng cấp tài khoản Ultra thì tất nhiên bạn chỉ được dùng những giao diện miễn phí thôi nhé. Hãy chọn theme phù hợp với bạn để bắt đầu chuyển sang những bước cài đặt tiếp theo.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-7_0fdf3199e9084f6485607dc912fc81f4_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn sử dụng Streamlabs để livestream chuyên nghiệp\"></p><p><strong>Bước 7: </strong>Streamlabs cung cấp cho bạn hai chức năng livestream miễn phí và có phí. Bạn cũng có thể chọn gói Ultra để sở hữu nhiều tính năng nâng cao hơn như không giới hạn theme, livestream trên nhiều nền tảng cùng một lúc,...giúp việc phát trực tiếp của bạn trở nên tiện lợi và dễ dàng hơn.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-8_ea36a58e55534606b11c4c562a069bba_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn sử dụng Streamlabs để livestream chuyên nghiệp\"></p><p><strong>Bước 8: </strong>Chọn chế độ livestream như hình bên dưới và nhấn chọn “<strong>Go Live</strong>” để bắt đầu buổi livestream.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-9_c82fbee0c3984d8e9a41b0e071fd4ce2_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn sử dụng Streamlabs để livestream chuyên nghiệp\"></p><p>Như vậy bạn đã thiết lập livestream cùng <a href=\"http://streamlabs/\">Streamlabs</a> một cách dễ dàng rồi. Chỉ bằng một vài thao tác đơn giản, bạn đã có thể sử dụng Streamlabs và livestream đa nền tảng một cách nhanh chóng rồi. Hy vọng bài viết có thể giúp ích cho bạn. Hẹn gặp lại bạn trong những bài viết sau tại <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/\"><strong>GEARVN - Blog Thủ Thuật Giải Đáp</strong></a>.</p>', 1, 2, '2023-12-05 19:09:21', '2023-12-05 19:09:21'),
(10, 'Review ASUS ROG Strix G16/G18: \"Quái vật\" của dòng laptop gaming RTX 40 Series hiện nay', 'news/jp0brbwiskv2ve7kyyld', '<p><i><strong>Là một trong những thương hiệu nổi tiếng trong dòng laptop gaming cao cấp, ASUS luôn trau chuốt trong từng sản phẩm của mình nhằm đem đến trải nghiệm sử dụng tốt nhất. Và trong năm nay, chúng ta đã được chào đón 2 “chiến binh” mới và vô cùng mạnh mẽ ASUS với series ROG Strix G16 và G18.</strong></i></p><h2><strong>Unbox ASUS ROG Strix G16/G18</strong></h2><p>Đặt ngay vào mắt người dùng là phần hộp được thiết kế đẹp mắt về mặt thẩm mỹ, giữ vững những “tha thu” đậm nét đã có trên sản phẩm thuộc series <a href=\"https://gearvn.com/collections/laptop-gaming-asus-rog-strix-g\">ROG Strix&nbsp;G</a> để tạo vẻ ngoài cuốn hút và mạnh mẽ. Ngoài ra, phần hộp của của ROG Strix G16/G18 được thiết kế dạng dọc mới, độc và lạ. Vì thế, bạn cũng nên lưu ý trong cách mở hộp khi muốn lấy sản phẩm ra.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-1_512edc0d761844fdb6e4500c54f893a4_1024x1024.jpg\" alt=\"Unbox ASUS ROG Strix G16/G18 - GEARVN\"></p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-2_be0ee6cf9658457daa5d91c2df96f40e_1024x1024.jpg\" alt=\"Unbox ASUS ROG Strix G16/G18 - GEARVN\"></p><h2><strong>Cấu hình của ASUS ROG Strix G16/G18</strong></h2><p>ASUS ROG Strix G16 và G18 ra mắt người dùng với danh xưng là những chiếc <a href=\"https://gearvn.com/pages/laptop-gaming\">laptop gaming</a> cao cấp hàng đầu hiện nay. Cho nên, ASUS đã trang bị cho “chiến binh” của mình những nguồn sức mạnh đỉnh cao nhất hiện tại của laptop. Chi tiết cấu hình của 2 chiếc laptop sẽ được đề cập trong hình ảnh dưới đây:</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-3_d4501161414e492eacd5535a38d58bd2_1024x1024.jpg\" alt=\"Cấu hình của ASUS ROG Strix G16/G18 - GEARVN\"></p><h2><strong>Đánh giá chi tiết về ASUS ROG Strix G16/G18</strong></h2><h3><strong>Sức mạnh tối thượng</strong></h3><p>Để xứng tầm với vị thế hàng đầu trong dòng laptop gaming cao cấp, phiên bản cao nhất của ROG Strix G16/G18 sẽ được sở hữu cho mình nguồn sức mạnh xử lý với phiên bản cao cấp nhất là Intel® Core™ i9-13980HX Processor. Là một chiếc CPU <a href=\"https://gearvn.com/collections/cpu-intel-13th-gen\">Intel Gen 13</a> đứng đầu trong dòng mobile, sức mạnh của dòng vi xử lý này được sánh ngang với i7-13700K dành cho <a href=\"https://gearvn.com/pages/pc-gvn\">PC Gaming</a>. TDP tối đa có thể đạt 175W (trong chế độ ép xung Manual Mode) đảm bảo nguồn năng lượng thích hợp quá trình vận hành của cả bộ máy.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-4_4018d080130b463eabef5db244d6cef1_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Là một chiếc laptop phục vụ cho gaming, chúng ta không thể thiếu sự hỗ trợ từ phía GPU và cả ASUS ROG Strix G16/G18 đều sẽ nhận được khả năng phục vụ từ GPU <a href=\"https://gearvn.com/collections/vga-rtx-4070\">RTX 4070</a>. Khả năng xử lý hình ảnh, đồ họa đều được chiếc <a href=\"https://gearvn.com/collections/vga-card-man-hinh\">card màn hình</a>&nbsp;thuộc thế hệ RTX 40 Series đảm bảo trong từng tác vụ. Qua đó, đảm bảo hiệu suất gaming tốt nhất cho mọi game thủ, cân tất mọi tựa game hot nhất hiện nay trên thị trường, từ eSport đến AAA. Cùng với đó là những công việc liên quan đến đồ họa cũng được RTX 4070 xử lý mượt mà và tốt nhất. Biến ASUS ROG Strix G16/G18 trở thành chiếc laptop chơi game RTX 40 Series mạnh nhất tại Việt Nam hiện tại và được chính NVIDIA chứng nhận.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-5_6547161d21924c01ba76f77247278f0f_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Nhằm đáp ứng nhu cầu và khả năng làm việc tốt nhất, ASUS đã sử dụng keo tản nhiệt kim loại lỏng thế hệ mới (Liquid Metal Conductonaut Extreme) trên 2 khu vực hoạt động nặng nhất, là <a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\">CPU</a> và GPU. Điều này đã giúp nhiệt độ của 2 phân khu được giảm tới 15°C mang lại tuổi thọ cùng hiệu suất hoạt động ổn định hơn.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-6_d7516737beb445ff98b1268555478184_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Đến với không gian trình chiếu, cả 2 phiên bản cao cấp nhất của&nbsp; ASUS ROG Strix G16/G18 đều sở hữu những độ phân giải khác nhau. Với G16, đó là chiếc màn hình kích thước 16 inch với độ phân giải WQHD; đạt những tiêu chuẩn hiển thị uy tín như DCI-P3: 100%, độ sáng đạt 500nits, G-Sync, chứng nhận Pantone và Dolby Vision HDR. Đến với G18, bạn sẽ sở hữu cho mình chiếc màn hình 18 inch ở độ phân giải 2K cùng tất cả tiêu chuẩn tuyệt vời có trên G16. Cộng hưởng vào đó là tần số quét 240Hz cho một trải nghiệm mượt mà trên từng pha hành động trên tỷ lệ màn hình 16:10 bắt trọng mọi sự vật trong khùng hình.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-7_5cbfda47d513491e95e8b44c1f0bb781_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Đặc biệt, khi ASUS đã mang tới tiêu chuẩn mới với tên ROG Nebula Display trên cả 2 chiếc dòng ROG Strix G16 và G18. Đó là sự kết hợp giữa 3 yếu tố đã có mặt trên sản phẩm của ASUS: viền mỏng, G-Sync và Dolby Vision-Atmos; tất cả tinh hoa quan trọng nhất cho khả năng hiển thị đều được hội tụ trên 2 chiếc laptop gaming này.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-8_faec7d28331c4dfab7d6ed58db5a665d_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Nguồn sức mạnh khổng lồ trên ROG Strix G16/G18 sẽ được tận dụng và tối ưu thông qua 2 công nghệ MUX Switch và NVIDIA Advanced Optimus. Cả hai đều sở hữu cho mình công nghệ tùy biến tự động chuyển luồng xuất từ iGPU hoặc GPU rời sang <a href=\"https://gearvn.com/pages/man-hinh\">màn hình</a> dựa trên ứng dụng đồ họa. Điều này giúp cho tài nguyên sẽ được tận dụng tốt cho mọi quy trình trên <a href=\"https://gearvn.com/collections/laptop\">laptop</a>.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-9_6eb636bc059b4c3eafd0831a229c772b_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Ở trên ROG Strix G16/G18 không chỉ có thể giải trí, ASUS còn trang bị cho sản phẩm của mình khả năng làm việc đa tác vụ mạnh mẽ đến từ kit <a href=\"https://gearvn.com/collections/ram-pc\">RAM</a> DDR5-4800. Tốc độ đọc, ghi và copy dữ liệu đều được nâng cấp hoàn toàn so với thế hệ RAM trước đây. Bộ nhớ trong <a href=\"https://gearvn.com/collections/ram-pc-ddr5\">RAM DDR5</a> giúp cải thiện thêm những khung hình, điều này được thể hiện qua bài test trên tựa game Rainbow Six Siege ở mức đồ họa Ultra High với số FPS tăng lên khoảng 24%.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-10_5344de0ba76a49b89128368e58dfc604_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Dưới đây sẽ là sức mạnh của CPU và GPU trên ASUS ROG Strix G16/G18 được test trên Benchmark:</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-11_9cc316b98a7e4980bc6001ae094e4d9e_1024x1024.jpg\" alt=\"Test benchmark ASUS ROG Strix G16/G18 - GEARVN\"></p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-12_2684a5f284cb4dedaa82e2b2db936568_1024x1024.jpg\" alt=\"Test benchmark ASUS ROG Strix G16/G18 - GEARVN\"></p><h3><strong>Tản nhiệt cao cấp, giữ vững hiệu năng</strong></h3><p>Sức mạnh càng lớn, tản nhiệt càng “xịn” - đó chính là điều mà ASUS cung cấp cho ROG Strix G16/G18 để duy trì sức mạnh tốt nhất. Không thể bắn tơ từ 2 tay như người nhện nhưng cả ROG Strix G16/G18 đều có thể cho không khi thoát ra từ khắp mọi các khe thoát nhiệt của laptop (trái, phải, sau) để tối ưu được nhiệt độ bên trong. Mọi luồng khí sẽ được công nghệ tản nhiệt 3 quạt (Tri-Fan) xử lý kết hợp với những chiếc ống đồng tản nhiệt bao phủ linh kiện (Strix G18 là 33%, Strix G16 là 32%). Tất cả phối hợp với nhau để mang lại không gian mát mẻ nhất cho phần cứng trong laptop.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-13_8aaaac412af14543b207ad686698b725_1024x1024.jpg\" alt=\"Tản nhiệt ASUS ROG Strix G16/G18 - GEARVN\"></p><h3><strong>Vẻ ngoài đẹp mắt với những chi tiết hoàn toàn mới</strong></h3><p>Một nét đẹp đậm chất gaming vẫn được ASUS trình bày trên ROG Strix G16/G18. Vẫn sẽ là logo mắt cú vọ, biểu tượng đặc trưng cho dòng ROG đặt ở mặt A gây nhung nhớ bao game thủ nằm trên bề mặt được gia công trơn và mượt mà. Đi cùng với đó là một dòng chữ Republic Of Gamers nhỏ cắt ngang qua mặt A và mặt C. Mọi góc cạnh được hoàn thiện trở nên mượt mà và nhẹ nhàng hơn rất nhiều, tạo độ thân thiện nhất định cho mọi người dùng.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-14_7763661f9c124a4781d07ec47ce3ade9_1024x1024.jpg\" alt=\"Ngoại hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Sau khi mở mặt A của ROG Strix G16/G18, đặt ngay vào mắt chúng ta đó là phần bàn phím RGB rực rỡ. Từng phím được tỏa sáng với hiệu ứng <a href=\"https://gearvn.com/collections/fan-led-trang-tri\">LED RGB</a> tạo nên buổi tiệc ánh sáng thực sự ngay trên chiếc laptop gaming. Ngoài ra phần gầm chữ U mặt trước cũng có cho mình khả năng phát sáng từ hiệu ứng ánh sáng này.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-15_c854f6334f494b6c813222d3e1a486b4_1024x1024.jpg\" alt=\"Ngoại hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Cụm phím điều hướng của series ROG Strix G năm ngoái khiến cho game thủ bao phần khó khăn thì đến với phiên bản 2023, ASUS đã quyết định cải tiến và tối ưu diện tích 4 chiếc phím lên - xuống - trái - phải. Qua đó đem lại khu vực nhấn phím tốt hơn và dễ dàng hơn. Phần touchpad của ROG Strix G16/G18 cũng được gia tăng về diện tích tiếp xúc giúp mọi thao tác trở nên mượt mà hơn. Đặc biệt hơn đó là cụm số numpad đã được xuất hiện ở chỗ touchpad với tính năng bật/tắt, cho phép bạn thoải mái sử dụng trong công việc.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-16_1e68b5ecb0c845e09ac307345187ce50_1024x1024.jpg\" alt=\"Bàn phím ASUS ROG Strix G16/G18 - GEARVN\"></p><h3><strong>Quy tụ mọi kết nối tốc độ nhất</strong></h3><p>ASUS ROG Strix G16/G18 mang đến những công nghệ kết nối tuyệt vời nhất hiện nay. Mở đầu, đó là chính là kết nối Internet siêu tốc độ cùng cổng Ethernet RJ-45 và chuẩn WiFi 6E.</p><p>Cổng LAN được hỗ trợ tốc độ lên đến 2.5 Gbps, gấp 2.5 lần so với cổng LAN Gigabit thông thường, đem lại sự ổn định khi khi chơi game online và download tài liệu. Còn đến với khả năng kết nối mạng không dây thông qua WiFi 6E, ASUS ROG Strix G16/G18 nâng cấp hoàn toàn khả năng truy cập mạng từ mọi khía cạnh như tốc độ, dung lượng, độ trễ và băng thông.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-17_7df31c26fc714aafba9c594957938be8_1024x1024.jpg\" alt=\"Kết nối trên ASUS ROG Strix G16/G18 - GEARVN\"></p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-18_673834cdfb05489c8b02b29289eb0177_1024x1024.jpg\" alt=\"Kết nối trên ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Tiếp đến là những cổng kết nối phục vụ cho hiệu quả sử dụng từ ASUS ROG Strix G16/G18. Nhằm phục vụ cho mọi nhu cầu công việc và giải trí, cổng Thunderbolt 4 được trang bị cho chúng ta. Tốc độ lên đến 40 Gb/s, hỗ trợ cho khả năng sạc từ USB Type-C và xuất hình độ phân giải 4K UHD, chiếc cổng kết nối đa năng này sẽ phục vụ cho bạn từ A đến Á.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-19_1e3ae5ee1f724d60b0137ffb52f8978f_1024x1024.jpg\" alt=\"Kết nối trên ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Phục vụ cho nhu cầu xuất hình ảnh chất lượng cao với ASUS ROG Strix G16/G18, chúng ta sẽ được sở hữu cho mình cổng HDMI 2.0. Là chuẩn mới nhất của cổng HDMI, hỗ trợ cho bạn xuất hình, trình chiếu cùng độ phân giải 4K 120Hz hoặc 8K 60Hz cùng công nghệ HDR10+ và eARC. Đảm bảo phục vụ tốt cho mọi tệp khách hàng đang muốn sở hữu cho mình một chiếc laptop gaming.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-20_319639783c5c435eaf8f111c11ea4ffb_1024x1024.jpg\" alt=\"Kết nối trên ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Và để đáp ứng cho nhu cầu sử dụng di động của chúng ta, ASUS ROG Strix G16/G18 vẫn trang bị cho mình viên pin 4 Cell 90WHrs cho thời lượng sử dụng lên đến 12 tiếng khi lướt web. Không chỉ sử dụng lâu, ASUS ROG Strix G16/G18 có thể trở lại cuộc chơi cực nhanh cùng công nghệ sạc nhanh khi cung cấp cho cho bạn tốc độ sạc từ 0% lên 50% trong 30 phút để quay trở lại tác vụ bằng cục sạc Type-C PD có công suất lên đến 100W.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-21_35c5d24be76349d4af220898a3753e1f_1024x1024.jpg\" alt=\"Kết nối trên ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Cuối cùng sẽ là những cổng kết nối phục vụ cho nhu cầu sử dụng tất yếu của mọi người dùng trên ASUS ROG Strix G16/G18 gồm combo jack audio nhằm kết nối cùng những thiết bị âm thanh và cổng nguồn.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-22_77289a5bebdc48d1911f96c094c9d3ba_1024x1024.jpg\" alt=\"Kết nối trên ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Trên đây là bài review về <strong>ROG Strix G16</strong> và <strong>G18</strong> - 2 siêu chiến binh mới đến từ ASUS. Và nếu bạn quan tâm sản phẩm về 2 dòng laptop gaming này thì hãy đến ngay với showroom <a href=\"https://gearvn.com/\"><strong>GEARVN</strong></a> hoặc có thể mua online thông qua đường dẫn dưới đây. Cảm ơn các bạn đã dành thời gian cho chúng mình và hẹn gặp lại trong những bài review tiếp theo !</p><figure class=\"table\"><table><tbody><tr><td><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-laptop-gaming-asus-rog-strix-g16-1_4e7f9733d1304459a2bf6503bbbbfa3f_medium.jpg\" alt=\"Laptop gaming ASUS ROG Strix G16 G614JV N4261W - GEARVN\"></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></td><td><p><strong>Laptop gaming ASUS ROG Strix G16 G614JV N4261W</strong></p><p><strong>Đặc điểm nổi bật</strong></p><ul><li>✔&nbsp;<strong>Màn hình:</strong> 16 inch QHD+ IPS&nbsp;240Hz</li><li>✔&nbsp;<strong>CPU:</strong> Intel Core i9-13980HX</li><li>✔&nbsp;<strong>GPU:</strong> RTX 4060</li><li>✔&nbsp;<strong>RAM:</strong> 16GB DDR5</li><li>✔&nbsp;<strong>Bộ nhớ:</strong> 1TB SSD&nbsp;&nbsp;&nbsp;</li><li>✔&nbsp;<strong>Pin:</strong>&nbsp;4&nbsp;Cell 90WHrs</li></ul><p><a href=\"https://gearvn.com/products/laptop-gaming-asus-rog-strix-g16-g614jv-n4261w\"><strong>XEM CHI TIẾT</strong></a></p></td></tr></tbody></table></figure><figure class=\"table\"><table><tbody><tr><td><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-laptop-gaming-asus-rog-strix-g16-1_4e7f9733d1304459a2bf6503bbbbfa3f_medium.jpg\" alt=\"Laptop gaming ASUS ROG Strix G16 G614JI N4084W - GEARVN\"></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></td><td><p><strong>Laptop gaming ASUS ROG Strix G16 G614JI N4084W</strong></p><p><strong>Đặc điểm nổi bật</strong></p><ul><li>✔&nbsp;<strong>Màn hình:</strong> 16 inch WQHD&nbsp;IPS&nbsp;240Hz</li><li>✔&nbsp;<strong>CPU:</strong> Intel Core i7-13650HX</li><li>✔&nbsp;<strong>GPU:</strong> RTX 4070</li><li>✔&nbsp;<strong>RAM:</strong> 16GB DDR5</li><li>✔&nbsp;<strong>Bộ nhớ:</strong> 1TB SSD&nbsp;&nbsp;</li><li>✔&nbsp;<strong>Pin:</strong>&nbsp;4&nbsp;Cell 90WHrs&nbsp;</li></ul><p><a href=\"https://gearvn.com/products/laptop-gaming-asus-rog-strix-g16-g614ji-n4084w\"><strong>XEM CHI TIẾT</strong></a></p></td></tr></tbody></table></figure><figure class=\"table\"><table><tbody><tr><td><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-laptop-gaming-asus-rog-strix-g18_68fc31e57cc743168d3884660b0c17ac_medium.jpg\" alt=\"Laptop gaming ASUS ROG Strix G18 G814JI N6063W - GEARVN\"></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></td><td><p><strong>Laptop gaming ASUS ROG Strix G18 G814JI N6063W</strong></p><p><strong>Đặc điểm nổi bật</strong></p><ul><li>✔&nbsp;<strong>Màn hình:</strong> 18&nbsp;inch QHD+ IPS&nbsp;240Hz</li><li>✔&nbsp;<strong>CPU:</strong> Intel Core i9-13980HX</li><li>✔&nbsp;<strong>GPU:</strong> RTX 4070</li><li>✔&nbsp;<strong>RAM:</strong> 16GB DDR5</li><li>✔&nbsp;<strong>Bộ nhớ:</strong> 1TB SSD&nbsp;</li><li>✔&nbsp;<strong>Pin:</strong>&nbsp;4&nbsp;Cell 90WHrs&nbsp;</li></ul><p><a href=\"https://gearvn.com/products/laptop-gaming-asus-rog-strix-g18-g814ji-n6063w\"><strong>XEM CHI TIẾT</strong></a></p></td></tr></tbody></table></figure>', 1, 2, '2023-12-07 07:38:46', '2023-12-07 07:54:30'),
(11, 'HỌC TẬP, LÀM VIỆC SÁNG TẠO HƠN VỚI ONENOTE, BẠN ĐÃ THỬ VỚI MICROSOFT PHIÊN BẢN MỚI NHẤT CHƯA?', 'news/banmz3idoqgmyfifkwyc', '<p><i><strong>Khi nhắc đến những tính năng đặc biệt của Microsoft, ngoài OneDrive thì OneNote được ví như là sổ ghi chép phiên bản kỹ thuật số. Mọi tiện ích đều được tích hợp trong OneNote với các tính năng như: ghi chú, lên ý tưởng, brainstorming,…&nbsp;</strong></i></p><p><i><strong>Ngoài ra, sử dụng OneNote giúp tối ưu hóa những công cụ ghi chú cồng kềnh và thiết kế lại một cách logic cho người dùng dễ dàng quản lý công việc hiệu quả. Vậy có gì thú vị khi khám phá OneNote hiệu quả hơn? Cùng GearVN tìm hiểu xem OneNote còn những tính năng gì hay ho nhé!</strong></i></p><h2><strong>1. TRẢI NGHIỆM TÍNH NĂNG IN GHI CHÚ NHANH CHÓNG TRÊN ONENOTE</strong></h2><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-hoc-tap-lam-viec-sang-tao-hon-voi-onenote-2_240d4d03703f4f4a8fd82fcd07a1535b_1024x1024.jpg\" alt=\"GEARVN - ONENOTE\"></p><p>Hiện nay từ Windows 10 trở lên đều hỗ trợ tính năng in toàn bộ phần ghi chú thay vì phải in từng trang một. Bạn có thể thực hiện các bước theo thứ tự:</p><p>Bước 1: Điều hướng đến bất cứ trang nào trong phần hoặc ghi chú để in.</p><p>Bước 2: Click vào <strong>biểu tượng ba dấu chấm</strong> (…) ở phía bên phải.</p><p>Bước 3: Chọn <strong>Print</strong>.</p><p>Bước 4: Đối với máy in, bạn chọn máy in bạn muốn sử dụng.</p><p>Bước 5: Đối với các trang (Pages), bạn đổi sang <strong>Current Section</strong> hoặc <strong>Current Notebook</strong>.</p><p>Bước 6: Click vào <strong>Print</strong> khi đã sẵn sàng.</p><h2><strong>2. XEM LẠI LỊCH SỬ PHIÊN BẢN TRANG CHỈ VỚI 1 CLICK</strong></h2><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-hoc-tap-lam-viec-sang-tao-hon-voi-onenote-3_3c0ff6b6b72343baa4753807987647b7_1024x1024.jpg\" alt=\"GEARVN - ONENOTE\"></p><p>OneNote theo dõi bất kỳ sự thay đổi nào được tạo ra trên trang và nhãn như một phiên bản trang. Bạn có thể xem lịch sử của một trang cụ thể bằng cách click chuột phải vào nó và chọn <strong>Page Versions</strong>. Bạn sau đó có thể phục hồi một phiên bản trước đó bằng cách chọn nó và click vào <strong>Make Current Page</strong>.</p><h2><strong>3. THỎA SỨC THAY ĐỔI MÀU SẮC VÀ ĐẶT NICKNAME</strong></h2><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-hoc-tap-lam-viec-sang-tao-hon-voi-onenote-4_7e4b5dd08ad047b0826fd8cbe5bffc40_1024x1024.jpg\" alt=\"GEARVN - ONENOTE\"></p><p>Cá nhân hóa ghi chú giúp bạn dễ dàng chuyển qua lại giữa chúng trong nháy mắt. Và nếu ghi chú được chia sẻ với bạn thì bạn có thể đổi tên của nó cho chính mình bằng cách click vào ghi chú đó và chọn <strong>Nickname Notebook</strong>.</p><p>Bạn cũng có thể nhấp chuột phải và chọn <strong>Notebook Color</strong> để áp dụng màu yêu thích cho ghi chú của mình.</p><h2><strong>4. THAO TÁC TẠO VÀ ẨN TRANG PHỤ ĐƠN GIẢN</strong></h2><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-hoc-tap-lam-viec-sang-tao-hon-voi-onenote-5_23b7ab1a2b5944ddbd2b28b3888c97b4_1024x1024.jpg\" alt=\"GEARVN - ONENOTE\"></p><p>Click chuột phải vào một trang trong phần ghi chú đang hiển thị, sau đó chọn <strong>Subpages </strong>&gt;<strong> Make Subpage</strong> để biến trang đó thành một trang phụ của trang phía trên nó. Khi một trang có các trang phụ, nó sẽ có một <strong>biểu tượng mũi tên</strong> bên cạnh để bạn có thể sử dụng để thu gọn và ẩn.</p><p>Trang phụ có thể có khác trang con khác, nhưng chỉ những trang cấp cao mới có thể thu gọn. Bạn có thể biến một trang phụ thành một trang bình thường bằng cách click chuột phải vào nó và chọn <strong>Subpages</strong> &gt; <strong>Promote Subpage</strong>.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-hoc-tap-lam-viec-sang-tao-hon-voi-onenote-6_366538d404ed47b186efcf588bbb4f83_1024x1024.jpg\" alt=\"GEARVN - ONENOTE\"></p><p><strong>(*) VỚI MICROSOFT 365, BẠN CÓ THỂ HỌC TẬP VÀ LÀM VIỆC NĂNG SUẤT VỚI GIÁ CHỈ TỪ 19K/THÁNG, ĐI KÈM NHIỀU TIỆN ÍCH:</strong></p><ul><li>Đăng nhập và đồng bộ dữ liệu lên tới 5 thiết bị trên mỗi tài khoản&nbsp;</li><li>Dung lượng lưu trữ khổng lồ với 1 TB lưu trữ đám mây OneDrive&nbsp;</li><li>Trọn bộ ứng dụng văn phòng cao cấp Word, Excel, PowerPoint, Outlook, Microsoft To Do, OneNote, … đáp ứng đầy đủ nhu cầu bạn cần, góp phần nâng cao hiệu suất công việc.</li><li>Chia sẻ thông tin, dữ liệu một cách an toàn giữa các thiết bị, bảo vệ dữ liệu của bạn an toàn nhờ két sắt personal vault.</li></ul><blockquote><p><i><strong>🔥🔥 NHẬN NGAY VOUCHER GIẢM GIÁ OFFICE LÊN ĐẾN 100,000 VND KHI MUA LAPTOP KÈM OFFICE HOME &amp; STUDENT 2021</strong></i><br><i><strong>HAY MUA LAPTOP KÈM MICROSOFT 365 CHỈ TỪ 19,000 VND/THÁNG, TIẾT KIỆM LÊN ĐẾN 600,000 VND (*).</strong></i></p><p><i>(*) Áp dụng khi mua Microsoft 365 Family, chia sẻ tài khoản cho 6 người.</i></p><p><i>👉&nbsp; Chi tiết mua hàng tại:</i></p><p><i>+ Microsoft 365 Family: </i><a href=\"https://gearvn.com/products/office-365-home-32-64-alllngsub-pklic-1yr-online-apac-em-c2r-nr-6gq-00083\"><i>https://gearvn.com/products/office-365-home-32-64-alllngsub-pklic-1yr-online-apac-em-c2r-nr-6gq-00083</i></a><i>&nbsp;</i></p><p><i>+ Office Home &amp; Student 2021, mua một lần dùng trọn đời: </i><a href=\"https://gearvn.com/products/phan-mem-office-home-student-2021-79g-05337\"><i>https://gearvn.com/products/phan-mem-office-home-student-2021-79g-05337</i></a></p></blockquote>', 1, 2, '2023-12-07 07:41:12', '2023-12-07 07:51:17');
INSERT INTO `news` (`id`, `title`, `image`, `content`, `status`, `users_id`, `created_at`, `updated_at`) VALUES
(12, 'Back To School cùng MSI', 'news/evf0dit5gdpi5xr0xmnp', '<p><i><strong>Mùa tựu trường gần kề, để tiếp thêm hành trang cho các học sinh – sinh viên bước vào năm học mới, MSI xin trân trọng gửi đến quý khách chương trình Back To School, tự tin đến trường với Laptop MSI.</strong></i><br><br>Khách hàng khi mua <a href=\"https://gearvn.com/collections/laptop-msi-gaming\"><strong>LAPTOP MSI</strong></a> thuộc các dòng <strong>Modern, Raider, Stealth, Vector, Katana, Prestige</strong> tại <a href=\"https://gearvn.com/\"><strong>Gearvn</strong></a> sẽ nhận được quà tặng đặc biệt.<br><br><strong>Thời gian áp dụng:</strong> Từ ngày <strong>10/08/2023</strong> đến ngày <strong>30/09/2023</strong> hoặc đến khi hết số lượng quà khuyến mãi.<br><br><strong>Cơ cấu giải thưởng</strong><br>Nhận ngay 01 QUÀ TẶNG khi mua Laptop MSI thuộc các dòng sau:<br>1. Modern Series Intel Gen 13th and AMD 7000 Series<br>• Các SKU được áp dụng: Modern 14 C13M, Modern 15 B13M, Modern 14 C7M, Modern B7M<br>► MSI Sleeve Bag (PK-MSI-SLEEVE-BAG)<br><br>2. Gaming GE/GS/GP Series<br>• Các SKU được áp dụng: Raider GE78HX, Raider GE68HX, Stealth 14 Studio, Stealth 15 A13VF, Stealth 16 Studio, Stealth 16 Mercesdes, Vector GP68HX, Raider GE78HX<br>► MSI Gaming Headset (TAI-MSI-H991)<br><br>3. Gaming Katana<br>• Các SKU được áp dụng: Katana GF66, Katana GF76, Katana 15<br>► MSI Gaming Mouse M99 Pro (CHU-MSI-M99)</p><p><br>4. Prestige (CPU Gen 13th)<br>• Các SKU được áp dụng: Prestige 16 Studio, Prestige 14 EVO, Prestige 13 EVO<br>► MSI 9 in 1 TypeC Multi-port Hub (PK-HUB-MSI-9IN1)</p><p>&nbsp;</p><p><br>&nbsp;</p>', 1, 2, '2023-12-07 07:41:48', '2023-12-07 07:41:48'),
(13, 'Mua Laptop LG Gram tại Gearvn nhận quà tặng cực hấp dẫn từ LG', 'news/whlc7fgsjzr9rzxeuxyu', '<p><strong>Mua Laptop LG Gram tại Gearvn nhận quà tặng cực hấp dẫn từ LG</strong></p><p><img src=\"https://file.hstatic.net/200000722513/file/chuong_trinh_lg_cfab845adcd64d798497e86f0e3f4893.png\" alt=\"Chương trình khuyến mãi LG Gram\"></p><p>&nbsp;</p><h2><strong>Thời gian áp dụng</strong></h2><p>Từ ngày <strong>01/10 – 31/12/2023</strong> khi mua Laptop LG Gram tại Gearvn, khách hàng nhận được quà tặng cực hấp dẫn từ LG.</p><h2><strong>🎁 Quà tặng:</strong></h2><ul><li>Tặng màn hình mở rộng LG gram + view trị giá 9.890.000 VND khi mua <a href=\"https://gearvn.com/collections/laptop-lg-gram\">LG gram</a> 2022 &amp; 2023 15 inch, 16 inch và 17 inch</li><li>Tặng tai nghe LG TONE Free FP8 trị giá 4.190.000 VND khi mua LG gram 2022 &amp; 2023 14 inch</li></ul><h2><strong>Hướng dẫn nhận quà</strong></h2><p>Hướng dẫn cách thức nhận Quà KM của LG tại hệ thống đổi quà Công ty LG:</p><ul><li>Laptop Gram 2023 tại <a href=\"https://quatanglg.com/campaign/28\">https://quatanglg.com/campaign/28</a></li><li>Laptop Gram 2022 tại <a href=\"https://quatanglg.com/campaign/22\">https://quatanglg.com/campaign/22</a></li></ul><p>Để xem Thể lệ và điều kiện chi tiết, hướng dẫn đổi quà tại địa điểm chỉ định.</p>', 1, 2, '2023-12-07 07:42:17', '2023-12-07 07:49:32'),
(14, 'CẤU HÌNH THỜI THƯỢNG, HIỆU NĂNG ẤN TƯỢNG', 'news/hf3espydmqyafmgpzd2r', '<p><strong>Thời gian áp dụng:</strong> Từ ngày <strong>27/06</strong> đến ngày <strong>24/07/2023</strong></p><p><strong>Phạm vi áp dụng:</strong> Áp dụng tại các đại lý bán lẻ trên toàn quốc đang kinh doanh các sản phẩm khuyến mãi chính hãng được phân phối chính thức từ ba nhà phân phối FPT Synnex, PSD và DGW.</p><p><strong>Đối tượng áp dụng:</strong> Khách hàng đầu cuối trên toàn quốc.</p><p><strong>Sản phẩm áp dụng:</strong> Áp dụng cho tất cả các sản phẩm máy tính xách tay gaming <strong>Legion và LOQ tích hợp vi xử lý Intel core gen 13</strong> đặt hàng trong thời gian áp dụng và có hóa đơn VAT mua hàng xuất trong thời gian từ 27/06/2023 đến 24/07/2023.</p><p>Các Model được áp dụng tại Gearvn</p><ul><li><a href=\"https://gearvn.com/products/laptop-gaming-lenovo-loq-15irh8-82xv000pvn\">https://gearvn.com/products/laptop-gaming-lenovo-loq-15irh8-82xv000pvn</a></li><li><a href=\"https://gearvn.com/products/laptop-gaming-lenovo-loq-15irh8-82xv00d5vn\">https://gearvn.com/products/laptop-gaming-lenovo-loq-15irh8-82xv00d5vn</a></li><li><a href=\"https://gearvn.com/products/laptop-gaming-lenovo-legion-slim-5-16irh8-82ya00buvn\">https://gearvn.com/products/laptop-gaming-lenovo-legion-slim-5-16irh8-82ya00buvn</a></li></ul><p><strong>Hình thức khuyến mãi:</strong> Tặng quà khi mua sản phẩm.</p><p><strong>Quà khuyến mãi:</strong> <strong>Tặng ngay 01 Màn hình gaming Y27-30 trị giá 6.790.000VNĐ khi mua bất kỳ sản phẩm khuyến mãi</strong></p><p><strong>Cách thức trả thưởng:</strong> Nhận quà qua đường bưu điện sau khi gửi đầy đủ các chứng từ mua hàng cho Lenovo, cụ thể như sau:</p><ul><li>Khách hàng gửi hình chụp chứng từ mua hàng về email <strong>khuyenmai.lenovo@gmail.com</strong>.</li><li>Lenovo sẽ xác minh thông tin mua hàng trong vòng 48 giờ làm việc và gửi xác nhận qua email.</li><li>Lenovo sẽ gửi quà tặng theo địa chỉ đã được khách hàng cung cấp trong email.</li><li><strong>Lưu ý:</strong> Chứng từ mua hàng hợp lệ là hóa đơn VAT hoặc hóa đơn bán hàng bình thường có mộc của nơi bán được xuất trong thời gian từ 27/06/2023 đến 24/07/2023.</li></ul><p>Mọi thắc mắc xin vui lòng gọi về hotline <strong>07741 02943</strong> để được giải đáp và hỗ trợ.</p><p><strong>Quy định khác:</strong></p><ul><li>Chương trình khuyến mãi có thể kết thúc ngay khi hết quà.</li></ul>', 1, 2, '2023-12-07 07:42:48', '2023-12-07 07:50:10'),
(15, 'MÁT TỪ TRONG LÕI – MẠNH TỪ TRONG NHÂN !!!', 'news/gxc6lafy3mmuesgjwkrw', '<p>Tặng tai nghe ASUS TUF Gaming H1 trị giá 900,000đ khi mua Bo mach chủ ASUS Z790 series + tản nhiệt AIO AIO ROG RYUJIN III 360 ARGB/ RYUJIN III 360/ RYUJIN III 240 ARGB/ RYUJIN III 240</p><h2><strong>1. Thời gian khuyến mãi:&nbsp;</strong></h2><p>Bất kì hóa đơn mua hàng, phiếu thu hoặc phiếu xuất kho có giá trị từ ngày <strong>10/10/2023 </strong>đến <strong>11/11/2023</strong> hoặc cho đến khi hết quà</p><p>Hạn chót đăng ký nhận quà: <strong>03/01/2024</strong></p><h2><strong>2. Sản phẩm áp dụng và quà tặng:&nbsp;</strong></h2><ul><li>Tặng <a href=\"https://gearvn.com/products/tai-nghe-asus-tuf-gaming-h1\"><strong>tai nghe ASUS TUF Gaming H1</strong></a> trị giá <strong>900,000đ</strong> khi mua <a href=\"https://gearvn.com/collections/mainboard-intel-z790-raptor-lake?vendor=asus\"><strong>Bo mach chủ Asus Z790</strong></a><strong> series</strong> dòng TUF và ROG + <a href=\"https://gearvn.com/products/tan-nhiet-nuoc-asus-rog-ryujin-iii-360-argb\"><strong>tản nhiệt AIO ROG RYUJIN III 360 ARGB</strong></a><strong>/ </strong><a href=\"https://gearvn.com/products/tan-nhiet-nuoc-asus-rog-ryujin-iii-360\"><strong>RYUJIN III 360</strong></a><strong>/ RYUJIN III 240 ARGB/ RYUJIN III 240</strong></li></ul><h2><strong>3. Cách thức nhận quà:</strong></h2><p>&gt;&gt;&gt;Click vào nút “<strong>Đăng Ký</strong>” trên website Asus tại đây:</p><p><a href=\"https://www.asus.com/vn/events/infoM/activity_AIO2023\">https://www.asus.com/vn/events/infoM/activity_AIO2023</a></p><p><strong>Lưu Ý: </strong>Trong trường hợp không thể đăng ký trên hệ thống, quý khách hàng vui lòng gửi thông tin nhận quà như bên dưới về địa chỉ Email: <strong>dangkyasus@gmail.com</strong> với tiêu đề: “<strong>[Khuyen mai] Z790 + Ryujin III</strong></p><ul><li>Đính kèm hình ảnh hóa đơn mua hàng, phiếu thu, phiếu xuất kho có dấu xác nhận của cửa hàng, thể hiện rõ tên sản phẩm và ngày mua hàng trong thời gian chương trình diễn ra.</li><li>Đính kèm ảnh chụp số S/N của sản phẩm</li><li>Điền series của sản phẩm</li><li>Điền Họ và tên người nhận quà</li><li>Điền Địa chỉ nhận quà</li><li>Điền Số điện thoại liên hệ</li></ul><p>Hình chụp số S/N trên sản phẩm phải chụp kèm với hoá đơn, chỉ chấp nhận hình chụp số S/N trên sản phẩm, số S/N trên hộp không có hiệu lực.</p><p><img src=\"https://file.hstatic.net/1000026716/file/mbr5hr9_98628dc179c04d5295f3e45233add9c6.png\"></p><p><strong>4. Các lưu ý khác:</strong></p><ul><li>ASUS sẽ kiểm tra và liên hệ gửi quà tới bạn trong 20 ngày làm việc (ngoại trừ thứ 7 &amp; Chủ nhật)</li><li>Chương trình không áp dụng đồng thời với các chương trình khuyến mãi khác</li><li>Quà tặng không có giá trị quy đổi thành tiền mặt hoặc các giá trị khác tương đương</li><li>Hóa đơn/ phiếu thu/ phiếu xuất kho phải có con dấu của cửa hàng bán lẻ</li><li>Chương trình chỉ dành cho khách hàng mua lẻ từ cửa hàng, tất cả hóa đơn từ nhà phân phối đều không được tham gia chương trình khuyến mãi này</li><li>Dung lượng hình ảnh hóa đơn tải lên hệ thống &lt;1Mb</li><li>Trong trường hợp cần thiết nhằm bảo đảm quyền lợi khách hàng, phía ASUS sẽ cần thêm những thông tin khác để xác định khách mua hàng là chính xác như: hóa đơn đỏ, giấy tờ tùy thân có ảnh đại diện...</li><li>Mọi góp ý hay thắc mắc khác về chương trình, xin vui lòng post tại Hội linh kiện <a href=\"https://gearvn.com/pages/pc-gvn\">PC</a> ASUS ROG Việt Nam</li></ul>', 1, 2, '2023-12-07 07:52:41', '2023-12-07 07:52:41'),
(16, 'MUA AORUS/GIGABYTE LAPTOP 2023 - NHẬN NGAY QUÀ CỰC HOT', 'news/cz9dl7eyr6apqvbh1wyj', '<h2><strong>Thời gian</strong></h2><p>Từ <strong>21/11/2023</strong> – <strong>31/12/2023</strong></p><h2><strong>Nội dung</strong></h2><p>Khách hàng sẽ nhận được 1 áo khoác AORUS Baseball khi mua các sản phẩm:&nbsp;</p><ul><li>AORUS 15 9MF-E2VN583SH</li></ul><p><a href=\"https://gearvn.com/products/laptop-gaming-gigabyte-aorus-15-9mf-e2vn583sh\"><picture><source srcset=\"https://product.hstatic.net/200000722513/product/aorus-15_92ffbcfe601f4257a1ee1f764d8743a4.png\" media=\"(max-width: 767px)\"><img src=\"https://product.hstatic.net/200000722513/product/aorus-15_92ffbcfe601f4257a1ee1f764d8743a4.png\" alt=\"Laptop gaming Gigabyte AORUS 15 9MF E2VN583SH\"></picture></a><img src=\"https://file.hstatic.net/200000722513/file/thumb-promotion-gaming-t10_5936e_22708b19d5854209a09f21f012c703b1.png\" alt=\"icon\"></p><p><a href=\"https://gearvn.com/products/laptop-gaming-gigabyte-aorus-15-9mf-e2vn583sh\"><strong>Laptop gaming Gigabyte AORUS 15 9MF E2VN583SH</strong></a></p><p>37.990.000₫</p><p><strong>27.990.000₫</strong>-26%</p><p><strong>0.0</strong>(0 đánh giá)</p><p><a href=\"https://gearvn.com/products/laptop-gaming-gigabyte-aorus-15-9mf-e2vn583sh\">XEM CHI TIẾT</a></p><ul><li>G6 KF-H3VN853SH</li><li>G5 MF5-H2VN353SH</li></ul><p><a href=\"https://gearvn.com/products/laptop-gaming-gigabyte-g5-mf5-h2vn353sh\"><picture><source srcset=\"https://product.hstatic.net/200000722513/product/ava_b44086f2ed514525bb58cb437d95244d.png\" media=\"(max-width: 767px)\"><img src=\"https://product.hstatic.net/200000722513/product/ava_b44086f2ed514525bb58cb437d95244d.png\" alt=\"Laptop gaming Gigabyte G5 MF5 H2VN353SH\"></picture></a></p><p><a href=\"https://gearvn.com/products/laptop-gaming-gigabyte-g5-mf5-h2vn353sh\"><strong>Laptop gaming Gigabyte G5 MF5 H2VN353SH</strong></a></p><p>27.990.000₫</p><p><strong>26.990.000₫</strong>-4%</p><p><strong>0.0</strong>(0 đánh giá)</p><p><a href=\"https://gearvn.com/products/laptop-gaming-gigabyte-g5-mf5-h2vn353sh\">XEM CHI TIẾT</a></p><h2><strong>Cách thức nhận quà</strong></h2><p>Khách hàng mua laptop GIGABYTE các mã trong chương trình chụp lại hoá đơn và claim quà tại landing page GIGABYTE</p><p><strong>Địa chỉ link claim quà:</strong>&nbsp;<a href=\"https://gigabyte.microstar.vn/khuyen-mai-g6-g5-aorus?fbclid=IwAR3M1wCdSJuNJ3tMqansMPYVy49qXY-5uktiUhoPVrKv2c1eCCpoa5BJLJQ\">https://gigabyte.microstar.vn/khuyen-mai-g6-g5-aorus?fbclid=IwAR3M1wCdSJuNJ3tMqansMPYVy49qXY-5uktiUhoPVrKv2c1eCCpoa5BJLJQ</a></p><h2><strong>Lưu ý&nbsp;</strong></h2><ul><li>Quà tặng không có giá trị quy đổi thành tiền mặt hoặc các giá trị khác tương đương.</li><li>Số lượng quà tặng có hạn, chương trình có thể kết thúc mà không cần báo trước.</li></ul><p>&nbsp;</p><p><br>&nbsp;</p>', 1, 2, '2023-12-07 07:53:08', '2023-12-07 07:53:08'),
(17, 'PREDATOR FEST 2023: REBORN OF THE KING - ĐẠI TIỆC CÔNG NGHỆ LỚN NHẤT NĂM 2023', 'news/rhqrwlwsiwr1czkteicn', '<p>Vào lúc <strong>8:00 ngày 10/12/2023</strong> tại khuôn viên hơn 8.000m2 thuộc trung tâm triển lãm Sky Expo Q.12, đại tiệc hoành tráng nhất năm <strong>Predator Fest 2023: Reborn of the King</strong> của Acer với sự đồng hành của Đối tác Intel Việt Nam, sẽ chính thức được diễn ra.</p><p>Tiếp nối thành công các mùa trước, chuỗi sự kiện công nghệ Predator Fest của Acer chưa từng khiến người tham dự thất vọng bởi độ đầu tư chỉn chu đến từng chi tiết nhỏ nhất, song quy mô lại càng ngày càng hoành tráng. Predator Fest 2023: Reborn of the King, là sự kiện công nghệ mang sự chiêu đãi hoành tráng đến với người hâm mộ.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-predator-fest-2023-2_0aa3d4a1e023499bb5ed798a72c9413d_1024x1024.jpg\" alt=\"GEARVN - Predator Fest 2023\"></p><p>Predator Fest 2023 xây dựng nên một thế giới trò chơi nhập vai hoàn toàn mới lạ, một khi bước chân qua “cổng không gian” đến với thế giới Predator, người tham gia sẽ hóa thân thành những chiến binh, vượt qua các “ải” và muôn vàn “thử thách” thú vị để hoàn thành các tuyến nhiệm vụ chính/phụ, tất cả để “vị vua Predator” được hồi sinh và trị vì vương quốc ngày càng hùng mạnh.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-predator-fest-2023-3_3001df5a4442472d896be7ad5dd5b9f7_1024x1024.jpg\" alt=\"GEARVN - Predator Fest 2023\"></p><p>Ngoài những trải nghiệm nhập vai,&nbsp;Predator Fest 2023 còn mang đến những sản phẩm công nghệ cao cấp nhất đến từ Acer Predator như dàn siêu phẩm <strong>desktop Orion X</strong>, <strong>Orion 7000</strong>, Màn hình <strong>Predator CG48</strong> và cơ hội trải nghiệm các dòng laptop gaming trang bị card đồ họa và CPU Intel thế hệ 13 mới nhất như <strong>Predator Helios 18</strong>, <strong>Predator Helios Neo 16</strong>…</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-predator-fest-2023-4_f9f458df1751422cbf58988e379edb19_1024x1024.jpg\" alt=\"GEARVN - Predator Fest 2023\"></p><p>Bên cạnh đó, ngay tại khuôn viên sự kiện, ca sĩ <strong>Wren Evans</strong> và rapper <strong>Obito</strong> sẽ xuất hiện với tư cách nghệ sĩ khách mời và trình diễn các ca khúc nổi tiếng của họ như “Từng quen”, “Call me”, “Simple love”, “Đánh đổi” v.v, mang đến một tiết mục concert vừa trầm vừa bổng, vừa du dương lại vừa khí thế khiến người tham dự “đứng ngồi không yên”.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-predator-fest-2023-5_5702017ed1d64ed19e5f179c45d7b01c_1024x1024.jpg\" alt=\"GEARVN - Predator Fest 2023\"></p><p>Các KOLs và top streamers như 500 Bros, CKG Team cũng đến góp mặt xuyên suốt tại sự kiện ở khu vực thi đấu, nơi fan hâm mộ có cơ hội thách đấu thần tượng của mình để giành lấy giải thưởng cực chất.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-predator-fest-2023-6_25280437b5324115a7d578f9a8557366_1024x1024.jpg\" alt=\"GEARVN - Predator Fest 2023\"></p><p>Sự kiện Predator Fest 2023, với sự đồng hành của Đối tác Intel cùng 8 Đại lý bán lẻ hàng đầu như Thế Giới Di Động, Phong Vũ, FPT Shop, HACOM, An Phát, GearVN, Nguyễn Kim, Hàng Chính Hiệu, và không thể thiếu là sự góp mặt của những tựa game đình đám từ các nhà phát hành game như VNG, Krafton, FC Online…</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-predator-fest-2023-7_02a730eb941b4ddfaf24b6fe0208c32e_1024x1024.jpg\" alt=\"GEARVN - Predator Fest 2023\"></p><p>Ngoài ra, khi đến với sự kiện Predator Fest: Reborn of the King, cộng đồng fans Acer Predator còn có cơ hội nhận hơn 10.000 phần quà trải nghiệm cùng hàng loạt sản phẩm gaming gear, laptop và màn hình, cũng như trải nghiệm dịch vụ vệ sinh máy và tra keo tản nhiệt trực tiếp tại quầy Acer 3S1.</p><p>3S1 là chính sách bảo hành VIP của Acer: Bảo hành nhanh trong vòng 3 ngày, kể cả thứ 7 và chủ nhật, quá 3 ngày 1 đổi 1.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-predator-fest-2023-8_12ddbdeb450d4fa88fe8ba982b6fa98e.jpg\" alt=\"GEARVN - Predator Fest 2023\"></p><p>Sự kiện Predator Fest: Reborn of the King chính thức khai mạc vào <strong>Chủ nhật, 10/12/2023</strong> và diễn ra từ<strong> 8:00 đến 17:00</strong> tại <strong>Trung tâm triển lãm SkyExpo - Công viên phần mềm Quang Trung, phường Tân Chánh Hiệp, quận 12, Thành phố Hồ Chí Minh</strong>. Hãy đến và trải nghiệm ngay, đăng ký trước&nbsp;<a href=\"https://www.google.com/url?q=https://fest.acervietnam.com.vn/enroll&amp;sa=D&amp;source=editors&amp;ust=1701338260719244&amp;usg=AOvVaw1edsi4Dvzyk4JCXwY_bwFG\"><strong>tại đây</strong></a>.</p><p><i>Bạn đọc đừng quên theo dõi&nbsp;</i><a href=\"https://www.google.com/url?q=https://www.facebook.com/AcerVN&amp;sa=D&amp;source=editors&amp;ust=1701338260719684&amp;usg=AOvVaw0G5BqiwAHqhDilM9zbO7hX\"><i><strong>Fanpage Acer VN</strong></i></a><i>&nbsp;và cộng đồng&nbsp;</i><a href=\"https://www.google.com/url?q=https://www.facebook.com/groups/AcerGamingVietNam&amp;sa=D&amp;source=editors&amp;ust=1701338260719921&amp;usg=AOvVaw2MOnv23BhJZHyjnzJReEY9\"><i><strong>Predator Community Vietnam</strong></i></a><i>&nbsp;để cập nhật liên tục thông tin sự kiện nhé!</i></p>', 1, 2, '2023-12-07 07:53:44', '2023-12-07 07:53:44');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int UNSIGNED NOT NULL,
  `users_id` int UNSIGNED NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tax` bigint NOT NULL,
  `subtotal` bigint NOT NULL,
  `total` bigint NOT NULL,
  `discount` bigint DEFAULT NULL,
  `lastname_sender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname_sender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_sender` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `hold` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `users_id`, `lastname`, `firstname`, `email`, `phone`, `address`, `district`, `city`, `content`, `tax`, `subtotal`, `total`, `discount`, `lastname_sender`, `firstname_sender`, `phone_sender`, `status`, `hold`, `created_at`, `updated_at`) VALUES
(155, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'hcm', NULL, 5264700, 175490000, 57911700, 122843000, NULL, NULL, NULL, 3, 0, '2024-01-02 15:59:50', '2024-01-02 16:04:10'),
(156, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'hcm', NULL, 1980000, 66000000, 21780000, 46200000, NULL, NULL, NULL, 3, 0, '2024-01-03 04:08:27', '2024-01-03 14:30:15'),
(157, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'hcm', NULL, 1980000, 66000000, 21780000, 46200000, NULL, NULL, NULL, 3, 0, '2024-01-03 04:10:45', '2024-01-03 14:30:14'),
(158, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'hcm', NULL, 4400000, 44000000, 48400000, 0, NULL, NULL, NULL, 3, 0, '2024-01-03 04:12:45', '2024-01-03 14:30:13'),
(159, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'hcm', NULL, 100000, 1000000, 1100000, 0, NULL, NULL, NULL, 3, 0, '2024-01-03 04:13:54', '2024-01-03 14:30:13'),
(160, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'hcm', NULL, 2200000, 22000000, 24200000, 0, NULL, NULL, NULL, 3, 0, '2024-01-03 04:16:44', '2024-01-03 14:30:12'),
(161, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'hcm', NULL, 4400000, 44000000, 48400000, 0, NULL, NULL, NULL, 3, 0, '2024-01-03 04:25:53', '2024-01-03 14:30:12'),
(162, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 6600000, 66000000, 72600000, 0, NULL, NULL, NULL, 1, 0, '2024-01-04 06:33:04', '2024-01-04 06:33:23'),
(163, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 8800000, 88000000, 96800000, 0, 'test', 'test', '1233123213', 1, 0, '2024-01-04 06:44:09', '2024-01-04 06:44:26'),
(164, 5, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567895', '1', '456', 'Cần Thơ', NULL, 0, 46980000, 46980000, 0, NULL, NULL, NULL, 1, 0, '2024-01-05 03:34:50', '2024-01-05 03:35:21'),
(167, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 4590000, 45900000, 50490000, 0, NULL, NULL, NULL, 1, 0, '2024-01-05 17:17:51', '2024-01-05 17:28:07'),
(169, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 4590000, 45900000, 50490000, 0, NULL, NULL, NULL, 1, 0, '2024-01-05 17:32:43', '2024-01-05 17:34:12'),
(170, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 5590000, 55900000, 61490000, 0, NULL, NULL, NULL, 1, 0, '2024-01-05 17:34:29', '2024-01-05 17:43:16'),
(171, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 5590000, 55900000, 61490000, 0, NULL, NULL, NULL, 1, 0, '2024-01-05 17:43:49', '2024-01-05 17:44:08'),
(172, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 5590000, 55900000, 61490000, 0, NULL, NULL, NULL, 1, 0, '2024-01-05 17:44:36', '2024-01-05 17:48:15'),
(173, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 5590000, 55900000, 61490000, 0, NULL, NULL, NULL, 1, 0, '2024-01-05 17:49:18', '2024-01-05 17:49:45'),
(175, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 5590000, 55900000, 61490000, 0, NULL, NULL, NULL, 1, 0, '2024-01-05 17:51:41', '2024-01-05 17:52:18'),
(176, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 7385000, 147700000, 81235000, 73850000, NULL, NULL, NULL, 1, 0, '2024-01-06 01:50:11', '2024-01-06 01:51:50'),
(182, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 7385000, 147700000, 81235000, 73850000, NULL, NULL, NULL, 1, 0, '2024-01-06 01:58:45', '2024-01-06 01:59:10'),
(183, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 7385000, 147700000, 81235000, 73850000, NULL, NULL, NULL, 1, 0, '2024-01-06 01:59:42', '2024-01-06 02:00:28'),
(185, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 7385000, 147700000, 81235000, 73850000, NULL, NULL, NULL, 1, 0, '2024-01-06 02:01:43', '2024-01-06 02:02:16'),
(187, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 7385000, 147700000, 81235000, 73850000, NULL, NULL, NULL, 1, 0, '2024-01-06 02:06:09', '2024-01-06 02:06:29'),
(188, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 7385000, 147700000, 81235000, 73850000, NULL, NULL, NULL, 1, 0, '2024-01-06 02:07:21', '2024-01-06 02:07:41'),
(193, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 7385000, 147700000, 81235000, 73850000, NULL, NULL, NULL, 1, 0, '2024-01-06 02:42:05', '2024-01-06 02:42:23'),
(194, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 11180000, 111800000, 122980000, 0, NULL, NULL, NULL, 1, 0, '2024-01-06 02:48:22', '2024-01-06 02:49:12'),
(195, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 10180000, 101800000, 111980000, 0, NULL, NULL, NULL, 1, 0, '2024-01-06 02:53:50', '2024-01-06 02:54:17'),
(196, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 1250000, 25000000, 13750000, 12500000, NULL, NULL, NULL, 1, 0, '2024-01-06 03:35:54', '2024-01-06 03:36:10'),
(197, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 2999000, 29990000, 32989000, 0, NULL, NULL, NULL, 1, 0, '2024-01-06 04:52:16', '2024-01-06 04:52:34'),
(198, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', 'test', 4590000, 45900000, 50490000, NULL, 'test', 'test', 'test', 3, 0, '2024-01-09 12:36:16', '2024-01-09 12:40:03'),
(199, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 4590000, 45900000, 50490000, NULL, NULL, NULL, NULL, 1, 0, '2024-01-09 12:42:37', '2024-01-09 12:42:52'),
(200, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 8099000, 80990000, 89089000, NULL, NULL, NULL, NULL, 1, 0, '2024-01-10 12:27:14', '2024-01-10 12:27:36'),
(202, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 8099000, 161980000, 89089000, 80990000, NULL, NULL, NULL, 1, 0, '2024-01-11 09:20:11', '2024-01-11 09:20:40'),
(203, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 8099000, 161980000, 89089000, 80990000, NULL, NULL, NULL, 1, 0, '2024-01-11 09:22:41', '2024-01-11 09:23:07'),
(205, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 8099000, 161980000, 89089000, 80990000, NULL, NULL, NULL, 1, 0, '2024-01-11 09:26:48', '2024-01-11 09:27:15');

-- --------------------------------------------------------

--
-- Table structure for table `orders__details`
--

CREATE TABLE `orders__details` (
  `orders_id` int UNSIGNED NOT NULL,
  `products_id` int UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders__details`
--

INSERT INTO `orders__details` (`orders_id`, `products_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 4, 4, '2023-11-14 21:42:59', '2023-11-14 21:42:59'),
(1, 2, 4, '2023-11-14 21:42:59', '2023-11-14 21:42:59'),
(3, 1, 3, '2023-11-14 22:09:25', '2023-11-14 22:09:25'),
(3, 4, 1, '2023-11-14 22:09:25', '2023-11-14 22:09:25'),
(5, 2, 2, NULL, NULL),
(8, 2, 2, NULL, NULL),
(8, 10, 3, NULL, NULL),
(9, 4, 5, NULL, NULL),
(9, 10, 7, NULL, NULL),
(10, 3, 1, NULL, NULL),
(10, 1, 2, NULL, NULL),
(11, 4, 4, NULL, NULL),
(12, 10, 3, NULL, NULL),
(13, 1, 1, NULL, NULL),
(13, 2, 1, NULL, NULL),
(13, 3, 1, NULL, NULL),
(13, 10, 3, NULL, NULL),
(13, 4, 1, NULL, NULL),
(14, 2, 1, NULL, NULL),
(14, 4, 1, NULL, NULL),
(14, 1, 1, NULL, NULL),
(14, 10, 1, NULL, NULL),
(15, 3, 1, NULL, NULL),
(15, 4, 1, NULL, NULL),
(16, 3, 1, NULL, NULL),
(16, 4, 1, NULL, NULL),
(19, 3, 1, NULL, NULL),
(19, 4, 1, NULL, NULL),
(20, 3, 2, NULL, NULL),
(21, 3, 1, NULL, NULL),
(21, 4, 1, NULL, NULL),
(22, 3, 1, NULL, NULL),
(22, 4, 1, NULL, NULL),
(23, 3, 1, NULL, NULL),
(23, 4, 1, NULL, NULL),
(30, 4, 1, NULL, NULL),
(32, 3, 1, NULL, NULL),
(32, 4, 1, NULL, NULL),
(33, 3, 1, NULL, NULL),
(33, 4, 1, NULL, NULL),
(34, 3, 1, NULL, NULL),
(34, 4, 1, NULL, NULL),
(35, 3, 1, NULL, NULL),
(35, 4, 1, NULL, NULL),
(36, 3, 1, NULL, NULL),
(36, 4, 1, NULL, NULL),
(37, 3, 1, NULL, NULL),
(37, 4, 1, NULL, NULL),
(38, 3, 1, NULL, NULL),
(38, 10, 1, NULL, NULL),
(39, 3, 1, NULL, NULL),
(39, 10, 1, NULL, NULL),
(40, 3, 1, NULL, NULL),
(40, 10, 1, NULL, NULL),
(41, 4, 1, NULL, NULL),
(41, 2, 1, NULL, NULL),
(42, 4, 1, NULL, NULL),
(42, 10, 1, NULL, NULL),
(43, 4, 1, NULL, NULL),
(43, 10, 1, NULL, NULL),
(44, 4, 1, NULL, NULL),
(44, 10, 1, NULL, NULL),
(45, 4, 1, NULL, NULL),
(45, 10, 1, NULL, NULL),
(46, 3, 1, NULL, NULL),
(46, 4, 1, NULL, NULL),
(47, 10, 1, NULL, NULL),
(47, 4, 1, NULL, NULL),
(48, 4, 1, NULL, NULL),
(48, 3, 1, NULL, NULL),
(49, 3, 1, NULL, NULL),
(49, 4, 1, NULL, NULL),
(50, 3, 1, NULL, NULL),
(50, 4, 1, NULL, NULL),
(51, 10, 1, NULL, NULL),
(51, 1, 1, NULL, NULL),
(52, 3, 1, NULL, NULL),
(52, 4, 1, NULL, NULL),
(53, 3, 3, NULL, NULL),
(53, 4, 1, NULL, NULL),
(54, 3, 3, NULL, NULL),
(54, 4, 2, NULL, NULL),
(55, 3, 1, NULL, NULL),
(55, 4, 1, NULL, NULL),
(56, 4, 3, NULL, NULL),
(56, 3, 2, NULL, NULL),
(57, 4, 1, NULL, NULL),
(57, 3, 1, NULL, NULL),
(58, 10, 1, NULL, NULL),
(58, 3, 1, NULL, NULL),
(59, 3, 6, NULL, NULL),
(59, 4, 1, NULL, NULL),
(60, 3, 1, NULL, NULL),
(60, 4, 1, NULL, NULL),
(61, 3, 1, NULL, NULL),
(61, 4, 1, NULL, NULL),
(62, 3, 1, NULL, NULL),
(62, 2, 1, NULL, NULL),
(63, 3, 1, NULL, NULL),
(63, 2, 1, NULL, NULL),
(64, 1, 1, NULL, NULL),
(64, 10, 1, NULL, NULL),
(65, 3, 2, NULL, NULL),
(65, 4, 3, NULL, NULL),
(66, 4, 1, NULL, NULL),
(66, 10, 1, NULL, NULL),
(67, 4, 1, NULL, NULL),
(68, 2, 1, NULL, NULL),
(68, 3, 1, NULL, NULL),
(69, 3, 1, NULL, NULL),
(69, 10, 1, NULL, NULL),
(70, 10, 1, NULL, NULL),
(71, 2, 1, NULL, NULL),
(71, 1, 5, NULL, NULL),
(71, 3, 1, NULL, NULL),
(71, 4, 1, NULL, NULL),
(72, 1, 1, NULL, NULL),
(72, 2, 1, NULL, NULL),
(73, 3, 1, NULL, NULL),
(73, 4, 1, NULL, NULL),
(74, 3, 1, NULL, NULL),
(74, 4, 1, NULL, NULL),
(75, 4, 1, NULL, NULL),
(75, 3, 1, NULL, NULL),
(76, 10, 1, NULL, NULL),
(76, 4, 1, NULL, NULL),
(76, 3, 1, NULL, NULL),
(77, 2, 1, NULL, NULL),
(77, 1, 1, NULL, NULL),
(78, 1, 1, NULL, NULL),
(78, 2, 1, NULL, NULL),
(79, 4, 1, NULL, NULL),
(79, 3, 1, NULL, NULL),
(80, 3, 1, NULL, NULL),
(80, 4, 1, NULL, NULL),
(81, 10, 1, NULL, NULL),
(81, 4, 1, NULL, NULL),
(82, 4, 1, NULL, NULL),
(82, 10, 1, NULL, NULL),
(83, 3, 1, NULL, NULL),
(83, 4, 1, NULL, NULL),
(84, 10, 1, NULL, NULL),
(84, 1, 1, NULL, NULL),
(85, 1, 1, NULL, NULL),
(85, 2, 1, NULL, NULL),
(86, 3, 1, NULL, NULL),
(86, 4, 1, NULL, NULL),
(87, 2, 1, NULL, NULL),
(88, 2, 1, NULL, NULL),
(89, 2, 1, NULL, NULL),
(90, 2, 1, NULL, NULL),
(91, 3, 2, NULL, NULL),
(92, 3, 3, NULL, NULL),
(93, 1, 1, NULL, NULL),
(93, 4, 1, NULL, NULL),
(93, 10, 1, NULL, NULL),
(93, 2, 1, NULL, NULL),
(94, 2, 1, NULL, NULL),
(94, 1, 1, NULL, NULL),
(94, 3, 1, NULL, NULL),
(95, 3, 9, NULL, NULL),
(95, 2, 13, NULL, NULL),
(96, 1, 1, NULL, NULL),
(96, 4, 1, NULL, NULL),
(96, 3, 2, NULL, NULL),
(97, 13, 1, NULL, NULL),
(98, 13, 1, NULL, NULL),
(99, 2, 1, NULL, NULL),
(100, 13, 1, NULL, NULL),
(101, 13, 2, NULL, NULL),
(4294967295, 13, 4, NULL, NULL),
(4294967295, 2, 3, NULL, NULL),
(101, 13, 4, NULL, NULL),
(102, 2, 12, NULL, NULL),
(103, 13, 2, NULL, NULL),
(104, 13, 1, NULL, NULL),
(105, 13, 1, NULL, NULL),
(106, 13, 2, NULL, NULL),
(107, 13, 3, NULL, NULL),
(107, 2, 1, NULL, NULL),
(108, 13, 1, NULL, NULL),
(108, 2, 1, NULL, NULL),
(109, 13, 1, NULL, NULL),
(109, 2, 1, NULL, NULL),
(110, 13, 1, NULL, NULL),
(111, 13, 2, NULL, NULL),
(112, 13, 2, NULL, NULL),
(113, 13, 2, NULL, NULL),
(114, 13, 2, NULL, NULL),
(115, 13, 2, NULL, NULL),
(116, 13, 2, NULL, NULL),
(117, 13, 3, NULL, NULL),
(118, 13, 3, NULL, NULL),
(119, 13, 3, NULL, NULL),
(120, 13, 3, NULL, NULL),
(121, 13, 3, NULL, NULL),
(121, 2, 3, NULL, NULL),
(122, 13, 1, NULL, NULL),
(123, 13, 1, NULL, NULL),
(124, 13, 2, NULL, NULL),
(125, 13, 2, NULL, NULL),
(126, 13, 2, NULL, NULL),
(127, 13, 3, NULL, NULL),
(128, 13, 1, NULL, NULL),
(129, 13, 1, NULL, NULL),
(130, 13, 1, NULL, NULL),
(131, 13, 1, NULL, NULL),
(132, 13, 1, NULL, NULL),
(133, 13, 1, NULL, NULL),
(134, 13, 1, NULL, NULL),
(135, 13, 2, NULL, NULL),
(136, 13, 1, NULL, NULL),
(137, 13, 1, NULL, NULL),
(137, 2, 1, NULL, NULL),
(137, 1, 1, NULL, NULL),
(138, 13, 1, NULL, NULL),
(139, 13, 2, NULL, NULL),
(140, 13, 1, NULL, NULL),
(140, 1, 1, NULL, NULL),
(140, 16, 1, NULL, NULL),
(141, 13, 3, NULL, NULL),
(142, 13, 4, NULL, NULL),
(143, 13, 1, NULL, NULL),
(143, 2, 1, NULL, NULL),
(144, 13, 1, NULL, NULL),
(144, 1, 1, NULL, NULL),
(144, 18, 10, NULL, NULL),
(145, 13, 1, NULL, NULL),
(145, 17, 1, NULL, NULL),
(145, 18, 3, NULL, NULL),
(146, 13, 1, NULL, NULL),
(146, 17, 1, NULL, NULL),
(146, 18, 3, NULL, NULL),
(147, 13, 2, NULL, NULL),
(147, 17, 1, NULL, NULL),
(147, 18, 3, NULL, NULL),
(148, 13, 3, NULL, NULL),
(148, 17, 1, NULL, NULL),
(148, 18, 3, NULL, NULL),
(149, 13, 4, NULL, NULL),
(149, 17, 1, NULL, NULL),
(149, 18, 3, NULL, NULL),
(149, 2, 1, NULL, NULL),
(150, 13, 4, NULL, NULL),
(150, 17, 1, NULL, NULL),
(150, 18, 3, NULL, NULL),
(150, 2, 1, NULL, NULL),
(151, 13, 4, NULL, NULL),
(151, 17, 1, NULL, NULL),
(151, 18, 3, NULL, NULL),
(151, 2, 2, NULL, NULL),
(152, 13, 5, NULL, NULL),
(152, 17, 1, NULL, NULL),
(152, 18, 3, NULL, NULL),
(152, 2, 2, NULL, NULL),
(153, 13, 6, NULL, NULL),
(153, 17, 1, NULL, NULL),
(153, 18, 3, NULL, NULL),
(153, 2, 2, NULL, NULL),
(154, 13, 6, NULL, NULL),
(154, 17, 1, NULL, NULL),
(154, 18, 3, NULL, NULL),
(154, 2, 2, NULL, NULL),
(155, 13, 6, NULL, NULL),
(155, 17, 1, NULL, NULL),
(155, 18, 3, NULL, NULL),
(155, 2, 2, NULL, NULL),
(156, 13, 3, NULL, NULL),
(157, 13, 3, NULL, NULL),
(158, 13, 2, NULL, NULL),
(159, 2, 1, NULL, NULL),
(160, 13, 1, NULL, NULL),
(161, 13, 2, NULL, NULL),
(162, 13, 3, NULL, NULL),
(163, 13, 4, NULL, NULL),
(164, 13, 1, NULL, NULL),
(164, 16, 1, NULL, NULL),
(165, 1, 1, NULL, NULL),
(165, 2, 1, NULL, NULL),
(166, 1, 5, NULL, NULL),
(167, 1, 1, NULL, NULL),
(168, 1, 2, NULL, NULL),
(169, 1, 1, NULL, NULL),
(170, 17, 1, NULL, NULL),
(170, 1, 1, NULL, NULL),
(171, 1, 1, NULL, NULL),
(171, 17, 1, NULL, NULL),
(172, 1, 1, NULL, NULL),
(172, 17, 1, NULL, NULL),
(173, 1, 1, NULL, NULL),
(173, 17, 1, NULL, NULL),
(174, 1, 1, NULL, NULL),
(174, 17, 1, NULL, NULL),
(175, 1, 1, NULL, NULL),
(175, 17, 1, NULL, NULL),
(176, 1, 3, NULL, NULL),
(176, 17, 1, NULL, NULL),
(182, 1, 3, NULL, NULL),
(182, 17, 1, NULL, NULL),
(183, 1, 3, NULL, NULL),
(183, 17, 1, NULL, NULL),
(185, 1, 3, NULL, NULL),
(185, 17, 1, NULL, NULL),
(187, 1, 3, NULL, NULL),
(187, 17, 1, NULL, NULL),
(188, 1, 3, NULL, NULL),
(188, 17, 1, NULL, NULL),
(189, 1, 3, NULL, NULL),
(189, 17, 1, NULL, NULL),
(193, 1, 3, NULL, NULL),
(193, 17, 1, NULL, NULL),
(193, 1, 3, NULL, NULL),
(193, 17, 1, NULL, NULL),
(194, 1, 2, NULL, NULL),
(194, 17, 2, NULL, NULL),
(194, 1, 2, NULL, NULL),
(194, 17, 2, NULL, NULL),
(195, 1, 2, NULL, NULL),
(195, 17, 1, NULL, NULL),
(196, 17, 1, NULL, NULL),
(196, 13, 1, NULL, NULL),
(196, 17, 2, NULL, NULL),
(196, 13, 1, NULL, NULL),
(197, 16, 1, NULL, NULL),
(198, 1, 1, NULL, NULL),
(199, 1, 1, NULL, NULL),
(200, 2, 1, NULL, NULL),
(205, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `cat_id` bigint UNSIGNED NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `brands_id` bigint UNSIGNED NOT NULL,
  `sub_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT '0',
  `price_new` double DEFAULT '0',
  `quantity` int DEFAULT '0',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `featured_product` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cat_id`, `users_id`, `brands_id`, `sub_id`, `name`, `youtube_path`, `price`, `price_new`, `quantity`, `content`, `featured_product`, `status`, `created_at`, `updated_at`) VALUES
(1, 17, 2, 5, 32, 'Macbook Pro 14 M2 Pro 10CPU 16GPU 16GB 512GB Silver - MPHH3SA/A', 'tSM9SzCJu0g', 52990000, 45900000, 8, '<h2><strong>Thông số kỹ thuật:&nbsp;</strong></h2><figure class=\"table\"><table><tbody><tr><td><a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\"><strong>CPU</strong></a></td><td>M2 PRO 10CPU 16GPU</td></tr><tr><td><a href=\"https://gearvn.com/pages/man-hinh\"><strong>Màn hình</strong></a></td><td>14-inch Liquid Retina XDR display</td></tr><tr><td><a href=\"https://gearvn.com/collections/ram-pc\"><strong>RAM</strong></a></td><td>16GB</td></tr><tr><td><strong>Dung lượng pin</strong></td><td>Longer battery life, up to 18 hours</td></tr><tr><td><strong>Bộ nhớ</strong></td><td><a href=\"https://gearvn.com/collections/ram-pc\">SSD</a>&nbsp;512GB</td></tr><tr><td><strong>Cổng kết nối</strong></td><td>MagSafe 3, 3x Thunderbolt 4, HDMI, SDXC Card, Jack 3.5mm</td></tr><tr><td><strong>Bàn phím</strong></td><td>Magic Keyboard &amp; Touch ID</td></tr><tr><td><strong>Kết nối không dây</strong></td><td>Bluetooth 5.3, Wi-Fi 6 (802.11ax)</td></tr><tr><td><strong>Camera</strong></td><td>1080p FaceTime HD camera</td></tr><tr><td><strong>Audio</strong></td><td>3 micro studio. 6 loa</td></tr><tr><td><strong>Hệ điều hành</strong></td><td>MacOS</td></tr><tr><td><strong>Kích thước</strong></td><td>31.26 cm x 22.12 cm x 1.55 cm</td></tr><tr><td><strong>Trọng lượng</strong></td><td>1.60 kg</td></tr></tbody></table></figure><h2><strong>Đánh giá chi tiết&nbsp;Macbook Pro 14 M2 Pro 10CPU 16GPU 16GB 512GB Silver - MPHH3SA/A</strong></h2><p>&nbsp;</p><p>Macbook Pro 14 M2 Pro 10CPU 16GPU 16GB 512GB Silver - MPHH3SA/A mang đến một siêu phẩm laptop học tập và làm việc thế hệ mới. Thừa hưởng vẻ đẹp sang trọng từ thương hiệu Apple cùng hiệu năng vượt trội được xử lý từ con chip M2 mạnh mẽ. Hứa hẹn đây sẽ là một trong những chiếc laptop làm mưa làm gió trên thị trường. Cùng GEARVN tìm hiểu xem Macbook Pro 14 M2 Pro này có gì đáng mong đợi nhé.</p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-macbook-pro-14-m2-pro-10cpu-16gpu-16gb-512gb-silver-mphh3sa-a-1_4492113852c14595827d0ba7ca8eac3e.png\" alt=\"GEARVN Macbook Pro 14 M2 Pro 10CPU 16GPU 16GB 512GB Silver - MPHH3SA/A\"></p><h3><strong>Bước nhảy vọt về hiệu suất từ con chip M2</strong></h3><p><a href=\"https://gearvn.com/collections/macbook-pro-14-m2\">Macbook Pro 14 M2</a> Pro để đánh giá về vẻ bề ngoài so với những phiên bản trước đây có lẽ không có sự thay đổi gì nhiều. Ngoại hình vẫn giữ được nét đẹp sang trọng với tông màu Silver đặc trưng. Điểm khác biệt mà bạn có thể cảm nhận được trên chiếc Macbook nhà <a href=\"https://gearvn.com/pages/apple\">Apple</a> này là hiệu năng mạnh mẽ từ con chip M2. Với cấu trúc CPU 10 nhân mang đến tốc độ xử lý công việc trôi chảy hơn bao giờ hết. Kết hợp cùng 16 nhân GPU cho kết xuất đồ họa đẹp mắt. Đáp ứng mọi nhu cầu thiết kế hình ảnh, dựng video, giải trí,...&nbsp;</p><p><img src=\"https://file.hstatic.net/1000026716/file/earvn-macbook-pro-14-m2-pro-10cpu-16gpu-16gb-512gb-silver-mphh3sa-a-11_28a5a0fd58ce4bc3979de6dcf9bbb428.png\" alt=\"GEARVN Macbook Pro 14 M2 Pro 10CPU 16GPU 16GB 512GB Silver - MPHH3SA/A\"></p><p>&nbsp;</p><h3><strong>Hệ thống tản nhiệt tối ưu cho laptop nhỏ gọn</strong></h3><p><a href=\"https://gearvn.com/collections/macbook\">Macbook Pro</a> 14 M2 Pro trang bị quạt tản nhiệt tiên tiến, nhanh chóng làm mát, lưu thông luồng khí để bạn luôn có được hiệu năng ổn định trong thời gian dài. Sẵn sàng cho những công việc cần hoạt động liên tục, những tác vụ đòi hỏi khả năng xử lý cao mà máy vẫn hết sức mượt mà.</p><h3><strong>Chiếc Macbook có thời lượng pin lâu nhất từ trước đến nay</strong></h3><p>Macbook Pro 14 M2 Pro sở hữu thời lượng pin lâu nhất từ trước đến nay. Theo Apple với phiên bản này Macbook có thể kéo dài năng suất làm việc lên đến 18 giờ đồng hồ. Bạn sẽ có được khoảng thời gian làm việc thoải mái hơn, linh hoạt hơn mà không cần lo cạn năng lượng.&nbsp;</p><p><img src=\"https://file.hstatic.net/1000026716/file/earvn-macbook-pro-14-m2-pro-10cpu-16gpu-16gb-512gb-silver-mphh3sa-a-13_2d2e5fa0fe6040479357789a1d6b4002.png\" alt=\"GEARVN Macbook Pro 14 M2 Pro 10CPU 16GPU 16GB 512GB Silver - MPHH3SA/A\"></p><p>Ngoài ra với chế độ sạc nhanh máy có thể sạc từ 0% lên đến 50% chỉ trong vòng 30 phút. Tiện lợi và nhanh chóng cho những lần cần nạp nguồn điện tốt hơn.&nbsp;&nbsp;</p><h3><strong>Hiển thị màu sắc hoàn hảo</strong></h3><p>Vẻ đẹp của màn hình Liquid Retina XDR trên Macbook Pro 14 M2 Pro thật khó có thể để diễn tả thành lời. Từ văn bản sắc nét cho đến hình ảnh rõ ràng, độ chi tiết hoàn hảo và sự chân thực đáng kinh ngạc. Đèn nền LED mang tới màu đen sâu và ánh sáng trắng phù hợp. Hơn&nbsp;nữa, Macbook Pro 14 M2 Pro&nbsp;còn hỗ trợ True Tone, điều chỉnh màu sắc theo môi trường và ánh sáng xung quanh để bạn luôn có được trải nghiệm xem dễ chịu nhất.</p><p><img src=\"https://file.hstatic.net/1000026716/file/earvn-macbook-pro-14-m2-pro-10cpu-16gpu-16gb-512gb-silver-mphh3sa-a-10_e21e75e271274b878248f1154784460a.png\" alt=\"GEARVN Macbook Pro 14 M2 Pro 10CPU 16GPU 16GB 512GB Silver - MPHH3SA/A\"></p><h3><strong>Hỗ trợ camera 1080p sắc nét&nbsp;</strong></h3><p>Macbook Pro 14 M2 Pro hỗ trợ bạn trong những cuộc gọi video tốt hơn với camera 1080p. Khả năng xử lý hình ảnh thông minh trong nhiều điều kiện thiếu sáng để bạn luôn xuất hiện trong những cuộc họp trực tuyến hay video call tán ngẫu cùng bạn bè chất lượng.&nbsp;</p><h3><strong>Bàn phím Magic Keyboard&nbsp;và Touch ID</strong></h3><p>Trên Macbook Pro 14 M2 Pro, bàn phím <a href=\"https://gearvn.com/products/apple-magic-keyboard-2-silver\">Magic Keyboard</a> mới với cơ chế cắt kéo tinh chỉnh mang lại trải nghiệm gõ phím nhanh, nhạy và yên tĩnh. Cảm biến vân tay&nbsp;thay thế thao tác nhập mật khẩu chỉ bằng một cú chạm cực nhạy. Tất cả đều hướng tới sự nhanh chóng, tiện lợi nhất cho bạn khi làm việc với Macbook Pro.</p><h3><strong>Hỗ trợ những kết nối cao cấp nhất</strong></h3><p>Macbook Pro 14 M2 Pro tích hợp những kết nối nhanh hàng đầu thế giới hiện nay, dù là kết nối không dây hay có dây. Thế hệ Wi-Fi 6 vừa nhanh hơn, vừa cho chất lượng sóng khỏe hơn, kể cả khi bạn truy cập mạng ở nơi công cộng có nhiều người dùng cùng lúc. Trong khi đó cổng Thunderbolt 4 không chỉ có tốc độ cao mà còn hết sức đa năng. Bạn có thể dùng cổng kết nối này để sạc, xuất hình độ phân giải lên tới 8K, truyền dữ liệu siêu tốc 200Gb/s và kết nối với nhiều thiết bị ngoại vi khác.</p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-macbook-pro-14-m2-pro-10cpu-16gpu-16gb-512gb-silver-mphh3sa-a-9_db73f064c65d430cb255c32a168f9ce2.png\" alt=\"GEARVN Macbook Pro 14 M2 Pro 10CPU 16GPU 16GB 512GB Silver - MPHH3SA/A\"></p>', 1, 1, '2023-10-26 08:30:30', '2024-01-09 12:42:52'),
(2, 2, 2, 8, 4, 'Laptop ASUS Zenbook 14 OLED UX3405MA-PP151W (Ultra 5-125H/RAM 16GB/512GB SSD/ Windows 11)', 'htzrfj14Vb0', 80990000, 0, 7, '<h2><strong>ĐẶC ĐIỂM NỔI BẬT</strong></h2><h2><strong>ROG ZEPHYRUS M16&nbsp;RUNG CẢM XÚC. CHẠM CHIẾN THẮNG.</strong></h2><p>Là dòng sản phẩm dành riêng cho game thủ và người sáng tạo nội dung, <strong>ROG Zephyrus M16 GU604VI-NM779W</strong> được tái thiết kế với tôn chỉ tiếp tục phát huy thiết kế mỏng nhẹ đặc trưng, cải tiến hệ thống tản nhiệt vượt trội hơn nhờ hệ thống khe thoát nhiệt bao quanh thân máy và công nghệ tản nhiệt 3 quạt (Tri-Fan Technology). Trang bị CPU lên đến <strong>Intel Core™ i9 13900H</strong> và GPU lên đến <strong>NVIDIA GeForce RTX 4070</strong> laptop GPU kèm công nghệ MUX Switch và NVIDIA Advanced Optimus.&nbsp;</p><p>ROG Zephyrus M16 còn được nâng tầm về mặt hiển thị, với màn hình 16-inch <strong>độ phân giải 2K</strong> đạt chuẩn <strong>ROG Nebula HDR</strong>. Với tần số quét <strong>240Hz</strong> và chuẩn màu <strong>100% DCI-P3</strong>, các game thủ có thể thỏa sức đắm chìm trong không gian ảo với độ chân thực cao nhất. ROG Zephyrus M16 cũng là dòng Laptop 16-inch đầu tiên được trang bị màn hình <strong>LED AniMe Matrix™</strong> độc đáo của ROG, cho phép các game thủ thỏa sức sáng tạo và thể hiện cá tính của mình ở bất cứ nơi đâu.</p><p><a href=\"https://hangchinhhieu.vn/products/laptop-asus-rog-zephyrus-m16-gu604vi-nm779w-i9-13900h/\"><img src=\"https://file.hstatic.net/1000233206/file/rog_zephyrus_m16_2023_cong_nghe_moi__dien_mao_moi_9c64f420c66e447bb332c590097097ee_grande.png\" alt=\"\"></a></p><p><strong>MÀN HÌNH CHUẨN ROG NEBULA HDR&nbsp;</strong></p><p>Màn hình đạt chuẩn <strong>Nebula </strong>có tốc độ làm mới cao với thời gian phản hồi từ <strong>3ms </strong>giây và độ phủ <strong>100% DCI-P3</strong> cùng độ phân giải lên đến <strong>2K 240Hz</strong> cho chất lượng hiển thị mượt mà, sống động, tỉ lệ khung hình <strong>16:10</strong> nâng cao trải nghiệm chơi game với kích thước rộng rãi.</p><p><img src=\"https://file.hstatic.net/1000233206/file/hien_thi_vuot_troi_voi_man_16_inch_2k_chuan_rog_nebula_86c9029edbf5475083141323c96be174_grande.png\" alt=\"\"></p><h3><strong>SỨC MẠNH KHỦNG CHO MỌI THÁCH THỨC</strong></h3><p>Nhờ vậy <a href=\"https://hangchinhhieu.vn/collections/laptop-gaming-asus-rog-zephyrus\"><strong>ROG Zephyrus M16 2023</strong></a> có khả năng tăng nguồn điện vào cao hơn đến 25W so với thế hệ cũ, cho phép đẩy hiệu năng lên mức cao nhất, với CPU lên đến Intel Core™ <strong>i9 13900H</strong> và GPU lên đến <strong>NVIDIA GeForce RTX 4090</strong> laptop GPU kèm công nghệ <strong>MUX Switch</strong> và <strong>NVIDIA Advanced Optimus</strong>.</p><p><img src=\"https://file.hstatic.net/1000233206/file/trang_bi_cpu_the_he_13_va_card_roi_rtx_40_series_moi_nhat_4b0c9788df274118a05d49728d3b6f73_grande.png\" alt=\"\"></p><h3><strong>MÀN HÌNH LED ANIME MATRIX™ ĐỊNH HÌNH PHONG CÁCH</strong></h3><h3>ROG Zephyrus M16 là <a href=\"https://hangchinhhieu.vn/collections/laptop-choi-game-gaming\"><strong>laptop gaming</strong></a> 16 inch đầu tiên trên thế giới với <strong>AniMe Matrix™</strong> mang tính biểu tượng của ROG, cho phép tạo ra các hình ảnh động lớn hơn với đa dạng các hình hoạt thú cưng OMNI hoặc tự do tùy chỉnh theo sở thích cá nhân, thỏa sức thể hiện cá tính với AniMe Matrix™.</h3><p><img src=\"https://file.hstatic.net/1000233206/file/the_hien_dang_cap_voi_led_anime_matrix_9cb2179a587745a8bc7aa8abb148dfd1_grande.png\" alt=\"\"></p><h3><strong>HỆ THỐNG TẢN NHIỆT VƯỢT TRỘI</strong></h3><h3>Được thiết kế dành cho các game thủ và người sáng tạo, khung máy mới trên <strong>ROG Zephyrus M16</strong> cho phép đưa vào một <strong>bộ tản nhiệt lớn hơn</strong> kết hợp với <strong>công nghệ Tri-Fan</strong> của ROG giúp dẫn luồng khí từ ba quạt thông qua các đường cắt được tính toán chính xác về phía bộ tản nhiệt để làm mát hiệu quả hơn, cho phép đẩy hiệu năng lên mức cao nhất.</h3><p><img src=\"https://file.hstatic.net/1000233206/file/cong_nghe_tan_nhiet_toi_uu_93e1f42973a140bb99f9141484c7c253_grande.png\" alt=\"\"></p><h3><strong>THIẾT KẾ ĐẲNG CẤP, ƯU VIỆT</strong></h3><h3><strong>ROG Zephyrus M16</strong> sử dụng kỹ thuật chế tác đặc biệt kết hợp với màu Đen off black mới, sử dụng lớp hoàn thiện <strong>phun cát nano</strong> độc quyền để chống bám vân tay. ROG Zephyrus M16 là mẫu <strong>laptop gaming</strong> mang đến thiết kế đẳng cấp, thời trang cho người dùng</h3><p><img src=\"https://file.hstatic.net/1000233206/file/thiet_ke_thoi_trang__nang_dong_254695ce00624809b72969388fe7a7cf_grande.png\" alt=\"\"></p><p>Với những thay đổi mới đến từ cấu hình mạnh mẽ bên trong và thiết kế độc đáo, sang trọng ở phiên bản 2023, biến Zephyrus M16 trở thành một trong những mặt hàng “Hot” nhất năm nay.</p><p><a href=\"https://hangchinhhieu.vn/products/laptop-asus-rog-zephyrus-m16-gu604vi-nm779w-i9-13900h/\"><strong>ROG Zephyrus M16 GU604VI-NM779W</strong></a> hiện đang được nhận Pre-order với nhiều ưu đãi hấp dẫn dành cho các quý khách. Bạn hãy đến ngay hệ thống cửa hàng công nghệ <a href=\"https://hangchinhhieu.vn/\">Hangchinhhieu.vn</a> để đặt hàng và rước ngay chiếc laptop gaming cao cấp này về nhé.</p>', 1, 1, '2023-10-26 08:48:22', '2024-01-11 09:27:15'),
(13, 23, 2, 8, 41, 'PC ASUS S500SD S500SD-512400055W (Intel Core i5-12400/8GB/512GB SSD/Windows 11 Home SL 64-bit/WiFi 802.11ax)', 'OSC-DPYiKJI', 16990000, 15000000, 98, '<h2><strong>ĐẶC ĐIỂM NỔI BẬT</strong></h2><h2><strong>Thông số&nbsp;PC ASUS ROG Strix G15CF-71270F110W</strong></h2><figure class=\"table\"><table><tbody><tr><td>CPU</td><td><figure class=\"table\"><table><tbody><tr><td>Intel Core i7-12700F (up to 4.4 GHz, 18MB)</td></tr></tbody></table></figure></td></tr><tr><td>Chipset</td><td>INTEL B660 Chipset</td></tr><tr><td>RAM</td><td>4x khe cắm DDR4 U-DIMM<br>16GB DDR4 U-DIMM<br>Bộ nhớ tối đa lên tới:64GB</td></tr><tr><td>Ổ cứng</td><td>512GB M.2 NVMe™ PCIe® 3.0 SSD</td></tr><tr><td>Card đồ họa</td><td>Nvidia GeForce RTX 3070 8GB</td></tr><tr><td>PSU</td><td>700W</td></tr><tr><td>Giao tiếp</td><td><p>Trước:</p><p>1x Headphone</p><p>1x Mic in</p><p>1x USB 3.2 Gen 1 Type-C</p><p>1x USB 3.2 Gen 1 Type-A</p><p>Sau:</p><p>1x RJ45 Gigabit Ethernet</p><p>1x HDMI 2.0a</p><p>1x Display port 1.4</p><p>5 x Audio jacks</p><p>2x USB 2.0 Type-A</p><p>1x USB 3.2 Gen 1 Type-A</p><p>1x USB 3.2 Gen 2 Type-C</p><p>4x USB 3.2 Gen 2 Type-A</p></td></tr><tr><td>Bluetooth</td><td>Bluetooth 5.2 (Hai băng tần) 2*2</td></tr><tr><td>Chuẩn WIFI</td><td>Wi-Fi 6(802.11ax)</td></tr><tr><td>Hệ điều hành</td><td>Windows 11 Home</td></tr><tr><td>Kích thước</td><td>18.50 x 42.10 x 49.80 cm, 11 Kg</td></tr></tbody></table></figure><h2><strong>Máy tính để bàn Asus Gaming ROG Strix G15CF-51240F141W</strong></h2><p>Nâng cao trải nghiệm chơi game hàng ngày của bạn với máy tính để bàn chơi game mạnh mẽ của dòng PC ASUS&nbsp;ROG Strix được thiết kế phù hợp với mọi ngân sách. Các máy tính để bàn sẵn sàng chiến đấu này được trang bị để mang lại hình ảnh mượt mà mượt mà cho mọi thứ, từ thể thao điện tử cạnh tranh đến các trò chơi AAA.</p><h2><strong>Thiết kế phong cách bí ẩn</strong></h2><p>Một mặt kính trong suốt cho thấy đèn RGB bên trong của GT15, trong khi Aura Sync đảm bảo bạn có thể phối hợp màu sắc và hiệu ứng giữa các thiết bị ngoại vi tương thích. Với phần mềm ROG Armoury Crate và các tính năng tối ưu khác, GT15 luôn sẵn sàng để được tùy chỉnh theo nhu cầu đặc biệt của bạn tạo nên trải nghiệm PC hoàn hảo yêu cầu khả năng cá nhân hóa và tùy biến cao.</p><p><img src=\"https://file.hstatic.net/1000233206/file/may_tinh_gaming_asus_rog_strix_g15cf_11_83520aaa2bad4bbc8d34e66482157140.jpg\" alt=\"\"></p><p>Việc di chuyển và lắp đtặ máy trở lên dễ dàng hơn nhờ quai cầm tích hợp. Mặt bên của PC Asus được làm từ kính cao cấp giúp tăng thêm tính thẩm mỹ vừa có thể hạn chế nhiều điện từ EMI, bảo vệ các thiết bị điện tử xung quanh tốt hơn.</p><p><img src=\"https://file.hstatic.net/1000233206/file/may_tinh_gaming_asus_rog_strix_g15cf_7_7d350f76094f4d18a43f667f82789a89.jpg\" alt=\"\"></p><p>Việc di chuyển và lắp đtặ máy trở lên dễ dàng hơn nhờ quai cầm tích hợp. Mặt bên của PC Asus được làm từ kính cao cấp giúp tăng thêm tính thẩm mỹ vừa có thể hạn chế nhiều điện từ EMI, bảo vệ các thiết bị điện tử xung quanh tốt hơn.</p><p><img src=\"https://file.hstatic.net/1000233206/file/may_tinh_gaming_asus_rog_strix_g15cf_8_f0353e16f2c64e6285bc9e3513512324.jpg\" alt=\"\"></p><p>Quai cầm chắc chắn, bền bỉ&nbsp;được tích hợp trực tiếp vào vỏ máy để bạn có thể dễ dàng di chuyển, lắp đặt&nbsp;nhanh chóng.</p><h2><strong>Hiệu năng nhanh, mượt mà</strong></h2><p><strong>Máy tính để bàn ASUS ROG&nbsp;Strix G15CF-71270F110W</strong>&nbsp;sở hữu<strong>&nbsp;CPU Intel Core i7-12700F thế hệ thứ 12,&nbsp;</strong>có thể ép xung tối đa<strong>&nbsp;4.9GHz.</strong>&nbsp;Bộ vi xử lý với 12&nbsp;nhân với công nghệ siêu phân luồng (Hyper-Threading) cho phép hoạt động lên tới 20 luồng song song giúp tăng tốc xử lý tác vụ đa nhiệm phức tạp và các ứng dụng nặng khác. Game thủ có thể chơi, trò chuyện với đồng đội và phát trực tiếp đồng thời, trong khi đó các tác vụ sáng tạo như biên tập video, kết xuất&nbsp;<strong>3D</strong>&nbsp;được thực hiện nhanh và hiệu quả hơn.</p><p>Card đồ họa rời của nhà NVIDIA,&nbsp;<strong>GeForce RTX 3070&nbsp;8GB&nbsp;</strong>được chế tạo dựa trên kiens truc Turing hàng đầu của NVDIA, có nhân CUDA, RT, Tensor chuyên biệt dành&nbsp;cho đổ bóng có thể lập trình, dò&nbsp;tia thời gian thực và công nghệ AI giúp giọng nói đẹp hơn khi stream. Các lõi này kết hợp tạo nên hiệu ứng mới tuyệt đẹp, bao gồm ánh sáng như ngoài đời thực, phản xạ và đổ bóng để có hình ảnh đắm chìm sâu khi chơi game.</p><p><img src=\"https://file.hstatic.net/1000233206/file/may_tinh_gaming_asus_rog_strix_g15cf_10_81208bd4405e416fa417ef9d4462fa5b.jpg\" alt=\"\"></p><p>Ổ cứng siêu nhanh lên tới<strong>&nbsp;512GB SSD NVMe PCIe&nbsp;</strong>đem lại tốc độ và khả năng đáp ứng kinh ngạc cho hệ thống, tức là bạn có thể làm việc với nhiều dự án đa phương tiện hoặc tham gia các tựa game nặng&nbsp;nhanh hơn bao giờ hết. Bạn&nbsp;cũng có thể lắp đặt thêm ổ cứng<strong>&nbsp;HDD 2TB&nbsp;</strong>để tăng thêm bộ nhớ, cho phép bạn lưu chữ toàn bộ các bộ sưu tập phương tiện&nbsp;và các tựa game hiện đại, ưa thích của mình.</p><p>Ram&nbsp;<strong>16GB DDR4</strong>, tốc độ Bus&nbsp;<strong>3200MHz&nbsp;</strong>có thể nâng cấp lên&nbsp;<strong>64 GB&nbsp;</strong>đảm bảo trải nghiệm đa nhiệm mượt mà hơn, bất kể bạn mở bao nhiêu tab trên trình duyệt hay bao nhiêu ứng dụng. Tham gia các trận đấu nhiều người chơi, phát trực tiếp và liên lạc với đồng đội cùng lúc mà không làm chậm hệ thống của bạn.</p><p><img src=\"https://file.hstatic.net/1000233206/file/may_tinh_gaming_asus_rog_strix_g15cf_9_401ba6ad6d2b4852b4a02c8555323007.jpg\" alt=\"\"></p><h2><strong>Hệ thống tản nhiệt -&nbsp;tối ưu khả năng đối lưu khí</strong></h2><p>Hệ thống tản nhiệt hiệu quả sẽ đem lại hiệu năng cao, bền bỉ cho các tác vụ đa nhiệm và hoạt động chơi game cường độ cao. Được thiết kế với đa buồng khí tản nhiệt, bố trí CPU, card đồ họa và nguồn điện tại các vùng riêng biệt nhằm giảm thiểu hiện tượng giao thoa nhiệt và qua đó tản nhiệt hiệu quả hơn, GT15 có thể đẩy xung nhịp của bộ vi xử lý lên cao nhằm mang lại hiệu năng tổng thể tối ưu hơn.</p><h2><strong>Khả năng kết nối đa dạng</strong></h2><p>Kết nối các thiết bị yêu thích và nhanh chóng đắm mình trò chơi. GT15 được trang bị một cổng Type-C (USB-C) kết nối hai chiều với băng thông giao diện tối đa 10Gbps qua USB 3.2 thế hệ 2 truyền dữ liệu và sạc nhanh, cộng thêm sáu cổng USB 3.2 Type-A giúp bạn có đủ không gian cho tất cả các thiết bị ngoại vi ưa thích. Để chơi game hoặc phát trực tuyến video 4K trên màn hình lớn, hãy kết nối qua cổng HDMI 2.0 hoặc sử cổng DisplayPort 1.4 với màn hình gaming tốc độ làm mới cao.</p><p><img src=\"https://file.hstatic.net/1000233206/file/may_tinh_gaming_asus_rog_strix_g15cf_13_be90570397184e6a90671fe13b318d17.jpg\" alt=\"\"></p>', 1, 1, '2023-11-01 07:35:09', '2024-01-06 04:48:18'),
(16, 1, 2, 3, 1, 'Laptop Acer Nitro 16 Phoenix AN16-41-R5M4 (NH.QKBSV.003) (AMD Ryzen 5-7535HS) (Đen)', NULL, 29990000, 0, 9, '<p>Bạn là một game thủ chuyên nghiệp, luôn muốn có những trải nghiệm chơi game tốt nhất? Bạn cũng là một người có nhiều công việc và học tập, cần một chiếc laptop đa năng và hiệu quả? Bạn còn là một người yêu thích sự đẹp đẽ và thời trang, muốn có một chiếc laptop có thiết kế ấn tượng và tiện lợi? Nếu bạn có tất cả những yêu cầu trên, thì bạn không thể bỏ qua <strong>Laptop Gaming </strong><a href=\"https://phongvu.vn/c/laptop-acer-nitro#acer-nitro-16\"><strong>ACER NITRO 16</strong></a><strong> PHOENIX</strong> - chiếc laptop gaming quốc dân của ACER, được Phong Vũ giới thiệu với <a href=\"https://phongvu.vn/c/laptop-acer#laptop-acer-gia-re\">laptop acer giá rẻ</a> hợp lý. <strong>Laptop Gaming ACER NITRO 16 PHOENIX</strong> sẽ làm hài lòng bạn với những tính năng dưới đây, cùng Phong Vũ tìm hiểu ở bài viết dưới đây nhé!</p><h2>Đập hộp Acer Nitro 16 Phoenix AN16-41-R5M4 (NH.QKBSV.003)</h2><figure class=\"media\"><oembed url=\"https://www.youtube.com/watch?v=l7-RgPr3uhM\"></oembed></figure><p>Video <strong>Đập Hộp Acer Nitro 16 Phoenix - AMD Ryzen 7, RTX 4050</strong></p><h2><strong>Laptop Gaming Quốc Dân - Cấu Hình Mạnh Mẽ và Thiết Kế Đẹp Mắt</strong></h2><p>Laptop Gaming Quốc Dân là một thuật ngữ được sử dụng để chỉ những chiếc laptop chơi game có cấu hình mạnh mẽ và thiết kế đẹp mắt, phù hợp với nhu cầu của người chơi game. Acer Nitro 16 Phoenix là một chiếc <a href=\"https://phongvu.vn/c/laptop-acer-gaming#laptop-acer-gaming\">laptop Acer gaming</a> ấn tượng với thiết kế cấu trúc gaming từ bên ngoài cho đến vỏ hộp. Thiết kế này tạo nên một phong cách mạnh mẽ, độc đáo và tinh tế. Máy tính còn được điểm xuyết bởi các viền neon tinh tế, tạo sự hòa hợp và thu hút mọi ánh nhìn đến từ góc “setup” của game thủ.&nbsp;</p><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/5/17/efa30c64-147a-4cbb-8cbd-4f706a7cb2e5/ACER%20Nitro%2016%20Phoenix%20%281%29.jpg\" alt=\" Laptop Gaming ACER NITRO 16 PHOENIX có gì đặc biệt?\"><figcaption>&nbsp;Laptop Gaming ACER NITRO 16 PHOENIX có gì đặc biệt?</figcaption></figure><h2><strong>CARD ĐỒ HỌA RỜI CỰC KHỦNG MỚI NHẤT TỪ NVIDIA - Trang bị GPU RTX™ 4050</strong></h2><p>Với <strong>GPU GeForce RTX™ Series 40</strong> mới nhất, <strong>Gaming Nitro 16 Phoenix </strong>đem đến sức mạnh đồ họa vô cùng ấn tượng cho cả game thủ và những người sáng tạo. Card đồ họa thế hệ mới này được phát triển dựa trên kiến trúc NVIDIA Ada Lovelace, tối ưu hiệu suất và tiết kiệm năng lượng, mang đến sức mạnh đồ họa vượt trội so với thế hệ trước.</p><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/5/16/c4b72f2e-461c-43c3-aecb-7c7a5b6d5a90/image.png\" alt=\"ACER NITRO 16 PHOENIX | Card đồ họa rời RTX 4050\"><figcaption>ACER NITRO 16 PHOENIX | Card đồ họa rời RTX 4050</figcaption></figure><h2><strong>MÀN HÌNH 165HZ CHUẨN GAMING</strong></h2><p>Màn hình rộng <strong>16 inch với tỉ lệ 16:10</strong> trên Gaming Nitro 16 Phoenix được thiết kế đặc biệt cho gaming, với <strong>tấm nền IPS</strong> và độ phân giải <strong>WUXGA (1920×1200)</strong>. Tần số quét cao <strong>lên đến 165Hz</strong> cùng tính năng <strong>NVIDIA Advanced Optimus</strong> đảm bảo trải nghiệm chơi game mượt mà và không gặp gián đoạn hay hiện tượng bóng mờ. Điều đáng chú ý là màn hình của Nitro 16 Phoenix còn có độ phủ màu <strong>100% sRGB</strong>, một chỉ số hiếm thấy trong dòng Laptop Gaming tầm trung từ 20 đến 40 triệu đồng.</p><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/5/16/7e1ab251-cd81-4ff1-8457-a22565ce1d15/image.png\" alt=\"ACER NITRO 16 PHOENIX | Màn hình 165HZ chuẩn Gaming\"><figcaption>ACER NITRO 16 PHOENIX | Màn hình 165HZ chuẩn Gaming</figcaption></figure><h2><strong>CHIẾN GAME KHÔNG GIỚI HẠN VỚI CPU AMD RYZEN™ 7000 SERIES</strong></h2><p><strong>Nitro 16 Phoenix 2023</strong> sở hữu cấu hình chiến game cực mạnh, cân mọi tựa game từ AAA đến game Esport. Điều này được thực hiện nhờ sự trang bị của <strong>CPU AMD Ryzen™ 7000 Series</strong> mới nhất, đặc biệt là <strong>Ryzen™ 5 7535HS</strong>, <a href=\"https://phongvu.vn/c/laptop-acer-ryzen-5#laptop-acer-ryzen-5\">Laptop Acer ryzen 5</a> là sự lựa chọn hàng đầu cho những game thủ yêu thích \"Đội Đỏ\". Với kiến trúc <strong>Zen 3+</strong> và công nghệ <strong>6nm</strong>, CPU này mang lại hiệu suất ấn tượng với <strong>6 nhân xử lý</strong> và <strong>12 luồng</strong>, cùng với bộ nhớ đệm lên đến <strong>16MB</strong>. Điều này đảm bảo khả năng xử lý nhanh chóng và mượt mà trong khi chơi game, đồng thời tối ưu hóa hiệu suất và tiết kiệm năng lượng.</p><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/5/16/228b2163-2b75-461c-ac2a-59cda8e988af/image.png\" alt=\"ACER NITRO 16 PHOENIX | AMD Ryzen 7000 Series\"><figcaption>ACER NITRO 16 PHOENIX | AMD Ryzen 7000 Series</figcaption></figure><h2><strong>GIẢI PHÁP TẢN NHIỆT TIÊN TIẾN VỚI 2 QUẠT SIÊU MÁT TRONG PHÂN KHÚC</strong></h2><p>Chiếc <strong>Laptop RTX 4050</strong> của nhà Acer này được thiết kế với khung máy được tối ưu và điều chỉnh đặc biệt để nâng cao khả năng tản nhiệt, đây là một trong những thành tựu mà Acer Predator tự hào mang đến. Được trang bị <strong>2 quạt tản nhiệt, 2 cổng hút gió</strong> (trên và dưới) và <strong>4 cổng thoát nhiệt</strong>, máy đạt đến một tầm cao mới trong việc tản nhiệt hiệu quả.</p><p>Đặc biệt, phiên bản 2023 của dòng Laptop Gaming Nitro 5 còn được trang bị tản nhiệt <strong>Kim Loại Lỏng cho CPU</strong>, giúp tăng cường hiệu suất làm mát và đảm bảo sức mạnh xử lý cùng độ bền bỉ lâu dài. Ngoài ra, để bạn có thể kiểm soát hệ thống của mình một cách tốt hơn, điều chỉnh tốc độ quạt và chế độ đèn theo ý muốn, chỉ cần kích hoạt<strong> </strong><a href=\"https://phongvu.vn/cong-nghe/phan-mem-nitro-sense/\"><strong>NitroSense</strong></a> - phần mềm tối ưu hóa độc quyền của Acer dành riêng cho Nitro Gaming.</p><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/5/16/d914ef1a-26e1-41fc-996c-154e9fbcdd03/image.png\" alt=\"Acer Nitro 16 | 2 QUẠT SIÊU MÁT TRONG PHÂN KHÚC\"><figcaption>Acer Nitro 16 | 2 QUẠT SIÊU MÁT TRONG PHÂN KHÚC</figcaption></figure><h2><strong>BÀN PHÍM LED RGB 4 VÙNG ĐẸP MẮT</strong></h2><p>Tận hưởng chiến thắng cuối cùng với bàn phím <strong>Led RGB 4 vùng</strong>, mang đến hiệu ứng ánh sáng đa dạng và tùy chỉnh, giúp bạn tạo nên không gian chơi game độc đáo trên <strong>Nitro 16 Phoenix</strong>. Quyền kiểm soát toàn diện của máy gaming này cũng nằm trong tay bạn với phím tắt <strong>NitroSense</strong>, cho phép bạn dễ dàng điều chỉnh các thiết lập và tùy chỉnh hệ thống theo ý muốn.</p><p>Đặc biệt, các phím di chuyển <strong>\"WASD\" và 4 phím mũi tên</strong> cũng được thiết kế đặc biệt, nổi bật hơn để dễ dàng thao tác trong những tình huống quyết định và những phản ứng nhanh chóng. Điều này đảm bảo rằng bạn có sự thuận tiện tối đa khi tham gia vào các trận đấu gay cấn.</p><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/5/16/121a4eb5-f1e6-4471-9301-22df212e5b5c/image.png\" alt=\"ACER NITRO 16 PHOENIX | Bàn phím 4 vùng LED siêu đẹp\"><figcaption>ACER NITRO 16 PHOENIX | Bàn phím 4 vùng LED siêu đẹp</figcaption></figure><h2><strong>NÂNG TẦM TRẢI NGHIỆM ÂM THANH</strong></h2><p><strong>Nitro 16 Phoenix</strong> đem đến chất lượng âm thanh tốt hơn, mang lại lợi thế cạnh tranh to lớn trong các trận chiến với <strong>2 loa 2W</strong> trang bị công nghệ <strong>DTS:X® Ultra</strong>.</p><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/5/16/d6f23694-fbca-4255-b41f-7d0d23a7bafe/image.png\" alt=\"Nitro 16 Phoenix | Nâng tầm trải nghiệm âm thanh\"><figcaption>Nitro 16 Phoenix | Nâng tầm trải nghiệm âm thanh</figcaption></figure><h2><strong>ĐA DẠNG &amp; ĐẦY ĐỦ CỔNG KẾT NỐI</strong></h2><p><strong>Gaming Nitro 16 Phoenix</strong> phiên bản trang bị CPU AMD hỗ trợ tất cả thiết bị ngoại vi cần thiết, nhờ sở hữu đa dạng các cổng kết nối. Điều này bao gồm <strong>HDMI 2.1</strong> để hỗ trợ chất lượng hình ảnh siêu tốc và chuẩn USB 3.2 mới nhất (bao gồm cả Gen 1 và 2) để đảm bảo tốc độ truyền tải nhanh chóng.</p><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/5/16/079254d7-3e4d-4ce8-9c52-45cdff7350a8/image.png\" alt=\"ACER NITRO 16 PHOENIX | Đa dạng cổng kết nối\"><figcaption>Nitro 16 Phoenix | đa dạng cổng kết nối</figcaption></figure><h4>Dưới đây là các cổng kết nối được tích hợp trên Laptop Gaming Quốc Dân 2023 - Gaming Nitro 16 AMD Ryzen 7000:</h4><ul><li><strong>HDMI 2.1</strong>: Đảm bảo chất lượng truyền tải hình ảnh siêu tốc.</li><li><strong>USB 3.2 Gen 1</strong>: Tốc độ truyền tải 5Gb/s.</li><li><strong>USB 3.2 Gen 2 Type-A</strong>: Tốc độ truyền tải 10Gb/s và hỗ trợ tính năng sạc điện.</li></ul><p>Nhờ các cổng kết nối đa dạng này, Gaming Nitro 16 Phoenix đáp ứng đầy đủ nhu cầu kết nối và tương thích với các thiết bị ngoại vi hiện đại.</p><p>Ngoài game thủ, <strong>laptop Gaming Acer Nitro 16 Phoenix 2023 </strong>với <strong>GPU NVIDIA GeForce RTX 4050</strong> cũng phù hợp cho người sáng tạo nghệ thuật, nghệ sĩ, sinh viên ngành công nghệ thông tin,... Với sức mạnh đồ họa của máy, bạn có thể tạo ra những thiết kế độc đáo, dựng phim và biên tập video với hiệu suất mượt mà và chất lượng cao. Acer Nitro 16 Phoenix là sự lựa chọn tuyệt vời cho những người muốn thể hiện tài năng và sáng tạo, và tạo ra những tác phẩm đỉnh cao.</p><h2><strong>DỊCH VỤ BẢO HÀNH VIP 3S1</strong></h2><p>Khi mua sản phẩm tại Phong Vũ, bạn sẽ tiếp tục được tận hưởng chế độ&nbsp;<a href=\"https://www.acervietnam.com.vn/bao-hanh-3s1\">bảo hành VIP 3S1</a> do Acer Việt Nam cung cấp. Đây là một chính sách bảo hành nhanh dành riêng cho game thủ, đảm bảo rằng bạn sẽ nhận được sự chăm sóc tốt nhất cho sản phẩm của mình. Đặc biệt, các dòng sản phẩm Gaming như Nitro 16 Phoenix sẽ được kiểm tra, bảo hành và trả lại cho khách hàng chỉ trong thời gian ngắn: 03 ngày (72 giờ), kể cả vào các ngày thứ 7 và Chủ nhật. Nếu bất kỳ vấn đề nào không được giải quyết trong thời gian bảo hành này, bạn sẽ được đổi lấy một sản phẩm mới cùng loại hoặc tương đương (1 đổi 1).</p><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/5/17/94def63c-722c-47c3-907d-6a10c7340e11/bao%20hanh%20acer%20nitro%2016.jpg\" alt=\"ACER NITRO 16 PHOENIX | Bảo hành VIP 3S1\"><figcaption>Nitro 16 Phoenix | Bảo hành VIP 3S1</figcaption></figure><p>Hơn nữa, khi mua sản phẩm này, bạn sẽ nhận được một bộ quà tặng hấp dẫn trị giá 7 triệu đồng gồm chuột, bàn phím và balo. Đây là những phụ kiện thiết yếu giúp bạn trải nghiệm tốt hơn và tận dụng tối đa khả năng chơi game của Nitro 16 Phoenix.</p><p>Hãy truy cập ngay vào website của <strong>Phong Vũ</strong> hoặc ghé thăm showroom gần nhất để đặt mua sản phẩm độc quyền này và trải nghiệm sức mạnh của Gaming Nitro 16 Phoenix ngay hôm nay nhé!</p><h3>Một số câu hỏi thường gặp:</h3><ul><li><strong>Acer Nitro 16 Phoenix</strong> này làm bên đồ họa ổn không?</li></ul><p><strong>Trả lời:</strong> <strong>RTX 4050 6GB GDDR6 / AMD Radeon 660M</strong> cộng thêm màn hình đã lên <strong>100% sRGB </strong>rất phù hợp cho công việc đồ họa.</p><ul><li>Mua <strong>Acer Nitro 16 Phoenix</strong> tại Phong Vũ có được bảo hành 3S1 không?</li></ul><p><strong>Trả lời:</strong> Hoàn toàn được quý khách hãy yên tâm khi mua hàng tại Phong Vũ nhé!</p><ul><li>Ngoài <strong>Acer Nitro 16 Phong Vũ</strong> còn dòng nào khác của Acer không?</li></ul><p><strong>Trả lời:</strong> Phong Vũ đa dạng nhiều dòng sản phẩm Laptop Acer, quý khách hàng có thể truy cập <a href=\"https://phongvu.vn/c/laptop-acer\">tại đây</a> nhé!</p><ul><li>Nitro Phoenix mới thay thế cho Nitro 5 cũ?</li></ul><p><strong>Trả lời:</strong> Chính xác, Nitro 16 Phoenix (17 Phoenix) là bản kế nhiệm thay thế cho dòng sản phẩm Nitro 5, laptop Gaming bán chạy #1 VN các năm gần đây.</p><ul><li>Số 16, 17 trong tên Nitro có ý nghĩa gì?</li></ul><p><strong>Trả lời:</strong> 16 và 17 lần lượt là kích thước màn hình - 16 inch (16:10) và 17 inch (16:9)</p><ul><li>Tại sao Nitro Phoenix lại có giá khởi điểm cao hơn so với Nitro 5 các phiên bản trước?</li></ul><p><strong>Trả lời:&nbsp;</strong></p><p>Do Nitro Phoenix mới có sự nâng cấp toàn diện từ ngoại hình đến cấu hình cũng như tản nhiệt:</p><p>- Thiết kế chuẩn Gaming với độ hoàn thiện tốt hơn</p><p>- Cấu hình mới nhất với card RTX 4050 có giá cao hơn so với thế hệ RTX 30 Series</p><p>- Tản nhiệt được nâng cấp tốt hơn với keo tản nhiệt kim loại lỏng cho CPU</p><h3>Một số hình ảnh thực tế ACER Nitro 16 Phoenix</h3><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/5/23/da2633c6-967a-4b6b-9b19-804e7b105fcd/1.jpg\"></figure><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/5/29/80f78d24-0f4d-4772-bbbe-2a24a2b8394b/tempImagevkbMXA.png\"></figure><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/5/29/a2c61306-24bc-49bc-806d-acb1c2178baf/tempImagevxj936.png\"></figure><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/5/29/a5d68957-bb90-4c61-bb97-1c25c00c41f5/4.jpg\"></figure><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/5/29/e7bb82d0-a7bb-41f6-b12f-e197c66a1cda/acer-nitro-16-phoenix.jpg\"></figure><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/5/29/5d9788db-d89e-4ff0-b3ed-f3c3cc9acce0/3.jpg\"></figure><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/5/29/4d41379d-06c2-46cf-8af4-59f0160632d0/2.jpg\"></figure>', 1, 1, '2023-12-21 20:58:04', '2024-01-06 04:52:34'),
(17, 1, 2, 3, 2, 'Laptop Acer Aspire 7 A715 76 53PJ', NULL, 12990000, 10000000, 10, '<figure class=\"table\"><table><tbody><tr><td><a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\"><strong>CPU</strong></a></td><td>Intel Core i5-12450H 3.3GHz up to 4.4GHz 12MB</td></tr><tr><td><a href=\"https://gearvn.com/collections/ram-laptop\"><strong>RAM</strong></a></td><td>16GB (8x2) DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)</td></tr><tr><td><a href=\"https://gearvn.com/collections/ssd-o-cung-the-ran\"><strong>Ổ cứng</strong></a></td><td>512GB PCIe NVMe SSD (2 slot, support M.2 2280 PCIe 4.0x4)</td></tr><tr><td><a href=\"https://gearvn.com/collections/vga-card-man-hinh\"><strong>Card đồ họa</strong></a></td><td>Intel® UHD Graphics</td></tr><tr><td><a href=\"https://gearvn.com/collections/man-hinh\"><strong>Màn hình</strong></a></td><td>15.6\" FHD (1920 x 1080) IPS, Slim Bezel, Acer ComfyView™</td></tr><tr><td><strong>Cổng giao tiếp</strong></td><td><ul><li>1x USB Type-C™ port (supporting USB 3.2 Gen 2 (up to 10 Gbps); DisplayPort over USB-C; Thunderbolt™ 4; USB charging 5V - 3A; DC-in port 20V - 65W)</li><li>1x USB 3.2 Gen 1 featuring power off USB charging</li><li>2x USB 3.2 Gen 1</li><li>1x HDMI® 2.0 port with HDCP support</li><li>1x DC-in jack for AC adapter</li><li>1x Ethernet (RJ-45) port</li><li>1x 3.5 mm headphone/speaker jack</li></ul></td></tr><tr><td><a href=\"https://gearvn.com/collections/thiet-bi-tai-nghe-loa-audio-chuyen-nghiep\"><strong>Audio</strong></a></td><td>Acer TrueHarmony technology</td></tr><tr><td><strong>Đọc thẻ nhớ</strong></td><td>None</td></tr><tr><td><strong>Chuẩn LAN</strong></td><td>10/100/1000/Gigabits Base T</td></tr><tr><td><strong>Chuẩn WIFI</strong></td><td>Intel® Wireless Wi-Fi 6E AX211 (2x2)</td></tr><tr><td><strong>Bluetooth</strong></td><td>v5.1</td></tr><tr><td><a href=\"https://gearvn.com/collections/webcam\"><strong>Webcam</strong></a></td><td>720p HD video at 30 fps with Temporal Noise Reduction</td></tr><tr><td><strong>Hệ điều hành</strong></td><td><a href=\"https://gearvn.com/collections/window\">Windows 11 Home</a></td></tr><tr><td><strong>Pin</strong></td><td>3 Cell 50Whr</td></tr><tr><td><strong>Trọng lượng</strong></td><td>2.1 kg</td></tr><tr><td><strong>Màu sắc</strong></td><td>Đen</td></tr><tr><td><strong>Kích thước</strong></td><td>362.3 x 237.4 x 19.9 (mm)</td></tr></tbody></table></figure>', 1, 1, '2023-12-21 21:02:39', '2024-01-06 04:48:18'),
(18, 23, 2, 9, 41, 'PCAP AI Stable Diffusion Pro 768x768 ( Intel Core i7 12700F | RTX 4080 16GB | 32GB | 1000W | 2TB)', NULL, 10000000, 0, 0, '<p><strong>Mô tả sản phẩm</strong></p><p><a href=\"https://phongvu.vn/may-tinh-xach-tay-laptop-acer-gaming-aspire-7-a715-76g-5806-i5-12450h-den--s230703419\">Acer Gaming Aspire 7 A715-76G-5806</a> là chiếc laptop gaming sở hữu thiết kế thanh lịch với trong lượng 2.1 kg. Được chế tác để trở thành cỗ máy chiến game khủng, Aspire 7 có hiệu năng mạnh mẽ, card đồ họa rời với hiệu suất vượt trội cùng màn hình hiển thị sắc nét, đẹp mắt.&nbsp;&nbsp;</p><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/11/30/ed44f715-fbd9-494d-b3c5-8f391b0680a3/Acer%20Gaming%20Aspire%207%20A715-76G-5806.png\" alt=\"ACER Aspire 7 A715-76G-5806 được yêu thích\"><figcaption>Laptop gaming cao cấp, cân mọi tác vụ</figcaption></figure><h2><strong>Đánh giá tổng quan về </strong><a href=\"https://phongvu.vn/c/laptop-acer-aspire#laptop-acer-aspire-7\"><strong>laptop Acer Aspire 7</strong></a><strong> A715-76G-5806&nbsp;</strong></h2><h3><strong>Ưu điểm</strong></h3><ul><li>Thiết kế mỏng nhẹ, trọng lượng chỉ 2.1 kg</li><li>Hiệu năng mạnh, đa nhiệm mượt mà</li><li>Nhiều phiên bản cấu hình</li><li>Tản nhiệt tốt, máy vẫn mát khi full load</li><li>Dung lượng pin có thể sử dụng cả ngày</li></ul><h3><strong>Nhược điểm</strong></h3><ul><li>Quạt tản nhiệt hơi ồn</li><li>Giá khá cao</li></ul><h2><strong>Đánh giá chi tiết về laptop ACER Gaming Aspire 7 A715-76G-5806&nbsp;</strong></h2><h3><strong>Cấu hình khủng, card đồ hoạ RTX 3050 4GB đỉnh cao</strong></h3><p>ACER Gaming Aspire 7 A715-76G-5806 là chiếc laptop gaming sở hữu hiệu năng mạnh mẽ, không hề “lép vế” khi so sánh với những dòng <a href=\"https://phongvu.vn/c/laptop-gaming#laptop-gaming\">laptop gaming</a> cao cấp. Với vi xử lý Intel Core i5-12450H kết hợp cùng card đồ họa rời NVIDIA GeForce RTX 3050 4GB cung cấp hiệu suất vượt trội để bạn chiến các tựa game LOL, PUBG, Valorant,... mượt mà. Đặc biệt, bạn có thể thỏa sức chạy các chương trình đồ họa, thiết kế như AI, Photoshop,...mà không lo bị giật lag.&nbsp;</p><p>Nhà Acer mang đến bộ RAM 16GB chuẩn DDR4 giúp các tác vụ đa nhiệm mượt hơn, không đơ hay giật lag. Trong quá trình sử dụng, bạn có thể nâng cấp RAM đến 32GB tùy nhu cầu, tránh tình trạng tràn RAM.&nbsp;</p><p>Là một chiếc laptop gaming nhưng Aspire 7 A715-76G-5806 vẫn đáp ứng tốt các nhu cầu làm việc, xử lý dữ liệu nhờ có ổ cứng SSD 512 GB NVMe PCIe, hỗ trợ truy xuất dữ liệu nhanh chóng, giúp quá trình khởi động máy tức thì và đảm bảo việc lưu trữ các tệp tin nặng dễ dàng. Đặc biệt, bạn có thể mở rộng dung lượng lưu trữ đến 1TB.&nbsp;</p><p>Một người dùng trên Ebay chia sẻ về laptop gaming này rằng: “Máy hoạt động nhanh chóng, thân thiện với người dùng”, đủ để khẳng định chất lượng của cỗ máy gaming khủng này.&nbsp;</p><h3><strong>Thiết kế mỏng nhẹ so với một chiếc laptop gaming</strong></h3><p>Laptop ACER Gaming Aspire 7 A715-76G-5806 gây ấn tượng từ cái nhìn đầu tiên bởi ngoại hình thanh lịch, những đường nét được tối ưu để trở nên mỏng hơn, thanh mảnh hơn. Trọng lượng chỉ 2,1kg, một trọng lượng khá nhẹ với laptop gaming.&nbsp;</p><p>Máy được sản xuất từ chất liệu vỏ nhựa cứng cáp, bền bỉ, kết hợp nắng lưng bằng kim loại giúp tăng độ bền chắc khi sử dụng. Về tổng thể, mẫu laptop gaming toát lên sự tối giản, mạnh mẽ và cuốn hút.</p><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/11/30/57be06dc-2ea1-4f1c-a929-4820fe748f0c/2%20-%20%20Acer-Gaming-Aspire7-thiet-ke-thanh-lich-nho-gon.png\" alt=\"ACER Aspire 7 A715-76G-5806  sang trọng\"><figcaption>Máy có trọng lượng nhẹ khi so với một chiếc laptop gaming thông thường</figcaption></figure><h3><strong>Màn hình Full HD kèm công nghệ Acer ComfyView</strong></h3><p><a href=\"https://phongvu.vn/c/laptop#laptop\">Laptop</a> Acer Aspire được trang bị màn hình kích thước 15.6 inch, sử dụng tấm nền IPS với độ phân giải Full HD (1920 x 1080) cho hình ảnh hiển thị sắc nét, khả năng tái tạo màu tốt. Acer mang đến công nghệ Acer ComfyView giúp mắt dễ chịu, thoải mái và không bị nhức mỏi khi sử dụng laptop liên tục trong thời gian dài.</p><p>Điểm cộng của màn hình <a href=\"https://phongvu.vn/c/laptop-acer-15-6-inch#acer-15-6-inch\">laptop Acer 15.6 inch</a> là nhờ vào khả năng mở rộng đến 178 độ, cho ánh nhìn bao quát hơn từ nhiều góc. Đặc biệt, Acer cũng rất “tâm lý” khi mang đến tần số quét 144Hz, đảm bảo không bị xé ảnh, giật lag khi chơi game. Ngoài ra, độ trễ hình thấp cũng giúp bạn giải trí tuyệt hơn, nhất là những tác phẩm chuyển cảnh với tốc độ nhanh.</p><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/11/30/e856e4b0-b642-4b8e-9b53-e2d0a80262c7/Acer%20Gaming%20Aspire%207%20A715-76G-5806.jpg\" alt=\"Màn hình 15.6 inch ACER Aspire 7 A715-76G-5806 \"><figcaption>Màn hình hiển thị chân thật, sắc nét</figcaption></figure><h3><strong>Bàn phím đơn sắc đi kèm touchpad cảm ứng đa điểm</strong></h3><p>Game thủ không chỉ quan tâm đến cấu hình mà còn rất để tâm đến bàn phím và touchpad. Vì thế <a href=\"https://phongvu.vn/c/laptop-acer#may-tinh-acer\">máy tính Acer</a> đã trang bị bộ bàn phím xịn sò mang lại cảm giác gõ thoải mái, hành trình phím sâu, độ phản hồi cực nhạy. Đặc biệt, máy còn đèn nền đơn sắc để hỗ trợ người dùng chơi game hoặc làm việc trong điều kiện ánh sáng yếu.&nbsp;</p><p>Bên cạnh đó, touchpad ghi điểm nhờ độ nhạy cao, cảm ứng đa điểm mượt mà và chuẩn xác.&nbsp;</p><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/11/30/e4537e82-92d8-4f47-ad4d-a14eab54625e/Acer%20GamingA715-76G-5806.jpg\" alt=\"Bàn phím ACER Aspire 7 A715-76G-5806 rộng rãi\"><figcaption>Touchpad cảm ứng đa điểm</figcaption></figure><h3><strong>Đầy đủ cổng kết nối thông dụng</strong></h3><p>Acer Aspire 7 A715 76G 5806 được tích hợp nhiều cổng kết nối để quá trình kết nối các thiết bị ngoại vi trở nên đơn giản hơn. Có thể kể đến loạt cổng như: USB-C, USB 3.2, HDMI, RJ-45, jack cắm tai nghe 3.5mm. Đồng thời chuẩn kết nối bluetooth 5.2 còn giúp máy nhanh chóng kết nối với các thiết bị không dây một cách ổn định.&nbsp;</p><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/11/30/ee31e4cd-f6ea-4cdd-85a5-16b01924456d/Acer%20Gaming%20Aspire%207%20A715.jpg\" alt=\"ACER Aspire 7 A715-76G-5806 kết nối dễ dàng\"><figcaption>Kết nối dễ dàng, đa dạng</figcaption></figure><h3><strong>Dung lượng pin tốt</strong></h3><p>Chiếc laptop gaming này được trang bị viên pin 3 cell 50Wh, theo chia sẻ của một khách hàng thì máy hoạt động được khoảng 7-8 giờ cho các tác vụ văn phòng, đồ hoạ. Trong trường hợp bạn chiến game nhiều thì thời gian sử dụng có thể ít hơn nhưng không đáng kể.</p><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/11/30/50c7c8d6-d807-4202-a633-a1c8ae097ecb/Aspire%207%20A715-76G-5806.jpg\" alt=\"Dung lượng pin ACER Aspire 7 A715-76G-5806 \"><figcaption>Dung lượng pin Acer Aspire 7 A715 76G 5806 được đánh giá khá tốt</figcaption></figure><h3><strong>Âm thanh sống động</strong></h3><p>Acer trang bị công nghệ Acer Purified Voice và Acer TrueHarmony để tạo nên chất lượng âm thanh tuyệt vời, rõ ràng và tách biệt âm sắc trầm - bổng, đảm bảo mang lại cảm giác chân thực và sinh động hơn khi combat với đối thủ.&nbsp;</p><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/11/30/cc4252b1-c36e-4326-871e-9f78e7adf6b5/Acer%20Gaming%20Aspire%207%20A715-76G-5806-dep.jpg\" alt=\"Âm thanh ACER Aspire 7 A715-76G-5806 sống động\"><figcaption>Công nghệ hiện đại mang đến chất lượng âm thanh vượt trội</figcaption></figure><h3><strong>Tản nhiệt hiệu quả, hạn chế nóng một cách tối ưu&nbsp;</strong></h3><p>Laptop ACER Gaming Aspire 7 A715-76G-5806 còn mang nhiều đặc điểm nổi bật khác, nhất là khả năng tản nhiệt. Nhờ được lắp đặt hệ thống tản nhiệt 3 ống đồng và 2 quạt mà máy làm mát tốt hơn, chỉ mang lại cảm giác ấm ở vùng WASD, các khu vực khác, đặc biệt là khu vực nghỉ tay vẫn khá mát mẻ.&nbsp;</p><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/11/30/f9ba31ec-ab08-4570-837b-84416f6d7918/Laptop%20ACER%20Gaming%20Aspire%207%20A715-76G-5806.png\" alt=\"Laptop ACER Gaming Aspire 7 A715\"></figure><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/11/30/48f19893-ce58-4988-844c-6e2376314ed1/A715-76G-5806.png\" alt=\"ACER Gaming Aspire 7 A715-76G-5806 \"><figcaption>Điểm Benchmarks khi so sánh chip Intel core i5-12450H trên Acer Aspire 7 A715 và Intel core i5-1335U</figcaption></figure><h2><strong>Mua laptop Acer Gaming Aspire 7 tại Phong Vũ để có mức giá ưu đãi&nbsp;&nbsp;</strong></h2><p>Bạn muốn mua ACER Gaming Aspire 7 A715-76G-5806 nhưng chưa biết mua ở đâu uy tín, chính hãng? Mời bạn đến ngay cửa hàng Phong Vũ để đảm bảo chọn đúng sản phẩm có nguồn gốc, xuất xứ rõ ràng.&nbsp;</p><p>Phong Vũ là một trong những cửa hàng bán laptop gaming uy tín, cung cấp đa dạng các dòng laptop với mức giá cực ưu đãi. Phong Vũ thực hiện chính sách bảo hành theo quy định của nhà sản xuất, hỗ trợ đổi trả trong 10 ngày nếu lỗi do nhà sản xuất.&nbsp;&nbsp;</p><figure class=\"image\"><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/11/30/832e74c1-d52f-4deb-9312-d74941b149dd/mua-laptop-gia-re.jpg\" alt=\"Phong Vũ - Địa chỉ bán ACER Gaming Aspire 7 A715-76G-5806 uy tín\"><figcaption>Phong Vũ - Địa chỉ bán ACER Gaming Aspire 7 A715-76G-5806 uy tín</figcaption></figure><p>Bên cạnh đó, Phong Vũ xây dựng các chương trình khuyến mãi hấp dẫn, giảm giá cho học sinh sinh viên, hỗ trợ mua hàng trả góp,... Ngoài ra quý khách mua online còn được giao hàng miễn phí với đơn hàng trên 5 triệu đồng.&nbsp;</p><p>Nếu bạn có nhu cầu mua laptop Acer hoặc các dòng laptop gaming chất lượng khác, hãy liên hệ ngay hotline<strong> 18006867</strong> hoặc trực tiếp đến các chi nhánh cửa hàng Phong Vũ khắp 3 miền để được tư vấn, hỗ trợ tận tình.&nbsp;</p>', 1, 1, '2023-12-21 21:08:40', '2024-01-09 12:43:56'),
(43, 1, 2, 2, 1, 'test', NULL, 0, 0, NULL, NULL, 0, 1, '2024-02-13 13:30:03', '2024-02-13 13:30:03'),
(44, 1, 2, 2, 1, 'test', NULL, 0, 0, NULL, NULL, 0, 1, '2024-02-13 13:35:16', '2024-02-13 13:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int NOT NULL,
  `products_id` int UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
(10, 3, 'Productslibrary/dgrihgc2g6gxhoftnaps', '2023-10-26 08:54:58', '2023-10-26 08:54:58'),
(11, 3, 'Productslibrary/gcm7jiu8ii3suow1e2zm', '2023-10-26 08:55:00', '2023-10-26 08:55:00'),
(12, 3, 'Productslibrary/akxiz6uviw49rwzmqjqg', '2023-10-26 08:55:02', '2023-10-26 08:55:02'),
(13, 3, 'Productslibrary/ihlpanayx2txpk3ub5yz', '2023-10-26 08:55:05', '2023-10-26 08:55:05'),
(14, 3, 'Productslibrary/lw53fibor5pfjlsarwj7', '2023-10-26 08:55:07', '2023-10-26 08:55:07'),
(15, 4, 'Productslibrary/riwslml5u2vnhehlxmxd', '2023-10-26 08:57:47', '2023-10-26 08:57:47'),
(16, 4, 'Productslibrary/mnfl7c0hk7r8zdcnyv4u', '2023-10-26 08:57:49', '2023-10-26 08:57:49'),
(17, 4, 'Productslibrary/r79l0hse7a3znyyxozok', '2023-10-26 08:57:51', '2023-10-26 08:57:51'),
(18, 4, 'Productslibrary/z6c3iwdp5cz9r7afxjv3', '2023-10-26 08:57:53', '2023-10-26 08:57:53'),
(19, 4, 'Productslibrary/sdbmltrtfxtvclxydwvz', '2023-10-26 08:57:55', '2023-10-26 08:57:55'),
(20, 4, 'Productslibrary/ps5tvzclvpqictjykqvj', '2023-10-26 08:57:57', '2023-10-26 08:57:57'),
(36, 10, 'Productslibrary/hhd6815rbx4owaxrlyys', '2023-10-28 22:18:30', '2023-10-28 22:18:30'),
(37, 10, 'Productslibrary/ac2va35aggclmwyf2qes', '2023-10-28 22:18:22', '2023-10-28 22:18:22'),
(38, 10, 'Productslibrary/v2dnnsbkpcgiu6vuvbpo', '2023-10-28 22:18:25', '2023-10-28 22:18:25'),
(39, 10, 'Productslibrary/irxcgnlcdmgbzdm4vjbv', '2023-10-28 22:18:27', '2023-10-28 22:18:27'),
(41, 10, 'Productslibrary/w1uhutkquix2zzjvdtbv', '2023-10-28 22:18:32', '2023-10-28 22:18:32'),
(42, 10, 'Productslibrary/zzgtuwobq3nsuypw53im', '2023-10-28 22:18:34', '2023-10-28 22:18:34'),
(80, 14, 'products/rch3rfwoupihkmknke48', '2023-11-10 03:17:58', '2023-11-10 03:17:58'),
(81, 14, 'products/u8l0udgfnbjfsbuq5zxs', '2023-11-10 03:18:01', '2023-11-10 03:18:01'),
(82, 14, 'products/qh2asg8gjwzcywtouibs', '2023-11-10 03:18:05', '2023-11-10 03:18:05'),
(84, 15, 'products/sz5frhvim9xeat3qjyb2', '2023-11-15 11:55:40', '2023-11-15 11:55:40'),
(100, 19, 'products/thhtbmdvpywdsooahwxi', '2023-12-27 02:36:23', '2023-12-27 02:36:23'),
(101, 24, 'products/gzgnvzjgt0ugfx4v0ij7', '2024-01-02 11:59:50', '2024-01-02 11:59:50'),
(102, 24, 'products/fp6soy9f3y3vuiwxwrf0', '2024-01-02 11:59:52', '2024-01-02 11:59:52'),
(103, 24, 'products/tc5n1w7oqrktoy4kca3s', '2024-01-02 11:59:54', '2024-01-02 11:59:54'),
(104, 24, 'products/unlxrfq0hkctakirdcjq', '2024-01-02 11:59:56', '2024-01-02 11:59:56'),
(105, 24, 'products/tyoksdlc8zelzxu4uvwu', '2024-01-02 11:59:58', '2024-01-02 11:59:58'),
(106, 18, 'products/yoq9kqf48gcujeqqf3ih', '2024-01-04 15:09:08', '2024-01-04 15:09:08'),
(107, 18, 'products/pi6ugqrlu69zpg7rtuha', '2024-01-04 15:09:11', '2024-01-04 15:09:11'),
(108, 18, 'products/vdffzs5lpeukwfrku8bd', '2024-01-04 15:09:13', '2024-01-04 15:09:13'),
(109, 18, 'products/s99vguaddyfffd8radwt', '2024-01-04 15:09:15', '2024-01-04 15:09:15'),
(110, 18, 'products/zrbovjosxiru5ekbvhsc', '2024-01-04 15:09:17', '2024-01-04 15:09:17'),
(112, 17, 'products/cjpy7lxzbf7zmdf5p21p', '2024-01-04 15:14:44', '2024-01-04 15:14:44'),
(113, 17, 'products/elnrgv6xu63yiykvvrot', '2024-01-04 15:14:45', '2024-01-04 15:14:45'),
(114, 17, 'products/i6ylulcupogpxiaug9oh', '2024-01-04 15:14:47', '2024-01-04 15:14:47'),
(115, 16, 'products/kh5hgxninanipq949j5y', '2024-01-04 16:05:46', '2024-01-04 16:05:46'),
(116, 16, 'products/d1yauto6nus1hxmwlggd', '2024-01-04 16:05:49', '2024-01-04 16:05:49'),
(117, 16, 'products/hyqloihrwizl0snswlr1', '2024-01-04 16:05:52', '2024-01-04 16:05:52'),
(118, 16, 'products/wvizwbggykpce1k0yrrr', '2024-01-04 16:05:55', '2024-01-04 16:05:55'),
(119, 16, 'products/cnjworunuryojoyrdlhb', '2024-01-04 16:05:58', '2024-01-04 16:05:58'),
(120, 16, 'products/z5l1skrbu7bklskm1qro', '2024-01-04 16:07:26', '2024-01-04 16:07:26'),
(121, 16, 'products/vniyyqac1uaos80bofx8', '2024-01-04 16:07:29', '2024-01-04 16:07:29'),
(122, 16, 'products/d4lo9mkqdiwhzadqbhrf', '2024-01-04 16:07:33', '2024-01-04 16:07:33'),
(123, 16, 'products/yb3ciyuicepceis8iych', '2024-01-04 16:07:36', '2024-01-04 16:07:36'),
(124, 16, 'products/ds5o1j1xuyzndvsos5dt', '2024-01-04 16:07:39', '2024-01-04 16:07:39'),
(125, 13, 'products/fn4conatbn056ehnf4tq', '2024-01-04 16:10:59', '2024-01-04 16:10:59'),
(126, 13, 'products/pvjnxzisxp0boyyojzzt', '2024-01-04 16:11:02', '2024-01-04 16:11:02'),
(127, 13, 'products/h9xy7t0lgjkyzqje1jtq', '2024-01-04 16:11:05', '2024-01-04 16:11:05'),
(128, 13, 'products/ug9bo24xrpr8nipm3df7', '2024-01-04 16:11:08', '2024-01-04 16:11:08'),
(129, 2, 'products/opmflgfsfk9zlm0zmcrc', '2024-01-04 16:12:56', '2024-01-04 16:12:56'),
(130, 2, 'products/bgedee3pojil6jucjsca', '2024-01-04 16:12:58', '2024-01-04 16:12:58'),
(131, 2, 'products/yc1yjoayraeklgsqgjku', '2024-01-04 16:13:00', '2024-01-04 16:13:00'),
(132, 2, 'products/ytybbrdceabh9fbqu6dq', '2024-01-04 16:13:03', '2024-01-04 16:13:03'),
(133, 2, 'products/doykivhobgcq8hkox9du', '2024-01-04 16:13:04', '2024-01-04 16:13:04'),
(134, 1, 'products/tebtu6ixqm1aysuhwtr1', '2024-01-04 16:17:38', '2024-01-04 16:17:38'),
(135, 1, 'products/v5s0tnlifmbt4zqzjfvc', '2024-01-04 16:17:40', '2024-01-04 16:17:40'),
(136, 1, 'products/qjxeqzoqxrgdo9cxv4py', '2024-01-04 16:17:42', '2024-01-04 16:17:42'),
(137, 1, 'products/klcl3o5yxy5c2h5vmwri', '2024-01-04 16:17:44', '2024-01-04 16:17:44'),
(138, 1, 'products/iylpegl4bbizkjspounp', '2024-01-04 16:17:46', '2024-01-04 16:17:46'),
(139, 25, 'products/ulowjy8hsxiuwlvoe2v8', '2024-01-05 15:57:04', '2024-01-05 15:57:04'),
(140, 26, 'products/ziyhnecl7s64qcon0eoa', '2024-01-05 16:00:43', '2024-01-05 16:00:43'),
(141, 35, 'products/vc2fudwjhqmy2myn3tvf', '2024-01-10 12:56:34', '2024-01-10 12:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `products_id` int UNSIGNED NOT NULL,
  `users_id` int UNSIGNED NOT NULL,
  `rate` int NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `products_id`, `users_id`, `rate`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 5, 'ok123141213123', '2023-12-03 12:09:13', '2023-12-03 12:09:13'),
(2, 1, 3, 5, 'sản phẩm ok !', '2023-12-03 12:15:45', '2023-12-03 12:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-11-18 14:18:49', '2023-11-18 14:18:49'),
(2, 'staff', 'web', '2023-11-18 14:18:49', '2023-11-18 14:18:49'),
(3, 'client', 'web', '2023-11-18 14:18:49', '2023-11-18 14:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `cat_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Acer Nitro', 1, 1, '2023-10-26 07:38:10', '2024-01-04 16:22:38'),
(2, 'Acer Aspire', 1, 1, '2023-10-26 07:38:19', '2023-11-03 04:04:27'),
(3, 'Acer Predator', 1, 1, '2023-10-26 07:38:28', '2023-11-03 04:04:38'),
(4, 'ROG', 2, 1, '2023-10-26 07:41:00', '2023-12-21 20:46:08'),
(5, 'TUF', 2, 1, '2023-10-26 07:41:08', '2023-12-21 20:46:17'),
(6, 'Vivobookl', 2, 1, '2023-10-26 07:41:17', '2023-12-21 20:46:30'),
(31, 'MacBook Air', 17, 1, '2023-12-21 20:34:56', '2023-12-21 20:35:31'),
(32, 'MacBook Pro', 17, 1, '2023-12-21 20:35:20', '2023-12-21 20:35:38'),
(33, 'Vostro', 18, 1, '2023-12-21 20:36:42', '2023-12-21 20:36:42'),
(34, 'Inspiron', 18, 1, '2023-12-21 20:37:00', '2023-12-21 20:37:00'),
(35, 'Victus', 19, 1, '2023-12-21 20:37:38', '2023-12-21 20:37:38'),
(36, 'ProBook', 19, 1, '2023-12-21 20:37:52', '2023-12-21 20:37:52'),
(38, 'IdeaPad Slim 5', 20, 1, '2023-12-21 20:38:52', '2023-12-21 20:38:52'),
(39, 'IdeaPad', 20, 1, '2023-12-21 20:40:06', '2023-12-21 20:40:06'),
(40, 'PC - Văn Phòng', 23, 1, '2023-12-21 20:42:22', '2023-12-21 20:47:10'),
(41, 'PC - Gaming', 23, 1, '2023-12-21 20:46:54', '2023-12-21 20:46:54'),
(42, 'Bàn phím', 24, 1, '2024-02-13 13:20:05', '2024-02-13 13:20:05'),
(43, 'Tai Nghe', 24, 1, '2024-02-13 13:20:16', '2024-02-13 13:20:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `phone_verified` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `lastname`, `firstname`, `username`, `password`, `image`, `email`, `phone`, `address`, `district`, `city`, `status`, `email_verified`, `phone_verified`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Đặng', 'Phúc Hữu', 'admin', '$2y$10$dHPOnQfXTntfanVJp6FJPOY00sIX5Zd01DtRZDhNLqxMOpMbKSf.i', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', NULL, '+84702118657', '1231', '122', 'Hồ Chí Minh', 1, 0, 0, 'mkKlmtow0Uj8nEZHeguIAWfaZpLWKftBmH0Ld8ZzO08ROXQHGZxF92Vxy0fJ', '2023-11-18 14:18:49', '2024-01-12 13:26:03'),
(3, 'Huu', 'Dang', 'huudang', '$2y$10$HE4kTy2UvIg/Mnn1vS4r5urOFN7XYJBkiYeHGo.zUY.3oMY238/06', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 'lUcaJeNAfcGVOKiGkZJ5CUlY6kOtd3Y3cEMyBOJsMSnnfufIitBfgvh2Htcy', '2023-11-18 14:18:49', '2023-12-21 21:40:19'),
(4, 'dang', 'huu', 'danghuu', '$2y$10$ejma/dryBYs9A12Wxf..Se93gkqVWW2g6Q7vwhBuwfdI5zNE8Ldya', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, '2023-12-21 21:27:56', '2023-12-21 21:27:56'),
(5, 'Đặng', 'Phúc Hữu', 'dangphuchuu', '$2y$10$dHPOnQfXTntfanVJp6FJPOY00sIX5Zd01DtRZDhNLqxMOpMbKSf.i', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'phuchuu0120@gmail.com', '1234567895', '1', '456', 'Cần Thơ', 1, 1, 0, 'z1Xke9eKPlP51T5p4jG7nSoR2Y34XYAd9R6l05DwcQo1GYp6Jp2MMKBueF6M', '2023-12-24 05:17:43', '2024-01-04 05:53:18'),
(7, 'Đặng', 'Phúc Hữu', 'dangphuchuu1', '$2y$10$dHPOnQfXTntfanVJp6FJPOY00sIX5Zd01DtRZDhNLqxMOpMbKSf.i', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'phuchuu0120@gmail.com1', '0123456789', '123', '85', 'Hồ Chí Minh', 1, 0, 0, NULL, '2023-12-24 05:22:13', '2024-01-03 14:24:44'),
(8, 'Đặng', 'Phúc Hữu', 'dangphuchuu4', '$2y$10$pll/g9V6UJZ1/VP04FVbouO.6bGs8da.T2r1WhOR7IIyjnvratllW', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'phuchuu0112w2s0@gmail.com', '01234565888', NULL, NULL, 'Hồ Chí Minh', 1, 0, 0, NULL, '2024-01-13 12:45:46', '2024-01-13 12:45:46');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `products_id` bigint UNSIGNED NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `products_id`, `users_id`, `created_at`, `updated_at`) VALUES
(49, 16, 5, '2024-01-05 03:37:35', '2024-01-05 03:37:35'),
(50, 13, 5, '2024-01-05 03:37:36', '2024-01-05 03:37:36'),
(87, 2, 2, '2024-01-10 14:56:59', '2024-01-10 14:56:59'),
(88, 13, 2, '2024-01-10 14:57:00', '2024-01-10 14:57:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners_featureds`
--
ALTER TABLE `banners_featureds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_users_id_foreign` (`users_id`);

--
-- Indexes for table `orders__details`
--
ALTER TABLE `orders__details`
  ADD KEY `orders__details_orders_id_foreign` (`orders_id`),
  ADD KEY `orders__details_products_id_foreign` (`products_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_libraries_products_id_foreign` (`products_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_products_id_foreign` (`products_id`),
  ADD KEY `reviews_users_id_foreign` (`users_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `banners_featureds`
--
ALTER TABLE `banners_featureds`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
