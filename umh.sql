-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 14, 2017 at 07:56 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `testbotle`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'EzJDUgX8kXER3v6rBSVhQdsw2NW8PObt', 1, '2016-04-30 19:51:47', '2016-04-30 19:51:47', '2016-04-30 19:51:47'),
(2, 2, 'BGXGfcFq31w9cScnuTB4pQ875wG28oxd', 1, '2017-06-02 18:55:43', '2017-06-02 18:55:43', '2017-06-02 18:55:43'),
(3, 3, 'Y0PussVipZxhJOuREWb4B8QE1h5mJ2Vx', 1, '2017-12-03 07:02:40', '2017-12-03 07:02:40', '2017-12-03 07:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `audit_history`
--

CREATE TABLE `audit_history` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `request` text COLLATE utf8_unicode_ci,
  `action` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `audit_history`
--

INSERT INTO `audit_history` (`user_id`, `module`, `request`, `action`, `ip_address`, `reference_user`, `reference_name`, `reference_id`, `type`, `created_at`, `updated_at`, `user_agent`) VALUES
(1, 'of the system', '[]', 'logged out', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-04 09:34:26', '2017-07-04 09:34:26', NULL),
(1, 'to the system', '{\"_token\":\"24vutssHgCfwAiIbz8kYThL3Ni7tOcnTy8YkhEY6\",\"username\":\"botble\",\"password\":\"159357\",\"remember\":\"1\"}', 'logged in', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-04 09:34:31', '2017-07-04 09:34:31', NULL),
(1, 'of the system', '[]', 'logged out', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-04 09:34:54', '2017-07-04 09:34:54', NULL),
(1, 'to the system', '{\"_token\":\"7CEb1oexRPdNIIkeJ6RK4PINYesFFuPTwh0ETBaX\",\"username\":\"botble\",\"password\":\"159357\",\"remember\":\"1\"}', 'logged in', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-04 09:35:50', '2017-07-04 09:35:50', NULL),
(1, 'of the system', '[]', 'logged out', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-04 09:36:01', '2017-07-04 09:36:01', NULL),
(1, 'to the system', '{\"_token\":\"7CEb1oexRPdNIIkeJ6RK4PINYesFFuPTwh0ETBaX\",\"username\":\"botble\",\"password\":\"159357\",\"remember\":\"1\"}', 'logged in', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-04 09:36:07', '2017-07-04 09:36:07', NULL),
(1, 'to the system', '{\"_token\":\"yiYsgkarxrX2p5OtesBkdIa7DN6Cc88C73fh8T0m\",\"username\":\"botble\",\"password\":\"159357\"}', 'logged in', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-04 09:36:21', '2017-07-04 09:36:21', NULL),
(1, 'to the system', '{\"_token\":\"xZ4a6dHy4F3PIooo3XvNOrUavfQvpdJlHm1xI64V\",\"username\":\"botble\",\"password\":\"159357\"}', 'logged in', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-04 09:36:41', '2017-07-04 09:36:41', NULL),
(1, 'of the system', '[]', 'logged out', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-04 09:36:46', '2017-07-04 09:36:46', NULL),
(1, 'to the system', '{\"_token\":\"7CEb1oexRPdNIIkeJ6RK4PINYesFFuPTwh0ETBaX\",\"username\":\"botble\",\"password\":\"159357\"}', 'logged in', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-04 09:36:51', '2017-07-04 09:36:51', NULL),
(1, 'to the system', '{\"_token\":\"bpbHmbhsyWTdhU32L2QUa0JrN9XueJ5Q8c5tbNTk\",\"username\":\"botble\",\"password\":\"159357\",\"remember\":\"1\"}', 'logged in', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-06 07:16:10', '2017-07-06 07:16:10', NULL),
(1, 'to the system', '{\"_token\":\"KkqM3cSNoc2END718Sureu6YxAOwYrLXMTRskGQn\",\"username\":\"botble\",\"password\":\"159357\",\"remember\":\"1\"}', 'logged in', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-14 08:05:03', '2017-07-14 08:05:03', NULL),
(1, 'of the system', '[]', 'logged out', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-14 08:17:11', '2017-07-14 08:17:11', NULL),
(1, 'to the system', '{\"_token\":\"KkqM3cSNoc2END718Sureu6YxAOwYrLXMTRskGQn\",\"username\":\"botble\",\"password\":\"159357\"}', 'logged in', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-14 08:17:20', '2017-07-14 08:17:20', NULL),
(1, 'to the system', '{\"_token\":\"DKTcjCD6gwHES2wAYBeCGhGLQPV3KuYRY8Fsae6b\",\"username\":\"botble\",\"password\":\"159357\",\"remember\":\"1\"}', 'logged in', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-14 08:24:28', '2017-07-14 08:24:28', NULL),
(1, 'page', '{\"_token\":\"DKTcjCD6gwHES2wAYBeCGhGLQPV3KuYRY8Fsae6b\",\"name\":\"Contact\",\"slug\":\"contact\",\"description\":null,\"content\":\"<p>This is contact page<\\/p>\\r\\n<p>[static-block alias=\\\"sample-block\\\"][\\/static-block]<\\/p>\\r\\n<p>[contact-form][\\/contact-form]<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/news\\/lock-660x330.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/news\\/9325995752-e4ecc539f2-o-660x330.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/news\\/8980424864-bbdd635150-k-660x330.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/news\\/7998125906-4489ed8a2f-b-660x330.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"status\":\"1\",\"language\":\"en_US\",\"from\":null,\"template\":\"default\",\"image\":\"uploads\\/1\\/galleries\\/1476520641-elena-siberian-tigress-4k-1280x720.jpg\"}', 'updated', '127.0.0.1', 1, 'Contact', 1, 'primary', '2017-07-14 08:29:29', '2017-07-14 08:29:29', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(1, 'page', '{\"_token\":\"DKTcjCD6gwHES2wAYBeCGhGLQPV3KuYRY8Fsae6b\",\"name\":\"Contact\",\"slug\":\"contact\",\"description\":null,\"content\":\"<p>This is contact page<\\/p>\\r\\n<p>[static-block alias=\\\"sample-block\\\"][\\/static-block]<\\/p>\\r\\n<p>[contact-form][\\/contact-form]<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/news\\/9325995752-e4ecc539f2-o-660x330.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/news\\/7998125906-4489ed8a2f-b-660x330.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"status\":\"1\",\"language\":\"en_US\",\"from\":null,\"template\":\"default\",\"image\":\"uploads\\/1\\/galleries\\/1476520641-elena-siberian-tigress-4k-1280x720.jpg\"}', 'updated', '127.0.0.1', 1, 'Contact', 1, 'primary', '2017-07-14 08:29:44', '2017-07-14 08:29:44', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(1, 'of the system', '[]', 'logged out', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-29 17:28:25', '2017-07-29 17:28:25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(1, 'to the system', '{\"_token\":\"jZUjns1yJCqndnJMAPMkOPrK4JKcVRLzt9iKCUcC\",\"username\":\"botble\",\"password\":\"159357\",\"remember\":\"on\"}', 'logged in', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-29 17:28:29', '2017-07-29 17:28:29', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(1, 'of the system', '[]', 'logged out', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-29 17:30:03', '2017-07-29 17:30:03', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(1, 'to the system', '{\"_token\":\"jZUjns1yJCqndnJMAPMkOPrK4JKcVRLzt9iKCUcC\",\"username\":\"botble\",\"password\":\"159357\",\"remember\":\"on\"}', 'logged in', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-29 17:30:07', '2017-07-29 17:30:07', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(1, 'of the system', '[]', 'logged out', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-07-29 17:30:10', '2017-07-29 17:30:10', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(1, 'to the system', '{\"_token\":\"lVUaMPoLiB9GvVeyZACj9sLXXi5YmxUL7bNRNv0T\",\"username\":\"botble\",\"password\":\"159357\",\"remember\":\"1\"}', 'logged in', '127.0.0.1', 1, 'Ben Nguyen', 1, 'info', '2017-08-06 18:08:32', '2017-08-06 18:08:32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(1, 'menu', '{\"_token\":\"lVUaMPoLiB9GvVeyZACj9sLXXi5YmxUL7bNRNv0T\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"545\\\",\\\"title\\\":\\\"Home\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"569\\\",\\\"title\\\":\\\"Purchase\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"https:\\/\\/codecanyon.net\\/item\\/botble-cms-php-platform-based-on-laravel-framework\\/16928182?ref=botble\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_blank\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"561\\\",\\\"title\\\":\\\"New & Updates\\\",\\\"relatedId\\\":\\\"11\\\",\\\"type\\\":\\\"categories\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"562\\\",\\\"title\\\":\\\"Events\\\",\\\"relatedId\\\":\\\"6\\\",\\\"type\\\":\\\"categories\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"567\\\",\\\"title\\\":\\\"Business\\\",\\\"relatedId\\\":\\\"9\\\",\\\"type\\\":\\\"categories\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"565\\\",\\\"title\\\":\\\"Resources\\\",\\\"relatedId\\\":\\\"10\\\",\\\"type\\\":\\\"categories\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]}],\\\"position\\\":2},{\\\"id\\\":\\\"566\\\",\\\"title\\\":\\\"Galleries\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\/galleries\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"563\\\",\\\"title\\\":\\\"Portfolio\\\",\\\"relatedId\\\":\\\"8\\\",\\\"type\\\":\\\"categories\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"564\\\",\\\"title\\\":\\\"Projects\\\",\\\"relatedId\\\":\\\"7\\\",\\\"type\\\":\\\"categories\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]}],\\\"position\\\":3},{\\\"id\\\":\\\"568\\\",\\\"title\\\":\\\"Contact\\\",\\\"relatedId\\\":\\\"1\\\",\\\"type\\\":\\\"pages\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"download\\\",\\\"relatedId\\\":\\\"5\\\",\\\"type\\\":\\\"tags\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":5,\\\"children\\\":[]}]\",\"name\":\"Main menu\",\"menu_id\":\"5\",\"target\":\"_self\",\"title\":\"download\",\"custom-url\":\"\\/galleries\",\"icon-font\":null,\"class\":null,\"submit\":\"apply\",\"language\":\"en_US\",\"from\":null}', 'updated', '127.0.0.1', 1, 'Main menu', 1, 'primary', '2017-08-06 18:08:55', '2017-08-06 18:08:55', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(1, 'menu', '{\"_token\":\"lVUaMPoLiB9GvVeyZACj9sLXXi5YmxUL7bNRNv0T\",\"deleted_nodes\":\"609\",\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":545,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Home\\\",\\\"relatedId\\\":0,\\\"type\\\":\\\"custom-link\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_blank\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"https:\\/\\/codecanyon.net\\/item\\/botble-cms-php-platform-based-on-laravel-framework\\/16928182?ref=botble\\\",\\\"id\\\":569,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Purchase\\\",\\\"relatedId\\\":0,\\\"type\\\":\\\"custom-link\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":561,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"New & Updates\\\",\\\"relatedId\\\":11,\\\"type\\\":\\\"categories\\\",\\\"children\\\":[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":562,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Events\\\",\\\"relatedId\\\":6,\\\"type\\\":\\\"categories\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":567,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Business\\\",\\\"relatedId\\\":9,\\\"type\\\":\\\"categories\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":565,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Resources\\\",\\\"relatedId\\\":10,\\\"type\\\":\\\"categories\\\",\\\"position\\\":2,\\\"children\\\":[]}],\\\"position\\\":2},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/galleries\\\",\\\"id\\\":566,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Galleries\\\",\\\"relatedId\\\":0,\\\"type\\\":\\\"custom-link\\\",\\\"children\\\":[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":563,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Portfolio\\\",\\\"relatedId\\\":8,\\\"type\\\":\\\"categories\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":564,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Projects\\\",\\\"relatedId\\\":7,\\\"type\\\":\\\"categories\\\",\\\"position\\\":1,\\\"children\\\":[]}],\\\"position\\\":3},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":568,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Contact\\\",\\\"relatedId\\\":1,\\\"type\\\":\\\"pages\\\",\\\"position\\\":4,\\\"children\\\":[]}]\",\"name\":\"Main menu\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/galleries\",\"icon-font\":null,\"class\":null,\"submit\":\"apply\",\"language\":\"en_US\",\"from\":null}', 'updated', '127.0.0.1', 1, 'Main menu', 1, 'primary', '2017-08-06 18:09:05', '2017-08-06 18:09:05', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(3, 'to the system', '{\"_token\":\"V7NWvfv8VG8BWOYUGzlTsqyRE63paeruWBL2NVxL\",\"username\":\"mrminh\",\"password\":\"minh#@123\"}', 'logged in', '127.0.0.1', 3, 'Minh Luu', 3, 'info', '2017-12-05 19:27:26', '2017-12-05 19:27:26', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(3, 'to the system', '{\"_token\":\"0dd5oWUz04A54XlnWIRlqXKAVszVjb1P8q3MJZzJ\",\"username\":\"mrminh\",\"password\":\"minh#@123\"}', 'logged in', '127.0.0.1', 3, 'Minh Luu', 3, 'info', '2017-12-06 00:03:31', '2017-12-06 00:03:31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'to the system', '{\"_token\":\"is1NlePPGOIstU5m1fyl3iz7Yo6FJ4VQUX7RSfQ4\",\"username\":\"mrminh\",\"password\":\"minh#@123\"}', 'logged in', '127.0.0.1', 3, 'Minh Luu', 3, 'info', '2017-12-11 02:09:18', '2017-12-11 02:09:18', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(3, 'to the system', '{\"_token\":\"Au60PRqlQ6DhxsEjaYrZ28vYbYevup4jFwENZOtU\",\"username\":\"mrminh\",\"password\":\"minh#@123\",\"remember\":\"1\"}', 'logged in', '127.0.0.1', 3, 'Minh Luu', 3, 'info', '2017-12-11 07:19:08', '2017-12-11 07:19:08', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(3, 'to the system', '{\"_token\":\"gGh4hyhTnCxL3rArOb8cDSPNwwkeA3sy8eeImpU8\",\"username\":\"mrminh\",\"password\":\"minh#@123\"}', 'logged in', '127.0.0.1', 3, 'Minh Luu', 3, 'info', '2017-12-11 21:16:00', '2017-12-11 21:16:00', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'testimonials', '{\"_token\":\"gGh4hyhTnCxL3rArOb8cDSPNwwkeA3sy8eeImpU8\",\"name\":\"Test testimonial name\",\"position\":\"Manager\",\"content\":\"Test testimonial content\",\"submit\":\"save\",\"status\":\"1\",\"image\":null}', 'created', '127.0.0.1', 3, 'Test testimonial name', 1, 'info', '2017-12-11 23:18:43', '2017-12-11 23:18:43', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'testimonials', '{\"_token\":\"gGh4hyhTnCxL3rArOb8cDSPNwwkeA3sy8eeImpU8\",\"name\":\"Test testimonial name\",\"position\":\"Manager\",\"content\":\"Test testimonial content\",\"submit\":\"save\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\"}', 'updated', '127.0.0.1', 3, 'Test testimonial name', 1, 'primary', '2017-12-11 23:23:56', '2017-12-11 23:23:56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'testimonials', '{\"_token\":\"gGh4hyhTnCxL3rArOb8cDSPNwwkeA3sy8eeImpU8\",\"name\":\"Test testimonial name\",\"position\":\"Manager\",\"content\":\"Test testimonial content\",\"submit\":\"save\",\"status\":\"0\",\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\"}', 'updated', '127.0.0.1', 3, 'Test testimonial name', 1, 'primary', '2017-12-11 23:24:21', '2017-12-11 23:24:21', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'testimonials', '{\"_token\":\"gGh4hyhTnCxL3rArOb8cDSPNwwkeA3sy8eeImpU8\",\"name\":\"Test testimonial name\",\"position\":\"Manager\",\"content\":\"Test testimonial content\",\"submit\":\"save\",\"status\":\"0\",\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\"}', 'updated', '127.0.0.1', 3, 'Test testimonial name', 1, 'primary', '2017-12-11 23:24:57', '2017-12-11 23:24:57', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'testimonials', '{\"_token\":\"gGh4hyhTnCxL3rArOb8cDSPNwwkeA3sy8eeImpU8\",\"name\":\"iueeiu\",\"position\":\"kldbdvskdljsl\",\"content\":\"vkndslvnsl vksvsl\",\"submit\":\"save\",\"status\":\"1\",\"image\":null}', 'created', '127.0.0.1', 3, 'iueeiu', 2, 'info', '2017-12-11 23:25:50', '2017-12-11 23:25:50', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'testimonials', '[]', 'deleted', '127.0.0.1', 3, 'iueeiu', 2, 'danger', '2017-12-11 23:25:58', '2017-12-11 23:25:58', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'testimonials', '{\"_token\":\"gGh4hyhTnCxL3rArOb8cDSPNwwkeA3sy8eeImpU8\",\"name\":\"Test testimonial name1\",\"position\":\"Manager\",\"content\":\"Test testimonial content\",\"submit\":\"apply\",\"status\":\"0\",\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\"}', 'updated', '127.0.0.1', 3, 'Test testimonial name1', 1, 'primary', '2017-12-11 23:26:04', '2017-12-11 23:26:04', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'testimonials', '{\"_token\":\"gGh4hyhTnCxL3rArOb8cDSPNwwkeA3sy8eeImpU8\",\"name\":\"ldjdjdjs jvsj\",\"position\":\"kvdsvvvs\",\"content\":\"kvjdsosoeeeess\",\"submit\":\"save\",\"status\":\"1\",\"image\":null}', 'created', '127.0.0.1', 3, 'ldjdjdjs jvsj', 3, 'info', '2017-12-11 23:26:28', '2017-12-11 23:26:28', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'testimonials', '{\"ids\":[\"1\",\"3\"],\"status\":\"0\"}', 'updated', '127.0.0.1', 3, 'Test testimonial name1', 1, 'primary', '2017-12-11 23:26:34', '2017-12-11 23:26:34', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'testimonials', '{\"ids\":[\"1\",\"3\"],\"status\":\"0\"}', 'updated', '127.0.0.1', 3, 'ldjdjdjs jvsj', 3, 'primary', '2017-12-11 23:26:34', '2017-12-11 23:26:34', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'to the system', '{\"_token\":\"yt5TprZ9inZDSai4NjW9c65cf9HuBarUS16xckuY\",\"username\":\"mrminh\",\"password\":\"minh#@123\"}', 'logged in', '127.0.0.1', 3, 'Minh Luu', 3, 'info', '2017-12-12 03:53:54', '2017-12-12 03:53:54', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'to the system', '{\"_token\":\"D0SxMgII1cBPQ3V0M7Ap4rKjteiZYbsPt0WkKVrY\",\"username\":\"mrminh\",\"password\":\"minh#@123\",\"remember\":\"1\"}', 'logged in', '127.0.0.1', 3, 'Minh Luu', 3, 'info', '2017-12-12 07:06:18', '2017-12-12 07:06:18', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'to the system', '{\"_token\":\"5dgCTvA5Ujl4UjMXU9ccYwxOvbTFAyYL2oDnnrCy\",\"username\":\"mrminh\",\"password\":\"minh#@123\"}', 'logged in', '127.0.0.1', 3, 'Minh Luu', 3, 'info', '2017-12-12 21:30:35', '2017-12-12 21:30:35', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'to the system', '{\"_token\":\"DpHJMKxilK0AKlQ57DpeK0fqYCOJLwNlx6PwwoqA\",\"username\":\"mrminh\",\"password\":\"minh#@123\"}', 'logged in', '127.0.0.1', 3, 'Minh Luu', 3, 'info', '2017-12-13 03:04:16', '2017-12-13 03:04:16', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"DpHJMKxilK0AKlQ57DpeK0fqYCOJLwNlx6PwwoqA\",\"name\":\"Test 1\",\"description\":\"desc test 1\",\"performance\":{\"1513162755211\":{\"image\":\"\\/uploads\\/3\\/screen-shot-2017-12-06-at-104025-pm.png\",\"content\":\"aaaaaa\"},\"1513162760859\":{\"image\":\"\\/uploads\\/3\\/no-product-image1.png\",\"content\":\"bbbbb\"}},\"submit\":\"save\",\"order\":\"1\",\"status\":\"1\"}', 'created', '127.0.0.1', 3, 'Test 1', 1, 'info', '2017-12-13 03:59:41', '2017-12-13 03:59:41', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'to the system', '{\"_token\":\"MCkvGvKbFQWNFUdwMpD9MTJNuFtNGjx6VH3zh7Ej\",\"username\":\"mrminh\",\"password\":\"minh#@123\"}', 'logged in', '127.0.0.1', 3, 'Minh Luu', 3, 'info', '2017-12-13 06:04:48', '2017-12-13 06:04:48', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'to the system', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"username\":\"mrminh\",\"password\":\"minh#@123\"}', 'logged in', '127.0.0.1', 3, 'Minh Luu', 3, 'info', '2017-12-13 08:42:02', '2017-12-13 08:42:02', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"Test 2\",\"description\":\"desc test 2\",\"performance\":{\"1513162755211\":{\"image\":null,\"content\":\"aaaaaa1\"}},\"submit\":\"apply\",\"order\":\"2\",\"status\":\"0\"}', 'updated', '127.0.0.1', 3, 'Test 2', 1, 'primary', '2017-12-13 08:42:32', '2017-12-13 08:42:32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"Test 2\",\"description\":\"desc test 2\",\"performance\":{\"1513162755211\":{\"image\":\"\\/uploads\\/3\\/screen-shot-2017-12-06-at-104025-pm.png\",\"content\":\"aaaaaa2\"}},\"submit\":\"save\",\"order\":\"2\",\"status\":\"0\"}', 'updated', '127.0.0.1', 3, 'Test 2', 1, 'primary', '2017-12-13 08:53:00', '2017-12-13 08:53:00', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"Test 2\",\"description\":\"desc test 2\",\"performance\":{\"1513162755211\":{\"image\":null,\"content\":\"aaaaaa2\"},\"1513180405553\":{\"image\":\"\\/uploads\\/3\\/no-product-image1.png\",\"content\":\"test\"}},\"submit\":\"save\",\"order\":\"1\",\"status\":\"1\"}', 'updated', '127.0.0.1', 3, 'Test 2', 1, 'primary', '2017-12-13 08:53:40', '2017-12-13 08:53:40', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"Test 2\",\"description\":\"desc test 2\",\"performance\":{\"1513162755211\":{\"image\":\"\\/uploads\\/3\\/screen-shot-2017-12-06-at-104025-pm.png\",\"content\":\"aaaaaa2\"},\"1513180405553\":{\"image\":null,\"content\":\"test\"}},\"submit\":\"apply\",\"order\":\"1\",\"status\":\"1\"}', 'updated', '127.0.0.1', 3, 'Test 2', 1, 'primary', '2017-12-13 08:55:49', '2017-12-13 08:55:49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"Test 2\",\"description\":\"desc test 2\",\"performance\":{\"1513162755211\":{\"image\":\"\\/uploads\\/3\\/screen-shot-2017-12-06-at-104025-pm.png\",\"content\":\"aaaaaa2\"},\"1513180405553\":{\"image\":\"\\/uploads\\/3\\/no-product-image1.png\",\"content\":\"test\"}},\"submit\":\"apply\",\"order\":\"1\",\"status\":\"1\"}', 'updated', '127.0.0.1', 3, 'Test 2', 1, 'primary', '2017-12-13 08:57:24', '2017-12-13 08:57:24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"Test 3\",\"description\":\"desc test 2\",\"performance\":{\"1513162755211\":{\"image\":\"\\/uploads\\/3\\/screen-shot-2017-12-06-at-104025-pm.png\",\"content\":\"aaaaaa2\"}},\"submit\":\"apply\",\"order\":\"1\",\"status\":\"1\"}', 'updated', '127.0.0.1', 3, 'Test 3', 1, 'primary', '2017-12-13 09:05:32', '2017-12-13 09:05:32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"Abc name\",\"description\":\"kakn ssss\",\"performance\":{\"0\":{\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\",\"content\":\"gdd dddds\"},\"1513181302156\":{\"image\":\"\\/uploads\\/3\\/no-product-image1.png\",\"content\":\"fhthrrr\"}},\"submit\":\"save\",\"order\":\"1\",\"status\":\"1\"}', 'created', '127.0.0.1', 3, 'Abc name', 2, 'info', '2017-12-13 09:08:33', '2017-12-13 09:08:33', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"Lkej ss\",\"description\":\"djjssss\",\"performance\":[{\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\",\"content\":\"ccwqccc\"}],\"submit\":\"apply\",\"order\":\"3\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/screen-shot-2017-12-06-at-104025-pm.png\"}', 'created', '127.0.0.1', 3, 'Lkej ss', 3, 'info', '2017-12-13 09:29:37', '2017-12-13 09:29:37', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"fwefef\",\"description\":\"eweg\",\"performance\":[{\"image\":null,\"content\":null}],\"related_product\":[\"1\"],\"submit\":\"save\",\"order\":\"1\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/screen-shot-2017-12-06-at-104025-pm.png\"}', 'created', '127.0.0.1', 3, 'fwefef', 4, 'info', '2017-12-13 11:10:18', '2017-12-13 11:10:18', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"wawa\",\"description\":\"wawa\",\"performance\":[{\"image\":null,\"content\":null}],\"related_product\":[\"1\",\"9\"],\"submit\":\"save\",\"order\":\"1\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\"}', 'created', '127.0.0.1', 3, 'wawa', 5, 'info', '2017-12-13 11:13:53', '2017-12-13 11:13:53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"hhhv ddd\",\"description\":\"vdddd\",\"performance\":[{\"image\":null,\"content\":null}],\"related_product\":[\"9\",\"83\"],\"submit\":\"save\",\"order\":\"1\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\"}', 'created', '127.0.0.1', 3, 'hhhv ddd', 6, 'info', '2017-12-13 11:16:04', '2017-12-13 11:16:04', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"hhhv ddd\",\"description\":\"vdddd\",\"performance\":[{\"image\":null,\"content\":null}],\"related_product\":[\"9\",\"83\"],\"submit\":\"save\",\"order\":\"1\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\"}', 'created', '127.0.0.1', 3, 'hhhv ddd', 7, 'info', '2017-12-13 11:17:39', '2017-12-13 11:17:39', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"hhhv ddd\",\"description\":\"vdddd\",\"performance\":[{\"image\":null,\"content\":null}],\"related_product\":[\"9\",\"83\"],\"submit\":\"save\",\"order\":\"1\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\"}', 'created', '127.0.0.1', 3, 'hhhv ddd', 8, 'info', '2017-12-13 11:18:15', '2017-12-13 11:18:15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"hhhv ddd\",\"description\":\"vdddd\",\"performance\":[{\"image\":null,\"content\":null}],\"related_product\":[\"9\",\"83\"],\"submit\":\"save\",\"order\":\"1\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\"}', 'created', '127.0.0.1', 3, 'hhhv ddd', 9, 'info', '2017-12-13 11:19:25', '2017-12-13 11:19:25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"hhhv ddd\",\"description\":\"vdddd\",\"performance\":[{\"image\":null,\"content\":null}],\"related_product\":[\"9\",\"83\"],\"submit\":\"save\",\"order\":\"1\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\"}', 'created', '127.0.0.1', 3, 'hhhv ddd', 10, 'info', '2017-12-13 11:20:12', '2017-12-13 11:20:12', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"hhhv ddd\",\"description\":\"vdddd\",\"performance\":[{\"image\":null,\"content\":null}],\"related_product\":[\"9\",\"83\"],\"submit\":\"save\",\"order\":\"1\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\"}', 'created', '127.0.0.1', 3, 'hhhv ddd', 11, 'info', '2017-12-13 11:21:23', '2017-12-13 11:21:23', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"hhhv ddd\",\"description\":\"vdddd\",\"performance\":[{\"image\":null,\"content\":null}],\"related_product\":[\"9\",\"83\"],\"submit\":\"save\",\"order\":\"1\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\"}', 'created', '127.0.0.1', 3, 'hhhv ddd', 12, 'info', '2017-12-13 11:21:51', '2017-12-13 11:21:51', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"pakakj djd\",\"description\":\"vdsvsv scss\",\"performance\":[{\"image\":null,\"content\":null}],\"related_product\":[\"1\",\"83\",\"9\"],\"submit\":\"save\",\"order\":\"1\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/screen-shot-2017-12-06-at-104025-pm.png\"}', 'created', '127.0.0.1', 3, 'pakakj djd', 13, 'info', '2017-12-13 11:24:15', '2017-12-13 11:24:15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"FOezU1fedrnaDqhw6ctkggVDPGpWzIGgVUb4mabD\",\"name\":\"aaaa\",\"description\":\"csdvsdvsv\",\"performance\":[{\"image\":null,\"content\":null}],\"related_product\":[\"1\",\"9\"],\"submit\":\"save\",\"order\":\"1\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/screen-shot-2017-12-06-at-104025-pm.png\"}', 'created', '127.0.0.1', 3, 'aaaa', 14, 'info', '2017-12-13 11:25:26', '2017-12-13 11:25:26', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'to the system', '{\"_token\":\"fZumfhjm5Cpp8Rc6gMNF5RMzGoDEuC42SRkzFbnQ\",\"username\":\"mrminh\",\"password\":\"minh#@123\"}', 'logged in', '127.0.0.1', 3, 'Minh Luu', 3, 'info', '2017-12-13 19:42:00', '2017-12-13 19:42:00', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'to the system', '{\"_token\":\"gNrjP88ndPusc55mn8ImZARjLEYyotYsLkdSs80G\",\"username\":\"mrminh\",\"password\":\"minh#@123\"}', 'logged in', '127.0.0.1', 3, 'Minh Luu', 3, 'info', '2017-12-14 08:57:48', '2017-12-14 08:57:48', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"ids\":[\"6\",\"7\",\"8\",\"9\",\"10\"]}', 'deleted', '127.0.0.1', 3, 'hhhv ddd', 6, 'danger', '2017-12-14 08:58:11', '2017-12-14 08:58:11', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"ids\":[\"6\",\"7\",\"8\",\"9\",\"10\"]}', 'deleted', '127.0.0.1', 3, 'hhhv ddd', 7, 'danger', '2017-12-14 08:58:11', '2017-12-14 08:58:11', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"ids\":[\"6\",\"7\",\"8\",\"9\",\"10\"]}', 'deleted', '127.0.0.1', 3, 'hhhv ddd', 8, 'danger', '2017-12-14 08:58:11', '2017-12-14 08:58:11', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"ids\":[\"6\",\"7\",\"8\",\"9\",\"10\"]}', 'deleted', '127.0.0.1', 3, 'hhhv ddd', 9, 'danger', '2017-12-14 08:58:11', '2017-12-14 08:58:11', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"ids\":[\"6\",\"7\",\"8\",\"9\",\"10\"]}', 'deleted', '127.0.0.1', 3, 'hhhv ddd', 10, 'danger', '2017-12-14 08:58:11', '2017-12-14 08:58:11', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"ids\":[\"11\",\"12\",\"13\"]}', 'deleted', '127.0.0.1', 3, 'hhhv ddd', 11, 'danger', '2017-12-14 08:58:21', '2017-12-14 08:58:21', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"ids\":[\"11\",\"12\",\"13\"]}', 'deleted', '127.0.0.1', 3, 'hhhv ddd', 12, 'danger', '2017-12-14 08:58:21', '2017-12-14 08:58:21', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"ids\":[\"11\",\"12\",\"13\"]}', 'deleted', '127.0.0.1', 3, 'pakakj djd', 13, 'danger', '2017-12-14 08:58:21', '2017-12-14 08:58:21', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"gNrjP88ndPusc55mn8ImZARjLEYyotYsLkdSs80G\",\"name\":\"Product solution 1\",\"description\":\"Product solution 1\",\"performance\":[{\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\",\"content\":\"aaaaaa\"}],\"related_product\":[\"1\",\"9\"],\"submit\":\"apply\",\"order\":\"1\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/screen-shot-2017-12-06-at-104025-pm.png\"}', 'created', '127.0.0.1', 3, 'Product solution 1', 15, 'info', '2017-12-14 09:14:18', '2017-12-14 09:14:18', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'products', '{\"_token\":\"gNrjP88ndPusc55mn8ImZARjLEYyotYsLkdSs80G\",\"name\":\"s\\u1ea3n ph\\u1ea9m a\",\"submit\":\"save\",\"status\":\"1\"}', 'created', '127.0.0.1', 3, 'sản phẩm a', 1, 'info', '2017-12-14 09:44:49', '2017-12-14 09:44:49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'products', '{\"_token\":\"gNrjP88ndPusc55mn8ImZARjLEYyotYsLkdSs80G\",\"name\":\"Apple Watch\",\"submit\":\"save\",\"status\":\"1\"}', 'created', '127.0.0.1', 3, 'Apple Watch', 2, 'info', '2017-12-14 09:45:00', '2017-12-14 09:45:00', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'products', '{\"_token\":\"gNrjP88ndPusc55mn8ImZARjLEYyotYsLkdSs80G\",\"name\":\"Keyboard abc\",\"submit\":\"save\",\"status\":\"1\"}', 'created', '127.0.0.1', 3, 'Keyboard abc', 3, 'info', '2017-12-14 10:05:25', '2017-12-14 10:05:25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"gNrjP88ndPusc55mn8ImZARjLEYyotYsLkdSs80G\",\"name\":\"Product solution 1\",\"description\":\"Product solution 1\",\"performance\":[{\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\",\"content\":\"aaaaaa\"}],\"related_product\":[\"1\",\"1\",\"2\"],\"submit\":\"save\",\"order\":\"1\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/screen-shot-2017-12-06-at-104025-pm.png\"}', 'updated', '127.0.0.1', 3, 'Product solution 1', 15, 'primary', '2017-12-14 10:06:46', '2017-12-14 10:06:46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"gNrjP88ndPusc55mn8ImZARjLEYyotYsLkdSs80G\",\"name\":\"Solution test 2\",\"description\":\"Solution test 2\",\"performance\":[{\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\",\"content\":\"vdssvv\"}],\"related_product\":[\"2\",\"3\"],\"submit\":\"save\",\"order\":\"2\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/screen-shot-2017-12-06-at-104025-pm.png\"}', 'created', '127.0.0.1', 3, 'Solution test 2', 16, 'info', '2017-12-14 10:36:26', '2017-12-14 10:36:26', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"gNrjP88ndPusc55mn8ImZARjLEYyotYsLkdSs80G\",\"name\":\"Solution test 2\",\"description\":\"Solution test 2\",\"performance\":[{\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\",\"content\":\"vdssvv\"}],\"related_product\":[\"1\",\"3\",\"2\"],\"submit\":\"save\",\"order\":\"2\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/screen-shot-2017-12-06-at-104025-pm.png\"}', 'updated', '127.0.0.1', 3, 'Solution test 2', 16, 'primary', '2017-12-14 10:37:09', '2017-12-14 10:37:09', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"gNrjP88ndPusc55mn8ImZARjLEYyotYsLkdSs80G\",\"name\":\"Solution test 2\",\"description\":\"Solution test 2\",\"performance\":[{\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\",\"content\":\"vdssvv\"}],\"related_product\":[\"1\",\"3\",\"2\"],\"submit\":\"apply\",\"order\":\"2\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/screen-shot-2017-12-06-at-104025-pm.png\"}', 'updated', '127.0.0.1', 3, 'Solution test 2', 16, 'primary', '2017-12-14 10:38:46', '2017-12-14 10:38:46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"gNrjP88ndPusc55mn8ImZARjLEYyotYsLkdSs80G\",\"name\":\"Solution test 2\",\"description\":\"Solution test 2\",\"performance\":[{\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\",\"content\":\"vdssvv\"}],\"related_product\":[\"3\",\"1\",\"2\"],\"submit\":\"apply\",\"order\":\"2\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/screen-shot-2017-12-06-at-104025-pm.png\"}', 'updated', '127.0.0.1', 3, 'Solution test 2', 16, 'primary', '2017-12-14 10:43:54', '2017-12-14 10:43:54', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"gNrjP88ndPusc55mn8ImZARjLEYyotYsLkdSs80G\",\"name\":\"Solution test 2\",\"description\":\"Solution test 2\",\"performance\":[{\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\",\"content\":\"vdssvv\"}],\"related_product\":[\"3\",\"1\",\"2\"],\"submit\":\"apply\",\"order\":\"5\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/screen-shot-2017-12-06-at-104025-pm.png\"}', 'updated', '127.0.0.1', 3, 'Solution test 2', 16, 'primary', '2017-12-14 10:50:46', '2017-12-14 10:50:46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36'),
(3, 'productsolutions', '{\"_token\":\"gNrjP88ndPusc55mn8ImZARjLEYyotYsLkdSs80G\",\"name\":\"Solution test 2\",\"description\":\"Solution test 2\",\"performance\":[{\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\",\"content\":\"vdssvv\"}],\"related_product\":[\"3\",\"1\",\"2\"],\"submit\":\"apply\",\"order\":\"5\",\"status\":\"1\",\"image\":\"\\/uploads\\/3\\/screen-shot-2017-12-06-at-104025-pm.png\"}', 'updated', '127.0.0.1', 3, 'Solution test 2', 16, 'primary', '2017-12-14 10:51:15', '2017-12-14 10:51:15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.108 Chrome/60.4.3112.108 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `name`, `description`, `content`, `status`, `user_id`, `created_at`, `updated_at`, `alias`) VALUES
(1, 'Sample block', 'This is a sample block', '<p><strong><span style=\"color: #ff6600;\">This block will be shown on the page has its shortcode!</span></strong></p>', 1, 1, '2017-06-15 07:27:06', '2017-06-15 07:27:06', 'sample-block');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `description`, `status`, `user_id`, `deleted_at`, `created_at`, `updated_at`, `icon`, `featured`, `order`, `is_default`) VALUES
(1, 'Uncategorized', 'uncategorized', 0, 'Demo', 1, 0, NULL, '2016-07-09 16:32:39', '2016-11-25 07:31:58', '', 0, 0, 1),
(6, 'Events', 'events', 0, 'Event description', 1, 1, NULL, '2016-08-02 22:13:34', '2016-11-25 07:32:02', '', 1, 0, 0),
(7, 'Projects', 'projects', 6, 'Projects description', 1, 1, NULL, '2016-08-02 22:13:52', '2017-04-30 19:58:41', NULL, 0, 3, 0),
(8, 'Portfolio', 'portfolio', 9, 'Description', 1, 1, NULL, '2016-09-27 09:32:06', '2017-04-30 19:58:21', NULL, 0, 0, 0),
(9, 'Business', 'business', 0, 'Business', 1, 1, NULL, '2016-09-28 09:38:25', '2017-04-30 19:59:12', NULL, 1, 2, 0),
(10, 'Resources', 'resources', 11, 'Resource', 1, 1, NULL, '2016-09-28 09:39:46', '2017-04-30 19:58:55', NULL, 0, 4, 0),
(11, 'New & Updates', 'new-update', 0, 'News and Update', 1, 1, NULL, '2016-09-28 09:40:25', '2016-11-25 07:31:56', '', 1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `is_read` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `content`, `is_read`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Demo contact', 'admin@admin.com', '0123456789', 'Somewhere in the world', 'The sample content', 0, NULL, '2017-01-15 21:19:27', '2017-01-15 21:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `use_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` int(10) UNSIGNED NOT NULL,
  `field_item_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(5, 'widget_analytics_general', '2016-11-28 08:17:29', '2016-11-28 08:17:29'),
(6, 'widget_analytics_browser', '2016-11-28 08:17:29', '2016-11-28 08:17:29'),
(7, 'widget_analytics_page', '2016-11-28 08:17:29', '2016-11-28 08:17:29'),
(8, 'widget_analytics_referrer', '2016-11-28 08:17:29', '2016-11-28 08:17:29'),
(9, 'widget_posts_recent', '2016-11-28 09:10:31', '2016-11-28 09:10:31'),
(10, 'widget_audit_logs', '2016-11-28 09:10:31', '2016-11-28 09:10:31'),
(11, 'widget_request_errors', '2016-11-28 09:10:31', '2016-11-28 09:10:31');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, '{\"state\":\"collapse\"}', 1, 7, 3, 1, '2016-11-28 09:48:26', '2017-07-12 08:25:35'),
(2, NULL, 1, 5, 0, 1, '2016-11-29 02:11:14', '2016-12-03 20:48:17'),
(3, NULL, 1, 6, 4, 1, '2016-11-29 02:11:14', '2016-12-08 08:37:41'),
(4, '{\"state\":\"expand\"}', 1, 8, 2, 1, '2016-11-29 02:11:14', '2017-07-12 08:03:08'),
(5, '{\"state\":\"expand\"}', 1, 9, 5, 1, '2016-11-29 02:11:14', '2017-07-12 08:08:47'),
(6, NULL, 1, 10, 1, 1, '2016-11-29 02:11:14', '2017-03-12 07:38:44'),
(7, NULL, 1, 11, 6, 1, '2016-11-29 02:11:15', '2016-12-03 20:48:17'),
(8, '{\"state\":\"expand\"}', 3, 5, 0, 1, '2017-12-11 21:24:02', '2017-12-11 21:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `feature_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`feature_id`, `created_at`, `updated_at`) VALUES
(1, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(9, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(5, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(13, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(25, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(26, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(27, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(29, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(83, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(87, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(107, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(111, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(116, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(120, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(136, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(144, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(149, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(161, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(162, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(173, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(177, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(287, '2017-12-11 07:19:43', '2017-12-11 07:19:43'),
(292, '2017-12-11 21:37:07', '2017-12-11 21:37:07'),
(296, '2017-12-12 07:27:18', '2017-12-12 07:27:18'),
(300, '2017-12-13 09:35:34', '2017-12-13 09:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `field_groups`
--

CREATE TABLE `field_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_items`
--

CREATE TABLE `field_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_group_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `slug`, `description`, `status`, `featured`, `order`, `image`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Photography', 'photography', 'This is description', 1, 1, 0, 'uploads/1/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg', 1, NULL, '2016-10-13 09:49:13', '2016-10-15 01:44:19'),
(2, 'Selfie', 'selfie', 'This is demo gallery', 1, 1, 0, 'uploads/1/galleries/1476513483-misty-mountains-1280x720.jpg', 1, NULL, '2016-10-13 09:56:07', '2016-10-15 00:57:00'),
(3, 'New Day', 'new-day', 'This is demo gallery', 1, 1, 0, 'uploads/1/galleries/1476520418-supergirl-season-2-1280x720.jpg', 1, NULL, '2016-10-13 09:56:44', '2016-10-15 01:33:45'),
(4, 'Morning', 'morning', 'Hello', 1, 1, 0, 'uploads/1/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg', 1, NULL, '2016-10-13 09:57:30', '2016-10-15 01:00:08'),
(5, 'Happy day', 'happy-day', 'Demo', 1, 1, 0, 'uploads/1/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg', 1, NULL, '2016-10-13 09:58:11', '2016-10-15 01:00:32'),
(6, 'Perfect', 'perfect', 'This is perfect description', 1, 1, 0, 'uploads/1/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg', 1, NULL, '2016-10-13 09:58:40', '2016-10-15 01:00:42');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

CREATE TABLE `gallery_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_id` int(10) UNSIGNED NOT NULL,
  `images` text COLLATE utf8_unicode_ci,
  `reference` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `content_id`, `images`, `reference`, `created_at`, `updated_at`) VALUES
(41, 1, '[{\"img\":\"uploads/1/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg\",\"description\":null}]', 'gallery', '2016-11-25 07:48:42', '2016-11-25 07:49:26'),
(42, 2, '[{\"img\":\"uploads/1/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg\",\"description\":null}]', 'gallery', '2016-11-25 07:50:01', '2016-11-25 07:50:01'),
(43, 3, '[{\"img\":\"uploads/1/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg\",\"description\":null}]', 'gallery', '2016-11-25 07:50:20', '2016-11-25 07:50:20'),
(44, 4, '[{\"img\":\"uploads/1/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg\",\"description\":null}]', 'gallery', '2016-11-25 07:50:31', '2016-11-25 07:50:31'),
(45, 5, '[{\"img\":\"uploads/1/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg\",\"description\":null}]', 'gallery', '2016-11-25 07:50:42', '2016-11-25 07:50:42'),
(46, 6, '[{\"img\":\"uploads/1/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg\",\"description\":null}]', 'gallery', '2016-11-25 07:50:53', '2016-11-25 07:50:53'),
(47, 1, '[{\"img\":\"/uploads/1/news/9325995752-e4ecc539f2-o-660x330.jpg\",\"description\":null},{\"img\":\"/uploads/1/news/7998125906-4489ed8a2f-b-660x330.jpg\",\"description\":null}]', 'page', '2017-07-14 08:29:29', '2017-07-14 08:29:45');

-- --------------------------------------------------------

--
-- Table structure for table `invites`
--

CREATE TABLE `invites` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `accepted` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `invitee_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invites`
--

INSERT INTO `invites` (`id`, `token`, `accepted`, `user_id`, `invitee_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'vYWPZI2foYbKoQpjfhifASfh7Y16d8KE', 1, 1, 2, 2, '2016-05-12 01:38:04', '2016-05-12 01:39:53'),
(2, 'qzkdjIrhAUu9GtI28mxJQq41dESRcjWW', 1, 1, 2, 1, '2016-08-11 14:03:38', '2016-10-07 23:43:05'),
(3, 'yIgIbJOqi7BS0c3KzNxntyqdPYmsol7S', 0, 1, 3, 1, '2016-08-11 14:06:44', '2016-08-11 14:06:44'),
(4, 'rjlyoOM5m3oirLB8DpWnaHNzfqtWn7a5', 0, 1, 1, 1, '2016-08-17 16:56:08', '2016-08-17 16:56:08'),
(5, 'ddRmB1Ii7b3ONwu4peLTXtPsHlckMmO2', 1, 1, 2, 1, '2016-10-07 23:24:11', '2017-06-02 18:55:43'),
(6, 'VhU5J32TBFInxCL7Zz4Bm7ZtgTf73Q8J', 0, 1, 3, 1, '2016-11-15 01:59:24', '2016-11-15 01:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lang_is_default` tinyint(1) NOT NULL DEFAULT '0',
  `lang_order` int(11) NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint(1) NOT NULL DEFAULT '0',
  `lang_flag` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_is_default`, `lang_order`, `lang_is_rtl`, `lang_flag`) VALUES
(44, 'English', 'en', 'en_US', 1, 0, 0, 'us'),
(45, 'Tiếng Việt', 'vi', 'vi', 0, 0, 0, 'vn');

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_content_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8_unicode_ci,
  `lang_meta_reference` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_content_id`, `lang_meta_code`, `lang_meta_reference`, `lang_meta_origin`) VALUES
(3, 4, 'en_US', 'post', 'a9d40e38f773df46bfe3857c89404a5f'),
(4, 5, 'en_US', 'post', '9cf3508b0becc5829411b251ab1d7d68'),
(5, 6, 'en_US', 'post', '14ea2c977bff486d5d93caeeddb25433'),
(6, 7, 'en_US', 'post', '1e3d1a0e8a2d0b0a820f6fa5ff37913b'),
(7, 8, 'en_US', 'post', 'efa2fcd9b0bc7221fc37de650db1095d'),
(8, 9, 'en_US', 'post', '5aa291a9490cf5a6b770e4ef67eecf51'),
(9, 10, 'en_US', 'post', 'ddf6b2634ac599fca598c9f707d7e967'),
(10, 11, 'en_US', 'post', '0162b0f534be9b5c0de3a2c21ee12a22'),
(11, 12, 'en_US', 'post', '58d24bc8ca3ef58e26b6f5f2e97feb52'),
(13, 14, 'en_US', 'post', '6a95efc9f3493402f6edc17125a5f621'),
(14, 19, 'en_US', 'post', 'be26223edcf68e5f63a1a6437ba0be15'),
(15, 15, 'en_US', 'post', '36292b94b5bc330e88721f87c05e3d1c'),
(16, 16, 'en_US', 'post', 'e4bc15912ab7551f41dda75cab017005'),
(17, 17, 'en_US', 'post', '73bd326091a134d6eb79570db924bb3d'),
(18, 18, 'en_US', 'post', '77999a905526eb38febac6a1e0f1f5d9'),
(19, 20, 'en_US', 'post', '26af70c0ef781166972928bd181ab10b'),
(20, 21, 'en_US', 'post', '3856d68ccb4721e6432dcc1ee7001e20'),
(21, 44, 'vi', 'post', 'a9d40e38f773df46bfe3857c89404a5f'),
(22, 45, 'vi', 'post', '9cf3508b0becc5829411b251ab1d7d68'),
(23, 47, 'vi', 'post', '14ea2c977bff486d5d93caeeddb25433'),
(24, 46, 'vi', 'post', 'efa2fcd9b0bc7221fc37de650db1095d'),
(25, 11, 'en_US', 'category', '4703171c553ee525c3a5436c254619cf'),
(26, 1, 'en_US', 'category', 'ff750ed85cf1ac627f2b323889f78dd6'),
(27, 6, 'en_US', 'category', '5d21f76eddb6b3d536cb390f4cda77bc'),
(28, 7, 'en_US', 'category', 'cd22dfa504c9bf620938f913773df770'),
(29, 8, 'en_US', 'category', 'da650dfca58083229317df283b16fa02'),
(30, 9, 'en_US', 'category', 'faa61a3d1e5630da1dc2cdcb4f11b552'),
(31, 10, 'en_US', 'category', '55be2035a27da7bfcc8ed4aeab28f4f1'),
(32, 5, 'en_US', 'tag', 'f0698ed728cc9c18387840b72346e005'),
(33, 6, 'en_US', 'tag', 'e4ef34ee9099a01fcec8f45a79c5d4ba'),
(34, 1, 'en_US', 'gallery', 'b5956d5eec65f9edeb008fdd97771f3e'),
(35, 2, 'en_US', 'gallery', '4367a6d49e1eb6e5fb64d77052997e9c'),
(36, 3, 'en_US', 'gallery', '0cc8e19b35bb9b0a6b0b45d8a358ee6c'),
(37, 4, 'en_US', 'gallery', 'a2879f55a54f0e629851df6b48f61241'),
(38, 5, 'en_US', 'gallery', 'e6ceb4ae110f3d66f9444211a2ac8337'),
(39, 6, 'en_US', 'gallery', '9f2f8e1a4752378951cc1312b419c102'),
(40, 1, 'en_US', 'menu', '19848c17b2e0b8fd374ae6f4741599c4'),
(41, 3, 'en_US', 'menu', '5d79633980667117eaee456018277ad8'),
(42, 7, 'en_US', 'menu', 'b1ae8e07383b5d47e821dac905c86e6d'),
(43, 8, 'en_US', 'menu', '78d39e8989bebaa53bac83ff0fedc678'),
(44, 9, 'en_US', 'menu', '33a202bdbd1d82470cc1837e85622c5e'),
(45, 10, 'vi', 'menu', '19848c17b2e0b8fd374ae6f4741599c4'),
(47, 23, 'en_US', 'page', '0bff9f3639cec70a3f65fc0149ad2b24'),
(48, 1, 'en_US', 'page', '3e971ce162e3737ae2b7af1e78c4bca2'),
(49, 17, 'vi', 'page', '3e971ce162e3737ae2b7af1e78c4bca2'),
(50, 7, 'en_US', 'tag', 'f5a7aacaa745d7b1df533180f61bab95'),
(51, 1, 'en_US', 'block', '671424045986775272d0ceb6aab7139a');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `focus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `focus`, `options`, `is_public`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720', 1, 'image/jpeg', 172017, '/uploads/1/galleries/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg', NULL, '[]', 0, '2017-05-30 06:41:23', '2017-05-30 06:41:23', NULL),
(2, 1, '1476513483-misty-mountains-1280x720', 1, 'image/jpeg', 115996, '/uploads/1/galleries/1476513483-misty-mountains-1280x720.jpg', NULL, '[]', 0, '2017-05-30 06:41:24', '2017-05-30 06:41:24', NULL),
(3, 1, '1476513484-power-rangers-blue-ranger-4k-1280x720', 1, 'image/jpeg', 110182, '/uploads/1/galleries/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg', NULL, '[]', 0, '2017-05-30 06:41:26', '2017-05-30 06:41:26', NULL),
(4, 1, '1476513486-power-rangers-red-ranger-4k-1280x720', 1, 'image/jpeg', 131618, '/uploads/1/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg', NULL, '[]', 0, '2017-05-30 06:41:28', '2017-05-30 06:41:28', NULL),
(5, 1, '1476513488-spectacular-sunrise-4k-1280x720', 1, 'image/jpeg', 59951, '/uploads/1/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg', NULL, '[]', 0, '2017-05-30 06:41:30', '2017-05-30 06:41:30', NULL),
(6, 1, '1476513490-tulips-4k-8k-768x1280', 1, 'image/jpeg', 79663, '/uploads/1/galleries/1476513490-tulips-4k-8k-768x1280.jpg', NULL, '[]', 0, '2017-05-30 06:41:31', '2017-05-30 06:41:31', NULL),
(7, 1, '1476513493-world-of-tanks-football-event-1280x720', 1, 'image/jpeg', 210966, '/uploads/1/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg', NULL, '[]', 0, '2017-05-30 06:41:33', '2017-05-30 06:41:33', NULL),
(8, 1, '1476520418-supergirl-season-2-1280x720', 1, 'image/jpeg', 152860, '/uploads/1/galleries/1476520418-supergirl-season-2-1280x720.jpg', NULL, '[]', 0, '2017-05-30 06:41:35', '2017-05-30 06:41:35', NULL),
(9, 1, '1476520641-elena-siberian-tigress-4k-1280x720', 1, 'image/jpeg', 212356, '/uploads/1/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg', NULL, '[]', 0, '2017-05-30 06:41:37', '2017-05-30 06:41:37', NULL),
(10, 1, '1476521053-volkswagen-id-paris-motor-show-4k-1280x720', 1, 'image/jpeg', 143223, '/uploads/1/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg', NULL, '[]', 0, '2017-05-30 06:41:39', '2017-05-30 06:41:39', NULL),
(11, 1, '1493607187-1493225486-logo', 2, 'image/png', 3161, '/uploads/1/logo/1493607187-1493225486-logo.png', NULL, '[]', 0, '2017-05-30 06:41:59', '2017-05-30 06:41:59', NULL),
(12, 1, '1476890029-hero01', 3, 'image/jpeg', 106200, '/uploads/1/news/1476890029-hero01.jpg', NULL, '[]', 0, '2017-05-30 06:42:20', '2017-05-30 06:42:20', NULL),
(13, 1, '1476890031-hero02', 3, 'image/jpeg', 56843, '/uploads/1/news/1476890031-hero02.jpg', NULL, '[]', 0, '2017-05-30 06:42:21', '2017-05-30 06:42:21', NULL),
(14, 1, '1476890033-hero03', 3, 'image/jpeg', 86015, '/uploads/1/news/1476890033-hero03.jpg', NULL, '[]', 0, '2017-05-30 06:42:23', '2017-05-30 06:42:23', NULL),
(15, 1, '1476890034-hero04', 3, 'image/jpeg', 73927, '/uploads/1/news/1476890034-hero04.jpg', NULL, '[]', 0, '2017-05-30 06:42:25', '2017-05-30 06:42:25', NULL),
(16, 1, '1476890036-hero05', 3, 'image/jpeg', 82371, '/uploads/1/news/1476890036-hero05.jpg', NULL, '[]', 0, '2017-05-30 06:42:26', '2017-05-30 06:42:26', NULL),
(17, 1, '1476891035-01', 3, 'image/jpeg', 139584, '/uploads/1/news/1476891035-01.jpg', NULL, '[]', 0, '2017-05-30 06:42:28', '2017-05-30 06:42:28', NULL),
(18, 1, '1476891195-02', 3, 'image/jpeg', 135878, '/uploads/1/news/1476891195-02.jpg', NULL, '[]', 0, '2017-05-30 06:42:30', '2017-05-30 06:42:30', NULL),
(19, 1, '1476891197-03', 3, 'image/jpeg', 135377, '/uploads/1/news/1476891197-03.jpg', NULL, '[]', 0, '2017-05-30 06:42:32', '2017-05-30 06:42:32', NULL),
(20, 1, '1476891198-04', 3, 'image/jpeg', 192746, '/uploads/1/news/1476891198-04.jpg', NULL, '[]', 0, '2017-05-30 06:42:33', '2017-05-30 06:42:33', NULL),
(21, 1, '1476893532-01', 3, 'image/jpeg', 139584, '/uploads/1/news/1476893532-01.jpg', NULL, '[]', 0, '2017-05-30 06:42:35', '2017-05-30 06:42:35', NULL),
(22, 1, '1476893533-02', 3, 'image/jpeg', 190105, '/uploads/1/news/1476893533-02.jpg', NULL, '[]', 0, '2017-05-30 06:42:37', '2017-05-30 06:42:37', NULL),
(23, 1, '1806717289-6e97fe91c9-b-660x330', 3, 'image/jpeg', 30592, '/uploads/1/news/1806717289-6e97fe91c9-b-660x330.jpg', NULL, '[]', 0, '2017-05-30 06:42:39', '2017-05-30 06:42:39', NULL),
(24, 1, '4381851322-d46fd7d75e-b-660x330', 3, 'image/jpeg', 68706, '/uploads/1/news/4381851322-d46fd7d75e-b-660x330.jpg', NULL, '[]', 0, '2017-05-30 06:42:40', '2017-05-30 06:42:40', NULL),
(25, 1, '6940343109-8e0633088e-b-660x330', 3, 'image/jpeg', 87314, '/uploads/1/news/6940343109-8e0633088e-b-660x330.jpg', NULL, '[]', 0, '2017-05-30 06:42:42', '2017-05-30 06:42:42', NULL),
(26, 1, '7717834982-bbd7e12b8c-b-660x330', 3, 'image/jpeg', 49286, '/uploads/1/news/7717834982-bbd7e12b8c-b-660x330.jpg', NULL, '[]', 0, '2017-05-30 06:42:43', '2017-05-30 06:42:43', NULL),
(27, 1, '7998125906-4489ed8a2f-b-660x330', 3, 'image/jpeg', 51071, '/uploads/1/news/7998125906-4489ed8a2f-b-660x330.jpg', NULL, '[]', 0, '2017-05-30 06:42:45', '2017-05-30 06:42:45', NULL),
(28, 1, '8980424864-bbdd635150-k-660x330', 3, 'image/jpeg', 34996, '/uploads/1/news/8980424864-bbdd635150-k-660x330.jpg', NULL, '[]', 0, '2017-05-30 06:42:47', '2017-05-30 06:42:47', NULL),
(29, 1, '9325995752-e4ecc539f2-o-660x330', 3, 'image/jpeg', 35376, '/uploads/1/news/9325995752-e4ecc539f2-o-660x330.jpg', NULL, '[]', 0, '2017-05-30 06:42:48', '2017-05-30 06:42:48', NULL),
(30, 1, 'lock-660x330', 3, 'image/jpeg', 50378, '/uploads/1/news/lock-660x330.jpg', NULL, '[]', 0, '2017-05-30 06:42:50', '2017-05-30 06:42:50', NULL),
(31, 1, 'nmnkzkiyqsygikfjinsb-20140717-212636-3-660x330', 3, 'image/jpeg', 64544, '/uploads/1/news/nmnkzkiyqsygikfjinsb-20140717-212636-3-660x330.jpg', NULL, '[]', 0, '2017-05-30 06:42:52', '2017-05-30 06:42:52', NULL),
(32, 1, 'old-car-660x330', 3, 'image/jpeg', 70127, '/uploads/1/news/old-car-660x330.jpg', NULL, '[]', 0, '2017-05-30 06:42:53', '2017-05-30 06:42:53', NULL),
(33, 3, 'graphic_product_tangible', 0, 'image/png', 28055, '/uploads/3/graphic-product-tangible.png', NULL, '[]', 0, '2017-12-06 00:06:57', '2017-12-06 00:06:57', NULL),
(34, 3, 'Screen Shot 2017-12-06 at 10.40.25 PM', 0, 'image/png', 23053, '/uploads/3/screen-shot-2017-12-06-at-104025-pm.png', NULL, '[]', 0, '2017-12-11 21:32:13', '2017-12-11 21:32:13', NULL),
(35, 3, 'no-product-image1', 0, 'image/png', 17786, '/uploads/3/no-product-image1.png', NULL, '[]', 0, '2017-12-11 21:32:44', '2017-12-11 21:32:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_public` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `is_public`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'galleries', 'galleries', 0, 0, '2017-05-30 06:27:16', '2017-05-30 06:27:16', NULL),
(2, 1, 'logo', 'logo', 0, 0, '2017-05-30 06:27:28', '2017-05-30 06:27:28', NULL),
(3, 1, 'news', 'news', 0, 0, '2017-05-30 06:27:35', '2017-05-30 06:27:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_shares`
--

CREATE TABLE `media_shares` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `shared_by` int(11) NOT NULL,
  `share_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `share_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 1, NULL, '2016-06-17 17:53:45', '2016-08-14 20:25:34'),
(3, 'Top Right Menu', 'right-menu', 1, NULL, '2016-08-03 03:20:10', '2016-09-27 08:30:46'),
(6, 'Social', 'social', 1, NULL, '2016-10-19 23:26:54', '2016-10-19 23:26:54'),
(7, 'Favorite website', 'favorite-website', 1, NULL, '2016-10-21 10:21:23', '2016-10-21 10:21:23'),
(8, 'My links', 'my-links', 1, NULL, '2016-10-21 10:24:36', '2016-10-21 10:24:36'),
(9, 'Featured Categories', 'featured-categories', 1, NULL, '2016-10-21 10:52:59', '2016-10-21 10:52:59'),
(10, 'Menu chính', 'menu-chinh', 1, NULL, '2016-11-15 00:56:14', '2016-11-15 00:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `menu_contents`
--

CREATE TABLE `menu_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_contents`
--

INSERT INTO `menu_contents` (`id`, `menu_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2016-06-17 17:54:03', '2016-06-17 17:54:06', NULL),
(3, 3, '2016-08-03 03:20:10', '2016-08-03 03:20:10', NULL),
(6, 6, '2016-10-19 23:26:54', '2016-10-19 23:26:54', NULL),
(7, 7, '2016-10-21 10:21:23', '2016-10-21 10:21:23', NULL),
(8, 8, '2016-10-21 10:24:36', '2016-10-21 10:24:36', NULL),
(9, 9, '2016-10-21 10:52:59', '2016-10-21 10:52:59', NULL),
(10, 10, '2016-11-15 00:56:14', '2016-11-15 00:56:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_content_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `related_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target` enum('_blank','_parent','_self','_top') COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_content_id`, `parent_id`, `related_id`, `type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `created_at`, `updated_at`, `deleted_at`) VALUES
(543, 3, 0, 5, 'pages', '', '', 4, '', '', '_self', '2016-09-27 08:40:29', '2016-11-06 18:35:31', NULL),
(544, 3, 0, 1, 'pages', '', '', 5, 'Contact', '', '_self', '2016-09-27 08:40:29', '2016-10-15 18:45:57', NULL),
(545, 1, 0, 0, 'custom-link', '', '', 0, 'Home', '', '_self', '2016-09-27 09:16:52', '2016-09-27 09:27:13', NULL),
(557, 3, 0, 7, 'categories', '', '', 3, 'Projects', '', '_self', '2016-09-27 09:31:43', '2016-10-15 18:45:57', NULL),
(558, 3, 0, 8, 'categories', '', '', 2, 'Portfolio', '', '_self', '2016-09-27 09:32:22', '2016-10-15 18:45:57', NULL),
(559, 3, 0, 0, 'custom-link', '/downloads', '', 1, 'Downloads', '', '_self', '2016-09-30 21:32:32', '2016-10-15 18:45:57', NULL),
(560, 3, 0, 0, 'custom-link', '/galleries', '', 0, 'Galleries', '', '_self', '2016-10-15 18:45:57', '2016-10-15 18:45:57', NULL),
(561, 1, 0, 11, 'categories', '', '', 2, 'New & Updates', '', '_self', '2016-10-19 08:09:16', '2016-10-19 08:11:43', NULL),
(562, 1, 561, 6, 'categories', '', '', 0, 'Events', '', '_self', '2016-10-19 08:09:16', '2016-10-19 08:09:16', NULL),
(563, 1, 566, 8, 'categories', '', '', 0, 'Portfolio', '', '_self', '2016-10-19 08:09:16', '2016-10-21 10:26:25', NULL),
(564, 1, 566, 7, 'categories', '', '', 1, 'Projects', '', '_self', '2016-10-19 08:09:16', '2016-10-21 10:26:25', NULL),
(565, 1, 561, 10, 'categories', '', '', 2, 'Resources', '', '_self', '2016-10-19 08:09:16', '2016-10-19 08:10:27', NULL),
(566, 1, 0, 0, 'custom-link', '/galleries', '', 3, 'Galleries', '', '_self', '2016-10-19 08:09:16', '2016-10-21 10:26:25', NULL),
(567, 1, 561, 9, 'categories', '', '', 1, 'Business', '', '_self', '2016-10-19 08:09:50', '2016-10-19 08:09:50', NULL),
(568, 1, 0, 1, 'pages', '', '', 4, 'Contact', '', '_self', '2016-10-19 08:10:27', '2016-10-19 08:11:43', NULL),
(569, 1, 0, 0, 'custom-link', 'https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182?ref=botble', '', 1, 'Purchase', '', '_blank', '2016-10-19 08:11:43', '2016-11-19 02:26:19', NULL),
(571, 6, 0, 0, 'custom-link', 'https://facebook.com', 'fa fa-facebook', 0, 'Facebook', '', '_self', '2016-10-19 23:28:25', '2016-10-19 23:28:25', NULL),
(572, 6, 0, 0, 'custom-link', 'https://twitter.com', 'fa fa-twitter', 1, 'Twitter', '', '_self', '2016-10-19 23:28:26', '2016-10-19 23:28:26', NULL),
(573, 6, 0, 0, 'custom-link', 'https://plus.google.com', 'fa fa-google-plus', 2, 'Google Plus', '', '_self', '2016-10-19 23:29:24', '2016-10-19 23:29:24', NULL),
(574, 6, 0, 0, 'custom-link', 'https://github.com', 'fa fa-github', 3, 'Github', '', '_self', '2016-10-19 23:29:24', '2016-10-19 23:29:24', NULL),
(575, 7, 0, 0, 'custom-link', 'http://speckyboy.com', '', 0, 'Speckyboy Magazine', '', '_self', '2016-10-21 10:24:16', '2016-10-21 10:24:16', NULL),
(576, 7, 0, 0, 'custom-link', 'http://tympanus.com', '', 1, 'Tympanus-Codrops', '', '_self', '2016-10-21 10:24:16', '2016-10-21 10:24:16', NULL),
(577, 7, 0, 0, 'custom-link', 'https://kipalog.com/', '', 2, 'Kipalog Blog', '', '_self', '2016-10-21 10:24:16', '2016-10-21 10:24:16', NULL),
(578, 7, 0, 0, 'custom-link', 'http://www.sitepoint.com', '', 3, 'SitePoint', '', '_self', '2016-10-21 10:24:16', '2016-10-21 10:24:16', NULL),
(579, 7, 0, 0, 'custom-link', 'http://www.creativebloq.com/', '', 4, 'CreativeBloq', '', '_self', '2016-10-21 10:24:16', '2016-10-21 10:24:16', NULL),
(580, 7, 0, 0, 'custom-link', 'http://techtalk.vn', '', 5, 'Techtalk', '', '_self', '2016-10-21 10:24:16', '2016-10-21 10:24:16', NULL),
(581, 8, 0, 0, 'custom-link', '/', '', 0, 'Homepage', '', '_self', '2016-10-21 10:25:49', '2016-10-21 10:25:49', NULL),
(582, 8, 0, 11, 'categories', '', '', 1, 'New & Updates', '', '_self', '2016-10-21 10:25:49', '2016-10-21 10:25:49', NULL),
(583, 8, 0, 0, 'custom-link', '/galleries', '', 2, 'Galleries', '', '_self', '2016-10-21 10:25:49', '2016-10-21 10:25:49', NULL),
(584, 8, 0, 1, 'pages', '', '', 3, 'Contact', '', '_self', '2016-10-21 10:25:49', '2016-10-21 10:25:49', NULL),
(585, 8, 0, 11, 'categories', '', '', 4, 'New & Updates', '', '_self', '2016-10-21 10:25:49', '2016-10-21 10:25:49', NULL),
(586, 8, 0, 7, 'categories', '', '', 5, 'Projects', '', '_self', '2016-10-21 10:25:49', '2016-10-21 10:25:49', NULL),
(587, 9, 0, 9, 'categories', '', '', 0, 'Business', '', '_self', '2016-10-21 10:53:16', '2016-10-21 10:53:16', NULL),
(588, 9, 0, 6, 'categories', '', '', 1, 'Events', '', '_self', '2016-10-21 10:53:16', '2016-10-21 10:53:16', NULL),
(589, 9, 0, 11, 'categories', '', '', 2, 'New & Updates', '', '_self', '2016-10-21 10:53:16', '2016-10-21 10:53:16', NULL),
(590, 9, 0, 8, 'categories', '', '', 3, 'Portfolio', '', '_self', '2016-10-21 10:53:16', '2016-10-21 10:53:16', NULL),
(591, 9, 0, 7, 'categories', '', '', 4, 'Projects', '', '_self', '2016-10-21 10:53:16', '2016-10-21 10:53:16', NULL),
(592, 9, 0, 10, 'categories', '', '', 5, 'Resources', '', '_self', '2016-10-21 10:53:16', '2016-10-21 10:53:16', NULL),
(594, 10, 0, 17, 'pages', '', '', 4, 'Liên hệ', '', '_self', '2016-11-15 01:12:57', '2016-11-19 02:19:35', NULL),
(600, 10, 0, 0, 'custom-link', '/', '', 0, 'Trang chủ', '', '_self', '2016-11-19 02:26:19', '2016-11-19 02:26:19', NULL),
(601, 10, 0, 0, 'custom-link', 'https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182?ref=botble', '', 1, 'Mua ngay', '', '_blank', '2016-11-19 02:26:19', '2016-11-19 02:26:19', NULL),
(602, 10, 0, 11, 'categories', '', '', 2, 'Tin tức', '', '_self', '2016-11-19 02:26:19', '2016-11-25 07:52:21', NULL),
(603, 10, 602, 6, 'categories', '', '', 0, 'Sự kiện', '', '_self', '2016-11-19 02:26:19', '2016-11-25 07:52:21', NULL),
(604, 10, 602, 9, 'categories', '', '', 1, 'Doanh nghiệp', '', '_self', '2016-11-19 02:26:19', '2016-11-25 07:52:21', NULL),
(605, 10, 602, 10, 'categories', '', '', 2, 'Tài nguyên', '', '_self', '2016-11-19 02:26:19', '2016-11-25 07:52:21', NULL),
(606, 10, 0, 0, 'custom-link', '/galleries', '', 3, 'Thư viện ảnh', '', '_self', '2016-11-19 02:26:19', '2016-11-19 02:26:19', NULL),
(607, 10, 606, 8, 'categories', '', '', 0, 'Cá nhân', '', '_self', '2016-11-19 02:26:19', '2016-11-25 07:52:21', NULL),
(608, 10, 606, 7, 'categories', '', '', 1, 'Dự án', '', '_self', '2016-11-19 02:26:19', '2016-11-25 07:52:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci,
  `reference` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `content_id`, `meta_key`, `meta_value`, `reference`, `created_at`, `updated_at`) VALUES
(1, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'page', '2017-05-30 06:56:42', '2017-05-30 06:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2013_04_09_032329_create_revisions_table', 1),
('2014_07_02_230147_migration_cartalyst_sentinel', 1),
('2015_06_18_033822_create_categories_table', 1),
('2015_06_18_033834_create_posts_tables', 1),
('2015_06_29_025744_create_audit_history', 1),
('2016_10_05_074239_create_setting_table', 1),
('2015_08_15_122343_create_notes_table', 1),
('2015_08_15_155255_create_tags_table', 1),
('2015_08_19_070343_create_media_tables', 1),
('2015_08_23_161947_update_permission_flags_data', 1),
('2015_09_02_093952_create_config_left_hand_menu_table', 1),
('2016_01_27_084028_create_invites_table', 1),
('2014_04_02_193005_create_translations_table', 2),
('2016_05_20_213452_create_widgets_table', 3),
('2016_05_21_100559_add_key_column_to_widget_table', 4),
('2015_08_25_172600_create_settings_table', 5),
('2016_05_28_112028_create_system_request_logs_table', 5),
('2016_05_30_102159_add_user_id_column_to_request_logs_table', 6),
('2016_06_14_181858_update_tags_table', 8),
('2016_06_14_230857_create_menus_table', 9),
('2016_06_17_091537_create_contacts_table', 9),
('2016_06_17_231115_add_permissions_for_contact', 10),
('2016_06_18_180055_create_menu_permission_flags', 10),
('2016_06_18_180628_create_custom_fields_table', 11),
('2016_06_18_181916_create_post_metas_table', 11),
('2016_06_18_182634_create_category_metas_table', 11),
('2016_06_22_010656_remove_some_field_notes_table', 12),
('2016_06_28_221418_create_pages_table', 13),
('2016_06_29_134442_create_pages_permisions', 13),
('2014_07_02_230148_create_acl_tables', 13),
('2016_09_15_011727_add_content_type_to_posts_and_pages_table', 14),
('2016_09_19_141811_add_target_column_to_menu_nodes_table', 15),
('2016_09_28_070227_add_icon_column_to_categories_table', 18),
('2016_09_28_164211_add_featured_to_categories_table', 18),
('2016_09_28_165328_add_order_to_categories_table', 19),
('2016_09_29_025244_add_icon_to_pages_table', 20),
('2016_09_29_171020_add_default_column_to_sidebars_tables', 21),
('2016_09_30_080238_create_widget_areas_table', 22),
('2016_10_03_032336_create_languages_table', 26),
('2016_10_04_085403_create_field_meta_table', 27),
('2015_07_19_120336_create_user_settings_table', 9),
('2016_10_07_193005_create_translations_table', 28),
('2016_10_13_072901_add_flag_to_languages_table', 31),
('2016_10_13_150201_create_galleries_table', 32),
('2016_10_14_182125_add_options_field_to_field_meta_table', 33),
('2016_11_24_075510_add_is_default_column_to_categories_table', 34),
('2016_11_25_085153_create_language_meta_table', 35),
('2016_11_25_091721_create_gallery_meta_table', 35),
('2016_11_25_093838_create_meta_boxes_table', 35),
('2016_11_26_094246_create_plugins_table', 36),
('2016_11_28_032840_update_dashboard_widget_tables', 38),
('2016_12_15_030236_create_user_meta_table', 39),
('2016_12_16_084601_create_widgets_table', 40),
('2016_12_10_125100_create_ecommerce_tables', 41),
('2016_12_12_152924_create_brands_table', 41),
('2016_12_12_152950_add_columns_to_products_table', 41),
('2016_12_12_152951_add_columns_to_product_categories_table', 41),
('2016_12_12_152952_add_columns_to_brands_table', 41),
('2016_12_12_152953_create_product_label_product_table', 41),
('2016_12_12_152953_create_product_labels_table', 41),
('2016_12_12_152955_add_column_is_featured_to_brands_table', 41),
('2016_12_24_031304_rename_alias_to_slug_in_product_brands_table', 41),
('2016_12_24_053020_alter_product_label_product_table', 41),
('2016_12_24_053941_alter_ecommerce_tables', 41),
('2016_12_24_055557_create_currency_table', 41),
('2016_12_24_055559_create_price_table', 41),
('2016_12_28_030058_alter_products_table', 41),
('2017_01_17_135741_add_user_id_column_to_table_brands', 42),
('2017_01_17_141045_remove_category_id_column_from_table_product_label_product', 42),
('2017_01_18_112725_add_field_images_to_table_products', 43),
('2017_02_04_071746_add_is_featured_column_to_products_table', 44),
('2017_02_04_080228_add_is_featured_column_to_product_categories_table', 44),
('2017_02_07_132342_set_default_field_for_products_table', 44),
('2017_02_13_141001_alter_product_labels_table', 44),
('2017_02_13_151405_create_coupons_tables', 44),
('2017_02_18_022442_alter_settings_table', 45),
('2017_03_06_071906_add_alias_to_plugin_table', 46),
('2017_02_13_034601_create_blocks_table', 47),
('2017_03_02_144615_add_column_alias_to_blocks_table', 47),
('2017_03_27_150646_re_create_custom_field_tables', 48),
('2017_04_03_050505_alter_table_field_groups', 48),
('2017_04_15_022219_update_contacts_table', 49),
('2017_04_28_012115_add_format_type_to_posts_table', 50),
('2017_05_09_070343_create_media_tables', 51),
('2017_05_11_014125_add_is_default_to_roles_table', 51),
('2017_05_13_083307_modify_column_dob_users_table', 51),
('2017_05_27_063233_update_request_logs_table', 51),
('2017_06_17_053039_update_table_audit_history', 52),
('2017_07_07_120733_alter_table_media_settings', 52),
('2017_07_10_025447_add_column_focus_to_table_media_files', 52),
('2017_07_11_091519_add_user_id_to_table_media_settings', 52),
('2017_07_12_142105_add_id_to_table_role_flag', 52),
('2017_08_22_004423_update_language_tables', 53),
('2017_12_12_043646_create_testimonials_table', 55),
('2017_12_12_142533_create_productsolutions_table', 56),
('2017_12_13_163518_create_products_table', 57);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `user_id`, `reference_id`, `reference_type`, `created_by`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'posts', 1, 'aaa', '2016-06-22 05:08:44', '2016-06-22 05:08:44'),
(2, 1, 1, 'posts', 1, 'sadfdsf', '2016-07-09 01:01:50', '2016-07-09 01:01:50'),
(3, 1, 3, '', 1, 'sdfdsf', '2016-07-09 01:06:15', '2016-07-09 01:06:15'),
(4, 1, 5, 'posts', 1, 'dsfsdafadsaf', '2016-08-13 19:12:13', '2016-08-13 19:12:13'),
(6, 1, 4, 'post', 1, 'Sang Nguyen takes a note', '2016-11-25 09:25:06', '2016-11-25 09:25:06'),
(7, 1, 1, 'page', 1, 'Sang edit 123', '2016-11-27 02:55:03', '2016-11-27 02:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `order` tinyint(4) DEFAULT '0',
  `description` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `content`, `status`, `user_id`, `image`, `template`, `parent_id`, `deleted_at`, `created_at`, `updated_at`, `icon`, `featured`, `order`, `description`) VALUES
(1, 'Contact', 'contact', '<p>This is contact page</p>\r\n<p>[static-block alias=\"sample-block\"][/static-block]</p>\r\n<p>[contact-form][/contact-form]</p>', 1, 1, 'uploads/1/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg', 'default', 0, NULL, '2016-07-09 01:05:39', '2017-07-14 08:29:44', NULL, 0, 0, NULL),
(17, 'Liên hệ', 'lien-he', '<p>Đ&acirc;y l&agrave; trang li&ecirc;n hệ</p>', 1, 1, 'uploads/1/galleries/1476513483-misty-mountains-1280x720.jpg', 'default', 0, NULL, '2016-11-06 18:17:25', '2017-03-20 10:08:01', NULL, 0, 0, 'Đây là trang liên hệ');

-- --------------------------------------------------------

--
-- Table structure for table `permission_flags`
--

CREATE TABLE `permission_flags` (
  `id` int(10) UNSIGNED NOT NULL,
  `flag` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parent_flag` int(11) NOT NULL DEFAULT '0',
  `is_feature` int(11) NOT NULL DEFAULT '0',
  `feature_visible` int(11) NOT NULL DEFAULT '1',
  `permission_visible` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_flags`
--

INSERT INTO `permission_flags` (`id`, `flag`, `name`, `parent_flag`, `is_feature`, `feature_visible`, `permission_visible`, `created_at`, `updated_at`) VALUES
(1, 'posts.list', 'Posts', 0, 1, 1, 1, NULL, NULL),
(2, 'posts.create', 'Create', 1, 0, 1, 1, NULL, NULL),
(3, 'posts.edit', 'Edit', 1, 0, 1, 1, NULL, NULL),
(4, 'posts.delete', 'Delete', 1, 0, 1, 1, NULL, NULL),
(5, 'tags.list', 'Tags', 1, 1, 1, 1, NULL, NULL),
(6, 'tags.create', 'Create', 5, 0, 1, 1, NULL, NULL),
(7, 'tags.edit', 'Edit', 5, 0, 1, 1, NULL, NULL),
(8, 'tags.delete', 'Delete', 5, 0, 1, 1, NULL, NULL),
(9, 'categories.list', 'Categories', 1, 1, 1, 1, NULL, NULL),
(10, 'categories.create', 'Create', 9, 0, 1, 1, NULL, NULL),
(11, 'categories.edit', 'Edit', 9, 0, 1, 1, NULL, NULL),
(12, 'categories.delete', 'Delete', 9, 0, 1, 1, NULL, NULL),
(13, 'users.list', 'Users', 0, 1, 1, 1, NULL, NULL),
(14, 'users.create', 'Create', 13, 0, 1, 1, NULL, NULL),
(15, 'users.edit', 'Edit', 13, 0, 1, 1, NULL, NULL),
(16, 'users.update-profile', 'Update User Profile', 13, 0, 1, 1, NULL, NULL),
(17, 'users.delete', 'Delete', 13, 0, 1, 1, NULL, NULL),
(25, 'media.index', 'Media', 0, 1, 1, 1, NULL, NULL),
(26, 'settings.options', 'Settings', 0, 1, 1, 1, NULL, NULL),
(27, 'dashboard.index', 'Dashboard', 0, 1, 1, 1, NULL, NULL),
(29, 'roles.list', 'Roles', 0, 1, 1, 1, NULL, NULL),
(30, 'roles.create', 'Create', 29, 0, 1, 1, NULL, NULL),
(31, 'roles.edit', 'Edit', 29, 0, 1, 1, NULL, NULL),
(32, 'roles.delete', 'Delete', 29, 0, 1, 1, NULL, NULL),
(83, 'menus.list', 'Menu', 0, 1, 1, 1, NULL, NULL),
(84, 'menus.create', 'Create', 83, 0, 1, 1, NULL, NULL),
(85, 'menus.edit', 'Edit', 83, 0, 1, 1, NULL, NULL),
(86, 'menus.delete', 'Delete', 83, 0, 1, 1, NULL, NULL),
(87, 'pages.list', 'Page', 0, 1, 1, 1, NULL, NULL),
(88, 'pages.create', 'Create', 87, 0, 1, 1, NULL, NULL),
(89, 'pages.edit', 'Edit', 87, 0, 1, 1, NULL, NULL),
(90, 'pages.delete', 'Delete', 87, 0, 1, 1, NULL, NULL),
(107, 'widgets.list', 'Widgets', 0, 1, 1, 1, NULL, NULL),
(108, 'widgets.create', 'Create', 107, 0, 1, 1, NULL, NULL),
(109, 'widgets.edit', 'Edit', 107, 0, 1, 1, NULL, NULL),
(110, 'widgets.delete', 'Delete', 107, 0, 1, 1, NULL, NULL),
(111, 'plugins.list', 'Plugins Management', 0, 1, 1, 1, NULL, NULL),
(116, 'galleries.list', 'Galleries', 0, 1, 1, 1, NULL, NULL),
(117, 'galleries.create', 'Create', 116, 0, 1, 1, NULL, NULL),
(118, 'galleries.edit', 'Edit', 116, 0, 1, 1, NULL, NULL),
(119, 'galleries.delete', 'Delete', 116, 0, 1, 1, NULL, NULL),
(120, 'languages.list', 'Language', 0, 1, 1, 1, NULL, NULL),
(121, 'languages.create', 'Create', 120, 0, 1, 1, NULL, NULL),
(122, 'languages.edit', 'Edit', 120, 0, 1, 1, NULL, NULL),
(123, 'languages.delete', 'Delete', 120, 0, 1, 1, NULL, NULL),
(136, 'contacts.list', 'Contacts', 0, 1, 1, 1, NULL, NULL),
(137, 'contacts.create', 'Create', 136, 0, 1, 1, NULL, NULL),
(138, 'contacts.edit', 'Edit', 136, 0, 1, 1, NULL, NULL),
(139, 'contacts.delete', 'Delete', 136, 0, 1, 1, NULL, NULL),
(140, 'custom-fields.list', 'Custom Fields', 0, 1, 1, 1, NULL, NULL),
(141, 'custom-fields.create', 'Create', 140, 0, 1, 1, NULL, NULL),
(142, 'custom-fields.edit', 'Edit', 140, 0, 1, 1, NULL, NULL),
(143, 'custom-fields.delete', 'Delete', 140, 0, 1, 1, NULL, NULL),
(144, 'logs.list', 'Logs list', 0, 1, 1, 1, NULL, NULL),
(145, 'logs.delete', 'Delete', 144, 0, 1, 1, NULL, NULL),
(149, 'backups.list', 'Backup', 0, 1, 1, 1, NULL, NULL),
(150, 'backups.create', 'Create', 149, 0, 1, 1, NULL, NULL),
(151, 'backups.restore', 'Restore', 149, 0, 1, 1, NULL, NULL),
(152, 'backups.delete', 'Delete', 149, 0, 1, 1, NULL, NULL),
(161, 'theme.list', 'Theme', 0, 1, 1, 1, NULL, NULL),
(162, 'theme.options', 'Theme Options', 161, 1, 1, 1, NULL, NULL),
(173, 'translations.list', 'Translation', 0, 1, 1, 1, NULL, NULL),
(174, 'translations.create', 'Create', 173, 0, 1, 1, NULL, NULL),
(175, 'translations.edit', 'Edit', 173, 0, 1, 1, NULL, NULL),
(176, 'translations.delete', 'Delete', 173, 0, 1, 1, NULL, NULL),
(177, 'analytics.general', 'Analytics', 0, 1, 1, 1, NULL, NULL),
(178, 'analytics.page', 'Top Page', 177, 0, 1, 1, NULL, NULL),
(179, 'analytics.browser', 'Top Browser', 177, 0, 1, 1, NULL, NULL),
(180, 'analytics.referrer', 'Top Referrer', 177, 0, 1, 1, NULL, NULL),
(287, 'block\n                .list', 'Block', 0, 1, 1, 1, NULL, NULL),
(292, 'testimonials.list', 'Testimonials', 0, 1, 1, 1, NULL, NULL),
(293, 'testimonials.create', 'Create', 292, 0, 1, 1, NULL, NULL),
(294, 'testimonials.edit', 'Edit', 292, 0, 1, 1, NULL, NULL),
(295, 'testimonials.delete', 'Delete', 292, 0, 1, 1, NULL, NULL),
(296, 'productsolutions.list', 'Productsolutions', 0, 1, 1, 1, NULL, NULL),
(297, 'productsolutions.create', 'Create', 296, 0, 1, 1, NULL, NULL),
(298, 'productsolutions.edit', 'Edit', 296, 0, 1, 1, NULL, NULL),
(299, 'productsolutions.delete', 'Delete', 296, 0, 1, 1, NULL, NULL),
(300, 'products.list', 'Products', 0, 1, 1, 1, NULL, NULL),
(301, 'products.create', 'Create', 300, 0, 1, 1, NULL, NULL),
(302, 'products.edit', 'Edit', 300, 0, 1, 1, NULL, NULL),
(303, 'products.delete', 'Delete', 300, 0, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, '479tVUIK8NFJoqfKS4QPS9NMJHNDypOo', '2016-04-30 19:54:23', '2016-04-30 19:54:23'),
(28, 1, '3npvI2VMTasKubJ9XUq2JoWB31ZMFOTH', '2016-05-31 22:28:20', '2016-05-31 22:28:20'),
(29, 1, 'v8TGhcs9AmCu9KkrLibNAJAyDPTdgULy', '2016-06-02 03:48:18', '2016-06-02 03:48:18'),
(30, 1, 'joBWmRMCmP2xuhCi5dT7vp6OU8fFtYtb', '2016-06-14 18:24:37', '2016-06-14 18:24:37'),
(31, 1, 'fQKqTgLUVH3auzHOMOS6zSsFJvqZOdKY', '2016-06-15 01:29:39', '2016-06-15 01:29:39'),
(34, 1, 'ZAPPFOR4nDPVyY9E3z080WxF50U9Ogvk', '2016-06-25 12:04:40', '2016-06-25 12:04:40'),
(36, 1, 'fV9lgOPkU6FdFBqcFyUIeBc66iRKRfAj', '2016-07-04 14:23:54', '2016-07-04 14:23:54'),
(39, 1, 'QSacMU1iEYtIsV195Cz4In2SbbeKEgf2', '2016-07-04 14:36:08', '2016-07-04 14:36:08'),
(40, 1, 'faGgzhnMovubEztmTUnOKT9zB6F1U2BP', '2016-07-04 15:11:29', '2016-07-04 15:11:29'),
(42, 1, 'lB7StlY6D3LUx4IrsXJuXOjzAuilqyu5', '2016-08-03 03:14:45', '2016-08-03 03:14:45'),
(46, 1, 'DNaQ4Y3MhTffag0gS9gZnDb9JEBuUy7L', '2016-08-11 14:03:02', '2016-08-11 14:03:02'),
(48, 1, 'ji0LZTDjGF6aLVmhtvGDoMPQVD0dQece', '2016-08-13 18:39:29', '2016-08-13 18:39:29'),
(49, 1, 'ytvGf1L06QjJ78YsaQztnHgxty2aDLZn', '2016-08-13 18:42:33', '2016-08-13 18:42:33'),
(50, 1, 'WYw5KYrj2o4BwyK4silkEw3jeI9eRA0D', '2016-08-13 18:58:52', '2016-08-13 18:58:52'),
(52, 1, 'VTvllkvLDQKb0M6feWTPzaroJNCVVSyH', '2016-08-15 00:12:13', '2016-08-15 00:12:13'),
(53, 1, 'n0P3svnqdV5LwXwpeaIg2wJoLqlu3Tvr', '2016-08-15 17:22:51', '2016-08-15 17:22:51'),
(54, 1, 'Al5MHA1x9qI5twDwSKbfAEjxX2aC11FS', '2016-08-16 17:39:52', '2016-08-16 17:39:52'),
(55, 1, 'dbQNaUDySXOCqopcxmrxaTMOnrwK30nl', '2016-08-16 17:40:53', '2016-08-16 17:40:53'),
(56, 1, 'LXkuVcFMk8aBHnC7O7fPjLVemZlIKRz8', '2016-08-17 15:51:58', '2016-08-17 15:51:58'),
(57, 1, 'mfZTluov9FnFRQJqLDxvj2tWHBFLU514', '2016-08-18 16:01:36', '2016-08-18 16:01:36'),
(58, 1, 'PRVor3QtTFSuw573E3cZ7JcGXoQCCynM', '2016-08-20 15:02:30', '2016-08-20 15:02:30'),
(60, 1, 'KYfOwJGmSUXPbHaWK0BfHtt5eNUPr28n', '2016-08-21 04:36:06', '2016-08-21 04:36:06'),
(61, 1, 'dgT1glUKokWFZHrilA91eK6Qww1ARX7b', '2016-08-21 07:20:12', '2016-08-21 07:20:12'),
(62, 1, 'E2kCdfaUxz4tMj14elTR0JZDrkqH1ZUQ', '2016-08-21 16:10:20', '2016-08-21 16:10:20'),
(63, 1, 'ZvM4eVoRFSi99CZ7xKoFfNF8Z45LWxGT', '2016-08-23 22:11:07', '2016-08-23 22:11:07'),
(65, 1, 'hM91fFKTM5B8oOXxuzT31cdKDiPh2cKs', '2016-09-07 08:54:02', '2016-09-07 08:54:02'),
(66, 1, 'hI6TNIKReXlqR05xNq7ijuh40Z8IjU8j', '2016-09-08 17:35:44', '2016-09-08 17:35:44'),
(67, 1, '4YNeMYVVUoYdkGWLQxF2TOS7ocLpebMK', '2016-09-09 10:47:23', '2016-09-09 10:47:23'),
(71, 1, 'eSheYVT6ymuA0GR79NqY1YioHD97Dkk2', '2016-09-18 03:11:28', '2016-09-18 03:11:28'),
(74, 1, 'j181Ls3NawA3ulX9WjPARXyPdSVXvkuP', '2016-09-22 09:48:54', '2016-09-22 09:48:54'),
(75, 1, 'AxLJeyR7xTi3kdXtdUBNRZuzE3MXzAKB', '2016-09-23 10:46:36', '2016-09-23 10:46:36'),
(76, 1, 'EUrOnGbP0YtExf3VgITLlJw0waD5MYb3', '2016-09-24 11:15:02', '2016-09-24 11:15:02'),
(77, 1, 'moYV0osz8QdRDqdbNGuFDqxwLIpVJhbt', '2016-09-27 08:08:38', '2016-09-27 08:08:38'),
(78, 1, 'pjVjOWdC3vt1EBg4OCzaMBFuyERGzF3T', '2016-09-28 09:33:50', '2016-09-28 09:33:50'),
(79, 1, 'eBPfPzeYLZNRjIFXm0honVbElyQtst7c', '2016-09-28 19:49:24', '2016-09-28 19:49:24'),
(81, 1, 'xvLuV6IFQKUiknwndw23QrnkHx334QUJ', '2016-10-07 08:43:01', '2016-10-07 08:43:01'),
(84, 1, 'w1OMsIjmHSscycjYsZ6iuejilFr96phM', '2016-10-07 23:43:47', '2016-10-07 23:43:47'),
(86, 1, 'EllnupYfRwzbP8Pjzse7P7vdEoNzlNsY', '2016-10-14 01:39:39', '2016-10-14 01:39:39'),
(87, 1, 'uImoIo6p3253bjoFm1s031iKaOnVQ93t', '2016-10-19 19:55:23', '2016-10-19 19:55:23'),
(88, 1, '5vb6HI1hhIzjftrAvwx3DAQLHiCOhiWc', '2016-10-19 20:41:36', '2016-10-19 20:41:36'),
(89, 1, 'h9DOXeFffpHu8BW63qe8jMCmcDVNyht2', '2016-11-01 07:39:38', '2016-11-01 07:39:38'),
(90, 1, 'WKoGqMALMUBhwQ52H9wmGcALHzI5v7J7', '2016-11-11 08:28:23', '2016-11-11 08:28:23'),
(93, 1, 'iW3jsv4VrvkubA8ka4YSJVL2udly9OG2', '2016-11-17 08:35:15', '2016-11-17 08:35:15'),
(94, 1, '0fqIquSDorPdQnl4SQUCkkhZ86JdiKh0', '2016-11-17 08:41:15', '2016-11-17 08:41:15'),
(97, 1, 'Ex4pZhBC2NWgc5fvOu1aZi8qqYbq5aWb', '2016-11-17 08:47:12', '2016-11-17 08:47:12'),
(99, 1, 'UZFkMxqkifrVbNpRHI9UJ1n8HX10RsYb', '2016-11-17 20:25:49', '2016-11-17 20:25:49'),
(101, 1, 'jekwhFvAxoiSQz1jKdedlKbi52JSbW0z', '2016-11-19 02:12:02', '2016-11-19 02:12:02'),
(103, 1, '2tkg6owBzcwtTmYsldGpPEgqrmRqcdWY', '2016-11-29 02:10:16', '2016-11-29 02:10:16'),
(104, 1, 'oTAmPL8psamM5idsHAxBIAOqQWKQGSzB', '2016-12-01 01:11:59', '2016-12-01 01:11:59'),
(110, 1, 'RLmOLq56VUaZjBMED8V6h7JY97QwfiVz', '2016-12-03 19:09:38', '2016-12-03 19:09:38'),
(114, 1, 'XY1JDbd3z9eYg4WuWxY1zHIT7qii6dWH', '2016-12-15 06:53:44', '2016-12-15 06:53:44'),
(115, 1, 'nV2ohgRrrvQXHzd7pv0YyQQuQ0ElvvzZ', '2016-12-15 19:54:25', '2016-12-15 19:54:25'),
(122, 1, '2F5iU2agg7ILRSBUMbJX3IaDkSYoplVQ', '2016-12-16 06:09:10', '2016-12-16 06:09:10'),
(124, 1, 'OzxY0qe2HIXa1COhmOs0Ve874ikTt4CJ', '2017-01-09 08:20:52', '2017-01-09 08:20:52'),
(125, 1, 'C99YW2fzd0AwcG2S2WMEd7BozSUL63BP', '2017-01-10 21:17:30', '2017-01-10 21:17:30'),
(126, 1, 'FDiKfHvtfRyzay6RwVcK99M2aoHmdeXB', '2017-01-19 02:49:19', '2017-01-19 02:49:19'),
(127, 1, 'Wr2wlMoPPOH6CRWqCX3l33gr9U08BIuD', '2017-02-14 08:14:20', '2017-02-14 08:14:20'),
(128, 1, 'ybwo7RkpTLlmgoZi5o0jIRiKamGbf0fd', '2017-02-18 01:21:03', '2017-02-18 01:21:03'),
(130, 1, 'DTkVAKJ3XeiVzphfRqjkKwP94lpOeerR', '2017-03-25 06:08:11', '2017-03-25 06:08:11'),
(131, 1, 'ymusMyvY0fZ8Z2z7LuRFHOu4ISc8E5fP', '2017-04-09 00:01:36', '2017-04-09 00:01:36'),
(132, 1, 'RKn272la5RyHvs8sRSB5D66u3l0Ocqa4', '2017-05-07 17:40:23', '2017-05-07 17:40:23'),
(134, 1, '89MZK4ILtT1cRLYSX7sIkNof48sbbNGf', '2017-05-30 06:53:51', '2017-05-30 06:53:51'),
(145, 1, '56iIHWVKFz6ZxPM5fnfHblteoSw2QzVZ', '2017-07-04 09:36:21', '2017-07-04 09:36:21'),
(146, 1, 'RUO1W4ONRHb3E213Rk4xllyxZ3bJ8h1X', '2017-07-04 09:36:40', '2017-07-04 09:36:40'),
(147, 1, 'Wdf2hFUGlSanNdFfkaF4teSPuORrS19M', '2017-07-04 09:36:51', '2017-07-04 09:36:51'),
(148, 1, 'XqauFi1ktVA2K8rrhlShAPph5pX2Uf69', '2017-07-06 07:16:10', '2017-07-06 07:16:10'),
(150, 1, 'ZnG9FpyewynbZdxtch3lGPRqchhkic2B', '2017-07-14 08:17:20', '2017-07-14 08:17:20'),
(151, 1, 'BXHdRw497alz3YAP4DIvTW4mzfFqCxLP', '2017-08-06 18:08:32', '2017-08-06 18:08:32'),
(152, 3, 'VZV9DVgmXwBsaIwbVG8iVPl38pILmMIc', '2017-12-05 19:27:26', '2017-12-05 19:27:26'),
(153, 3, '4d76uBSNrI3KFLG8IAx9VeNzZivT3L6M', '2017-12-06 00:03:31', '2017-12-06 00:03:31'),
(154, 3, 'H5CtGdPhHzbgAvjjkbKLrRS8PDge4crR', '2017-12-11 02:09:18', '2017-12-11 02:09:18'),
(155, 3, 'VrqHIhXRdpplpq0wNSofy4vdoGiptRoF', '2017-12-11 07:19:08', '2017-12-11 07:19:08'),
(156, 3, 'Q2yxMsZl8LdWiOiZlMsyU9RBDUNArc3i', '2017-12-11 21:16:00', '2017-12-11 21:16:00'),
(157, 3, 'iUzwCjeGDgYqfUfWTpT84z0Z2iPI680R', '2017-12-12 03:53:54', '2017-12-12 03:53:54'),
(158, 3, 'Mn5p5CfOJWCGscoNyVjvfcWDMM9maV0M', '2017-12-12 07:06:18', '2017-12-12 07:06:18'),
(159, 3, 'UKL5TYb5mVjXR3102kYeIFM1Q2mOpnzn', '2017-12-12 21:30:35', '2017-12-12 21:30:35'),
(160, 3, 'Qv1EycR7qhXVm6TbtKVXntvdw86ta5GA', '2017-12-13 03:04:16', '2017-12-13 03:04:16'),
(161, 3, '76blDLakcuztFsKe57fQCPPSOkQCl6sS', '2017-12-13 06:04:48', '2017-12-13 06:04:48'),
(162, 3, 'zKZHP0B3PXvJk9RXVpWyb1AXWct6tiK3', '2017-12-13 08:42:02', '2017-12-13 08:42:02'),
(163, 3, 'M3heXafUv2IKnAE5Z2RNpZtMbS7pDSoX', '2017-12-13 19:42:00', '2017-12-13 19:42:00'),
(164, 3, 'Ecrr8mSiIGzrIEqoXDzfrlhzNohRYwBf', '2017-12-14 08:57:48', '2017-12-14 08:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`id`, `name`, `provider`, `author`, `url`, `version`, `description`, `status`, `created_at`, `updated_at`, `alias`) VALUES
(4, 'Analytics', 'Botble\\Analytics\\Providers\\AnalyticsServiceProvider', 'Sang Nguyen', 'http://sangnguyen.info', '1.0', 'Analytics', 1, '2016-11-26 10:36:37', '2017-03-12 07:17:09', 'analytics'),
(5, 'AuditLog', 'Botble\\AuditLog\\Providers\\AuditLogServiceProvider', 'Sang Nguyen', 'http://sangnguyen.info', '1.0', 'Record activities logs', 1, '2016-11-26 10:36:46', '2016-12-01 09:11:27', 'audit-log'),
(6, 'Captcha', 'Botble\\Captcha\\Providers\\CaptchaServiceProvider', 'Sang Nguyen', 'http://sangnguyen.info', '1.0', 'Captcha for higher security', 1, '2016-11-26 10:36:51', '2016-11-26 10:36:51', 'captcha'),
(7, 'Contact Form', 'Botble\\Contact\\Providers\\ContactServiceProvider', 'Sang Nguyen', 'http://sangnguyen.info', '1.0', 'Contact Form', 1, '2016-11-26 10:36:57', '2016-11-26 10:36:57', 'contact'),
(8, 'Custom Fields', 'Botble\\CustomField\\Providers\\CustomFieldServiceProvider', 'Sang Nguyen', 'http://sangnguyen.info', '1.0', 'Custom Fields', 1, '2016-11-26 10:37:20', '2017-06-03 05:39:06', 'custom-field'),
(11, 'LogViewer', 'Botble\\LogViewer\\Providers\\LogViewerServiceProvider', 'Sang Nguyen', 'http://sangnguyen.info', '1.0', 'LogViewer', 1, '2016-11-26 10:41:18', '2016-11-26 20:53:06', 'log-viewer'),
(12, 'Note', 'Botble\\Note\\Providers\\NoteServiceProvider', 'Sang Nguyen', 'http://sangnguyen.info', '1.0', 'Note', 1, '2016-11-26 10:41:25', '2016-11-26 10:41:25', 'note'),
(13, 'RequestLog', 'Botble\\RequestLog\\Providers\\RequestLogServiceProvider', 'Sang Nguyen', 'http://sangnguyen.info', '1.0', 'Log error requests', 1, '2016-11-26 10:41:32', '2016-11-26 10:41:32', 'request-log'),
(14, 'Translation', 'Botble\\Translation\\Providers\\TranslationServiceProvider', 'Sang Nguyen', 'http://sangnguyen.info', '1.0', 'Translation', 1, '2016-11-26 10:41:39', '2017-01-05 10:01:00', 'translation'),
(15, 'Backup', 'Botble\\Backup\\Providers\\BackupServiceProvider', 'Sang Nguyen', 'http://sangnguyen.info', '1.0', 'Backup', 1, '2016-11-29 20:33:04', '2016-11-29 20:33:04', 'backup'),
(16, 'Gallery', 'Botble\\Gallery\\Providers\\GalleryServiceProvider', 'Sang Nguyen', 'http://sangnguyen.info', '1.0', 'Gallery for posts, pages...', 1, '2017-03-12 06:33:33', '2017-06-03 09:19:54', 'gallery'),
(17, 'Language', 'Botble\\Language\\Providers\\LanguageServiceProvider', 'Sang Nguyen', 'http://sangnguyen.info', '1.0', 'Multilingual for Botble CMS', 1, '2017-03-12 06:33:44', '2017-06-03 05:39:13', 'language'),
(19, 'Block', 'Botble\\Block\\Providers\\BlockServiceProvider', 'Sang Nguyen', 'http://sangnguyen.info', '1.0', 'Block', 1, '2017-03-25 06:20:56', '2017-03-25 06:20:56', 'block'),
(20, 'Blog', 'Botble\\Blog\\Providers\\BlogServiceProvider', 'Sang Nguyen', 'http://sangnguyen.info', '1.0', 'Blog news', 1, '2017-07-08 18:21:29', '2017-07-08 18:21:29', 'Blog'),
(22, 'Testimonials', 'Botble\\Testimonials\\Providers\\TestimonialsServiceProvider', 'Sang Nguyen', 'http://sangnguyen.info', '1.0', 'Testimonials', 1, '2017-12-11 21:37:07', '2017-12-11 21:37:07', 'testimonials'),
(25, 'Productsolutions', 'Botble\\Productsolutions\\Providers\\ProductsolutionsServiceProvider', 'Sang Nguyen', 'http://sangnguyen.info', '1.0', 'Productsolutions', 1, '2017-12-12 07:27:18', '2017-12-12 07:27:18', 'productsolutions'),
(26, 'Products', 'Botble\\Products\\Providers\\ProductsServiceProvider', 'Sang Nguyen', 'http://sangnguyen.info', '1.0', 'Products', 1, '2017-12-13 09:35:34', '2017-12-13 09:35:34', 'products');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `format_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `slug`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `deleted_at`, `created_at`, `updated_at`, `format_type`) VALUES
(4, '13,000+ People Have Bought Our Theme', '13000-people-have-bought-our-theme', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/7MxyPHjyu9A\" width=\"420\"></iframe></p>\r\n\r\n<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" style=\"height:300px; width:180px\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" style=\"height:563px; width:1000px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" style=\"height:300px; width:200px\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/1476893533-02.jpg', 8, NULL, '2016-08-02 21:34:18', '2017-06-02 19:52:53', NULL),
(5, 'Top Search Engine Optimization Strategies!', 'top-search-engine-optimization-strategies', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/nmnkzkiyqsygikfjinsb-20140717-212636-3-660x330.jpg', 6, NULL, '2016-08-02 21:36:45', '2017-04-30 19:59:58', NULL),
(6, 'Which Company Would You Choose?', 'which-company-would-you-choose', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/1476893532-01.jpg', 4, NULL, '2016-08-02 21:38:34', '2017-03-21 07:30:39', NULL),
(7, 'Used Car Dealer Sales Tricks Exposed', 'used-car-dealer-sales-tricks-exposed', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/old-car-660x330.jpg', 6, NULL, '2016-08-02 21:39:50', '2017-04-30 20:03:27', NULL),
(8, '20 Ways To Sell Your Product Faster', '20-ways-to-sell-your-product-faster', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 1, 'uploads/1/news/1476890034-hero04.jpg', 3, NULL, '2016-08-02 21:40:56', '2017-03-21 07:25:09', NULL);
INSERT INTO `posts` (`id`, `name`, `slug`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `deleted_at`, `created_at`, `updated_at`, `format_type`) VALUES
(9, 'The Secrets Of Rich And Famous Writers', 'the-secrets-of-rich-and-famous-writers', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 1, 'uploads/1/news/1476890036-hero05.jpg', 0, NULL, '2016-08-02 21:42:45', '2017-03-21 07:26:07', NULL),
(10, 'Imagine Losing 20 Pounds In 14 Days!', 'imagine-losing-20-pounds-in-14-days', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>\r\n', 1, 1, 1, 'uploads/1/news/1476890033-hero03.jpg', 6, NULL, '2016-08-02 21:44:20', '2016-12-10 12:19:54', NULL),
(11, 'Are You Still Using That Slow, Old Typewriter?', 'are-you-still-using-that-slow-old-typewriter', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 1, 'uploads/1/news/1476890034-hero04.jpg', 12, NULL, '2016-08-02 21:45:16', '2017-07-06 08:16:25', NULL),
(12, 'A Skin Cream That’s Proven To Work', 'a-skin-cream-thats-proven-to-work', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 1, 'uploads/1/news/1476890031-hero02.jpg', 10, NULL, '2016-08-02 21:46:22', '2017-07-08 18:21:44', NULL),
(13, '10 Reasons To Start Your Own, Profitable Website!', '10-reasons-to-start-your-own-profitable-website', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>\r\n', 1, 1, 1, 'uploads/1/news/1476890029-hero01.jpg', 15, NULL, '2016-08-02 21:47:18', '2016-12-04 08:07:53', NULL);
INSERT INTO `posts` (`id`, `name`, `slug`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `deleted_at`, `created_at`, `updated_at`, `format_type`) VALUES
(14, 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'simple-ways-to-reduce', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/4381851322-d46fd7d75e-b-660x330.jpg', 0, NULL, '2016-08-02 21:50:39', '2017-04-30 20:15:49', NULL),
(15, 'Apple iMac with Retina 5K display review', 'apple-imac-with-retina-5k-display-review', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/1476891195-02.jpg', 1, NULL, '2016-08-02 21:51:49', '2017-04-30 20:11:06', NULL),
(16, '10 Reasons To Start Your Own, Profitable Website!', '10-reasons-to-start-your-own-profitable-website-1', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/1476891035-01.jpg', 3, NULL, '2016-08-02 21:52:39', '2017-04-30 20:10:12', NULL),
(17, 'Unlock The Secrets Of Selling High Ticket Items', 'unlock-the-secrets-of-selling-high-ticket-items', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/1476891198-04.jpg', 2, NULL, '2016-08-02 21:53:49', '2017-04-30 20:04:28', NULL),
(18, '10,000 Web Site Visitors In One Month:Guaranteed', '10000-web-site-visitors-in-one-monthguaranteed', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/1476893533-02.jpg', 5, NULL, '2016-08-02 21:54:31', '2017-04-30 20:08:55', NULL);
INSERT INTO `posts` (`id`, `name`, `slug`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `deleted_at`, `created_at`, `updated_at`, `format_type`) VALUES
(19, 'Are You Still Using That Slow, Old Typewriter?', 'are-you-still-using-that-slow-old-typewriter-1', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/1476891195-02.jpg', 4, NULL, '2016-08-02 21:55:28', '2017-12-05 19:09:22', NULL),
(20, 'A Skin Cream That’s Proven To Work', 'a-skin-cream-thats-proven-to-work-1', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>\r\n', 1, 1, 0, 'uploads/1/news/1476890031-hero02.jpg', 9, NULL, '2016-08-02 21:56:32', '2016-11-25 07:28:59', NULL),
(21, 'Top Search Engine Optimization Strategies!', 'top-search-engine-optimization-strategies-1', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>\r\n', 1, 1, 0, 'uploads/1/news/1476891035-01.jpg', 7, NULL, '2016-08-02 21:57:29', '2016-12-10 12:04:30', NULL),
(44, '13000 người đã mua Theme của chúng tôi', '13000-nguoi-da-mua-theme-cua-chung-toi', 'Đây là bài viết mẫu, nội dung của những bài viết demo đều giống nhau, nó được dùng với mục đích làm ví dụ, các bài viết hiện tại trên trang demo đều có nội dung giống nhau về phần nội dung và mô tả ngắn.', '<p>Hi mọi người, &nbsp;dạo gần đ&acirc;y m&igrave;nh kh&ocirc;ng viết blog mới v&igrave; tập trung ph&aacute;t triển Botble CMS. Sau bao cố gắng th&igrave; h&ocirc;m nay m&igrave;nh đ&atilde; c&oacute; thể release version 2.0 với nhiều t&iacute;nh năng mới.</p>\r\n\r\n<p>Ở bản 1.0, m&igrave;nh cảm thấy n&oacute; c&oacute; qu&aacute; nhiều t&iacute;nh năng phức tạp, chỉ ph&ugrave; hợp với hệ thống lớn m&agrave; đa số c&aacute;c website nhỏ kh&ocirc;ng cần đến, v&igrave; vậy m&igrave;nh đ&atilde; đơn giản bớt đi trong phần n&agrave;y v&agrave; tập trung l&agrave;m sao cho Botble CMS dễ sử dụng nhất.</p>\r\n\r\n<p>Botble CMS đang sử dụng Laravel&nbsp;phi&ecirc;n bản mới nhất tại thời điểm n&agrave;y 5.3.</p>\r\n\r\n<h3>Demo:</h3>\r\n\r\n<p>Homepage:&nbsp;<a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n\r\n<p>Admin:&nbsp;<a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n\r\n<p>Account: botble - 159357</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Cấu tr&uacute;c thư mục:</h3>\r\n\r\n<p><img alt=\"core\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" /></p>\r\n\r\n<p>Botble version 2 đ&atilde; được tổ chức th&agrave;nh từng module theo dạng HMVC v&agrave; nằm ho&agrave;n to&agrave;n trong thư mục /core. Những thư mục kh&aacute;c hầu hết được giữ nguy&ecirc;n hiện trạng như bản c&agrave;i mới laravel. Điều n&agrave;y gi&uacute;p dễ d&agrave;ng hơn trong việc cập nhật, n&acirc;ng cấp sau n&agrave;y.</p>\r\n\r\n<p><img alt=\"theme\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" /></p>\r\n\r\n<p>T&aacute;ch biệt thư mục theme v&agrave; chuẩn cấu tr&uacute;c theme.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&igrave;nh xin n&oacute;i sơ qua một số t&iacute;nh năng mới trong bản n&agrave;y.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<h3>Hỗ trợ c&agrave;i đặt.</h3>\r\n	</li>\r\n</ol>\r\n\r\n<p>Nhiều người gặp kh&oacute; khăn trong việc c&agrave;i đặt Botble, đa số đ&oacute; l&agrave; những người mới l&agrave;m quen laravel. V&igrave; vậy m&igrave;nh đ&atilde; viết 1 đoạn script để hỗ trợ c&agrave;i đặt nhanh ch&oacute;ng qua command line.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>2. Tạo 1 module/plugin mới một c&aacute;ch nhanh ch&oacute;ng với CRUD v&agrave; permissions.</h3>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Việc loại bỏ 1 module kh&ocirc;ng cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Do hơi bận rộn n&ecirc;n m&igrave;nh chỉ c&oacute; thể quay một số video hướng dẫn tr&ecirc;n, sẽ bổ sung sau :D</p>\r\n\r\n<h3>3. Theme mới</h3>\r\n\r\n<p>Trong bản cập nhật n&agrave;y, nhờ sự gi&uacute;p đỡ của bạn&nbsp;<a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đ&atilde; được kho&aacute;c l&ecirc;n bộ &aacute;o mới m&agrave; m&igrave;nh đ&aacute;nh gi&aacute; l&agrave; đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n\r\n<p>Một số h&igrave;nh ảnh:</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>4. Quản l&yacute; plugin</h3>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n\r\n<p>Như c&aacute;c bạn đ&atilde; biết, Wordpress c&oacute; rất nhiều t&iacute;nh năng hay. V&igrave; vậy m&igrave;nh đ&atilde; &aacute;p dụng Filter, Action hook v&agrave; Metabox v&agrave;o Botble để c&oacute; thể dễ d&agrave;ng hơn cho c&aacute;c bạn can thiệp v&agrave;o core sau n&agrave;y.</p>\r\n\r\n<h3>Kết luận:</h3>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một số t&iacute;nh năng mới của Botble version 2.0, hi vọng c&aacute;c bạn cảm thấy hứng th&uacute; với CMS n&agrave;y.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể mua ủng hộ m&igrave;nh tr&ecirc;n Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc li&ecirc;n hệ trực tiếp với m&igrave;nh qua skype live:minsang2603 để được hỗ trợ.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 1, 0, 'uploads/1/news/1476893533-02.jpg', 1, NULL, '2016-11-12 18:25:08', '2016-11-25 09:37:37', NULL),
(45, 'Lên trên Công cụ Tìm kiếm Tối ưu hóa các chiến lược!', 'len-tren-cong-cu-tim-kiem-toi-uu-hoa-cac-chien-luoc', 'Đây là bài viết mẫu, nội dung của những bài viết demo đều giống nhau, nó được dùng với mục đích làm ví dụ, các bài viết hiện tại trên trang demo đều có nội dung giống nhau về phần nội dung và mô tả ngắn.', '<p>Hi mọi người, &nbsp;dạo gần đ&acirc;y m&igrave;nh kh&ocirc;ng viết blog mới v&igrave; tập trung ph&aacute;t triển Botble CMS. Sau bao cố gắng th&igrave; h&ocirc;m nay m&igrave;nh đ&atilde; c&oacute; thể release version 2.0 với nhiều t&iacute;nh năng mới.</p>\r\n\r\n<p>Ở bản 1.0, m&igrave;nh cảm thấy n&oacute; c&oacute; qu&aacute; nhiều t&iacute;nh năng phức tạp, chỉ ph&ugrave; hợp với hệ thống lớn m&agrave; đa số c&aacute;c website nhỏ kh&ocirc;ng cần đến, v&igrave; vậy m&igrave;nh đ&atilde; đơn giản bớt đi trong phần n&agrave;y v&agrave; tập trung l&agrave;m sao cho Botble CMS dễ sử dụng nhất.</p>\r\n\r\n<p>Botble CMS đang sử dụng Laravel&nbsp;phi&ecirc;n bản mới nhất tại thời điểm n&agrave;y 5.3.</p>\r\n\r\n<h3>Demo:</h3>\r\n\r\n<p>Homepage:&nbsp;<a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n\r\n<p>Admin:&nbsp;<a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n\r\n<p>Account: botble - 159357</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Cấu tr&uacute;c thư mục:</h3>\r\n\r\n<p><img alt=\"core\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" /></p>\r\n\r\n<p>Botble version 2 đ&atilde; được tổ chức th&agrave;nh từng module theo dạng HMVC v&agrave; nằm ho&agrave;n to&agrave;n trong thư mục /core. Những thư mục kh&aacute;c hầu hết được giữ nguy&ecirc;n hiện trạng như bản c&agrave;i mới laravel. Điều n&agrave;y gi&uacute;p dễ d&agrave;ng hơn trong việc cập nhật, n&acirc;ng cấp sau n&agrave;y.</p>\r\n\r\n<p><img alt=\"theme\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" /></p>\r\n\r\n<p>T&aacute;ch biệt thư mục theme v&agrave; chuẩn cấu tr&uacute;c theme.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&igrave;nh xin n&oacute;i sơ qua một số t&iacute;nh năng mới trong bản n&agrave;y.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<h3>Hỗ trợ c&agrave;i đặt.</h3>\r\n	</li>\r\n</ol>\r\n\r\n<p>Nhiều người gặp kh&oacute; khăn trong việc c&agrave;i đặt Botble, đa số đ&oacute; l&agrave; những người mới l&agrave;m quen laravel. V&igrave; vậy m&igrave;nh đ&atilde; viết 1 đoạn script để hỗ trợ c&agrave;i đặt nhanh ch&oacute;ng qua command line.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>2. Tạo 1 module/plugin mới một c&aacute;ch nhanh ch&oacute;ng với CRUD v&agrave; permissions.</h3>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Việc loại bỏ 1 module kh&ocirc;ng cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Do hơi bận rộn n&ecirc;n m&igrave;nh chỉ c&oacute; thể quay một số video hướng dẫn tr&ecirc;n, sẽ bổ sung sau :D</p>\r\n\r\n<h3>3. Theme mới</h3>\r\n\r\n<p>Trong bản cập nhật n&agrave;y, nhờ sự gi&uacute;p đỡ của bạn&nbsp;<a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đ&atilde; được kho&aacute;c l&ecirc;n bộ &aacute;o mới m&agrave; m&igrave;nh đ&aacute;nh gi&aacute; l&agrave; đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n\r\n<p>Một số h&igrave;nh ảnh:</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>4. Quản l&yacute; plugin</h3>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n\r\n<p>Như c&aacute;c bạn đ&atilde; biết, Wordpress c&oacute; rất nhiều t&iacute;nh năng hay. V&igrave; vậy m&igrave;nh đ&atilde; &aacute;p dụng Filter, Action hook v&agrave; Metabox v&agrave;o Botble để c&oacute; thể dễ d&agrave;ng hơn cho c&aacute;c bạn can thiệp v&agrave;o core sau n&agrave;y.</p>\r\n\r\n<h3>Kết luận:</h3>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một số t&iacute;nh năng mới của Botble version 2.0, hi vọng c&aacute;c bạn cảm thấy hứng th&uacute; với CMS n&agrave;y.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể mua ủng hộ m&igrave;nh tr&ecirc;n Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc li&ecirc;n hệ trực tiếp với m&igrave;nh qua skype live:minsang2603 để được hỗ trợ.</p>\r\n', 1, 1, 0, 'uploads/1/news/nmnkzkiyqsygikfjinsb-20140717-212636-3-660x330.jpg', 0, NULL, '2016-11-12 18:27:06', '2016-11-25 07:29:51', NULL);
INSERT INTO `posts` (`id`, `name`, `slug`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `deleted_at`, `created_at`, `updated_at`, `format_type`) VALUES
(46, 'Bạn sẽ chọn công ty nào', 'ban-se-chon-cong-ty-nao', 'Đây là bài viết mẫu, nội dung của những bài viết demo đều giống nhau, nó được dùng với mục đích làm ví dụ, các bài viết hiện tại trên trang demo đều có nội dung giống nhau về phần nội dung và mô tả ngắn.', '<p>Hi mọi người, &nbsp;dạo gần đ&acirc;y m&igrave;nh kh&ocirc;ng viết blog mới v&igrave; tập trung ph&aacute;t triển Botble CMS. Sau bao cố gắng th&igrave; h&ocirc;m nay m&igrave;nh đ&atilde; c&oacute; thể release version 2.0 với nhiều t&iacute;nh năng mới.</p>\r\n\r\n<p>Ở bản 1.0, m&igrave;nh cảm thấy n&oacute; c&oacute; qu&aacute; nhiều t&iacute;nh năng phức tạp, chỉ ph&ugrave; hợp với hệ thống lớn m&agrave; đa số c&aacute;c website nhỏ kh&ocirc;ng cần đến, v&igrave; vậy m&igrave;nh đ&atilde; đơn giản bớt đi trong phần n&agrave;y v&agrave; tập trung l&agrave;m sao cho Botble CMS dễ sử dụng nhất.</p>\r\n\r\n<p>Botble CMS đang sử dụng Laravel&nbsp;phi&ecirc;n bản mới nhất tại thời điểm n&agrave;y 5.3.</p>\r\n\r\n<h3>Demo:</h3>\r\n\r\n<p>Homepage:&nbsp;<a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n\r\n<p>Admin:&nbsp;<a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n\r\n<p>Account: botble - 159357</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Cấu tr&uacute;c thư mục:</h3>\r\n\r\n<p><img alt=\"core\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" /></p>\r\n\r\n<p>Botble version 2 đ&atilde; được tổ chức th&agrave;nh từng module theo dạng HMVC v&agrave; nằm ho&agrave;n to&agrave;n trong thư mục /core. Những thư mục kh&aacute;c hầu hết được giữ nguy&ecirc;n hiện trạng như bản c&agrave;i mới laravel. Điều n&agrave;y gi&uacute;p dễ d&agrave;ng hơn trong việc cập nhật, n&acirc;ng cấp sau n&agrave;y.</p>\r\n\r\n<p><img alt=\"theme\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" /></p>\r\n\r\n<p>T&aacute;ch biệt thư mục theme v&agrave; chuẩn cấu tr&uacute;c theme.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&igrave;nh xin n&oacute;i sơ qua một số t&iacute;nh năng mới trong bản n&agrave;y.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<h3>Hỗ trợ c&agrave;i đặt.</h3>\r\n	</li>\r\n</ol>\r\n\r\n<p>Nhiều người gặp kh&oacute; khăn trong việc c&agrave;i đặt Botble, đa số đ&oacute; l&agrave; những người mới l&agrave;m quen laravel. V&igrave; vậy m&igrave;nh đ&atilde; viết 1 đoạn script để hỗ trợ c&agrave;i đặt nhanh ch&oacute;ng qua command line.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>2. Tạo 1 module/plugin mới một c&aacute;ch nhanh ch&oacute;ng với CRUD v&agrave; permissions.</h3>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Việc loại bỏ 1 module kh&ocirc;ng cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Do hơi bận rộn n&ecirc;n m&igrave;nh chỉ c&oacute; thể quay một số video hướng dẫn tr&ecirc;n, sẽ bổ sung sau :D</p>\r\n\r\n<h3>3. Theme mới</h3>\r\n\r\n<p>Trong bản cập nhật n&agrave;y, nhờ sự gi&uacute;p đỡ của bạn&nbsp;<a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đ&atilde; được kho&aacute;c l&ecirc;n bộ &aacute;o mới m&agrave; m&igrave;nh đ&aacute;nh gi&aacute; l&agrave; đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n\r\n<p>Một số h&igrave;nh ảnh:</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>4. Quản l&yacute; plugin</h3>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n\r\n<p>Như c&aacute;c bạn đ&atilde; biết, Wordpress c&oacute; rất nhiều t&iacute;nh năng hay. V&igrave; vậy m&igrave;nh đ&atilde; &aacute;p dụng Filter, Action hook v&agrave; Metabox v&agrave;o Botble để c&oacute; thể dễ d&agrave;ng hơn cho c&aacute;c bạn can thiệp v&agrave;o core sau n&agrave;y.</p>\r\n\r\n<h3>Kết luận:</h3>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một số t&iacute;nh năng mới của Botble version 2.0, hi vọng c&aacute;c bạn cảm thấy hứng th&uacute; với CMS n&agrave;y.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể mua ủng hộ m&igrave;nh tr&ecirc;n Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc li&ecirc;n hệ trực tiếp với m&igrave;nh qua skype live:minsang2603 để được hỗ trợ.</p>\r\n', 1, 1, 0, 'uploads/1/news/1476893532-01.jpg', 0, NULL, '2016-11-12 18:32:57', '2016-11-25 07:30:22', NULL),
(47, 'Sử dụng xe Đại lý bán hàng Tricks xúc', 'su-dung-xe-dai-ly-ban-hang-tricks-xuc', 'Đây là bài viết mẫu, nội dung của những bài viết demo đều giống nhau, nó được dùng với mục đích làm ví dụ, các bài viết hiện tại trên trang demo đều có nội dung giống nhau về phần nội dung và mô tả ngắn.', '<p>Hi mọi người, &nbsp;dạo gần đ&acirc;y m&igrave;nh kh&ocirc;ng viết blog mới v&igrave; tập trung ph&aacute;t triển Botble CMS. Sau bao cố gắng th&igrave; h&ocirc;m nay m&igrave;nh đ&atilde; c&oacute; thể release version 2.0 với nhiều t&iacute;nh năng mới.</p>\r\n\r\n<p>Ở bản 1.0, m&igrave;nh cảm thấy n&oacute; c&oacute; qu&aacute; nhiều t&iacute;nh năng phức tạp, chỉ ph&ugrave; hợp với hệ thống lớn m&agrave; đa số c&aacute;c website nhỏ kh&ocirc;ng cần đến, v&igrave; vậy m&igrave;nh đ&atilde; đơn giản bớt đi trong phần n&agrave;y v&agrave; tập trung l&agrave;m sao cho Botble CMS dễ sử dụng nhất.</p>\r\n\r\n<p>Botble CMS đang sử dụng Laravel&nbsp;phi&ecirc;n bản mới nhất tại thời điểm n&agrave;y 5.3.</p>\r\n\r\n<h3>Demo:</h3>\r\n\r\n<p>Homepage:&nbsp;<a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n\r\n<p>Admin:&nbsp;<a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n\r\n<p>Account: botble - 159357</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Cấu tr&uacute;c thư mục:</h3>\r\n\r\n<p><img alt=\"core\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" /></p>\r\n\r\n<p>Botble version 2 đ&atilde; được tổ chức th&agrave;nh từng module theo dạng HMVC v&agrave; nằm ho&agrave;n to&agrave;n trong thư mục /core. Những thư mục kh&aacute;c hầu hết được giữ nguy&ecirc;n hiện trạng như bản c&agrave;i mới laravel. Điều n&agrave;y gi&uacute;p dễ d&agrave;ng hơn trong việc cập nhật, n&acirc;ng cấp sau n&agrave;y.</p>\r\n\r\n<p><img alt=\"theme\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" /></p>\r\n\r\n<p>T&aacute;ch biệt thư mục theme v&agrave; chuẩn cấu tr&uacute;c theme.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&igrave;nh xin n&oacute;i sơ qua một số t&iacute;nh năng mới trong bản n&agrave;y.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<h3>Hỗ trợ c&agrave;i đặt.</h3>\r\n	</li>\r\n</ol>\r\n\r\n<p>Nhiều người gặp kh&oacute; khăn trong việc c&agrave;i đặt Botble, đa số đ&oacute; l&agrave; những người mới l&agrave;m quen laravel. V&igrave; vậy m&igrave;nh đ&atilde; viết 1 đoạn script để hỗ trợ c&agrave;i đặt nhanh ch&oacute;ng qua command line.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>2. Tạo 1 module/plugin mới một c&aacute;ch nhanh ch&oacute;ng với CRUD v&agrave; permissions.</h3>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Việc loại bỏ 1 module kh&ocirc;ng cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Do hơi bận rộn n&ecirc;n m&igrave;nh chỉ c&oacute; thể quay một số video hướng dẫn tr&ecirc;n, sẽ bổ sung sau :D</p>\r\n\r\n<h3>3. Theme mới</h3>\r\n\r\n<p>Trong bản cập nhật n&agrave;y, nhờ sự gi&uacute;p đỡ của bạn&nbsp;<a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đ&atilde; được kho&aacute;c l&ecirc;n bộ &aacute;o mới m&agrave; m&igrave;nh đ&aacute;nh gi&aacute; l&agrave; đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n\r\n<p>Một số h&igrave;nh ảnh:</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>4. Quản l&yacute; plugin</h3>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n\r\n<p>Như c&aacute;c bạn đ&atilde; biết, Wordpress c&oacute; rất nhiều t&iacute;nh năng hay. V&igrave; vậy m&igrave;nh đ&atilde; &aacute;p dụng Filter, Action hook v&agrave; Metabox v&agrave;o Botble để c&oacute; thể dễ d&agrave;ng hơn cho c&aacute;c bạn can thiệp v&agrave;o core sau n&agrave;y.</p>\r\n\r\n<h3>Kết luận:</h3>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một số t&iacute;nh năng mới của Botble version 2.0, hi vọng c&aacute;c bạn cảm thấy hứng th&uacute; với CMS n&agrave;y.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể mua ủng hộ m&igrave;nh tr&ecirc;n Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc li&ecirc;n hệ trực tiếp với m&igrave;nh qua skype live:minsang2603 để được hỗ trợ.</p>\r\n', 1, 1, 1, 'uploads/1/news/old-car-660x330.jpg', 4, NULL, '2016-11-12 18:35:25', '2016-11-28 22:10:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `category_id`, `post_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(14, 1, 3, NULL, '2016-05-12 20:39:18', '2016-05-12 20:39:18'),
(37, 1, 1, NULL, '2016-07-09 15:35:49', '2016-07-09 15:35:49'),
(48, 1, 2, NULL, '2016-07-12 20:45:55', '2016-07-12 20:45:55'),
(94, 1, 22, NULL, '2016-08-14 19:12:55', '2016-08-14 19:12:55'),
(162, 8, 22, NULL, '2016-10-14 08:23:44', '2016-10-14 08:23:44'),
(164, 6, 23, NULL, '2016-10-14 08:42:12', '2016-10-14 08:42:12'),
(165, 9, 26, NULL, '2016-10-14 08:47:25', '2016-10-14 08:47:25'),
(166, 7, 27, NULL, '2016-10-14 09:18:03', '2016-10-14 09:18:03'),
(167, 7, 28, NULL, '2016-10-14 10:48:55', '2016-10-14 10:48:55'),
(168, 8, 29, NULL, '2016-10-14 10:49:53', '2016-10-14 10:49:53'),
(171, 7, 30, NULL, '2016-10-14 11:33:15', '2016-10-14 11:33:15'),
(172, 8, 31, NULL, '2016-10-14 11:36:12', '2016-10-14 11:36:12'),
(173, 6, 37, NULL, '2016-10-14 11:41:31', '2016-10-14 11:41:31'),
(175, 8, 38, NULL, '2016-10-14 11:42:24', '2016-10-14 11:42:24'),
(176, 7, 39, NULL, '2016-10-14 12:15:05', '2016-10-14 12:15:05'),
(177, 8, 40, NULL, '2016-10-14 12:15:32', '2016-10-14 12:15:32'),
(179, 9, 41, NULL, '2016-10-14 12:16:14', '2016-10-14 12:16:14'),
(181, 7, 42, NULL, '2016-10-14 12:17:54', '2016-10-14 12:17:54'),
(186, 8, 43, NULL, '2016-10-15 10:43:42', '2016-10-15 10:43:42'),
(252, 11, 10, NULL, '2016-11-25 07:27:26', '2016-11-25 07:27:26'),
(255, 11, 13, NULL, '2016-11-25 07:27:37', '2016-11-25 07:27:37'),
(262, 1, 20, NULL, '2016-11-25 07:28:59', '2016-11-25 07:28:59'),
(263, 1, 21, NULL, '2016-11-25 07:29:03', '2016-11-25 07:29:03'),
(265, 7, 45, NULL, '2016-11-25 07:29:51', '2016-11-25 07:29:51'),
(266, 7, 47, NULL, '2016-11-25 07:29:56', '2016-11-25 07:29:56'),
(267, 6, 46, NULL, '2016-11-25 07:30:23', '2016-11-25 07:30:23'),
(269, 6, 44, NULL, '2016-11-25 09:37:38', '2016-11-25 09:37:38'),
(279, 1, 8, NULL, '2017-03-21 07:25:09', '2017-03-21 07:25:09'),
(280, 11, 9, NULL, '2017-03-21 07:26:08', '2017-03-21 07:26:08'),
(287, 6, 6, NULL, '2017-03-21 07:30:39', '2017-03-21 07:30:39'),
(288, 6, 4, NULL, '2017-03-21 07:31:04', '2017-03-21 07:31:04'),
(289, 1, 5, NULL, '2017-04-30 19:59:58', '2017-04-30 19:59:58'),
(290, 1, 7, NULL, '2017-04-30 20:03:27', '2017-04-30 20:03:27'),
(295, 8, 17, NULL, '2017-04-30 20:04:28', '2017-04-30 20:04:28'),
(302, 6, 18, NULL, '2017-04-30 20:08:55', '2017-04-30 20:08:55'),
(303, 7, 16, NULL, '2017-04-30 20:10:12', '2017-04-30 20:10:12'),
(306, 8, 15, NULL, '2017-04-30 20:11:07', '2017-04-30 20:11:07'),
(308, 1, 19, NULL, '2017-04-30 20:15:13', '2017-04-30 20:15:13'),
(310, 9, 14, NULL, '2017-04-30 20:15:49', '2017-04-30 20:15:49'),
(313, 11, 12, NULL, '2017-04-30 20:16:59', '2017-04-30 20:16:59'),
(314, 9, 11, NULL, '2017-04-30 20:17:16', '2017-04-30 20:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `tag_id`, `post_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, '2016-05-07 05:17:30', '2016-05-07 05:17:30'),
(2, 2, 2, NULL, '2016-05-07 05:17:30', '2016-05-07 05:17:30'),
(3, 3, 1, NULL, '2016-05-24 15:53:44', '2016-05-24 15:53:44'),
(4, 4, 1, NULL, '2016-05-24 15:53:44', '2016-05-24 15:53:44'),
(5, 1, 1, NULL, '2016-05-24 15:53:44', '2016-05-24 15:53:44'),
(6, 5, 6, NULL, '2016-08-02 21:38:34', '2016-08-02 21:38:34'),
(7, 6, 6, NULL, '2016-08-02 21:38:34', '2016-08-02 21:38:34'),
(8, 5, 8, NULL, '2016-08-02 21:40:56', '2016-08-02 21:40:56'),
(9, 6, 8, NULL, '2016-08-02 21:40:56', '2016-08-02 21:40:56'),
(10, 5, 9, NULL, '2016-08-02 21:42:45', '2016-08-02 21:42:45'),
(11, 6, 9, NULL, '2016-08-02 21:42:45', '2016-08-02 21:42:45'),
(12, 5, 10, NULL, '2016-08-02 21:44:20', '2016-08-02 21:44:20'),
(13, 6, 10, NULL, '2016-08-02 21:44:20', '2016-08-02 21:44:20'),
(14, 5, 11, NULL, '2016-08-02 21:45:16', '2016-08-02 21:45:16'),
(15, 6, 11, NULL, '2016-08-02 21:45:16', '2016-08-02 21:45:16'),
(16, 5, 12, NULL, '2016-08-02 21:46:22', '2016-08-02 21:46:22'),
(17, 6, 12, NULL, '2016-08-02 21:46:22', '2016-08-02 21:46:22'),
(18, 5, 13, NULL, '2016-08-02 21:47:18', '2016-08-02 21:47:18'),
(19, 6, 13, NULL, '2016-08-02 21:47:18', '2016-08-02 21:47:18'),
(20, 5, 14, NULL, '2016-08-02 21:50:39', '2016-08-02 21:50:39'),
(21, 6, 14, NULL, '2016-08-02 21:50:39', '2016-08-02 21:50:39'),
(22, 5, 15, NULL, '2016-08-02 21:51:49', '2016-08-02 21:51:49'),
(23, 6, 15, NULL, '2016-08-02 21:51:49', '2016-08-02 21:51:49'),
(24, 5, 16, NULL, '2016-08-02 21:52:39', '2016-08-02 21:52:39'),
(25, 6, 16, NULL, '2016-08-02 21:52:39', '2016-08-02 21:52:39'),
(26, 5, 17, NULL, '2016-08-02 21:53:49', '2016-08-02 21:53:49'),
(27, 6, 17, NULL, '2016-08-02 21:53:49', '2016-08-02 21:53:49'),
(28, 5, 18, NULL, '2016-08-02 21:54:31', '2016-08-02 21:54:31'),
(29, 6, 18, NULL, '2016-08-02 21:54:31', '2016-08-02 21:54:31'),
(30, 5, 19, NULL, '2016-08-02 21:55:28', '2016-08-02 21:55:28'),
(31, 6, 19, NULL, '2016-08-02 21:55:28', '2016-08-02 21:55:28'),
(32, 5, 20, NULL, '2016-08-02 21:56:32', '2016-08-02 21:56:32'),
(33, 6, 20, NULL, '2016-08-02 21:56:32', '2016-08-02 21:56:32'),
(34, 5, 21, NULL, '2016-08-02 21:57:29', '2016-08-02 21:57:29'),
(35, 6, 21, NULL, '2016-08-02 21:57:29', '2016-08-02 21:57:29'),
(36, 7, 22, NULL, '2016-08-14 19:12:55', '2016-08-14 19:12:55'),
(39, 7, 4, NULL, '2017-03-21 07:31:04', '2017-03-21 07:31:04'),
(40, 7, 5, NULL, '2017-04-30 19:59:58', '2017-04-30 19:59:58'),
(41, 7, 7, NULL, '2017-04-30 20:03:27', '2017-04-30 20:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'sản phẩm a', 1, NULL, '2017-12-14 09:44:49', '2017-12-14 09:44:49'),
(2, 'Apple Watch', 1, NULL, '2017-12-14 09:45:00', '2017-12-14 09:45:00'),
(3, 'Keyboard abc', 1, NULL, '2017-12-14 10:05:25', '2017-12-14 10:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `productsolutions`
--

CREATE TABLE `productsolutions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `performance` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productsolutions`
--

INSERT INTO `productsolutions` (`id`, `name`, `status`, `description`, `performance`, `image`, `order`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Test 3', 1, 'desc test 2', '{\"1513162755211\":{\"image\":\"\\/uploads\\/3\\/screen-shot-2017-12-06-at-104025-pm.png\",\"content\":\"aaaaaa2\"}}', '', 1, NULL, '2017-12-13 03:59:40', '2017-12-13 09:05:32'),
(2, 'Abc name', 1, 'kakn ssss', '{\"0\":{\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\",\"content\":\"gdd dddds\"},\"1513181302156\":{\"image\":\"\\/uploads\\/3\\/no-product-image1.png\",\"content\":\"fhthrrr\"}}', '', 1, NULL, '2017-12-13 09:08:33', '2017-12-13 09:08:33'),
(3, 'Lkej ss', 1, 'djjssss', '[{\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\",\"content\":\"ccwqccc\"}]', '/uploads/3/screen-shot-2017-12-06-at-104025-pm.png', 3, NULL, '2017-12-13 09:29:37', '2017-12-13 09:29:37'),
(4, 'fwefef', 1, 'eweg', '[{\"image\":null,\"content\":null}]', '/uploads/3/screen-shot-2017-12-06-at-104025-pm.png', 1, NULL, '2017-12-13 11:10:18', '2017-12-13 11:10:18'),
(5, 'wawa', 1, 'wawa', '[{\"image\":null,\"content\":null}]', '/uploads/3/graphic-product-tangible.png', 1, NULL, '2017-12-13 11:13:53', '2017-12-13 11:13:53'),
(6, 'hhhv ddd', 1, 'vdddd', '[{\"image\":null,\"content\":null}]', '/uploads/3/graphic-product-tangible.png', 1, '2017-12-14 08:58:11', '2017-12-13 11:16:04', '2017-12-14 08:58:11'),
(7, 'hhhv ddd', 1, 'vdddd', '[{\"image\":null,\"content\":null}]', '/uploads/3/graphic-product-tangible.png', 1, '2017-12-14 08:58:11', '2017-12-13 11:17:39', '2017-12-14 08:58:11'),
(8, 'hhhv ddd', 1, 'vdddd', '[{\"image\":null,\"content\":null}]', '/uploads/3/graphic-product-tangible.png', 1, '2017-12-14 08:58:11', '2017-12-13 11:18:15', '2017-12-14 08:58:11'),
(9, 'hhhv ddd', 1, 'vdddd', '[{\"image\":null,\"content\":null}]', '/uploads/3/graphic-product-tangible.png', 1, '2017-12-14 08:58:11', '2017-12-13 11:19:25', '2017-12-14 08:58:11'),
(10, 'hhhv ddd', 1, 'vdddd', '[{\"image\":null,\"content\":null}]', '/uploads/3/graphic-product-tangible.png', 1, '2017-12-14 08:58:11', '2017-12-13 11:20:12', '2017-12-14 08:58:11'),
(11, 'hhhv ddd', 1, 'vdddd', '[{\"image\":null,\"content\":null}]', '/uploads/3/graphic-product-tangible.png', 1, '2017-12-14 08:58:21', '2017-12-13 11:21:23', '2017-12-14 08:58:21'),
(12, 'hhhv ddd', 1, 'vdddd', '[{\"image\":null,\"content\":null}]', '/uploads/3/graphic-product-tangible.png', 1, '2017-12-14 08:58:21', '2017-12-13 11:21:51', '2017-12-14 08:58:21'),
(13, 'pakakj djd', 1, 'vdsvsv scss', '[{\"image\":null,\"content\":null}]', '/uploads/3/screen-shot-2017-12-06-at-104025-pm.png', 1, '2017-12-14 08:58:21', '2017-12-13 11:24:15', '2017-12-14 08:58:21'),
(14, 'aaaa', 1, 'csdvsdvsv', '[{\"image\":null,\"content\":null}]', '/uploads/3/screen-shot-2017-12-06-at-104025-pm.png', 1, NULL, '2017-12-13 11:25:26', '2017-12-13 11:25:26'),
(15, 'Product solution 1', 1, 'Product solution 1', '[{\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\",\"content\":\"aaaaaa\"}]', '/uploads/3/screen-shot-2017-12-06-at-104025-pm.png', 1, NULL, '2017-12-14 09:14:18', '2017-12-14 09:14:18'),
(16, 'Solution test 2', 1, 'Solution test 2', '[{\"image\":\"\\/uploads\\/3\\/graphic-product-tangible.png\",\"content\":\"vdssvv\"}]', '/uploads/3/screen-shot-2017-12-06-at-104025-pm.png', 5, NULL, '2017-12-14 10:36:26', '2017-12-14 10:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `product_solution_product`
--

CREATE TABLE `product_solution_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `productsolutions_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_solution_product`
--

INSERT INTO `product_solution_product` (`id`, `productsolutions_id`, `products_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 12, 9, NULL, NULL, NULL),
(2, 12, 83, NULL, NULL, NULL),
(3, 13, 1, NULL, NULL, NULL),
(4, 13, 83, NULL, NULL, NULL),
(5, 13, 9, NULL, NULL, NULL),
(6, 14, 1, NULL, '2017-12-13 11:25:26', '2017-12-13 11:25:26'),
(7, 14, 9, NULL, '2017-12-13 11:25:26', '2017-12-13 11:25:26'),
(8, 15, 1, NULL, '2017-12-14 09:14:18', '2017-12-14 09:14:18'),
(9, 15, 2, NULL, '2017-12-14 09:14:18', '2017-12-14 09:14:18'),
(21, 16, 3, NULL, '2017-12-14 10:51:15', '2017-12-14 10:51:15'),
(22, 16, 1, NULL, '2017-12-14 10:51:15', '2017-12-14 10:51:15'),
(23, 16, 2, NULL, '2017-12-14 10:51:15', '2017-12-14 10:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_logs`
--

CREATE TABLE `request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `request_logs`
--

INSERT INTO `request_logs` (`id`, `status_code`, `url`, `count`, `user_id`, `referrer`, `created_at`, `updated_at`) VALUES
(1, 404, 'http://botble.dev/images/favicon.png', 124, NULL, NULL, '2017-07-16 03:03:04', '2017-12-12 19:09:12'),
(2, 404, 'http://botble.dev/vendor/media/packages/underscore/underscore-min.map', 5, NULL, NULL, '2017-07-17 07:53:05', '2017-07-17 08:03:46'),
(3, 404, 'http://botble.dev/vendor/core/images/ui/nav_arrow_right.pn', 28, NULL, NULL, '2017-07-28 18:45:49', '2017-12-12 19:10:37'),
(4, 404, 'http://botble.dev/vendor/core/packages/underscore/underscore-min.map', 37, NULL, NULL, '2017-08-09 18:20:53', '2017-12-12 19:10:28'),
(5, 404, 'http://botble.dev/vendor/core/images/default-image-150x150.png', 20, NULL, NULL, '2017-12-06 00:06:11', '2017-12-12 19:10:43'),
(6, 404, 'http://botble.dev/admin/products', 1, NULL, NULL, '2017-12-11 03:41:49', '2017-12-11 03:41:49'),
(7, 404, 'http://botble.dev/admin/posts/jquery.contextMenu.min.js.map', 2, NULL, NULL, '2017-12-11 21:31:41', '2017-12-12 19:11:35'),
(8, 404, 'http://botble.dev/admin/posts/underscore-min.map', 2, NULL, NULL, '2017-12-11 21:31:41', '2017-12-12 19:11:35'),
(9, 404, 'http://botble.dev/admin/testimonials/jquery.contextMenu.min.js.map', 3, NULL, NULL, '2017-12-11 21:47:50', '2017-12-12 11:59:23'),
(10, 404, 'http://botble.dev/admin/testimonials/underscore-min.map', 3, NULL, NULL, '2017-12-11 21:47:50', '2017-12-12 11:59:23'),
(11, 404, 'http://botble.dev/js/app.js', 1, NULL, NULL, '2017-12-12 07:37:41', '2017-12-12 07:37:41'),
(12, 404, 'http://botble.dev/vendor/cm/js/cmscript.js', 1, NULL, NULL, '2017-12-12 07:42:11', '2017-12-12 07:42:11'),
(13, 404, 'http://botble.dev/admin/productsolutions/underscore-min.map', 2, NULL, NULL, '2017-12-12 12:03:25', '2017-12-12 19:10:28'),
(14, 404, 'http://botble.dev/admin/productsolutions/jquery.contextMenu.min.js.map', 2, NULL, NULL, '2017-12-12 12:03:25', '2017-12-12 19:10:28'),
(15, 404, 'http://umh.minh/lodin', 1, NULL, NULL, '2017-12-12 21:30:15', '2017-12-12 21:30:15'),
(16, 404, 'http://umh.minh/vendor/core/packages/underscore/underscore-min.map', 13, NULL, NULL, '2017-12-12 21:30:28', '2017-12-14 10:52:14'),
(17, 404, 'http://umh.minh/images/favicon.png', 64, NULL, NULL, '2017-12-12 21:30:28', '2017-12-14 11:02:13'),
(18, 404, 'http://umh.minh/vendor/core/images/ui/nav_arrow_right.pn', 3, NULL, NULL, '2017-12-13 03:04:54', '2017-12-13 10:42:20'),
(19, 404, 'http://umh.minh/admin/productsolutions/edit/underscore-min.map', 1, '[3]', NULL, '2017-12-13 08:49:16', '2017-12-13 08:49:16'),
(20, 404, 'http://umh.minh/admin/productsolutions/edit/jquery.contextMenu.min.js.map', 1, '[3]', NULL, '2017-12-13 08:49:16', '2017-12-13 08:49:16'),
(21, 404, 'http://umh.minh/vendor/core/images/default-image-150x150.png', 26, NULL, NULL, '2017-12-13 09:26:13', '2017-12-14 11:02:12'),
(22, 404, 'http://umh.minh/admin/productsolutions/edit/12', 1, '[3]', NULL, '2017-12-14 09:09:00', '2017-12-14 09:09:00'),
(23, 404, 'http://umh.minh/admin/productsolutions/edit/13', 1, '[3]', NULL, '2017-12-14 09:09:07', '2017-12-14 09:09:07'),
(24, 404, 'http://umh.minh/admin/productsolutions', 1, NULL, NULL, '2017-12-14 10:04:25', '2017-12-14 10:04:25'),
(25, 404, 'http://umh.minh/admin/product-api', 5, NULL, NULL, '2017-12-14 10:14:54', '2017-12-14 10:19:09'),
(26, 404, 'http://umh.minh/admin/productsolutions/edit/14', 1, NULL, NULL, '2017-12-14 10:27:30', '2017-12-14 10:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `revisionable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  `new_value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Models\\Posts\\Post', 1, 1, 'deleted_at', NULL, '2016-05-01 01:59:55', '2016-05-01 05:59:55', '2016-05-01 05:59:55'),
(2, 'Botble\\Models\\Posts\\Post', 2, 1, 'image', 'uploads/2/screenshot-27.png', 'uploads/0/2016-04-30-141023.png', '2016-05-04 00:49:14', '2016-05-04 00:49:14'),
(3, 'Botble\\Models\\Posts\\Post', 3, 1, 'name', 'Chuyện tình lan và điệp', 'Đây là tiêu đề bài viết', '2016-05-07 18:38:44', '2016-05-07 18:38:44'),
(4, 'Botble\\Models\\Posts\\Post', 3, 1, 'slug', 'chuyen-tinh-lan-va-diep', 'day-la-tieu-de-bai-viet', '2016-05-07 20:43:20', '2016-05-07 20:43:20'),
(5, 'Botble\\Models\\Posts\\Post', 5, 1, 'slug', 'day-la-tieu-de-at-at-667dfdsf-so', 'chuyen-nho-ma-lai', '2016-05-07 21:13:41', '2016-05-07 21:13:41'),
(6, 'Botble\\Models\\Posts\\Post', 3, 1, 'slug', 'day-la-tieu-de-bai-viet', 'day-la-tieu-de-bai-vietx', '2016-05-12 20:38:03', '2016-05-12 20:38:03'),
(7, 'Botble\\Models\\Posts\\Post', 2, 1, 'deleted_at', NULL, '2016-05-14 10:14:06', '2016-05-14 14:14:06', '2016-05-14 14:14:06'),
(8, 'Botble\\Models\\Posts\\Post', 3, 1, 'deleted_at', NULL, '2016-05-14 10:14:06', '2016-05-14 14:14:06', '2016-05-14 14:14:06'),
(9, 'Botble\\Models\\Posts\\Post', 4, 1, 'deleted_at', NULL, '2016-05-14 10:14:06', '2016-05-14 14:14:06', '2016-05-14 14:14:06'),
(10, 'Botble\\Models\\Posts\\Post', 5, 1, 'deleted_at', NULL, '2016-05-14 10:14:06', '2016-05-14 14:14:06', '2016-05-14 14:14:06'),
(11, 'Botble\\Models\\Posts\\Post', 6, 1, 'image', 'uploads/screenshot-40-3.png', 'uploads/31.jpg', '2016-05-14 14:20:03', '2016-05-14 14:20:03'),
(12, 'Botble\\Models\\Posts\\Post', 1, 1, 'image', 'uploads/31.jpg', 'uploads/avatar.png', '2016-06-18 04:30:26', '2016-06-18 04:30:26'),
(13, 'Botble\\Models\\Posts\\Post', 3, 1, 'deleted_at', NULL, '2016-06-22 01:09:01', '2016-06-22 05:09:01', '2016-06-22 05:09:01'),
(14, 'Botble\\Models\\Posts\\Post', 3, 1, 'deleted_at', NULL, '2016-06-22 01:13:20', '2016-06-22 05:13:20', '2016-06-22 05:13:20'),
(15, 'Botble\\Models\\Posts\\Post', 2, 1, 'deleted_at', NULL, '2016-06-22 01:14:55', '2016-06-22 05:14:55', '2016-06-22 05:14:55'),
(16, 'Botble\\Models\\Posts\\Post', 1, 1, 'status', '1', '0', '2016-06-22 05:14:59', '2016-06-22 05:14:59'),
(17, 'Botble\\Models\\Posts\\Post', 1, 1, 'status', '0', '1', '2016-06-22 05:15:03', '2016-06-22 05:15:03'),
(18, 'Botble\\Models\\Posts\\Post', 1, 1, 'image', 'uploads/avatar.png', 'uploads/call-of-duty-infinite-warfare-game-1024x768.jpg', '2016-07-02 15:13:16', '2016-07-02 15:13:16'),
(19, 'Botble\\Models\\Pages\\Page', 3, 1, 'deleted_at', NULL, '2016-07-08 21:06:30', '2016-07-09 01:06:30', '2016-07-09 01:06:30'),
(20, 'Botble\\Models\\Pages\\Page', 2, 1, 'deleted_at', NULL, '2016-07-09 11:35:28', '2016-07-09 15:35:28', '2016-07-09 15:35:28'),
(21, 'Botble\\Models\\Posts\\Post', 1, 1, 'deleted_at', NULL, '2016-07-09 11:35:54', '2016-07-09 15:35:54', '2016-07-09 15:35:54'),
(22, 'Botble\\Models\\Pages\\Page', 1, 1, 'name', 'sdfsdf', 'Contact', '2016-07-10 20:41:20', '2016-07-10 20:41:20'),
(23, 'Botble\\Models\\Pages\\Page', 1, 1, 'slug', 'sdfsdf', 'contact', '2016-07-10 20:47:10', '2016-07-10 20:47:10'),
(24, 'Botble\\Models\\Posts\\Post', 1, 1, 'deleted_at', NULL, '2016-08-02 17:32:40', '2016-08-02 21:32:40', '2016-08-02 21:32:40'),
(25, 'Botble\\Models\\Posts\\Post', 2, 1, 'deleted_at', NULL, '2016-08-02 17:32:42', '2016-08-02 21:32:42', '2016-08-02 21:32:42'),
(26, 'Botble\\Models\\Posts\\Post', 3, 1, 'deleted_at', NULL, '2016-08-02 17:32:44', '2016-08-02 21:32:44', '2016-08-02 21:32:44'),
(27, 'Botble\\Models\\Posts\\Post', 4, 1, 'featured', '0', '1', '2016-08-02 21:37:27', '2016-08-02 21:37:27'),
(28, 'Botble\\Models\\Posts\\Post', 6, 1, 'featured', '0', '1', '2016-08-02 21:38:51', '2016-08-02 21:38:51'),
(29, 'Botble\\Models\\Posts\\Post', 14, 1, 'slug', '', 'simple-ways-to-reduce', '2016-08-02 22:49:17', '2016-08-02 22:49:17'),
(30, 'Botble\\Page\\Models\\Page', 4, 1, 'deleted_at', NULL, '2016-08-14 15:10:47', '2016-08-14 19:10:47', '2016-08-14 19:10:47'),
(31, 'Botble\\Post\\Models\\Post', 22, 1, 'deleted_at', NULL, '2016-08-14 15:13:09', '2016-08-14 19:13:09', '2016-08-14 19:13:09'),
(32, 'Botble\\Page\\Models\\Page', 1, 1, 'content_type', 'eng', 'di', '2016-09-16 07:37:47', '2016-09-16 07:37:47'),
(33, 'Botble\\Page\\Models\\Page', 1, 1, 'content_type', 'di', 'eng', '2016-09-16 07:37:53', '2016-09-16 07:37:53'),
(34, 'Botble\\Post\\Models\\Post', 4, 1, 'content_type', 'eng', 'di', '2016-09-16 07:40:41', '2016-09-16 07:40:41'),
(35, 'Botble\\Post\\Models\\Post', 4, 1, 'content_type', 'di', 'eng', '2016-09-16 07:40:52', '2016-09-16 07:40:52'),
(36, 'Botble\\Page\\Models\\Page', 1, 1, 'template', '', 'blog', '2016-09-16 08:15:52', '2016-09-16 08:15:52'),
(37, 'Botble\\Page\\Models\\Page', 1, 1, 'template', 'blog', 'frontpage', '2016-09-16 08:15:59', '2016-09-16 08:15:59'),
(38, 'Botble\\Page\\Models\\Page', 1, 1, 'template', 'frontpage', 'none-sidebar', '2016-09-16 09:00:55', '2016-09-16 09:00:55'),
(39, 'Botble\\Page\\Models\\Page', 1, 1, 'template', 'none-sidebar', 'default', '2016-09-16 09:39:21', '2016-09-16 09:39:21'),
(40, 'Botble\\Page\\Models\\Page', 1, 1, 'template', 'default', 'none-sidebar', '2016-09-16 09:39:29', '2016-09-16 09:39:29'),
(41, 'Botble\\Page\\Models\\Page', 1, 1, 'template', 'none-sidebar', 'default', '2016-09-16 09:39:37', '2016-09-16 09:39:37'),
(42, 'Botble\\Page\\Models\\Page', 1, 1, 'template', 'default', 'none-sidebar', '2016-09-16 09:45:42', '2016-09-16 09:45:42'),
(43, 'Botble\\Page\\Models\\Page', 1, 1, 'template', 'none-sidebar', 'default', '2016-09-16 09:45:55', '2016-09-16 09:45:55'),
(44, 'Botble\\Page\\Models\\Page', 1, 1, 'template', 'default', 'none-sidebar', '2016-09-17 02:15:15', '2016-09-17 02:15:15'),
(45, 'Botble\\Page\\Models\\Page', 1, 1, 'template', 'none-sidebar', 'default', '2016-09-17 02:15:33', '2016-09-17 02:15:33'),
(46, 'Botble\\Page\\Models\\Page', 6, 1, 'deleted_at', NULL, '2016-09-27 15:24:59', '2016-09-27 08:24:59', '2016-09-27 08:24:59'),
(47, 'Botble\\Page\\Models\\Page', 1, 1, 'template', 'default', 'left-sidebar', '2016-09-27 09:48:41', '2016-09-27 09:48:41'),
(48, 'Botble\\Page\\Models\\Page', 1, 1, 'template', 'left-sidebar', 'right-sidebar', '2016-09-27 09:49:21', '2016-09-27 09:49:21'),
(49, 'Botble\\Page\\Models\\Page', 1, 1, 'sidebar', NULL, '1', '2016-09-29 09:11:41', '2016-09-29 09:11:41'),
(50, 'Botble\\Page\\Models\\Page', 1, 1, 'icon', NULL, '', '2016-09-29 09:11:41', '2016-09-29 09:11:41'),
(51, 'Botble\\Page\\Models\\Page', 1, 1, 'description', NULL, '', '2016-09-29 09:11:41', '2016-09-29 09:11:41'),
(52, 'Botble\\Page\\Models\\Page', 13, 1, 'deleted_at', NULL, '2016-10-01 04:27:56', '2016-09-30 21:27:56', '2016-09-30 21:27:56'),
(53, 'Botble\\Post\\Models\\Post', 21, 1, 'image', 'uploads/news/8980424864-bbdd635150-k-660x330.jpg', 'uploads/news/9325995752-e4ecc539f2-o-660x330.jpg', '2016-10-08 02:23:53', '2016-10-08 02:23:53'),
(54, 'Botble\\Post\\Models\\Post', 26, 1, 'deleted_at', NULL, '2016-10-14 15:48:18', '2016-10-14 08:48:18', '2016-10-14 08:48:18'),
(55, 'Botble\\Post\\Models\\Post', 25, 1, 'deleted_at', NULL, '2016-10-14 15:48:18', '2016-10-14 08:48:18', '2016-10-14 08:48:18'),
(56, 'Botble\\Post\\Models\\Post', 24, 1, 'deleted_at', NULL, '2016-10-14 15:48:18', '2016-10-14 08:48:18', '2016-10-14 08:48:18'),
(57, 'Botble\\Post\\Models\\Post', 23, 1, 'deleted_at', NULL, '2016-10-14 15:48:18', '2016-10-14 08:48:18', '2016-10-14 08:48:18'),
(58, 'Botble\\Post\\Models\\Post', 22, 1, 'deleted_at', NULL, '2016-10-14 15:48:18', '2016-10-14 08:48:18', '2016-10-14 08:48:18'),
(59, 'Botble\\Post\\Models\\Post', 29, 1, 'deleted_at', NULL, '2016-10-14 18:27:08', '2016-10-14 11:27:08', '2016-10-14 11:27:08'),
(60, 'Botble\\Post\\Models\\Post', 28, 1, 'deleted_at', NULL, '2016-10-14 18:27:08', '2016-10-14 11:27:08', '2016-10-14 11:27:08'),
(61, 'Botble\\Post\\Models\\Post', 27, 1, 'deleted_at', NULL, '2016-10-14 18:27:08', '2016-10-14 11:27:08', '2016-10-14 11:27:08'),
(62, 'Botble\\Post\\Models\\Post', 30, 1, 'deleted_at', NULL, '2016-10-14 19:09:23', '2016-10-14 12:09:23', '2016-10-14 12:09:23'),
(63, 'Botble\\Post\\Models\\Post', 37, 1, 'deleted_at', NULL, '2016-10-14 19:10:20', '2016-10-14 12:10:20', '2016-10-14 12:10:20'),
(64, 'Botble\\Post\\Models\\Post', 38, 1, 'deleted_at', NULL, '2016-10-14 19:10:48', '2016-10-14 12:10:48', '2016-10-14 12:10:48'),
(65, 'Botble\\Post\\Models\\Post', 36, 1, 'deleted_at', NULL, '2016-10-14 19:10:48', '2016-10-14 12:10:48', '2016-10-14 12:10:48'),
(66, 'Botble\\Post\\Models\\Post', 35, 1, 'deleted_at', NULL, '2016-10-14 19:10:48', '2016-10-14 12:10:48', '2016-10-14 12:10:48'),
(67, 'Botble\\Post\\Models\\Post', 34, 1, 'deleted_at', NULL, '2016-10-14 19:10:48', '2016-10-14 12:10:48', '2016-10-14 12:10:48'),
(68, 'Botble\\Post\\Models\\Post', 33, 1, 'deleted_at', NULL, '2016-10-14 19:10:48', '2016-10-14 12:10:48', '2016-10-14 12:10:48'),
(69, 'Botble\\Post\\Models\\Post', 32, 1, 'deleted_at', NULL, '2016-10-14 19:10:48', '2016-10-14 12:10:48', '2016-10-14 12:10:48'),
(70, 'Botble\\Post\\Models\\Post', 31, 1, 'deleted_at', NULL, '2016-10-14 19:10:48', '2016-10-14 12:10:48', '2016-10-14 12:10:48'),
(71, 'Botble\\Post\\Models\\Post', 43, 1, 'deleted_at', NULL, '2016-10-15 17:52:08', '2016-10-15 10:52:08', '2016-10-15 10:52:08'),
(72, 'Botble\\Post\\Models\\Post', 13, 1, 'image', 'uploads/news/8980424864-bbdd635150-k-660x330.jpg', 'uploads/news/1476890029-hero01.jpg', '2016-10-19 08:15:47', '2016-10-19 08:15:47'),
(73, 'Botble\\Post\\Models\\Post', 39, 1, 'deleted_at', NULL, '2016-10-19 15:16:10', '2016-10-19 08:16:10', '2016-10-19 08:16:10'),
(74, 'Botble\\Post\\Models\\Post', 40, 1, 'deleted_at', NULL, '2016-10-19 15:16:10', '2016-10-19 08:16:10', '2016-10-19 08:16:10'),
(75, 'Botble\\Post\\Models\\Post', 41, 1, 'deleted_at', NULL, '2016-10-19 15:16:10', '2016-10-19 08:16:10', '2016-10-19 08:16:10'),
(76, 'Botble\\Post\\Models\\Post', 42, 1, 'deleted_at', NULL, '2016-10-19 15:16:10', '2016-10-19 08:16:10', '2016-10-19 08:16:10'),
(77, 'Botble\\Post\\Models\\Post', 20, 1, 'image', 'uploads/news/old-car-660x330.jpg', 'uploads/news/1476890031-hero02.jpg', '2016-10-19 08:16:36', '2016-10-19 08:16:36'),
(78, 'Botble\\Post\\Models\\Post', 10, 1, 'image', 'uploads/news/1806717289-6e97fe91c9-b-660x330.jpg', 'uploads/news/1476890033-hero03.jpg', '2016-10-19 08:16:59', '2016-10-19 08:16:59'),
(79, 'Botble\\Post\\Models\\Post', 11, 1, 'image', 'uploads/news/7998125906-4489ed8a2f-b-660x330.jpg', 'uploads/news/1476890034-hero04.jpg', '2016-10-19 08:17:49', '2016-10-19 08:17:49'),
(80, 'Botble\\Post\\Models\\Post', 9, 1, 'image', 'uploads/news/6940343109-8e0633088e-b-660x330.jpg', 'uploads/news/1476890036-hero05.jpg', '2016-10-19 08:18:05', '2016-10-19 08:18:05'),
(81, 'Botble\\Post\\Models\\Post', 12, 1, 'image', 'uploads/news/9325995752-e4ecc539f2-o-660x330.jpg', 'uploads/news/1476890031-hero02.jpg', '2016-10-19 08:18:44', '2016-10-19 08:18:44'),
(82, 'Botble\\Post\\Models\\Post', 21, 1, 'image', 'uploads/news/9325995752-e4ecc539f2-o-660x330.jpg', 'uploads/news/1476891035-01.jpg', '2016-10-19 08:30:41', '2016-10-19 08:30:41'),
(83, 'Botble\\Post\\Models\\Post', 19, 1, 'image', 'uploads/news/nmnkzkiyqsygikfjinsb-20140717-212636-3-660x330.jpg', 'uploads/news/1476891195-02.jpg', '2016-10-19 08:33:26', '2016-10-19 08:33:26'),
(84, 'Botble\\Post\\Models\\Post', 18, 1, 'image', 'uploads/news/lock-660x330.jpg', 'uploads/news/1476891197-03.jpg', '2016-10-19 08:33:55', '2016-10-19 08:33:55'),
(85, 'Botble\\Post\\Models\\Post', 17, 1, 'image', 'uploads/news/8980424864-bbdd635150-k-660x330.jpg', 'uploads/news/1476891198-04.jpg', '2016-10-19 08:34:22', '2016-10-19 08:34:22'),
(86, 'Botble\\Post\\Models\\Post', 16, 1, 'image', 'uploads/news/6940343109-8e0633088e-b-660x330.jpg', 'uploads/news/1476891035-01.jpg', '2016-10-19 08:34:44', '2016-10-19 08:34:44'),
(87, 'Botble\\Post\\Models\\Post', 15, 1, 'image', 'uploads/news/1806717289-6e97fe91c9-b-660x330.jpg', 'uploads/news/1476891195-02.jpg', '2016-10-19 08:35:12', '2016-10-19 08:35:12'),
(88, 'Botble\\Post\\Models\\Post', 6, 1, 'image', 'uploads/news/lock-660x330.jpg', 'uploads/news/1476893532-01.jpg', '2016-10-19 09:12:19', '2016-10-19 09:12:19'),
(89, 'Botble\\Post\\Models\\Post', 4, 1, 'image', 'uploads/news/7717834982-bbd7e12b8c-b-660x330.jpg', 'uploads/news/1476893533-02.jpg', '2016-10-19 09:13:20', '2016-10-19 09:13:20'),
(90, 'Botble\\Page\\Models\\Page', 1, 1, 'template', 'right-sidebar', 'default', '2016-10-19 22:54:31', '2016-10-19 22:54:31'),
(91, 'Botble\\Page\\Models\\Page', 5, 1, 'deleted_at', NULL, '2016-10-22 00:56:15', '2016-10-21 17:56:15', '2016-10-21 17:56:15'),
(92, 'Botble\\Page\\Models\\Page', 7, 1, 'deleted_at', NULL, '2016-10-22 00:56:15', '2016-10-21 17:56:15', '2016-10-21 17:56:15'),
(93, 'Botble\\Page\\Models\\Page', 8, 1, 'deleted_at', NULL, '2016-10-22 00:56:15', '2016-10-21 17:56:15', '2016-10-21 17:56:15'),
(94, 'Botble\\Page\\Models\\Page', 9, 1, 'deleted_at', NULL, '2016-10-22 00:56:16', '2016-10-21 17:56:16', '2016-10-21 17:56:16'),
(95, 'Botble\\Page\\Models\\Page', 10, 1, 'deleted_at', NULL, '2016-10-22 00:56:16', '2016-10-21 17:56:16', '2016-10-21 17:56:16'),
(96, 'Botble\\Page\\Models\\Page', 11, 1, 'deleted_at', NULL, '2016-10-22 00:56:16', '2016-10-21 17:56:16', '2016-10-21 17:56:16'),
(97, 'Botble\\Page\\Models\\Page', 12, 1, 'deleted_at', NULL, '2016-10-22 00:56:16', '2016-10-21 17:56:16', '2016-10-21 17:56:16'),
(98, 'Botble\\Page\\Models\\Page', 14, 1, 'deleted_at', NULL, '2016-10-22 00:56:16', '2016-10-21 17:56:16', '2016-10-21 17:56:16'),
(99, 'Botble\\Page\\Models\\Page', 15, 1, 'deleted_at', NULL, '2016-10-22 00:56:16', '2016-10-21 17:56:16', '2016-10-21 17:56:16'),
(100, 'Botble\\Page\\Models\\Page', 16, 1, 'deleted_at', NULL, '2016-10-22 00:56:50', '2016-10-21 17:56:50', '2016-10-21 17:56:50'),
(101, 'Botble\\Page\\Models\\Page', 17, 1, 'name', 'Liên hệ', 'Liên hệx', '2016-11-16 09:31:02', '2016-11-16 09:31:02'),
(102, 'Botble\\Page\\Models\\Page', 17, 1, 'name', 'Liên hệx', 'Liên hệ', '2016-11-16 09:31:15', '2016-11-16 09:31:15'),
(103, 'Botble\\Page\\Models\\Page', 18, 1, 'deleted_at', NULL, '2016-11-25 13:45:34', '2016-11-25 06:45:34', '2016-11-25 06:45:34'),
(104, 'Botble\\Page\\Models\\Page', 22, 1, 'deleted_at', NULL, '2016-11-25 13:59:26', '2016-11-25 06:59:26', '2016-11-25 06:59:26'),
(105, 'Botble\\Page\\Models\\Page', 21, 1, 'deleted_at', NULL, '2016-11-25 13:59:32', '2016-11-25 06:59:32', '2016-11-25 06:59:32'),
(106, 'Botble\\Page\\Models\\Page', 20, 1, 'deleted_at', NULL, '2016-11-25 13:59:37', '2016-11-25 06:59:37', '2016-11-25 06:59:37'),
(107, 'Botble\\Page\\Models\\Page', 19, 1, 'deleted_at', NULL, '2016-11-25 13:59:44', '2016-11-25 06:59:44', '2016-11-25 06:59:44'),
(108, 'Botble\\Page\\Models\\Page', 1, 1, 'image', '/images/default-image.jpg', 'uploads/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg', '2016-11-25 07:05:04', '2016-11-25 07:05:04'),
(109, 'Botble\\Page\\Models\\Page', 17, 1, 'image', 'images/default-image.jpg', 'uploads/galleries/1476513483-misty-mountains-1280x720.jpg', '2016-11-25 07:05:14', '2016-11-25 07:05:14'),
(110, 'Botble\\Page\\Models\\Page', 23, 1, 'deleted_at', NULL, '2016-12-03 08:21:57', '2016-12-03 01:21:57', '2016-12-03 01:21:57'),
(111, 'Botble\\Page\\Models\\Page', 17, 1, 'deleted_at', NULL, '2016-12-03 08:22:32', '2016-12-03 01:22:32', '2016-12-03 01:22:32'),
(112, 'Botble\\Page\\Models\\Page', 24, 1, 'deleted_at', NULL, '2016-12-03 08:28:35', '2016-12-03 01:28:35', '2016-12-03 01:28:35'),
(113, 'Botble\\Page\\Models\\Page', 17, 1, 'deleted_at', NULL, '2016-12-03 08:30:21', '2016-12-03 01:30:21', '2016-12-03 01:30:21'),
(114, 'Botble\\Post\\Models\\Post', 13, 1, 'deleted_at', NULL, '2016-12-04 15:07:53', '2016-12-04 08:07:53', '2016-12-04 08:07:53'),
(115, 'Botble\\Post\\Models\\Post', 7, 1, 'deleted_at', NULL, '2016-12-04 15:38:21', '2016-12-04 08:38:21', '2016-12-04 08:38:21'),
(116, 'Botble\\Post\\Models\\Post', 4, 1, 'status', '1', '0', '2016-12-04 08:40:17', '2016-12-04 08:40:17'),
(117, 'Botble\\Post\\Models\\Post', 5, 1, 'status', '1', '0', '2016-12-04 08:40:17', '2016-12-04 08:40:17'),
(118, 'Botble\\Post\\Models\\Post', 4, 1, 'status', '0', '1', '2016-12-04 08:40:18', '2016-12-04 08:40:18'),
(119, 'Botble\\Post\\Models\\Post', 5, 1, 'status', '0', '1', '2016-12-04 08:40:18', '2016-12-04 08:40:18'),
(120, 'Botble\\Post\\Models\\Post', 4, 1, 'status', '1', '0', '2016-12-04 08:41:26', '2016-12-04 08:41:26'),
(121, 'Botble\\Post\\Models\\Post', 5, 1, 'status', '1', '0', '2016-12-04 08:41:26', '2016-12-04 08:41:26'),
(122, 'Botble\\Post\\Models\\Post', 6, 1, 'status', '1', '0', '2016-12-04 08:41:39', '2016-12-04 08:41:39'),
(123, 'Botble\\Post\\Models\\Post', 8, 1, 'status', '1', '0', '2016-12-04 08:41:39', '2016-12-04 08:41:39'),
(124, 'Botble\\Post\\Models\\Post', 4, 1, 'status', '0', '1', '2016-12-04 08:50:36', '2016-12-04 08:50:36'),
(125, 'Botble\\Post\\Models\\Post', 5, 1, 'status', '0', '1', '2016-12-04 08:50:36', '2016-12-04 08:50:36'),
(126, 'Botble\\Post\\Models\\Post', 6, 1, 'status', '0', '1', '2016-12-04 08:50:36', '2016-12-04 08:50:36'),
(127, 'Botble\\Post\\Models\\Post', 8, 1, 'status', '0', '1', '2016-12-04 08:50:36', '2016-12-04 08:50:36'),
(128, 'Botble\\Post\\Models\\Post', 5, 1, 'status', '1', '0', '2016-12-04 08:51:51', '2016-12-04 08:51:51'),
(129, 'Botble\\Post\\Models\\Post', 5, 1, 'deleted_at', NULL, '2016-12-04 15:52:03', '2016-12-04 08:52:03', '2016-12-04 08:52:03'),
(130, 'Botble\\Post\\Models\\Post', 4, 1, 'featured', '1', '0', '2016-12-10 02:45:41', '2016-12-10 02:45:41'),
(131, 'Botble\\Post\\Models\\Post', 4, 1, 'featured', '0', '1', '2016-12-10 02:46:44', '2016-12-10 02:46:44'),
(132, 'Botble\\Post\\Models\\Post', 4, 1, 'featured', '1', '0', '2016-12-10 02:47:13', '2016-12-10 02:47:13'),
(133, 'Botble\\Post\\Models\\Post', 4, 1, 'featured', '0', '1', '2016-12-10 02:47:23', '2016-12-10 02:47:23'),
(134, 'Botble\\Post\\Models\\Post', 4, 1, 'status', '1', '0', '2016-12-10 12:11:51', '2016-12-10 12:11:51'),
(135, 'Botble\\Post\\Models\\Post', 6, 1, 'status', '1', '0', '2016-12-10 12:11:51', '2016-12-10 12:11:51'),
(136, 'Botble\\Post\\Models\\Post', 8, 1, 'status', '1', '0', '2016-12-10 12:11:51', '2016-12-10 12:11:51'),
(137, 'Botble\\Post\\Models\\Post', 9, 1, 'status', '1', '0', '2016-12-10 12:11:51', '2016-12-10 12:11:51'),
(138, 'Botble\\Post\\Models\\Post', 10, 1, 'status', '1', '0', '2016-12-10 12:11:51', '2016-12-10 12:11:51'),
(139, 'Botble\\Post\\Models\\Post', 11, 1, 'status', '1', '0', '2016-12-10 12:11:51', '2016-12-10 12:11:51'),
(140, 'Botble\\Post\\Models\\Post', 12, 1, 'status', '1', '0', '2016-12-10 12:11:51', '2016-12-10 12:11:51'),
(141, 'Botble\\Post\\Models\\Post', 14, 1, 'status', '1', '0', '2016-12-10 12:11:51', '2016-12-10 12:11:51'),
(142, 'Botble\\Post\\Models\\Post', 15, 1, 'status', '1', '0', '2016-12-10 12:11:51', '2016-12-10 12:11:51'),
(143, 'Botble\\Post\\Models\\Post', 16, 1, 'status', '1', '0', '2016-12-10 12:11:51', '2016-12-10 12:11:51'),
(144, 'Botble\\Post\\Models\\Post', 4, 1, 'status', '0', '1', '2016-12-10 12:12:12', '2016-12-10 12:12:12'),
(145, 'Botble\\Post\\Models\\Post', 6, 1, 'status', '0', '1', '2016-12-10 12:12:12', '2016-12-10 12:12:12'),
(146, 'Botble\\Post\\Models\\Post', 8, 1, 'status', '0', '1', '2016-12-10 12:12:12', '2016-12-10 12:12:12'),
(147, 'Botble\\Post\\Models\\Post', 9, 1, 'status', '0', '1', '2016-12-10 12:12:12', '2016-12-10 12:12:12'),
(148, 'Botble\\Post\\Models\\Post', 10, 1, 'status', '0', '1', '2016-12-10 12:12:12', '2016-12-10 12:12:12'),
(149, 'Botble\\Post\\Models\\Post', 11, 1, 'status', '0', '1', '2016-12-10 12:12:12', '2016-12-10 12:12:12'),
(150, 'Botble\\Post\\Models\\Post', 12, 1, 'status', '0', '1', '2016-12-10 12:12:12', '2016-12-10 12:12:12'),
(151, 'Botble\\Post\\Models\\Post', 14, 1, 'status', '0', '1', '2016-12-10 12:12:12', '2016-12-10 12:12:12'),
(152, 'Botble\\Post\\Models\\Post', 15, 1, 'status', '0', '1', '2016-12-10 12:12:12', '2016-12-10 12:12:12'),
(153, 'Botble\\Post\\Models\\Post', 16, 1, 'status', '0', '1', '2016-12-10 12:12:12', '2016-12-10 12:12:12'),
(154, 'Botble\\Post\\Models\\Post', 4, 1, 'status', '1', '0', '2016-12-10 12:19:47', '2016-12-10 12:19:47'),
(155, 'Botble\\Post\\Models\\Post', 6, 1, 'status', '1', '0', '2016-12-10 12:19:47', '2016-12-10 12:19:47'),
(156, 'Botble\\Post\\Models\\Post', 8, 1, 'status', '1', '0', '2016-12-10 12:19:48', '2016-12-10 12:19:48'),
(157, 'Botble\\Post\\Models\\Post', 9, 1, 'status', '1', '0', '2016-12-10 12:19:48', '2016-12-10 12:19:48'),
(158, 'Botble\\Post\\Models\\Post', 10, 1, 'status', '1', '0', '2016-12-10 12:19:48', '2016-12-10 12:19:48'),
(159, 'Botble\\Post\\Models\\Post', 11, 1, 'status', '1', '0', '2016-12-10 12:19:48', '2016-12-10 12:19:48'),
(160, 'Botble\\Post\\Models\\Post', 12, 1, 'status', '1', '0', '2016-12-10 12:19:48', '2016-12-10 12:19:48'),
(161, 'Botble\\Post\\Models\\Post', 14, 1, 'status', '1', '0', '2016-12-10 12:19:48', '2016-12-10 12:19:48'),
(162, 'Botble\\Post\\Models\\Post', 15, 1, 'status', '1', '0', '2016-12-10 12:19:48', '2016-12-10 12:19:48'),
(163, 'Botble\\Post\\Models\\Post', 16, 1, 'status', '1', '0', '2016-12-10 12:19:48', '2016-12-10 12:19:48'),
(164, 'Botble\\Post\\Models\\Post', 4, 1, 'status', '0', '1', '2016-12-10 12:19:54', '2016-12-10 12:19:54'),
(165, 'Botble\\Post\\Models\\Post', 6, 1, 'status', '0', '1', '2016-12-10 12:19:54', '2016-12-10 12:19:54'),
(166, 'Botble\\Post\\Models\\Post', 8, 1, 'status', '0', '1', '2016-12-10 12:19:54', '2016-12-10 12:19:54'),
(167, 'Botble\\Post\\Models\\Post', 9, 1, 'status', '0', '1', '2016-12-10 12:19:54', '2016-12-10 12:19:54'),
(168, 'Botble\\Post\\Models\\Post', 10, 1, 'status', '0', '1', '2016-12-10 12:19:54', '2016-12-10 12:19:54'),
(169, 'Botble\\Post\\Models\\Post', 11, 1, 'status', '0', '1', '2016-12-10 12:19:54', '2016-12-10 12:19:54'),
(170, 'Botble\\Post\\Models\\Post', 12, 1, 'status', '0', '1', '2016-12-10 12:19:54', '2016-12-10 12:19:54'),
(171, 'Botble\\Post\\Models\\Post', 14, 1, 'status', '0', '1', '2016-12-10 12:19:54', '2016-12-10 12:19:54'),
(172, 'Botble\\Post\\Models\\Post', 15, 1, 'status', '0', '1', '2016-12-10 12:19:54', '2016-12-10 12:19:54'),
(173, 'Botble\\Post\\Models\\Post', 16, 1, 'status', '0', '1', '2016-12-10 12:19:54', '2016-12-10 12:19:54'),
(174, 'Botble\\Blog\\Models\\Post', 8, 1, 'featured', '1', '0', '2017-03-21 07:25:09', '2017-03-21 07:25:09'),
(175, 'Botble\\Blog\\Models\\Post', 9, 1, 'featured', '1', '0', '2017-03-21 07:26:07', '2017-03-21 07:26:07'),
(176, 'Botble\\Blog\\Models\\Post', 7, 1, 'featured', '1', '0', '2017-03-21 07:26:50', '2017-03-21 07:26:50'),
(177, 'Botble\\Blog\\Models\\Post', 12, 1, 'featured', '1', '0', '2017-03-21 07:27:32', '2017-03-21 07:27:32'),
(178, 'Botble\\Blog\\Models\\Post', 12, 1, 'featured', '0', '1', '2017-03-21 07:28:32', '2017-03-21 07:28:32'),
(179, 'Botble\\Blog\\Models\\Post', 5, 1, 'status', '0', '1', '2017-03-21 07:28:44', '2017-03-21 07:28:44'),
(180, 'Botble\\Blog\\Models\\Post', 6, 1, 'featured', '1', '0', '2017-03-21 07:29:47', '2017-03-21 07:29:47'),
(181, 'Botble\\Blog\\Models\\Post', 5, 1, 'featured', '1', '0', '2017-03-21 07:30:15', '2017-03-21 07:30:15'),
(182, 'Botble\\Blog\\Models\\Post', 6, 1, 'featured', '0', '1', '2017-03-21 07:30:25', '2017-03-21 07:30:25'),
(183, 'Botble\\Blog\\Models\\Post', 6, 1, 'featured', '1', '0', '2017-03-21 07:30:39', '2017-03-21 07:30:39'),
(184, 'Botble\\Blog\\Models\\Post', 4, 1, 'featured', '1', '0', '2017-03-21 07:31:04', '2017-03-21 07:31:04'),
(185, 'Botble\\Blog\\Models\\Post', 18, 1, 'image', 'uploads/news/1476891197-03.jpg', 'uploads/news/1476890036-hero05.jpg', '2017-04-30 20:06:25', '2017-04-30 20:06:25'),
(186, 'Botble\\Blog\\Models\\Post', 18, 1, 'image', 'uploads/news/1476890036-hero05.jpg', 'uploads/news/9325995752-e4ecc539f2-o-660x330.jpg', '2017-04-30 20:06:59', '2017-04-30 20:06:59'),
(187, 'Botble\\Blog\\Models\\Post', 18, 1, 'image', 'uploads/news/9325995752-e4ecc539f2-o-660x330.jpg', 'uploads/news/7998125906-4489ed8a2f-b-660x330.jpg', '2017-04-30 20:07:23', '2017-04-30 20:07:23'),
(188, 'Botble\\Blog\\Models\\Post', 18, 1, 'image', 'uploads/news/7998125906-4489ed8a2f-b-660x330.jpg', 'uploads/news/4381851322-d46fd7d75e-b-660x330.jpg', '2017-04-30 20:07:46', '2017-04-30 20:07:46'),
(189, 'Botble\\Blog\\Models\\Post', 18, 1, 'image', 'uploads/news/4381851322-d46fd7d75e-b-660x330.jpg', 'uploads/news/1476891195-02.jpg', '2017-04-30 20:08:14', '2017-04-30 20:08:14'),
(190, 'Botble\\Blog\\Models\\Post', 18, 1, 'image', 'uploads/news/1476891195-02.jpg', 'uploads/news/1476893533-02.jpg', '2017-04-30 20:08:55', '2017-04-30 20:08:55'),
(191, 'Botble\\Blog\\Models\\Post', 14, 1, 'description', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. ', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies.', '2017-04-30 20:15:29', '2017-04-30 20:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(4) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_staff`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `is_default`) VALUES
(1, 'admin', 'Administrator', NULL, 'This is highest role for a member in this team', 0, 1, 1, NULL, '2016-04-30 19:51:47', '2016-05-11 22:26:04', 0),
(2, 'user', 'Member', NULL, 'Normal user', 0, 1, 1, NULL, '2016-04-30 19:51:47', '2016-04-30 19:51:47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role_flags`
--

CREATE TABLE `role_flags` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `flag_id` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_flags`
--

INSERT INTO `role_flags` (`role_id`, `flag_id`, `id`) VALUES
(1, 1, 1),
(2, 1, 2),
(1, 2, 3),
(2, 2, 4),
(1, 3, 5),
(2, 3, 6),
(1, 4, 7),
(1, 5, 8),
(1, 6, 9),
(1, 7, 10),
(2, 7, 11),
(1, 8, 12),
(2, 8, 13),
(1, 9, 14),
(2, 9, 15),
(1, 10, 16),
(2, 10, 17),
(1, 11, 18),
(2, 11, 19),
(1, 12, 20),
(2, 12, 21),
(1, 13, 22),
(1, 14, 23),
(1, 15, 24),
(1, 16, 25),
(1, 17, 26),
(1, 25, 27),
(2, 25, 28),
(1, 26, 29),
(2, 26, 30),
(1, 27, 31),
(2, 27, 32),
(1, 29, 33),
(1, 30, 34),
(1, 31, 35),
(1, 32, 36),
(1, 83, 37),
(2, 83, 38),
(1, 84, 39),
(2, 84, 40),
(1, 85, 41),
(2, 85, 42),
(1, 86, 43),
(2, 86, 44),
(1, 87, 45),
(2, 87, 46),
(1, 88, 47),
(2, 88, 48),
(1, 89, 49),
(2, 89, 50),
(1, 90, 51),
(2, 90, 52),
(1, 107, 53),
(2, 107, 54),
(1, 108, 55),
(2, 108, 56),
(1, 109, 57),
(2, 109, 58),
(1, 110, 59),
(2, 110, 60),
(1, 111, 61),
(2, 111, 62),
(1, 116, 63),
(2, 116, 64),
(1, 117, 65),
(2, 117, 66),
(1, 118, 67),
(2, 118, 68),
(1, 119, 69),
(2, 119, 70),
(1, 120, 71),
(2, 120, 72),
(1, 121, 73),
(2, 121, 74),
(1, 122, 75),
(2, 122, 76),
(1, 123, 77),
(2, 123, 78),
(1, 136, 79),
(2, 136, 80),
(1, 137, 81),
(2, 137, 82),
(1, 138, 83),
(2, 138, 84),
(1, 139, 85),
(2, 139, 86),
(1, 140, 87),
(1, 141, 88),
(1, 142, 89),
(1, 143, 90),
(1, 144, 91),
(1, 145, 92),
(1, 149, 93),
(1, 150, 94),
(1, 151, 95),
(1, 152, 96),
(1, 161, 97),
(2, 161, 98),
(1, 162, 99),
(2, 162, 100),
(1, 173, 101),
(1, 174, 102),
(1, 175, 103),
(1, 176, 104),
(1, 177, 105),
(2, 177, 106),
(1, 178, 107),
(2, 178, 108),
(1, 179, 109),
(2, 179, 110),
(1, 180, 111),
(2, 180, 112),
(1, 287, 113),
(2, 287, 114);

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`, `id`) VALUES
(1, 1, '2016-08-13 19:44:44', '2016-08-13 19:44:44', 1),
(2, 1, '2017-06-02 18:55:43', '2017-06-02 18:55:43', 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'site_title', 'PHP platform based on Laravel Framework'),
(2, 'copyright', '© 2016 Botble Technologies. All right reserved. Designed by <a href=\"http://nghiadev.com\" target=\"_blank\">Nghia Minh</a>'),
(3, 'admin_email', 'sangnguyenplus@gmail.com'),
(4, 'google_analytics', 'UA-42586526-15'),
(5, 'google_site_verification', 'hs2Js3WGGpf1pzyhUNehvVDSIrmO3XZpm7PggNZECxE'),
(6, 'seo_title', 'Botble Platform'),
(7, 'seo_description', 'Botble Platform - PHP platform base on Laravel Framework'),
(8, 'seo_keywords', 'botble, botble team, botble platform, php platform, php framework, web development'),
(9, 'contact_address', 'Elinext Building, 37 Phan Xich Long, ward 3, Phu Nhuan district, Ho Chi Minh, Vietnam'),
(10, 'contact_email', 'sangnguyenplus@gmail.com'),
(11, 'email_support', 'sangnguyenplus@gmail.com'),
(12, 'contact_phone', '+84988606928'),
(13, 'contact_hotline', '+84988606928'),
(14, 'enable_captcha', '0'),
(15, 'about', '<p>Content here</p>\r\n'),
(16, 'show_admin_bar', '1'),
(17, 'theme', 'ripple'),
(18, 'enable_change_admin_theme', '1'),
(19, 'enable_multi_language_in_admin', '1'),
(20, 'enable_https', '0'),
(21, 'google_plus', 'https://plus.google.com'),
(22, 'facebook', 'https://www.facebook.com/botble.technologies'),
(23, 'twitter', 'https://twitter.com/botble'),
(24, 'enable_cache', '0'),
(25, 'cache_time', '10'),
(26, 'cache_time_site_map', '3600'),
(27, 'language_hide_default', '1'),
(28, 'language_switcher_display', 'dropdown'),
(29, 'language_display', 'all'),
(30, 'language_hide_languages', '[]'),
(31, 'theme-ripple-site_title', '© 2016 Botble Technologies. All right reserved. Designed by <a href=\"http://nghiadev.com\" target=\"_blank\">Nghia Minh</a>'),
(33, 'theme-ripple-logo', ''),
(34, 'theme-ripple-copyright', '© 2016 Botble Technologies. All right reserved. Designed by <a href=\"http://nghiadev.com\" target=\"_blank\">Nghia Minh</a>'),
(35, 'theme-newstv-copyright', '© Copyright 2017 by news-tv.com. All Rights Reserved.'),
(36, 'theme-newstv-theme_color', 'red'),
(37, 'theme-newstv-top_banner', '/themes/newstv/assets/images/banner.png'),
(38, 'theme-newstv-logo', 'uploads/1/logo/1493607187-1493225486-logo.png'),
(39, 'rich_editor', 'tinymce');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(400) COLLATE utf8_unicode_ci DEFAULT '',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `user_id`, `description`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(5, 'download', 'botble', 1, '', 0, 1, '2016-08-02 21:38:34', '2016-09-27 09:30:37'),
(6, 'event', 'botble-cms', 1, '', 0, 1, '2016-08-02 21:38:34', '2016-09-27 09:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `position` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `status`, `position`, `content`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Test testimonial name1', 0, 'Manager', 'Test testimonial content', '/uploads/3/graphic-product-tangible.png', NULL, '2017-12-11 23:18:43', '2017-12-11 23:26:04'),
(2, 'iueeiu', 1, 'kldbdvskdljsl', 'vkndslvnsl vksvsl', NULL, '2017-12-11 23:25:58', '2017-12-11 23:25:50', '2017-12-11 23:25:58'),
(3, 'ldjdjdjs jvsj', 0, 'kvdsvvvs', 'kvjdsosoeeeess', NULL, NULL, '2017-12-11 23:26:28', '2017-12-11 23:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2017-01-18 21:17:18', '2017-01-18 21:17:18'),
(2, NULL, 'ip', '127.0.0.1', '2017-01-18 21:17:18', '2017-01-18 21:17:18'),
(3, NULL, 'global', NULL, '2017-05-30 06:53:42', '2017-05-30 06:53:42'),
(4, NULL, 'ip', '127.0.0.1', '2017-05-30 06:53:42', '2017-05-30 06:53:42'),
(5, 1, 'user', NULL, '2017-05-30 06:53:42', '2017-05-30 06:53:42'),
(6, NULL, 'global', NULL, '2017-12-12 03:53:44', '2017-12-12 03:53:44'),
(7, NULL, 'ip', '127.0.0.1', '2017-12-12 03:53:44', '2017-12-12 03:53:44'),
(8, 3, 'user', NULL, '2017-12-12 03:53:44', '2017-12-12 03:53:44'),
(9, NULL, 'global', NULL, '2017-12-13 08:41:51', '2017-12-13 08:41:51'),
(10, NULL, 'ip', '127.0.0.1', '2017-12-13 08:41:51', '2017-12-13 08:41:51'),
(11, 3, 'user', NULL, '2017-12-13 08:41:51', '2017-12-13 08:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(2, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(3, 1, 'en', 'passwords', 'password', 'Passwords must be at least six characters and match the confirmation.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(4, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(5, 1, 'en', 'passwords', 'sent', 'We have e-mailed your password reset link!', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(6, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(7, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that e-mail address.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(8, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(9, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(10, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(11, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(12, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(13, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, and dashes.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(14, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(15, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(16, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(17, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(18, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(19, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(20, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(21, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(22, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(23, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(24, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(25, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(26, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(27, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(28, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2017-08-14 17:38:09', '2017-08-14 17:38:09'),
(29, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(30, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(31, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(32, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(33, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(34, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(35, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(36, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(37, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(38, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(39, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(40, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(41, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(42, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(43, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(44, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(45, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(46, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(47, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(48, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(49, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(50, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(51, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(52, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(53, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(54, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(55, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(56, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(57, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(58, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(59, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(60, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(61, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(62, 1, 'en', 'validation', 'custom.email.email', 'Email is invalid!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(63, 1, 'en', 'validation', 'custom.email.required', 'Email field is required!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(64, 1, 'en', 'validation', 'custom.email.unique', 'This email was used. Please use another one!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(65, 1, 'en', 'validation', 'custom.password.min', 'Password must be at least :min characters.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(66, 1, 'en', 'validation', 'custom.password.required', 'Password field is required!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(67, 1, 'en', 'validation', 'custom.repassword.same', 'Password and password confirm does not match!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(68, 1, 'en', 'validation', 'custom.username.min', 'Username must be at least :min characters.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(69, 1, 'en', 'validation', 'custom.username.required', 'Username field is required!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(70, 1, 'en', 'validation', 'custom.username.unique', 'This username was used. Please use another one!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(71, 1, 'en', 'validation', 'attributes', 'Attributes', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(72, 1, 'en', 'acl/auth', 'login.username', 'Username', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(73, 1, 'en', 'acl/auth', 'login.password', 'Password', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(74, 1, 'en', 'acl/auth', 'login.title', 'User Login', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(75, 1, 'en', 'acl/auth', 'login.remember', 'Remember me?', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(76, 1, 'en', 'acl/auth', 'login.login', 'Sign in', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(77, 1, 'en', 'acl/auth', 'login.placeholder.username', 'Please enter your username', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(78, 1, 'en', 'acl/auth', 'login.success', 'Login successfully!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(79, 1, 'en', 'acl/auth', 'login.fail', 'Wrong username or password.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(80, 1, 'en', 'acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(81, 1, 'en', 'acl/auth', 'login.banned', 'This account is banned.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(82, 1, 'en', 'acl/auth', 'login.logout_success', 'Logout successfully!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(83, 1, 'en', 'acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(84, 1, 'en', 'acl/auth', 'forgot_password.title', 'Lost password', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(85, 1, 'en', 'acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your username account. System will send a email with active link to reset your password.</p>', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(86, 1, 'en', 'acl/auth', 'forgot_password.submit', 'Submit', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(87, 1, 'en', 'acl/auth', 'reset.new_password', 'New password', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(88, 1, 'en', 'acl/auth', 'reset.repassword', 'Confirm new password', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(89, 1, 'en', 'acl/auth', 'reset.title', 'Reset your password', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(90, 1, 'en', 'acl/auth', 'reset.update', 'Update', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(91, 1, 'en', 'acl/auth', 'reset.wrong_token', 'This link is invalid or exprired. Please try using reset form again.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(92, 1, 'en', 'acl/auth', 'reset.user_not_found', 'This username is not exist.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(93, 1, 'en', 'acl/auth', 'reset.success', 'Reset password successfully!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(94, 1, 'en', 'acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been exprired!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(95, 1, 'en', 'acl/auth', 'reset.reset.title', 'Email reset password', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(96, 1, 'en', 'acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(97, 1, 'en', 'acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(98, 1, 'en', 'acl/auth', 'reset.new-password', 'New password', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(99, 1, 'en', 'acl/auth', 'email.reminder.title', 'Email reset password', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(100, 1, 'en', 'acl/auth', 'email.invite.title', 'Invite to join ', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(101, 1, 'en', 'acl/auth', 'repassword', 'Password confirm', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(102, 1, 'en', 'acl/auth', 'failed', 'Failed', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(103, 1, 'en', 'acl/auth', 'throttle', 'Throttle', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(104, 1, 'en', 'acl/auth', 'not_member', 'Not a member yet?', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(105, 1, 'en', 'acl/auth', 'register_now', 'Register now', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(106, 1, 'en', 'acl/auth', 'lost_your_password', 'Lost your password?', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(107, 1, 'en', 'acl/auth', 'login_title', 'Login to system', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(108, 1, 'en', 'acl/auth', 'login_via_social', 'Login with social networks', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(109, 1, 'en', 'acl/auth', 'back_to_login', 'Back to login page', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(110, 1, 'en', 'acl/auth', 'accept_invite', 'Accept invite', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(111, 1, 'en', 'acl/feature', 'update_success', 'Features were successfully modified', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(112, 1, 'en', 'acl/feature', 'could_not_load_user', 'Could not load user account', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(113, 1, 'en', 'acl/feature', 'could_not_load_file', 'Could not load file', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(114, 1, 'en', 'acl/feature', 'could_not_load_relations', 'Could not load relations', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(115, 1, 'en', 'acl/feature', 'file_attached', 'File attached', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(116, 1, 'en', 'acl/feature', 'remove_success', 'File successfully removed', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(117, 1, 'en', 'acl/feature', 'folder_note_exist', 'The folder does not exist', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(118, 1, 'en', 'acl/feature', 'cannot_read_folder', 'Can not read this folder!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(119, 1, 'en', 'acl/feature', 'all', 'All Features', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(120, 1, 'en', 'acl/feature', 'edit', 'Edit Feature', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(121, 1, 'en', 'acl/feature', 'cancel', 'Cancel', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(122, 1, 'en', 'acl/feature', 'save', 'Save', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(123, 1, 'en', 'acl/feature', 'options', 'Options', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(124, 1, 'en', 'acl/feature', 'details', 'Details', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(125, 1, 'en', 'acl/feature', 'name', 'Name', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(126, 1, 'en', 'acl/feature', 'description', 'Description', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(127, 1, 'en', 'acl/feature', 'timezone', 'Timezone', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(128, 1, 'en', 'acl/feature', 'apply_changes', 'Apply Changes', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(129, 1, 'en', 'acl/feature', 'folder_not_exist', 'The folder does not exist', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(130, 1, 'en', 'acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(131, 1, 'en', 'acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(132, 1, 'en', 'acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(133, 1, 'en', 'acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(134, 1, 'en', 'acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(135, 1, 'en', 'acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(136, 1, 'en', 'acl/permissions', 'notices.create_success', 'The new role was successfully created', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(137, 1, 'en', 'acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(138, 1, 'en', 'acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(139, 1, 'en', 'acl/permissions', 'notices.not_found', 'Role not found', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(140, 1, 'en', 'acl/permissions', 'list', 'List Permissions', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(141, 1, 'en', 'acl/permissions', 'name', 'Name', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(142, 1, 'en', 'acl/permissions', 'current_role', 'Current Role', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(143, 1, 'en', 'acl/permissions', 'no_role_assigned', 'No role assigned', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(144, 1, 'en', 'acl/permissions', 'role_assigned', 'Assigned Role', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(145, 1, 'en', 'acl/permissions', 'create_role', 'Create New Role', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(146, 1, 'en', 'acl/permissions', 'role_name', 'Name', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(147, 1, 'en', 'acl/permissions', 'role_description', 'Description', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(148, 1, 'en', 'acl/permissions', 'is_staff', 'Is a Staff Member?', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(149, 1, 'en', 'acl/permissions', 'permission_flags', 'Permission Flags', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(150, 1, 'en', 'acl/permissions', 'cancel', 'Cancel', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(151, 1, 'en', 'acl/permissions', 'reset', 'Reset', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(152, 1, 'en', 'acl/permissions', 'save', 'Save', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(153, 1, 'en', 'acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(154, 1, 'en', 'acl/permissions', 'details', 'Details', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(155, 1, 'en', 'acl/permissions', 'duplicate', 'Duplicate', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(156, 1, 'en', 'acl/permissions', 'all', 'All Permissions', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(157, 1, 'en', 'acl/permissions', 'list_role', 'List Roles', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(158, 1, 'en', 'acl/permissions', 'created_on', 'Created On', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(159, 1, 'en', 'acl/permissions', 'created_by', 'Created By', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(160, 1, 'en', 'acl/permissions', 'actions', 'Actions', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(161, 1, 'en', 'acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(162, 1, 'en', 'acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(163, 1, 'en', 'acl/permissions', 'delete_global_role', 'Can not delete global role', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(164, 1, 'en', 'acl/permissions', 'delete_success', 'Delete role successfully', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(165, 1, 'en', 'acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(166, 1, 'en', 'acl/permissions', 'not_found', 'No role found!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(167, 1, 'en', 'acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(168, 1, 'en', 'acl/permissions', 'modified_success', 'Modified successfully', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(169, 1, 'en', 'acl/permissions', 'create_success', 'Create successfully', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(170, 1, 'en', 'acl/permissions', 'duplicated_success', 'Duplicated successfully', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(171, 1, 'en', 'acl/permissions', 'options', 'Options', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(172, 1, 'en', 'acl/permissions', 'access_denied_message', 'You are not allowed to use this module', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(173, 1, 'en', 'acl/permissions', 'roles', 'Roles', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(174, 1, 'en', 'acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(175, 1, 'en', 'acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(176, 1, 'en', 'acl/reminders', 'token', 'This password reset token is invalid.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(177, 1, 'en', 'acl/reminders', 'sent', 'Password reminder sent!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(178, 1, 'en', 'acl/reminders', 'reset', 'Password has been reset!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(179, 1, 'en', 'acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(180, 1, 'en', 'acl/users', 'no_select', 'Please select at least one record to take this action!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(181, 1, 'en', 'acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(182, 1, 'en', 'acl/users', 'update_success', 'Update status successfully!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(183, 1, 'en', 'acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(184, 1, 'en', 'acl/users', 'not_found', 'User not found', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(185, 1, 'en', 'acl/users', 'email_exist', 'That email address already belongs to an existing account', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(186, 1, 'en', 'acl/users', 'username_exist', 'That username address already belongs to an existing account', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(187, 1, 'en', 'acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(188, 1, 'en', 'acl/users', 'password_update_success', 'Password successfully changed', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(189, 1, 'en', 'acl/users', 'current_password_not_valid', 'Current password is not valid', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(190, 1, 'en', 'acl/users', 'invite_success', 'A new user account has been created for this person and an email sent to the address to complete the process.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(191, 1, 'en', 'acl/users', 'invite_exist', 'User has already been invited.  A reminder notice has been sent.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(192, 1, 'en', 'acl/users', 'invite_not_exist', 'Invite does not exist.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(193, 1, 'en', 'acl/users', 'accept_invite_success', 'Welcome new member!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(194, 1, 'en', 'acl/users', 'user_exist_in', 'User is already a member', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(195, 1, 'en', 'acl/users', 'email', 'Email', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(196, 1, 'en', 'acl/users', 'role', 'Role', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(197, 1, 'en', 'acl/users', 'username', 'Username', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(198, 1, 'en', 'acl/users', 'invite_user', 'Invite User', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(199, 1, 'en', 'acl/users', 'invite_new_member', 'Invite new member?', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(200, 1, 'en', 'acl/users', 'invite_description', 'Invite a new member to join this system.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(201, 1, 'en', 'acl/users', 'last_name', 'Last Name', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(202, 1, 'en', 'acl/users', 'first_name', 'First Name', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(203, 1, 'en', 'acl/users', 'message', 'Message', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(204, 1, 'en', 'acl/users', 'cancel_btn', 'Cancel', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(205, 1, 'en', 'acl/users', 'invite_btn', 'Invite', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(206, 1, 'en', 'acl/users', 'new_password', 'New Password', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(207, 1, 'en', 'acl/users', 'confirm_new_password', 'Confirm New Password', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(208, 1, 'en', 'acl/users', 'password', 'Password', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(209, 1, 'en', 'acl/users', 'save', 'Save', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(210, 1, 'en', 'acl/users', 'cannot_delete', 'User could not be deleted', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(211, 1, 'en', 'acl/users', 'deleted', 'User deleted', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(212, 1, 'en', 'acl/users', 'list', 'List Users', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(213, 1, 'en', 'acl/users', 'last_login', 'Last Login', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(214, 1, 'en', 'acl/users', 'error_update_profile_image', 'Error when update profile image', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(215, 1, 'en', 'acl/users', 'email_invite_template', '<h3>Hello :name</h3><p>You are invited to be a user in :site_title.</p><p>The sender included the following message with this invitation:</p><p>\":content\"</p><p>Please click this link to accept invite and join with us: <a href=\":link\">Join now</a></p>', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(216, 1, 'en', 'acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(217, 1, 'en', 'acl/users', 'change_profile_image', 'Change Profile Image', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(218, 1, 'en', 'acl/users', 'new_image', 'New Image', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(219, 1, 'en', 'acl/users', 'loading', 'Loading', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(220, 1, 'en', 'acl/users', 'close', 'Close', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(221, 1, 'en', 'acl/users', 'update', 'Update', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(222, 1, 'en', 'acl/users', 'read_image_failed', 'Failed to read the image file', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(223, 1, 'en', 'acl/users', 'users', 'Users', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(224, 1, 'en', 'acl/users', 'update_avatar_success', 'Update profile image successfully!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(225, 1, 'vi', 'acl/auth', 'login.username', 'Tên truy cập', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(226, 1, 'vi', 'acl/auth', 'login.password', 'Mật khẩu', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(227, 1, 'vi', 'acl/auth', 'login.title', 'Đăng nhập hệ thống', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(228, 1, 'vi', 'acl/auth', 'login.remember', 'Nhớ mật khẩu?', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(229, 1, 'vi', 'acl/auth', 'login.login', 'Đăng nhập', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(230, 1, 'vi', 'acl/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(231, 1, 'vi', 'acl/auth', 'login.success', 'Đăng nhập thành công!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(232, 1, 'vi', 'acl/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(233, 1, 'vi', 'acl/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(234, 1, 'vi', 'acl/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(235, 1, 'vi', 'acl/auth', 'login.logout_success', 'Đăng xuất thành công!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(236, 1, 'vi', 'acl/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(237, 1, 'vi', 'acl/auth', 'forgot_password.title', 'Quên mật khẩu', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(238, 1, 'vi', 'acl/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập tên đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(239, 1, 'vi', 'acl/auth', 'forgot_password.submit', 'Hoàn tất', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(240, 1, 'vi', 'acl/auth', 'reset.new_password', 'Mật khẩu mới', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(241, 1, 'vi', 'acl/auth', 'reset.repassword', 'Xác nhận mật khẩu mới', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(242, 1, 'vi', 'acl/auth', 'reset.title', 'Khôi phục mật khẩu', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(243, 1, 'vi', 'acl/auth', 'reset.update', 'Cập nhật', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(244, 1, 'vi', 'acl/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(245, 1, 'vi', 'acl/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(246, 1, 'vi', 'acl/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(247, 1, 'vi', 'acl/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(248, 1, 'vi', 'acl/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(249, 1, 'vi', 'acl/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(250, 1, 'vi', 'acl/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(251, 1, 'vi', 'acl/auth', 'reset.new-password', 'Mật khẩu mới', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(252, 1, 'vi', 'acl/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(253, 1, 'vi', 'acl/auth', 'email.invite.title', 'Mời tham gia hệ thống ', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(254, 1, 'vi', 'acl/auth', 'failed', 'Không thành công', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(255, 1, 'vi', 'acl/auth', 'repassword', 'Xác nhận mật khẩu', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(256, 1, 'vi', 'acl/auth', 'throttle', 'Throttle', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(257, 1, 'vi', 'acl/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(258, 1, 'vi', 'acl/auth', 'login_title', 'Đăng nhập với tài khoản hệ thống', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(259, 1, 'vi', 'acl/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(260, 1, 'vi', 'acl/auth', 'lost_your_password', 'Quên mật khẩu?', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(261, 1, 'vi', 'acl/auth', 'not_member', 'Chưa là thành viên?', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(262, 1, 'vi', 'acl/auth', 'register_now', 'Đăng ký ngay', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(263, 1, 'vi', 'acl/feature', 'update_success', 'Cập nhật tính năng thành công', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(264, 1, 'vi', 'acl/feature', 'could_not_load_user', 'Không thể tải tài khoản người dùng', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(265, 1, 'vi', 'acl/feature', 'could_not_load_file', 'Không thể tải tập tin của người dùng', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(266, 1, 'vi', 'acl/feature', 'could_not_load_relations', 'Không thể tải các mối quan hệ', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(267, 1, 'vi', 'acl/feature', 'file_attached', 'Tập tin đã được đính kèm', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(268, 1, 'vi', 'acl/feature', 'remove_success', 'Tập tin được gỡ bỏ thành công', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(269, 1, 'vi', 'acl/feature', 'folder_note_exist', 'Thư mục không tồn tại', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(270, 1, 'vi', 'acl/feature', 'cannot_read_folder', 'Không thể đọc thư mục này!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(271, 1, 'vi', 'acl/feature', 'all', 'Tất cả tính năng', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(272, 1, 'vi', 'acl/feature', 'edit', 'Sửa tính năng', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(273, 1, 'vi', 'acl/feature', 'cancel', 'Hủy bỏ', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(274, 1, 'vi', 'acl/feature', 'save', 'Lưu', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(275, 1, 'vi', 'acl/feature', 'options', 'Lựa chọn', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(276, 1, 'vi', 'acl/feature', 'details', 'Chi tiết', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(277, 1, 'vi', 'acl/feature', 'name', 'Tên', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(278, 1, 'vi', 'acl/feature', 'description', 'Mô tả', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(279, 1, 'vi', 'acl/feature', 'timezone', 'Múi giờ', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(280, 1, 'vi', 'acl/feature', 'apply_changes', 'Cập nhật thay đổi', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(281, 1, 'vi', 'acl/feature', 'folder_not_exist', 'Thư mục không tồn tại', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(282, 1, 'vi', 'acl/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(283, 1, 'vi', 'acl/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(284, 1, 'vi', 'acl/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(285, 1, 'vi', 'acl/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(286, 1, 'vi', 'acl/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(287, 1, 'vi', 'acl/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(288, 1, 'vi', 'acl/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(289, 1, 'vi', 'acl/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(290, 1, 'vi', 'acl/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(291, 1, 'vi', 'acl/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(292, 1, 'vi', 'acl/permissions', 'list', 'Danh sách phân quyền', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(293, 1, 'vi', 'acl/permissions', 'name', 'Tên', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(294, 1, 'vi', 'acl/permissions', 'current_role', 'Quyền hiện tại', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(295, 1, 'vi', 'acl/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(296, 1, 'vi', 'acl/permissions', 'role_assigned', 'Quyền đã được gán', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(297, 1, 'vi', 'acl/permissions', 'create_role', 'Tạo quyền mới', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(298, 1, 'vi', 'acl/permissions', 'role_name', 'Tên', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(299, 1, 'vi', 'acl/permissions', 'role_description', 'Mô tả', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(300, 1, 'vi', 'acl/permissions', 'is_staff', 'Là người quản lý?', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(301, 1, 'vi', 'acl/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(302, 1, 'vi', 'acl/permissions', 'cancel', 'Hủy bỏ', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(303, 1, 'vi', 'acl/permissions', 'reset', 'Làm lại', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(304, 1, 'vi', 'acl/permissions', 'save', 'Lưu', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(305, 1, 'vi', 'acl/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút \"Nhân bản\" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(306, 1, 'vi', 'acl/permissions', 'details', 'Chi tiết', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(307, 1, 'vi', 'acl/permissions', 'duplicate', 'Nhân bản', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(308, 1, 'vi', 'acl/permissions', 'all', 'Tất cả phân quyền', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(309, 1, 'vi', 'acl/permissions', 'list_role', 'Danh sách quyền', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(310, 1, 'vi', 'acl/permissions', 'created_on', 'Ngày tạo', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(311, 1, 'vi', 'acl/permissions', 'created_by', 'Được tạo bởi', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(312, 1, 'vi', 'acl/permissions', 'actions', 'Tác vụ', '2017-08-14 17:38:10', '2017-08-14 17:38:10'),
(313, 1, 'vi', 'acl/permissions', 'create_success', 'Tạo thành công!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(314, 1, 'vi', 'acl/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(315, 1, 'vi', 'acl/permissions', 'delete_success', 'Xóa quyền thành công', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(316, 1, 'vi', 'acl/permissions', 'duplicated_success', 'Nhân bản thành công', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(317, 1, 'vi', 'acl/permissions', 'modified_success', 'Sửa thành công', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(318, 1, 'vi', 'acl/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(319, 1, 'vi', 'acl/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(320, 1, 'vi', 'acl/permissions', 'options', 'Tùy chọn', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(321, 1, 'vi', 'acl/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(322, 1, 'vi', 'acl/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(323, 1, 'vi', 'acl/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(324, 1, 'vi', 'acl/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(325, 1, 'vi', 'acl/permissions', 'roles', 'Quyền', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(326, 1, 'vi', 'acl/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(327, 1, 'vi', 'acl/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(328, 1, 'vi', 'acl/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(329, 1, 'vi', 'acl/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(330, 1, 'vi', 'acl/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(331, 1, 'vi', 'acl/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(332, 1, 'vi', 'acl/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(333, 1, 'vi', 'acl/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(334, 1, 'vi', 'acl/users', 'update_success', 'Cập nhật trạng thái thành công!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(335, 1, 'vi', 'acl/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(336, 1, 'vi', 'acl/users', 'not_found', 'Không tìm thấy người dùng', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(337, 1, 'vi', 'acl/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(338, 1, 'vi', 'acl/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(339, 1, 'vi', 'acl/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(340, 1, 'vi', 'acl/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(341, 1, 'vi', 'acl/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(342, 1, 'vi', 'acl/users', 'invite_success', 'Một tài khoản đã được tạo cho người này, email xác nhận đã được gửi để hoàn thành thao tác mời tham gia hệ thống', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(343, 1, 'vi', 'acl/users', 'invite_exist', 'Người dùng này đã được mời.  Một thông báo nhắc nhở đã được gửi.', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(344, 1, 'vi', 'acl/users', 'invite_not_exist', 'Mã mời không tồn tại.', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(345, 1, 'vi', 'acl/users', 'accept_invite_success', 'Chào mừng thành viên mới!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(346, 1, 'vi', 'acl/users', 'user_exist_in', 'Người dùng đã là thành viên', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(347, 1, 'vi', 'acl/users', 'email', 'Email', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(348, 1, 'vi', 'acl/users', 'username', 'Tên đăng nhập', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(349, 1, 'vi', 'acl/users', 'role', 'Phân quyền', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(350, 1, 'vi', 'acl/users', 'invite_user', 'Mời tham gia hệ thống', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(351, 1, 'vi', 'acl/users', 'invite_new_member', 'Mời thành viên mới?', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(352, 1, 'vi', 'acl/users', 'invite_description', 'Mời người dùng mới tham gia nhóm này.', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(353, 1, 'vi', 'acl/users', 'first_name', 'Họ', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(354, 1, 'vi', 'acl/users', 'last_name', 'Tên', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(355, 1, 'vi', 'acl/users', 'message', 'Thông điệp', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(356, 1, 'vi', 'acl/users', 'invite_btn', 'Mời', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(357, 1, 'vi', 'acl/users', 'cancel_btn', 'Hủy bỏ', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(358, 1, 'vi', 'acl/users', 'password', 'Mật khẩu', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(359, 1, 'vi', 'acl/users', 'new_password', 'Mật khẩu mới', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(360, 1, 'vi', 'acl/users', 'save', 'Lưu', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(361, 1, 'vi', 'acl/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(362, 1, 'vi', 'acl/users', 'deleted', 'Xóa thành viên thành công', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(363, 1, 'vi', 'acl/users', 'cannot_delete', 'Không thể xóa thành viên', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(364, 1, 'vi', 'acl/users', 'can_not_get_list_roles', 'Không thể lấy danh sách phân quyền trong nhóm này.', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(365, 1, 'vi', 'acl/users', 'list', 'Danh sách thành viên', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(366, 1, 'vi', 'acl/users', 'last_login', 'Lần cuối đăng nhập', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(367, 1, 'vi', 'acl/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(368, 1, 'vi', 'acl/users', 'email_invite_template', '<h3>Xin chào :name</h3><p>Bạn được mời tham gia vào hệ thống :site_title, người gửi đã kèm theo nội dung sau:</p><p>Người mời bạn tham gia đã gửi kèm thông điệp bên dưới:</p><p>\":content\"</p><p>Hãy nhấn vào liên kết bên dưới để xác nhận tham gia vào hệ thống: <a href=\":link\">Tham gia ngay</a></p>', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(369, 1, 'vi', 'acl/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=\":link\">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(370, 1, 'vi', 'acl/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(371, 1, 'vi', 'acl/users', 'new_image', 'Ảnh mới', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(372, 1, 'vi', 'acl/users', 'loading', 'Đang tải', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(373, 1, 'vi', 'acl/users', 'close', 'Đóng', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(374, 1, 'vi', 'acl/users', 'update', 'Cập nhật', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(375, 1, 'vi', 'acl/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(376, 1, 'vi', 'acl/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(377, 1, 'vi', 'acl/users', 'users', 'Thành viên', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(378, 1, 'en', 'analytics/analytics', 'sessions', 'Sessions', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(379, 1, 'en', 'analytics/analytics', 'visitors', 'Visitors', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(380, 1, 'en', 'analytics/analytics', 'pageviews', 'Pageviews', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(381, 1, 'en', 'analytics/analytics', 'bounce_rate', 'Bounce Rate', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(382, 1, 'en', 'analytics/analytics', 'page_session', 'Pages/Session', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(383, 1, 'en', 'analytics/analytics', 'avg_duration', 'Avg. Duration', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(384, 1, 'en', 'analytics/analytics', 'percent_new_session', 'Percent new session', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(385, 1, 'en', 'analytics/analytics', 'new_users', 'New visitors', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(386, 1, 'en', 'analytics/analytics', 'visits', 'visits', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(387, 1, 'en', 'analytics/analytics', 'views', 'views', '2017-08-14 17:38:11', '2017-08-14 17:38:11');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(388, 1, 'en', 'analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"http://docs.botble.com/v/:version/analytics\" target=\"_blank\">http://docs.botble.com/v/:version/analytics</a>', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(389, 1, 'en', 'analytics/analytics', 'credential_json_not_found_at', 'Could not find a credentials file at :path. The document here: <a href=\"http://docs.botble.com/v/:version/analytics\" target=\"_blank\">http://docs.botble.com/v/:version/analytics</a>', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(390, 1, 'en', 'analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(391, 1, 'en', 'analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings for the key <code>ANALYTICS_VIEW_ID</code>. <br /> You also need JSON credential file, it should be stored in <code>/storage/app/analytics/config.json</code>. <br /> The document here: <a href=\"http://docs.botble.com/v/:version/analytics\" target=\"_blank\">http://docs.botble.com/v/:version/analytics</a>', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(392, 1, 'vi', 'analytics/analytics', 'avg_duration', 'Trung bình', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(393, 1, 'vi', 'analytics/analytics', 'bounce_rate', 'Tỉ lệ thoát', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(394, 1, 'vi', 'analytics/analytics', 'page_session', 'Trang/Phiên', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(395, 1, 'vi', 'analytics/analytics', 'pageviews', 'Lượt xem', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(396, 1, 'vi', 'analytics/analytics', 'sessions', 'Phiên', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(397, 1, 'vi', 'analytics/analytics', 'views', 'lượt xem', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(398, 1, 'vi', 'analytics/analytics', 'visitors', 'Người truy cập', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(399, 1, 'vi', 'analytics/analytics', 'visits', 'lượt ghé thăm', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(400, 1, 'en', 'audit-logs/history', 'created', 'created', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(401, 1, 'en', 'audit-logs/history', 'updated', 'updated', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(402, 1, 'en', 'audit-logs/history', 'deleted', 'deleted', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(403, 1, 'en', 'audit-logs/history', 'logged in', 'logged in', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(404, 1, 'en', 'audit-logs/history', 'logged out', 'logged out', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(405, 1, 'en', 'audit-logs/history', 'changed password', 'changed password', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(406, 1, 'en', 'audit-logs/history', 'updated profile', 'updated profile', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(407, 1, 'en', 'audit-logs/history', 'attached', 'attached', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(408, 1, 'en', 'audit-logs/history', 'shared', 'shared', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(409, 1, 'en', 'audit-logs/history', 'to the system', 'to the system', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(410, 1, 'en', 'audit-logs/history', 'of the system', 'of the system', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(411, 1, 'en', 'audit-logs/history', 'menu', 'menu', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(412, 1, 'en', 'audit-logs/history', 'post', 'post', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(413, 1, 'en', 'audit-logs/history', 'page', 'page', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(414, 1, 'en', 'audit-logs/history', 'category', 'category', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(415, 1, 'en', 'audit-logs/history', 'tag', 'tag', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(416, 1, 'en', 'audit-logs/history', 'user', 'user', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(417, 1, 'en', 'audit-logs/history', 'contact', 'contact', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(418, 1, 'en', 'audit-logs/history', 'backup', 'backup', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(419, 1, 'en', 'audit-logs/history', 'custom-field', 'custom field', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(420, 1, 'vi', 'audit-logs/history', 'created', ' đã tạo', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(421, 1, 'vi', 'audit-logs/history', 'updated', ' đã cập nhật', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(422, 1, 'vi', 'audit-logs/history', 'deleted', ' đã xóa', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(423, 1, 'vi', 'audit-logs/history', 'attached', 'đính kèm', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(424, 1, 'vi', 'audit-logs/history', 'backup', 'sao lưu', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(425, 1, 'vi', 'audit-logs/history', 'category', 'danh mục', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(426, 1, 'vi', 'audit-logs/history', 'changed password', 'thay đổi mật khẩu', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(427, 1, 'vi', 'audit-logs/history', 'contact', 'liên hệ', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(428, 1, 'vi', 'audit-logs/history', 'custom-field', 'khung mở rộng', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(429, 1, 'vi', 'audit-logs/history', 'logged in', 'đăng nhập', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(430, 1, 'vi', 'audit-logs/history', 'logged out', 'đăng xuất', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(431, 1, 'vi', 'audit-logs/history', 'menu', 'trình đơn', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(432, 1, 'vi', 'audit-logs/history', 'of the system', 'khỏi hệ thống', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(433, 1, 'vi', 'audit-logs/history', 'page', 'trang', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(434, 1, 'vi', 'audit-logs/history', 'post', 'bài viết', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(435, 1, 'vi', 'audit-logs/history', 'shared', 'đã chia sẻ', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(436, 1, 'vi', 'audit-logs/history', 'tag', 'thẻ', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(437, 1, 'vi', 'audit-logs/history', 'to the system', 'vào hệ thống', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(438, 1, 'vi', 'audit-logs/history', 'updated profile', 'cập nhật tài khoản', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(439, 1, 'vi', 'audit-logs/history', 'user', 'thành viên', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(440, 1, 'en', 'backup/backup', 'name', 'Backup', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(441, 1, 'en', 'backup/backup', 'backup_description', 'Backup database and uploads folder.', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(442, 1, 'en', 'backup/backup', 'create_backup_success', 'Created backup successfully!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(443, 1, 'en', 'backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(444, 1, 'en', 'backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(445, 1, 'en', 'backup/backup', 'generate_btn', 'Generate backup', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(446, 1, 'en', 'backup/backup', 'create', 'Create backup', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(447, 1, 'en', 'backup/backup', 'restore', 'Restore backup', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(448, 1, 'en', 'backup/backup', 'create_btn', 'Create', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(449, 1, 'en', 'backup/backup', 'restore_btn', 'Restore', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(450, 1, 'en', 'backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(451, 1, 'en', 'backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(452, 1, 'en', 'backup/backup', 'download_database', 'Download backup of database', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(453, 1, 'en', 'backup/backup', 'restore_tooltip', 'Restore this backup', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(454, 1, 'en', 'backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(455, 1, 'en', 'backup/backup', 'menu_name', 'Backups', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(456, 1, 'vi', 'backup/backup', 'backup_description', 'Sao lưu cơ sở dữ liệu và thư mục /uploads', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(457, 1, 'vi', 'backup/backup', 'create', 'Tạo bản sao lưu', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(458, 1, 'vi', 'backup/backup', 'create_backup_success', 'Tạo bản sao lưu thành công!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(459, 1, 'vi', 'backup/backup', 'create_btn', 'Tạo', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(460, 1, 'vi', 'backup/backup', 'delete_backup_success', 'Xóa bản sao lưu thành công!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(461, 1, 'vi', 'backup/backup', 'generate_btn', 'Tạo sao lưu', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(462, 1, 'vi', 'backup/backup', 'name', 'Sao lưu', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(463, 1, 'vi', 'backup/backup', 'restore', 'Khôi phục bản sao lưu', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(464, 1, 'vi', 'backup/backup', 'restore_backup_success', 'Khôi phục bản sao lưu thành công', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(465, 1, 'vi', 'backup/backup', 'restore_btn', 'Khôi phục', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(466, 1, 'vi', 'backup/backup', 'restore_confirm_msg', 'Bạn có chắc chắn muốn khôi phục hệ thống về thời điểm tạo bản sao lưu này?', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(467, 1, 'vi', 'backup/backup', 'restore_tooltip', 'Khôi phục bản sao lưu này', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(468, 1, 'vi', 'backup/backup', 'download_database', 'Tải về bản sao lưu CSDL', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(469, 1, 'vi', 'backup/backup', 'download_uploads_folder', 'Tải về bản sao lưu thư mục uploads', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(470, 1, 'vi', 'backup/backup', 'menu_name', 'Sao lưu', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(471, 1, 'en', 'bases/errors', '401_title', 'Permission Denied', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(472, 1, 'en', 'bases/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(473, 1, 'en', 'bases/errors', '404_title', 'Page could not be found', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(474, 1, 'en', 'bases/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(475, 1, 'en', 'bases/errors', '500_title', 'Page could not be loaded', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(476, 1, 'en', 'bases/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(477, 1, 'en', 'bases/errors', 'reasons', 'This may have occurred because of several reasons', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(478, 1, 'en', 'bases/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the dashboard by <a href=\"http://botble.dev/admin\">clicking here</a>.', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(479, 1, 'en', 'bases/forms', 'choose_image', 'Choose image', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(480, 1, 'en', 'bases/forms', 'actions', 'Actions', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(481, 1, 'en', 'bases/forms', 'save', 'Save', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(482, 1, 'en', 'bases/forms', 'save_and_continue', 'Save & Edit', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(483, 1, 'en', 'bases/forms', 'image', 'Image', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(484, 1, 'en', 'bases/forms', 'image_placeholder', 'Insert path of image or click upload button', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(485, 1, 'en', 'bases/forms', 'create', 'Create', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(486, 1, 'en', 'bases/forms', 'edit', 'Edit', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(487, 1, 'en', 'bases/forms', 'permalink', 'Permalink', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(488, 1, 'en', 'bases/forms', 'ok', 'OK', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(489, 1, 'en', 'bases/forms', 'cancel', 'Cancel', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(490, 1, 'en', 'bases/forms', 'character_remain', 'character(s) remain', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(491, 1, 'en', 'bases/forms', 'template', 'Template', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(492, 1, 'en', 'bases/forms', 'choose_file', 'Choose file', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(493, 1, 'en', 'bases/forms', 'file', 'File', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(494, 1, 'en', 'bases/forms', 'content', 'Content', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(495, 1, 'en', 'bases/forms', 'description', 'Description', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(496, 1, 'en', 'bases/forms', 'name', 'Name', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(497, 1, 'en', 'bases/forms', 'slug', 'Slug', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(498, 1, 'en', 'bases/forms', 'title', 'Title', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(499, 1, 'en', 'bases/forms', 'value', 'Value', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(500, 1, 'en', 'bases/forms', 'name_placeholder', 'Name', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(501, 1, 'en', 'bases/forms', 'alias_placeholder', 'Alias', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(502, 1, 'en', 'bases/forms', 'description_placeholder', 'Short description', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(503, 1, 'en', 'bases/forms', 'parent', 'Parent', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(504, 1, 'en', 'bases/forms', 'icon', 'Icon', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(505, 1, 'en', 'bases/forms', 'icon_placeholder', 'Ex: fa fa-home', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(506, 1, 'en', 'bases/forms', 'order_by', 'Order by', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(507, 1, 'en', 'bases/forms', 'order_by_placeholder', 'Order by', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(508, 1, 'en', 'bases/forms', 'featured', 'Is featured?', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(509, 1, 'en', 'bases/forms', 'is_default', 'Is default?', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(510, 1, 'en', 'bases/forms', 'update', 'Update', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(511, 1, 'en', 'bases/forms', 'publish', 'Publish', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(512, 1, 'en', 'bases/forms', 'remove_image', 'Remove image', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(513, 1, 'en', 'bases/forms', 'order', 'Order', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(514, 1, 'en', 'bases/forms', 'alias', 'Alias', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(515, 1, 'en', 'bases/forms', 'basic_information', 'Basic information', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(516, 1, 'en', 'bases/forms', 'short_code', 'Shortcode', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(517, 1, 'en', 'bases/forms', 'add_short_code', 'Add a shortcode', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(518, 1, 'en', 'bases/forms', 'add', 'Add', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(519, 1, 'en', 'bases/forms', 'link', 'Link', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(520, 1, 'en', 'bases/layouts', 'platform_admin', 'Platform Administration', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(521, 1, 'en', 'bases/layouts', 'dashboard', 'Dashboard', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(522, 1, 'en', 'bases/layouts', 'appearance', 'Appearance', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(523, 1, 'en', 'bases/layouts', 'menu', 'Menu', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(524, 1, 'en', 'bases/layouts', 'widgets', 'Widgets', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(525, 1, 'en', 'bases/layouts', 'theme_options', 'Theme options', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(526, 1, 'en', 'bases/layouts', 'plugins', 'Plugins', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(527, 1, 'en', 'bases/layouts', 'settings', 'Settings', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(528, 1, 'en', 'bases/layouts', 'setting_general', 'General', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(529, 1, 'en', 'bases/layouts', 'feature_access_control', 'Feature Access Control', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(530, 1, 'en', 'bases/layouts', 'role_permission', 'Roles and Permissions', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(531, 1, 'en', 'bases/layouts', 'user_management', 'User Management', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(532, 1, 'en', 'bases/layouts', 'super_user_management', 'Super User Management', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(533, 1, 'en', 'bases/layouts', 'system_information', 'System information', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(534, 1, 'en', 'bases/layouts', 'theme', 'Theme', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(535, 1, 'en', 'bases/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(536, 1, 'en', 'bases/layouts', 'profile', 'Profile', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(537, 1, 'en', 'bases/layouts', 'logout', 'Logout', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(538, 1, 'en', 'bases/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(539, 1, 'en', 'bases/layouts', 'home', 'Home', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(540, 1, 'en', 'bases/layouts', 'search', 'Search', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(541, 1, 'en', 'bases/layouts', 'add_new', 'Add new', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(542, 1, 'en', 'bases/layouts', 'n_a', 'N/A', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(543, 1, 'en', 'bases/layouts', 'page_loaded_time', 'Page loaded in', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(544, 1, 'en', 'bases/layouts', 'view_website', 'View website', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(545, 1, 'en', 'bases/mail', 'send-fail', 'Send email failed', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(546, 1, 'en', 'bases/mail', 'happy_birthday', 'Happy birthday!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(547, 1, 'en', 'bases/notices', 'create_success_message', 'Create entry successfully', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(548, 1, 'en', 'bases/notices', 'update_success_message', 'Update entry successfully', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(549, 1, 'en', 'bases/notices', 'delete_success_message', 'Deleted successfully', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(550, 1, 'en', 'bases/notices', 'hide_success_message', 'Hide successfully', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(551, 1, 'en', 'bases/notices', 'unhide_success_message', 'Unhide successfully', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(552, 1, 'en', 'bases/notices', 'success_header', 'Success!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(553, 1, 'en', 'bases/notices', 'error_header', 'Error!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(554, 1, 'en', 'bases/notices', 'cannot_delete', 'Can not delete this record!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(555, 1, 'en', 'bases/notices', 'no_select', 'Please select at least one record to perform this action!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(556, 1, 'en', 'bases/notices', 'deleted', 'Deleted successfully!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(557, 1, 'en', 'bases/notices', 'processing_request', 'We are processing your request.', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(558, 1, 'en', 'bases/notices', 'error', 'Error', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(559, 1, 'en', 'bases/notices', 'success', 'Success', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(560, 1, 'en', 'bases/system', 'no_select', 'Please select at least one record to take this action!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(561, 1, 'en', 'bases/system', 'cannot_find_user', 'Unable to find specified user', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(562, 1, 'en', 'bases/system', 'supper_revoked', 'Super user access revoked', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(563, 1, 'en', 'bases/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(564, 1, 'en', 'bases/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(565, 1, 'en', 'bases/system', 'supper_granted', 'Super user access granted', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(566, 1, 'en', 'bases/system', 'delete_log_success', 'Delete log file successfully!', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(567, 1, 'en', 'bases/system', 'get_member_success', 'Member list retrieved successfully', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(568, 1, 'en', 'bases/system', 'error_occur', 'The following errors occurred', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(569, 1, 'en', 'bases/system', 'user_management', 'User Management', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(570, 1, 'en', 'bases/system', 'user_management_description', 'Manage users.', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(571, 1, 'en', 'bases/system', 'role_and_permission', 'Roles and Permissions', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(572, 1, 'en', 'bases/system', 'role_and_permission_description', 'Manage the available roles.', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(573, 1, 'en', 'bases/system', 'user.list_super', 'List Super Users', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(574, 1, 'en', 'bases/system', 'user.email', 'Email', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(575, 1, 'en', 'bases/system', 'user.last_login', 'Last Login', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(576, 1, 'en', 'bases/system', 'user.username', 'Username', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(577, 1, 'en', 'bases/system', 'user.add_user', 'Add Super User', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(578, 1, 'en', 'bases/system', 'user.cancel', 'Cancel', '2017-08-14 17:38:11', '2017-08-14 17:38:11'),
(579, 1, 'en', 'bases/system', 'user.create', 'Create', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(580, 1, 'en', 'bases/system', 'options.features', 'Feature Access Control', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(581, 1, 'en', 'bases/system', 'options.feature_description', 'Manage the available.', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(582, 1, 'en', 'bases/system', 'options.manage_super', 'Super User Management', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(583, 1, 'en', 'bases/system', 'options.manage_super_description', 'Add/remove super users.', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(584, 1, 'en', 'bases/system', 'options.info', 'System information', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(585, 1, 'en', 'bases/system', 'options.info_description', 'All information about current system configuration.', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(586, 1, 'en', 'bases/system', 'info.title', 'System information', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(587, 1, 'en', 'bases/system', 'info.cache', 'Cache', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(588, 1, 'en', 'bases/system', 'info.locale', 'Active locale', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(589, 1, 'en', 'bases/system', 'info.environment', 'Environment', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(590, 1, 'en', 'bases/system', 'enabled', 'Enabled', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(591, 1, 'en', 'bases/system', 'disabled', 'Disabled', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(592, 1, 'en', 'bases/system', 'activated', 'Activated', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(593, 1, 'en', 'bases/system', 'activate', 'Activate', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(594, 1, 'en', 'bases/system', 'deactivate', 'Deactivate', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(595, 1, 'en', 'bases/system', 'author', 'By', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(596, 1, 'en', 'bases/system', 'update_plugin_status_success', 'Update plugin successfully', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(597, 1, 'en', 'bases/system', 'disabled_in_demo_mode', 'You can not do it in demo mode!', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(598, 1, 'en', 'bases/system', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(599, 1, 'en', 'bases/system', 'version', 'Version', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(600, 1, 'en', 'bases/system', 'report_description', 'Please share this information for troubleshooting', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(601, 1, 'en', 'bases/system', 'get_system_report', 'Get System Report', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(602, 1, 'en', 'bases/system', 'system_environment', 'System Environment', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(603, 1, 'en', 'bases/system', 'framework_version', 'Framework Version', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(604, 1, 'en', 'bases/system', 'timezone', 'Timezone', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(605, 1, 'en', 'bases/system', 'debug_mode', 'Debug Mode', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(606, 1, 'en', 'bases/system', 'storage_dir_writable', 'Storage Dir Writable', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(607, 1, 'en', 'bases/system', 'cache_dir_writable', 'Cache Dir Writable', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(608, 1, 'en', 'bases/system', 'app_size', 'App Size', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(609, 1, 'en', 'bases/system', 'server_environment', 'Server Environment', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(610, 1, 'en', 'bases/system', 'php_version', 'PHP Version', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(611, 1, 'en', 'bases/system', 'server_software', 'Server Software', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(612, 1, 'en', 'bases/system', 'server_os', 'Server OS', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(613, 1, 'en', 'bases/system', 'database', 'Database', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(614, 1, 'en', 'bases/system', 'ssl_installed', 'SSL Installed', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(615, 1, 'en', 'bases/system', 'cache_driver', 'Cache Driver', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(616, 1, 'en', 'bases/system', 'session_driver', 'Session Driver', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(617, 1, 'en', 'bases/system', 'mbstring_ext', 'Mbstring Ext', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(618, 1, 'en', 'bases/system', 'openssl_ext', 'OpenSSL Ext', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(619, 1, 'en', 'bases/system', 'pdo_ext', 'PDO Ext', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(620, 1, 'en', 'bases/system', 'curl_ext', 'CURL Ext', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(621, 1, 'en', 'bases/system', 'exif_ext', 'Exif Ext', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(622, 1, 'en', 'bases/system', 'file_info_ext', 'File info Ext', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(623, 1, 'en', 'bases/system', 'tokenizer_ext', 'Tokenizer Ext', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(624, 1, 'en', 'bases/system', 'extra_stats', 'Extra Stats', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(625, 1, 'en', 'bases/system', 'installed_packages', 'Installed Packages and their version numbers', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(626, 1, 'en', 'bases/system', 'extra_information', 'Extra Information', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(627, 1, 'en', 'bases/system', 'copy_report', 'Copy Report', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(628, 1, 'en', 'bases/system', 'package_name', 'Package Name', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(629, 1, 'en', 'bases/system', 'dependency_name', 'Dependency Name', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(630, 1, 'en', 'bases/system', 'plugins', 'Plugins', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(631, 1, 'en', 'bases/tables', 'filter_enabled', 'Advanced search filters enabled.', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(632, 1, 'en', 'bases/tables', 'id', 'ID', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(633, 1, 'en', 'bases/tables', 'name', 'Name', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(634, 1, 'en', 'bases/tables', 'slug', 'Slug', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(635, 1, 'en', 'bases/tables', 'title', 'Title', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(636, 1, 'en', 'bases/tables', 'order_by', 'Order By', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(637, 1, 'en', 'bases/tables', 'order', 'Order', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(638, 1, 'en', 'bases/tables', 'status', 'Status', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(639, 1, 'en', 'bases/tables', 'created_at', 'Created At', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(640, 1, 'en', 'bases/tables', 'updated_at', 'Updated At', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(641, 1, 'en', 'bases/tables', 'description', 'Description', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(642, 1, 'en', 'bases/tables', 'operations', 'Operations', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(643, 1, 'en', 'bases/tables', 'loading_data', 'Loading data from server', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(644, 1, 'en', 'bases/tables', 'url', 'URL', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(645, 1, 'en', 'bases/tables', 'author', 'Author', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(646, 1, 'en', 'bases/tables', 'notes', 'Notes', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(647, 1, 'en', 'bases/tables', 'column', 'Column', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(648, 1, 'en', 'bases/tables', 'origin', 'Origin', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(649, 1, 'en', 'bases/tables', 'after_change', 'After changes', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(650, 1, 'en', 'bases/tables', 'views', 'Views', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(651, 1, 'en', 'bases/tables', 'browser', 'Browser', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(652, 1, 'en', 'bases/tables', 'session', 'Session', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(653, 1, 'en', 'bases/tables', 'activated', 'activated', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(654, 1, 'en', 'bases/tables', 'deactivated', 'deactivated', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(655, 1, 'en', 'bases/tables', 'is_featured', 'Is featured', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(656, 1, 'en', 'bases/tables', 'edit', 'Edit', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(657, 1, 'en', 'bases/tables', 'delete', 'Delete', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(658, 1, 'en', 'bases/tables', 'restore', 'Restore', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(659, 1, 'en', 'bases/tables', 'activate', 'Activate', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(660, 1, 'en', 'bases/tables', 'deactivate', 'Deactivate', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(661, 1, 'en', 'bases/tables', 'filter', 'Type to filter...', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(662, 1, 'en', 'bases/tables', 'excel', 'Excel', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(663, 1, 'en', 'bases/tables', 'export', 'Export', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(664, 1, 'en', 'bases/tables', 'csv', 'CSV', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(665, 1, 'en', 'bases/tables', 'pdf', 'PDF', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(666, 1, 'en', 'bases/tables', 'print', 'Print', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(667, 1, 'en', 'bases/tables', 'reset', 'Reset', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(668, 1, 'en', 'bases/tables', 'reload', 'Reload', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(669, 1, 'en', 'bases/tables', 'display', 'Display', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(670, 1, 'en', 'bases/tables', 'all', 'All', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(671, 1, 'en', 'bases/tables', 'add_new', 'Add New', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(672, 1, 'en', 'bases/tables', 'action', 'Actions', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(673, 1, 'en', 'bases/tables', 'delete_entry', 'Delete Entry', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(674, 1, 'en', 'bases/tables', 'view', 'View Detail', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(675, 1, 'en', 'bases/tables', 'save', 'Save', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(676, 1, 'en', 'bases/tables', 'show_from', 'Show from', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(677, 1, 'en', 'bases/tables', 'to', 'to', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(678, 1, 'en', 'bases/tables', 'in', 'in', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(679, 1, 'en', 'bases/tables', 'records', 'records', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(680, 1, 'en', 'bases/tables', 'no_data', 'No data to display', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(681, 1, 'en', 'bases/tables', 'no_record', 'No record', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(682, 1, 'en', 'bases/tables', 'filtered_from', 'filtered from', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(683, 1, 'en', 'bases/tables', 'loading', 'Loading data from server', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(684, 1, 'en', 'bases/tables', 'confirm_delete', 'Confirm delete', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(685, 1, 'en', 'bases/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(686, 1, 'en', 'bases/tables', 'cancel', 'Cancel', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(687, 1, 'en', 'bases/tables', 'template', 'Template', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(688, 1, 'en', 'bases/tables', 'email', 'Email', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(689, 1, 'en', 'bases/tables', 'last_login', 'Last login', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(690, 1, 'en', 'bases/tables', 'shortcode', 'Shortcode', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(691, 1, 'en', 'bases/tables', 'image', 'Image', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(692, 1, 'en', 'bases/tabs', 'detail', 'Detail', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(693, 1, 'en', 'bases/tabs', 'file', 'Files', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(694, 1, 'en', 'bases/tabs', 'record_note', 'Record Note', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(695, 1, 'en', 'bases/tabs', 'revision', 'Revision History', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(696, 1, 'vi', 'bases/errors', '401_title', 'Bạn không có quyền truy cập trang này', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(697, 1, 'vi', 'bases/errors', '401_msg', '<li>Bạn không được cấp quyền truy cập bởi quản trị viên.</li>\n	                <li>Bạn sử dụng sai loại tài khoản.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(698, 1, 'vi', 'bases/errors', '404_title', 'Không tìm thấy trang yêu cầu', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(699, 1, 'vi', 'bases/errors', '404_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(700, 1, 'vi', 'bases/errors', '500_title', 'Không thể tải trang', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(701, 1, 'vi', 'bases/errors', '500_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(702, 1, 'vi', 'bases/errors', 'reasons', 'Điều này có thể xảy ra vì nhiều lý do.', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(703, 1, 'vi', 'bases/errors', 'try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href=\"http://botble.dev/admin\"> nhấn vào đây </a>.', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(704, 1, 'vi', 'bases/errors', 'home_try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href=\"http://botble.dev\"> nhấn vào đây </a>.', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(705, 1, 'vi', 'bases/forms', 'choose_image', 'Chọn ảnh', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(706, 1, 'vi', 'bases/forms', 'actions', 'Tác vụ', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(707, 1, 'vi', 'bases/forms', 'save', 'Lưu', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(708, 1, 'vi', 'bases/forms', 'save_and_continue', 'Lưu & chỉnh sửa', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(709, 1, 'vi', 'bases/forms', 'image', 'Hình ảnh', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(710, 1, 'vi', 'bases/forms', 'image_placeholder', 'Chèn đường dẫn hình ảnh hoặc nhấn nút để chọn hình', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(711, 1, 'vi', 'bases/forms', 'create', 'Tạo mới', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(712, 1, 'vi', 'bases/forms', 'edit', 'Sửa', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(713, 1, 'vi', 'bases/forms', 'permalink', 'Đường dẫn', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(714, 1, 'vi', 'bases/forms', 'ok', 'OK', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(715, 1, 'vi', 'bases/forms', 'cancel', 'Hủy bỏ', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(716, 1, 'vi', 'bases/forms', 'character_remain', 'kí tự còn lại', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(717, 1, 'vi', 'bases/forms', 'template', 'Template', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(718, 1, 'vi', 'bases/forms', 'choose_file', 'Chọn tập tin', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(719, 1, 'vi', 'bases/forms', 'file', 'Tập tin', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(720, 1, 'vi', 'bases/forms', 'content', 'Nội dung', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(721, 1, 'vi', 'bases/forms', 'description', 'Mô tả', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(722, 1, 'vi', 'bases/forms', 'name', 'Tên', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(723, 1, 'vi', 'bases/forms', 'name_placeholder', 'Nhập tên', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(724, 1, 'vi', 'bases/forms', 'description_placeholder', 'Mô tả ngắn', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(725, 1, 'vi', 'bases/forms', 'parent', 'Cha', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(726, 1, 'vi', 'bases/forms', 'icon', 'Biểu tượng', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(727, 1, 'vi', 'bases/forms', 'order_by', 'Sắp xếp', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(728, 1, 'vi', 'bases/forms', 'order_by_placeholder', 'Sắp xếp', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(729, 1, 'vi', 'bases/forms', 'slug', 'Slug', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(730, 1, 'vi', 'bases/forms', 'featured', 'Nổi bật?', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(731, 1, 'vi', 'bases/forms', 'is_default', 'Mặc định?', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(732, 1, 'vi', 'bases/forms', 'icon_placeholder', 'Ví dụ: fa fa-home', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(733, 1, 'vi', 'bases/forms', 'update', 'Cập nhật', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(734, 1, 'vi', 'bases/forms', 'publish', 'Xuất bản', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(735, 1, 'vi', 'bases/forms', 'remove_image', 'Xoá ảnh', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(736, 1, 'vi', 'bases/layouts', 'platform_admin', 'Quản trị hệ thống', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(737, 1, 'vi', 'bases/layouts', 'dashboard', 'Bảng điều khiển', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(738, 1, 'vi', 'bases/layouts', 'appearance', 'Hiển thị', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(739, 1, 'vi', 'bases/layouts', 'menu', 'Trình đơn', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(740, 1, 'vi', 'bases/layouts', 'widgets', 'Tiện ích', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(741, 1, 'vi', 'bases/layouts', 'theme_options', 'Tuỳ chọn giao diện', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(742, 1, 'vi', 'bases/layouts', 'plugins', 'Tiện ích mở rộng', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(743, 1, 'vi', 'bases/layouts', 'settings', 'Cài đặt', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(744, 1, 'vi', 'bases/layouts', 'setting_general', 'Cơ bản', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(745, 1, 'vi', 'bases/layouts', 'feature_access_control', 'Quản lý tính năng', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(746, 1, 'vi', 'bases/layouts', 'role_permission', 'Nhóm và phân quyền', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(747, 1, 'vi', 'bases/layouts', 'user_management', 'Quản lý người dùng', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(748, 1, 'vi', 'bases/layouts', 'super_user_management', 'Quản lý người dùng cấp cao', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(749, 1, 'vi', 'bases/layouts', 'system_information', 'Thông tin hệ thống', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(750, 1, 'vi', 'bases/layouts', 'theme', 'Giao diện', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(751, 1, 'vi', 'bases/layouts', 'copyright', 'Bản quyền :year &copy; :company. Phiên bản: <span>:version</span>', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(752, 1, 'vi', 'bases/layouts', 'profile', 'Thông tin cá nhân', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(753, 1, 'vi', 'bases/layouts', 'logout', 'Đăng xuất', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(754, 1, 'vi', 'bases/layouts', 'no_search_result', 'Không có kết quả tìm kiếm, hãy thử lại với từ khóa khác.', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(755, 1, 'vi', 'bases/layouts', 'home', 'Trang chủ', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(756, 1, 'vi', 'bases/layouts', 'search', 'Tìm kiếm', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(757, 1, 'vi', 'bases/layouts', 'add_new', 'Thêm mới', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(758, 1, 'vi', 'bases/layouts', 'n_a', 'N/A', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(759, 1, 'vi', 'bases/layouts', 'page_loaded_time', 'Trang tải xong trong', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(760, 1, 'vi', 'bases/layouts', 'view_website', 'Xem trang ngoài', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(761, 1, 'vi', 'bases/mail', 'send-fail', 'Gửi email không thành công', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(762, 1, 'vi', 'bases/notices', 'create_success_message', 'Tạo thành công', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(763, 1, 'vi', 'bases/notices', 'update_success_message', 'Cập nhật thành công', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(764, 1, 'vi', 'bases/notices', 'delete_success_message', 'Xóa thành công', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(765, 1, 'vi', 'bases/notices', 'hide_success_message', 'Ẩn thành công', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(766, 1, 'vi', 'bases/notices', 'unhide_success_message', 'Hiện thành công', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(767, 1, 'vi', 'bases/notices', 'success_header', 'Thành công!', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(768, 1, 'vi', 'bases/notices', 'error_header', 'Lỗi!', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(769, 1, 'vi', 'bases/notices', 'no_select', 'Chọn ít nhất 1 trường để thực hiện hành động này!', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(770, 1, 'vi', 'bases/notices', 'deleted', 'Xóa thành công!', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(771, 1, 'vi', 'bases/notices', 'cannot_delete', 'Không thể xóa bản ghi này', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(772, 1, 'vi', 'bases/notices', 'processing_request', 'Hệ thống đang xử lý yêu cầu.', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(773, 1, 'vi', 'bases/notices', 'error', 'Lỗi', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(774, 1, 'vi', 'bases/notices', 'success', 'Thành công', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(775, 1, 'vi', 'bases/system', 'update_menu_left_hand_success', 'Cập nhật menu thành công', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(776, 1, 'vi', 'bases/system', 'added_menu_left_hand_success', 'Thêm menu thành công', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(777, 1, 'vi', 'bases/system', 'deleted_menu_left_hand_success', 'Xóa menu thành công', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(778, 1, 'vi', 'bases/system', 'position_not_found', 'Không tìm thấy vị trí', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(779, 1, 'vi', 'bases/system', 'menu_option_not_found', 'Không tìm thấy tùy chọn cho menu', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(780, 1, 'vi', 'bases/system', 'name_is_required', 'Trường tên là bắt buộc', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(781, 1, 'vi', 'bases/system', 'no_select', 'Hãy chọn ít nhất 1 trường để thực hiện hành động này!', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(782, 1, 'vi', 'bases/system', 'cannot_find_user', 'Không thể tải được thông tin người dùng', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(783, 1, 'vi', 'bases/system', 'supper_revoked', 'Quyền quản trị viên cao nhất đã được gỡ bỏ', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(784, 1, 'vi', 'bases/system', 'cant_remove_supper', 'Bạn không có quyền xóa quản trị viên cấp cao', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(785, 1, 'vi', 'bases/system', 'cant_find_user_with_email', 'Không thể tìm thấy người dùng với email này', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(786, 1, 'vi', 'bases/system', 'supper_granted', 'Quyền quản trị cao nhất đã được gán', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(787, 1, 'vi', 'bases/system', 'delete_log_success', 'Xóa tập tin log thành công!', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(788, 1, 'vi', 'bases/system', 'get_member_success', 'Hiển thị danh sách thành viên thành công', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(789, 1, 'vi', 'bases/system', 'error_occur', 'Có lỗi dưới đây', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(790, 1, 'vi', 'bases/system', 'role_and_permission', 'Phân quyền hệ thống', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(791, 1, 'vi', 'bases/system', 'role_and_permission_description', 'Quản lý những phân quyền trong hệ thống', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(792, 1, 'vi', 'bases/system', 'user.list_super', 'Danh sách quản trị viên cấp cao', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(793, 1, 'vi', 'bases/system', 'user.username', 'Tên đăng nhập', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(794, 1, 'vi', 'bases/system', 'user.email', 'Email', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(795, 1, 'vi', 'bases/system', 'user.last_login', 'Đăng nhập lần cuối	', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(796, 1, 'vi', 'bases/system', 'user.add_user', 'Thêm quản trị viên cấp cao', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(797, 1, 'vi', 'bases/system', 'user.cancel', 'Hủy bỏ', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(798, 1, 'vi', 'bases/system', 'user.create', 'Thêm', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(799, 1, 'vi', 'bases/system', 'options.features', 'Kiểm soát truy cập các tính năng', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(800, 1, 'vi', 'bases/system', 'options.feature_description', 'Bật/tắt các tính năng.', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(801, 1, 'vi', 'bases/system', 'options.manage_super', 'Quản lý quản trị viên cấp cao', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(802, 1, 'vi', 'bases/system', 'options.manage_super_description', 'Thêm/xóa quản trị viên cấp cao', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(803, 1, 'vi', 'bases/system', 'options.menu_left_hand', 'Tùy chỉnh menu hệ thống', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(804, 1, 'vi', 'bases/system', 'options.menu_left_hand_description', 'Chỉnh sửa, xóa, sắp xếp menu hệ thống.', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(805, 1, 'vi', 'bases/system', 'options.info', 'Thông tin hệ thống', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(806, 1, 'vi', 'bases/system', 'options.info_description', 'Những thông tin về cấu hình hiện tại của hệ thống.', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(807, 1, 'vi', 'bases/system', 'info.title', 'Thông tin hệ thống', '2017-08-14 17:38:12', '2017-08-14 17:38:12');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(808, 1, 'vi', 'bases/system', 'info.cache', 'Bộ nhớ đệm', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(809, 1, 'vi', 'bases/system', 'info.environment', 'Môi trường', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(810, 1, 'vi', 'bases/system', 'info.locale', 'Ngôn ngữ hệ thống', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(811, 1, 'vi', 'bases/system', 'activate', 'Kích hoạt', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(812, 1, 'vi', 'bases/system', 'author', 'Tác giả', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(813, 1, 'vi', 'bases/system', 'deactivate', 'Hủy kích hoạt', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(814, 1, 'vi', 'bases/system', 'disabled', 'Đã vô hiệu', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(815, 1, 'vi', 'bases/system', 'disabled_in_demo_mode', 'Bạn không thể thực hiện hành động này ở chế độ demo', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(816, 1, 'vi', 'bases/system', 'enabled', 'Kích hoạt', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(817, 1, 'vi', 'bases/system', 'invalid_plugin', 'Gói mở rộng không hợp lệ', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(818, 1, 'vi', 'bases/system', 'update_plugin_status_success', 'Cập nhật trạng thái gói mở rộng thành công', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(819, 1, 'vi', 'bases/system', 'user_management', 'Quản lý thành viên', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(820, 1, 'vi', 'bases/system', 'user_management_description', 'Quản lý người dùng trong hệ thống', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(821, 1, 'vi', 'bases/system', 'version', 'Phiên bản', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(822, 1, 'vi', 'bases/tables', 'filter_enabled', 'Tìm kiếm nâng cao đã được kích hoạt', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(823, 1, 'vi', 'bases/tables', 'id', 'ID', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(824, 1, 'vi', 'bases/tables', 'name', 'Tên', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(825, 1, 'vi', 'bases/tables', 'order_by', 'Thứ tự', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(826, 1, 'vi', 'bases/tables', 'status', 'Trạng thái', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(827, 1, 'vi', 'bases/tables', 'created_at', 'Ngày tạo', '2017-08-14 17:38:12', '2017-08-14 17:38:12'),
(828, 1, 'vi', 'bases/tables', 'updated_at', 'Ngày cập nhật', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(829, 1, 'vi', 'bases/tables', 'operations', 'Tác vụ', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(830, 1, 'vi', 'bases/tables', 'loading_data', 'Đang tải dữ liệu từ server', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(831, 1, 'vi', 'bases/tables', 'url', 'URL', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(832, 1, 'vi', 'bases/tables', 'author', 'Người tạo', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(833, 1, 'vi', 'bases/tables', 'column', 'Cột', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(834, 1, 'vi', 'bases/tables', 'origin', 'Bản cũ', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(835, 1, 'vi', 'bases/tables', 'after_change', 'Sau khi thay đổi', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(836, 1, 'vi', 'bases/tables', 'notes', 'Ghi chú', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(837, 1, 'vi', 'bases/tables', 'activated', 'kích hoạt', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(838, 1, 'vi', 'bases/tables', 'browser', 'Trình duyệt', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(839, 1, 'vi', 'bases/tables', 'deactivated', 'hủy kích hoạt', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(840, 1, 'vi', 'bases/tables', 'description', 'Mô tả', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(841, 1, 'vi', 'bases/tables', 'session', 'Phiên', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(842, 1, 'vi', 'bases/tables', 'views', 'Lượt xem', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(843, 1, 'vi', 'bases/tables', 'restore', 'Khôi phục', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(844, 1, 'vi', 'bases/tables', 'edit', 'Sửa', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(845, 1, 'vi', 'bases/tables', 'delete', 'Xóa', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(846, 1, 'vi', 'bases/tables', 'action', 'Hành động', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(847, 1, 'vi', 'bases/tables', 'activate', 'Kích hoạt', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(848, 1, 'vi', 'bases/tables', 'add_new', 'Thêm mới', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(849, 1, 'vi', 'bases/tables', 'all', 'Tất cả', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(850, 1, 'vi', 'bases/tables', 'cancel', 'Hủy bỏ', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(851, 1, 'vi', 'bases/tables', 'confirm_delete', 'Xác nhận xóa', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(852, 1, 'vi', 'bases/tables', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xóa bản ghi này?', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(853, 1, 'vi', 'bases/tables', 'csv', 'CSV', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(854, 1, 'vi', 'bases/tables', 'deactivate', 'Hủy kích hoạt', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(855, 1, 'vi', 'bases/tables', 'delete_entry', 'Xóa bản ghi', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(856, 1, 'vi', 'bases/tables', 'display', 'Hiển thị', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(857, 1, 'vi', 'bases/tables', 'excel', 'Excel', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(858, 1, 'vi', 'bases/tables', 'export', 'Xuất bản', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(859, 1, 'vi', 'bases/tables', 'filter', 'Nhập từ khóa...', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(860, 1, 'vi', 'bases/tables', 'filtered_from', 'được lọc từ', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(861, 1, 'vi', 'bases/tables', 'in', 'trong tổng số', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(862, 1, 'vi', 'bases/tables', 'loading', 'Đang tải dữ liệu từ hệ thống', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(863, 1, 'vi', 'bases/tables', 'no_data', 'Không có dữ liệu để hiển thị', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(864, 1, 'vi', 'bases/tables', 'no_record', 'Không có dữ liệu', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(865, 1, 'vi', 'bases/tables', 'pdf', 'PDF', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(866, 1, 'vi', 'bases/tables', 'print', 'In', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(867, 1, 'vi', 'bases/tables', 'records', 'bản ghi', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(868, 1, 'vi', 'bases/tables', 'reload', 'Tải lại', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(869, 1, 'vi', 'bases/tables', 'reset', 'Làm mới', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(870, 1, 'vi', 'bases/tables', 'save', 'Lưu', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(871, 1, 'vi', 'bases/tables', 'show_from', 'Hiển thị từ', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(872, 1, 'vi', 'bases/tables', 'template', 'Giao diện', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(873, 1, 'vi', 'bases/tables', 'to', 'đến', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(874, 1, 'vi', 'bases/tables', 'view', 'Xem chi tiết', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(875, 1, 'vi', 'bases/tabs', 'detail', 'Chi tiết', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(876, 1, 'vi', 'bases/tabs', 'file', 'Tập tin', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(877, 1, 'vi', 'bases/tabs', 'record_note', 'Ghi chú', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(878, 1, 'vi', 'bases/tabs', 'revision', 'Lịch sử thay đổi', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(879, 1, 'en', 'block/block', 'name', 'Block', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(880, 1, 'en', 'block/block', 'create', 'New block', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(881, 1, 'en', 'block/block', 'edit', 'Edit block', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(882, 1, 'en', 'block/block', 'list', 'List block', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(883, 1, 'en', 'block/block', 'menu', 'Static Blocks', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(884, 1, 'vi', 'block/block', 'name', 'Nội dung tĩnh', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(885, 1, 'vi', 'block/block', 'create', 'Thêm nội dung tĩnh', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(886, 1, 'vi', 'block/block', 'edit', 'Sửa nội dung tĩnh', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(887, 1, 'vi', 'block/block', 'list', 'Danh sách nội dung tĩnh', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(888, 1, 'vi', 'block/block', 'menu', 'Nội dung tĩnh', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(889, 1, 'en', 'blog/categories', 'model', 'Category', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(890, 1, 'en', 'blog/categories', 'models', 'Categories', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(891, 1, 'en', 'blog/categories', 'create', 'Create new category', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(892, 1, 'en', 'blog/categories', 'edit', 'Edit category', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(893, 1, 'en', 'blog/categories', 'list', 'List categories', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(894, 1, 'en', 'blog/categories', 'menu', 'Categories', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(895, 1, 'en', 'blog/categories', 'edit_this_category', 'Edit this category', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(896, 1, 'en', 'blog/categories', 'menu_name', 'Categories', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(897, 1, 'en', 'blog/posts', 'model', 'Post', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(898, 1, 'en', 'blog/posts', 'models', 'Posts', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(899, 1, 'en', 'blog/posts', 'list', 'List Posts', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(900, 1, 'en', 'blog/posts', 'create', 'Create new post', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(901, 1, 'en', 'blog/posts', 'edit', 'Edit post', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(902, 1, 'en', 'blog/posts', 'form.name', 'Name', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(903, 1, 'en', 'blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum 120 characters)', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(904, 1, 'en', 'blog/posts', 'form.description', 'Description', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(905, 1, 'en', 'blog/posts', 'form.description_placeholder', 'Short description for post (Maximum 400 characters)', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(906, 1, 'en', 'blog/posts', 'form.categories', 'Categories', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(907, 1, 'en', 'blog/posts', 'form.tags', 'Tags', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(908, 1, 'en', 'blog/posts', 'form.tags_placeholder', 'Tags', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(909, 1, 'en', 'blog/posts', 'form.content', 'Content', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(910, 1, 'en', 'blog/posts', 'form.featured', 'Is featured?', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(911, 1, 'en', 'blog/posts', 'form.note', 'Note content', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(912, 1, 'en', 'blog/posts', 'form.format_type', 'Format', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(913, 1, 'en', 'blog/posts', 'notices.no_select', 'Please select at least one record to take this action!', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(914, 1, 'en', 'blog/posts', 'notices.update_success_message', 'Update successfully', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(915, 1, 'en', 'blog/posts', 'cannot_delete', 'Post could not be deleted', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(916, 1, 'en', 'blog/posts', 'post_deleted', 'Post deleted', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(917, 1, 'en', 'blog/posts', 'posts', 'Posts', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(918, 1, 'en', 'blog/posts', 'edit_this_post', 'Edit this post', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(919, 1, 'en', 'blog/posts', 'no_new_post_now', 'There is no new post now!', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(920, 1, 'en', 'blog/posts', 'menu_name', 'Posts', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(921, 1, 'en', 'blog/posts', 'all_posts', 'All Posts', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(922, 1, 'en', 'blog/tags', 'model', 'Tag', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(923, 1, 'en', 'blog/tags', 'models', 'Tags', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(924, 1, 'en', 'blog/tags', 'form.name', 'Name', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(925, 1, 'en', 'blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(926, 1, 'en', 'blog/tags', 'form.description', 'Description', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(927, 1, 'en', 'blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(928, 1, 'en', 'blog/tags', 'form.categories', 'Categories', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(929, 1, 'en', 'blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(930, 1, 'en', 'blog/tags', 'create', 'Create new tag', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(931, 1, 'en', 'blog/tags', 'edit', 'Edit tag', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(932, 1, 'en', 'blog/tags', 'list', 'List tags', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(933, 1, 'en', 'blog/tags', 'cannot_delete', 'Tag could not be deleted', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(934, 1, 'en', 'blog/tags', 'deleted', 'Tag deleted', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(935, 1, 'en', 'blog/tags', 'menu', 'Tags', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(936, 1, 'en', 'blog/tags', 'edit_this_tag', 'Edit this tag', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(937, 1, 'en', 'blog/tags', 'menu_name', 'Tags', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(938, 1, 'vi', 'blog/categories', 'model', 'Danh mục', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(939, 1, 'vi', 'blog/categories', 'models', 'Danh mục', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(940, 1, 'vi', 'blog/categories', 'list', 'Danh sách danh mục', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(941, 1, 'vi', 'blog/categories', 'create', 'Thêm danh mục mới', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(942, 1, 'vi', 'blog/categories', 'edit', 'Sửa danh mục', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(943, 1, 'vi', 'blog/categories', 'menu_name', 'Danh mục', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(944, 1, 'vi', 'blog/posts', 'model', 'Bài viết', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(945, 1, 'vi', 'blog/posts', 'models', 'Bài viết', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(946, 1, 'vi', 'blog/posts', 'list', 'Danh sách bài viết', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(947, 1, 'vi', 'blog/posts', 'create', 'Thêm bài viết', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(948, 1, 'vi', 'blog/posts', 'edit', 'Sửa bài viêt', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(949, 1, 'vi', 'blog/posts', 'form.name', 'Tên', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(950, 1, 'vi', 'blog/posts', 'form.name_placeholder', 'Tên bài viết (Tối đa 120 kí tự)', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(951, 1, 'vi', 'blog/posts', 'form.description', 'Mô tả', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(952, 1, 'vi', 'blog/posts', 'form.description_placeholder', 'Mô tả ngắn cho bài viết (Tối đa 400 kí tự)', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(953, 1, 'vi', 'blog/posts', 'form.categories', 'Chuyên mục', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(954, 1, 'vi', 'blog/posts', 'form.tags', 'Từ khóa', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(955, 1, 'vi', 'blog/posts', 'form.tags_placeholder', 'Thêm từ khóa', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(956, 1, 'vi', 'blog/posts', 'form.content', 'Nội dung', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(957, 1, 'vi', 'blog/posts', 'form.featured', 'Bài viết nổi bật?', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(958, 1, 'vi', 'blog/posts', 'form.note', 'Nội dung ghi chú', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(959, 1, 'vi', 'blog/posts', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(960, 1, 'vi', 'blog/posts', 'notices.update_success_message', 'Cập nhật thành công', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(961, 1, 'vi', 'blog/posts', 'post_deleted', 'Xóa bài viết thành công', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(962, 1, 'vi', 'blog/posts', 'cannot_delete', 'Không thể xóa bài viết', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(963, 1, 'vi', 'blog/posts', 'menu_name', 'Bài viết', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(964, 1, 'vi', 'blog/posts', 'all_posts', 'Tất cả bài viết', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(965, 1, 'vi', 'blog/tags', 'model', 'Tag', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(966, 1, 'vi', 'blog/tags', 'models', 'Tags', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(967, 1, 'vi', 'blog/tags', 'list', 'Danh sách tags', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(968, 1, 'vi', 'blog/tags', 'create', 'Thêm tag mới', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(969, 1, 'vi', 'blog/tags', 'edit', 'Sửa tag', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(970, 1, 'vi', 'blog/tags', 'form.name', 'Tên', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(971, 1, 'vi', 'blog/tags', 'form.name_placeholder', 'Tên tag (Tối đa 120 kí tự)', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(972, 1, 'vi', 'blog/tags', 'form.description', 'Mô tả', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(973, 1, 'vi', 'blog/tags', 'form.description_placeholder', 'Mô tả ngắn cho tag (Tối đa 400 kí tự)', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(974, 1, 'vi', 'blog/tags', 'form.categories', 'Chuyên mục', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(975, 1, 'vi', 'blog/tags', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(976, 1, 'vi', 'blog/tags', 'cannot_delete', 'Không thể xóa tag', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(977, 1, 'vi', 'blog/tags', 'deleted', 'Xóa tag thành công', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(978, 1, 'vi', 'blog/tags', 'menu_name', 'Thẻ', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(979, 1, 'en', 'contact/contact', 'menu', 'Contact', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(980, 1, 'en', 'contact/contact', 'model', 'Contact', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(981, 1, 'en', 'contact/contact', 'models', 'Contact', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(982, 1, 'en', 'contact/contact', 'list', 'List contact', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(983, 1, 'en', 'contact/contact', 'edit', 'View contact', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(984, 1, 'en', 'contact/contact', 'tables.phone', 'Phone', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(985, 1, 'en', 'contact/contact', 'tables.email', 'Email', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(986, 1, 'en', 'contact/contact', 'tables.fullname', 'Fullname', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(987, 1, 'en', 'contact/contact', 'tables.address', 'Address', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(988, 1, 'en', 'contact/contact', 'tables.content', 'Content', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(989, 1, 'en', 'contact/contact', 'form.is_read', 'Read?', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(990, 1, 'en', 'contact/contact', 'form.status', 'Status', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(991, 1, 'en', 'contact/contact', 'notices.no_select', 'Please select at least one contact to take this action!', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(992, 1, 'en', 'contact/contact', 'notices.update_success_message', 'Update successfully', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(993, 1, 'en', 'contact/contact', 'cannot_delete', 'Contact could not be deleted', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(994, 1, 'en', 'contact/contact', 'deleted', 'Contact deleted', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(995, 1, 'en', 'contact/contact', 'contact_information', 'Contact information', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(996, 1, 'en', 'contact/contact', 'email.header', 'Email', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(997, 1, 'en', 'contact/contact', 'email.title', 'New contact from your site', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(998, 1, 'en', 'contact/contact', 'email.success', 'Send message successfully!', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(999, 1, 'en', 'contact/contact', 'email.failed', 'Can\'t send message on this time, please try again later!', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1000, 1, 'en', 'contact/contact', 'name.required', 'Name is required', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1001, 1, 'en', 'contact/contact', 'email.required', 'Email is required', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1002, 1, 'en', 'contact/contact', 'email.email', 'The email address is not valid', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1003, 1, 'en', 'contact/contact', 'content.required', 'Content is required', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1004, 1, 'en', 'contact/contact', 'g-recaptcha-response.required', 'Please confirm you are not a robot before send message.', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1005, 1, 'en', 'contact/contact', 'g-recaptcha-response.captcha', 'You are not confirm rotbot yet.', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1006, 1, 'en', 'contact/contact', 'contact_sent_from', 'This contact information sent from', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1007, 1, 'en', 'contact/contact', 'sender', 'Sender', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1008, 1, 'en', 'contact/contact', 'sender_email', 'Email', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1009, 1, 'en', 'contact/contact', 'sender_address', 'Address', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1010, 1, 'en', 'contact/contact', 'sender_phone', 'Phone', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1011, 1, 'en', 'contact/contact', 'message_content', 'Message content', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1012, 1, 'en', 'contact/contact', 'sent_from', 'Email sent from', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1013, 1, 'en', 'contact/contact', 'form_name', 'Name', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1014, 1, 'en', 'contact/contact', 'form_email', 'Email', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1015, 1, 'en', 'contact/contact', 'form_address', 'Address', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1016, 1, 'en', 'contact/contact', 'form_phone', 'Phone', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1017, 1, 'en', 'contact/contact', 'form_message', 'Message', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1018, 1, 'en', 'contact/contact', 'confirm_not_robot', 'Please confirm you are not robot', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1019, 1, 'en', 'contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1020, 1, 'en', 'contact/contact', 'send_btn', 'Send message', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1021, 1, 'en', 'contact/contact', 'mark_as_read', 'Mark as read', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1022, 1, 'en', 'contact/contact', 'mark_as_unread', 'Mark as unread', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1023, 1, 'en', 'contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count New</span> Messages', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1024, 1, 'en', 'contact/contact', 'view_all', 'View all', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1025, 1, 'en', 'contact/contact', 'read', 'Read', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1026, 1, 'en', 'contact/contact', 'unread', 'UnRead', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1027, 1, 'en', 'contact/contact', 'phone', 'Phone', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1028, 1, 'en', 'contact/contact', 'address', 'Address', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1029, 1, 'en', 'contact/contact', 'message', 'Message', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1030, 1, 'vi', 'contact/contact', 'menu', 'Liên hệ', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1031, 1, 'vi', 'contact/contact', 'model', 'Liên hệ', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1032, 1, 'vi', 'contact/contact', 'models', 'Liên hệ', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1033, 1, 'vi', 'contact/contact', 'list', 'Danh sách liên hệ', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1034, 1, 'vi', 'contact/contact', 'edit', 'Xem liên hệ', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1035, 1, 'vi', 'contact/contact', 'tables.phone', 'Điện thoại', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1036, 1, 'vi', 'contact/contact', 'tables.email', 'Email', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1037, 1, 'vi', 'contact/contact', 'tables.fullname', 'Họ tên', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1038, 1, 'vi', 'contact/contact', 'tables.address', 'Địa chỉ', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1039, 1, 'vi', 'contact/contact', 'tables.content', 'Nội dung', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1040, 1, 'vi', 'contact/contact', 'form.is_read', 'Đã xem?', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1041, 1, 'vi', 'contact/contact', 'notices.no_select', 'Chọn ít nhất 1 liên hệ để thực hiện hành động này!', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1042, 1, 'vi', 'contact/contact', 'notices.update_success_message', 'Cập nhật thành công', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1043, 1, 'vi', 'contact/contact', 'cannot_delete', 'Không thể xóa liên hệ này', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1044, 1, 'vi', 'contact/contact', 'deleted', 'Liên hệ đã được xóa', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1045, 1, 'vi', 'contact/contact', 'contact_information', 'Thông tin liên hệ', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1046, 1, 'vi', 'contact/contact', 'email.title', 'Thông tin liên hệ mới', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1047, 1, 'vi', 'contact/contact', 'email.success', 'Gửi tin nhắn thành công!', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1048, 1, 'vi', 'contact/contact', 'email.failed', 'Có lỗi trong quá trình gửi tin nhắn!', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1049, 1, 'vi', 'contact/contact', 'email.required', 'Email không được để trống', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1050, 1, 'vi', 'contact/contact', 'email.email', 'Địa chỉ email không hợp lệ', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1051, 1, 'vi', 'contact/contact', 'name.required', 'Họ tên không được để trống', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1052, 1, 'vi', 'contact/contact', 'content.required', 'Nội dung tin nhắn không được để trống', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1053, 1, 'vi', 'contact/contact', 'g-recaptcha-response.required', 'Hãy xác minh không phải là robot trước khi gửi tin nhắn.', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1054, 1, 'vi', 'contact/contact', 'g-recaptcha-response.captcha', 'Bạn chưa xác minh không phải là robot thành công.', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1055, 1, 'vi', 'contact/contact', 'confirm_not_robot', 'Xác nhận không phải người máy', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1056, 1, 'vi', 'contact/contact', 'contact_sent_from', 'Liên hệ này được gửi từ', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1057, 1, 'vi', 'contact/contact', 'form_address', 'Địa chỉ', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1058, 1, 'vi', 'contact/contact', 'form_email', 'Thư điện tử', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1059, 1, 'vi', 'contact/contact', 'form_message', 'Thông điệp', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1060, 1, 'vi', 'contact/contact', 'form_name', 'Họ tên', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1061, 1, 'vi', 'contact/contact', 'form_phone', 'Số điện thoại', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1062, 1, 'vi', 'contact/contact', 'message_content', 'Nội dung thông điệp', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1063, 1, 'vi', 'contact/contact', 'required_field', 'Những trường có dấu (<span style=\"color: red\">*</span>) là bắt buộc.', '2017-08-14 17:38:13', '2017-08-14 17:38:13'),
(1064, 1, 'vi', 'contact/contact', 'send_btn', 'Gửi tin nhắn', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1065, 1, 'vi', 'contact/contact', 'sender', 'Người gửi', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1066, 1, 'vi', 'contact/contact', 'sender_address', 'Địa chỉ', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1067, 1, 'vi', 'contact/contact', 'sender_email', 'Thư điện tử', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1068, 1, 'vi', 'contact/contact', 'sender_phone', 'Số điện thoại', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1069, 1, 'vi', 'contact/contact', 'sent_from', 'Thư được gửi từ', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1070, 1, 'vi', 'contact/contact', 'mark_as_read', 'Đánh dấu đã đọc', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1071, 1, 'vi', 'contact/contact', 'mark_as_unread', 'Đánh dấu chưa đọc', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1072, 1, 'en', 'custom-field/custom-field', 'repeater_fields', 'Repeater fields', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1073, 1, 'en', 'custom-field/custom-field', 'field_label', 'Field Label', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1074, 1, 'en', 'custom-field/custom-field', 'field_name', 'Field Name', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1075, 1, 'en', 'custom-field/custom-field', 'field_type', 'Field Type', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1076, 1, 'en', 'custom-field/custom-field', 'add_field', 'Add Field', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1077, 1, 'en', 'custom-field/custom-field', 'default_value', 'Default Value', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1078, 1, 'en', 'custom-field/custom-field', 'default_value_description', 'Appears when creating a new post', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1079, 1, 'en', 'custom-field/custom-field', 'placeholder_text', 'Placeholder Text', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1080, 1, 'en', 'custom-field/custom-field', 'placeholder_text_description', 'Appears within the input', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1081, 1, 'en', 'custom-field/custom-field', 'rows', 'Rows', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1082, 1, 'en', 'custom-field/custom-field', 'rows_description', 'How many rows of this textarea?', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1083, 1, 'en', 'custom-field/custom-field', 'toolbar', 'Toolbar', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1084, 1, 'en', 'custom-field/custom-field', 'basic', 'Basic', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1085, 1, 'en', 'custom-field/custom-field', 'full', 'Full', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1086, 1, 'en', 'custom-field/custom-field', 'choices', 'Choices', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1087, 1, 'en', 'custom-field/custom-field', 'choices_description', 'Enter each choice on a new line.<br>For more control, you may specify both a value and label like this:<br>red: Red<br>blue: Blue', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1088, 1, 'en', 'custom-field/custom-field', 'button_label', 'Button label', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1089, 1, 'en', 'custom-field/custom-field', 'new_field', 'New field', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1090, 1, 'en', 'custom-field/custom-field', 'text', 'text', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1091, 1, 'en', 'custom-field/custom-field', 'field_label_description', 'This is the name which will appear on the EDIT page', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1092, 1, 'en', 'custom-field/custom-field', 'field_name_description', 'Single word, no spaces. Underscores and dashes allowed', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1093, 1, 'en', 'custom-field/custom-field', 'field_type_text', 'Text', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1094, 1, 'en', 'custom-field/custom-field', 'field_type_textarea', 'Textarea', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1095, 1, 'en', 'custom-field/custom-field', 'field_type_number', 'Number', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1096, 1, 'en', 'custom-field/custom-field', 'field_type_email', 'Email', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1097, 1, 'en', 'custom-field/custom-field', 'field_type_password', 'Password', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1098, 1, 'en', 'custom-field/custom-field', 'field_type_editor', 'WYSIWYG editor', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1099, 1, 'en', 'custom-field/custom-field', 'field_type_image', 'Image', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1100, 1, 'en', 'custom-field/custom-field', 'field_type_file', 'File', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1101, 1, 'en', 'custom-field/custom-field', 'field_type_select', 'Select', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1102, 1, 'en', 'custom-field/custom-field', 'field_type_checkbox', 'Checkbox', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1103, 1, 'en', 'custom-field/custom-field', 'field_type_radio', 'Radio', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1104, 1, 'en', 'custom-field/custom-field', 'field_type_repeater', 'Repeater', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1105, 1, 'en', 'custom-field/custom-field', 'field_instruction', 'Field Instructions', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1106, 1, 'en', 'custom-field/custom-field', 'field_instruction_description', 'Instructions for authors. Shown when submitting data', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1107, 1, 'en', 'custom-field/custom-field', 'remove', 'Remove', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1108, 1, 'en', 'custom-field/custom-field', 'close_field', 'Close fields', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1109, 1, 'en', 'custom-field/custom-field', 'is_equal_to', 'is equal to', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1110, 1, 'en', 'custom-field/custom-field', 'is_not_equal_to', 'is not equal to', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1111, 1, 'en', 'custom-field/custom-field', 'and', 'and', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1112, 1, 'en', 'custom-field/custom-field', 'custom_field_name', 'Custom fields', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1113, 1, 'en', 'custom-field/custom-field', 'custom_field_description', 'Manage custom fields', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1114, 1, 'en', 'custom-field/custom-field', 'basic_information', 'Basic information', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1115, 1, 'en', 'custom-field/custom-field', 'title', 'Title', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1116, 1, 'en', 'custom-field/custom-field', 'status', 'Status', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1117, 1, 'en', 'custom-field/custom-field', 'activated', 'Activated', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1118, 1, 'en', 'custom-field/custom-field', 'deactivated', 'Deactivated', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1119, 1, 'en', 'custom-field/custom-field', 'sort_order', 'Sort order', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1120, 1, 'en', 'custom-field/custom-field', 'rules', 'Rules', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1121, 1, 'en', 'custom-field/custom-field', 'rules_description', 'Show this field group if', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1122, 1, 'en', 'custom-field/custom-field', 'or', 'Or', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1123, 1, 'en', 'custom-field/custom-field', 'add_rule_group', 'Add rule group', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1124, 1, 'en', 'custom-field/custom-field', 'field_group_information', 'Field group information', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1125, 1, 'en', 'custom-field/custom-field', 'save', 'Save', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1126, 1, 'en', 'custom-field/custom-field', 'save_and_continue', 'Save & continue', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1127, 1, 'en', 'custom-field/custom-field', 'rule_basic', 'Basic', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1128, 1, 'en', 'custom-field/custom-field', 'rule_other', 'Other', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1129, 1, 'en', 'custom-field/custom-field', 'create_field_group', 'Create field group', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1130, 1, 'en', 'custom-field/custom-field', 'edit_field_group', 'Edit field group', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1131, 1, 'en', 'custom-field/custom-field', 'menu_name', 'Custom fields', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1132, 1, 'vi', 'custom-field/custom-field', 'add_field', 'Thêm trường', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1133, 1, 'vi', 'custom-field/custom-field', 'add_rule_group', 'Thêm nhóm luật', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1134, 1, 'vi', 'custom-field/custom-field', 'and', 'và', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1135, 1, 'vi', 'custom-field/custom-field', 'basic', 'Cơ bản', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1136, 1, 'vi', 'custom-field/custom-field', 'button_label', 'Nhãn nút nhấn', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1137, 1, 'vi', 'custom-field/custom-field', 'choices', 'Lựa chọn', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1138, 1, 'vi', 'custom-field/custom-field', 'choices_description', 'Mỗi lựa chọn trên 1 dòng.<br>Ví dụ:<br>red: Red<br>blue: Blue', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1139, 1, 'vi', 'custom-field/custom-field', 'custom_field_description', 'Quản lý custom fields', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1140, 1, 'vi', 'custom-field/custom-field', 'default_value', 'Giá trị mặc định', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1141, 1, 'vi', 'custom-field/custom-field', 'default_value_description', 'Xuất hiện khi tạo bài viết mới', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1142, 1, 'vi', 'custom-field/custom-field', 'field_instruction', 'Hướng dẫn', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1143, 1, 'vi', 'custom-field/custom-field', 'field_instruction_description', 'Hướng dẫn dành cho tác giả. Hiển thị khi nhập dữ liệu', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1144, 1, 'vi', 'custom-field/custom-field', 'field_label', 'Nhãn', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1145, 1, 'vi', 'custom-field/custom-field', 'field_label_description', 'Tên này sẽ hiển thị khi sửa trang', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1146, 1, 'vi', 'custom-field/custom-field', 'field_name', 'Tên trường', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1147, 1, 'vi', 'custom-field/custom-field', 'field_name_description', 'Từ đơn, không khoảng trắng, cho phép gạch dưới và gạch ngang', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1148, 1, 'vi', 'custom-field/custom-field', 'field_type', 'Loại trường', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1149, 1, 'vi', 'custom-field/custom-field', 'field_type_checkbox', 'Ô chọn', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1150, 1, 'vi', 'custom-field/custom-field', 'field_type_email', 'Email', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1151, 1, 'vi', 'custom-field/custom-field', 'field_type_file', 'Tập tin', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1152, 1, 'vi', 'custom-field/custom-field', 'field_type_image', 'Hình ảnh', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1153, 1, 'vi', 'custom-field/custom-field', 'field_type_number', 'Số', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1154, 1, 'vi', 'custom-field/custom-field', 'field_type_password', 'Mật khẩu', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1155, 1, 'vi', 'custom-field/custom-field', 'field_type_radio', 'Radio', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1156, 1, 'vi', 'custom-field/custom-field', 'field_type_repeater', 'Repeater', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1157, 1, 'vi', 'custom-field/custom-field', 'field_type_select', 'Lựa chọn', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1158, 1, 'vi', 'custom-field/custom-field', 'field_type_text', 'Text', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1159, 1, 'vi', 'custom-field/custom-field', 'field_type_textarea', 'Textarea', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1160, 1, 'vi', 'custom-field/custom-field', 'or', 'Hoặc', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1161, 1, 'vi', 'custom-field/custom-field', 'remove', 'Xóa', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1162, 1, 'vi', 'custom-field/custom-field', 'repeater_fields', 'Trường lặp lại', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1163, 1, 'vi', 'custom-field/custom-field', 'toolbar', 'Thanh công cụ', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1164, 1, 'vi', 'custom-field/custom-field', 'activated', 'Kích hoạt', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1165, 1, 'vi', 'custom-field/custom-field', 'basic_information', 'Thông tin cơ bản', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1166, 1, 'vi', 'custom-field/custom-field', 'close_field', 'Đóng', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1167, 1, 'vi', 'custom-field/custom-field', 'custom_field_name', 'Trường tuỳ chỉnh', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1168, 1, 'vi', 'custom-field/custom-field', 'deactivated', 'Huỷ kích hoạt', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1169, 1, 'vi', 'custom-field/custom-field', 'field_group_information', 'Thông tin nhóm trường', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1170, 1, 'vi', 'custom-field/custom-field', 'field_type_editor', 'Bộ soạn thảo trù phú', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1171, 1, 'vi', 'custom-field/custom-field', 'full', 'Toàn bộ', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1172, 1, 'vi', 'custom-field/custom-field', 'is_equal_to', 'bằng với', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1173, 1, 'vi', 'custom-field/custom-field', 'is_not_equal_to', 'không bằng', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1174, 1, 'vi', 'custom-field/custom-field', 'new_field', 'Thêm trường', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1175, 1, 'vi', 'custom-field/custom-field', 'placeholder_text', 'Gợi ý', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1176, 1, 'vi', 'custom-field/custom-field', 'placeholder_text_description', 'Xuất hiện bên trong trường', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1177, 1, 'vi', 'custom-field/custom-field', 'rows', 'Dòng', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1178, 1, 'vi', 'custom-field/custom-field', 'rows_description', 'Có bao nhiêu dòng cho trường này?', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1179, 1, 'vi', 'custom-field/custom-field', 'rules_description', 'Hiển thị nhóm trường nếu', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1180, 1, 'vi', 'custom-field/custom-field', 'save', 'Lưu', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1181, 1, 'vi', 'custom-field/custom-field', 'save_and_continue', 'Lưu và tiếp tục', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1182, 1, 'vi', 'custom-field/custom-field', 'sort_order', 'Sắp xếp', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1183, 1, 'vi', 'custom-field/custom-field', 'status', 'Trạng thái', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1184, 1, 'vi', 'custom-field/custom-field', 'text', 'text', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1185, 1, 'vi', 'custom-field/custom-field', 'title', 'Tiêu đề', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1186, 1, 'vi', 'custom-field/custom-field', 'rules', 'Luật', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1187, 1, 'vi', 'custom-field/custom-field', 'menu_name', 'Trường tuỳ chỉnh', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1188, 1, 'en', 'dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1189, 1, 'en', 'dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1190, 1, 'en', 'dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1191, 1, 'en', 'dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1192, 1, 'en', 'dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1193, 1, 'en', 'dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1194, 1, 'en', 'dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1195, 1, 'en', 'dashboard/dashboard', 'hide', 'Hide', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1196, 1, 'en', 'dashboard/dashboard', 'reload', 'Reload', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1197, 1, 'en', 'dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1198, 1, 'en', 'dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1199, 1, 'en', 'dashboard/dashboard', 'widget_posts_recent', 'Recent Posts', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1200, 1, 'en', 'dashboard/dashboard', 'widget_analytics_page', 'Top Most Visit Pages', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1201, 1, 'en', 'dashboard/dashboard', 'widget_analytics_browser', 'Top Browsers', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1202, 1, 'en', 'dashboard/dashboard', 'widget_analytics_referrer', 'Top Referrers', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1203, 1, 'en', 'dashboard/dashboard', 'widget_analytics_general', 'Site Analytics', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1204, 1, 'en', 'dashboard/dashboard', 'widget_audit_logs', 'Activities Logs', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1205, 1, 'en', 'dashboard/dashboard', 'widget_request_errors', 'Request Errors', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1206, 1, 'en', 'dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1207, 1, 'en', 'dashboard/dashboard', 'fullscreen', 'Full screen', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1208, 1, 'en', 'dashboard/dashboard', 'title', 'Dashboard', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1209, 1, 'vi', 'dashboard/dashboard', 'cancel_hide_btn', 'Hủy bỏ', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1210, 1, 'vi', 'dashboard/dashboard', 'collapse_expand', 'Mở rộng', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1211, 1, 'vi', 'dashboard/dashboard', 'confirm_hide', 'Bạn có chắc?', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1212, 1, 'vi', 'dashboard/dashboard', 'confirm_hide_btn', 'Vâng, ẩn tiện ích này', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1213, 1, 'vi', 'dashboard/dashboard', 'demo_alert', 'Chào khách, nếu bạn thấy trang demo bị phá hoại, hãy tới <a href=\":link\">trang sao lưu</a> và khôi phục bản sao lưu cuối cùng. Cảm ơn bạn nhiều!', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1214, 1, 'vi', 'dashboard/dashboard', 'hide', 'Ẩn', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1215, 1, 'vi', 'dashboard/dashboard', 'hide_message', 'Bạn có chắc chắn muốn ẩn tiện ích này? Nó sẽ không được hiển thị trên trang chủ nữa!', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1216, 1, 'vi', 'dashboard/dashboard', 'hide_success', 'Ẩn tiện ích thành công!', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1217, 1, 'vi', 'dashboard/dashboard', 'manage_widgets', 'Quản lý tiện ích', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1218, 1, 'vi', 'dashboard/dashboard', 'reload', 'Làm mới', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1219, 1, 'vi', 'dashboard/dashboard', 'save_setting_success', 'Lưu tiện ích thành công', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1220, 1, 'vi', 'dashboard/dashboard', 'update_position_success', 'Cập nhật vị trí tiện ích thành công!', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1221, 1, 'vi', 'dashboard/dashboard', 'widget_not_exists', 'Tiện ích này không tồn tại!', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1222, 1, 'vi', 'dashboard/dashboard', 'page', 'Trang', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1223, 1, 'vi', 'dashboard/dashboard', 'page_description', 'Bạn có :pages trang trong hệ thống. Nhấn vào nút \"Xem tất cả trang\" bên dưới để xem toàn bộ trang.', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1224, 1, 'vi', 'dashboard/dashboard', 'post', 'Bài viết', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1225, 1, 'vi', 'dashboard/dashboard', 'post_description', 'Bạn có :posts bài viết trong hệ thống. Nhấn vào nút \"Xem tất cả bài viết\" bên dưới để xem toàn bộ bài viết.', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1226, 1, 'vi', 'dashboard/dashboard', 'user', 'Thành viên', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1227, 1, 'vi', 'dashboard/dashboard', 'user_description', 'Bạn có :users thành viên trong hệ thống. Nhấn vào nút \"Xem tất cả thành viên\" bên dưới để xem toàn bộ thành viên.', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1228, 1, 'vi', 'dashboard/dashboard', 'view_all_pages', 'Xem tất cả trang', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1229, 1, 'vi', 'dashboard/dashboard', 'view_all_posts', 'Xem tất cả bài viết', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1230, 1, 'vi', 'dashboard/dashboard', 'view_all_users', 'Xem tất cả thành viên', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1231, 1, 'vi', 'dashboard/dashboard', 'widget_analytics_browser', 'Trình duyệt truy cập nhiều', '2017-08-14 17:38:14', '2017-08-14 17:38:14');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1232, 1, 'vi', 'dashboard/dashboard', 'widget_analytics_general', 'Thống kê truy cập', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1233, 1, 'vi', 'dashboard/dashboard', 'widget_analytics_page', 'Trang được xem nhiều nhất', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1234, 1, 'vi', 'dashboard/dashboard', 'widget_analytics_referrer', 'Trang giới thiệu nhiều', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1235, 1, 'vi', 'dashboard/dashboard', 'widget_audit_logs', 'Lịch sử hoạt động', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1236, 1, 'vi', 'dashboard/dashboard', 'widget_posts_recent', 'Bài viết gần đây', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1237, 1, 'vi', 'dashboard/dashboard', 'widget_request_errors', 'Liên kết bị hỏng', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1238, 1, 'en', 'gallery/gallery', 'create', 'Create new gallery', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1239, 1, 'en', 'gallery/gallery', 'edit', 'Edit gallery', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1240, 1, 'en', 'gallery/gallery', 'list', 'List galleries', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1241, 1, 'en', 'gallery/gallery', 'galleries', 'Galleries', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1242, 1, 'en', 'gallery/gallery', 'item', 'Gallery item', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1243, 1, 'en', 'gallery/gallery', 'select_image', 'Select images', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1244, 1, 'en', 'gallery/gallery', 'reset', 'Reset gallery', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1245, 1, 'en', 'gallery/gallery', 'update_photo_description', 'Update photo\'s description', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1246, 1, 'en', 'gallery/gallery', 'update_photo_description_placeholder', 'Photo\'s description...', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1247, 1, 'en', 'gallery/gallery', 'delete_photo', 'Delete this photo', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1248, 1, 'en', 'gallery/gallery', 'gallery_box', 'Gallery images', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1249, 1, 'en', 'gallery/gallery', 'by', 'By', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1250, 1, 'en', 'gallery/gallery', 'menu_name', 'Galleries', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1251, 1, 'vi', 'gallery/gallery', 'create', 'Tạo mới thư viện ảnh', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1252, 1, 'vi', 'gallery/gallery', 'edit', 'Sửa thư viện ảnh', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1253, 1, 'vi', 'gallery/gallery', 'list', 'Thư viện ảnh', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1254, 1, 'vi', 'gallery/gallery', 'delete_photo', 'Xóa ảnh này', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1255, 1, 'vi', 'gallery/gallery', 'galleries', 'Thư viện ảnh', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1256, 1, 'vi', 'gallery/gallery', 'item', 'Ảnh', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1257, 1, 'vi', 'gallery/gallery', 'reset', 'Làm mới thư viện', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1258, 1, 'vi', 'gallery/gallery', 'select_image', 'Lựa chọn hình ảnh', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1259, 1, 'vi', 'gallery/gallery', 'update_photo_description', 'Cập nhật mô tả cho hình ảnh', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1260, 1, 'vi', 'gallery/gallery', 'update_photo_description_placeholder', 'Mô tả của hình ảnh', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1261, 1, 'vi', 'gallery/gallery', 'by', 'Bởi', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1262, 1, 'vi', 'gallery/gallery', 'gallery_box', 'Thư viện ảnh', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1263, 1, 'vi', 'gallery/gallery', 'menu_name', 'Thư viện ảnh', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1264, 1, 'en', 'language/language', 'menu', 'Language', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1265, 1, 'en', 'language/language', 'name', 'Languages', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1266, 1, 'en', 'language/language', 'choose_language', 'Choose a language', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1267, 1, 'en', 'language/language', 'select_language', 'Select language', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1268, 1, 'en', 'language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1269, 1, 'en', 'language/language', 'full_name', 'Full name', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1270, 1, 'en', 'language/language', 'full_name_helper', 'The name is how it is displayed on your site (for example: English).', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1271, 1, 'en', 'language/language', 'locale', 'Locale', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1272, 1, 'en', 'language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>). You will need to create <code>/resources/lang/en</code> directory if it\'s not exists for this language.', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1273, 1, 'en', 'language/language', 'language_code', 'Language code', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1274, 1, 'en', 'language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1275, 1, 'en', 'language/language', 'text_direction', 'Text direction', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1276, 1, 'en', 'language/language', 'text_direction_helper', 'Choose the text direction for the language', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1277, 1, 'en', 'language/language', 'left_to_right', 'Left to right', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1278, 1, 'en', 'language/language', 'right_to_left', 'Right to left', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1279, 1, 'en', 'language/language', 'flag', 'Flag', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1280, 1, 'en', 'language/language', 'flag_helper', 'Choose a flag for the language.', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1281, 1, 'en', 'language/language', 'order', 'Order', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1282, 1, 'en', 'language/language', 'order_helper', 'Position of the language in the language switcher', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1283, 1, 'en', 'language/language', 'add_new_language', 'Add new language', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1284, 1, 'en', 'language/language', 'code', 'Code', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1285, 1, 'en', 'language/language', 'default_language', 'Default language', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1286, 1, 'en', 'language/language', 'actions', 'Actions', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1287, 1, 'en', 'language/language', 'translations', 'Translations', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1288, 1, 'en', 'language/language', 'edit', 'Edit', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1289, 1, 'en', 'language/language', 'edit_tooltip', 'Edit this language', '2017-08-14 17:38:14', '2017-08-14 17:38:14'),
(1290, 1, 'en', 'language/language', 'delete', 'Delete', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1291, 1, 'en', 'language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1292, 1, 'en', 'language/language', 'choose_default_language', 'Choose :language as default language', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1293, 1, 'en', 'language/language', 'current_language', 'Current record\'s language', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1294, 1, 'en', 'language/language', 'edit_related', 'Edit related language for this record', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1295, 1, 'en', 'language/language', 'add_language_for_item', 'Add other language version for this record', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1296, 1, 'en', 'language/language', 'settings', 'Settings', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1297, 1, 'en', 'language/language', 'language_hide_default', 'Hide default language?', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1298, 1, 'en', 'language/language', 'language_display_flag_only', 'Flag only', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1299, 1, 'en', 'language/language', 'language_display_name_only', 'Name only', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1300, 1, 'en', 'language/language', 'language_display_all', 'Display all flag and name', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1301, 1, 'en', 'language/language', 'language_display', 'Language display', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1302, 1, 'en', 'language/language', 'switcher_display', 'Switcher language display', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1303, 1, 'en', 'language/language', 'language_switcher_display_dropdown', 'Dropdown', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1304, 1, 'en', 'language/language', 'language_switcher_display_list', 'List', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1305, 1, 'en', 'language/language', 'current_language_edit_notification', 'You are editing \"<strrong class=\"current_language_text\">:language</strrong>\" version', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1306, 1, 'en', 'language/language', 'confirm-change-language', 'Confirm change language', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1307, 1, 'en', 'language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strrong class=\"change_to_language_text\"></strrong>\" ? This action will be override \"<strrong class=\"change_to_language_text\"></strrong>\" version if it\'s existed!', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1308, 1, 'en', 'language/language', 'confirm-change-language-btn', 'Confirm change', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1309, 1, 'en', 'language/language', 'hide_languages', 'Hide languages', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1310, 1, 'en', 'language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1311, 1, 'en', 'language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1312, 1, 'en', 'language/language', 'show_all', 'Show all', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1313, 1, 'en', 'language/language', 'change_language', 'Language', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1314, 1, 'vi', 'language/language', 'name', 'Ngôn ngữ', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1315, 1, 'vi', 'language/language', 'choose_language', 'Chọn một ngôn ngữ', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1316, 1, 'vi', 'language/language', 'select_language', 'Chọn ngôn ngữ', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1317, 1, 'vi', 'language/language', 'choose_language_helper', 'Bạn có thể chọn 1 ngôn ngữ trong danh sách hoặc nhập trực tiếp nội dung xuống các mục dưới', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1318, 1, 'vi', 'language/language', 'full_name', 'Tên đầy đủ', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1319, 1, 'vi', 'language/language', 'full_name_helper', 'Tên ngôn ngữ sẽ được hiển thị trên website (ví dụ: Tiếng Anh).', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1320, 1, 'vi', 'language/language', 'locale', 'Locale', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1321, 1, 'vi', 'language/language', 'locale_helper', 'Laravel Locale cho ngôn ngữ này (ví dụ: <code>en</code>). Bạn sẽ cần tạo trong <code>/resources/lang/en</code> nếu nó không có sẵn cho ngôn ngữ này.', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1322, 1, 'vi', 'language/language', 'language_code', 'Mã ngôn ngữ', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1323, 1, 'vi', 'language/language', 'language_code_helper', 'Mã ngôn ngữ - ưu tiên dạng 2-kí tự theo chuẩn ISO 639-1 (ví dụ: en)', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1324, 1, 'vi', 'language/language', 'text_direction', 'Hướng viết chữ', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1325, 1, 'vi', 'language/language', 'text_direction_helper', 'Chọn hướng viết chữ cho ngôn ngữ này', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1326, 1, 'vi', 'language/language', 'left_to_right', 'Trái qua phải', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1327, 1, 'vi', 'language/language', 'right_to_left', 'Phải qua trái', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1328, 1, 'vi', 'language/language', 'flag', 'Cờ', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1329, 1, 'vi', 'language/language', 'flag_helper', 'Chọn 1 cờ cho ngôn ngữ này', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1330, 1, 'vi', 'language/language', 'order', 'Sắp xếp', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1331, 1, 'vi', 'language/language', 'order_helper', 'Vị trí của ngôn ngữ hiển thị trong mục chuyển đổi ngôn ngữ', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1332, 1, 'vi', 'language/language', 'add_new_language', 'Thêm ngôn ngữ mới', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1333, 1, 'vi', 'language/language', 'code', 'Mã', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1334, 1, 'vi', 'language/language', 'default_language', 'Ngôn ngữ mặc định', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1335, 1, 'vi', 'language/language', 'actions', 'Hành động', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1336, 1, 'vi', 'language/language', 'translations', 'Dịch', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1337, 1, 'vi', 'language/language', 'edit', 'Sửa', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1338, 1, 'vi', 'language/language', 'edit_tooltip', 'Sửa ngôn ngữ này', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1339, 1, 'vi', 'language/language', 'delete', 'Xóa', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1340, 1, 'vi', 'language/language', 'delete_tooltip', 'Xóa ngôn ngữ này và các dữ liệu liên quan', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1341, 1, 'vi', 'language/language', 'choose_default_language', 'Chọn :language làm ngôn ngữ mặc định', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1342, 1, 'vi', 'language/language', 'add_language_for_item', 'Thêm ngôn ngữ khác cho bản ghi này', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1343, 1, 'vi', 'language/language', 'current_language', 'Ngôn ngữ hiện tại của bản ghi', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1344, 1, 'vi', 'language/language', 'edit_related', 'Sửa bản ngôn ngữ khác của bản ghi này', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1345, 1, 'vi', 'language/language', 'confirm-change-language', 'Xác nhận thay đổi ngôn ngữ', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1346, 1, 'vi', 'language/language', 'confirm-change-language-btn', 'Xác nhận thay đổi', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1347, 1, 'vi', 'language/language', 'confirm-change-language-message', 'Bạn có chắc chắn muốn thay đổi ngôn ngữ sang tiếng \"<strrong class=\"change_to_language_text\"></strrong>\" ? Điều này sẽ ghi đè bản ghi tiếng \"<strrong class=\"change_to_language_text\"></strrong>\" nếu nó đã tồn tại!', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1348, 1, 'vi', 'language/language', 'current_language_edit_notification', 'Bạn đang chỉnh sửa phiên bản tiếng \"<strrong class=\"current_language_text\">:language</strrong>\"', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1349, 1, 'vi', 'language/language', 'hide_languages', 'Ẩn ngôn ngữ', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1350, 1, 'vi', 'language/language', 'hide_languages_description', 'Bạn có thể hoàn toàn ẩn ngôn ngữ cụ thể đối với người truy cập và công cụ tìm kiếm, nhưng sẽ vẫn hiển thị trong trang quản trị. Điều này cho phép bạn biết những ngôn ngữ nào đang được xử lý.', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1351, 1, 'vi', 'language/language', 'hide_languages_helper_display_hidden', '{0} Tất cả ngôn ngữ đang được hiển thị.|{1} :language đang bị ẩn đối với người truy cập.|[2, Inf]  :language đang bị ẩn đối với người truy cập.', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1352, 1, 'vi', 'language/language', 'language_display', 'Hiển thị ngôn ngữ', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1353, 1, 'vi', 'language/language', 'language_display_all', 'Hiển thị cả cờ và tên ngôn ngữ', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1354, 1, 'vi', 'language/language', 'language_display_flag_only', 'Chỉ hiển thị cờ', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1355, 1, 'vi', 'language/language', 'language_display_name_only', 'Chỉ hiển thị tên', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1356, 1, 'vi', 'language/language', 'language_hide_default', 'Ẩn ngôn ngữ mặc định', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1357, 1, 'vi', 'language/language', 'language_switcher_display_dropdown', 'Dropdown', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1358, 1, 'vi', 'language/language', 'language_switcher_display_list', 'Danh sách', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1359, 1, 'vi', 'language/language', 'settings', 'Cài đặt', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1360, 1, 'vi', 'language/language', 'switcher_display', 'Hiển thị bộ chuyển đổi ngôn ngữ', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1361, 1, 'vi', 'language/language', 'menu', 'Ngôn ngữ', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1362, 1, 'en', 'log-viewer/general', 'all', 'All', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1363, 1, 'en', 'log-viewer/general', 'date', 'Date', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1364, 1, 'en', 'log-viewer/general', 'name', 'Log viewer', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1365, 1, 'en', 'log-viewer/levels', 'all', 'All', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1366, 1, 'en', 'log-viewer/levels', 'emergency', 'Emergency', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1367, 1, 'en', 'log-viewer/levels', 'alert', 'Alert', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1368, 1, 'en', 'log-viewer/levels', 'critical', 'Critical', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1369, 1, 'en', 'log-viewer/levels', 'error', 'Error', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1370, 1, 'en', 'log-viewer/levels', 'warning', 'Warning', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1371, 1, 'en', 'log-viewer/levels', 'notice', 'Notice', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1372, 1, 'en', 'log-viewer/levels', 'info', 'Info', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1373, 1, 'en', 'log-viewer/levels', 'debug', 'Debug', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1374, 1, 'en', 'log-viewer/log-viewer', 'system_logs', 'System Logs', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1375, 1, 'en', 'log-viewer/log-viewer', 'system_logs_description', 'View system errors log.', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1376, 1, 'en', 'log-viewer/log-viewer', 'name', 'LogViewers', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1377, 1, 'en', 'log-viewer/log-viewer', 'list', 'List LogViewer', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1378, 1, 'en', 'log-viewer/log-viewer', 'levels', 'Levels', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1379, 1, 'en', 'log-viewer/log-viewer', 'no_error', 'There is no error now.', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1380, 1, 'en', 'log-viewer/log-viewer', 'entries', 'entries', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1381, 1, 'en', 'log-viewer/log-viewer', 'actions', 'Actions', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1382, 1, 'en', 'log-viewer/log-viewer', 'delete_log_file', 'Delete log file', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1383, 1, 'en', 'log-viewer/log-viewer', 'loading', 'Loading...', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1384, 1, 'en', 'log-viewer/log-viewer', 'delete_button', 'Delete file', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1385, 1, 'en', 'log-viewer/log-viewer', 'confirm_delete_msg', 'Are you sure you want to <span class=\"label label-danger\">DELETE</span> this log file <span class=\"label label-primary\"><span class=\"log_date\">:date</span></span> ?', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1386, 1, 'en', 'log-viewer/log-viewer', 'download', 'Download', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1387, 1, 'en', 'log-viewer/log-viewer', 'delete', 'Delete', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1388, 1, 'en', 'log-viewer/log-viewer', 'file_path', 'File path', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1389, 1, 'en', 'log-viewer/log-viewer', 'log_entries', 'Log entries', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1390, 1, 'en', 'log-viewer/log-viewer', 'size', 'Size', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1391, 1, 'en', 'log-viewer/log-viewer', 'page', 'Page', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1392, 1, 'en', 'log-viewer/log-viewer', 'of', 'of', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1393, 1, 'en', 'log-viewer/log-viewer', 'env', 'Env', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1394, 1, 'en', 'log-viewer/log-viewer', 'level', 'Level', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1395, 1, 'en', 'log-viewer/log-viewer', 'time', 'Time', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1396, 1, 'en', 'log-viewer/log-viewer', 'header', 'Header', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1397, 1, 'en', 'log-viewer/log-viewer', 'stack', 'Stack', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1398, 1, 'en', 'log-viewer/log-viewer', 'log_info', 'Log info', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1399, 1, 'en', 'log-viewer/log-viewer', 'menu_name', 'System logs', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1400, 1, 'vi', 'log-viewer/general', 'all', 'Tất cả', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1401, 1, 'vi', 'log-viewer/general', 'date', 'Ngày', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1402, 1, 'vi', 'log-viewer/general', 'name', 'Lỗi hệ thống', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1403, 1, 'vi', 'log-viewer/levels', 'all', 'Tất cả', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1404, 1, 'vi', 'log-viewer/levels', 'emergency', 'Khẩn cấp', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1405, 1, 'vi', 'log-viewer/levels', 'alert', 'Báo động', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1406, 1, 'vi', 'log-viewer/levels', 'critical', 'Nguy kịch', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1407, 1, 'vi', 'log-viewer/levels', 'error', 'Lỗi', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1408, 1, 'vi', 'log-viewer/levels', 'warning', 'Cảnh báo', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1409, 1, 'vi', 'log-viewer/levels', 'notice', 'Chú ý', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1410, 1, 'vi', 'log-viewer/levels', 'info', 'Thông tin', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1411, 1, 'vi', 'log-viewer/levels', 'debug', 'Gỡ lỗi', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1412, 1, 'vi', 'log-viewer/log-viewer', 'name', 'LogViewers', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1413, 1, 'vi', 'log-viewer/log-viewer', 'list', 'List LogViewer', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1414, 1, 'vi', 'log-viewer/log-viewer', 'actions', 'Hành động', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1415, 1, 'vi', 'log-viewer/log-viewer', 'confirm_delete_msg', 'Bạn có chắc muốn <span class=\"label label-danger\">XÓA</span> tập tin này <span class=\"label label-primary\"><span class=\"log_date\">:date</span></span> ?', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1416, 1, 'vi', 'log-viewer/log-viewer', 'delete', 'Xóa', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1417, 1, 'vi', 'log-viewer/log-viewer', 'delete_button', 'Xóa tập tin', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1418, 1, 'vi', 'log-viewer/log-viewer', 'delete_log_file', 'Xóa tập tin', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1419, 1, 'vi', 'log-viewer/log-viewer', 'download', 'Tải xuống', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1420, 1, 'vi', 'log-viewer/log-viewer', 'entries', 'bản ghi', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1421, 1, 'vi', 'log-viewer/log-viewer', 'env', 'Môi trường', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1422, 1, 'vi', 'log-viewer/log-viewer', 'file_path', 'Đường dẫn', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1423, 1, 'vi', 'log-viewer/log-viewer', 'header', 'Header', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1424, 1, 'vi', 'log-viewer/log-viewer', 'level', 'Cấp độ', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1425, 1, 'vi', 'log-viewer/log-viewer', 'levels', 'Cấp độ', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1426, 1, 'vi', 'log-viewer/log-viewer', 'loading', 'Đang tải...', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1427, 1, 'vi', 'log-viewer/log-viewer', 'log_entries', 'Bản ghi nhật ký', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1428, 1, 'vi', 'log-viewer/log-viewer', 'log_info', 'Bản ghi thông tin', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1429, 1, 'vi', 'log-viewer/log-viewer', 'no_error', 'Hiện tại không có lỗi trong hệ thống', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1430, 1, 'vi', 'log-viewer/log-viewer', 'of', 'trong tổng số', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1431, 1, 'vi', 'log-viewer/log-viewer', 'page', 'Trang', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1432, 1, 'vi', 'log-viewer/log-viewer', 'size', 'Kích thước', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1433, 1, 'vi', 'log-viewer/log-viewer', 'stack', 'Chi tiết', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1434, 1, 'vi', 'log-viewer/log-viewer', 'time', 'Thời gian', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1435, 1, 'vi', 'log-viewer/log-viewer', 'menu_name', 'Lỗi hệ thống', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1436, 1, 'en', 'media/media', 'filter', 'Filter', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1437, 1, 'en', 'media/media', 'everything', 'Everything', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1438, 1, 'en', 'media/media', 'image', 'Image', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1439, 1, 'en', 'media/media', 'video', 'Video', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1440, 1, 'en', 'media/media', 'document', 'Document', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1441, 1, 'en', 'media/media', 'view_in', 'View in', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1442, 1, 'en', 'media/media', 'all_media', 'All media', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1443, 1, 'en', 'media/media', 'my_media', 'My media', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1444, 1, 'en', 'media/media', 'public', 'Public', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1445, 1, 'en', 'media/media', 'shared_with_me', 'Shared with me', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1446, 1, 'en', 'media/media', 'shared', 'Shared', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1447, 1, 'en', 'media/media', 'trash', 'Trash', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1448, 1, 'en', 'media/media', 'recent', 'Recent', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1449, 1, 'en', 'media/media', 'favorites', 'Favorites', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1450, 1, 'en', 'media/media', 'upload', 'Upload', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1451, 1, 'en', 'media/media', 'add_from', 'Add from', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1452, 1, 'en', 'media/media', 'youtube', 'Youtube', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1453, 1, 'en', 'media/media', 'vimeo', 'Vimeo', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1454, 1, 'en', 'media/media', 'vine', 'Vine', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1455, 1, 'en', 'media/media', 'daily_motion', 'Dailymotion', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1456, 1, 'en', 'media/media', 'create_folder', 'Create folder', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1457, 1, 'en', 'media/media', 'refresh', 'Refresh', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1458, 1, 'en', 'media/media', 'empty_trash', 'Empty trash', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1459, 1, 'en', 'media/media', 'search_file_and_folder', 'Search file and folder', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1460, 1, 'en', 'media/media', 'sort', 'Sort', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1461, 1, 'en', 'media/media', 'file_name_asc', 'File name - ASC', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1462, 1, 'en', 'media/media', 'file_name_desc', 'File name - DESC', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1463, 1, 'en', 'media/media', 'created_date_asc', 'Created date - ASC', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1464, 1, 'en', 'media/media', 'created_date_desc', 'Created_date - DESC', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1465, 1, 'en', 'media/media', 'uploaded_date_asc', 'Uploaed date - ASC', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1466, 1, 'en', 'media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1467, 1, 'en', 'media/media', 'size_asc', 'Size - ASC', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1468, 1, 'en', 'media/media', 'size_desc', 'Size - DESC', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1469, 1, 'en', 'media/media', 'actions', 'Actions', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1470, 1, 'en', 'media/media', 'nothing_is_selected', 'Nothing is selected', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1471, 1, 'en', 'media/media', 'insert', 'Insert', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1472, 1, 'en', 'media/media', 'comming_soon', 'Comming soon', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1473, 1, 'en', 'media/media', 'add_from_youtube', 'Add from youtube', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1474, 1, 'en', 'media/media', 'playlist', 'Playlist', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1475, 1, 'en', 'media/media', 'add_url', 'Add URL', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1476, 1, 'en', 'media/media', 'folder_name', 'Folder name', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1477, 1, 'en', 'media/media', 'create', 'Create', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1478, 1, 'en', 'media/media', 'rename', 'Rename', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1479, 1, 'en', 'media/media', 'close', 'Close', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1480, 1, 'en', 'media/media', 'save_changes', 'Save changes', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1481, 1, 'en', 'media/media', 'set_focus_point', 'Set focus point', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1482, 1, 'en', 'media/media', 'set_focus_description', 'Click the image to set the FocusPoint.', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1483, 1, 'en', 'media/media', 'focus_data_attribute', 'FocusPoint data- attributes', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1484, 1, 'en', 'media/media', 'focus_css_background', 'CSS3 Background Position', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1485, 1, 'en', 'media/media', 'move_to_trash', 'Move items to trash', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1486, 1, 'en', 'media/media', 'confirm_trash', 'Are you sure you wanna move these items to trash?', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1487, 1, 'en', 'media/media', 'confirm', 'Confirm', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1488, 1, 'en', 'media/media', 'confirm_delete', 'Delete item(s)', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1489, 1, 'en', 'media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1490, 1, 'en', 'media/media', 'empty_trash_title', 'Empty trash', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1491, 1, 'en', 'media/media', 'empty_trash_description', 'Your request cannot rollback.Are you sure you wanna remove all items in trash?', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1492, 1, 'en', 'media/media', 'share_title', 'Share item(s)', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1493, 1, 'en', 'media/media', 'share_to', 'Share to', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1494, 1, 'en', 'media/media', 'do_not_share', 'Do not share these files', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1495, 1, 'en', 'media/media', 'share_everyone', 'Everyone', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1496, 1, 'en', 'media/media', 'share_to_specific_users', 'Specific users', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1497, 1, 'en', 'media/media', 'up_level', 'Up one level', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1498, 1, 'en', 'media/media', 'please_select_user', 'Please select users', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1499, 1, 'en', 'media/media', 'upload_progress', 'Upload progress', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1500, 1, 'en', 'media/media', 'name_reserved', 'The name is reserved', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1501, 1, 'en', 'media/media', 'folder_created', 'Folder is created successfully!', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1502, 1, 'en', 'media/media', 'invalid_share', 'Share is not valid!', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1503, 1, 'en', 'media/media', 'gallery', 'Media gallery', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1504, 1, 'en', 'media/media', 'trash_error', 'Error when delete selected item(s)', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1505, 1, 'en', 'media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2017-08-14 17:38:15', '2017-08-14 17:38:15'),
(1506, 1, 'en', 'media/media', 'restore_error', 'Error when restore selected item(s)', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1507, 1, 'en', 'media/media', 'restore_success', 'Restore selected item(s) successfully!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1508, 1, 'en', 'media/media', 'copy_success', 'Copied selected item(s) successfully!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1509, 1, 'en', 'media/media', 'no_user_selected', 'There is no user selected!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1510, 1, 'en', 'media/media', 'share_success', 'Shared selected item(s) successfully!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1511, 1, 'en', 'media/media', 'un_share_success', 'Remove share selected item(s) successfully!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1512, 1, 'en', 'media/media', 'remove_share_success', 'Remove share selected item(s) successfully!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1513, 1, 'en', 'media/media', 'set_focus_success', 'Set focus point successfully!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1514, 1, 'en', 'media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1515, 1, 'en', 'media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1516, 1, 'en', 'media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1517, 1, 'en', 'media/media', 'is_reserved_name', ':name is reserved name!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1518, 1, 'en', 'media/media', 'rename_error', 'Error when rename item(s)', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1519, 1, 'en', 'media/media', 'rename_success', 'Rename selected item(s) successfully!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1520, 1, 'en', 'media/media', 'emty_trash_success', 'Empty trash successfully!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1521, 1, 'en', 'media/media', 'invalid_action', 'Invalid action!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1522, 1, 'en', 'media/media', 'file_not_exists', 'File is not exists!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1523, 1, 'en', 'media/media', 'download_file_error', 'Error when downloading files!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1524, 1, 'en', 'media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1525, 1, 'en', 'media/media', 'can_not_download_file', 'Can not download this file!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1526, 1, 'en', 'media/media', 'invalid_request', 'Invalid request!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1527, 1, 'en', 'media/media', 'add_success', 'Add item successfully!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1528, 1, 'en', 'media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1529, 1, 'en', 'media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1530, 1, 'en', 'media/media', 'menu_name', 'Media', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1531, 1, 'en', 'media/media', 'add', 'Add media', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1532, 1, 'en', 'media/media', 'javascript.name', 'Name', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1533, 1, 'en', 'media/media', 'javascript.url', 'Url', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1534, 1, 'en', 'media/media', 'javascript.full_url', 'Full url', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1535, 1, 'en', 'media/media', 'javascript.size', 'Size', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1536, 1, 'en', 'media/media', 'javascript.mime_type', 'Type', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1537, 1, 'en', 'media/media', 'javascript.created_at', 'Uploaded at', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1538, 1, 'en', 'media/media', 'javascript.updated_at', 'Modified at', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1539, 1, 'en', 'media/media', 'javascript.nothing_selected', 'Nothing is selected', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1540, 1, 'en', 'media/media', 'javascript.visit_link', 'Open link', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1541, 1, 'en', 'media/media', 'javascript.add_from.youtube.original_msg', 'Please input Youtube URL', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1542, 1, 'en', 'media/media', 'javascript.add_from.youtube.no_api_key_msg', 'Please specify the Youtube API key', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1543, 1, 'en', 'media/media', 'javascript.add_from.youtube.invalid_url_msg', 'Your link is not belongs to Youtube', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1544, 1, 'en', 'media/media', 'javascript.add_from.youtube.error_msg', 'Some error occurred...', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1545, 1, 'en', 'media/media', 'javascript.no_item.my_media.title', 'Drop files and folders here', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1546, 1, 'en', 'media/media', 'javascript.no_item.my_media.message', 'Or use the upload button above', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1547, 1, 'en', 'media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1548, 1, 'en', 'media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1549, 1, 'en', 'media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1550, 1, 'en', 'media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1551, 1, 'en', 'media/media', 'javascript.no_item.shared.title', 'You have not shared anything', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1552, 1, 'en', 'media/media', 'javascript.no_item.shared.message', 'Any files in shared place will be visible to people that you shared', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1553, 1, 'en', 'media/media', 'javascript.no_item.shared_with_me.title', 'You have not received anything from others', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1554, 1, 'en', 'media/media', 'javascript.no_item.shared_with_me.message', 'Nothing here', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1555, 1, 'en', 'media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1556, 1, 'en', 'media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1557, 1, 'en', 'media/media', 'javascript.no_item.public.title', 'No public items', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1558, 1, 'en', 'media/media', 'javascript.no_item.public.message', 'This directory has no item', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1559, 1, 'en', 'media/media', 'javascript.no_item.default.title', 'No items', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1560, 1, 'en', 'media/media', 'javascript.no_item.default.message', 'This directory has no item', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1561, 1, 'en', 'media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1562, 1, 'en', 'media/media', 'javascript.message.error_header', 'Error', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1563, 1, 'en', 'media/media', 'javascript.message.success_header', 'Success', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1564, 1, 'en', 'media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1565, 1, 'en', 'media/media', 'javascript.actions_list.basic.preview', 'Preview', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1566, 1, 'en', 'media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1567, 1, 'en', 'media/media', 'javascript.actions_list.file.rename', 'Rename', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1568, 1, 'en', 'media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1569, 1, 'en', 'media/media', 'javascript.actions_list.file.set_focus_point', 'Set focus point', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1570, 1, 'en', 'media/media', 'javascript.actions_list.user.share', 'Share', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1571, 1, 'en', 'media/media', 'javascript.actions_list.user.remove_share', 'Remove share', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1572, 1, 'en', 'media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1573, 1, 'en', 'media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1574, 1, 'en', 'media/media', 'javascript.actions_list.other.download', 'Download', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1575, 1, 'en', 'media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1576, 1, 'en', 'media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1577, 1, 'en', 'media/media', 'javascript.actions_list.other.restore', 'Restore', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1578, 1, 'vi', 'media/media', 'filter', 'Lọc', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1579, 1, 'vi', 'media/media', 'everything', 'Tất cả', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1580, 1, 'vi', 'media/media', 'image', 'Hình ảnh', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1581, 1, 'vi', 'media/media', 'video', 'Phim', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1582, 1, 'vi', 'media/media', 'document', 'Tài liệu', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1583, 1, 'vi', 'media/media', 'view_in', 'Chế độ xem', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1584, 1, 'vi', 'media/media', 'all_media', 'Tất cả tập tin', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1585, 1, 'vi', 'media/media', 'my_media', 'Tập tin của tôi', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1586, 1, 'vi', 'media/media', 'public', 'Công khai', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1587, 1, 'vi', 'media/media', 'shared_with_me', 'Được chia sẻ với tôi', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1588, 1, 'vi', 'media/media', 'shared', 'Đã chia sẻ', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1589, 1, 'vi', 'media/media', 'trash', 'Thùng rác', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1590, 1, 'vi', 'media/media', 'recent', 'Gần đây', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1591, 1, 'vi', 'media/media', 'favorites', 'Được gắn dấu sao', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1592, 1, 'vi', 'media/media', 'upload', 'Tải lên', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1593, 1, 'vi', 'media/media', 'add_from', 'Thêm từ', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1594, 1, 'vi', 'media/media', 'youtube', 'Youtube', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1595, 1, 'vi', 'media/media', 'vimeo', 'Vimeo', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1596, 1, 'vi', 'media/media', 'vine', 'Vine', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1597, 1, 'vi', 'media/media', 'daily_motion', 'Dailymotion', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1598, 1, 'vi', 'media/media', 'create_folder', 'Tạo thư mục', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1599, 1, 'vi', 'media/media', 'refresh', 'Làm mới', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1600, 1, 'vi', 'media/media', 'empty_trash', 'Dọn thùng rác', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1601, 1, 'vi', 'media/media', 'search_file_and_folder', 'Tìm kiếm tập tin và thư mục', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1602, 1, 'vi', 'media/media', 'sort', 'Sắp xếp', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1603, 1, 'vi', 'media/media', 'file_name_asc', 'Tên tập tin - ASC', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1604, 1, 'vi', 'media/media', 'file_name_desc', 'Tên tập tin - DESC', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1605, 1, 'vi', 'media/media', 'created_date_asc', 'Ngày tạo - ASC', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1606, 1, 'vi', 'media/media', 'created_date_desc', 'Ngày tạo - DESC', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1607, 1, 'vi', 'media/media', 'uploaded_date_asc', 'Ngày tải lên - ASC', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1608, 1, 'vi', 'media/media', 'uploaded_date_desc', 'Ngày tải lên - DESC', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1609, 1, 'vi', 'media/media', 'size_asc', 'Kích thước - ASC', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1610, 1, 'vi', 'media/media', 'size_desc', 'Kích thước - DESC', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1611, 1, 'vi', 'media/media', 'actions', 'Hành động', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1612, 1, 'vi', 'media/media', 'nothing_is_selected', 'Không có tập tin nào được chọn', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1613, 1, 'vi', 'media/media', 'insert', 'Chèn', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1614, 1, 'vi', 'media/media', 'comming_soon', 'Đang phát triển', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1615, 1, 'vi', 'media/media', 'add_from_youtube', 'Thêm từ youtube', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1616, 1, 'vi', 'media/media', 'playlist', 'Playlist', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1617, 1, 'vi', 'media/media', 'add_url', 'Thêm đường dẫn', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1618, 1, 'vi', 'media/media', 'folder_name', 'Tên thư mục', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1619, 1, 'vi', 'media/media', 'create', 'Tạo', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1620, 1, 'vi', 'media/media', 'rename', 'Đổi tên', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1621, 1, 'vi', 'media/media', 'close', 'Đóng', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1622, 1, 'vi', 'media/media', 'save_changes', 'Lưu thay đổi', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1623, 1, 'vi', 'media/media', 'set_focus_point', 'Thiết lập điểm focus', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1624, 1, 'vi', 'media/media', 'set_focus_description', 'Nhấn lên hình để thiết lập điểm focus', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1625, 1, 'vi', 'media/media', 'focus_data_attribute', 'FocusPoint data- attributes', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1626, 1, 'vi', 'media/media', 'focus_css_background', 'CSS3 Background Position', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1627, 1, 'vi', 'media/media', 'move_to_trash', 'Đưa vào thùng rác', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1628, 1, 'vi', 'media/media', 'confirm_trash', 'Bạn có chắc chắn muốn bỏ những tập tin này vào thùng rác?', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1629, 1, 'vi', 'media/media', 'confirm', 'Xác nhận', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1630, 1, 'vi', 'media/media', 'confirm_delete', 'Xóa tập tin', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1631, 1, 'vi', 'media/media', 'confirm_delete_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn xóa các tập tin này?', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1632, 1, 'vi', 'media/media', 'empty_trash_title', 'Dọn sạch thùng rác', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1633, 1, 'vi', 'media/media', 'empty_trash_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn dọn sạch thùng rác?', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1634, 1, 'vi', 'media/media', 'share_title', 'Chia sẻ tập tin/thư mục', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1635, 1, 'vi', 'media/media', 'share_to', 'Chia sẻ với', '2017-08-14 17:38:16', '2017-08-14 17:38:16');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1636, 1, 'vi', 'media/media', 'do_not_share', 'Không chia sẻ với ai', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1637, 1, 'vi', 'media/media', 'share_everyone', 'Tất cả mọi người', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1638, 1, 'vi', 'media/media', 'share_to_specific_users', 'Những người cụ thể', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1639, 1, 'vi', 'media/media', 'up_level', 'Quay lại một cấp', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1640, 1, 'vi', 'media/media', 'please_select_user', 'Hãy lựa chọn người muốn chia sẻ', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1641, 1, 'vi', 'media/media', 'upload_progress', 'Tiến trình tải lên', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1642, 1, 'vi', 'media/media', 'name_reserved', 'Tên này không được phép đặt', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1643, 1, 'vi', 'media/media', 'folder_created', 'Tạo thư mục thành công!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1644, 1, 'vi', 'media/media', 'share_success', 'Chia sẻ thành công!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1645, 1, 'vi', 'media/media', 'invalid_share', 'Chia sẻ không hợp lệ!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1646, 1, 'vi', 'media/media', 'gallery', 'Thư viện tập tin', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1647, 1, 'vi', 'media/media', 'trash_error', 'Có lỗi khi xóa tập tin/thư mục', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1648, 1, 'vi', 'media/media', 'trash_success', 'Xóa tập tin/thư mục thành công!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1649, 1, 'vi', 'media/media', 'restore_error', 'Có lỗi trong quá trình khôi phục', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1650, 1, 'vi', 'media/media', 'restore_success', 'Khôi phục thành công!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1651, 1, 'vi', 'media/media', 'copy_success', 'Sao chép thành công!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1652, 1, 'vi', 'media/media', 'no_user_selected', 'Không có thành viên nào được chọn!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1653, 1, 'vi', 'media/media', 'un_share_success', 'Bỏ chia sẻ thành công!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1654, 1, 'vi', 'media/media', 'remove_share_success', 'Xóa chia sẻ thành công!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1655, 1, 'vi', 'media/media', 'set_focus_success', 'Thiết lập điểm focus thành công!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1656, 1, 'vi', 'media/media', 'delete_success', 'Xóa thành công!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1657, 1, 'vi', 'media/media', 'favorite_success', 'Thêm dấu sao thành công!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1658, 1, 'vi', 'media/media', 'remove_favorite_success', 'Bỏ dấu sao thành công!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1659, 1, 'vi', 'media/media', 'is_reserved_name', ':name không được phép đặt!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1660, 1, 'vi', 'media/media', 'rename_error', 'Có lỗi trong quá trình đổi tên', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1661, 1, 'vi', 'media/media', 'rename_success', 'Đổi tên thành công!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1662, 1, 'vi', 'media/media', 'emty_trash_success', 'Dọn sạch thùng rác thành công!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1663, 1, 'vi', 'media/media', 'invalid_action', 'Hành động không hợp lệ!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1664, 1, 'vi', 'media/media', 'file_not_exists', 'Tập tin không tồn tại!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1665, 1, 'vi', 'media/media', 'download_file_error', 'Có lỗi trong quá trình tải xuống tập tin!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1666, 1, 'vi', 'media/media', 'missing_zip_archive_extension', 'Hãy bật ZipArchive extension để tải tập tin!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1667, 1, 'vi', 'media/media', 'can_not_download_file', 'Không thể tải tập tin!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1668, 1, 'vi', 'media/media', 'invalid_request', 'Yêu cầu không hợp lệ!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1669, 1, 'vi', 'media/media', 'add_success', 'Thêm thành công!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1670, 1, 'vi', 'media/media', 'file_too_big', 'Tập tin quá lớn. Giới hạn tải lên là :size bytes', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1671, 1, 'vi', 'media/media', 'can_not_detect_file_type', 'Loại tập tin không hợp lệ hoặc không thể xác định loại tập tin!', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1672, 1, 'vi', 'media/media', 'menu_name', 'Quản lý tập tin', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1673, 1, 'vi', 'media/media', 'add', 'Thêm tập tin', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1674, 1, 'vi', 'media/media', 'javascript.name', 'Tên', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1675, 1, 'vi', 'media/media', 'javascript.url', 'Đường dẫn', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1676, 1, 'vi', 'media/media', 'javascript.full_url', 'Đường dẫn tuyệt đối', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1677, 1, 'vi', 'media/media', 'javascript.size', 'Kích thước', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1678, 1, 'vi', 'media/media', 'javascript.mime_type', 'Loại', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1679, 1, 'vi', 'media/media', 'javascript.created_at', 'Được tải lên lúc', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1680, 1, 'vi', 'media/media', 'javascript.updated_at', 'Được chỉnh sửa lúc', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1681, 1, 'vi', 'media/media', 'javascript.nothing_selected', 'Bạn chưa chọn tập tin nào', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1682, 1, 'vi', 'media/media', 'javascript.visit_link', 'Mở liên kết', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1683, 1, 'vi', 'media/media', 'javascript.add_from.youtube.original_msg', 'Vui lòng nhập chính xác đường dẫn Youtube', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1684, 1, 'vi', 'media/media', 'javascript.add_from.youtube.no_api_key_msg', 'Vui lòng khai báo API key của Youtube', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1685, 1, 'vi', 'media/media', 'javascript.add_from.youtube.invalid_url_msg', 'Liên kết này không dẫn đến Youtube', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1686, 1, 'vi', 'media/media', 'javascript.add_from.youtube.error_msg', 'Có lỗi xảy ra trong tiến trình thực hiện...', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1687, 1, 'vi', 'media/media', 'javascript.no_item.my_media.title', 'Bạn có thể kéo thả tập tin vào đây để tải lên', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1688, 1, 'vi', 'media/media', 'javascript.no_item.my_media.message', 'Hoặc có thể bấm nút Tải lên ở phía trên', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1689, 1, 'vi', 'media/media', 'javascript.no_item.trash.title', 'Hiện tại không có tập tin nào trong thùng rác', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1690, 1, 'vi', 'media/media', 'javascript.no_item.trash.message', 'Xóa tập tin sẽ đem tập tin lưu vào thùng rác. Xóa tập tin trong thùng rác sẽ xóa vĩnh viễn.', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1691, 1, 'vi', 'media/media', 'javascript.no_item.favorites.title', 'Bạn chưa đặt tập tin nào vào mục yêu thích', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1692, 1, 'vi', 'media/media', 'javascript.no_item.favorites.message', 'Thêm tập tin vào mục yêu thích để tìm kiếm chúng dễ dàng sau này.', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1693, 1, 'vi', 'media/media', 'javascript.no_item.shared.title', 'Bạn chưa chia sẻ gì cả', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1694, 1, 'vi', 'media/media', 'javascript.no_item.shared.message', 'Các tập tin trong mục này sẽ được hiển thị cho những người mà bạn chia sẻ', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1695, 1, 'vi', 'media/media', 'javascript.no_item.shared_with_me.title', 'Bạn chưa nhận tập tin chia sẻ nào từ người khác', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1696, 1, 'vi', 'media/media', 'javascript.no_item.shared_with_me.message', 'Thư mục trống', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1697, 1, 'vi', 'media/media', 'javascript.no_item.recent.title', 'Bạn chưa mở tập tin nào.', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1698, 1, 'vi', 'media/media', 'javascript.no_item.recent.message', 'Mục này hiển thị các tập tin bạn đã xem gần đây.', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1699, 1, 'vi', 'media/media', 'javascript.no_item.public.title', 'Không có tập tin nào trong thư mục công cộng', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1700, 1, 'vi', 'media/media', 'javascript.no_item.public.message', 'Thư mục này hiển thị các tập tin được chia sẻ cho cộng đồng', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1701, 1, 'vi', 'media/media', 'javascript.no_item.default.title', 'Thư mục trống', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1702, 1, 'vi', 'media/media', 'javascript.no_item.default.message', 'Thư mục này chưa có tập tin nào', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1703, 1, 'vi', 'media/media', 'javascript.clipboard.success', 'Đường dẫn của các tập tin đã được sao chép vào clipboard', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1704, 1, 'vi', 'media/media', 'javascript.message.error_header', 'Lỗi', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1705, 1, 'vi', 'media/media', 'javascript.message.success_header', 'Thành công', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1706, 1, 'vi', 'media/media', 'javascript.download.error', 'Bạn chưa chọn tập tin nào hoặc tập tin này không cho phép tải về', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1707, 1, 'vi', 'media/media', 'javascript.actions_list.basic.preview', 'Xem trước', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1708, 1, 'vi', 'media/media', 'javascript.actions_list.file.copy_link', 'Sao chép đường dẫn', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1709, 1, 'vi', 'media/media', 'javascript.actions_list.file.rename', 'Đổi tên', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1710, 1, 'vi', 'media/media', 'javascript.actions_list.file.make_copy', 'Nhân bản', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1711, 1, 'vi', 'media/media', 'javascript.actions_list.file.set_focus_point', 'Thiết đặt focus point', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1712, 1, 'vi', 'media/media', 'javascript.actions_list.user.share', 'Chia sẻ', '2017-08-14 17:38:16', '2017-08-14 17:38:16'),
(1713, 1, 'vi', 'media/media', 'javascript.actions_list.user.remove_share', 'Xóa chia sẻ', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1714, 1, 'vi', 'media/media', 'javascript.actions_list.user.favorite', 'Yêu thích', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1715, 1, 'vi', 'media/media', 'javascript.actions_list.user.remove_favorite', 'Xóa khỏi mục yêu thích', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1716, 1, 'vi', 'media/media', 'javascript.actions_list.other.download', 'Tải xuống', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1717, 1, 'vi', 'media/media', 'javascript.actions_list.other.trash', 'Chuyển vào thùng rác', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1718, 1, 'vi', 'media/media', 'javascript.actions_list.other.delete', 'Xóa hoàn toàn', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1719, 1, 'vi', 'media/media', 'javascript.actions_list.other.restore', 'Khôi phục', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1720, 1, 'en', 'menu/menu', 'name', 'Menu', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1721, 1, 'en', 'menu/menu', 'key_name', 'Menu name (key: :key)', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1722, 1, 'en', 'menu/menu', 'basic_info', 'Basic information', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1723, 1, 'en', 'menu/menu', 'add_to_menu', 'Add to menu', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1724, 1, 'en', 'menu/menu', 'custom_link', 'Custom link', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1725, 1, 'en', 'menu/menu', 'add_link', 'Add link', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1726, 1, 'en', 'menu/menu', 'structure', 'Menu structure', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1727, 1, 'en', 'menu/menu', 'remove', 'Remove', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1728, 1, 'en', 'menu/menu', 'cancel', 'Cancel', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1729, 1, 'en', 'menu/menu', 'title', 'Title', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1730, 1, 'en', 'menu/menu', 'icon', 'Icon', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1731, 1, 'en', 'menu/menu', 'url', 'URL', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1732, 1, 'en', 'menu/menu', 'target', 'Target', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1733, 1, 'en', 'menu/menu', 'css_class', 'CSS class', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1734, 1, 'en', 'menu/menu', 'self_open_link', 'Open link directly', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1735, 1, 'en', 'menu/menu', 'blank_open_link', 'Open link in new tab', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1736, 1, 'en', 'menu/menu', 'create', 'Create menu', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1737, 1, 'en', 'menu/menu', 'edit', 'Edit menu', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1738, 1, 'vi', 'menu/menu', 'name', 'Menu', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1739, 1, 'vi', 'menu/menu', 'cancel', 'Hủy bỏ', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1740, 1, 'vi', 'menu/menu', 'add_link', 'Thêm liên kết', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1741, 1, 'vi', 'menu/menu', 'add_to_menu', 'Thêm vào trình đơn', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1742, 1, 'vi', 'menu/menu', 'basic_info', 'Thông tin cơ bản', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1743, 1, 'vi', 'menu/menu', 'blank_open_link', 'Mở liên kết trong tab mới', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1744, 1, 'vi', 'menu/menu', 'categories', 'Danh mục', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1745, 1, 'vi', 'menu/menu', 'css_class', 'CSS class', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1746, 1, 'vi', 'menu/menu', 'custom_link', 'Liên kết tùy chọn', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1747, 1, 'vi', 'menu/menu', 'icon', 'Biểu tượng', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1748, 1, 'vi', 'menu/menu', 'key_name', 'Tên menu (key::key)', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1749, 1, 'vi', 'menu/menu', 'pages', 'Trang', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1750, 1, 'vi', 'menu/menu', 'remove', 'Xóa', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1751, 1, 'vi', 'menu/menu', 'self_open_link', 'Mở liên kết trong tab hiện tại', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1752, 1, 'vi', 'menu/menu', 'structure', 'Cấu trúc trình đơn', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1753, 1, 'vi', 'menu/menu', 'tags', 'Thẻ', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1754, 1, 'vi', 'menu/menu', 'target', 'Target', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1755, 1, 'vi', 'menu/menu', 'title', 'Tiêu đề', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1756, 1, 'vi', 'menu/menu', 'url', 'URL', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1757, 1, 'en', 'menu-left-hand/menu_left_hand', 'create', 'Create Left-Hand menu item', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1758, 1, 'en', 'menu-left-hand/menu_left_hand', 'kind', 'Kind', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1759, 1, 'en', 'menu-left-hand/menu_left_hand', 'name', 'Name', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1760, 1, 'en', 'menu-left-hand/menu_left_hand', 'feature', 'Feature', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1761, 1, 'en', 'menu-left-hand/menu_left_hand', 'none', 'None', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1762, 1, 'en', 'menu-left-hand/menu_left_hand', 'icon', 'Icon', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1763, 1, 'en', 'menu-left-hand/menu_left_hand', 'config', 'Config Left-Hand menu', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1764, 1, 'en', 'menu-left-hand/menu_left_hand', 'expand_all', 'Expand all', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1765, 1, 'en', 'menu-left-hand/menu_left_hand', 'collapse_all', 'Collapse All', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1766, 1, 'en', 'menu-left-hand/menu_left_hand', 'more_options', 'More Options', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1767, 1, 'en', 'menu-left-hand/menu_left_hand', 'reset_default', 'Reset menu items to system defaults', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1768, 1, 'en', 'menu-left-hand/menu_left_hand', 'reset_last_save', 'Reset menu items to last saved', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1769, 1, 'en', 'menu-left-hand/menu_left_hand', 'cancel', 'Cancel', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1770, 1, 'en', 'menu-left-hand/menu_left_hand', 'save', 'Save Changes', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1771, 1, 'en', 'menu-left-hand/menu_left_hand', 'edit', 'Edit', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1772, 1, 'en', 'menu-left-hand/menu_left_hand', 'new', 'New', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1773, 1, 'en', 'menu-left-hand/menu_left_hand', 'default_name', 'Default Name', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1774, 1, 'en', 'menu-left-hand/menu_left_hand', 'new_name', 'New Name', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1775, 1, 'en', 'menu-left-hand/menu_left_hand', 'delete_btn', 'Delete Menu Item', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1776, 1, 'en', 'menu-left-hand/menu_left_hand', 'update_btn', 'Update', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1777, 1, 'en', 'menu-left-hand/menu_left_hand', 'create_btn', 'Create', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1778, 1, 'en', 'menu-left-hand/menu_left_hand', 'confirm_delete_line', 'Do you want to delete the menu item:', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1779, 1, 'en', 'menu-left-hand/menu_left_hand', 'confirm_delete_content', 'This will move any sub-menu items within it to the top level.', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1780, 1, 'en', 'menu-left-hand/menu_left_hand', 'no', 'No', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1781, 1, 'en', 'menu-left-hand/menu_left_hand', 'yes', 'Yes', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1782, 1, 'en', 'menu-left-hand/menu_left_hand', 'reset_menu', 'Reset Menu Items', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1783, 1, 'en', 'menu-left-hand/menu_left_hand', 'confirm_reset_default', 'Are you sure you want to reset the menu items to the system defaults?', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1784, 1, 'en', 'menu-left-hand/menu_left_hand', 'confirm_reset_last_save', 'Are you sure you want to reset the menu items to last saved items?', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1785, 1, 'en', 'menu-left-hand/menu_left_hand', 'before', 'Before', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1786, 1, 'en', 'menu-left-hand/menu_left_hand', 'after', 'After', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1787, 1, 'en', 'menu-left-hand/menu_left_hand', 'insert', 'Insert', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1788, 1, 'en', 'menu-left-hand/menu_left_hand', 'icon_helper', 'Please go to <a href=\"http://fontawesome.io/icons/\" target=\"_blank\">Font Awesome</a> or <a href=\"http://simplelineicons.com/\" target=\"_blank\">Simple Line Icons</a> to see what icon can used in our system.', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1789, 1, 'en', 'menu-left-hand/menu_left_hand', 'Dashboard', 'Dashboard', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1790, 1, 'en', 'menu-left-hand/menu_left_hand', 'Pages', 'Pages', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1791, 1, 'en', 'menu-left-hand/menu_left_hand', 'Posts', 'Posts', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1792, 1, 'en', 'menu-left-hand/menu_left_hand', 'All posts', 'All posts', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1793, 1, 'en', 'menu-left-hand/menu_left_hand', 'Categories', 'Categories', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1794, 1, 'en', 'menu-left-hand/menu_left_hand', 'Tags', 'Tags', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1795, 1, 'en', 'menu-left-hand/menu_left_hand', 'Galleries', 'Galleries', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1796, 1, 'en', 'menu-left-hand/menu_left_hand', 'Appearance', 'Appearance', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1797, 1, 'en', 'menu-left-hand/menu_left_hand', 'Menu', 'Menu', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1798, 1, 'en', 'menu-left-hand/menu_left_hand', 'Widgets', 'Widgets', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1799, 1, 'en', 'menu-left-hand/menu_left_hand', 'Plugins', 'Plugins', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1800, 1, 'en', 'menu-left-hand/menu_left_hand', 'Media', 'Media', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1801, 1, 'en', 'menu-left-hand/menu_left_hand', 'Contact', 'Contact', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1802, 1, 'en', 'menu-left-hand/menu_left_hand', 'Settings', 'Settings', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1803, 1, 'en', 'menu-left-hand/menu_left_hand', 'General', 'General', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1804, 1, 'en', 'menu-left-hand/menu_left_hand', 'Language', 'Language', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1805, 1, 'vi', 'menu-left-hand/menu_left_hand', 'kind', 'Loại', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1806, 1, 'vi', 'menu-left-hand/menu_left_hand', 'name', 'Tên', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1807, 1, 'vi', 'menu-left-hand/menu_left_hand', 'create', 'Thêm menu ', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1808, 1, 'vi', 'menu-left-hand/menu_left_hand', 'feature', 'Tính năng', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1809, 1, 'vi', 'menu-left-hand/menu_left_hand', 'icon', 'Biểu tượng', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1810, 1, 'vi', 'menu-left-hand/menu_left_hand', 'none', 'Không biểu tượng', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1811, 1, 'vi', 'menu-left-hand/menu_left_hand', 'config', 'Cấu hình menu hệ thống', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1812, 1, 'vi', 'menu-left-hand/menu_left_hand', 'expand_all', 'Mở rộng toàn bộ', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1813, 1, 'vi', 'menu-left-hand/menu_left_hand', 'collapse_all', 'Thu gọn toàn bộ', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1814, 1, 'vi', 'menu-left-hand/menu_left_hand', 'more_options', 'Thêm tùy chọn', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1815, 1, 'vi', 'menu-left-hand/menu_left_hand', 'reset_default', 'Khôi phục về menu mặc định', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1816, 1, 'vi', 'menu-left-hand/menu_left_hand', 'reset_last_save', 'Khôi phục menu được lưu lần cuối', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1817, 1, 'vi', 'menu-left-hand/menu_left_hand', 'cancel', 'Hủy bỏ', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1818, 1, 'vi', 'menu-left-hand/menu_left_hand', 'save', 'Lưu thay đổi', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1819, 1, 'vi', 'menu-left-hand/menu_left_hand', 'edit', 'Sửa', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1820, 1, 'vi', 'menu-left-hand/menu_left_hand', 'new', 'Mới', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1821, 1, 'vi', 'menu-left-hand/menu_left_hand', 'default_name', 'Tên mặc định', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1822, 1, 'vi', 'menu-left-hand/menu_left_hand', 'new_name', 'Tên mới', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1823, 1, 'vi', 'menu-left-hand/menu_left_hand', 'create_btn', 'Tạo', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1824, 1, 'vi', 'menu-left-hand/menu_left_hand', 'delete_btn', 'Xóa menu', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1825, 1, 'vi', 'menu-left-hand/menu_left_hand', 'update_btn', 'Cập nhật', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1826, 1, 'vi', 'menu-left-hand/menu_left_hand', 'confirm_delete_line', 'Bạn có chắc chắn muốn xóa menu này:', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1827, 1, 'vi', 'menu-left-hand/menu_left_hand', 'confirm_delete_content', 'Điều này sẽ xóa các menu con chứa trong menu bị xóa', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1828, 1, 'vi', 'menu-left-hand/menu_left_hand', 'no', 'Không', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1829, 1, 'vi', 'menu-left-hand/menu_left_hand', 'yes', 'Có', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1830, 1, 'vi', 'menu-left-hand/menu_left_hand', 'reset_menu', 'Khôi phục menu', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1831, 1, 'vi', 'menu-left-hand/menu_left_hand', 'confirm_reset_default', 'Bạn có chắc chắn muốn khôi phục menu hệ thống về mặc định?', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1832, 1, 'vi', 'menu-left-hand/menu_left_hand', 'confirm_reset_last_save', 'Bạn có chắc chắn muốn khôi phục menu hệ thống về lần lưu cuối cùng?', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1833, 1, 'vi', 'menu-left-hand/menu_left_hand', 'Dashboard', 'Trang chủ', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1834, 1, 'vi', 'menu-left-hand/menu_left_hand', 'Pages', 'Trang', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1835, 1, 'vi', 'menu-left-hand/menu_left_hand', 'Posts', 'Bài viết', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1836, 1, 'vi', 'menu-left-hand/menu_left_hand', 'All posts', 'Tất cả bài viết', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1837, 1, 'vi', 'menu-left-hand/menu_left_hand', 'Categories', 'Chuyên mục', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1838, 1, 'vi', 'menu-left-hand/menu_left_hand', 'Tags', 'Thẻ', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1839, 1, 'vi', 'menu-left-hand/menu_left_hand', 'Galleries', 'Thư viện ảnh', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1840, 1, 'vi', 'menu-left-hand/menu_left_hand', 'Appearance', 'Hiển thị', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1841, 1, 'vi', 'menu-left-hand/menu_left_hand', 'Menu', 'Trình đơn', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1842, 1, 'vi', 'menu-left-hand/menu_left_hand', 'Widgets', 'Tiện ích', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1843, 1, 'vi', 'menu-left-hand/menu_left_hand', 'Plugins', 'Gói mở rộng', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1844, 1, 'vi', 'menu-left-hand/menu_left_hand', 'Media', 'Đa phương tiện', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1845, 1, 'vi', 'menu-left-hand/menu_left_hand', 'Contact', 'Liên hệ', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1846, 1, 'vi', 'menu-left-hand/menu_left_hand', 'Settings', 'Cài đặt', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1847, 1, 'vi', 'menu-left-hand/menu_left_hand', 'General', 'Cài đặt chung', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1848, 1, 'vi', 'menu-left-hand/menu_left_hand', 'Language', 'Ngôn ngữ', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1849, 1, 'vi', 'menu-left-hand/menu_left_hand', 'after', 'Sau', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1850, 1, 'vi', 'menu-left-hand/menu_left_hand', 'before', 'Trước', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1851, 1, 'vi', 'menu-left-hand/menu_left_hand', 'icon_helper', 'Xem chi tiết những biểu tượng có thể sử dụng <a href=\"http://fontawesome.io/icons/\" target=\"_blank\">tại đây</a>.', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1852, 1, 'vi', 'menu-left-hand/menu_left_hand', 'insert', 'Chèn', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1853, 1, 'en', 'pages/pages', 'model', 'Page', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1854, 1, 'en', 'pages/pages', 'models', 'Pages', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1855, 1, 'en', 'pages/pages', 'list', 'List Pages', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1856, 1, 'en', 'pages/pages', 'create', 'Create new page', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1857, 1, 'en', 'pages/pages', 'edit', 'Edit page', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1858, 1, 'en', 'pages/pages', 'form.name', 'Name', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1859, 1, 'en', 'pages/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1860, 1, 'en', 'pages/pages', 'form.content', 'Content', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1861, 1, 'en', 'pages/pages', 'form.note', 'Note content', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1862, 1, 'en', 'pages/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1863, 1, 'en', 'pages/pages', 'notices.update_success_message', 'Update successfully', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1864, 1, 'en', 'pages/pages', 'cannot_delete', 'Page could not be deleted', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1865, 1, 'en', 'pages/pages', 'deleted', 'Page deleted', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1866, 1, 'en', 'pages/pages', 'pages', 'Pages', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1867, 1, 'en', 'pages/pages', 'menu', 'Pages', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1868, 1, 'en', 'pages/pages', 'menu_name', 'Pages', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1869, 1, 'en', 'pages/pages', 'edit_this_page', 'Edit this page', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1870, 1, 'vi', 'pages/pages', 'model', 'Trang', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1871, 1, 'vi', 'pages/pages', 'models', 'Trang', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1872, 1, 'vi', 'pages/pages', 'list', 'Danh sách trang', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1873, 1, 'vi', 'pages/pages', 'create', 'Thêm trang', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1874, 1, 'vi', 'pages/pages', 'edit', 'Sửa trang', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1875, 1, 'vi', 'pages/pages', 'form.name', 'Tên', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1876, 1, 'vi', 'pages/pages', 'form.note', 'Nội dung ghi chú', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1877, 1, 'vi', 'pages/pages', 'form.name_placeholder', 'Tên trang (tối đa 120 kí tự)', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1878, 1, 'vi', 'pages/pages', 'form.content', 'Nội dung', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1879, 1, 'vi', 'pages/pages', 'notices.no_select', 'Chọn ít nhất 1 trang để thực hiện hành động này!', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1880, 1, 'vi', 'pages/pages', 'notices.update_success_message', 'Cập nhật thành công', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1881, 1, 'vi', 'pages/pages', 'deleted', 'Xóa trang thành công', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1882, 1, 'vi', 'pages/pages', 'cannot_delete', 'Không thể xóa trang', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1883, 1, 'vi', 'pages/pages', 'menu', 'Trang', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1884, 1, 'vi', 'pages/pages', 'menu_name', 'Trang', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1885, 1, 'en', 'request-log/request-log', 'status_code', 'Status Code', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1886, 1, 'en', 'request-log/request-log', 'no_request_error', 'No request error now!', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1887, 1, 'vi', 'request-log/request-log', 'status_code', 'Mã lỗi', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1888, 1, 'en', 'settings/setting', 'title', 'Settings', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1889, 1, 'en', 'settings/setting', 'general.theme', 'Theme', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1890, 1, 'en', 'settings/setting', 'general.description', 'Setting site information', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1891, 1, 'en', 'settings/setting', 'general.title', 'General', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1892, 1, 'en', 'settings/setting', 'general.general_block', 'General Information', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1893, 1, 'en', 'settings/setting', 'general.rich_editor', 'Rich Editor', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1894, 1, 'en', 'settings/setting', 'general.site_title', 'Site title', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1895, 1, 'en', 'settings/setting', 'general.copyright', 'Copyright', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1896, 1, 'en', 'settings/setting', 'general.admin_email', 'Admin Email', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1897, 1, 'en', 'settings/setting', 'general.seo_block', 'SEO Configuration', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1898, 1, 'en', 'settings/setting', 'general.seo_title', 'SEO Title', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1899, 1, 'en', 'settings/setting', 'general.seo_description', 'SEO Description', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1900, 1, 'en', 'settings/setting', 'general.seo_keywords', 'SEO Keywords', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1901, 1, 'en', 'settings/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1902, 1, 'en', 'settings/setting', 'general.google_analytics', 'Google Analytics', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1903, 1, 'en', 'settings/setting', 'general.google_site_verification', 'Google site verification', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1904, 1, 'en', 'settings/setting', 'general.enable_captcha', 'Enable Captcha?', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1905, 1, 'en', 'settings/setting', 'general.contact_block', 'Contact Information', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1906, 1, 'en', 'settings/setting', 'general.address', 'Address', '2017-08-14 17:38:17', '2017-08-14 17:38:17'),
(1907, 1, 'en', 'settings/setting', 'general.email', 'Email', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1908, 1, 'en', 'settings/setting', 'general.email_support', 'Email Support', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1909, 1, 'en', 'settings/setting', 'general.phone', 'Phone', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1910, 1, 'en', 'settings/setting', 'general.hotline', '	Hotline', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1911, 1, 'en', 'settings/setting', 'general.google_plus', 'Google Plus', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1912, 1, 'en', 'settings/setting', 'general.facebook', 'Facebook', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1913, 1, 'en', 'settings/setting', 'general.twitter', 'Twitter', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1914, 1, 'en', 'settings/setting', 'general.show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website) ?', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1915, 1, 'en', 'settings/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1916, 1, 'en', 'settings/setting', 'general.placeholder.copyright', 'Copyright', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1917, 1, 'en', 'settings/setting', 'general.placeholder.email', 'Email', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1918, 1, 'en', 'settings/setting', 'general.placeholder.admin_email', 'Admin Email', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1919, 1, 'en', 'settings/setting', 'general.placeholder.email_support', 'Email Support', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1920, 1, 'en', 'settings/setting', 'general.placeholder.phone', 'Contact phone', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1921, 1, 'en', 'settings/setting', 'general.placeholder.address', 'Contact address', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1922, 1, 'en', 'settings/setting', 'general.placeholder.hotline', 'Hotline', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1923, 1, 'en', 'settings/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1924, 1, 'en', 'settings/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1925, 1, 'en', 'settings/setting', 'general.placeholder.seo_keywords', 'SEO Keywords (maximum 60 characters, separate by \",\" character)', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1926, 1, 'en', 'settings/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1927, 1, 'en', 'settings/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1928, 1, 'en', 'settings/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1929, 1, 'en', 'settings/setting', 'general.enable_multi_language_in_admin', 'Enable multi language in admin area?', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1930, 1, 'en', 'settings/setting', 'general.enable', 'Enable', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1931, 1, 'en', 'settings/setting', 'general.disable', 'Disable', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1932, 1, 'en', 'settings/setting', 'general.enable_cache', 'Enable cache?', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1933, 1, 'en', 'settings/setting', 'general.cache_time', 'Cache time', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1934, 1, 'en', 'settings/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1935, 1, 'vi', 'settings/setting', 'title', 'Cài đặt', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1936, 1, 'vi', 'settings/setting', 'general.theme', 'Giao diện', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1937, 1, 'vi', 'settings/setting', 'general.description', 'Cấu hình những thông tin cài đặt website.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1938, 1, 'vi', 'settings/setting', 'general.title', 'Thông tin chung', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1939, 1, 'vi', 'settings/setting', 'general.general_block', 'Thông tin chung', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1940, 1, 'vi', 'settings/setting', 'general.site_title', 'Tên trang', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1941, 1, 'vi', 'settings/setting', 'general.copyright', 'Copyright', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1942, 1, 'vi', 'settings/setting', 'general.admin_email', 'Email quản trị viên', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1943, 1, 'vi', 'settings/setting', 'general.seo_block', 'Cấu hình SEO', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1944, 1, 'vi', 'settings/setting', 'general.seo_title', 'SEO Title', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1945, 1, 'vi', 'settings/setting', 'general.seo_description', 'SEO Description', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1946, 1, 'vi', 'settings/setting', 'general.seo_keywords', 'SEO Keywords', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1947, 1, 'vi', 'settings/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1948, 1, 'vi', 'settings/setting', 'general.google_analytics', 'Google Analytics', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1949, 1, 'vi', 'settings/setting', 'general.google_site_verification', 'Google site verification', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1950, 1, 'vi', 'settings/setting', 'general.enable_captcha', 'Sử dụng Captcha?', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1951, 1, 'vi', 'settings/setting', 'general.contact_block', 'Thông tin liên hệ', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1952, 1, 'vi', 'settings/setting', 'general.address', 'Địa chỉ', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1953, 1, 'vi', 'settings/setting', 'general.email', 'Email', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1954, 1, 'vi', 'settings/setting', 'general.email_support', 'Email Hỗ trợ', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1955, 1, 'vi', 'settings/setting', 'general.phone', 'Điện thoại', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1956, 1, 'vi', 'settings/setting', 'general.hotline', 'Đường dây nóng', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1957, 1, 'vi', 'settings/setting', 'general.google_plus', 'Google Plus', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1958, 1, 'vi', 'settings/setting', 'general.facebook', 'Facebook', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1959, 1, 'vi', 'settings/setting', 'general.twitter', 'Twitter', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1960, 1, 'vi', 'settings/setting', 'general.show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website) ?', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1961, 1, 'vi', 'settings/setting', 'general.placeholder.site_title', 'Tên trang (tối đa 120 kí tự)', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1962, 1, 'vi', 'settings/setting', 'general.placeholder.copyright', 'Copyright', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1963, 1, 'vi', 'settings/setting', 'general.placeholder.email', 'Email', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1964, 1, 'vi', 'settings/setting', 'general.placeholder.address', 'Địa chỉ liên hệ', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1965, 1, 'vi', 'settings/setting', 'general.placeholder.admin_email', 'Admin Email', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1966, 1, 'vi', 'settings/setting', 'general.placeholder.email_support', 'Email Hỗ trợ', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1967, 1, 'vi', 'settings/setting', 'general.placeholder.google_analytics', 'Ví dụ: UA-42767940-2', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1968, 1, 'vi', 'settings/setting', 'general.placeholder.google_site_verification', 'Mã xác nhận trang web dùng cho Google Webmaster Tool', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1969, 1, 'vi', 'settings/setting', 'general.placeholder.hotline', 'Đường dây nóng', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1970, 1, 'vi', 'settings/setting', 'general.placeholder.seo_title', 'SEO Title (tối đa 120 kí tự)', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1971, 1, 'vi', 'settings/setting', 'general.placeholder.seo_description', 'SEO Description (tối đa 120 kí tự)', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1972, 1, 'vi', 'settings/setting', 'general.placeholder.phone', 'Điện thoại', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1973, 1, 'vi', 'settings/setting', 'general.placeholder.seo_keywords', 'SEO Keywords (tối đa 60 kí tự, phân cách từ khóa bằng dấu phẩy)', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1974, 1, 'vi', 'settings/setting', 'general.enable_change_admin_theme', 'Cho phép thay đổi giao diện quản trị?', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1975, 1, 'vi', 'settings/setting', 'general.enable_multi_language_in_admin', 'Cho phép thay đổi ngôn ngữ trang quản trị?', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1976, 1, 'vi', 'settings/setting', 'general.enable', 'Bật', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1977, 1, 'vi', 'settings/setting', 'general.disable', 'Tắt', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1978, 1, 'vi', 'settings/setting', 'general.enable_https', 'Bật https?', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1979, 1, 'vi', 'settings/setting', 'general.enable_cache', 'Bật cache?', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1980, 1, 'vi', 'settings/setting', 'general.cache_time', 'Cache time', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1981, 1, 'vi', 'settings/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1982, 1, 'en', 'translations/translation', 'translations', 'Translations', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1983, 1, 'en', 'translations/translation', 'translations_description', 'Translate all words in system.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1984, 1, 'en', 'translations/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the app/lang file, using \'php artisan translation:export\' command or publish button.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1985, 1, 'en', 'translations/translation', 'import_done', 'Done importing, processed <strong class=\"counter\">N</strong> items! Reload this page to refresh the groups!', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1986, 1, 'en', 'translations/translation', 'translation_manager', 'Translations Manager', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1987, 1, 'en', 'translations/translation', 'done_searching', 'Done searching for translations, found <strong class=\"counter\">N</strong> items!', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1988, 1, 'en', 'translations/translation', 'done_publishing', 'Done publishing the translations for group', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1989, 1, 'en', 'translations/translation', 'append_translation', 'Append new translations', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1990, 1, 'en', 'translations/translation', 'replace_translation', 'Replace existing translations', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1991, 1, 'en', 'translations/translation', 'loading', 'Loading...', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1992, 1, 'en', 'translations/translation', 'import_group', 'Import group', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1993, 1, 'en', 'translations/translation', 'confirm_scan_translation', 'Are you sure you want to scan you app folder? All found translation keys will be added to the database.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1994, 1, 'en', 'translations/translation', 'searching', 'Searching...', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1995, 1, 'en', 'translations/translation', 'find_translation_files', 'Find translations in files', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1996, 1, 'en', 'translations/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1997, 1, 'en', 'translations/translation', 'publishing', 'Publishing..', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1998, 1, 'en', 'translations/translation', 'publish_translations', 'Publish translations', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(1999, 1, 'en', 'translations/translation', 'back', 'Back', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2000, 1, 'en', 'translations/translation', 'add_key_description', 'Add 1 key per line, without the group prefix', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2001, 1, 'en', 'translations/translation', 'add_key_button', 'Add keys', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2002, 1, 'en', 'translations/translation', 'total', 'Total', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2003, 1, 'en', 'translations/translation', 'changed', 'changed', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2004, 1, 'en', 'translations/translation', 'key', 'Key', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2005, 1, 'en', 'translations/translation', 'edit_title', 'Enter translation', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2006, 1, 'en', 'translations/translation', 'confirm_delete_key', 'Are you sure you want to delete the translations for :key ?', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2007, 1, 'en', 'translations/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have run the migrations and imported the translations.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2008, 1, 'en', 'translations/translation', 'choose_a_group', 'Choose a group', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2009, 1, 'en', 'translations/translation', 'menu_name', 'Translations', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2010, 1, 'vi', 'translations/translation', 'add_key_button', 'Thêm khóa', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2011, 1, 'vi', 'translations/translation', 'add_key_description', 'Mỗi khóa trên mỗi dòng, trừ tiền tố của nhóm', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2012, 1, 'vi', 'translations/translation', 'append_translation', 'Tiếp nối bản dịch', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2013, 1, 'vi', 'translations/translation', 'back', 'Quay lại', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2014, 1, 'vi', 'translations/translation', 'changed', 'thay đổi', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2015, 1, 'vi', 'translations/translation', 'choose_a_group', 'Chọn một nhóm', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2016, 1, 'vi', 'translations/translation', 'choose_group_msg', 'Chọn một nhóm để hiển thị nhóm dịch thuật. Nếu nhóm không có sẵn, hãy chắc chắn là bạn đã chạy migrations và nhập dữ liệu dịch thuật.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2017, 1, 'vi', 'translations/translation', 'confirm_delete_key', 'Bạn có chắc muốn xóa dịch thuật cho :key?', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2018, 1, 'vi', 'translations/translation', 'confirm_publish_group', 'Bạn có chắc muốn xuất bản nhóm \":group\"? Điều này sẽ ghi đè tập tin ngôn ngữ hiện tại.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2019, 1, 'vi', 'translations/translation', 'confirm_scan_translation', 'Bạn có chắc muốn quét thư mục app? Tất cả khóa dịch thuật tìm thấy sẽ được thêm vào cơ sở dữ liệu.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2020, 1, 'vi', 'translations/translation', 'done_publishing', 'Xuất bản nhóm dịch thuật thành công', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2021, 1, 'vi', 'translations/translation', 'done_searching', 'Tìm kiếm dịch thuật xong, tìm thấy <strong class=\"counter\">N</strong> bản ghi!', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2022, 1, 'vi', 'translations/translation', 'edit_title', 'Nhập nội dung dịch', '2017-08-14 17:38:18', '2017-08-14 17:38:18');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2023, 1, 'vi', 'translations/translation', 'export_warning', 'Cảnh báo, bản dịch sẽ không có sẵn cho đến khi chúng được xuất bản lại vào thư mục /resources/lang, sử dụng lệnh \'php artisan translations:export\' hoặc sử dụng nút xuất bản', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2024, 1, 'vi', 'translations/translation', 'find_translation_files', 'Tìm thấy tập tin dịch thuật', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2025, 1, 'vi', 'translations/translation', 'import_done', 'Nhập hoàn thành, đã xử lý <strong class=\"counter\">N</strong> bản ghi!  ', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2026, 1, 'vi', 'translations/translation', 'import_group', 'Nhập nhóm', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2027, 1, 'vi', 'translations/translation', 'key', 'Khóa', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2028, 1, 'vi', 'translations/translation', 'loading', 'Đang tải...', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2029, 1, 'vi', 'translations/translation', 'publish_translations', 'Xuất bản dịch thuật', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2030, 1, 'vi', 'translations/translation', 'publishing', 'Đang xuất bản...', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2031, 1, 'vi', 'translations/translation', 'replace_translation', 'Thay thế bản dịch hiện tại', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2032, 1, 'vi', 'translations/translation', 'searching', 'Đang tìm kiếm...', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2033, 1, 'vi', 'translations/translation', 'total', 'Tổng cộng', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2034, 1, 'vi', 'translations/translation', 'translation_manager', 'Quản lý dịch thuật', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2035, 1, 'vi', 'translations/translation', 'translations', 'Dịch thuật', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2036, 1, 'vi', 'translations/translation', 'translations_description', 'Dịch tất cả các từ trong hệ thống', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2037, 1, 'vi', 'translations/translation', 'menu_name', 'Dịch thuật', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2038, 1, 'en', 'widgets/global', 'name', 'Widgets', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2039, 1, 'en', 'widgets/global', 'create', 'New widget', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2040, 1, 'en', 'widgets/global', 'edit', 'Edit widget', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2041, 1, 'en', 'widgets/global', 'delete', 'Delete', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2042, 1, 'en', 'widgets/global', 'available', 'Available Widgets', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2043, 1, 'en', 'widgets/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2044, 1, 'en', 'widgets/global', 'number_tag_display', 'Number tags will be display', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2045, 1, 'en', 'widgets/global', 'number_post_display', 'Number posts will be display', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2046, 1, 'en', 'widgets/global', 'select_menu', 'Select Menu', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2047, 1, 'en', 'widgets/global', 'widget_text', 'Text', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2048, 1, 'en', 'widgets/global', 'widget_text_description', 'Arbitrary text or HTML.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2049, 1, 'en', 'widgets/global', 'widget_recent_post', 'Recent Posts', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2050, 1, 'en', 'widgets/global', 'widget_recent_post_description', 'Recent posts widget.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2051, 1, 'en', 'widgets/global', 'widget_custom_menu', 'Custom Menu', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2052, 1, 'en', 'widgets/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2053, 1, 'en', 'widgets/global', 'widget_tag', 'Tags', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2054, 1, 'en', 'widgets/global', 'widget_tag_description', 'Popular tags', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2055, 1, 'en', 'widgets/global', 'save_success', 'Save widget successfully!', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2056, 1, 'en', 'widgets/global', 'delete_success', 'Delete widget successfully!', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2057, 1, 'vi', 'widgets/global', 'name', 'Widgets', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2058, 1, 'vi', 'widgets/global', 'create', 'New widget', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2059, 1, 'vi', 'widgets/global', 'edit', 'Edit widget', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2060, 1, 'vi', 'widgets/global', 'available', 'Tiện ích có sẵn', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2061, 1, 'vi', 'widgets/global', 'delete', 'Xóa', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2062, 1, 'vi', 'widgets/global', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2063, 1, 'vi', 'widgets/global', 'number_post_display', 'Số bài viết sẽ hiển thị', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2064, 1, 'vi', 'widgets/global', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2065, 1, 'vi', 'widgets/global', 'select_menu', 'Lựa chọn trình đơn', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2066, 1, 'vi', 'widgets/global', 'widget_custom_menu', 'Menu tùy chỉnh', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2067, 1, 'vi', 'widgets/global', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2068, 1, 'vi', 'widgets/global', 'widget_recent_post', 'Bài viết gần đây', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2069, 1, 'vi', 'widgets/global', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2070, 1, 'vi', 'widgets/global', 'widget_tag', 'Thẻ', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2071, 1, 'vi', 'widgets/global', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2072, 1, 'vi', 'widgets/global', 'widget_text', 'Văn bản', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2073, 1, 'vi', 'widgets/global', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2074, 1, 'vi', 'pagination', 'previous', '&laquo; Trước', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2075, 1, 'vi', 'pagination', 'next', 'Sau &raquo;', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2076, 1, 'vi', 'passwords', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với xác nhận mật khẩu.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2077, 1, 'vi', 'passwords', 'reset', 'Mật khẩu của bạn đã được khôi phục', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2078, 1, 'vi', 'passwords', 'sent', 'Hệ thống đã gửi một email cho bạn chứa liên kết khôi phục mật khẩu!', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2079, 1, 'vi', 'passwords', 'token', 'Mã khôi phục mật khẩu không hợp lệ.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2080, 1, 'vi', 'passwords', 'user', 'Không thể tìm thấy người dùng với địa chỉ email này.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2081, 1, 'vi', 'validation', 'accepted', 'Trường :attribute phải được chấp nhận.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2082, 1, 'vi', 'validation', 'active_url', 'Trường :attribute không phải là một URL hợp lệ.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2083, 1, 'vi', 'validation', 'after', 'Trường :attribute phải là một ngày sau ngày :date.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2084, 1, 'vi', 'validation', 'alpha', 'Trường :attribute chỉ có thể chứa các chữ cái.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2085, 1, 'vi', 'validation', 'alpha_dash', 'Trường :attribute chỉ có thể chứa chữ cái, số và dấu gạch ngang.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2086, 1, 'vi', 'validation', 'alpha_num', 'Trường :attribute chỉ có thể chứa chữ cái và số.', '2017-08-14 17:38:18', '2017-08-14 17:38:18'),
(2087, 1, 'vi', 'validation', 'array', 'Kiểu dữ liệu của trường :attribute phải là dạng mảng.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2088, 1, 'vi', 'validation', 'before', 'Trường :attribute phải là một ngày trước ngày :date.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2089, 1, 'vi', 'validation', 'between.numeric', 'Trường :attribute phải nằm trong khoảng :min - :max.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2090, 1, 'vi', 'validation', 'between.file', 'Dung lượng tập tin trong trường :attribute phải từ :min - :max kB.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2091, 1, 'vi', 'validation', 'between.string', 'Trường :attribute phải từ :min - :max ký tự.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2092, 1, 'vi', 'validation', 'between.array', 'Trường :attribute phải có từ :min - :max phần tử.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2093, 1, 'vi', 'validation', 'boolean', 'Trường :attribute phải là true hoặc false.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2094, 1, 'vi', 'validation', 'confirmed', 'Giá trị xác nhận trong trường :attribute không khớp.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2095, 1, 'vi', 'validation', 'date', 'Trường :attribute không phải là định dạng của ngày-tháng.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2096, 1, 'vi', 'validation', 'date_format', 'Trường :attribute không giống với định dạng :format.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2097, 1, 'vi', 'validation', 'different', 'Trường :attribute và :other phải khác nhau.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2098, 1, 'vi', 'validation', 'digits', 'Độ dài của trường :attribute phải gồm :digits chữ số.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2099, 1, 'vi', 'validation', 'digits_between', 'Độ dài của trường :attribute phải nằm trong khoảng :min and :max chữ số.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2100, 1, 'vi', 'validation', 'email', 'Trường :attribute phải là một địa chỉ email hợp lệ.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2101, 1, 'vi', 'validation', 'exists', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2102, 1, 'vi', 'validation', 'file', 'Trường :attribute phải là một tập tin.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2103, 1, 'vi', 'validation', 'image', 'Các tập tin trong trường :attribute phải là định dạng hình ảnh.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2104, 1, 'vi', 'validation', 'in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2105, 1, 'vi', 'validation', 'integer', 'Trường :attribute phải là một số nguyên.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2106, 1, 'vi', 'validation', 'ip', 'Trường :attribute phải là một địa chỉa IP.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2107, 1, 'vi', 'validation', 'max.numeric', 'Trường :attribute không được lớn hơn :max.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2108, 1, 'vi', 'validation', 'max.file', 'Dung lượng tập tin trong trường :attribute không được lớn hơn :max kB.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2109, 1, 'vi', 'validation', 'max.string', 'Trường :attribute không được lớn hơn :max ký tự.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2110, 1, 'vi', 'validation', 'max.array', 'Trường :attribute không được lớn hơn :max phần tử.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2111, 1, 'vi', 'validation', 'mimes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2112, 1, 'vi', 'validation', 'min.numeric', 'Trường :attribute phải tối thiểu là :min.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2113, 1, 'vi', 'validation', 'min.file', 'Dung lượng tập tin trong trường :attribute phải tối thiểu :min kB.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2114, 1, 'vi', 'validation', 'min.string', 'Trường :attribute phải có tối thiểu :min ký tự.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2115, 1, 'vi', 'validation', 'min.array', 'Trường :attribute phải có tối thiểu :min phần tử.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2116, 1, 'vi', 'validation', 'not_in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2117, 1, 'vi', 'validation', 'numeric', 'Trường :attribute phải là một số.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2118, 1, 'vi', 'validation', 'regex', 'Định dạng trường :attribute không hợp lệ.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2119, 1, 'vi', 'validation', 'required', 'Trường :attribute không được bỏ trống.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2120, 1, 'vi', 'validation', 'required_if', 'Trường :attribute không được bỏ trống khi trường :other là :value.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2121, 1, 'vi', 'validation', 'required_with', 'Trường :attribute không được bỏ trống khi trường :values có giá trị.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2122, 1, 'vi', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2123, 1, 'vi', 'validation', 'required_without', 'Trường :attribute không được bỏ trống khi trường :values không có giá trị.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2124, 1, 'vi', 'validation', 'required_without_all', 'Trường :attribute không được bỏ trống khi tất cả :values không có giá trị.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2125, 1, 'vi', 'validation', 'same', 'Trường :attribute và :other phải giống nhau.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2126, 1, 'vi', 'validation', 'size.numeric', 'Trường :attribute phải bằng :size.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2127, 1, 'vi', 'validation', 'size.file', 'Dung lượng tập tin trong trường :attribute phải bằng :size kB.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2128, 1, 'vi', 'validation', 'size.string', 'Trường :attribute phải chứa :size ký tự.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2129, 1, 'vi', 'validation', 'size.array', 'Trường :attribute phải chứa :size phần tử.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2130, 1, 'vi', 'validation', 'timezone', 'Trường :attribute phải là một múi giờ hợp lệ.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2131, 1, 'vi', 'validation', 'unique', 'Trường :attribute đã có trong CSDL.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2132, 1, 'vi', 'validation', 'url', 'Trường :attribute không giống với định dạng một URL.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2133, 1, 'vi', 'validation', 'custom.email.email', 'Địa chỉ email không hợp lệ', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2134, 1, 'vi', 'validation', 'custom.email.required', 'Email không được để trống!', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2135, 1, 'vi', 'validation', 'custom.email.unique', 'Email đã được sử dụng, vui lòng chọn email khác!', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2136, 1, 'vi', 'validation', 'custom.password.min', 'Mật khẩu phải ít nhất :min kí tự.', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2137, 1, 'vi', 'validation', 'custom.password.required', 'Mật khẩu không được để trống!', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2138, 1, 'vi', 'validation', 'custom.repassword.same', 'Mật khẩu và xác nhận mật khẩu không trùng khớp', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2139, 1, 'vi', 'validation', 'custom.username.min', 'Tên phải ít nhất 6 kí tự', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2140, 1, 'vi', 'validation', 'custom.username.required', 'Tên đăng nhập không được để trống!', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2141, 1, 'vi', 'validation', 'custom.username.unique', 'Tên này đã được sử dụng, vui lòng chọn tên khác!', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2142, 1, 'vi', 'validation', 'attributes', 'Thuộc tính', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2143, 1, 'vi', 'validation', 'after_or_equal', 'Thuộc tính :attribute phải là ngày lớn hơn hoặc bằng :date', '2017-08-14 17:38:19', '2017-08-14 17:38:19'),
(2144, 1, 'vi', 'validation', 'before_or_equal', 'Trường :attribute phải là ngày trước hoặc bằng ngày :date', '2017-08-14 17:38:19', '2017-08-14 17:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondary_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_position` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondary_phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondary_email` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `website` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `github` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personal_quota` int(10) UNSIGNED NOT NULL DEFAULT '104857600',
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `completed_profile` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `username`, `dob`, `address`, `secondary_address`, `job_position`, `phone`, `secondary_phone`, `secondary_email`, `gender`, `website`, `skype`, `facebook`, `twitter`, `google_plus`, `youtube`, `github`, `interest`, `about`, `profile_image`, `personal_quota`, `super_user`, `manage_supers`, `completed_profile`, `created_at`, `updated_at`) VALUES
(1, 'minhsang2603@gmail.com', '$2y$10$j4F7B5hnzRwvztiUUAcFCe.Y2V9aAM67P7zA8xnKr8mt9lpOb1hq6', '{\"analytics.browser\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.referrer\":true,\"backups.create\":true,\"backups.delete\":true,\"backups.list\":true,\"backups.restore\":true,\"block\n                .list\":true,\"categories.create\":true,\"categories.delete\":true,\"categories.edit\":true,\"categories.list\":true,\"contacts.create\":true,\"contacts.delete\":true,\"contacts.edit\":true,\"contacts.list\":true,\"custom-fields.create\":true,\"custom-fields.delete\":true,\"custom-fields.edit\":true,\"custom-fields.list\":true,\"dashboard.index\":true,\"galleries.create\":true,\"galleries.delete\":true,\"galleries.edit\":true,\"galleries.list\":true,\"languages.create\":true,\"languages.delete\":true,\"languages.edit\":true,\"languages.list\":true,\"logs.delete\":true,\"logs.list\":true,\"media.index\":true,\"menus.create\":true,\"menus.delete\":true,\"menus.edit\":true,\"menus.list\":true,\"pages.create\":true,\"pages.delete\":true,\"pages.edit\":true,\"pages.list\":true,\"plugins.list\":true,\"posts.create\":true,\"posts.delete\":true,\"posts.edit\":true,\"posts.list\":true,\"roles.create\":true,\"roles.delete\":true,\"roles.edit\":true,\"roles.list\":true,\"settings.options\":true,\"tags.create\":true,\"tags.delete\":true,\"tags.edit\":true,\"tags.list\":true,\"theme.list\":true,\"theme.options\":true,\"translations.create\":true,\"translations.delete\":true,\"translations.edit\":true,\"translations.list\":true,\"users.create\":true,\"users.delete\":true,\"users.edit\":true,\"users.list\":true,\"users.update-profile\":true,\"widgets.create\":true,\"widgets.delete\":true,\"widgets.edit\":true,\"widgets.list\":true,\"superuser\":true,\"manage_supers\":true}', '2017-08-06 18:08:32', 'Ben', 'Nguyen', 'botble', NULL, '', '', 'Web Developer', '0988606928', '', 'contact@botble.com', 1, 'https://botble.com', '', 'https://facebook.com/botble.technologies', 'https://twitter.com/botble', '', '', 'http://github.com/botble', '', '', '/uploads/avatars/botble/thumb-full-full-1481809722-1496541388.png', 104857600, 1, 1, 1, '2016-04-30 19:51:47', '2017-08-06 18:08:32'),
(2, 'sangnguyenplus@gmail.com', '$2y$10$Y2zjxPRCHH8GWbypX90x/.1xQssOERPe16JJXw69jHh0YKQQvecYO', '{\"analytics.browser\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.referrer\":true,\"backups.create\":true,\"backups.delete\":true,\"backups.list\":true,\"backups.restore\":true,\"block\n                .list\":true,\"categories.create\":true,\"categories.delete\":true,\"categories.edit\":true,\"categories.list\":true,\"contacts.create\":true,\"contacts.delete\":true,\"contacts.edit\":true,\"contacts.list\":true,\"custom-fields.create\":true,\"custom-fields.delete\":true,\"custom-fields.edit\":true,\"custom-fields.list\":true,\"dashboard.index\":true,\"galleries.create\":true,\"galleries.delete\":true,\"galleries.edit\":true,\"galleries.list\":true,\"languages.create\":true,\"languages.delete\":true,\"languages.edit\":true,\"languages.list\":true,\"logs.delete\":true,\"logs.list\":true,\"media.index\":true,\"menus.create\":true,\"menus.delete\":true,\"menus.edit\":true,\"menus.list\":true,\"pages.create\":true,\"pages.delete\":true,\"pages.edit\":true,\"pages.list\":true,\"plugins.list\":true,\"posts.create\":true,\"posts.delete\":true,\"posts.edit\":true,\"posts.list\":true,\"roles.create\":true,\"roles.delete\":true,\"roles.edit\":true,\"roles.list\":true,\"settings.options\":true,\"tags.create\":true,\"tags.delete\":true,\"tags.edit\":true,\"tags.list\":true,\"theme.list\":true,\"theme.options\":true,\"translations.create\":true,\"translations.delete\":true,\"translations.edit\":true,\"translations.list\":true,\"users.create\":true,\"users.delete\":true,\"users.edit\":true,\"users.list\":true,\"users.update-profile\":true,\"widgets.create\":true,\"widgets.delete\":true,\"widgets.edit\":true,\"widgets.list\":true,\"superuser\":false,\"manage_supers\":false}', '2017-06-02 18:55:43', 'Sang', 'Demo', 'sangit7b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/vendor/core/images/default-avatar.jpg', 104857600, 0, 0, 0, '2017-06-02 18:41:01', '2017-06-02 18:55:43'),
(3, 'luuminhfpt@gmail.com', '$2y$10$FWpHXSmFZ4BPpndOw1E2h.pMiH5wpyGCT2fFbwCWIy92H9FhE.QKa', NULL, '2017-12-14 08:57:48', 'Minh', 'Luu', 'mrminh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/vendor/core/images/default-avatar.jpg', 104857600, 1, 1, 0, '2017-12-03 07:02:40', '2017-12-14 08:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'admin-locale', 'vi', 1, '2016-12-15 06:49:09', '2017-07-14 08:07:32'),
(2, 'admin-theme', 'black', 4, '2016-12-16 03:09:28', '2016-12-16 03:09:28'),
(3, 'admin-locale', 'en', 4, '2016-12-16 03:09:28', '2016-12-16 03:09:28'),
(4, 'admin-theme', 'black', 1, '2017-01-16 04:28:44', '2017-08-29 18:51:35'),
(5, 'languages_current_data_language', 'en_US', 1, '2017-03-20 10:00:48', '2017-03-25 06:19:48'),
(6, 'languages_current_data_language', 'en_US', 2, '2017-06-02 18:55:53', '2017-06-02 18:55:53'),
(7, 'languages_current_data_language', 'vi', 3, '2017-12-05 19:27:38', '2017-12-06 00:05:15');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(2, 'Botble\\Widget\\Widgets\\Text', 'second_sidebar', 'demo', 0, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\Text\",\"name\":\"Text\",\"content\":\"\"}', '2016-12-18 04:47:20', '2016-12-18 04:47:20'),
(7, 'RecentPostsWidget', 'top_sidebar', 'ripple', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":\"5\"}', '2016-12-18 04:48:00', '2016-12-18 04:48:00'),
(9, 'Botble\\Widget\\Widgets\\Text', 'primary_sidebar', 'demo', 0, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\Text\",\"name\":\"Text\",\"content\":\"\"}', '2016-12-18 04:50:57', '2016-12-18 04:50:57'),
(19, 'TagsWidget', 'primary_sidebar', 'ripple', 0, '{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":\"5\"}', '2016-12-24 07:41:57', '2016-12-24 07:41:57'),
(20, 'CustomMenuWidget', 'primary_sidebar', 'ripple', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"featured-categories\"}', '2016-12-24 07:41:57', '2016-12-24 07:41:57'),
(21, 'CustomMenuWidget', 'primary_sidebar', 'ripple', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Social\",\"menu_id\":\"social\"}', '2016-12-24 07:41:57', '2016-12-24 07:41:57'),
(30, 'RecentPostsWidget', 'footer_sidebar', 'ripple', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":\"5\"}', '2016-12-24 07:42:58', '2016-12-24 07:42:58'),
(31, 'CustomMenuWidget', 'footer_sidebar', 'ripple', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Favorite website\",\"menu_id\":\"favorite-website\"}', '2016-12-24 07:42:58', '2016-12-24 07:42:58'),
(32, 'CustomMenuWidget', 'footer_sidebar', 'ripple', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"My links\",\"menu_id\":\"my-links\"}', '2016-12-24 07:42:58', '2016-12-24 07:42:58'),
(42, 'PopularPostsWidget', 'primary_sidebar', 'newstv', 0, '{\"id\":\"PopularPostsWidget\",\"name\":\"Top Views\",\"number_display\":\"5\"}', '2017-04-30 19:55:10', '2017-04-30 19:55:10'),
(43, 'VideoPostsWidget', 'primary_sidebar', 'newstv', 1, '{\"id\":\"VideoPostsWidget\",\"name\":\"Videos\",\"number_display\":\"1\"}', '2017-04-30 19:55:10', '2017-04-30 19:55:10'),
(44, 'FacebookWidget', 'primary_sidebar', 'newstv', 2, '{\"id\":\"FacebookWidget\",\"name\":\"Facebook\",\"facebook_name\":\"T\\u00f4i y\\u00eau l\\u1eadp tr\\u00ecnh\",\"facebook_id\":\"https:\\/\\/www.facebook.com\\/LoveCodingFC\\/\"}', '2017-04-30 19:55:10', '2017-04-30 19:55:10'),
(61, 'RecentPostsWidget', 'footer_sidebar', 'newstv', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent posts\",\"number_display\":\"6\"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39'),
(62, 'CustomMenuWidget', 'footer_sidebar', 'newstv', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Favorite websites\",\"menu_id\":\"favorite-website\"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39'),
(63, 'CustomMenuWidget', 'footer_sidebar', 'newstv', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"My links\",\"menu_id\":\"my-links\"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39'),
(64, 'CustomMenuWidget', 'footer_sidebar', 'newstv', 3, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"featured-categories\"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `audit_history`
--
ALTER TABLE `audit_history`
  ADD KEY `audit_history_user_id_index` (`user_id`),
  ADD KEY `audit_history_module_index` (`module`),
  ADD KEY `audit_history_action_index` (`action`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_user_id_index` (`user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_fields_field_item_id_foreign` (`field_item_id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD KEY `features_feature_id_index` (`feature_id`);

--
-- Indexes for table `field_groups`
--
ALTER TABLE `field_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_groups_created_by_foreign` (`created_by`),
  ADD KEY `field_groups_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `field_items`
--
ALTER TABLE `field_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_items_field_group_id_foreign` (`field_group_id`),
  ADD KEY `field_items_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_content_id_index` (`content_id`);

--
-- Indexes for table `invites`
--
ALTER TABLE `invites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_content_id_index` (`lang_meta_content_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_shares`
--
ALTER TABLE `media_shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_shares_user_id_index` (`user_id`),
  ADD KEY `media_shares_shared_by_index` (`shared_by`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_contents`
--
ALTER TABLE `menu_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_contents_menu_id_index` (`menu_id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_content_id_index` (`menu_content_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `menu_nodes_related_id_index` (`related_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_content_id_index` (`content_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_user_id_index` (`user_id`),
  ADD KEY `notes_reference_id_index` (`reference_id`),
  ADD KEY `notes_created_by_index` (`created_by`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_parent_id_index` (`parent_id`);

--
-- Indexes for table `permission_flags`
--
ALTER TABLE `permission_flags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_flags_flag_unique` (`flag`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`),
  ADD KEY `persistences_user_id_index` (`user_id`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_category_id_index` (`category_id`),
  ADD KEY `post_category_post_id_index` (`post_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_tag_id_index` (`tag_id`),
  ADD KEY `post_tag_post_id_index` (`post_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productsolutions`
--
ALTER TABLE `productsolutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_solution_product`
--
ALTER TABLE `product_solution_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_solution_product_product_solution_id_index` (`productsolutions_id`),
  ADD KEY `product_solution_product_product_id_index` (`products_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_user_id_index` (`user_id`);

--
-- Indexes for table `request_logs`
--
ALTER TABLE `request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_flags`
--
ALTER TABLE `role_flags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_flags_role_id_index` (`role_id`),
  ADD KEY `role_flags_flag_id_index` (`flag_id`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_user_id_index` (`user_id`),
  ADD KEY `tags_parent_id_index` (`parent_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `field_groups`
--
ALTER TABLE `field_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `field_items`
--
ALTER TABLE `field_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `invites`
--
ALTER TABLE `invites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media_shares`
--
ALTER TABLE `media_shares`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `menu_contents`
--
ALTER TABLE `menu_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=609;
--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `permission_flags`
--
ALTER TABLE `permission_flags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;
--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;
--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `productsolutions`
--
ALTER TABLE `productsolutions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `product_solution_product`
--
ALTER TABLE `product_solution_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `request_logs`
--
ALTER TABLE `request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `role_flags`
--
ALTER TABLE `role_flags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2145;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD CONSTRAINT `custom_fields_field_item_id_foreign` FOREIGN KEY (`field_item_id`) REFERENCES `field_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `field_groups`
--
ALTER TABLE `field_groups`
  ADD CONSTRAINT `field_groups_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `field_groups_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `field_items`
--
ALTER TABLE `field_items`
  ADD CONSTRAINT `field_items_field_group_id_foreign` FOREIGN KEY (`field_group_id`) REFERENCES `field_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `field_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `field_items` (`id`) ON DELETE CASCADE;
