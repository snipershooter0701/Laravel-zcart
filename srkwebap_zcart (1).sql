-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 28, 2023 at 09:02 PM
-- Server version: 5.7.41
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srkwebap_zcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` bigint(20) DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'order', 'created', 1, 'App\\Order', NULL, NULL, '{\"attributes\":{\"order_number\":\"#763241\",\"shop_id\":1,\"customer_id\":3,\"ship_to\":null,\"shipping_zone_id\":null,\"shipping_rate_id\":8,\"packaging_id\":5,\"item_count\":1,\"quantity\":1,\"shipping_weight\":\"229.000000\",\"taxrate\":null,\"total\":\"250.412190\",\"discount\":null,\"shipping\":\"1.000000\",\"packaging\":null,\"handling\":null,\"taxes\":null,\"grand_total\":\"251.412190\",\"billing_address\":\"<address>36867 Ivy Parkway Apt. 860<br\\/>Jamel Mountains<br\\/>North Cheyanneburgh, <br\\/> 33490-4933<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 302-868-4187<\\/address>\",\"shipping_address\":\"<address>36867 Ivy Parkway Apt. 860<br\\/>Jamel Mountains<br\\/>North Cheyanneburgh, <br\\/> 33490-4933<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 302-868-4187<\\/address>\",\"shipping_date\":null,\"delivery_date\":null,\"tracking_id\":\"RR123456789CN\",\"coupon_id\":null,\"carrier_id\":null,\"message_to_customer\":null,\"send_invoice_to_customer\":null,\"admin_note\":\"Aut porro dicta labore dolorum.\",\"buyer_note\":\"Fuga et quia at corporis quo.\",\"payment_method_id\":7,\"payment_instruction\":null,\"payment_date\":null,\"payment_status\":1,\"order_status_id\":1,\"goods_received\":null,\"approved\":null,\"feedback_id\":null,\"disputed\":null,\"email\":null}}', '2021-06-26 00:04:57', '2021-06-26 00:04:57'),
(2, 'order', 'created', 2, 'App\\Order', NULL, NULL, '{\"attributes\":{\"order_number\":\"#144345\",\"shop_id\":2,\"customer_id\":3,\"ship_to\":null,\"shipping_zone_id\":null,\"shipping_rate_id\":9,\"packaging_id\":6,\"item_count\":3,\"quantity\":3,\"shipping_weight\":\"785.000000\",\"taxrate\":null,\"total\":\"122.176000\",\"discount\":null,\"shipping\":\"3.000000\",\"packaging\":null,\"handling\":null,\"taxes\":null,\"grand_total\":\"125.176000\",\"billing_address\":\"<address>36867 Ivy Parkway Apt. 860<br\\/>Jamel Mountains<br\\/>North Cheyanneburgh, <br\\/> 33490-4933<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 302-868-4187<\\/address>\",\"shipping_address\":\"<address>36867 Ivy Parkway Apt. 860<br\\/>Jamel Mountains<br\\/>North Cheyanneburgh, <br\\/> 33490-4933<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 302-868-4187<\\/address>\",\"shipping_date\":null,\"delivery_date\":null,\"tracking_id\":\"RR123456789CN\",\"coupon_id\":null,\"carrier_id\":null,\"message_to_customer\":null,\"send_invoice_to_customer\":null,\"admin_note\":\"Quisquam sapiente magnam ex sapiente et ratione.\",\"buyer_note\":\"Veniam expedita placeat dolor qui.\",\"payment_method_id\":1,\"payment_instruction\":null,\"payment_date\":null,\"payment_status\":1,\"order_status_id\":1,\"goods_received\":null,\"approved\":null,\"feedback_id\":null,\"disputed\":null,\"email\":null}}', '2021-06-26 00:04:58', '2021-06-26 00:04:58'),
(3, 'order', 'created', 3, 'App\\Order', NULL, NULL, '{\"attributes\":{\"order_number\":\"#552384\",\"shop_id\":1,\"customer_id\":3,\"ship_to\":null,\"shipping_zone_id\":null,\"shipping_rate_id\":14,\"packaging_id\":2,\"item_count\":4,\"quantity\":4,\"shipping_weight\":\"718.000000\",\"taxrate\":null,\"total\":\"191.516282\",\"discount\":null,\"shipping\":\"4.000000\",\"packaging\":null,\"handling\":null,\"taxes\":null,\"grand_total\":\"195.516282\",\"billing_address\":\"<address>36867 Ivy Parkway Apt. 860<br\\/>Jamel Mountains<br\\/>North Cheyanneburgh, <br\\/> 33490-4933<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 302-868-4187<\\/address>\",\"shipping_address\":\"<address>36867 Ivy Parkway Apt. 860<br\\/>Jamel Mountains<br\\/>North Cheyanneburgh, <br\\/> 33490-4933<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 302-868-4187<\\/address>\",\"shipping_date\":null,\"delivery_date\":null,\"tracking_id\":\"RR123456789CN\",\"coupon_id\":null,\"carrier_id\":null,\"message_to_customer\":null,\"send_invoice_to_customer\":null,\"admin_note\":\"Et similique voluptatem cupiditate et fuga aliquid iste.\",\"buyer_note\":\"Sit molestiae quos quis est eos.\",\"payment_method_id\":5,\"payment_instruction\":null,\"payment_date\":null,\"payment_status\":1,\"order_status_id\":1,\"goods_received\":null,\"approved\":null,\"feedback_id\":null,\"disputed\":null,\"email\":null}}', '2021-06-26 00:04:58', '2021-06-26 00:04:58'),
(4, 'order', 'created', 4, 'App\\Order', NULL, NULL, '{\"attributes\":{\"order_number\":\"#564712\",\"shop_id\":1,\"customer_id\":2,\"ship_to\":null,\"shipping_zone_id\":null,\"shipping_rate_id\":3,\"packaging_id\":3,\"item_count\":1,\"quantity\":1,\"shipping_weight\":\"269.000000\",\"taxrate\":null,\"total\":\"140.300000\",\"discount\":null,\"shipping\":\"1.000000\",\"packaging\":null,\"handling\":null,\"taxes\":null,\"grand_total\":\"141.300000\",\"billing_address\":\"<address>8237 Chase Streets Suite 744<br\\/>Kutch Forge<br\\/>Cormierbury, <br\\/> 65339<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 296-457-5273 x510<\\/address>\",\"shipping_address\":\"<address>8237 Chase Streets Suite 744<br\\/>Kutch Forge<br\\/>Cormierbury, <br\\/> 65339<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 296-457-5273 x510<\\/address>\",\"shipping_date\":null,\"delivery_date\":null,\"tracking_id\":\"RR123456789CN\",\"coupon_id\":null,\"carrier_id\":null,\"message_to_customer\":null,\"send_invoice_to_customer\":null,\"admin_note\":\"Tempore recusandae nemo recusandae minus autem dolore.\",\"buyer_note\":\"Neque fuga vel nisi iusto quasi.\",\"payment_method_id\":5,\"payment_instruction\":null,\"payment_date\":null,\"payment_status\":1,\"order_status_id\":1,\"goods_received\":null,\"approved\":null,\"feedback_id\":null,\"disputed\":null,\"email\":null}}', '2021-06-26 00:04:59', '2021-06-26 00:04:59'),
(5, 'order', 'created', 5, 'App\\Order', NULL, NULL, '{\"attributes\":{\"order_number\":\"#979831\",\"shop_id\":1,\"customer_id\":2,\"ship_to\":null,\"shipping_zone_id\":null,\"shipping_rate_id\":7,\"packaging_id\":1,\"item_count\":8,\"quantity\":8,\"shipping_weight\":\"553.000000\",\"taxrate\":null,\"total\":\"192.361400\",\"discount\":null,\"shipping\":\"8.000000\",\"packaging\":null,\"handling\":null,\"taxes\":null,\"grand_total\":\"200.361400\",\"billing_address\":\"<address>8237 Chase Streets Suite 744<br\\/>Kutch Forge<br\\/>Cormierbury, <br\\/> 65339<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 296-457-5273 x510<\\/address>\",\"shipping_address\":\"<address>8237 Chase Streets Suite 744<br\\/>Kutch Forge<br\\/>Cormierbury, <br\\/> 65339<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 296-457-5273 x510<\\/address>\",\"shipping_date\":null,\"delivery_date\":null,\"tracking_id\":\"RR123456789CN\",\"coupon_id\":null,\"carrier_id\":null,\"message_to_customer\":null,\"send_invoice_to_customer\":null,\"admin_note\":\"Deleniti rem omnis quia odio aperiam ut dolor soluta.\",\"buyer_note\":\"Voluptatibus quidem sit ut est quasi atque enim.\",\"payment_method_id\":3,\"payment_instruction\":null,\"payment_date\":null,\"payment_status\":1,\"order_status_id\":1,\"goods_received\":null,\"approved\":null,\"feedback_id\":null,\"disputed\":null,\"email\":null}}', '2021-06-26 00:04:59', '2021-06-26 00:04:59'),
(6, 'order', 'created', 6, 'App\\Order', NULL, NULL, '{\"attributes\":{\"order_number\":\"#222973\",\"shop_id\":1,\"customer_id\":3,\"ship_to\":null,\"shipping_zone_id\":null,\"shipping_rate_id\":17,\"packaging_id\":1,\"item_count\":6,\"quantity\":6,\"shipping_weight\":\"256.000000\",\"taxrate\":null,\"total\":\"342.055000\",\"discount\":null,\"shipping\":\"6.000000\",\"packaging\":null,\"handling\":null,\"taxes\":null,\"grand_total\":\"348.055000\",\"billing_address\":\"<address>36867 Ivy Parkway Apt. 860<br\\/>Jamel Mountains<br\\/>North Cheyanneburgh, <br\\/> 33490-4933<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 302-868-4187<\\/address>\",\"shipping_address\":\"<address>36867 Ivy Parkway Apt. 860<br\\/>Jamel Mountains<br\\/>North Cheyanneburgh, <br\\/> 33490-4933<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 302-868-4187<\\/address>\",\"shipping_date\":null,\"delivery_date\":null,\"tracking_id\":\"RR123456789CN\",\"coupon_id\":null,\"carrier_id\":null,\"message_to_customer\":null,\"send_invoice_to_customer\":null,\"admin_note\":\"Natus dolores dolore sunt aut dolores eos nisi.\",\"buyer_note\":\"Libero inventore quibusdam nihil tenetur blanditiis suscipit illum.\",\"payment_method_id\":5,\"payment_instruction\":null,\"payment_date\":null,\"payment_status\":1,\"order_status_id\":1,\"goods_received\":null,\"approved\":null,\"feedback_id\":null,\"disputed\":null,\"email\":null}}', '2021-06-26 00:04:59', '2021-06-26 00:04:59'),
(7, 'order', 'created', 7, 'App\\Order', NULL, NULL, '{\"attributes\":{\"order_number\":\"#416750\",\"shop_id\":2,\"customer_id\":3,\"ship_to\":null,\"shipping_zone_id\":null,\"shipping_rate_id\":9,\"packaging_id\":5,\"item_count\":1,\"quantity\":1,\"shipping_weight\":\"476.000000\",\"taxrate\":null,\"total\":\"341.000000\",\"discount\":null,\"shipping\":\"1.000000\",\"packaging\":null,\"handling\":null,\"taxes\":null,\"grand_total\":\"342.000000\",\"billing_address\":\"<address>36867 Ivy Parkway Apt. 860<br\\/>Jamel Mountains<br\\/>North Cheyanneburgh, <br\\/> 33490-4933<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 302-868-4187<\\/address>\",\"shipping_address\":\"<address>36867 Ivy Parkway Apt. 860<br\\/>Jamel Mountains<br\\/>North Cheyanneburgh, <br\\/> 33490-4933<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 302-868-4187<\\/address>\",\"shipping_date\":null,\"delivery_date\":null,\"tracking_id\":\"RR123456789CN\",\"coupon_id\":null,\"carrier_id\":null,\"message_to_customer\":null,\"send_invoice_to_customer\":null,\"admin_note\":\"Nostrum quas atque qui consectetur.\",\"buyer_note\":\"Dolor qui consequatur non atque omnis dolor.\",\"payment_method_id\":8,\"payment_instruction\":null,\"payment_date\":null,\"payment_status\":1,\"order_status_id\":1,\"goods_received\":null,\"approved\":null,\"feedback_id\":null,\"disputed\":null,\"email\":null}}', '2021-06-26 00:04:59', '2021-06-26 00:04:59'),
(8, 'order', 'created', 8, 'App\\Order', NULL, NULL, '{\"attributes\":{\"order_number\":\"#300484\",\"shop_id\":2,\"customer_id\":1,\"ship_to\":null,\"shipping_zone_id\":null,\"shipping_rate_id\":12,\"packaging_id\":1,\"item_count\":5,\"quantity\":5,\"shipping_weight\":\"671.000000\",\"taxrate\":null,\"total\":\"101.113530\",\"discount\":null,\"shipping\":\"5.000000\",\"packaging\":null,\"handling\":null,\"taxes\":null,\"grand_total\":\"106.113530\",\"billing_address\":\"<address>4444 Feest Hills Apt. 347<br\\/>Volkman Motorway<br\\/>East Demariostad, <br\\/> 67879<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> (869) 450-0929 x8202<\\/address>\",\"shipping_address\":\"<address>4444 Feest Hills Apt. 347<br\\/>Volkman Motorway<br\\/>East Demariostad, <br\\/> 67879<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> (869) 450-0929 x8202<\\/address>\",\"shipping_date\":null,\"delivery_date\":null,\"tracking_id\":\"RR123456789CN\",\"coupon_id\":null,\"carrier_id\":null,\"message_to_customer\":null,\"send_invoice_to_customer\":null,\"admin_note\":\"Voluptatum quas quia corporis ullam saepe officia dolor.\",\"buyer_note\":\"Tenetur numquam vero omnis tempora saepe praesentium dolorem.\",\"payment_method_id\":6,\"payment_instruction\":null,\"payment_date\":null,\"payment_status\":1,\"order_status_id\":1,\"goods_received\":null,\"approved\":null,\"feedback_id\":null,\"disputed\":null,\"email\":null}}', '2021-06-26 00:05:00', '2021-06-26 00:05:00'),
(9, 'order', 'created', 9, 'App\\Order', NULL, NULL, '{\"attributes\":{\"order_number\":\"#351908\",\"shop_id\":1,\"customer_id\":2,\"ship_to\":null,\"shipping_zone_id\":null,\"shipping_rate_id\":19,\"packaging_id\":1,\"item_count\":2,\"quantity\":2,\"shipping_weight\":\"237.000000\",\"taxrate\":null,\"total\":\"296.260000\",\"discount\":null,\"shipping\":\"2.000000\",\"packaging\":null,\"handling\":null,\"taxes\":null,\"grand_total\":\"298.260000\",\"billing_address\":\"<address>8237 Chase Streets Suite 744<br\\/>Kutch Forge<br\\/>Cormierbury, <br\\/> 65339<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 296-457-5273 x510<\\/address>\",\"shipping_address\":\"<address>8237 Chase Streets Suite 744<br\\/>Kutch Forge<br\\/>Cormierbury, <br\\/> 65339<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 296-457-5273 x510<\\/address>\",\"shipping_date\":null,\"delivery_date\":null,\"tracking_id\":\"RR123456789CN\",\"coupon_id\":null,\"carrier_id\":null,\"message_to_customer\":null,\"send_invoice_to_customer\":null,\"admin_note\":\"Dolores blanditiis sequi cum veniam et veniam incidunt.\",\"buyer_note\":\"Veritatis odio placeat rerum assumenda et magni.\",\"payment_method_id\":8,\"payment_instruction\":null,\"payment_date\":null,\"payment_status\":1,\"order_status_id\":1,\"goods_received\":null,\"approved\":null,\"feedback_id\":null,\"disputed\":null,\"email\":null}}', '2021-06-26 00:05:00', '2021-06-26 00:05:00'),
(10, 'order', 'created', 10, 'App\\Order', NULL, NULL, '{\"attributes\":{\"order_number\":\"#742274\",\"shop_id\":2,\"customer_id\":2,\"ship_to\":null,\"shipping_zone_id\":null,\"shipping_rate_id\":9,\"packaging_id\":5,\"item_count\":4,\"quantity\":4,\"shipping_weight\":\"116.000000\",\"taxrate\":null,\"total\":\"106.293670\",\"discount\":null,\"shipping\":\"4.000000\",\"packaging\":null,\"handling\":null,\"taxes\":null,\"grand_total\":\"110.293670\",\"billing_address\":\"<address>8237 Chase Streets Suite 744<br\\/>Kutch Forge<br\\/>Cormierbury, <br\\/> 65339<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 296-457-5273 x510<\\/address>\",\"shipping_address\":\"<address>8237 Chase Streets Suite 744<br\\/>Kutch Forge<br\\/>Cormierbury, <br\\/> 65339<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 296-457-5273 x510<\\/address>\",\"shipping_date\":null,\"delivery_date\":null,\"tracking_id\":\"RR123456789CN\",\"coupon_id\":null,\"carrier_id\":null,\"message_to_customer\":null,\"send_invoice_to_customer\":null,\"admin_note\":\"Tempora quis quo reiciendis asperiores totam qui sed.\",\"buyer_note\":\"Voluptas velit illum ut quia aut earum optio.\",\"payment_method_id\":6,\"payment_instruction\":null,\"payment_date\":null,\"payment_status\":1,\"order_status_id\":1,\"goods_received\":null,\"approved\":null,\"feedback_id\":null,\"disputed\":null,\"email\":null}}', '2021-06-26 00:05:01', '2021-06-26 00:05:01'),
(11, 'order', 'created', 11, 'App\\Order', NULL, NULL, '{\"attributes\":{\"order_number\":\"#672877\",\"shop_id\":1,\"customer_id\":3,\"ship_to\":null,\"shipping_zone_id\":null,\"shipping_rate_id\":3,\"packaging_id\":4,\"item_count\":9,\"quantity\":9,\"shipping_weight\":\"519.000000\",\"taxrate\":null,\"total\":\"392.291617\",\"discount\":null,\"shipping\":\"9.000000\",\"packaging\":null,\"handling\":null,\"taxes\":null,\"grand_total\":\"401.291617\",\"billing_address\":\"<address>36867 Ivy Parkway Apt. 860<br\\/>Jamel Mountains<br\\/>North Cheyanneburgh, <br\\/> 33490-4933<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 302-868-4187<\\/address>\",\"shipping_address\":\"<address>36867 Ivy Parkway Apt. 860<br\\/>Jamel Mountains<br\\/>North Cheyanneburgh, <br\\/> 33490-4933<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 302-868-4187<\\/address>\",\"shipping_date\":null,\"delivery_date\":null,\"tracking_id\":\"RR123456789CN\",\"coupon_id\":null,\"carrier_id\":null,\"message_to_customer\":null,\"send_invoice_to_customer\":null,\"admin_note\":\"Autem libero vitae itaque est sit.\",\"buyer_note\":\"Dolor itaque quibusdam excepturi dolorem non est.\",\"payment_method_id\":1,\"payment_instruction\":null,\"payment_date\":null,\"payment_status\":1,\"order_status_id\":1,\"goods_received\":null,\"approved\":null,\"feedback_id\":null,\"disputed\":null,\"email\":null}}', '2021-06-26 00:05:01', '2021-06-26 00:05:01'),
(12, 'order', 'created', 12, 'App\\Order', NULL, NULL, '{\"attributes\":{\"order_number\":\"#508018\",\"shop_id\":1,\"customer_id\":2,\"ship_to\":null,\"shipping_zone_id\":null,\"shipping_rate_id\":4,\"packaging_id\":2,\"item_count\":3,\"quantity\":3,\"shipping_weight\":\"573.000000\",\"taxrate\":null,\"total\":\"314.206649\",\"discount\":null,\"shipping\":\"3.000000\",\"packaging\":null,\"handling\":null,\"taxes\":null,\"grand_total\":\"317.206649\",\"billing_address\":\"<address>8237 Chase Streets Suite 744<br\\/>Kutch Forge<br\\/>Cormierbury, <br\\/> 65339<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 296-457-5273 x510<\\/address>\",\"shipping_address\":\"<address>8237 Chase Streets Suite 744<br\\/>Kutch Forge<br\\/>Cormierbury, <br\\/> 65339<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 296-457-5273 x510<\\/address>\",\"shipping_date\":null,\"delivery_date\":null,\"tracking_id\":\"RR123456789CN\",\"coupon_id\":null,\"carrier_id\":null,\"message_to_customer\":null,\"send_invoice_to_customer\":null,\"admin_note\":\"Architecto voluptatum labore iste perferendis repellat.\",\"buyer_note\":\"Occaecati ab sed quas perferendis.\",\"payment_method_id\":2,\"payment_instruction\":null,\"payment_date\":null,\"payment_status\":1,\"order_status_id\":1,\"goods_received\":null,\"approved\":null,\"feedback_id\":null,\"disputed\":null,\"email\":null}}', '2021-06-26 00:05:01', '2021-06-26 00:05:01'),
(13, 'order', 'created', 13, 'App\\Order', NULL, NULL, '{\"attributes\":{\"order_number\":\"#175042\",\"shop_id\":2,\"customer_id\":3,\"ship_to\":null,\"shipping_zone_id\":null,\"shipping_rate_id\":16,\"packaging_id\":3,\"item_count\":1,\"quantity\":1,\"shipping_weight\":\"495.000000\",\"taxrate\":null,\"total\":\"101.758000\",\"discount\":null,\"shipping\":\"1.000000\",\"packaging\":null,\"handling\":null,\"taxes\":null,\"grand_total\":\"102.758000\",\"billing_address\":\"<address>36867 Ivy Parkway Apt. 860<br\\/>Jamel Mountains<br\\/>North Cheyanneburgh, <br\\/> 33490-4933<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 302-868-4187<\\/address>\",\"shipping_address\":\"<address>36867 Ivy Parkway Apt. 860<br\\/>Jamel Mountains<br\\/>North Cheyanneburgh, <br\\/> 33490-4933<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 302-868-4187<\\/address>\",\"shipping_date\":null,\"delivery_date\":null,\"tracking_id\":\"RR123456789CN\",\"coupon_id\":null,\"carrier_id\":null,\"message_to_customer\":null,\"send_invoice_to_customer\":null,\"admin_note\":\"Rerum voluptatibus sequi aliquid incidunt.\",\"buyer_note\":\"Labore quisquam similique et et possimus aut.\",\"payment_method_id\":6,\"payment_instruction\":null,\"payment_date\":null,\"payment_status\":1,\"order_status_id\":1,\"goods_received\":null,\"approved\":null,\"feedback_id\":null,\"disputed\":null,\"email\":null}}', '2021-06-26 00:05:01', '2021-06-26 00:05:01'),
(14, 'order', 'created', 14, 'App\\Order', NULL, NULL, '{\"attributes\":{\"order_number\":\"#565473\",\"shop_id\":1,\"customer_id\":3,\"ship_to\":null,\"shipping_zone_id\":null,\"shipping_rate_id\":2,\"packaging_id\":2,\"item_count\":2,\"quantity\":2,\"shipping_weight\":\"756.000000\",\"taxrate\":null,\"total\":\"254.026433\",\"discount\":null,\"shipping\":\"2.000000\",\"packaging\":null,\"handling\":null,\"taxes\":null,\"grand_total\":\"256.026433\",\"billing_address\":\"<address>36867 Ivy Parkway Apt. 860<br\\/>Jamel Mountains<br\\/>North Cheyanneburgh, <br\\/> 33490-4933<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 302-868-4187<\\/address>\",\"shipping_address\":\"<address>36867 Ivy Parkway Apt. 860<br\\/>Jamel Mountains<br\\/>North Cheyanneburgh, <br\\/> 33490-4933<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 302-868-4187<\\/address>\",\"shipping_date\":null,\"delivery_date\":null,\"tracking_id\":\"RR123456789CN\",\"coupon_id\":null,\"carrier_id\":null,\"message_to_customer\":null,\"send_invoice_to_customer\":null,\"admin_note\":\"Perferendis necessitatibus laudantium voluptatem nesciunt id impedit dolorem omnis.\",\"buyer_note\":\"Magni et beatae error corrupti animi et quis.\",\"payment_method_id\":7,\"payment_instruction\":null,\"payment_date\":null,\"payment_status\":1,\"order_status_id\":1,\"goods_received\":null,\"approved\":null,\"feedback_id\":null,\"disputed\":null,\"email\":null}}', '2021-06-26 00:05:01', '2021-06-26 00:05:01'),
(15, 'order', 'created', 15, 'App\\Order', NULL, NULL, '{\"attributes\":{\"order_number\":\"#127237\",\"shop_id\":2,\"customer_id\":2,\"ship_to\":null,\"shipping_zone_id\":null,\"shipping_rate_id\":17,\"packaging_id\":1,\"item_count\":1,\"quantity\":1,\"shipping_weight\":\"586.000000\",\"taxrate\":null,\"total\":\"190.740400\",\"discount\":null,\"shipping\":\"1.000000\",\"packaging\":null,\"handling\":null,\"taxes\":null,\"grand_total\":\"191.740400\",\"billing_address\":\"<address>8237 Chase Streets Suite 744<br\\/>Kutch Forge<br\\/>Cormierbury, <br\\/> 65339<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 296-457-5273 x510<\\/address>\",\"shipping_address\":\"<address>8237 Chase Streets Suite 744<br\\/>Kutch Forge<br\\/>Cormierbury, <br\\/> 65339<br\\/><abbr title=\\\"Phone\\\">P:<\\/abbr> 296-457-5273 x510<\\/address>\",\"shipping_date\":null,\"delivery_date\":null,\"tracking_id\":\"RR123456789CN\",\"coupon_id\":null,\"carrier_id\":null,\"message_to_customer\":null,\"send_invoice_to_customer\":null,\"admin_note\":\"Et veniam nostrum sed sed cupiditate eaque.\",\"buyer_note\":\"Sit et non autem voluptas at dolorem eius.\",\"payment_method_id\":2,\"payment_instruction\":null,\"payment_date\":null,\"payment_status\":1,\"order_status_id\":1,\"goods_received\":null,\"approved\":null,\"feedback_id\":null,\"disputed\":null,\"email\":null}}', '2021-06-26 00:05:01', '2021-06-26 00:05:01'),
(16, 'disput', 'created', 1, 'App\\Dispute', NULL, NULL, '{\"attributes\":{\"shop_id\":1,\"dispute_type_id\":2,\"customer_id\":1,\"order_id\":1,\"product_id\":null,\"description\":\"Odio rerum aut non. Omnis nostrum quas tenetur vel sunt et. Molestiae vero rerum accusamus eos.\",\"order_received\":true,\"return_goods\":true,\"refund_amount\":null,\"status\":2}}', '2021-06-26 00:05:02', '2021-06-26 00:05:02'),
(17, 'disput', 'created', 2, 'App\\Dispute', NULL, NULL, '{\"attributes\":{\"shop_id\":1,\"dispute_type_id\":3,\"customer_id\":1,\"order_id\":3,\"product_id\":null,\"description\":\"Qui vitae iusto autem molestias quasi. Corrupti natus animi pariatur nesciunt incidunt.\",\"order_received\":true,\"return_goods\":true,\"refund_amount\":null,\"status\":1}}', '2021-06-26 00:05:02', '2021-06-26 00:05:02'),
(18, 'disput', 'created', 3, 'App\\Dispute', NULL, NULL, '{\"attributes\":{\"shop_id\":2,\"dispute_type_id\":7,\"customer_id\":1,\"order_id\":15,\"product_id\":null,\"description\":\"Vero sequi quod officiis vitae eaque. Tempora labore sed odio. Id incidunt tempora dolor eum.\",\"order_received\":true,\"return_goods\":false,\"refund_amount\":null,\"status\":5}}', '2021-06-26 00:05:02', '2021-06-26 00:05:02'),
(19, 'disput', 'created', 4, 'App\\Dispute', NULL, NULL, '{\"attributes\":{\"shop_id\":1,\"dispute_type_id\":6,\"customer_id\":1,\"order_id\":14,\"product_id\":null,\"description\":\"Laborum eos unde non temporibus. Perspiciatis accusamus eius sit facere architecto.\",\"order_received\":true,\"return_goods\":true,\"refund_amount\":null,\"status\":5}}', '2021-06-26 00:05:02', '2021-06-26 00:05:02'),
(20, 'disput', 'created', 5, 'App\\Dispute', NULL, NULL, '{\"attributes\":{\"shop_id\":1,\"dispute_type_id\":6,\"customer_id\":1,\"order_id\":3,\"product_id\":null,\"description\":\"Aut adipisci et ut eveniet numquam. Facere iusto aspernatur nobis in ea a harum expedita.\",\"order_received\":true,\"return_goods\":true,\"refund_amount\":null,\"status\":3}}', '2021-06-26 00:05:02', '2021-06-26 00:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Primary',
  `address_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(10) UNSIGNED DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double(8,2) DEFAULT NULL,
  `longitude` double(8,2) DEFAULT NULL,
  `addressable_id` bigint(20) UNSIGNED NOT NULL,
  `addressable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address_type`, `address_title`, `address_line_1`, `address_line_2`, `city`, `state_id`, `zip_code`, `country_id`, `phone`, `latitude`, `longitude`, `addressable_id`, `addressable_type`, `created_at`, `updated_at`) VALUES
(1, 'Primary', NULL, 'Platform Address', NULL, 'Hollywood', 453, '63585', 840, NULL, NULL, NULL, 1, 'App\\System', '2021-06-26 00:03:01', '2021-06-26 00:03:01'),
(2, 'Primary', 'Primary Address', NULL, NULL, NULL, 523, NULL, 840, NULL, NULL, NULL, 1, 'App\\User', '2021-06-26 00:03:01', '2021-06-26 00:03:01'),
(3, 'Primary', 'Admin User', '882 Von Ranch', 'Dangelo Point', 'Tremblaybury', NULL, '78235-1507', 792, '685.802.2657 x887', -53.57, -4.33, 2, 'App\\User', '2021-06-26 00:03:39', '2021-06-26 00:03:39'),
(4, 'Primary', 'Merchant User', '7648 Romaguera Grove', 'Nash Stravenue', 'Port Alene', 52, '34157', 50, '617.874.2238', -64.41, 111.99, 3, 'App\\Merchant', '2021-06-26 00:03:40', '2021-06-26 00:03:40'),
(5, 'Primary', 'Billie Kuphal', '6565 Christiansen Junctions Apt. 280', 'Cassidy Harbor', 'Lawrencebury', NULL, '91499', 64, '529.223.6846 x83612', 86.80, 124.95, 4, 'App\\Merchant', '2021-06-26 00:03:40', '2021-06-26 00:03:40'),
(6, 'Primary', NULL, 'Demo Platform Address', NULL, NULL, 380, '63585', 604, NULL, NULL, NULL, 1, 'App\\Shop', '2021-07-09 00:03:40', '2021-07-09 00:03:40'),
(7, 'Primary', NULL, 'Demo Platform Address', NULL, NULL, 380, '63585', 604, NULL, NULL, NULL, 2, 'App\\Shop', '2021-07-09 00:03:40', '2021-07-09 00:03:40'),
(8, 'Primary', 'Customer Name', '4444 Feest Hills Apt. 347', 'Volkman Motorway', 'East Demariostad', NULL, '67879', 498, '(869) 450-0929 x8202', -33.76, -104.27, 1, 'App\\Customer', '2021-06-26 00:03:44', '2021-06-26 00:03:44'),
(9, 'Billing', 'Dorm Address', '3672 Cordell Passage Suite 763', 'Deckow Ridge', 'North Dereck', NULL, '79692', 260, '1-536-858-6769', 8.34, 132.32, 1, 'App\\Customer', '2021-06-26 00:03:44', '2021-06-26 00:03:44'),
(10, 'Shipping', 'Office Address', '71464 Hegmann Vista Apt. 491', 'Jacobs Estate', 'McLaughlinborough', NULL, '48154-6168', 233, '509-853-8577 x099', 13.38, -65.36, 1, 'App\\Customer', '2021-06-26 00:03:44', '2021-06-26 00:03:44'),
(11, 'Primary', 'Stefan Gulgowski', '8237 Chase Streets Suite 744', 'Kutch Forge', 'Cormierbury', NULL, '65339', 804, '296-457-5273 x510', 74.64, 2.60, 2, 'App\\Customer', '2021-06-26 00:03:45', '2021-06-26 00:03:45'),
(12, 'Billing', 'Hotel Address', '58057 Mohamed Field', 'Crawford Hills', 'Blandafort', NULL, '58839-1595', 624, '+1 (761) 545-1891', -86.21, -69.75, 2, 'App\\Customer', '2021-06-26 00:03:45', '2021-06-26 00:03:45'),
(13, 'Shipping', 'Home Address', '9163 Tyler Drives', 'Herminio Light', 'Aubreyberg', 327, '71710-6292', 392, '1-829-699-0242', 38.44, 92.15, 2, 'App\\Customer', '2021-06-26 00:03:45', '2021-06-26 00:03:45'),
(14, 'Primary', 'Viva Terry', '36867 Ivy Parkway Apt. 860', 'Jamel Mountains', 'North Cheyanneburgh', NULL, '33490-4933', 612, '302-868-4187', -1.19, -106.21, 3, 'App\\Customer', '2021-06-26 00:03:45', '2021-06-26 00:03:45'),
(15, 'Billing', 'Home Address', '985 Melissa Fall', 'Kuvalis Courts', 'North Nicoleberg', NULL, '44433-3749', 440, '(434) 998-5950 x047', -10.22, 149.27, 3, 'App\\Customer', '2021-06-26 00:03:45', '2021-06-26 00:03:45'),
(16, 'Shipping', 'Hotel Address', '5659 Johns Mission', 'Lyda Manors', 'Kaiaton', NULL, '62341', 500, '(506) 947-6939', 2.48, -69.15, 3, 'App\\Customer', '2021-06-26 00:03:45', '2021-06-26 00:03:45'),
(17, 'Primary', 'Nolan-Walsh', '47792 Wunsch Village Apt. 646', 'Harmon Drive', 'Wolfmouth', NULL, '58056', 74, '1-326-887-9808', -39.84, 12.91, 1, 'App\\Supplier', '2021-06-26 00:03:50', '2021-06-26 00:03:50'),
(18, 'Primary', 'Durgan, Casper and Ritchie', '6455 Jalen Ports', 'Name Squares', 'South Libbiechester', NULL, '05052-9172', 408, '520.937.4816 x65738', 2.82, -111.37, 2, 'App\\Supplier', '2021-06-26 00:03:51', '2021-06-26 00:03:51'),
(19, 'Primary', 'Wolff, Haley and Goodwin', '4984 Vincent Mountain Apt. 042', 'Thiel Trail', 'Enosbury', NULL, '22910-6123', 762, '482.604.4172 x189', -57.03, 178.87, 3, 'App\\Supplier', '2021-06-26 00:03:51', '2021-06-26 00:03:51'),
(20, 'Primary', 'Satterfield Inc', '8781 Bauch Street', 'Danny Gardens', 'Pinkiechester', NULL, '15626', 31, '(430) 552-5748 x795', -80.72, 177.12, 4, 'App\\Supplier', '2021-06-26 00:03:51', '2021-06-26 00:03:51'),
(21, 'Primary', 'Weissnat LLC', '901 Melyssa Knoll', 'Zboncak Pike', 'North Selinaborough', NULL, '25361', 260, '1-746-207-6097 x7229', -35.32, 71.81, 5, 'App\\Supplier', '2021-06-26 00:03:51', '2021-06-26 00:03:51'),
(22, 'Primary', 'Kuhlman-Sporer', '4291 Braun Rue', 'Schmitt Streets', 'North Morris', NULL, '00481', 466, '+1-828-887-9514', -53.93, 54.28, 1, 'App\\Warehouse', '2021-06-26 00:04:15', '2021-06-26 00:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `address_types`
--

CREATE TABLE `address_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `address_types`
--

INSERT INTO `address_types` (`id`, `type`) VALUES
(2, 'Billing'),
(1, 'Primary'),
(3, 'Shipping');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `action_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_url` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `user_id`, `body`, `action_text`, `action_url`, `created_at`, `updated_at`) VALUES
('9e274a6b-1340-4862-8ca2-525331830725', 1, 'Black Friday **Deals**!', 'Shop Now', 'https://zcart.srkwebappinnovations.com/public', '2021-06-26 00:03:38', '2021-12-09 23:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachable_id` int(10) UNSIGNED NOT NULL,
  `attachable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ownable_id` bigint(20) DEFAULT NULL,
  `ownable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_type_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `shop_id`, `name`, `attribute_type_id`, `order`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Color', 1, 0, NULL, '2021-06-26 00:03:15', '2021-06-26 00:03:15'),
(2, NULL, 'Pattern', 1, 1, NULL, '2021-06-26 00:03:15', '2021-06-26 00:03:15'),
(3, NULL, 'Size', 3, 2, NULL, '2021-06-26 00:03:15', '2021-06-26 00:03:15'),
(4, NULL, 'Style', 3, 3, NULL, '2021-06-26 00:03:15', '2021-06-26 00:03:15'),
(5, NULL, 'Gender', 2, 4, NULL, '2021-06-26 00:03:15', '2021-06-26 00:03:15'),
(6, NULL, 'Format', 3, 5, NULL, '2021-06-26 00:03:15', '2021-06-26 00:03:15');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_inventory`
--

CREATE TABLE `attribute_inventory` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_value_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_inventory`
--

INSERT INTO `attribute_inventory` (`attribute_id`, `inventory_id`, `attribute_value_id`, `created_at`, `updated_at`) VALUES
(3, 49, 20, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(3, 50, 28, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(1, 3, 9, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(6, 7, 30, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(1, 17, 6, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(2, 9, 13, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(4, 25, 26, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(6, 32, 30, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(4, 46, 26, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(4, 36, 10, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(1, 18, 1, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(2, 37, 21, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(5, 7, 18, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(5, 7, 16, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(1, 19, 11, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(6, 33, 24, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(2, 43, 4, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(1, 30, 9, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(4, 21, 19, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(6, 20, 30, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(3, 3, 20, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(3, 27, 20, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(5, 17, 18, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(5, 21, 16, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(2, 13, 4, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(6, 11, 12, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(4, 49, 19, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(1, 37, 15, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(2, 43, 21, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(1, 29, 2, '2021-06-26 00:03:38', '2021-06-26 00:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_types`
--

CREATE TABLE `attribute_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_types`
--

INSERT INTO `attribute_types` (`id`, `type`) VALUES
(1, 'Color/Pattern'),
(2, 'Radio'),
(3, 'Select');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `value` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `order` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `shop_id`, `value`, `color`, `attribute_id`, `order`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'ut', '#fcf999', 1, 4, NULL, '2021-06-26 00:04:13', '2021-06-26 00:04:13'),
(2, NULL, 'culpa', '#2bc1d0', 1, 7, NULL, '2021-06-26 00:04:13', '2021-06-26 00:04:13'),
(3, NULL, 'magni', '#235def', 2, 9, NULL, '2021-06-26 00:04:13', '2021-06-26 00:04:13'),
(4, 1, 'quia', '#57e9f3', 2, 5, NULL, '2021-06-26 00:04:13', '2021-06-26 00:04:13'),
(5, NULL, 'ut', '#13c5a9', 3, 0, NULL, '2021-06-26 00:04:13', '2021-06-26 00:04:13'),
(6, NULL, 'ullam', '#7391a5', 1, 7, NULL, '2021-06-26 00:04:13', '2021-06-26 00:04:13'),
(7, 2, 'ea', '#5d0d2a', 3, 6, NULL, '2021-06-26 00:04:13', '2021-06-26 00:04:13'),
(8, 2, 'atque', '#d41a11', 3, 3, NULL, '2021-06-26 00:04:13', '2021-06-26 00:04:13'),
(9, NULL, 'cupiditate', '#29439f', 1, 1, NULL, '2021-06-26 00:04:14', '2021-06-26 00:04:14'),
(10, 2, 'praesentium', '#39e3ae', 4, 6, NULL, '2021-06-26 00:04:14', '2021-06-26 00:04:14'),
(11, NULL, 'sed', '#6def0a', 1, 1, NULL, '2021-06-26 00:04:14', '2021-06-26 00:04:14'),
(12, NULL, 'laboriosam', '#ce4cc0', 6, 3, NULL, '2021-06-26 00:04:14', '2021-06-26 00:04:14'),
(13, NULL, 'iste', '#fd351d', 2, 1, NULL, '2021-06-26 00:04:14', '2021-06-26 00:04:14'),
(14, 2, 'ad', '#4cc73d', 2, 1, NULL, '2021-06-26 00:04:14', '2021-06-26 00:04:14'),
(15, 2, 'alias', '#f6ac55', 1, 3, NULL, '2021-06-26 00:04:14', '2021-06-26 00:04:14'),
(16, 2, 'ea', '#03c0a8', 5, 7, NULL, '2021-06-26 00:04:14', '2021-06-26 00:04:14'),
(17, 2, 'enim', '#1060b2', 6, 7, NULL, '2021-06-26 00:04:14', '2021-06-26 00:04:14'),
(18, 1, 'et', '#f7b0c2', 5, 9, NULL, '2021-06-26 00:04:14', '2021-06-26 00:04:14'),
(19, 2, 'ea', '#1d9fad', 4, 8, NULL, '2021-06-26 00:04:14', '2021-06-26 00:04:14'),
(20, NULL, 'nostrum', '#4f606e', 3, 6, NULL, '2021-06-26 00:04:14', '2021-06-26 00:04:14'),
(21, 2, 'nesciunt', '#fbff4e', 2, 3, NULL, '2021-06-26 00:04:14', '2021-06-26 00:04:14'),
(22, NULL, 'et', '#9a8ca2', 2, 1, NULL, '2021-06-26 00:04:14', '2021-06-26 00:04:14'),
(23, 2, 'deserunt', '#8fe444', 4, 3, NULL, '2021-06-26 00:04:14', '2021-06-26 00:04:14'),
(24, 2, 'quis', '#4344eb', 6, 7, NULL, '2021-06-26 00:04:14', '2021-06-26 00:04:14'),
(25, 2, 'dolore', '#0db7ae', 2, 2, NULL, '2021-06-26 00:04:15', '2021-06-26 00:04:15'),
(26, NULL, 'voluptas', '#e1d0ca', 4, 7, NULL, '2021-06-26 00:04:15', '2021-06-26 00:04:15'),
(27, 1, 'accusantium', '#814d8e', 5, 5, NULL, '2021-06-26 00:04:15', '2021-06-26 00:04:15'),
(28, 1, 'qui', '#f916ea', 3, 8, NULL, '2021-06-26 00:04:15', '2021-06-26 00:04:15'),
(29, NULL, 'deserunt', '#e4f1f6', 2, 8, NULL, '2021-06-26 00:04:15', '2021-06-26 00:04:15'),
(30, 2, 'reiciendis', '#d79cd6', 6, 3, NULL, '2021-06-26 00:04:15', '2021-06-26 00:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `link_label` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bg_color` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `columns` int(11) DEFAULT '12',
  `order` int(11) DEFAULT '100',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `link`, `link_label`, `bg_color`, `group_id`, `columns`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Everyday essentials deals', 'Up to 24% off', '/category/reiciendis-labore-ipsum-est-et-est', 'Shop Now', '#0d28f7', 'group_1', 4, 100, '2021-06-26 00:05:28', '2021-12-10 00:48:55'),
(2, 'Books category deals', 'Flat 66% off', '/category/debitis-necessitatibus-ratione-quasi-voluptas', 'Shop Now', '#c9668c', 'group_1', 4, 100, '2021-06-26 00:05:28', '2021-06-26 00:05:28'),
(3, 'Free shipping', '80% off today!', '/category/facilis-error-doloribus-iste-autem-natus-labore-a-animi', 'Shop Now', '#e3b4e8', 'group_1', 4, 100, '2021-06-26 00:05:28', '2023-03-09 14:29:34'),
(4, 'Deal of the day', 'Flat 77% off', '/category/reiciendis-labore-ipsum-est-et-est', 'Shop Now', '#2d947e', 'group_2', 6, 100, '2021-06-26 00:05:29', '2021-06-26 00:05:29'),
(5, 'BIG sale week!', 'Up to 61% off', '/category/reiciendis-labore-ipsum-est-et-est', 'Shop Now', '#939eea', 'group_2', 6, 100, '2021-06-26 00:05:29', '2023-03-09 14:30:04'),
(6, 'Knockout offers!', 'Flat 58% off + free shipping', '/category/reiciendis-labore-ipsum-est-et-est', 'Shop Now', '#13df1e', 'group_3', 12, 100, '2021-06-26 00:05:29', '2023-03-09 14:32:45'),
(7, 'Everyday essentials deals', '63% off today!', '/category/reiciendis-labore-ipsum-est-et-est', 'Shop Now', '#7f1f44', 'group_4', 6, 100, '2021-06-26 00:05:29', '2023-03-09 14:32:58'),
(8, 'Tech accessories with free shipping', 'Don\'t miss out!', '/category/reiciendis-labore-ipsum-est-et-est', 'Shop Now', '#864508', 'group_4', 6, 100, '2021-06-26 00:05:29', '2023-03-09 14:33:10'),
(9, 'Deal of the day', 'Flat 22% off', '/category/reiciendis-labore-ipsum-est-et-est', 'Shop Now', '#0a251e', 'group_5', 12, 100, '2021-06-26 00:05:29', '2021-06-26 00:05:29'),
(10, 'Fashion accessories deals', 'Don\'t miss out!', '/category/numquam-consequatur-molestiae-illum-laudantium-quidem-dignissimos-et', 'Shop Now', '#827198', 'group_6', 6, 100, '2021-06-26 00:05:29', '2021-06-26 00:05:29'),
(11, 'Save up to 40%', 'Don\'t miss out!', '/category/reiciendis-labore-ipsum-est-et-est', 'Shop Now', '#cac77b', 'group_6', 6, 100, '2021-06-26 00:05:29', '2021-06-26 00:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `banner_groups`
--

CREATE TABLE `banner_groups` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner_groups`
--

INSERT INTO `banner_groups` (`id`, `name`) VALUES
('group_1', 'Group 1'),
('group_2', 'Group 2'),
('group_3', 'Group 3'),
('group_4', 'Group 4'),
('group_5', 'Group 5'),
('group_6', 'Group 6');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `published_at` timestamp NULL DEFAULT NULL,
  `likes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dislikes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `likes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dislikes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cancellations`
--

CREATE TABLE `cancellations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `cancellation_reason_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `items` text COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `return_goods` tinyint(1) DEFAULT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cancellation_reasons`
--

CREATE TABLE `cancellation_reasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `office_use` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cancellation_reasons`
--

INSERT INTO `cancellation_reasons` (`id`, `detail`, `office_use`) VALUES
(1, 'Order created by mistake', NULL),
(2, 'Delivery takes so long', NULL),
(3, 'High shipping cost', NULL),
(4, 'Wrong shipping address', NULL),
(5, 'Need some adjustment', NULL),
(6, 'Wrong billing address', NULL),
(7, 'Other reason', NULL),
(8, 'No inventory', 1),
(9, 'Buyer cancelled', 1),
(10, 'General adjustment', 1),
(11, 'Shipping address undeliverable', 1),
(12, 'Pricing issue', 1),
(13, 'Customs problem', 1);

-- --------------------------------------------------------

--
-- Table structure for table `carriers`
--

CREATE TABLE `carriers` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tracking_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `carriers`
--

INSERT INTO `carriers` (`id`, `shop_id`, `tax_id`, `name`, `email`, `phone`, `tracking_url`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 'DHL', 'zelma.prosacco@lang.com', '+19499752214', 'https://www.robel.net/a-officia-sunt-repellat/@', 1, NULL, '2021-06-26 00:04:17', '2021-06-26 00:04:17'),
(2, 1, 4, 'USPS', 'collins.bertha@price.info', '662-461-6582 x523', 'https://www.lehner.com/blanditiis-in-deleniti-explicabo-eum-ut/@', 1, NULL, '2021-06-26 00:04:17', '2021-06-26 00:04:17'),
(3, 1, 1, 'TNT Express', 'mikel91@gmail.com', '1-225-226-3508', 'http://eichmann.com/expedita-aliquid-pariatur-aut-repellendus-omnis-deleniti-recusandae-voluptas/@', 1, NULL, '2021-06-26 00:04:17', '2021-06-26 00:04:17'),
(4, 1, 1, 'YRC', 'jacinto48@flatley.com', '1-968-924-2007 x016', 'http://www.beahan.com/dicta-consequatur-maxime-reprehenderit/@', 1, NULL, '2021-06-26 00:04:17', '2021-06-26 00:04:17'),
(5, 1, 6, 'YRC', 'collier.veronica@moore.com', '+14399813493', 'https://www.streich.com/atque-deleniti-corporis-et/@', 1, NULL, '2021-06-26 00:04:17', '2021-06-26 00:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_to` int(10) UNSIGNED DEFAULT NULL,
  `ship_to_country_id` int(10) UNSIGNED DEFAULT NULL,
  `ship_to_state_id` int(10) UNSIGNED DEFAULT NULL,
  `shipping_zone_id` int(10) UNSIGNED DEFAULT NULL,
  `shipping_rate_id` int(10) UNSIGNED DEFAULT NULL,
  `packaging_id` int(10) UNSIGNED DEFAULT NULL,
  `item_count` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `total` decimal(20,6) DEFAULT NULL,
  `discount` decimal(20,6) DEFAULT NULL,
  `shipping` decimal(20,6) DEFAULT NULL,
  `packaging` decimal(20,6) DEFAULT NULL,
  `handling` decimal(20,6) DEFAULT NULL,
  `taxes` decimal(20,6) DEFAULT NULL,
  `grand_total` decimal(20,6) DEFAULT NULL,
  `taxrate` decimal(20,6) DEFAULT NULL,
  `shipping_weight` decimal(20,2) DEFAULT NULL,
  `billing_address` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_address` bigint(20) UNSIGNED DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_status` int(11) NOT NULL DEFAULT '1',
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `message_to_customer` text COLLATE utf8_unicode_ci,
  `admin_note` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `shop_id`, `customer_id`, `ip_address`, `ship_to`, `ship_to_country_id`, `ship_to_state_id`, `shipping_zone_id`, `shipping_rate_id`, `packaging_id`, `item_count`, `quantity`, `total`, `discount`, `shipping`, `packaging`, `handling`, `taxes`, `grand_total`, `taxrate`, `shipping_weight`, `billing_address`, `shipping_address`, `email`, `coupon_id`, `payment_status`, `payment_method_id`, `message_to_customer`, `admin_note`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '::1', NULL, NULL, NULL, 1, 1, NULL, 1, 1, '191.140955', NULL, '5.000000', NULL, '2.000000', '0.000000', '198.140955', '0.000000', '414.00', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2021-06-26 09:52:43', '2021-06-26 10:11:56'),
(2, 2, NULL, '::1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '398.260000', NULL, NULL, NULL, '2.000000', NULL, NULL, NULL, '317.00', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2021-06-26 10:11:30', '2021-06-26 10:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `item_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(20,6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`cart_id`, `inventory_id`, `item_description`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 2, 'et: Qui enim sit et explicabo et maiores magnam. -  - New', 1, '191.140955', '2021-06-26 09:52:43', '2021-06-26 10:11:55'),
(2, 26, 'quo: Ut quaerat quisquam aliquid. -  - Refurbished', 1, '398.260000', '2021-06-26 10:11:30', '2021-06-26 10:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_sub_group_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `featured` tinyint(1) DEFAULT NULL,
  `order` int(11) DEFAULT '100',
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_description` longtext COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_sub_group_id`, `name`, `slug`, `description`, `active`, `featured`, `order`, `meta_title`, `meta_description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 24, 'Mobile', 'mobile', 'Mobile Phones', 1, 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:47', '2021-06-26 00:03:47'),
(2, 19, 'Mobile Accessories', 'mobile-accessories', 'Headphone, Adapter, Casing etc', 1, 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:47', '2021-06-26 00:03:47'),
(3, 6, 'Laptop', 'laptop', 'Laptop', 1, 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:47', '2021-06-26 00:03:47'),
(4, 16, 'Desktop', 'desktop', 'Desktop', 1, 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:47', '2021-06-26 00:03:47'),
(5, 15, 'Tablet', 'tablet', 'Tablet Computer and Accessories', 1, 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:47', '2021-06-26 00:03:47'),
(6, 20, 'TVs', 'tvs', 'TVs and Accessories', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:47', '2021-06-26 00:03:47'),
(7, 19, 'Home Theater System', 'home-theater', 'Home Theater Sound System and Accessories', 1, 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:47', '2021-06-26 00:03:47'),
(8, 17, 'Point & Shoot Camera', 'pns-camera', 'PnS Camera and Accessories', 1, 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:47', '2021-06-26 00:03:47'),
(9, 3, 'DSLR', 'dslr', 'DSLR Camera and Accessories', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:47', '2021-06-26 00:03:47'),
(10, 20, 'Video Camera', 'video-camera', 'Video Camera and Accessories', 1, 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:47', '2021-06-26 00:03:47'),
(11, 9, 'Harvey Ltd', 'qui-aliquam-et-dolore-dolorem-dolore-quasi-molestiae', 'Laborum sit qui velit corporis. Rem et alias consequatur sint et quo qui.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:47', '2021-06-26 00:03:47'),
(12, 13, 'Miller LLC', 'minus-dignissimos-ut-itaque-magni-incidunt', 'Asperiores et necessitatibus modi dolorum ut omnis sed quisquam.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:47', '2021-06-26 00:03:47'),
(13, 12, 'Weissnat and Sons', 'enim-sed-delectus-voluptas-sunt-in-facilis-voluptatem', 'Aspernatur ducimus quae commodi omnis.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:48', '2021-06-26 00:03:48'),
(14, 25, 'Doyle-Prosacco', 'reiciendis-labore-ipsum-est-et-est', 'Quidem sequi officiis expedita. Est saepe sit in amet.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:48', '2021-06-26 00:03:48'),
(15, 5, 'Reichel, Schumm and Jast', 'nisi-ipsam-rerum-nam-consequatur-omnis-natus-magnam', 'Est cupiditate dolor sint quod officia possimus architecto et.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:48', '2021-06-26 00:03:48'),
(16, 5, 'O\'Keefe LLC', 'atque-harum-minima-modi-vel', 'Ex et voluptatum blanditiis maxime reiciendis maiores non.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:48', '2021-06-26 00:03:48'),
(17, 17, 'Simonis and Sons', 'asperiores-illo-sunt-odio-culpa-nisi-atque-tenetur', 'Qui quod ad ipsam eos inventore dolorem nisi.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:48', '2021-06-26 00:03:48'),
(18, 2, 'Rau, Kreiger and Cronin', 'enim-necessitatibus-sit-sunt', 'Voluptatum quis quia animi necessitatibus rerum ut.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:48', '2021-06-26 00:03:48'),
(19, 8, 'Hodkiewicz-Nader', 'ipsa-cumque-illo-et', 'Dicta voluptate sit doloremque ipsam et. Debitis dignissimos magnam fugit qui.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:48', '2021-06-26 00:03:48'),
(20, 15, 'Hessel-Bernier', 'necessitatibus-est-incidunt-soluta-ab-qui-numquam', 'In et vero odit labore quis velit. Atque illo magnam accusamus rerum.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:48', '2021-06-26 00:03:48'),
(21, 19, 'Franecki, Blanda and Ryan', 'fugiat-error-est-iure-quaerat', 'Iusto et enim quae ipsam illo natus facere. Quos libero et vel quia.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:48', '2021-06-26 00:03:48'),
(22, 8, 'Gottlieb, Reichel and Mayert', 'natus-sint-temporibus-enim-expedita-ut-tenetur-temporibus', 'Non ducimus provident quia quo nisi reprehenderit nostrum.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:48', '2021-06-26 00:03:48'),
(23, 25, 'Jones-Kiehn', 'numquam-consequatur-molestiae-illum-laudantium-quidem-dignissimos-et', 'Et totam sunt ea sit. Error necessitatibus sunt et in maiores.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:48', '2021-06-26 00:03:48'),
(24, 22, 'Krajcik Group', 'qui-ut-sunt-suscipit-velit-dolor-suscipit-eius', 'Sint magni non ut quo. Qui aperiam sapiente rerum.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:48', '2021-06-26 00:03:48'),
(25, 10, 'Johnson-Sauer', 'beatae-et-vel-deleniti-ducimus', 'Ipsum quasi sequi ab perspiciatis porro repellendus dolor occaecati.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(26, 11, 'Johns Group', 'occaecati-non-molestiae-vel-aut-voluptas', 'Delectus recusandae hic sunt voluptatem autem commodi.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(27, 4, 'Jones, Kuhic and Homenick', 'ducimus-aut-libero-aut', 'Nihil illo nihil dolorum inventore.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(28, 14, 'Will Ltd', 'est-voluptatem-consequuntur-enim-et', 'Et qui perspiciatis autem neque deserunt.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(29, 23, 'O\'Reilly, Moore and Carroll', 'nihil-ipsam-est-consequuntur-sed-et', 'Rerum consectetur et ea quia consequatur.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(30, 15, 'Heller Inc', 'mollitia-sint-eum-sed-voluptatum-rem', 'Quisquam provident saepe veritatis qui exercitationem.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(31, 20, 'Hessel, Fay and Hudson', 'facilis-error-doloribus-iste-autem-natus-labore-a-animi', 'Quaerat facere magni cum nulla molestias odit at laborum.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(32, 14, 'Osinski Ltd', 'libero-ut-illo-voluptatem-animi', 'Accusantium quo nihil sit quam.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(33, 25, 'Stracke, Rogahn and Denesik', 'deserunt-nesciunt-ea-molestiae-sed-dignissimos-quia', 'Quia nostrum error facilis eaque sit illum fugiat.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(34, 18, 'Schoen LLC', 'voluptatem-laboriosam-ab-provident-natus-eligendi', 'Repudiandae debitis dolor sint molestias sunt aut.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(35, 14, 'Wolf, Streich and Homenick', 'fugiat-vero-natus-nulla-impedit', 'Placeat nostrum recusandae laudantium soluta aut quos.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(36, 1, 'Walker-Erdman', 'voluptatum-dolor-ratione-quia-quis-vel-sint-sed', 'Quam sit illo atque error saepe odit. Voluptates omnis aut vitae aut deleniti.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(37, 7, 'Rath, Jones and Kohler', 'nesciunt-rerum-exercitationem-qui-voluptate-velit-nesciunt-aut-autem', 'Exercitationem quisquam quia officia et et.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(38, 13, 'Durgan PLC', 'perferendis-amet-at-neque', 'Id quia eos esse quod sequi. Eum maxime est sint impedit.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(39, 14, 'Gaylord-Casper', 'debitis-necessitatibus-ratione-quasi-voluptas', 'Nemo fugit eaque iure dolores. Nostrum qui nihil libero iste pariatur.', 1, NULL, 100, 'hj', 'gfggf', NULL, '2021-06-26 00:03:49', '2021-12-06 10:11:16'),
(40, 23, 'Glover-McDermott', 'cumque-aut-fugit-ut-est-earum', 'Cum architecto at voluptatibus. Quae error voluptas quia.', 1, NULL, 100, NULL, NULL, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(41, 10, 'Test', 'test', NULL, 0, NULL, 1, 'Test', 'Test', NULL, '2021-12-06 12:30:50', '2021-12-06 12:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `category_groups`
--

CREATE TABLE `category_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'cube',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `order` int(11) DEFAULT '100',
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_description` longtext COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_groups`
--

INSERT INTO `category_groups` (`id`, `name`, `slug`, `description`, `icon`, `active`, `order`, `meta_title`, `meta_description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Proteins', 'nutrex', 'Cookware, Dining, Bath, Home Decor and more', 'fa-shower', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:45', '2021-06-26 00:03:45'),
(2, 'Amino & EAAS', 'amino-eaas', 'Mobile, Computer, Tablet, Camera etc', 'fa-plug', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:45', '2021-06-26 00:03:45'),
(3, 'Glutamine', 'glutamine', 'Toys, Footwear etc', 'fa-gamepad', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:45', '2021-06-26 00:03:45'),
(4, 'Pre-Workout', 'pre-workout', 'Shoes, Clothing, Life style items', 'fa-tshirt', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:45', '2021-06-26 00:03:45'),
(5, 'Post-Workout', 'post-workout', 'Cosmetics, Foods and more.', 'fa-hot-tub', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:45', '2021-06-26 00:03:45'),
(6, 'Intra-Workout', 'intra-workout', 'Cycle, Tennis, Boxing, Cricket and more.', 'fa-skiing', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:45', '2021-06-26 00:03:45'),
(7, 'Creatine', 'creatine', 'Necklances, Rings, Pendants and more.', 'fa-gem', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:45', '2021-06-26 00:03:45'),
(8, 'TestoteroneBoosters', 'testosteroneboosters', 'Pet foods and supplies.', 'fa-dog', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:45', '2021-06-26 00:03:45'),
(9, 'Carbohydrates', 'carbohydrates', 'Craft Sewing, Supplies and more.', 'fa-paint-brush', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:45', '2021-06-26 00:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(38, 8, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(32, 8, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(13, 8, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(27, 16, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(7, 16, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(3, 16, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(17, 16, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(4, 28, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(19, 28, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(2, 28, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(37, 28, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(26, 27, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(2, 27, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(12, 27, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(37, 10, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(40, 10, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(29, 10, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(5, 10, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(8, 10, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(10, 30, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(5, 30, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(19, 30, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(38, 30, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(17, 25, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(39, 25, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(28, 25, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(9, 25, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(26, 19, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(5, 19, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(4, 19, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(11, 19, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(21, 18, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(38, 18, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(36, 18, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(31, 18, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(5, 9, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(1, 9, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(1, 9, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(16, 9, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(12, 29, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(20, 29, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(13, 29, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(21, 29, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(26, 13, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(27, 13, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(4, 13, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(24, 13, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(30, 3, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(4, 3, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(17, 3, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(38, 3, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(1, 1, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(6, 1, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(25, 1, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(30, 4, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(9, 4, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(24, 4, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(29, 4, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(19, 14, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(25, 14, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(15, 14, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(14, 14, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(3, 12, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(16, 12, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(18, 12, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(14, 12, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(40, 12, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(18, 22, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(33, 22, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(23, 22, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(26, 22, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(29, 6, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(6, 6, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(20, 6, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(8, 11, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(26, 11, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(28, 11, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(21, 21, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(1, 21, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(9, 21, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(1, 7, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(8, 7, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(29, 7, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(31, 2, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(18, 2, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(16, 2, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(21, 5, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(2, 5, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(19, 5, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(23, 26, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(25, 26, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(22, 26, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(12, 20, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(12, 20, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(19, 20, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(32, 23, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(27, 23, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(13, 23, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(20, 17, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(4, 17, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(17, 17, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(18, 24, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(24, 24, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(37, 24, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(33, 15, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(36, 15, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(19, 15, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(25, 15, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(30, 22, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(30, 3, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(30, 5, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(30, 20, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(30, 26, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(30, 14, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(30, 18, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(4, 25, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(4, 22, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(4, 18, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(4, 28, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(4, 3, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(31, 19, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(31, 14, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(31, 9, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(31, 28, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(31, 20, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(31, 25, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(31, 14, '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(31, 15, '2021-06-26 00:05:36', '2021-06-26 00:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `category_sub_groups`
--

CREATE TABLE `category_sub_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_group_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `order` int(11) DEFAULT '100',
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_description` longtext COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_sub_groups`
--

INSERT INTO `category_sub_groups` (`id`, `category_group_id`, `name`, `slug`, `description`, `active`, `order`, `meta_title`, `meta_description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mobile & Accessories', 'mobile-accessories', 'Cell Phones and Accessories', 1, 100, 'hgh', 'hk', NULL, '2021-06-26 00:03:46', '2021-12-06 10:06:14'),
(2, 1, 'Computer & Accessories', 'computer-accessories', 'Tablet, Laptop, Desktop and Accessories', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(3, 1, 'Home Entertainment', 'home-entertainment', 'TVs, Home Theaters etc', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(4, 1, 'Photo & Video', 'photo-video', 'PnS, DSLR, Video Camera and Accessories', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(5, 2, 'Indoor', 'indoor', 'Puzzle, Keram etc', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(6, 2, 'Outdoor', 'outdoor', 'Cycle, Dron etc', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(7, 3, 'Men\'s Fashion', 'mens-fashion', 'Lots of fashion products.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(8, 3, 'Women\'s Fashion', 'womens-fashion', 'Lots of fashion products.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(9, 4, 'Kitchen', 'kitchen', 'Kitchen and cooking products.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(10, 4, 'Garden', 'garden', 'Gardening related products.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(11, 3, 'McDermott, Hilpert and Mosciski', 'adipisci-ut-delectus-similique-in-earum', 'Temporibus tempore ad cumque dolor eveniet fuga. Animi magni pariatur suscipit iusto illum sit ut odit. Numquam fugit est aut vero deserunt ratione. Tenetur impedit voluptates praesentium et tempore in ad. Et natus sunt quis molestias. Qui aspernatur veniam aspernatur quia omnis dolorum. Voluptatem maiores libero eum et animi aliquam.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(12, 3, 'Lockman LLC', 'et-expedita-dolorem-doloribus-sunt', 'Est qui cumque voluptas minus fuga fugiat consectetur. Vero excepturi odio doloremque possimus nisi aliquam ipsum. Aliquid odit quidem quaerat enim natus repellendus. Autem soluta quam qui officia id sit. Expedita quam praesentium eos distinctio eaque aut et sit. Architecto quia est soluta et. Est dolor non ipsam atque dolor praesentium.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(13, 1, 'Davis, Mayert and Hintz', 'praesentium-necessitatibus-laboriosam-nam-veritatis-necessitatibus-repellendus', 'Id dolorem qui vel sint quisquam iusto consequatur voluptas. Quia architecto accusantium quisquam vero nihil. Quia numquam consequatur occaecati blanditiis fuga iste iure. Est sed fugit aperiam aliquam quidem commodi odio dolore. Fugiat dolores deserunt aliquam cum. Doloremque dolorem ipsa magnam. Eaque dignissimos aut nobis et laudantium sed blanditiis. Quos voluptatum voluptas ad mollitia. Minus et qui dolor dignissimos.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(14, 4, 'Purdy, Lubowitz and Collier', 'tenetur-libero-dolore-nihil-voluptate-officia-accusantium', 'Ut consequatur deleniti at sunt sit. Quibusdam magnam ex libero officiis quibusdam natus aut quisquam. Rerum nam sit nemo dolore officia. Atque id nam consequuntur rerum repudiandae voluptatem. Ducimus vel distinctio sit dignissimos aperiam a. Accusantium consequuntur optio excepturi qui eum. Libero ducimus hic cum et nihil. Voluptatem repellendus pariatur a laborum veritatis qui. Quasi minus libero nihil odit distinctio doloribus ut. Odio quo nihil accusamus maiores cum quis.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(15, 6, 'Kuhn, Kerluke and Mitchell', 'ut-similique-laboriosam-quibusdam-impedit', 'Odit consequatur autem dolorum assumenda eligendi inventore. Ea dolores dolore id voluptatibus voluptas voluptatem et. Autem ut deleniti error quisquam ea. Sed cupiditate sequi voluptatem et. Magni ea ducimus minus est incidunt beatae dicta. Voluptatibus tempora qui tempore cumque dicta. Illo corrupti qui quia excepturi officia magni. Sequi vel veniam dicta dolores consequatur deleniti tenetur hic. Nesciunt et molestias ab quam optio magni.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(16, 6, 'Sauer-Bosco', 'et-sint-cumque-et-consequuntur', 'Laborum rerum et labore iste officiis quia ipsum delectus. Expedita veniam qui blanditiis voluptatem ducimus quo. Dolorum explicabo officia et non voluptatibus corporis officiis. Rerum saepe exercitationem molestiae laborum consequuntur vero occaecati. Dolores qui vel officia porro deserunt. Quibusdam cupiditate aut quis nostrum. Impedit cumque voluptate ut ipsam deleniti quia deleniti.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(17, 7, 'Rogahn, McCullough and Schultz', 'ut-non-et-optio-aliquam', 'Similique hic suscipit iste culpa beatae occaecati quia. Facilis aut dolorem non qui molestiae sed aut. Ducimus ut voluptatibus error quo. Laudantium cumque et et cum omnis nam sed. Qui est reprehenderit veniam sit in sint repellat. Omnis assumenda qui ipsum eveniet non consequatur omnis. Laboriosam et cumque veniam illum dolores. Asperiores incidunt quam quas et nisi quibusdam.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(18, 4, 'Stark, Daniel and Bruen', 'aut-voluptatem-aut-voluptate', 'Odio quia atque similique error eum itaque facere. Ipsum consequatur quo omnis. Voluptatem architecto et dolor cumque. Libero quis nesciunt quas exercitationem nam voluptatem. Ad veritatis recusandae omnis enim laudantium. Reiciendis magnam distinctio velit debitis pariatur. Minima eum eum consequatur voluptatibus eaque exercitationem et perferendis. Ad quis aut veritatis et sint quisquam. Rerum id maxime quas voluptates aperiam optio.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(19, 3, 'Schultz, Roob and Borer', 'ut-architecto-laudantium-doloribus-corrupti', 'Ab possimus assumenda iure reiciendis. Harum voluptas nostrum qui perferendis iste unde sed. Ad voluptates architecto sed qui et qui. Cumque aut qui maiores est. Amet eos non ut dolorem vel accusamus consequatur. Eum fuga et et sunt ratione aut perferendis. Aut voluptatum voluptas molestiae quidem quia asperiores. In asperiores sunt rerum possimus.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(20, 2, 'Rohan-Wisozk', 'fugit-sed-aut-dolorem-non-et-culpa-dolores', 'Sint velit omnis dolore. Deleniti natus unde enim iste quis aliquam et. Et omnis illum totam quia velit debitis. Aut autem et aut cum sunt labore. A et id itaque sit expedita fugiat architecto. Nulla fugiat quos enim ad ab culpa eius. Facere laborum quia adipisci dolore. Autem iusto et recusandae dicta. Ratione ea iusto rerum sed saepe ea quam. Non consequatur sit iusto placeat assumenda eum quidem. Nihil iure qui nam. Qui qui omnis explicabo sapiente voluptatem repellat.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(21, 9, 'Ritchie-Cremin', 'maiores-ipsam-quisquam-accusamus-qui', 'Quasi qui dolorem non quasi repellat. Tempora incidunt quia eaque autem consequuntur eligendi. Atque provident iure saepe voluptatum voluptatem esse et. Similique vel quia consequatur quia dignissimos. Est omnis placeat temporibus praesentium sed. Quaerat qui suscipit minima sapiente. Et recusandae unde in porro. A autem velit qui consequatur architecto. Fugiat est harum ipsa commodi placeat vitae. Est facere et cum error culpa.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:47', '2021-06-26 00:03:47'),
(22, 9, 'Raynor, Johnson and Gorczany', 'dicta-distinctio-ipsa-quis-commodi-veritatis-sit-laborum', 'Nihil saepe id quaerat quae. Id dicta impedit veritatis praesentium nihil nihil et. Laborum similique tempora iure nesciunt incidunt. Magnam ad minima voluptas velit sint ea qui. Soluta accusamus amet commodi alias molestiae est. Quia debitis eius tenetur sit aliquam nisi omnis. Omnis delectus similique architecto esse est autem. Quis modi eius omnis quia ullam. Totam assumenda inventore aliquam quia. Autem fugiat nihil suscipit. Laboriosam voluptate voluptate cum laborum iste non.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:47', '2021-06-26 00:03:47'),
(23, 6, 'Morar and Sons', 'aut-sit-sit-autem-aut-ullam-voluptatem-labore', 'Quisquam vero et repudiandae nisi accusamus aut aperiam. Tenetur qui necessitatibus corrupti unde deleniti. Possimus beatae quidem et voluptas. Quia consequatur eum alias non. Eius omnis voluptatem dignissimos. Praesentium praesentium corrupti fugit vero voluptatem voluptatem nesciunt. Qui saepe et qui sint. Consectetur qui aut ipsum est qui. Sint rerum at nostrum nisi minima. Tempora consequatur ipsum et iusto ut dolor.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:47', '2021-06-26 00:03:47'),
(24, 1, 'Bailey, Kulas and Feest', 'asperiores-dolorem-vel-eveniet-cupiditate', 'Magnam illum tenetur dolores sunt eos quia. Repellat veniam quia et voluptas sed molestiae aperiam. Quisquam id nam eveniet mollitia pariatur enim dolorum. Sit sint qui dolor minima vero ratione quaerat. Ab enim odio error quibusdam ab. Quaerat ipsam porro quia labore incidunt et. Assumenda blanditiis nihil excepturi quas. Et officiis ut cumque aperiam tempore.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:47', '2021-06-26 00:03:47'),
(25, 1, 'Veum, Cormier and Shields', 'nisi-modi-maxime-est-iste-suscipit-deleniti-cumque', 'Sed veniam deserunt esse fugit voluptatem. Ut illo ex nisi illo labore ipsam tempora nesciunt. Voluptatum ex est unde voluptas tenetur vel at. Amet accusantium iste corporis qui omnis sit iusto. Omnis aut eos non dolores aliquid. Earum qui ipsa reiciendis dolorum. Vel et cumque fugiat aspernatur quos culpa sed. Et itaque occaecati cupiditate nobis aut cupiditate. Enim sed nisi fugit hic eos quis nemo. Ullam dolorum ut omnis placeat eius.', 1, 100, NULL, NULL, NULL, '2021-06-26 00:03:47', '2021-06-26 00:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `chat_conversations`
--

CREATE TABLE `chat_conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `private` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `shop_id` int(10) UNSIGNED NOT NULL,
  `support_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `support_phone_toll_free` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `support_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `support_agent` bigint(20) UNSIGNED DEFAULT NULL,
  `default_sender_email_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_email_sender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `return_refund` longtext COLLATE utf8_unicode_ci,
  `order_number_prefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT '#',
  `order_number_suffix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_tax_id` int(10) UNSIGNED DEFAULT '1',
  `order_handling_cost` decimal(20,6) DEFAULT NULL,
  `auto_archive_order` tinyint(1) DEFAULT '0',
  `default_payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `pagination` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `show_shop_desc_with_listing` tinyint(1) DEFAULT NULL,
  `show_refund_policy_with_listing` tinyint(1) DEFAULT '1',
  `alert_quantity` int(11) DEFAULT NULL,
  `digital_goods_only` tinyint(1) DEFAULT '0',
  `default_warehouse_id` int(10) UNSIGNED DEFAULT NULL,
  `default_supplier_id` int(10) UNSIGNED DEFAULT NULL,
  `default_packaging_ids` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_new_message` tinyint(1) DEFAULT NULL,
  `notify_alert_quantity` tinyint(1) DEFAULT NULL,
  `notify_inventory_out` tinyint(1) DEFAULT NULL,
  `notify_new_order` tinyint(1) DEFAULT '1',
  `notify_abandoned_checkout` tinyint(1) DEFAULT NULL,
  `notify_new_disput` tinyint(1) DEFAULT '1',
  `enable_live_chat` tinyint(1) DEFAULT '1',
  `notify_new_chat` tinyint(1) DEFAULT '1',
  `maintenance_mode` tinyint(1) DEFAULT '1',
  `pending_verification` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`shop_id`, `support_phone`, `support_phone_toll_free`, `support_email`, `support_agent`, `default_sender_email_address`, `default_email_sender_name`, `return_refund`, `order_number_prefix`, `order_number_suffix`, `default_tax_id`, `order_handling_cost`, `auto_archive_order`, `default_payment_method_id`, `pagination`, `show_shop_desc_with_listing`, `show_refund_policy_with_listing`, `alert_quantity`, `digital_goods_only`, `default_warehouse_id`, `default_supplier_id`, `default_packaging_ids`, `notify_new_message`, `notify_alert_quantity`, `notify_inventory_out`, `notify_new_order`, `notify_abandoned_checkout`, `notify_new_disput`, `enable_live_chat`, `notify_new_chat`, `maintenance_mode`, `pending_verification`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'support.shop@demo.com', NULL, 'noreply.shop@demo.com', 'Support Agent', '<h3>Return & Refund Policy</h3> Thanks for shopping at My Shop.<br/> If you are not entirely satisfied with your purchase, we\'re here to help.<br/><br/><h3>Returns</h3>You have 30 (change this) calendar days to return an item from the date you received it.<br/>To be eligible for a return, your item must be unused and in the same condition that you received it.<br/>Your item must be in the original packaging.<br/>Your item needs to have the receipt or proof of purchase.<br/><br/>', '#', NULL, 1, '2.000000', 0, NULL, 10, NULL, 1, NULL, 0, NULL, NULL, 'a:3:{i:0;i:0;i:1;i:4;i:2;i:5;}', NULL, NULL, NULL, 1, NULL, 1, 1, 1, 0, NULL, '2021-07-09 00:03:40', '2021-07-09 00:03:40'),
(2, NULL, NULL, 'support.shop@demo.com', NULL, 'noreply.shop@demo.com', 'Support Agent', '<h3>Return & Refund Policy</h3> Thanks for shopping at My Shop.<br/> If you are not entirely satisfied with your purchase, we\'re here to help.<br/><br/><h3>Returns</h3>You have 30 (change this) calendar days to return an item from the date you received it.<br/>To be eligible for a return, your item must be unused and in the same condition that you received it.<br/>Your item must be in the original packaging.<br/>Your item needs to have the receipt or proof of purchase.<br/><br/>', '#', NULL, 1, '2.000000', 0, NULL, 10, NULL, 1, NULL, 0, NULL, NULL, 'a:3:{i:0;i:0;i:1;i:2;i:2;i:5;}', NULL, NULL, NULL, 1, NULL, 1, 1, 1, 0, NULL, '2021-07-09 00:03:40', '2021-07-09 00:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `config_authorize_net`
--

CREATE TABLE `config_authorize_net` (
  `shop_id` int(10) UNSIGNED NOT NULL,
  `api_login_id` text COLLATE utf8_unicode_ci,
  `transaction_key` text COLLATE utf8_unicode_ci,
  `sandbox` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config_cybersources`
--

CREATE TABLE `config_cybersources` (
  `shop_id` int(10) UNSIGNED NOT NULL,
  `merchant_id` text COLLATE utf8_unicode_ci,
  `api_key_id` text COLLATE utf8_unicode_ci,
  `secret` text COLLATE utf8_unicode_ci,
  `sandbox` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config_instamojo`
--

CREATE TABLE `config_instamojo` (
  `shop_id` int(10) UNSIGNED NOT NULL,
  `api_key` text COLLATE utf8_unicode_ci,
  `auth_token` text COLLATE utf8_unicode_ci,
  `sandbox` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config_manual_payments`
--

CREATE TABLE `config_manual_payments` (
  `shop_id` int(10) UNSIGNED NOT NULL,
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `additional_details` text COLLATE utf8_unicode_ci,
  `payment_instructions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `config_manual_payments`
--

INSERT INTO `config_manual_payments` (`shop_id`, `payment_method_id`, `additional_details`, `payment_instructions`, `created_at`, `updated_at`) VALUES
(1, 8, 'Send the payment via Bank Wire Transfer.', 'Payment instructions for Bank Wire Transfer', '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(1, 7, 'Our man will collect the payment when deliver the item to your doorstep.', 'Payment instructions for COD', '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(2, 8, 'Send the payment via Bank Wire Transfer.', 'Payment instructions for Bank Wire Transfer', '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(2, 7, 'Our man will collect the payment when deliver the item to your doorstep.', 'Payment instructions for COD', '2021-06-26 00:03:38', '2021-06-26 00:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `config_paypal_express`
--

CREATE TABLE `config_paypal_express` (
  `shop_id` int(10) UNSIGNED NOT NULL,
  `account` text COLLATE utf8_unicode_ci,
  `client_id` text COLLATE utf8_unicode_ci,
  `secret` text COLLATE utf8_unicode_ci,
  `sandbox` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config_paystacks`
--

CREATE TABLE `config_paystacks` (
  `shop_id` int(10) UNSIGNED NOT NULL,
  `merchant_email` text COLLATE utf8_unicode_ci,
  `public_key` text COLLATE utf8_unicode_ci,
  `secret` text COLLATE utf8_unicode_ci,
  `sandbox` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config_stripes`
--

CREATE TABLE `config_stripes` (
  `shop_id` int(10) UNSIGNED NOT NULL,
  `stripe_user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publishable_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capital` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `timezone_id` int(10) UNSIGNED DEFAULT NULL,
  `citizenship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `iso_numeric` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calling_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flag` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eea` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `full_name`, `capital`, `currency_id`, `timezone_id`, `citizenship`, `iso_code`, `iso_numeric`, `calling_code`, `flag`, `eea`, `active`, `created_at`, `updated_at`) VALUES
(4, 'Afghanistan', 'Islamic Republic of Afghanistan', 'Kabul', 2, NULL, 'Afghan', 'AF', '004', '93', 'AF.png', 0, 1, '2021-06-26 00:02:24', '2021-06-26 00:02:24'),
(8, 'Albania', 'Republic of Albania', 'Tirana', 3, NULL, 'Albanian', 'AL', '008', '355', 'AL.png', 0, 1, '2021-06-26 00:02:24', '2021-06-26 00:02:24'),
(10, 'Antarctica', 'Antarctica', 'Antartica', NULL, NULL, 'of Antartica', 'AQ', '010', '672', 'AQ.png', 0, 1, '2021-06-26 00:02:24', '2021-06-26 00:02:24'),
(12, 'Algeria', 'People’s Democratic Republic of Algeria', 'Algiers', 42, NULL, 'Algerian', 'DZ', '012', '213', 'DZ.png', 0, 1, '2021-06-26 00:02:24', '2021-06-26 00:02:24'),
(16, 'American Samoa', 'Territory of American', 'Pago Pago', 148, NULL, 'American Samoan', 'AS', '016', '1', 'AS.png', 0, 1, '2021-06-26 00:02:24', '2021-06-26 00:02:24'),
(20, 'Andorra', 'Principality of Andorra', 'Andorra la Vella', 46, NULL, 'Andorran', 'AD', '020', '376', 'AD.png', 0, 1, '2021-06-26 00:02:24', '2021-06-26 00:02:24'),
(24, 'Angola', 'Republic of Angola', 'Luanda', 6, NULL, 'Angolan', 'AO', '024', '244', 'AO.png', 0, 1, '2021-06-26 00:02:24', '2021-06-26 00:02:24'),
(28, 'Antigua and Barbuda', 'Antigua and Barbuda', 'St John’s', 162, NULL, 'of Antigua and Barbuda', 'AG', '028', '1', 'AG.png', 0, 1, '2021-06-26 00:02:24', '2021-06-26 00:02:24'),
(31, 'Azerbaijan', 'Republic of Azerbaijan', 'Baku', 10, NULL, 'Azerbaijani', 'AZ', '031', '994', 'AZ.png', 0, 1, '2021-06-26 00:02:25', '2021-06-26 00:02:25'),
(32, 'Argentina', 'Argentine Republic', 'Buenos Aires', 7, NULL, 'Argentinian', 'AR', '032', '54', 'AR.png', 0, 1, '2021-06-26 00:02:25', '2021-06-26 00:02:25'),
(36, 'Australia', 'Commonwealth of Australia', 'Canberra', 8, NULL, 'Australian', 'AU', '036', '61', 'AU.png', 0, 1, '2021-06-26 00:02:25', '2021-06-26 00:02:25'),
(40, 'Austria', 'Republic of Austria', 'Vienna', 46, NULL, 'Austrian', 'AT', '040', '43', 'AT.png', 1, 1, '2021-06-26 00:02:25', '2021-06-26 00:02:25'),
(44, 'Bahamas', 'Commonwealth of the Bahamas', 'Nassau', 21, NULL, 'Bahamian', 'BS', '044', '1', 'BS.png', 0, 1, '2021-06-26 00:02:25', '2021-06-26 00:02:25'),
(48, 'Bahrain', 'Kingdom of Bahrain', 'Manama', 15, NULL, 'Bahraini', 'BH', '048', '973', 'BH.png', 0, 1, '2021-06-26 00:02:25', '2021-06-26 00:02:25'),
(50, 'Bangladesh', 'People’s Republic of Bangladesh', 'Dhaka', 13, NULL, 'Bangladeshi', 'BD', '050', '880', 'BD.png', 0, 1, '2021-06-26 00:02:25', '2021-06-26 00:02:25'),
(51, 'Armenia', 'Republic of Armenia', 'Yerevan', 4, NULL, 'Armenian', 'AM', '051', '374', 'AM.png', 0, 1, '2021-06-26 00:02:25', '2021-06-26 00:02:25'),
(52, 'Barbados', 'Barbados', 'Bridgetown', 12, NULL, 'Barbadian', 'BB', '052', '1', 'BB.png', 0, 1, '2021-06-26 00:02:25', '2021-06-26 00:02:25'),
(56, 'Belgium', 'Kingdom of Belgium', 'Brussels', 46, NULL, 'Belgian', 'BE', '056', '32', 'BE.png', 1, 1, '2021-06-26 00:02:25', '2021-06-26 00:02:25'),
(60, 'Bermuda', 'Bermuda', 'Hamilton', 17, NULL, 'Bermudian', 'BM', '060', '1', 'BM.png', 0, 1, '2021-06-26 00:02:25', '2021-06-26 00:02:25'),
(64, 'Bhutan', 'Kingdom of Bhutan', 'Thimphu', 22, NULL, 'Bhutanese', 'BT', '064', '975', 'BT.png', 0, 1, '2021-06-26 00:02:26', '2021-06-26 00:02:26'),
(68, 'Bolivia, Plurinational State of', 'Plurinational State of Bolivia', 'Sucre (BO1)', 19, NULL, 'Bolivian', 'BO', '068', '591', 'BO.png', 0, 1, '2021-06-26 00:02:26', '2021-06-26 00:02:26'),
(70, 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'Sarajevo', 11, NULL, 'of Bosnia and Herzegovina', 'BA', '070', '387', 'BA.png', 0, 1, '2021-06-26 00:02:26', '2021-06-26 00:02:26'),
(72, 'Botswana', 'Republic of Botswana', 'Gaborone', 23, NULL, 'Botswanan', 'BW', '072', '267', 'BW.png', 0, 1, '2021-06-26 00:02:26', '2021-06-26 00:02:26'),
(74, 'Bouvet Island', 'Bouvet Island', 'Bouvet island', NULL, NULL, 'of Bouvet island', 'BV', '074', '47', 'BV.png', 0, 1, '2021-06-26 00:02:26', '2021-06-26 00:02:26'),
(76, 'Brazil', 'Federative Republic of Brazil', 'Brasilia', 20, NULL, 'Brazilian', 'BR', '076', '55', 'BR.png', 0, 1, '2021-06-26 00:02:26', '2021-06-26 00:02:26'),
(84, 'Belize', 'Belize', 'Belmopan', 26, NULL, 'Belizean', 'BZ', '084', '501', 'BZ.png', 0, 1, '2021-06-26 00:02:26', '2021-06-26 00:02:26'),
(86, 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'Diego Garcia', 148, NULL, 'Changosian', 'IO', '086', '246', 'IO.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(90, 'Solomon Islands', 'Solomon Islands', 'Honiara', 122, NULL, 'Solomon Islander', 'SB', '090', '677', 'SB.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(92, 'Virgin Islands, British', 'British Virgin Islands', 'Road Town', 148, NULL, 'British Virgin Islander;', 'VG', '092', '1', 'VG.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(96, 'Brunei Darussalam', 'Brunei Darussalam', 'Bandar Seri Begawan', 18, NULL, 'Bruneian', 'BN', '096', '673', 'BN.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(100, 'Bulgaria', 'Republic of Bulgaria', 'Sofia', 14, NULL, 'Bulgarian', 'BG', '100', '359', 'BG.png', 1, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(104, 'Myanmar', 'Union of Myanmar/', 'Yangon', 92, NULL, 'Burmese', 'MM', '104', '95', 'MM.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(108, 'Burundi', 'Republic of Burundi', 'Bujumbura', 16, NULL, 'Burundian', 'BI', '108', '257', 'BI.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(112, 'Belarus', 'Republic of Belarus', 'Minsk', 25, NULL, 'Belarusian', 'BY', '112', '375', 'BY.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(116, 'Cambodia', 'Kingdom of Cambodia', 'Phnom Penh', 73, NULL, 'Cambodian', 'KH', '116', '855', 'KH.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(120, 'Cameroon', 'Republic of Cameroon', 'Yaoundé', 155, NULL, 'Cameroonian', 'CM', '120', '237', 'CM.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(124, 'Canada', 'Canada', 'Ottawa', 27, NULL, 'Canadian', 'CA', '124', '1', 'CA.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(132, 'Cape Verde', 'Republic of Cape Verde', 'Praia', 37, NULL, 'Cape Verdean', 'CV', '132', '238', 'CV.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(136, 'Cayman Islands', 'Cayman Islands', 'George Town', 78, NULL, 'Caymanian', 'KY', '136', '1', 'KY.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(140, 'Central African Republic', 'Central African Republic', 'Bangui', 155, NULL, 'Central African', 'CF', '140', '236', 'CF.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(144, 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'Colombo', 82, NULL, 'Sri Lankan', 'LK', '144', '94', 'LK.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(148, 'Chad', 'Republic of Chad', 'N’Djamena', 155, NULL, 'Chadian', 'TD', '148', '235', 'TD.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(152, 'Chile', 'Republic of Chile', 'Santiago', 31, NULL, 'Chilean', 'CL', '152', '56', 'CL.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(156, 'China', 'People’s Republic of China', 'Beijing', 32, NULL, 'Chinese', 'CN', '156', '86', 'CN.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(158, 'Taiwan, Province of China', 'Republic of China, Taiwan (TW1)', 'Taipei', 144, NULL, 'Taiwanese', 'TW', '158', '886', 'TW.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(162, 'Christmas Island', 'Christmas Island Territory', 'Flying Fish Cove', 8, NULL, 'Christmas Islander', 'CX', '162', '61', 'CX.png', 0, 1, '2021-06-26 00:02:27', '2021-06-26 00:02:27'),
(166, 'Cocos (Keeling) Islands', 'Territory of Cocos (Keeling) Islands', 'Bantam', 8, NULL, 'Cocos Islander', 'CC', '166', '61', 'CC.png', 0, 1, '2021-06-26 00:02:28', '2021-06-26 00:02:28'),
(170, 'Colombia', 'Republic of Colombia', 'Santa Fe de Bogotá', 33, NULL, 'Colombian', 'CO', '170', '57', 'CO.png', 0, 1, '2021-06-26 00:02:28', '2021-06-26 00:02:28'),
(174, 'Comoros', 'Union of the Comoros', 'Moroni', 74, NULL, 'Comorian', 'KM', '174', '269', 'KM.png', 0, 1, '2021-06-26 00:02:28', '2021-06-26 00:02:28'),
(175, 'Mayotte', 'Departmental Collectivity of Mayotte', 'Mamoudzou', 46, NULL, 'Mahorais', 'YT', '175', '262', 'YT.png', 0, 1, '2021-06-26 00:02:28', '2021-06-26 00:02:28'),
(178, 'Congo', 'Republic of the Congo', 'Brazzaville', 155, NULL, 'Congolese', 'CG', '178', '242', 'CG.png', 0, 1, '2021-06-26 00:02:28', '2021-06-26 00:02:28'),
(180, 'Congo, the Democratic Republic of the', 'Democratic Republic of the Congo', 'Kinshasa', 28, NULL, 'Congolese', 'CD', '180', '243', 'CD.png', 0, 1, '2021-06-26 00:02:28', '2021-06-26 00:02:28'),
(184, 'Cook Islands', 'Cook Islands', 'Avarua', 107, NULL, 'Cook Islander', 'CK', '184', '682', 'CK.png', 0, 1, '2021-06-26 00:02:28', '2021-06-26 00:02:28'),
(188, 'Costa Rica', 'Republic of Costa Rica', 'San José', 34, NULL, 'Costa Rican', 'CR', '188', '506', 'CR.png', 0, 1, '2021-06-26 00:02:28', '2021-06-26 00:02:28'),
(191, 'Croatia', 'Republic of Croatia', 'Zagreb', 59, NULL, 'Croatian', 'HR', '191', '385', 'HR.png', 1, 1, '2021-06-26 00:02:28', '2021-06-26 00:02:28'),
(192, 'Cuba', 'Republic of Cuba', 'Havana', 36, NULL, 'Cuban', 'CU', '192', '53', 'CU.png', 0, 1, '2021-06-26 00:02:28', '2021-06-26 00:02:28'),
(196, 'Cyprus', 'Republic of Cyprus', 'Nicosia', 46, NULL, 'Cypriot', 'CY', '196', '357', 'CY.png', 1, 1, '2021-06-26 00:02:28', '2021-06-26 00:02:28'),
(203, 'Czech Republic', 'Czech Republic', 'Prague', 38, NULL, 'Czech', 'CZ', '203', '420', 'CZ.png', 1, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(204, 'Benin', 'Republic of Benin', 'Porto Novo (BJ1)', 164, NULL, 'Beninese', 'BJ', '204', '229', 'BJ.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(208, 'Denmark', 'Kingdom of Denmark', 'Copenhagen', 40, NULL, 'Danish', 'DK', '208', '45', 'DK.png', 1, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(212, 'Dominica', 'Commonwealth of Dominica', 'Roseau', 162, NULL, 'Dominican', 'DM', '212', '1', 'DM.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(214, 'Dominican Republic', 'Dominican Republic', 'Santo Domingo', 41, NULL, 'Dominican', 'DO', '214', '1', 'DO.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(218, 'Ecuador', 'Republic of Ecuador', 'Quito', 148, NULL, 'Ecuadorian', 'EC', '218', '593', 'EC.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(222, 'El Salvador', 'Republic of El Salvador', 'San Salvador', 134, NULL, 'Salvadoran', 'SV', '222', '503', 'SV.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(226, 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'Malabo', 155, NULL, 'Equatorial Guinean', 'GQ', '226', '240', 'GQ.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(231, 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'Addis Ababa', 45, NULL, 'Ethiopian', 'ET', '231', '251', 'ET.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(232, 'Eritrea', 'State of Eritrea', 'Asmara', 44, NULL, 'Eritrean', 'ER', '232', '291', 'ER.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(233, 'Estonia', 'Republic of Estonia', 'Tallinn', 46, NULL, 'Estonian', 'EE', '233', '372', 'EE.png', 1, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(234, 'Faroe Islands', 'Faeroe Islands', 'Tórshavn', 40, NULL, 'Faeroese', 'FO', '234', '298', 'FO.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(238, 'Falkland Islands (Malvinas)', 'Falkland Islands', 'Stanley', 48, NULL, 'Falkland Islander', 'FK', '238', '500', 'FK.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(239, 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'King Edward Point (Grytviken)', NULL, NULL, 'of South Georgia and the South Sandwich Islands', 'GS', '239', '44', 'GS.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(242, 'Fiji', 'Republic of Fiji', 'Suva', 47, NULL, 'Fijian', 'FJ', '242', '679', 'FJ.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(246, 'Finland', 'Republic of Finland', 'Helsinki', 46, NULL, 'Finnish', 'FI', '246', '358', 'FI.png', 1, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(248, 'Åland Islands', 'Åland Islands', 'Mariehamn', 46, NULL, 'Åland Islander', 'AX', '248', '358', NULL, 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(250, 'France', 'French Republic', 'Paris', 46, NULL, 'French', 'FR', '250', '33', 'FR.png', 1, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(254, 'French Guiana', 'French Guiana', 'Cayenne', 46, NULL, 'Guianese', 'GF', '254', '594', 'GF.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(258, 'French Polynesia', 'French Polynesia', 'Papeete', 166, NULL, 'Polynesian', 'PF', '258', '689', 'PF.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(260, 'French Southern Territories', 'French Southern and Antarctic Lands', 'Port-aux-Francais', 46, NULL, 'of French Southern and Antarctic Lands', 'TF', '260', '33', 'TF.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(262, 'Djibouti', 'Republic of Djibouti', 'Djibouti', 39, NULL, 'Djiboutian', 'DJ', '262', '253', 'DJ.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(266, 'Gabon', 'Gabonese Republic', 'Libreville', 155, NULL, 'Gabonese', 'GA', '266', '241', 'GA.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(268, 'Georgia', 'Georgia', 'Tbilisi', 50, NULL, 'Georgian', 'GE', '268', '995', 'GE.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(270, 'Gambia', 'Republic of the Gambia', 'Banjul', 53, NULL, 'Gambian', 'GM', '270', '220', 'GM.png', 0, 1, '2021-06-26 00:02:29', '2021-06-26 00:02:29'),
(275, 'Palestinian Territory, Occupied', NULL, NULL, 53, NULL, 'Palestinian', 'PS', '275', '970', 'PS.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(276, 'Germany', 'Federal Republic of Germany', 'Berlin', 46, NULL, 'German', 'DE', '276', '49', 'DE.png', 1, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(288, 'Ghana', 'Republic of Ghana', 'Accra', 51, NULL, 'Ghanaian', 'GH', '288', '233', 'GH.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(292, 'Gibraltar', 'Gibraltar', 'Gibraltar', 52, NULL, 'Gibraltarian', 'GI', '292', '350', 'GI.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(296, 'Kiribati', 'Republic of Kiribati', 'Tarawa', 8, NULL, 'Kiribatian', 'KI', '296', '686', 'KI.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(300, 'Greece', 'Hellenic Republic', 'Athens', 46, NULL, 'Greek', 'GR', '300', '30', 'GR.png', 1, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(304, 'Greenland', 'Greenland', 'Nuuk', 40, NULL, 'Greenlander', 'GL', '304', '299', 'GL.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(308, 'Grenada', 'Grenada', 'St George’s', 162, NULL, 'Grenadian', 'GD', '308', '1', 'GD.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(312, 'Guadeloupe', 'Guadeloupe', 'Basse Terre', 46, NULL, 'Guadeloupean', 'GP', '312', '590', 'GP.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(316, 'Guam', 'Territory of Guam', 'Agaña (Hagåtña)', 148, NULL, 'Guamanian', 'GU', '316', '1', 'GU.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(320, 'Guatemala', 'Republic of Guatemala', 'Guatemala City', 55, NULL, 'Guatemalan', 'GT', '320', '502', 'GT.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(324, 'Guinea', 'Republic of Guinea', 'Conakry', 54, NULL, 'Guinean', 'GN', '324', '224', 'GN.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(328, 'Guyana', 'Cooperative Republic of Guyana', 'Georgetown', 56, NULL, 'Guyanese', 'GY', '328', '592', 'GY.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(332, 'Haiti', 'Republic of Haiti', 'Port-au-Prince', 60, NULL, 'Haitian', 'HT', '332', '509', 'HT.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(334, 'Heard Island and McDonald Islands', 'Territory of Heard Island and McDonald Islands', 'Territory of Heard Island and McDonald Islands', NULL, NULL, 'of Territory of Heard Island and McDonald Islands', 'HM', '334', '61', 'HM.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(336, 'Holy See (Vatican City State)', 'the Holy See/ Vatican City State', 'Vatican City', 46, NULL, 'of the Holy See/of the Vatican', 'VA', '336', '39', 'VA.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(340, 'Honduras', 'Republic of Honduras', 'Tegucigalpa', 58, NULL, 'Honduran', 'HN', '340', '504', 'HN.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(344, 'Hong Kong', 'Hong Kong Special Administrative Region of the People’s Republic of China (HK2)', '(HK3)', 57, NULL, 'Hong Kong Chinese', 'HK', '344', '852', 'HK.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(348, 'Hungary', 'Republic of Hungary', 'Budapest', 61, NULL, 'Hungarian', 'HU', '348', '36', 'HU.png', 1, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(352, 'Iceland', 'Republic of Iceland', 'Reykjavik', 67, NULL, 'Icelander', 'IS', '352', '354', 'IS.png', 1, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(356, 'India', 'Republic of India', 'New Delhi', 64, NULL, 'Indian', 'IN', '356', '91', 'IN.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(360, 'Indonesia', 'Republic of Indonesia', 'Jakarta', 62, NULL, 'Indonesian', 'ID', '360', '62', 'ID.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(364, 'Iran, Islamic Republic of', 'Islamic Republic of Iran', 'Tehran', 66, NULL, 'Iranian', 'IR', '364', '98', 'IR.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(368, 'Iraq', 'Republic of Iraq', 'Baghdad', 65, NULL, 'Iraqi', 'IQ', '368', '964', 'IQ.png', 0, 1, '2021-06-26 00:02:30', '2021-06-26 00:02:30'),
(372, 'Ireland', 'Ireland (IE1)', 'Dublin', 46, NULL, 'Irish', 'IE', '372', '353', 'IE.png', 1, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(376, 'Israel', 'State of Israel', '(IL1)', 63, NULL, 'Israeli', 'IL', '376', '972', 'IL.png', 0, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(380, 'Italy', 'Italian Republic', 'Rome', 46, NULL, 'Italian', 'IT', '380', '39', 'IT.png', 1, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(384, 'Côte d\'Ivoire', 'Republic of Côte d’Ivoire', 'Yamoussoukro (CI1)', 164, NULL, 'Ivorian', 'CI', '384', '225', 'CI.png', 0, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(388, 'Jamaica', 'Jamaica', 'Kingston', 68, NULL, 'Jamaican', 'JM', '388', '1', 'JM.png', 0, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(392, 'Japan', 'Japan', 'Tokyo', 70, NULL, 'Japanese', 'JP', '392', '81', 'JP.png', 0, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(398, 'Kazakhstan', 'Republic of Kazakhstan', 'Astana', 79, NULL, 'Kazakh', 'KZ', '398', '7', 'KZ.png', 0, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(400, 'Jordan', 'Hashemite Kingdom of Jordan', 'Amman', 69, NULL, 'Jordanian', 'JO', '400', '962', 'JO.png', 0, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(404, 'Kenya', 'Republic of Kenya', 'Nairobi', 71, NULL, 'Kenyan', 'KE', '404', '254', 'KE.png', 0, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(408, 'Korea, Democratic People\'s Republic of', 'Democratic People’s Republic of Korea', 'Pyongyang', 75, NULL, 'North Korean', 'KP', '408', '850', 'KP.png', 0, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(410, 'Korea, Republic of', 'Republic of Korea', 'Seoul', 76, NULL, 'South Korean', 'KR', '410', '82', 'KR.png', 0, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(414, 'Kuwait', 'State of Kuwait', 'Kuwait City', 77, NULL, 'Kuwaiti', 'KW', '414', '965', 'KW.png', 0, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(417, 'Kyrgyzstan', 'Kyrgyz Republic', 'Bishkek', 72, NULL, 'Kyrgyz', 'KG', '417', '996', 'KG.png', 0, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(418, 'Lao People\'s Democratic Republic', 'Lao People’s Democratic Republic', 'Vientiane', 80, NULL, 'Lao', 'LA', '418', '856', 'LA.png', 0, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(422, 'Lebanon', 'Lebanese Republic', 'Beirut', 81, NULL, 'Lebanese', 'LB', '422', '961', 'LB.png', 0, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(426, 'Lesotho', 'Kingdom of Lesotho', 'Maseru', 84, NULL, 'Basotho', 'LS', '426', '266', 'LS.png', 0, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(428, 'Latvia', 'Republic of Latvia', 'Riga', 46, NULL, 'Latvian', 'LV', '428', '371', 'LV.png', 1, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(430, 'Liberia', 'Republic of Liberia', 'Monrovia', 83, NULL, 'Liberian', 'LR', '430', '231', 'LR.png', 0, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(434, 'Libya', 'Socialist People’s Libyan Arab Jamahiriya', 'Tripoli', 87, NULL, 'Libyan', 'LY', '434', '218', 'LY.png', 0, 1, '2021-06-26 00:02:31', '2021-06-26 00:02:31'),
(438, 'Liechtenstein', 'Principality of Liechtenstein', 'Vaduz', 29, NULL, 'Liechtensteiner', 'LI', '438', '423', 'LI.png', 1, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(440, 'Lithuania', 'Republic of Lithuania', 'Vilnius', 46, NULL, 'Lithuanian', 'LT', '440', '370', 'LT.png', 1, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(442, 'Luxembourg', 'Grand Duchy of Luxembourg', 'Luxembourg', 46, NULL, 'Luxembourger', 'LU', '442', '352', 'LU.png', 1, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(446, 'Macao', 'Macao Special Administrative Region of the People’s Republic of China (MO2)', 'Macao (MO3)', 94, NULL, 'Macanese', 'MO', '446', '853', 'MO.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(450, 'Madagascar', 'Republic of Madagascar', 'Antananarivo', 90, NULL, 'Malagasy', 'MG', '450', '261', 'MG.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(454, 'Malawi', 'Republic of Malawi', 'Lilongwe', 98, NULL, 'Malawian', 'MW', '454', '265', 'MW.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(458, 'Malaysia', 'Malaysia', 'Kuala Lumpur (MY1)', 100, NULL, 'Malaysian', 'MY', '458', '60', 'MY.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(462, 'Maldives', 'Republic of Maldives', 'Malé', 97, NULL, 'Maldivian', 'MV', '462', '960', 'MV.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(466, 'Mali', 'Republic of Mali', 'Bamako', 164, NULL, 'Malian', 'ML', '466', '223', 'ML.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(470, 'Malta', 'Republic of Malta', 'Valletta', 46, NULL, 'Maltese', 'MT', '470', '356', 'MT.png', 1, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(474, 'Martinique', 'Martinique', 'Fort-de-France', 46, NULL, 'Martinican', 'MQ', '474', '596', 'MQ.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(478, 'Mauritania', 'Islamic Republic of Mauritania', 'Nouakchott', 95, NULL, 'Mauritanian', 'MR', '478', '222', 'MR.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(480, 'Mauritius', 'Republic of Mauritius', 'Port Louis', 96, NULL, 'Mauritian', 'MU', '480', '230', 'MU.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(484, 'Mexico', 'United Mexican States', 'Mexico City', 99, NULL, 'Mexican', 'MX', '484', '52', 'MX.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(492, 'Monaco', 'Principality of Monaco', 'Monaco', 46, NULL, 'Monegasque', 'MC', '492', '377', 'MC.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(496, 'Mongolia', 'Mongolia', 'Ulan Bator', 93, NULL, 'Mongolian', 'MN', '496', '976', 'MN.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(498, 'Moldova, Republic of', 'Republic of Moldova', 'Chisinau', 89, NULL, 'Moldovan', 'MD', '498', '373', 'MD.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(499, 'Montenegro', 'Montenegro', 'Podgorica', 46, NULL, 'Montenegrin', 'ME', '499', '382', NULL, 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(500, 'Montserrat', 'Montserrat', 'Plymouth (MS2)', 162, NULL, 'Montserratian', 'MS', '500', '1', 'MS.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(504, 'Morocco', 'Kingdom of Morocco', 'Rabat', 88, NULL, 'Moroccan', 'MA', '504', '212', 'MA.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(508, 'Mozambique', 'Republic of Mozambique', 'Maputo', 101, NULL, 'Mozambican', 'MZ', '508', '258', 'MZ.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(512, 'Oman', 'Sultanate of Oman', 'Muscat', 108, NULL, 'Omani', 'OM', '512', '968', 'OM.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(516, 'Namibia', 'Republic of Namibia', 'Windhoek', 102, NULL, 'Namibian', 'NA', '516', '264', 'NA.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(520, 'Nauru', 'Republic of Nauru', 'Yaren', 8, NULL, 'Nauruan', 'NR', '520', '674', 'NR.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(524, 'Nepal', 'Nepal', 'Kathmandu', 106, NULL, 'Nepalese', 'NP', '524', '977', 'NP.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(528, 'Netherlands', 'Kingdom of the Netherlands', 'Amsterdam (NL2)', 46, NULL, 'Dutch', 'NL', '528', '31', 'NL.png', 1, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(531, 'Curaçao', 'Curaçao', 'Willemstad', 5, NULL, 'Curaçaoan', 'CW', '531', '599', NULL, 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(533, 'Aruba', 'Aruba', 'Oranjestad', 9, NULL, 'Aruban', 'AW', '533', '297', 'AW.png', 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(534, 'Sint Maarten (Dutch part)', 'Sint Maarten', 'Philipsburg', 5, NULL, 'Sint Maartener', 'SX', '534', '721', NULL, 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(535, 'Bonaire, Sint Eustatius and Saba', NULL, NULL, 148, NULL, 'of Bonaire, Sint Eustatius and Saba', 'BQ', '535', '599', NULL, 0, 1, '2021-06-26 00:02:32', '2021-06-26 00:02:32'),
(540, 'New Caledonia', 'New Caledonia', 'Nouméa', 166, NULL, 'New Caledonian', 'NC', '540', '687', 'NC.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(548, 'Vanuatu', 'Republic of Vanuatu', 'Port Vila', 153, NULL, 'Vanuatuan', 'VU', '548', '678', 'VU.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(554, 'New Zealand', 'New Zealand', 'Wellington', 107, NULL, 'New Zealander', 'NZ', '554', '64', 'NZ.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(558, 'Nicaragua', 'Republic of Nicaragua', 'Managua', 104, NULL, 'Nicaraguan', 'NI', '558', '505', 'NI.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(562, 'Niger', 'Republic of Niger', 'Niamey', 164, NULL, 'Nigerien', 'NE', '562', '227', 'NE.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(566, 'Nigeria', 'Federal Republic of Nigeria', 'Abuja', 103, NULL, 'Nigerian', 'NG', '566', '234', 'NG.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(570, 'Niue', 'Niue', 'Alofi', 107, NULL, 'Niuean', 'NU', '570', '683', 'NU.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(574, 'Norfolk Island', 'Territory of Norfolk Island', 'Kingston', 8, NULL, 'Norfolk Islander', 'NF', '574', '672', 'NF.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(578, 'Norway', 'Kingdom of Norway', 'Oslo', 105, NULL, 'Norwegian', 'NO', '578', '47', 'NO.png', 1, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(580, 'Northern Mariana Islands', 'Commonwealth of the Northern Mariana Islands', 'Saipan', 148, NULL, 'Northern Mariana Islander', 'MP', '580', '1', 'MP.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(581, 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 148, NULL, 'of United States Minor Outlying Islands', 'UM', '581', '1', 'UM.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(583, 'Micronesia, Federated States of', 'Federated States of Micronesia', 'Palikir', 148, NULL, 'Micronesian', 'FM', '583', '691', 'FM.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(584, 'Marshall Islands', 'Republic of the Marshall Islands', 'Majuro', 148, NULL, 'Marshallese', 'MH', '584', '692', 'MH.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(585, 'Palau', 'Republic of Palau', 'Melekeok', 148, NULL, 'Palauan', 'PW', '585', '680', 'PW.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(586, 'Pakistan', 'Islamic Republic of Pakistan', 'Islamabad', 113, NULL, 'Pakistani', 'PK', '586', '92', 'PK.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(591, 'Panama', 'Republic of Panama', 'Panama City', 109, NULL, 'Panamanian', 'PA', '591', '507', 'PA.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(598, 'Papua New Guinea', 'Independent State of Papua New Guinea', 'Port Moresby', 111, NULL, 'Papua New Guinean', 'PG', '598', '675', 'PG.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(600, 'Paraguay', 'Republic of Paraguay', 'Asunción', 115, NULL, 'Paraguayan', 'PY', '600', '595', 'PY.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(604, 'Peru', 'Republic of Peru', 'Lima', 110, NULL, 'Peruvian', 'PE', '604', '51', 'PE.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(608, 'Philippines', 'Republic of the Philippines', 'Manila', 112, NULL, 'Filipino', 'PH', '608', '63', 'PH.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(612, 'Pitcairn', 'Pitcairn Islands', 'Adamstown', 107, NULL, 'Pitcairner', 'PN', '612', '649', 'PN.png', 0, 1, '2021-06-26 00:02:33', '2021-06-26 00:02:33'),
(616, 'Poland', 'Republic of Poland', 'Warsaw', 114, NULL, 'Polish', 'PL', '616', '48', 'PL.png', 1, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(620, 'Portugal', 'Portuguese Republic', 'Lisbon', 46, NULL, 'Portuguese', 'PT', '620', '351', 'PT.png', 1, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(624, 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'Bissau', 164, NULL, 'Guinea-Bissau national', 'GW', '624', '245', 'GW.png', 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(626, 'Timor-Leste', 'Democratic Republic of East Timor', 'Dili', 148, NULL, 'East Timorese', 'TL', '626', '670', 'TL.png', 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(630, 'Puerto Rico', 'Commonwealth of Puerto Rico', 'San Juan', 148, NULL, 'Puerto Rican', 'PR', '630', '1', 'PR.png', 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(634, 'Qatar', 'State of Qatar', 'Doha', 116, NULL, 'Qatari', 'QA', '634', '974', 'QA.png', 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(638, 'Réunion', 'Réunion', 'Saint-Denis', 46, NULL, 'Reunionese', 'RE', '638', '262', 'RE.png', 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(642, 'Romania', 'Romania', 'Bucharest', 117, NULL, 'Romanian', 'RO', '642', '40', 'RO.png', 1, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(643, 'Russian Federation', 'Russian Federation', 'Moscow', 119, NULL, 'Russian', 'RU', '643', '7', 'RU.png', 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(646, 'Rwanda', 'Republic of Rwanda', 'Kigali', 120, NULL, 'Rwandan; Rwandese', 'RW', '646', '250', 'RW.png', 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(652, 'Saint Barthélemy', 'Collectivity of Saint Barthélemy', 'Gustavia', 46, NULL, 'of Saint Barthélemy', 'BL', '652', '590', NULL, 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(654, 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', 'Jamestown', 127, NULL, 'Saint Helenian', 'SH', '654', '290', 'SH.png', 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(659, 'Saint Kitts and Nevis', 'Federation of Saint Kitts and Nevis', 'Basseterre', 162, NULL, 'Kittsian; Nevisian', 'KN', '659', '1', 'KN.png', 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(660, 'Anguilla', 'Anguilla', 'The Valley', 162, NULL, 'Anguillan', 'AI', '660', '1', 'AI.png', 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(662, 'Saint Lucia', 'Saint Lucia', 'Castries', 162, NULL, 'Saint Lucian', 'LC', '662', '1', 'LC.png', 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(663, 'Saint Martin (French part)', 'Collectivity of Saint Martin', 'Marigot', 46, NULL, 'of Saint Martin', 'MF', '663', '590', NULL, 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(666, 'Saint Pierre and Miquelon', 'Territorial Collectivity of Saint Pierre and Miquelon', 'Saint-Pierre', 46, NULL, 'St-Pierrais; Miquelonnais', 'PM', '666', '508', 'PM.png', 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(670, 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'Kingstown', 162, NULL, 'Vincentian', 'VC', '670', '1', 'VC.png', 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(674, 'San Marino', 'Republic of San Marino', 'San Marino', 46, NULL, 'San Marinese', 'SM', '674', '378', 'SM.png', 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(678, 'Sao Tome and Principe', 'Democratic Republic of São Tomé and Príncipe', 'São Tomé', 133, NULL, 'São Toméan', 'ST', '678', '239', 'ST.png', 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(682, 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'Riyadh', 121, NULL, 'Saudi Arabian', 'SA', '682', '966', 'SA.png', 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(686, 'Senegal', 'Republic of Senegal', 'Dakar', 164, NULL, 'Senegalese', 'SN', '686', '221', 'SN.png', 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(688, 'Serbia', 'Republic of Serbia', 'Belgrade', 118, NULL, 'Serb', 'RS', '688', '381', NULL, 0, 1, '2021-06-26 00:02:34', '2021-06-26 00:02:34'),
(690, 'Seychelles', 'Republic of Seychelles', 'Victoria', 123, NULL, 'Seychellois', 'SC', '690', '248', 'SC.png', 0, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(694, 'Sierra Leone', 'Republic of Sierra Leone', 'Freetown', 129, NULL, 'Sierra Leonean', 'SL', '694', '232', 'SL.png', 0, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(702, 'Singapore', 'Republic of Singapore', 'Singapore', 126, NULL, 'Singaporean', 'SG', '702', '65', 'SG.png', 0, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(703, 'Slovakia', 'Slovak Republic', 'Bratislava', 46, NULL, 'Slovak', 'SK', '703', '421', 'SK.png', 1, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(704, 'Viet Nam', 'Socialist Republic of Vietnam', 'Hanoi', 152, NULL, 'Vietnamese', 'VN', '704', '84', 'VN.png', 0, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(705, 'Slovenia', 'Republic of Slovenia', 'Ljubljana', 46, NULL, 'Slovene', 'SI', '705', '386', 'SI.png', 1, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(706, 'Somalia', 'Somali Republic', 'Mogadishu', 130, NULL, 'Somali', 'SO', '706', '252', 'SO.png', 0, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(710, 'South Africa', 'Republic of South Africa', 'Pretoria (ZA1)', 170, NULL, 'South African', 'ZA', '710', '27', 'ZA.png', 0, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(716, 'Zimbabwe', 'Republic of Zimbabwe', 'Harare', NULL, NULL, 'Zimbabwean', 'ZW', '716', '263', 'ZW.png', 0, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(724, 'Spain', 'Kingdom of Spain', 'Madrid', 46, NULL, 'Spaniard', 'ES', '724', '34', 'ES.png', 1, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(728, 'South Sudan', 'Republic of South Sudan', 'Juba', 132, NULL, 'South Sudanese', 'SS', '728', '211', NULL, 0, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(729, 'Sudan', 'Republic of the Sudan', 'Khartoum', 124, NULL, 'Sudanese', 'SD', '729', '249', NULL, 0, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(732, 'Western Sahara', 'Western Sahara', 'Al aaiun', 88, NULL, 'Sahrawi', 'EH', '732', '212', 'EH.png', 0, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(740, 'Suriname', 'Republic of Suriname', 'Paramaribo', 131, NULL, 'Surinamese', 'SR', '740', '597', 'SR.png', 0, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(744, 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', 'Longyearbyen', 105, NULL, 'of Svalbard', 'SJ', '744', '47', 'SJ.png', 0, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(748, 'Swaziland', 'Kingdom of Swaziland', 'Mbabane', 136, NULL, 'Swazi', 'SZ', '748', '268', 'SZ.png', 0, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(752, 'Sweden', 'Kingdom of Sweden', 'Stockholm', 125, NULL, 'Swedish', 'SE', '752', '46', 'SE.png', 1, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(756, 'Switzerland', 'Swiss Confederation', 'Berne', 29, NULL, 'Swiss', 'CH', '756', '41', 'CH.png', 1, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(760, 'Syrian Arab Republic', 'Syrian Arab Republic', 'Damascus', 135, NULL, 'Syrian', 'SY', '760', '963', 'SY.png', 0, 1, '2021-06-26 00:02:35', '2021-06-26 00:02:35'),
(762, 'Tajikistan', 'Republic of Tajikistan', 'Dushanbe', 138, NULL, 'Tajik', 'TJ', '762', '992', 'TJ.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(764, 'Thailand', 'Kingdom of Thailand', 'Bangkok', 137, NULL, 'Thai', 'TH', '764', '66', 'TH.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(768, 'Togo', 'Togolese Republic', 'Lomé', 164, NULL, 'Togolese', 'TG', '768', '228', 'TG.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(772, 'Tokelau', 'Tokelau', '(TK2)', 107, NULL, 'Tokelauan', 'TK', '772', '690', 'TK.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(776, 'Tonga', 'Kingdom of Tonga', 'Nuku’alofa', 141, NULL, 'Tongan', 'TO', '776', '676', 'TO.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(780, 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'Port of Spain', 143, NULL, 'Trinidadian; Tobagonian', 'TT', '780', '1', 'TT.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(784, 'United Arab Emirates', 'United Arab Emirates', 'Abu Dhabi', 1, NULL, 'Emirian', 'AE', '784', '971', 'AE.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(788, 'Tunisia', 'Republic of Tunisia', 'Tunis', 140, NULL, 'Tunisian', 'TN', '788', '216', 'TN.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(792, 'Turkey', 'Republic of Turkey', 'Ankara', 142, NULL, 'Turk', 'TR', '792', '90', 'TR.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(795, 'Turkmenistan', 'Turkmenistan', 'Ashgabat', 139, NULL, 'Turkmen', 'TM', '795', '993', 'TM.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(796, 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'Cockburn Town', 148, NULL, 'Turks and Caicos Islander', 'TC', '796', '1', 'TC.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(798, 'Tuvalu', 'Tuvalu', 'Funafuti', 8, NULL, 'Tuvaluan', 'TV', '798', '688', 'TV.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(800, 'Uganda', 'Republic of Uganda', 'Kampala', 147, NULL, 'Ugandan', 'UG', '800', '256', 'UG.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(804, 'Ukraine', 'Ukraine', 'Kiev', 146, NULL, 'Ukrainian', 'UA', '804', '380', 'UA.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(807, 'Macedonia, the former Yugoslav Republic of', 'the former Yugoslav Republic of Macedonia', 'Skopje', 91, NULL, 'of the former Yugoslav Republic of Macedonia', 'MK', '807', '389', 'MK.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(818, 'Egypt', 'Arab Republic of Egypt', 'Cairo', 43, NULL, 'Egyptian', 'EG', '818', '20', 'EG.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(826, 'United Kingdom', 'United Kingdom of Great Britain and Northern Ireland', 'London', 49, NULL, 'British', 'GB', '826', '44', 'GB.png', 1, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(831, 'Guernsey', 'Bailiwick of Guernsey', 'St Peter Port', NULL, NULL, 'of Guernsey', 'GG', '831', '44', NULL, 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(832, 'Jersey', 'Bailiwick of Jersey', 'St Helier', NULL, NULL, 'of Jersey', 'JE', '832', '44', NULL, 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(833, 'Isle of Man', 'Isle of Man', 'Douglas', NULL, NULL, 'Manxman; Manxwoman', 'IM', '833', '44', NULL, 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(834, 'Tanzania, United Republic of', 'United Republic of Tanzania', 'Dodoma (TZ1)', 145, NULL, 'Tanzanian', 'TZ', '834', '255', 'TZ.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(840, 'United States', 'United States of America', 'Washington DC', 148, NULL, 'American', 'US', '840', '1', 'US.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(850, 'Virgin Islands, U.S.', 'United States Virgin Islands', 'Charlotte Amalie', 148, NULL, 'US Virgin Islander', 'VI', '850', '1', 'VI.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(854, 'Burkina Faso', 'Burkina Faso', 'Ouagadougou', 164, NULL, 'Burkinabe', 'BF', '854', '226', 'BF.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(858, 'Uruguay', 'Eastern Republic of Uruguay', 'Montevideo', 149, NULL, 'Uruguayan', 'UY', '858', '598', 'UY.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(860, 'Uzbekistan', 'Republic of Uzbekistan', 'Tashkent', 150, NULL, 'Uzbek', 'UZ', '860', '998', 'UZ.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(862, 'Venezuela, Bolivarian Republic of', 'Bolivarian Republic of Venezuela', 'Caracas', 151, NULL, 'Venezuelan', 'VE', '862', '58', 'VE.png', 0, 1, '2021-06-26 00:02:36', '2021-06-26 00:02:36'),
(876, 'Wallis and Futuna', 'Wallis and Futuna', 'Mata-Utu', 166, NULL, 'Wallisian; Futunan; Wallis and Futuna Islander', 'WF', '876', '681', 'WF.png', 0, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(882, 'Samoa', 'Independent State of Samoa', 'Apia', 154, NULL, 'Samoan', 'WS', '882', '685', 'WS.png', 0, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(887, 'Yemen', 'Republic of Yemen', 'San’a', 169, NULL, 'Yemenite', 'YE', '887', '967', 'YE.png', 0, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(894, 'Zambia', 'Republic of Zambia', 'Lusaka', 172, NULL, 'Zambian', 'ZM', '894', '260', 'ZM.png', 0, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `value` decimal(20,6) DEFAULT NULL,
  `min_order_amount` decimal(20,6) DEFAULT NULL,
  `type` enum('amount','percent') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'amount',
  `quantity` int(11) DEFAULT NULL,
  `quantity_per_customer` int(11) DEFAULT NULL,
  `starting_time` timestamp NULL DEFAULT NULL,
  `ending_time` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `shop_id`, `name`, `code`, `description`, `value`, `min_order_amount`, `type`, `quantity`, `quantity_per_customer`, `starting_time`, `ending_time`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'qui', '541170913', 'Ipsam quos voluptatum voluptatem rem. Ut non nihil qui odio necessitatibus inventore. Sit quia dolor est ad. Aspernatur hic libero et debitis repellat sit nostrum placeat. Neque qui possimus est assumenda eveniet. Modi porro voluptates et et quod. Beatae voluptatem deleniti velit veniam. Odit sed reiciendis sequi est molestias. At sequi expedita sed eaque id. Aut molestiae laboriosam itaque laborum ratione. Quo cupiditate eum perferendis quos fuga dolores. Voluptates itaque placeat dolorum excepturi ipsa excepturi deserunt expedita. Sunt officiis voluptas et repudiandae nihil quidem. Illo est maxime cupiditate sit molestias sunt nam. Iste modi architecto asperiores. Voluptatem quia fugiat magnam hic. Eligendi aut repellendus impedit est ut. Aspernatur vitae itaque ut autem saepe. Et eum vitae voluptatem voluptas ipsa repellendus. Culpa at commodi et perspiciatis tempora. Nihil eos ut nam ut ut. Dolor sequi excepturi architecto commodi cupiditate enim cum. Ut totam dolorem modi excepturi voluptas et quia molestiae. Porro et vel officiis eum deleniti. Quaerat voluptas in molestias animi iste. Rerum aut nostrum velit porro modi. Necessitatibus ipsum nam recusandae. Voluptatem eos enim vel nobis voluptatem non. In totam doloremque culpa provident omnis fuga corporis. Et impedit est praesentium ab sunt eum doloremque vero. Eligendi maxime non et aut natus beatae iusto.', '87.000000', NULL, 'percent', 36, 3, '2021-07-03 00:05:00', '2021-07-15 00:05:00', 1, NULL, '2021-06-26 00:05:14', '2021-06-13 00:05:14'),
(2, 1, 'esse', '915084', 'Quia ipsa ut dolorem repudiandae consequatur. Ut perferendis et ad magni distinctio facere. Vero dicta enim consequatur neque architecto commodi. Doloribus voluptatem unde in ut. Qui exercitationem nostrum qui hic. In architecto culpa molestias nisi iure aut. Officia necessitatibus maiores voluptatem ipsa. Voluptate sit distinctio mollitia ipsam maxime modi praesentium. Nemo et qui consectetur est enim animi dolore incidunt. Mollitia dicta sint soluta id debitis quas. Quisquam illo praesentium quo reiciendis. Eaque occaecati enim sit in. Occaecati a similique dolor repellat deserunt. Voluptatum impedit necessitatibus voluptas qui aut vero deserunt. Eos minus ad facere illo. Qui vel delectus quam aut odit ut eos. At et velit consequatur sit quia corporis non. Repellat voluptas qui dolorum delectus nulla fugit explicabo. Minus est quia optio illo. Error et unde sint nobis molestiae est. Ipsam corrupti consequatur suscipit. Officia nostrum veritatis id. Ad rem necessitatibus voluptatem quasi sequi veniam. Eius aut cum itaque. Debitis laboriosam reprehenderit omnis nemo sunt earum temporibus. Quod nobis dignissimos consequuntur nemo. Fugit est dignissimos aliquid consectetur quo molestiae. Odio sapiente dignissimos rerum sequi itaque consectetur aperiam laborum. Rerum molestias ea placeat non voluptatibus. Dicta consequatur enim ut accusamus.', '72.000000', NULL, 'amount', 27, 1, '2021-07-01 00:05:00', '2021-07-14 00:05:00', 1, NULL, '2021-06-17 00:05:14', '2021-06-21 00:05:14'),
(3, 2, 'sit', '9048', 'Ut incidunt quia explicabo ut ea omnis hic. Aut quia nobis harum corrupti odio ducimus culpa. Ratione explicabo nobis expedita qui. Consequatur adipisci voluptas qui commodi consequatur qui itaque. Fugit sint laudantium aut id dolore. Voluptatem officia veritatis consequatur maiores molestias et eos. Sunt aut officia ipsa debitis. Explicabo officiis illum voluptas voluptatem. Vitae consequatur rerum et dolorem. Amet veniam sint repellendus accusamus non. Veritatis fugiat dolor corrupti rerum fugit eum. Adipisci ut natus fugit quia labore. Labore earum molestias nihil in aut. Quas explicabo voluptate repellendus. Voluptate quaerat facilis officiis iusto aliquam rerum. Suscipit rem repellat est ut aut aut. Expedita mollitia molestiae voluptates illo quia aut. Est nesciunt quidem laboriosam. Est ipsum delectus et quasi. Eos odio sed quia totam eius facere repellendus. Nam eum consequatur similique amet ipsum recusandae. Voluptatum ut maiores aut molestiae et repudiandae. A sunt nemo molestias ex ullam ut deleniti. Non quasi consectetur sed sequi cumque maiores aperiam. Aut corrupti consectetur voluptatem officiis. Eaque facilis et ut commodi nihil. Libero corporis et iure quasi et labore. Tempore autem dicta odit minus. Asperiores dolores quasi in natus enim quam ad dolorum. Et odio consequatur molestias molestiae. Laudantium quis doloribus numquam est dolor. Qui nihil ipsum cupiditate quas.', '83.000000', NULL, 'percent', 44, 3, '2021-06-27 00:05:00', '2021-07-06 00:05:00', 1, NULL, '2021-06-22 00:05:14', '2021-06-19 00:05:14'),
(4, 2, 'consequatur', '228', 'Natus expedita quod nam tempore fugiat. Qui minima et libero voluptatibus et explicabo. Ipsa enim ut architecto deleniti veniam. Qui commodi totam excepturi aliquam recusandae quis ut. Modi possimus rerum quaerat expedita. Voluptates sit et ut tenetur necessitatibus est. Fugit rem rerum voluptatem mollitia nobis nostrum aliquid. Quia aut atque qui quidem qui aut molestiae. Molestiae omnis est voluptatem. Ut laboriosam consequatur velit distinctio voluptatem autem officiis. Itaque enim cumque et repudiandae et. Facere voluptas culpa accusamus aut quam illo. Aut tempore consequatur aut eveniet rem modi ullam. Architecto dolorem incidunt ipsa quas accusamus sed. Qui est veniam recusandae esse voluptas consequuntur quos facere. Numquam qui ipsa beatae voluptatum autem placeat ex possimus. Eum sit quo est quia et quisquam nam. Id aut et recusandae vel quae illum nihil. Id quam quia laboriosam qui nemo. Quasi dicta perspiciatis fuga illo. Aut quisquam aut voluptatem. Nemo non ullam ipsum similique repellendus omnis assumenda. Itaque est et non qui saepe. Dolorem odio soluta eos delectus sed autem est. Non et voluptas quia veniam incidunt nihil beatae. Dolores cupiditate quia consequatur enim dolorum fugiat reiciendis. Est qui velit sunt eveniet consequuntur omnis provident. Non tempore architecto nihil.', '83.000000', NULL, 'percent', 33, 1, '2021-06-27 00:05:00', '2021-07-09 00:05:00', 1, NULL, '2021-06-21 00:05:14', '2021-06-24 00:05:14'),
(5, 1, 'et', '523000773', 'Quis ex vitae pariatur aut. Aut autem ullam soluta ea consequatur. Provident aut velit qui alias qui fugit. Quos est aspernatur maxime voluptas explicabo. Modi omnis odit ipsam et modi nobis voluptates. In perferendis error iure aut qui autem. Modi harum voluptatum vel repellat. Molestiae ut et minima possimus. Quia eos ratione error laudantium. Eaque pariatur voluptas et vero non consequatur. Fugiat aliquam aut aperiam amet quibusdam necessitatibus temporibus. Omnis exercitationem fugit quibusdam ratione necessitatibus nulla. Aperiam veniam et enim minus quam. Facilis labore magnam voluptatem corporis quis est ab. Voluptatem ut aut dolor qui. Ipsum est eaque neque perferendis. Sunt quae perspiciatis aut cumque in voluptas. Mollitia fuga dolor labore et fuga et sit. Ipsa illo et earum quasi et impedit. Officia et expedita debitis cum necessitatibus. Ut nobis exercitationem qui dolore nihil nemo quam voluptates. Quia ipsa suscipit id aliquid suscipit sed. Quisquam sed sunt quia minus ut asperiores ea sunt. Ea alias totam iusto suscipit itaque. Eum autem voluptas veniam est illo. Modi est necessitatibus optio. Tempore perferendis reiciendis qui. Harum fugit optio placeat sint est exercitationem. Nesciunt autem sequi natus eos. Debitis ad voluptatibus quia consequatur quisquam nobis. Optio eveniet inventore mollitia necessitatibus earum illo optio et.', '69.000000', NULL, 'percent', 67, 3, '2021-07-01 00:05:00', '2021-07-18 00:05:00', 1, NULL, '2021-06-18 00:05:14', '2021-06-18 00:05:14'),
(6, 1, 'excepturi', '266', 'Quisquam repellat voluptatem dolore saepe animi sequi. Veniam dolor quidem neque voluptatum error ipsa. Iste iste at quod ea consectetur. Ea dolorum illum sit dicta eum neque sint. Placeat blanditiis expedita ad blanditiis voluptates et. Aut sapiente voluptatem porro possimus. Aut et ut et. Consequuntur repellendus libero et veritatis molestiae quo. Nemo repellat et modi. Aperiam est quidem minus eum. Culpa nobis tenetur adipisci sed molestias in dicta. Ad earum magnam enim. Qui ipsam perferendis similique rerum. Veniam quibusdam quaerat id voluptas sunt vero laudantium. Quam consequatur et omnis omnis omnis nulla ipsam. Sed non culpa qui expedita quam omnis. Quo sit labore minus illo saepe amet. Commodi reiciendis dolorem tempore ut provident. Facilis enim dolor ut illum aut. Voluptatibus iusto fugiat reprehenderit. Fugiat et deleniti possimus pariatur porro consequatur. Modi et aut qui numquam. Amet ipsum voluptatem et provident perferendis iste non. Consequatur facilis accusamus non accusantium molestiae. Qui nobis et iste quos. Possimus aspernatur possimus dicta possimus maxime magni ullam. Quia ex nihil unde culpa. Quibusdam deleniti nihil commodi esse aut. Dolorem tempore tempora error tempore. Ut in ea nulla illo animi autem. Aspernatur rerum quo et amet. Et corporis sed quia quae qui. Est fuga quas neque quia odit quis. Atque eveniet et nulla nisi molestiae officia quisquam qui.', '51.000000', NULL, 'percent', 91, 1, '2021-06-30 00:05:00', '2021-07-10 00:05:00', 1, NULL, '2021-06-14 00:05:14', '2021-06-21 00:05:14'),
(7, 1, 'sed', '7255', 'A consequatur dolor ex illo est non. Veritatis unde eos ipsum et. Tempora illo quasi vel rerum aut maxime eius. Nam quis doloremque asperiores occaecati veritatis. Possimus ad debitis magnam maxime accusamus. Similique est enim et voluptatem facere dolor quia. Nam ipsa ut et optio sint deleniti. Corporis quo cum placeat quia atque veritatis ut. Ducimus expedita aliquid necessitatibus sit nulla dignissimos est. Quia aut at laudantium sint dolores. Dolores repellendus officia omnis veritatis cum omnis veritatis voluptatem. Aliquam rerum quibusdam nobis corporis odit corrupti in. Accusantium voluptatum et quia nemo. Et amet ut rerum et expedita officiis soluta explicabo. Impedit qui sed vel quidem aut sit. Sed est et quia quia iste porro dolor est. Aliquid modi aut exercitationem et. Fugit voluptates ut et vel ab. Et nobis cum a facilis non doloremque odit asperiores. Repellendus sit sed ut. Aut est ut voluptatem ipsum molestias culpa voluptatem. Dicta veniam molestiae molestiae non expedita. Magnam et in commodi aut. Nisi adipisci eius vitae. Omnis et inventore assumenda impedit sed neque. Vitae ea sed explicabo et et vel. Rem veniam temporibus aut dolor. Vel est ipsa voluptatem reprehenderit omnis explicabo officia voluptas. Id adipisci earum sequi eligendi. Odio aut dignissimos nam natus possimus suscipit exercitationem repudiandae. Voluptatibus doloribus consequatur ducimus molestias qui provident minus.', '48.000000', NULL, 'percent', 60, 4, '2021-06-29 00:05:00', '2021-07-03 00:05:00', 1, NULL, '2021-06-17 00:05:14', '2021-06-17 00:05:14'),
(8, 2, 'tempore', '446179260', 'Atque voluptatum quasi incidunt ut. Quibusdam velit iste ratione voluptatem sit et molestias. Consequatur dicta id tenetur voluptatem ratione optio. Molestias saepe adipisci rerum distinctio. Assumenda soluta ut numquam fuga laboriosam. Sed nihil earum et est ducimus veritatis aut dolorem. Repellat magni laborum est ipsum rerum. Minima eveniet beatae ipsam adipisci beatae ut hic. Porro soluta ut consequuntur ab eveniet mollitia in. Tempora vero perspiciatis et porro voluptates. Ut recusandae officiis blanditiis voluptatem perferendis at. Error illo repellendus debitis atque iusto. Qui dolor soluta ducimus expedita. Eum est eius quibusdam. Et aliquam tempore delectus dolore tempore dolore ut nihil. Nemo eos et qui veritatis. Sit consequatur voluptatem sit quis aut corrupti laboriosam error. Totam quisquam labore quibusdam inventore possimus dolor rem. Sed fugiat repudiandae eos. Delectus saepe sequi voluptatum et sapiente vero ut. Consectetur sit voluptate aspernatur nemo autem perferendis minima aut. Accusamus consequatur quam consequatur vel et est unde. Et incidunt est id dolorem. Perspiciatis iure ut ipsam id. Corporis quo eveniet perferendis. Sit similique ut quisquam voluptatem. Dolorum ut atque qui quia tenetur molestias nobis sit. Consequatur numquam quibusdam iusto dicta earum. Non et quo est occaecati qui saepe temporibus reprehenderit. Voluptatum aut maxime optio eum expedita. Voluptatem voluptatem nam et cupiditate officia. Aut eos recusandae cum ea velit.', '56.000000', NULL, 'percent', 6, 2, '2021-06-27 00:05:00', '2021-07-03 00:05:00', 1, NULL, '2021-06-21 00:05:14', '2021-06-15 00:05:14'),
(9, 1, 'non', '17', 'Esse autem dolor dolorem ut. Qui ipsa neque natus sequi. Dicta veritatis esse ea quos similique earum nihil sint. Aut perspiciatis explicabo aperiam omnis. Iste fuga rerum molestias voluptatem quia. Omnis odit vel quibusdam porro perferendis. Nobis doloribus ea qui sit. Suscipit aut vero nemo dolorum qui aperiam. Nisi sint assumenda et aut dignissimos sequi. Necessitatibus dolorem ut delectus id nesciunt officiis saepe. Minus unde itaque aliquid pariatur nostrum. Ipsam et consectetur dolore rerum vero laboriosam molestiae eveniet. Qui iste et eum excepturi suscipit. Aut maxime sapiente nihil voluptates qui praesentium ab. Aliquid aspernatur et unde odit doloremque rerum impedit. Quibusdam quo quis cupiditate assumenda eos. Facere alias est ullam. Voluptatem ut quidem dolores sed. Est tempore quod eum consequatur voluptas blanditiis qui. Fuga rem adipisci et officiis. Ea architecto cum magnam nam pariatur et qui. Beatae beatae cumque facilis molestias. Et quaerat nulla rerum quae delectus voluptatem officia. Aut est dolor quidem molestias delectus. Voluptatum aperiam eos qui. Quis porro nobis explicabo. Blanditiis expedita saepe velit id quia. Ipsum nemo ex ea. Harum enim amet quo est beatae. Aperiam architecto magni pariatur aperiam sed rem. Reprehenderit dignissimos suscipit explicabo minima voluptate. Consectetur est consequuntur et voluptas sint quos repellendus. Quidem nemo earum quia.', '73.000000', NULL, 'percent', 3, 3, '2021-06-26 00:05:00', '2021-07-07 00:05:00', 1, NULL, '2021-06-18 00:05:14', '2021-06-19 00:05:14'),
(10, 1, 'animi', '71665792', 'Et amet qui debitis beatae quaerat esse et rerum. Aut eum quae dolore debitis necessitatibus illum excepturi. Quos accusantium nihil similique deleniti est ut. Blanditiis atque dolores aut quia blanditiis. Amet quia est voluptas consequatur. Et fugit dolore explicabo. Alias explicabo aut facilis officia. Sed illum odit provident id ipsam consequatur. Ut tenetur animi aperiam sequi esse. Aut eius veritatis aut consequuntur tempore. Deserunt at eos maxime aut repudiandae tempora accusamus. Aliquid repellat omnis expedita rerum. Aspernatur voluptas debitis molestiae omnis iure pariatur et quis. Sequi perferendis nemo quis vel. Esse esse consequatur eligendi illum occaecati. Labore facere eum quas. Assumenda at corrupti corrupti iusto voluptatem repellendus ut. Est itaque cum atque laudantium et repellat hic. Quis eligendi et et dolor doloribus distinctio. Aut voluptates earum sit porro in nam. Non dolores et qui in qui omnis veritatis et. Iste consequatur tempore sunt et in quia exercitationem. Eveniet vitae autem ea nemo libero eius. Enim id architecto nihil omnis iste dolor aperiam. Pariatur qui consequatur assumenda ut placeat soluta. Vel id aut reiciendis eligendi ut quibusdam nobis dolor. Sunt doloremque non sed nihil inventore unde et. Ullam officia illum quo ducimus quas.', '40.000000', NULL, 'percent', 69, 1, '2021-07-02 00:05:00', '2021-07-10 00:05:00', 1, NULL, '2021-06-11 00:05:14', '2021-06-11 00:05:14'),
(11, 1, 'velit', '6117', 'Temporibus eaque ab iusto sequi maxime ipsa. Velit rerum quasi ipsa aut laudantium. Libero voluptas mollitia autem velit. Consequatur minima sint repellat qui temporibus. Quidem maxime soluta exercitationem quis neque. Qui blanditiis assumenda impedit voluptates earum veritatis non eveniet. Aut aut voluptatem ad eos ipsum. Nam deleniti nam quasi fugiat. Doloribus adipisci maxime repellendus. Reiciendis illum dolores beatae odit aut officiis. Sed quas ipsam aspernatur consequatur. Temporibus ea provident nam. Quibusdam necessitatibus inventore voluptatem. Occaecati rerum tempora eius asperiores eveniet. Quo consequatur iure eos molestias. Ut tempora vel cumque sit accusamus beatae odit. Saepe aspernatur qui et. Sint officia qui sunt aliquam. Et sunt enim dolores asperiores expedita ab molestiae. Rerum facilis autem dolor adipisci aut. In vitae laudantium vel excepturi distinctio. Eaque ut quia consequatur quis voluptatem omnis minus aliquam. Enim et fuga suscipit natus fugit explicabo. Non ratione pariatur velit quae itaque cum. Ut aperiam officia maxime repellendus at natus aut. Est saepe ut ad alias repellendus voluptatem porro voluptas. Assumenda doloremque voluptates ad quod veritatis minima. Qui in voluptates sed numquam et ratione. Voluptates qui ea nostrum a incidunt placeat optio eius. Nostrum aut et ex sit cupiditate. Et sint dolor et sed corrupti ex.', '90.000000', NULL, 'amount', 20, 2, '2021-06-30 00:05:00', '2021-07-07 00:05:00', 1, NULL, '2021-06-18 00:05:14', '2021-06-11 00:05:14'),
(12, 1, 'qui', '885611', 'Nobis reprehenderit voluptatem corporis et vel. Ipsam ut illo aliquid accusamus. Suscipit explicabo modi doloribus magnam odit amet. Voluptates magni aut ea ea. Delectus ipsum earum quisquam voluptas quo officiis possimus dignissimos. In autem quae aut eaque ut quisquam. Est eum qui sequi. Itaque veniam officia ut qui perspiciatis expedita laboriosam. Ut sequi voluptatem qui cum libero. Voluptatem occaecati vitae autem voluptas sunt asperiores repellat. Omnis omnis blanditiis doloremque quaerat vel ipsam. Ipsam sapiente repellat rerum incidunt illo. Iste consequuntur nam qui. Delectus fuga commodi quae repellat mollitia quis. Cum ut earum harum cupiditate voluptatem ut. Eius et qui qui dolor rerum enim possimus voluptatem. Dolor iusto facilis voluptatem et dolorem. Sed eius expedita hic nam. Harum doloremque aut aliquam sint officia rerum. Molestiae saepe porro natus non et. Adipisci atque earum quis deleniti quasi corrupti ut. Voluptates ducimus et impedit omnis. Id ratione necessitatibus hic esse iure distinctio. Odit deserunt autem accusantium. Laudantium officia vel voluptatibus consequatur. Odio est reprehenderit adipisci ut id possimus perspiciatis non. Ut est qui maxime ea ut. Architecto quia perspiciatis cumque similique deserunt animi. Quam iure asperiores tempore quia. Unde qui qui ut cupiditate aut atque.', '83.000000', NULL, 'percent', 36, 3, '2021-07-03 00:05:00', '2021-07-18 00:05:00', 1, NULL, '2021-06-16 00:05:14', '2021-06-21 00:05:14'),
(13, 1, 'ipsum', '78540487', 'Repudiandae in sapiente voluptate aut quidem quibusdam minus rerum. Laboriosam repellat corrupti et et voluptas fugit quo. Dolorem quisquam iusto harum unde qui sunt. Quia numquam qui natus maiores incidunt tenetur. Pariatur molestiae recusandae amet quas reprehenderit. Aut est vel saepe non. Illum sit corporis aliquid pariatur in iure sequi. Non perspiciatis quo sit est ex laboriosam eveniet. Quod et sunt est pariatur distinctio. Voluptas aut vel blanditiis explicabo quis atque. Et quis aliquam cupiditate unde ipsam dolores deserunt. Ratione est provident commodi nihil quia. Rem eos quia est iure consectetur harum incidunt magni. Ullam maxime ex impedit est quia. Quas nulla maxime rerum iure vel corrupti a quidem. Exercitationem maxime id rerum pariatur ea rem. Quis inventore voluptates dolorem voluptatem. Rerum voluptatum repudiandae adipisci aperiam ut. Magni tenetur quia quis. Labore libero eos quos amet inventore adipisci. A non omnis nemo et qui vel aspernatur vitae. Magni deleniti quia illo. Minus dolorem perspiciatis dolor itaque laudantium cupiditate hic. Temporibus repudiandae commodi repudiandae. Aspernatur molestias commodi nesciunt et nobis nobis. Nam corrupti repellendus odit amet nam tempora ex. Sit possimus autem magni nihil et asperiores dolor. Omnis vel saepe quis quo error qui a. Nemo quo quis molestias quod nobis. Autem nesciunt deleniti illum pariatur minima odio quaerat facilis.', '59.000000', NULL, 'percent', 11, 2, '2021-07-03 00:05:00', '2021-07-11 00:05:00', 1, NULL, '2021-06-12 00:05:14', '2021-06-15 00:05:14'),
(14, 2, 'saepe', '7', 'Excepturi quibusdam reiciendis asperiores quo laborum. Nihil voluptatem maiores voluptas blanditiis itaque. Modi corporis ea aut inventore rerum delectus. Iusto sed quos ut in. Omnis dicta aspernatur natus. Et cum enim vitae quasi beatae soluta voluptatem. Qui voluptatem eaque dolor aut id sunt quidem. Soluta dolor sit sit nostrum numquam. Nemo et sit rerum modi. Occaecati et dolor ipsum qui ab. Minus quisquam error quia ipsam quis quae. Ut deleniti quidem ab minima qui molestiae. Harum dolores nesciunt porro ullam magnam rerum. Enim modi corporis quidem. Deleniti est voluptatem voluptates consequatur et. Et animi eos est rem ad. Libero sint hic dolorum excepturi rerum neque quam. Debitis blanditiis est fuga voluptatum assumenda dignissimos rerum. Necessitatibus architecto itaque ullam et. Enim esse mollitia vel inventore aliquam accusantium. Modi necessitatibus omnis dolorem voluptatum. Quidem quia laboriosam minus ad voluptas dolorem ea voluptatem. Officiis velit magnam omnis ullam odio aut repudiandae. Consequatur qui ratione accusamus et et eum. Maxime eos vitae voluptas sed aut. Sit et in at sed excepturi alias. Ad consectetur non accusantium corporis. Praesentium voluptates architecto et iure officia. Maxime dolores ratione est illo qui. Et expedita autem doloribus maiores autem qui ad omnis. Ad nobis ut quo et quidem ipsum. Et omnis magni dolores sit ut. Qui tenetur qui provident voluptatem quo vel. Incidunt ducimus sed dolorem quae quisquam ut quos.', '97.000000', NULL, 'amount', 74, 5, '2021-06-30 00:05:00', '2021-07-15 00:05:00', 1, NULL, '2021-06-26 00:05:14', '2021-06-11 00:05:14'),
(15, 2, 'quidem', '3646', 'Pariatur facere corporis cumque laborum saepe ex aut. Accusamus ut voluptate autem in quis asperiores quaerat. Quos quisquam dolores odit iusto temporibus ea. Ipsa ratione aut qui ea cum aspernatur. Ut non cupiditate aspernatur perferendis quo adipisci est. Sit et earum sed assumenda doloribus minima. Dolor consequatur ut soluta ut ipsa. Rerum rerum possimus corporis dolorem illum. Ut error cum beatae omnis. Qui aliquid corporis asperiores maiores. Rerum ut aut deleniti omnis. Dolores repellendus maiores molestiae recusandae nam tenetur culpa. Minima doloribus et error perspiciatis. Est pariatur placeat magni dolore nam ex. Et itaque ea nostrum fugiat animi similique et. Voluptatibus praesentium est explicabo et ex est. Voluptate tenetur maxime aut impedit. Ut cumque reprehenderit dolorem placeat quo laudantium ut. Ab explicabo atque quis labore. Voluptate sed sed est optio doloremque. Voluptates iusto dolorem recusandae optio earum. Odio officiis et sunt sunt repellendus. Minima non qui ullam et fugiat et. Molestiae repellat optio quia inventore. Molestiae dolorem voluptatem nihil voluptatem accusamus. Quod necessitatibus sit illo fugit sit recusandae eligendi consequatur. Molestiae dolores non accusamus dolor quis. Ipsum suscipit sint harum soluta facere. Et veritatis ab dolorum repudiandae porro sunt est. Voluptas voluptas quibusdam quos ab. Est fugit quos itaque consequatur aut. Voluptas doloribus repudiandae adipisci eos placeat ut harum.', '21.000000', NULL, 'percent', 67, 3, '2021-07-03 00:05:00', '2021-07-12 00:05:00', 1, NULL, '2021-06-16 00:05:14', '2021-06-16 00:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_customer`
--

CREATE TABLE `coupon_customer` (
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupon_customer`
--

INSERT INTO `coupon_customer` (`coupon_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(15, 1, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(13, 3, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(5, 3, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(1, 1, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(4, 1, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(2, 1, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(10, 3, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(2, 3, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(14, 3, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(1, 3, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(12, 3, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(13, 2, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(1, 1, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(3, 3, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(5, 3, '2021-06-26 00:03:38', '2021-06-26 00:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_shipping_zone`
--

CREATE TABLE `coupon_shipping_zone` (
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_zone_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `iso_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `iso_numeric` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disambiguate_symbol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subunit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subunit_to_unit` int(11) NOT NULL DEFAULT '100',
  `symbol_first` tinyint(1) NOT NULL DEFAULT '1',
  `html_entity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_mark` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thousands_separator` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smallest_denomination` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) DEFAULT '100',
  `active` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `iso_code`, `iso_numeric`, `name`, `symbol`, `disambiguate_symbol`, `subunit`, `subunit_to_unit`, `symbol_first`, `html_entity`, `decimal_mark`, `thousands_separator`, `smallest_denomination`, `priority`, `active`, `created_at`, `updated_at`) VALUES
(1, 'AED', '784', 'United Arab Emirates Dirham', 'د.إ', NULL, 'Fils', 100, 0, NULL, '.', ',', 25, 100, 1, '2021-06-26 00:02:16', '2023-03-09 14:37:26'),
(2, 'AFN', '971', 'Afghani', '؋', NULL, 'Pul', 100, 0, '', '.', ',', 100, 100, 0, '2021-06-26 00:02:16', '2021-06-26 00:02:16'),
(3, 'ALL', '008', 'Albanian Lek', 'L', 'Lek', 'Qintar', 100, 0, '', '.', ',', 100, 100, 0, '2021-06-26 00:02:16', '2021-06-26 00:02:16'),
(4, 'AMD', '051', 'Armenian Dram', 'դր.', NULL, 'Luma', 100, 0, '', '.', ',', 10, 100, 0, '2021-06-26 00:02:16', '2021-06-26 00:02:16'),
(5, 'ANG', '532', 'Netherlands Antillean Gulden', 'ƒ', NULL, 'Cent', 100, 1, '&#x0192;', ',', '.', 1, 100, 0, '2021-06-26 00:02:16', '2021-06-26 00:02:16'),
(6, 'AOA', '973', 'Angolan Kwanza', 'Kz', NULL, 'Cêntimo', 100, 0, '', '.', ',', 10, 100, 0, '2021-06-26 00:02:16', '2021-06-26 00:02:16'),
(7, 'ARS', '032', 'Argentine Peso', '$', '$m/n', 'Centavo', 100, 1, '&#x20B1;', ',', '.', 1, 100, 0, '2021-06-26 00:02:16', '2021-06-26 00:02:16'),
(8, 'AUD', '036', 'Australian Dollar', '$', 'A$', 'Cent', 100, 1, '$', '.', ',', 5, 4, 0, '2021-06-26 00:02:16', '2021-06-26 00:02:16'),
(9, 'AWG', '533', 'Aruban Florin', 'ƒ', NULL, 'Cent', 100, 0, '&#x0192;', '.', ',', 5, 100, 0, '2021-06-26 00:02:16', '2021-06-26 00:02:16'),
(10, 'AZN', '944', 'Azerbaijani Manat', '₼', NULL, 'Qəpik', 100, 1, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:16', '2021-06-26 00:02:16'),
(11, 'BAM', '977', 'Bosnia and Herzegovina Convertible Mark', 'КМ', NULL, 'Fening', 100, 1, '', '.', ',', 5, 100, 0, '2021-06-26 00:02:16', '2021-06-26 00:02:16'),
(12, 'BBD', '052', 'Barbadian Dollar', '$', 'Bds$', 'Cent', 100, 0, '$', '.', ',', 1, 100, 0, '2021-06-26 00:02:16', '2021-06-26 00:02:16'),
(13, 'BDT', '050', 'Bangladeshi Taka', '৳', NULL, 'Paisa', 100, 1, '', '.', ',', 1, 10, 0, '2021-06-26 00:02:16', '2021-06-26 00:02:16'),
(14, 'BGN', '975', 'Bulgarian Lev', 'лв.', NULL, 'Stotinka', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(15, 'BHD', '048', 'Bahraini Dinar', 'ب.د', NULL, 'Fils', 1000, 1, '', '.', ',', 5, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(16, 'BIF', '108', 'Burundian Franc', 'Fr', 'FBu', 'Centime', 1, 0, '', '.', ',', 100, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(17, 'BMD', '060', 'Bermudian Dollar', '$', 'BD$', 'Cent', 100, 1, '$', '.', ',', 1, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(18, 'BND', '096', 'Brunei Dollar', '$', 'BND', 'Sen', 100, 1, '$', '.', ',', 1, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(19, 'BOB', '068', 'Bolivian Boliviano', 'Bs.', NULL, 'Centavo', 100, 1, '', '.', ',', 10, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(20, 'BRL', '986', 'Brazilian Real', 'R$', NULL, 'Centavo', 100, 1, 'R$', ',', '.', 5, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(21, 'BSD', '044', 'Bahamian Dollar', '$', 'BSD', 'Cent', 100, 1, '$', '.', ',', 1, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(22, 'BTN', '064', 'Bhutanese Ngultrum', 'Nu.', NULL, 'Chertrum', 100, 0, '', '.', ',', 5, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(23, 'BWP', '072', 'Botswana Pula', 'P', NULL, 'Thebe', 100, 1, '', '.', ',', 5, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(24, 'BYN', '933', 'Belarusian Ruble', 'Br', 'BYN', 'Kapeyka', 100, 0, '', ',', ' ', 1, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(25, 'BYR', '974', 'Belarusian Ruble', 'Br', 'BYR', NULL, 1, 0, '', ',', ' ', 100, 50, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(26, 'BZD', '084', 'Belize Dollar', '$', 'BZ$', 'Cent', 100, 1, '$', '.', ',', 1, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(27, 'CAD', '124', 'Canadian Dollar', '$', 'C$', 'Cent', 100, 1, '$', '.', ',', 5, 5, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(28, 'CDF', '976', 'Congolese Franc', 'Fr', 'FC', 'Centime', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(29, 'CHF', '756', 'Swiss Franc', 'CHF', NULL, 'Rappen', 100, 1, '', '.', ',', 5, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(30, 'CLF', '990', 'Unidad de Fomento', 'UF', NULL, 'Peso', 10000, 1, '&#x20B1;', ',', '.', 1, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(31, 'CLP', '152', 'Chilean Peso', '$', 'CLP', 'Peso', 1, 1, '&#36;', ',', '.', 1, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(32, 'CNY', '156', 'Chinese Renminbi Yuan', '¥', NULL, 'Fen', 100, 1, '￥', '.', ',', 1, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(33, 'COP', '170', 'Colombian Peso', '$', 'COL$', 'Centavo', 100, 1, '&#36;', ',', '.', 20, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(34, 'CRC', '188', 'Costa Rican Colón', '₡', NULL, 'Céntimo', 100, 1, '&#x20A1;', ',', '.', 500, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(35, 'CUC', '931', 'Cuban Convertible Peso', '$', 'CUC$', 'Centavo', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(36, 'CUP', '192', 'Cuban Peso', '$', '$MN', 'Centavo', 100, 1, '&#x20B1;', '.', ',', 1, 100, 0, '2021-06-26 00:02:17', '2021-06-26 00:02:17'),
(37, 'CVE', '132', 'Cape Verdean Escudo', '$', 'Esc', 'Centavo', 100, 0, '', '.', ',', 100, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(38, 'CZK', '203', 'Czech Koruna', 'Kč', NULL, 'Haléř', 100, 0, '', ',', ' ', 100, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(39, 'DJF', '262', 'Djiboutian Franc', 'Fdj', NULL, 'Centime', 1, 0, '', '.', ',', 100, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(40, 'DKK', '208', 'Danish Krone', 'kr.', 'DKK', 'Øre', 100, 0, '', ',', '.', 50, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(41, 'DOP', '214', 'Dominican Peso', '$', 'RD$', 'Centavo', 100, 1, '&#x20B1;', '.', ',', 100, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(42, 'DZD', '012', 'Algerian Dinar', 'د.ج', NULL, 'Centime', 100, 0, '', '.', ',', 100, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(43, 'EGP', '818', 'Egyptian Pound', 'ج.م', NULL, 'Piastre', 100, 1, '&#x00A3;', '.', ',', 25, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(44, 'ERN', '232', 'Eritrean Nakfa', 'Nfk', NULL, 'Cent', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(45, 'ETB', '230', 'Ethiopian Birr', 'Br', 'ETB', 'Santim', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(46, 'EUR', '978', 'Euro', '€', NULL, 'Cent', 100, 1, '€', ',', '.', 1, 2, 0, '2021-06-26 00:02:18', '2023-03-09 14:37:10'),
(47, 'FJD', '242', 'Fijian Dollar', '$', 'FJ$', 'Cent', 100, 0, '$', '.', ',', 5, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(48, 'FKP', '238', 'Falkland Pound', '£', 'FK£', 'Penny', 100, 0, '&#x00A3;', '.', ',', 1, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(49, 'GBP', '826', 'British Pound', '£', NULL, 'Penny', 100, 1, '&#x00A3;', '.', ',', 1, 3, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(50, 'GEL', '981', 'Georgian Lari', 'ლ', NULL, 'Tetri', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(51, 'GHS', '936', 'Ghanaian Cedi', '₵', NULL, 'Pesewa', 100, 1, '&#x20B5;', '.', ',', 1, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(52, 'GIP', '292', 'Gibraltar Pound', '£', 'GIP', 'Penny', 100, 1, '&#x00A3;', '.', ',', 1, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(53, 'GMD', '270', 'Gambian Dalasi', 'D', NULL, 'Butut', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(54, 'GNF', '324', 'Guinean Franc', 'Fr', 'FG', 'Centime', 1, 0, '', '.', ',', 100, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(55, 'GTQ', '320', 'Guatemalan Quetzal', 'Q', NULL, 'Centavo', 100, 1, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(56, 'GYD', '328', 'Guyanese Dollar', '$', 'G$', 'Cent', 100, 0, '$', '.', ',', 100, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(57, 'HKD', '344', 'Hong Kong Dollar', '$', 'HK$', 'Cent', 100, 1, '$', '.', ',', 10, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(58, 'HNL', '340', 'Honduran Lempira', 'L', 'HNL', 'Centavo', 100, 1, '', '.', ',', 5, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(59, 'HRK', '191', 'Croatian Kuna', 'kn', NULL, 'Lipa', 100, 0, '', ',', '.', 1, 100, 0, '2021-06-26 00:02:18', '2021-06-26 00:02:18'),
(60, 'HTG', '332', 'Haitian Gourde', 'G', NULL, 'Centime', 100, 0, '', '.', ',', 5, 100, 0, '2021-06-26 00:02:19', '2021-06-26 00:02:19'),
(61, 'HUF', '348', 'Hungarian Forint', 'Ft', NULL, 'Fillér', 1, 0, '', ',', '.', 5, 100, 0, '2021-06-26 00:02:19', '2021-06-26 00:02:19'),
(62, 'IDR', '360', 'Indonesian Rupiah', 'Rp', NULL, 'Sen', 100, 1, '', ',', '.', 5000, 100, 0, '2021-06-26 00:02:19', '2021-06-26 00:02:19'),
(63, 'ILS', '376', 'Israeli New Sheqel', '₪', NULL, 'Agora', 100, 1, '&#x20AA;', '.', ',', 10, 100, 0, '2021-06-26 00:02:19', '2021-06-26 00:02:19'),
(64, 'INR', '356', 'Indian Rupee', '₹', NULL, 'Paisa', 100, 1, '₹', '.', ',', 50, 59, 0, '2021-06-26 00:02:19', '2023-03-09 14:37:18'),
(65, 'IQD', '368', 'Iraqi Dinar', 'ع.د', NULL, 'Fils', 1000, 0, '', '.', ',', 50000, 100, 0, '2021-06-26 00:02:19', '2021-06-26 00:02:19'),
(66, 'IRR', '364', 'Iranian Rial', '﷼', NULL, NULL, 100, 1, '&#xFDFC;', '.', ',', 5000, 100, 0, '2021-06-26 00:02:19', '2021-06-26 00:02:19'),
(67, 'ISK', '352', 'Icelandic Króna', 'kr', NULL, NULL, 1, 1, '', ',', '.', 1, 100, 0, '2021-06-26 00:02:19', '2021-06-26 00:02:19'),
(68, 'JMD', '388', 'Jamaican Dollar', '$', 'J$', 'Cent', 100, 1, '$', '.', ',', 1, 100, 0, '2021-06-26 00:02:19', '2021-06-26 00:02:19'),
(69, 'JOD', '400', 'Jordanian Dinar', 'د.ا', NULL, 'Fils', 1000, 1, '', '.', ',', 5, 100, 0, '2021-06-26 00:02:19', '2021-06-26 00:02:19'),
(70, 'JPY', '392', 'Japanese Yen', '¥', NULL, 'hgh', 1, 1, '¥', '.', ',', 1, 6, 0, '2021-06-26 00:02:19', '2023-03-09 14:36:59'),
(71, 'KES', '404', 'Kenyan Shilling', 'KSh', NULL, 'Cent', 100, 1, '', '.', ',', 50, 100, 0, '2021-06-26 00:02:19', '2021-06-26 00:02:19'),
(72, 'KGS', '417', 'Kyrgyzstani Som', 'som', NULL, 'Tyiyn', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:19', '2021-06-26 00:02:19'),
(73, 'KHR', '116', 'Cambodian Riel', '៛', NULL, 'Sen', 100, 0, '&#x17DB;', '.', ',', 5000, 100, 0, '2021-06-26 00:02:19', '2021-06-26 00:02:19'),
(74, 'KMF', '174', 'Comorian Franc', 'Fr', 'CF', 'Centime', 1, 0, '', '.', ',', 100, 100, 0, '2021-06-26 00:02:19', '2021-06-26 00:02:19'),
(75, 'KPW', '408', 'North Korean Won', '₩', NULL, 'Chŏn', 100, 0, '&#x20A9;', '.', ',', 1, 100, 0, '2021-06-26 00:02:19', '2021-06-26 00:02:19'),
(76, 'KRW', '410', 'South Korean Won', '₩', NULL, NULL, 1, 1, '&#x20A9;', '.', ',', 1, 100, 0, '2021-06-26 00:02:19', '2021-06-26 00:02:19'),
(77, 'KWD', '414', 'Kuwaiti Dinar', 'د.ك', NULL, 'Fils', 1000, 1, '', '.', ',', 5, 100, 0, '2021-06-26 00:02:19', '2021-06-26 00:02:19'),
(78, 'KYD', '136', 'Cayman Islands Dollar', '$', 'CI$', 'Cent', 100, 1, '$', '.', ',', 1, 100, 0, '2021-06-26 00:02:19', '2021-06-26 00:02:19'),
(79, 'KZT', '398', 'Kazakhstani Tenge', '〒', NULL, 'Tiyn', 100, 0, '', '.', ',', 100, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(80, 'LAK', '418', 'Lao Kip', '₭', NULL, 'Att', 100, 0, '&#x20AD;', '.', ',', 10, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(81, 'LBP', '422', 'Lebanese Pound', 'ل.ل', NULL, 'Piastre', 100, 1, '&#x00A3;', '.', ',', 25000, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(82, 'LKR', '144', 'Sri Lankan Rupee', '₨', 'SLRs', 'Cent', 100, 0, '&#x0BF9;', '.', ',', 100, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(83, 'LRD', '430', 'Liberian Dollar', '$', 'L$', 'Cent', 100, 0, '$', '.', ',', 5, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(84, 'LSL', '426', 'Lesotho Loti', 'L', 'M', 'Sente', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(85, 'LTL', '440', 'Lithuanian Litas', 'Lt', NULL, 'Centas', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(86, 'LVL', '428', 'Latvian Lats', 'Ls', NULL, 'Santīms', 100, 1, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(87, 'LYD', '434', 'Libyan Dinar', 'ل.د', NULL, 'Dirham', 1000, 0, '', '.', ',', 50, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(88, 'MAD', '504', 'Moroccan Dirham', 'د.م.', NULL, 'Centime', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(89, 'MDL', '498', 'Moldovan Leu', 'L', NULL, 'Ban', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(90, 'MGA', '969', 'Malagasy Ariary', 'Ar', NULL, 'Iraimbilanja', 5, 1, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(91, 'MKD', '807', 'Macedonian Denar', 'ден', NULL, 'Deni', 100, 0, '', '.', ',', 100, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(92, 'MMK', '104', 'Myanmar Kyat', 'K', 'MMK', 'Pya', 100, 0, '', '.', ',', 50, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(93, 'MNT', '496', 'Mongolian Tögrög', '₮', NULL, 'Möngö', 100, 0, '&#x20AE;', '.', ',', 2000, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(94, 'MOP', '446', 'Macanese Pataca', 'P', NULL, 'Avo', 100, 0, '', '.', ',', 10, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(95, 'MRO', '478', 'Mauritanian Ouguiya', 'UM', NULL, 'Khoums', 5, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(96, 'MUR', '480', 'Mauritian Rupee', '₨', NULL, 'Cent', 100, 1, '&#x20A8;', '.', ',', 100, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(97, 'MVR', '462', 'Maldivian Rufiyaa', 'MVR', NULL, 'Laari', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(98, 'MWK', '454', 'Malawian Kwacha', 'MK', NULL, 'Tambala', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(99, 'MXN', '484', 'Mexican Peso', '$', 'MEX$', 'Centavo', 100, 1, '$', '.', ',', 5, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(100, 'MYR', '458', 'Malaysian Ringgit', 'RM', NULL, 'Sen', 100, 1, '', '.', ',', 5, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(101, 'MZN', '943', 'Mozambican Metical', 'MTn', NULL, 'Centavo', 100, 1, '', ',', '.', 1, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(102, 'NAD', '516', 'Namibian Dollar', '$', 'N$', 'Cent', 100, 0, '$', '.', ',', 5, 100, 0, '2021-06-26 00:02:20', '2021-06-26 00:02:20'),
(103, 'NGN', '566', 'Nigerian Naira', '₦', NULL, 'Kobo', 100, 1, '&#x20A6;', '.', ',', 50, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(104, 'NIO', '558', 'Nicaraguan Córdoba', 'C$', NULL, 'Centavo', 100, 0, '', '.', ',', 5, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(105, 'NOK', '578', 'Norwegian Krone', 'kr', 'NOK', 'Øre', 100, 0, 'kr', ',', '.', 100, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(106, 'NPR', '524', 'Nepalese Rupee', '₨', 'NPR', 'Paisa', 100, 1, '&#x20A8;', '.', ',', 1, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(107, 'NZD', '554', 'New Zealand Dollar', '$', 'NZ$', 'Cent', 100, 1, '$', '.', ',', 10, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(108, 'OMR', '512', 'Omani Rial', 'ر.ع.', NULL, 'Baisa', 1000, 1, '&#xFDFC;', '.', ',', 5, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(109, 'PAB', '590', 'Panamanian Balboa', 'B/.', NULL, 'Centésimo', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(110, 'PEN', '604', 'Peruvian Nuevo Sol', 'S/.', NULL, 'Céntimo', 100, 1, 'S/.', '.', ',', 1, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(111, 'PGK', '598', 'Papua New Guinean Kina', 'K', 'PGK', 'Toea', 100, 0, '', '.', ',', 5, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(112, 'PHP', '608', 'Philippine Peso', '₱', NULL, 'Centavo', 100, 1, '&#x20B1;', '.', ',', 1, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(113, 'PKR', '586', 'Pakistani Rupee', '₨', 'PKR', 'Paisa', 100, 1, '&#x20A8;', '.', ',', 100, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(114, 'PLN', '985', 'Polish Złoty', 'zł', NULL, 'Grosz', 100, 0, 'z&#322;', ',', ' ', 1, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(115, 'PYG', '600', 'Paraguayan Guaraní', '₲', NULL, 'Céntimo', 1, 1, '&#x20B2;', '.', ',', 5000, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(116, 'QAR', '634', 'Qatari Riyal', 'ر.ق', NULL, 'Dirham', 100, 0, '&#xFDFC;', '.', ',', 1, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(117, 'RON', '946', 'Romanian Leu', 'Lei', NULL, 'Bani', 100, 0, '', ',', '.', 1, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(118, 'RSD', '941', 'Serbian Dinar', 'РСД', NULL, 'Para', 100, 1, '', '.', ',', 100, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(119, 'RUB', '643', 'Russian Ruble', '₽', NULL, 'Kopeck', 100, 0, '&#x20BD;', ',', '.', 1, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(120, 'RWF', '646', 'Rwandan Franc', 'FRw', NULL, 'Centime', 1, 0, '', '.', ',', 100, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(121, 'SAR', '682', 'Saudi Riyal', 'ر.س', NULL, 'Hallallah', 100, 1, '&#xFDFC;', '.', ',', 5, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(122, 'SBD', '090', 'Solomon Islands Dollar', '$', 'SI$', 'Cent', 100, 0, '$', '.', ',', 10, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(123, 'SCR', '690', 'Seychellois Rupee', '₨', 'SRe', 'Cent', 100, 0, '&#x20A8;', '.', ',', 1, 100, 0, '2021-06-26 00:02:21', '2021-06-26 00:02:21'),
(124, 'SDG', '938', 'Sudanese Pound', '£', 'SDG', 'Piastre', 100, 1, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(125, 'SEK', '752', 'Swedish Krona', 'kr', 'SEK', 'Öre', 100, 0, '', ',', ' ', 100, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(126, 'SGD', '702', 'Singapore Dollar', '$', 'S$', 'Cent', 100, 1, '$', '.', ',', 1, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(127, 'SHP', '654', 'Saint Helenian Pound', '£', 'SHP', 'Penny', 100, 0, '&#x00A3;', '.', ',', 1, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(128, 'SKK', '703', 'Slovak Koruna', 'Sk', NULL, 'Halier', 100, 1, '', '.', ',', 50, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(129, 'SLL', '694', 'Sierra Leonean Leone', 'Le', NULL, 'Cent', 100, 0, '', '.', ',', 1000, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(130, 'SOS', '706', 'Somali Shilling', 'Sh', NULL, 'Cent', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(131, 'SRD', '968', 'Surinamese Dollar', '$', 'SRD', 'Cent', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(132, 'SSP', '728', 'South Sudanese Pound', '£', 'SSP', 'piaster', 100, 0, '&#x00A3;', '.', ',', 5, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(133, 'STD', '678', 'São Tomé and Príncipe Dobra', 'Db', NULL, 'Cêntimo', 100, 0, '', '.', ',', 10000, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(134, 'SVC', '222', 'Salvadoran Colón', '₡', NULL, 'Centavo', 100, 1, '&#x20A1;', '.', ',', 1, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(135, 'SYP', '760', 'Syrian Pound', '£S', NULL, 'Piastre', 100, 0, '&#x00A3;', '.', ',', 100, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(136, 'SZL', '748', 'Swazi Lilangeni', 'E', 'SZL', 'Cent', 100, 1, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(137, 'THB', '764', 'Thai Baht', '฿', NULL, 'Satang', 100, 1, '&#x0E3F;', '.', ',', 1, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(138, 'TJS', '972', 'Tajikistani Somoni', 'ЅМ', NULL, 'Diram', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(139, 'TMT', '934', 'Turkmenistani Manat', 'T', NULL, 'Tenge', 100, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(140, 'TND', '788', 'Tunisian Dinar', 'د.ت', NULL, 'Millime', 1000, 0, '', '.', ',', 10, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(141, 'TOP', '776', 'Tongan Paʻanga', 'T$', NULL, 'Seniti', 100, 1, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(142, 'TRY', '949', 'Turkish Lira', '₺', NULL, 'kuruş', 100, 1, '&#8378;', ',', '.', 1, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(143, 'TTD', '780', 'Trinidad and Tobago Dollar', '$', 'TT$', 'Cent', 100, 0, '$', '.', ',', 1, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(144, 'TWD', '901', 'New Taiwan Dollar', '$', 'NT$', 'Cent', 100, 1, '$', '.', ',', 50, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(145, 'TZS', '834', 'Tanzanian Shilling', 'Sh', NULL, 'Cent', 100, 1, '', '.', ',', 5000, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(146, 'UAH', '980', 'Ukrainian Hryvnia', '₴', NULL, 'Kopiyka', 100, 0, '&#x20B4;', '.', ',', 1, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(147, 'UGX', '800', 'Ugandan Shilling', 'USh', NULL, 'Cent', 1, 0, '', '.', ',', 1000, 100, 0, '2021-06-26 00:02:22', '2021-06-26 00:02:22'),
(148, 'USD', '840', 'United States Dollar', '$', 'US$', 'Cent', 100, 1, '$', '.', ',', 1, 1, 0, '2021-06-26 00:02:23', '2023-03-09 14:36:39'),
(149, 'UYU', '858', 'Uruguayan Peso', '$', NULL, 'Centésimo', 100, 1, '&#x20B1;', ',', '.', 100, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(150, 'UZS', '860', 'Uzbekistan Som', '', NULL, 'Tiyin', 100, 0, '', '.', ',', 100, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(151, 'VEF', '937', 'Venezuelan Bolívar', 'Bs', NULL, 'Céntimo', 100, 1, '', ',', '.', 1, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(152, 'VND', '704', 'Vietnamese Đồng', '₫', NULL, 'Hào', 1, 1, '&#x20AB;', ',', '.', 100, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(153, 'VUV', '548', 'Vanuatu Vatu', 'Vt', NULL, NULL, 1, 1, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(154, 'WST', '882', 'Samoan Tala', 'T', 'WS$', 'Sene', 100, 0, '', '.', ',', 10, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(155, 'XAF', '950', 'Central African Cfa Franc', 'Fr', 'FCFA', 'Centime', 1, 0, '', '.', ',', 100, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(156, 'XAG', '961', 'Silver (Troy Ounce)', 'oz t', 'XAG', 'oz', 1, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(157, 'XAU', '959', 'Gold (Troy Ounce)', 'oz t', 'XAU', 'oz', 1, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(158, 'XBA', '955', 'European Composite Unit', '', 'XBA', '', 1, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(159, 'XBB', '956', 'European Monetary Unit', '', 'XBB', '', 1, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(160, 'XBC', '957', 'European Unit of Account 9', '', 'XBC', '', 1, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(161, 'XBD', '958', 'European Unit of Account 17', '', 'XBD', '', 1, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(162, 'XCD', '951', 'East Caribbean Dollar', '$', 'EX$', 'Cent', 100, 1, '$', '.', ',', 1, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(163, 'XDR', '960', 'Special Drawing Rights', 'SDR', NULL, '', 1, 0, '$', '.', ',', 1, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(164, 'XOF', '952', 'West African Cfa Franc', 'Fr', 'CFA', 'Centime', 1, 0, '', '.', ',', 100, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(165, 'XPD', '964', 'Palladium', 'oz t', 'XPD', 'oz', 1, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(166, 'XPF', '953', 'Cfp Franc', 'Fr', NULL, 'Centime', 1, 0, '', '.', ',', 100, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(167, 'XPT', '962', 'Platinum', 'oz t', NULL, '', 1, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(168, 'xts', '963', 'Codes specifically reserved for testing purposes', '', NULL, '', 1, 0, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(169, 'YER', '886', 'Yemeni Rial', '﷼', NULL, 'Fils', 100, 0, '&#xFDFC;', '.', ',', 100, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(170, 'ZAR', '710', 'South African Rand', 'R', NULL, 'Cent', 100, 1, '&#x0052;', '.', ',', 10, 100, 0, '2021-06-26 00:02:23', '2021-06-26 00:02:23'),
(171, 'ZMK', '894', 'Zambian Kwacha', 'ZK', 'ZMK', 'Ngwee', 100, 0, '', '.', ',', 5, 100, 0, '2021-06-26 00:02:24', '2021-06-26 00:02:24'),
(172, 'ZMW', '967', 'Zambian Kwacha', 'ZK', 'ZMW', 'Ngwee', 100, 0, '', '.', ',', 5, 100, 0, '2021-06-26 00:02:24', '2021-06-26 00:02:24'),
(173, 'BTC', '', 'Bitcoin', 'B⃦', NULL, 'Satoshi', 100000000, 1, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:24', '2021-06-26 00:02:24'),
(174, 'JEP', '', 'Jersey Pound', '£', 'JEP', 'Penny', 100, 1, '&#x00A3;', '.', ',', 1, 100, 0, '2021-06-26 00:02:24', '2021-06-26 00:02:24'),
(175, 'GGP', '', 'Guernsey Pound', '£', 'GGP', 'Penny', 100, 1, '&#x00A3;', '.', ',', 1, 100, 0, '2021-06-26 00:02:24', '2021-06-26 00:02:24'),
(176, 'IMP', '', 'Isle of Man Pound', '£', 'IMP', 'Penny', 100, 1, '&#x00A3;', '.', ',', 1, 100, 0, '2021-06-26 00:02:24', '2021-06-26 00:02:24'),
(177, 'XFU', '', 'UIC Franc', '', 'XFU', '', 100, 1, '', '.', ',', 1, 100, 0, '2021-06-26 00:02:24', '2021-06-26 00:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nice_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `last_visited_at` timestamp NULL DEFAULT NULL,
  `last_visited_from` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_holder_name` text COLLATE utf8_unicode_ci,
  `card_brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `accepts_marketing` tinyint(1) DEFAULT '1',
  `verification_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_token` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `nice_name`, `email`, `password`, `dob`, `sex`, `description`, `last_visited_at`, `last_visited_from`, `stripe_id`, `card_holder_name`, `card_brand`, `card_last_four`, `active`, `accepts_marketing`, `verification_token`, `api_token`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Customer Name', 'Customer', 'customer@demo.com', '$2y$10$WykIp2fbpuMy7JqZlJzdLOtYap/XlSlABzCOCTIrchVVgZHEMEHrW', '1984-02-13', 'app.male', 'Delectus quis cupiditate vitae voluptate eum necessitatibus qui ullam. Voluptatem consequatur omnis ea atque nesciunt architecto. Beatae in sed quia numquam cum omnis minus.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '6wLxxT5vhy', NULL, '2019-11-26 00:03:41', '2019-11-26 00:03:41'),
(2, 'Stefan Gulgowski', 'Mueller', 'kling.carlotta@ruecker.com', '$2y$10$BrBKYpxtwNjbVkffz6vphOHeH05LiXerVfwgWavpt7W3Mq.MGyflG', '1993-07-14', 'app.other', 'Repudiandae sequi accusamus quos voluptatem. Et pariatur earum at nihil animi. Id eum labore nam omnis.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 'uzkD7wsQFB', NULL, '2019-08-26 00:03:44', '2019-08-26 00:03:44'),
(3, 'Viva Terry', 'O\'Reilly', 'abbott.marley@kessler.com', '$2y$10$rdvJUXL1S58l7plYaAnj0eoW/uwjClqeVesG97NiN4iCF7nuLBuuG', '1976-08-01', 'app.male', 'Natus expedita corporis eum occaecati quasi quia illum. Aut reiciendis praesentium distinctio illo laudantium.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 'yJnz1Fr9d8', NULL, '2020-02-26 00:03:44', '2020-02-26 00:03:44'),
(9, 'saurabh', 'hjk', 'testingads6890@gmail.com', '$2y$10$yDZ7.4tn9H13DUKgm0Um1OKLzZeIqMPL8wQjcLSPtffg2FSDQhr4O', NULL, NULL, 'slfjfk', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'dp0Y43G9nEJd6ThZc1udRPJevNb0lHWaw5yvEtYF', NULL, NULL, NULL, '2023-03-28 20:13:15', '2023-03-28 21:18:33');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_configs`
--

CREATE TABLE `dashboard_configs` (
  `user_id` bigint(20) NOT NULL,
  `upgrade_plan_notice` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dashboard_configs`
--

INSERT INTO `dashboard_configs` (`user_id`, `upgrade_plan_notice`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-06-26 00:03:01', '2021-06-26 00:03:01'),
(2, 1, '2021-06-26 00:03:39', '2021-06-26 00:03:39'),
(3, 1, '2021-06-26 00:03:40', '2021-06-26 00:03:40'),
(4, 1, '2021-06-26 00:03:40', '2021-06-26 00:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `disputes`
--

CREATE TABLE `disputes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `dispute_type_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `order_received` tinyint(1) NOT NULL DEFAULT '1',
  `return_goods` tinyint(1) DEFAULT NULL,
  `refund_amount` decimal(20,6) DEFAULT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `disputes`
--

INSERT INTO `disputes` (`id`, `shop_id`, `dispute_type_id`, `customer_id`, `order_id`, `product_id`, `description`, `order_received`, `return_goods`, `refund_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 1, NULL, 'Odio rerum aut non. Omnis nostrum quas tenetur vel sunt et. Molestiae vero rerum accusamus eos.', 1, 1, NULL, 2, '2021-06-26 00:05:02', '2021-03-26 00:05:02'),
(2, 1, 3, 1, 3, NULL, 'Qui vitae iusto autem molestias quasi. Corrupti natus animi pariatur nesciunt incidunt.', 1, 1, NULL, 1, '2021-02-26 00:05:02', '2021-04-26 00:05:02'),
(3, 2, 7, 1, 15, NULL, 'Vero sequi quod officiis vitae eaque. Tempora labore sed odio. Id incidunt tempora dolor eum.', 1, 0, NULL, 5, '2021-03-26 00:05:02', '2021-04-26 00:05:02'),
(4, 1, 6, 1, 14, NULL, 'Laborum eos unde non temporibus. Perspiciatis accusamus eius sit facere architecto.', 1, 1, NULL, 5, '2021-03-26 00:05:02', '2021-06-26 00:05:02'),
(5, 1, 6, 1, 3, NULL, 'Aut adipisci et ut eveniet numquam. Facere iusto aspernatur nobis in ea a harum expedita.', 1, 1, NULL, 3, '2021-03-26 00:05:02', '2021-03-26 00:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `dispute_types`
--

CREATE TABLE `dispute_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dispute_types`
--

INSERT INTO `dispute_types` (`id`, `detail`) VALUES
(2, 'Counterfeit goods'),
(9, 'Customs problem'),
(4, 'Damaged goods'),
(1, 'Did not receive goods'),
(7, 'Problems with the accessories'),
(6, 'Product not as described'),
(5, 'Quality not good'),
(3, 'Quantity shortage'),
(10, 'Shipping address not correct'),
(8, 'Shipping method');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci,
  `type` enum('HTML','Text') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'HTML',
  `position` enum('Content','Header','Footer') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Content',
  `template_for` enum('Platform','Merchant') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Platform',
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `shop_id`, `name`, `sender_name`, `sender_email`, `subject`, `body`, `type`, `position`, `template_for`, `files`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Welcome Merchant', NULL, 'support@domain.com', 'Welcome to {platform_name}', '<table class=\"m_886163020439323843footer\" width=\"700\" height=\"165\" bgcolor=\"#efefef\" align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td valign=\"bottom\" style=\"color:#999;line-height:18px;font-size:11px;font-family:arial\">Site Access: <a href=\"http://d.incevio.com/http://www.incevio.com/?tracelog=rowan&amp;rowan_id1=sellerLeaveFeedbackToBuyer_en_US_2017-10-22&amp;rowan_msg_id=c063bc521feb4649a25121ff130ac482&amp;ck=in_edm_other\" style=\"color:#999;text-decoration:underline;font-size:11px;font-family:arial\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=en&amp;q=http://d.incevio.com/http://www.incevio.com/?tracelog%3Drowan%26rowan_id1%3DsellerLeaveFeedbackToBuyer_en_US_2017-10-22%26rowan_msg_id%3Dc063bc521feb4649a25121ff130ac482%26ck%3Din_edm_other&amp;source=gmail&amp;ust=1508835770795000&amp;usg=AFQjCNFswRI--_oSylG_TCSI9jMZfEgJFw\">Homepage</a> <span style=\"color:#999\">|</span> <a href=\"http://d.incevio.com/http://trade.incevio.com?tracelog=rowan&amp;rowan_id1=sellerLeaveFeedbackToBuyer_en_US_2017-10-22&amp;rowan_msg_id=c063bc521feb4649a25121ff130ac482&amp;ck=in_edm_other\" style=\"color:#999;text-decoration:underline;font-size:11px;font-family:arial\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=en&amp;q=http://d.incevio.com/http://trade.incevio.com?tracelog%3Drowan%26rowan_id1%3DsellerLeaveFeedbackToBuyer_en_US_2017-10-22%26rowan_msg_id%3Dc063bc521feb4649a25121ff130ac482%26ck%3Din_edm_other&amp;source=gmail&amp;ust=1508835770795000&amp;usg=AFQjCNHs5u0lVvXx_IxyFnkfBFEuVdacig\">My Orders</a> <span style=\"color:#999\">|</span> <a href=\"http://d.incevio.com/http://www.incevio.com/buyerprotection/index.html?tracelog=rowan&amp;rowan_id1=sellerLeaveFeedbackToBuyer_en_US_2017-10-22&amp;rowan_msg_id=c063bc521feb4649a25121ff130ac482&amp;ck=in_edm_other\" style=\"color:#999;text-decoration:underline;font-size:11px;font-family:arial\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=en&amp;q=http://d.incevio.com/http://www.incevio.com/buyerprotection/index.html?tracelog%3Drowan%26rowan_id1%3DsellerLeaveFeedbackToBuyer_en_US_2017-10-22%26rowan_msg_id%3Dc063bc521feb4649a25121ff130ac482%26ck%3Din_edm_other&amp;source=gmail&amp;ust=1508835770795000&amp;usg=AFQjCNFgBGjO2cWQlMNn3ok1sdo9FEI0PQ\">Buyer Protection</a> <span style=\"color:#999\">|</span> <a href=\"http://help.incevio.com/?tracelog=rowan&amp;rowan_id1=sellerLeaveFeedbackToBuyer_en_US_2017-10-22&amp;rowan_msg_id=c063bc521feb4649a25121ff130ac482&amp;ck=in_edm_other\" style=\"color:#999;text-decoration:underline;font-size:11px;font-family:arial\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=en&amp;q=http://help.incevio.com/?tracelog%3Drowan%26rowan_id1%3DsellerLeaveFeedbackToBuyer_en_US_2017-10-22%26rowan_msg_id%3Dc063bc521feb4649a25121ff130ac482%26ck%3Din_edm_other&amp;source=gmail&amp;ust=1508835770795000&amp;usg=AFQjCNEY6uWlpV61xJ2EWu_OnR1ImK1k8A\">Help Center</a> <span style=\"color:#999\">|</span> <a href=\"http://www.incevio.com/help/home.html#contact?tracelog=rowan&amp;rowan_id1=sellerLeaveFeedbackToBuyer_en_US_2017-10-22&amp;rowan_msg_id=c063bc521feb4649a25121ff130ac482&amp;ck=in_edm_other\" style=\"color:#999;text-decoration:underline;font-size:11px;font-family:arial\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=en&amp;q=http://www.incevio.com/help/home.html%23contact?tracelog%3Drowan%26rowan_id1%3DsellerLeaveFeedbackToBuyer_en_US_2017-10-22%26rowan_msg_id%3Dc063bc521feb4649a25121ff130ac482%26ck%3Din_edm_other&amp;source=gmail&amp;ust=1508835770795000&amp;usg=AFQjCNFrHNdxDedZiwv6L-zLA4_5jthBKw\">Contact Us</a><br><a href=\"http://us.my.incevio.com/user/company/forget_password_input_email.htm?edm_src=wto&amp;edm_type=ifm&amp;edm_cta=footer&amp;tracelog=rowan&amp;rowan_id1=sellerLeaveFeedbackToBuyer_en_US_2017-10-22&amp;rowan_msg_id=c063bc521feb4649a25121ff130ac482&amp;ck=in_edm_other\" style=\"color:#999;text-decoration:underline\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=en&amp;q=http://us.my.incevio.com/user/company/forget_password_input_email.htm?edm_src%3Dwto%26edm_type%3Difm%26edm_cta%3Dfooter%26tracelog%3Drowan%26rowan_id1%3DsellerLeaveFeedbackToBuyer_en_US_2017-10-22%26rowan_msg_id%3Dc063bc521feb4649a25121ff130ac482%26ck%3Din_edm_other&amp;source=gmail&amp;ust=1508835770795000&amp;usg=AFQjCNGl36Hq7gk2E4ZfaHgnp8lgblu0Hw\">Forgot your password?</a> <br>This email was sent to <a href=\"http://d.incevio.com/mailto:?tracelog=rowan&amp;rowan_id1=sellerLeaveFeedbackToBuyer_en_US_2017-10-22&amp;rowan_msg_id=c063bc521feb4649a25121ff130ac482&amp;ck=in_edm_other\" style=\"color:#999;text-decoration:underline\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=en&amp;q=http://d.incevio.com/mailto:?tracelog%3Drowan%26rowan_id1%3DsellerLeaveFeedbackToBuyer_en_US_2017-10-22%26rowan_msg_id%3Dc063bc521feb4649a25121ff130ac482%26ck%3Din_edm_other&amp;source=gmail&amp;ust=1508835770795000&amp;usg=AFQjCNF57ZGzDDxPVbiErICMxd6_6wJH0Q\"></a>. <br>You are receiving this email because you are a registered member of <a href=\"http://d.incevio.com/http://www.incevio.com?tracelog=rowan&amp;rowan_id1=sellerLeaveFeedbackToBuyer_en_US_2017-10-22&amp;rowan_msg_id=c063bc521feb4649a25121ff130ac482&amp;ck=in_edm_other\" style=\"color:#999;text-decoration:underline\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=en&amp;q=http://d.incevio.com/http://www.incevio.com?tracelog%3Drowan%26rowan_id1%3DsellerLeaveFeedbackToBuyer_en_US_2017-10-22%26rowan_msg_id%3Dc063bc521feb4649a25121ff130ac482%26ck%3Din_edm_other&amp;source=gmail&amp;ust=1508835770795000&amp;usg=AFQjCNEV-vw0uLnpfTBy2KjLmMrSWfquEA\">www.<span class=\"il\">incevio</span>.com</a>, powered by incevio.com. <br>Read our <a href=\"http://www.incevio.com/help/safety_security/policies_rules/others/001.html?tracelog=rowan&amp;rowan_id1=sellerLeaveFeedbackToBuyer_en_US_2017-10-22&amp;rowan_msg_id=c063bc521feb4649a25121ff130ac482&amp;ck=in_edm_other\" style=\"color:#999;text-decoration:underline\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=en&amp;q=http://www.incevio.com/help/safety_security/policies_rules/others/001.html?tracelog%3Drowan%26rowan_id1%3DsellerLeaveFeedbackToBuyer_en_US_2017-10-22%26rowan_msg_id%3Dc063bc521feb4649a25121ff130ac482%26ck%3Din_edm_other&amp;source=gmail&amp;ust=1508835770795000&amp;usg=AFQjCNHhvncoIuRqRpPKKTgyRYpiV6Z5vg\">Privacy Policy</a> and <a href=\"http://www.incevio.com/help/safety_security/policies_rules/others/002.html?tracelog=rowan&amp;rowan_id1=sellerLeaveFeedbackToBuyer_en_US_2017-10-22&amp;rowan_msg_id=c063bc521feb4649a25121ff130ac482&amp;ck=in_edm_other\" style=\"color:#999;text-decoration:underline\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=en&amp;q=http://www.incevio.com/help/safety_security/policies_rules/others/002.html?tracelog%3Drowan%26rowan_id1%3DsellerLeaveFeedbackToBuyer_en_US_2017-10-22%26rowan_msg_id%3Dc063bc521feb4649a25121ff130ac482%26ck%3Din_edm_other&amp;source=gmail&amp;ust=1508835770795000&amp;usg=AFQjCNGdCuw2_Z7MHkHP5eKVE0mPoK_ysA\">Terms of Use</a> if you have any questions. <br><span class=\"il\">incevio</span> Service Center: <a href=\"http://d.incevio.com/mailto:buyer@incevio.com?tracelog=rowan&amp;rowan_id1=sellerLeaveFeedbackToBuyer_en_US_2017-10-22&amp;rowan_msg_id=c063bc521feb4649a25121ff130ac482&amp;ck=in_edm_other\" style=\"color:#999;text-decoration:underline\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=en&amp;q=http://d.incevio.com/mailto:buyer@incevio.com?tracelog%3Drowan%26rowan_id1%3DsellerLeaveFeedbackToBuyer_en_US_2017-10-22%26rowan_msg_id%3Dc063bc521feb4649a25121ff130ac482%26ck%3Din_edm_other&amp;source=gmail&amp;ust=1508835770795000&amp;usg=AFQjCNEZo5gjjdfsNWKIaeuOQoM6rxxuNQ\">buyer@<span class=\"il\">incevio</span>.com</a> <br>incevio.com Hong Kong Limited, 26/F Tower One, Times Square1 Matheson Street Causeway Bay, Hong Kong.</td></tr><tr><td height=\"20\">&nbsp;</td></tr></tbody></table>', 'HTML', 'Footer', 'Platform', NULL, NULL, '2021-06-26 00:05:34', '2021-06-26 00:05:34'),
(2, NULL, 'Welcome Merchant', NULL, 'support@domain.com', 'Welcome to {platform_name}', 'Welcome to {platform_name}', 'HTML', 'Content', 'Platform', NULL, NULL, '2021-06-26 00:05:34', '2021-06-26 00:05:34'),
(3, NULL, 'Welcome User', NULL, 'support@domain.com', 'Welcome to {shop_name}', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n                <html xmlns=\"http://www.w3.org/1999/xhtml\">\n                <head>\n                  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n                  <meta name=\"viewport\" content=\"width=device-width\" />\n                  <title>Airmail Welcome</title>\n                </head>\n                <body bgcolor=\"#ffffff\">\n                  <div align=\"center\">\n                    <table class=\"head-wrap w320 full-width-gmail-android\" bgcolor=\"#f9f8f8\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n                      <tr>\n                        <td background=\"https://www.filepicker.io/api/file/UOesoVZTFObSHCgUDygC\" bgcolor=\"#ffffff\" width=\"100%\" height=\"8\" valign=\"top\">\n                          <!--[if gte mso 9]>\n                          <v:rect xmlns:v=\"urn:schemas-microsoft-com:vml\" fill=\"true\" stroke=\"false\" style=\"mso-width-percent:1000;height:8px;\">\n                            <v:fill type=\"tile\" src=\"https://www.filepicker.io/api/file/UOesoVZTFObSHCgUDygC\" color=\"#ffffff\" />\n                            <v:textbox inset=\"0,0,0,0\">\n                          <![endif]-->\n                          <div height=\"8\">\n                          </div>\n                          <!--[if gte mso 9]>\n                            </v:textbox>\n                          </v:rect>\n                          <![endif]-->\n                        </td>\n                      </tr>\n                      <tr class=\"header-background\">\n                        <td class=\"header container\" align=\"center\">\n                          <div class=\"content\">\n                            <span class=\"brand\">\n                              <a href=\"#\">\n                                Company Name\n                              </a>\n                            </span>\n                          </div>\n                        </td>\n                      </tr>\n                    </table>\n\n                    <table class=\"body-wrap w320\">\n                      <tr>\n                        <td></td>\n                        <td class=\"container\">\n                          <div class=\"content\">\n                            <table cellspacing=\"0\">\n                              <tr>\n                                <td>\n                                  <table class=\"soapbox\">\n                                    <tr>\n                                      <td class=\"soapbox-title\">Welcome to {platform_name}</td>\n                                    </tr>\n                                  </table>\n                                  <table class=\"status-container single\">\n                                    <tr>\n                                      <td class=\"status-padding\"></td>\n                                      <td>\n                                        <table class=\"status\" bgcolor=\"#fffeea\" cellspacing=\"0\">\n                                          <tr>\n                                            <td class=\"status-cell\">\n                                              Coupon code: <b>13448278949</b>\n                                            </td>\n                                          </tr>\n                                        </table>\n                                      </td>\n                                      <td class=\"status-padding\"></td>\n                                    </tr>\n                                  </table>\n                                  <table class=\"body\">\n                                    <tr>\n                                      <td class=\"body-padding\"></td>\n                                      <td class=\"body-padded\">\n                                        <div class=\"body-title\">Hey {{ first_name }}, thanks for signing up</div>\n                                        <table class=\"body-text\">\n                                          <tr>\n                                            <td class=\"body-text-cell\">\n                                              We\'re really excited for you to join our community! You\'re just one click away from activate your account.\n                                            </td>\n                                          </tr>\n                                        </table>\n                                        <div style=\"text-align:left;\"><!--[if mso]>\n                                          <v:roundrect xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:w=\"urn:schemas-microsoft-com:office:word\" href=\"#\" style=\"height:38px;v-text-anchor:middle;width:190px;\" arcsize=\"11%\" strokecolor=\"#407429\" fill=\"t\">\n                                            <v:fill type=\"tile\" src=\"https://www.filepicker.io/api/file/N8GiNGsmT6mK6ORk00S7\" color=\"#41CC00\" />\n                                            <w:anchorlock/>\n                                            <center style=\"color:#ffffff;font-family:sans-serif;font-size:17px;font-weight:bold;\">Come on back</center>\n                                          </v:roundrect>\n                                        <![endif]--><a href=\"#\"\n                                        style=\"background-color:#41CC00;background-image:url(https://www.filepicker.io/api/file/N8GiNGsmT6mK6ORk00S7);border:1px solid #407429;border-radius:4px;color:#ffffff;display:inline-block;font-family:sans-serif;font-size:17px;font-weight:bold;text-shadow: -1px -1px #47A54B;line-height:38px;text-align:center;text-decoration:none;width:190px;-webkit-text-size-adjust:none;mso-hide:all;\">Activate Account!</a></div>\n                                        <table class=\"body-signature-block\">\n                                          <tr>\n                                            <td class=\"body-signature-cell\">\n                                              <p>Thanks so much,</p>\n                                              <p class=\"body-signature\"><img src=\"https://www.filepicker.io/api/file/2R9HpqboTPaB4NyF35xt\" alt=\"Company Name\"></p>\n                                            </td>\n                                          </tr>\n                                        </table>\n                                      </td>\n                                      <td class=\"body-padding\"></td>\n                                    </tr>\n                                  </table>\n                                </td>\n                              </tr>\n                            </table>\n                          </div>\n                        </td>\n                        <td></td>\n                      </tr>\n                    </table>\n\n                    <table class=\"footer-wrap w320 full-width-gmail-android\" bgcolor=\"#e5e5e5\">\n                      <tr>\n                        <td class=\"container\">\n                          <div class=\"content footer-lead\">\n                            <a href=\"#\"><b>Get in touch</b></a> if you have any questions or feedback\n                          </div>\n                        </td>\n                      </tr>\n                    </table>\n                    <table class=\"footer-wrap w320 full-width-gmail-android\" bgcolor=\"#e5e5e5\">\n                      <tr>\n                        <td class=\"container\">\n                          <div class=\"content\">\n                            <a href=\"#\">Contact Us</a>&nbsp;&nbsp;|&nbsp;&nbsp;\n                            <span class=\"footer-group\">\n                              <a href=\"#\">Facebook</a>&nbsp;&nbsp;|&nbsp;&nbsp;\n                              <a href=\"#\">Twitter</a>&nbsp;&nbsp;|&nbsp;&nbsp;\n                              <a href=\"#\">Support</a>\n                            </span>\n                          </div>\n                        </td>\n                      </tr>\n                    </table>\n                  </div>\n\n                </body>\n                </html>\n                ', 'HTML', 'Content', 'Platform', NULL, NULL, '2021-06-26 00:05:34', '2021-06-26 00:05:34'),
(4, NULL, 'Welcome Customer', NULL, 'support@domain.com', 'Welcome to {platform_name}', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n  <meta name=\"viewport\" content=\"width=device-width\" />\n  <title>Airmail Welcome</title>\n</head>\n<body bgcolor=\"#ffffff\">\n  <div align=\"center\">\n    <table class=\"head-wrap w320 full-width-gmail-android\" bgcolor=\"#f9f8f8\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n      <tr>\n        <td background=\"https://www.filepicker.io/api/file/UOesoVZTFObSHCgUDygC\" bgcolor=\"#ffffff\" width=\"100%\" height=\"8\" valign=\"top\">\n          <!--[if gte mso 9]>\n          <v:rect xmlns:v=\"urn:schemas-microsoft-com:vml\" fill=\"true\" stroke=\"false\" style=\"mso-width-percent:1000;height:8px;\">\n            <v:fill type=\"tile\" src=\"https://www.filepicker.io/api/file/UOesoVZTFObSHCgUDygC\" color=\"#ffffff\" />\n            <v:textbox inset=\"0,0,0,0\">\n          <![endif]-->\n          <div height=\"8\">\n          </div>\n          <!--[if gte mso 9]>\n            </v:textbox>\n          </v:rect>\n          <![endif]-->\n        </td>\n      </tr>\n      <tr class=\"header-background\">\n        <td class=\"header container\" align=\"center\">\n          <div class=\"content\">\n            <span class=\"brand\">\n              <a href=\"#\">\n                Company Name\n              </a>\n            </span>\n          </div>\n        </td>\n      </tr>\n    </table>\n\n    <table class=\"body-wrap w320\">\n      <tr>\n        <td></td>\n        <td class=\"container\">\n          <div class=\"content\">\n            <table cellspacing=\"0\">\n              <tr>\n                <td>\n                  <table class=\"soapbox\">\n                    <tr>\n                      <td class=\"soapbox-title\">Welcome to {platform_name}</td>\n                    </tr>\n                  </table>\n                  <table class=\"status-container single\">\n                    <tr>\n                      <td class=\"status-padding\"></td>\n                      <td>\n                        <table class=\"status\" bgcolor=\"#fffeea\" cellspacing=\"0\">\n                          <tr>\n                            <td class=\"status-cell\">\n                              Coupon code: <b>13448278949</b>\n                            </td>\n                          </tr>\n                        </table>\n                      </td>\n                      <td class=\"status-padding\"></td>\n                    </tr>\n                  </table>\n                  <table class=\"body\">\n                    <tr>\n                      <td class=\"body-padding\"></td>\n                      <td class=\"body-padded\">\n                        <div class=\"body-title\">Hey {{ first_name }}, thanks for signing up</div>\n                        <table class=\"body-text\">\n                          <tr>\n                            <td class=\"body-text-cell\">\n                              We\'re really excited for you to join our community! You\'re just one click away from activate your account.\n                            </td>\n                          </tr>\n                        </table>\n                        <div style=\"text-align:left;\"><!--[if mso]>\n                          <v:roundrect xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:w=\"urn:schemas-microsoft-com:office:word\" href=\"#\" style=\"height:38px;v-text-anchor:middle;width:190px;\" arcsize=\"11%\" strokecolor=\"#407429\" fill=\"t\">\n                            <v:fill type=\"tile\" src=\"https://www.filepicker.io/api/file/N8GiNGsmT6mK6ORk00S7\" color=\"#41CC00\" />\n                            <w:anchorlock/>\n                            <center style=\"color:#ffffff;font-family:sans-serif;font-size:17px;font-weight:bold;\">Come on back</center>\n                          </v:roundrect>\n                        <![endif]--><a href=\"#\"\n                        style=\"background-color:#41CC00;background-image:url(https://www.filepicker.io/api/file/N8GiNGsmT6mK6ORk00S7);border:1px solid #407429;border-radius:4px;color:#ffffff;display:inline-block;font-family:sans-serif;font-size:17px;font-weight:bold;text-shadow: -1px -1px #47A54B;line-height:38px;text-align:center;text-decoration:none;width:190px;-webkit-text-size-adjust:none;mso-hide:all;\">Activate Account!</a></div>\n                        <table class=\"body-signature-block\">\n                          <tr>\n                            <td class=\"body-signature-cell\">\n                              <p>Thanks so much,</p>\n                              <p class=\"body-signature\"><img src=\"https://www.filepicker.io/api/file/2R9HpqboTPaB4NyF35xt\" alt=\"Company Name\"></p>\n                            </td>\n                          </tr>\n                        </table>\n                      </td>\n                      <td class=\"body-padding\"></td>\n                    </tr>\n                  </table>\n                </td>\n              </tr>\n            </table>\n          </div>\n        </td>\n        <td></td>\n      </tr>\n    </table>\n\n    <table class=\"footer-wrap w320 full-width-gmail-android\" bgcolor=\"#e5e5e5\">\n      <tr>\n        <td class=\"container\">\n          <div class=\"content footer-lead\">\n            <a href=\"#\"><b>Get in touch</b></a> if you have any questions or feedback\n          </div>\n        </td>\n      </tr>\n    </table>\n    <table class=\"footer-wrap w320 full-width-gmail-android\" bgcolor=\"#e5e5e5\">\n      <tr>\n        <td class=\"container\">\n          <div class=\"content\">\n            <a href=\"#\">Contact Us</a>&nbsp;&nbsp;|&nbsp;&nbsp;\n            <span class=\"footer-group\">\n              <a href=\"#\">Facebook</a>&nbsp;&nbsp;|&nbsp;&nbsp;\n              <a href=\"#\">Twitter</a>&nbsp;&nbsp;|&nbsp;&nbsp;\n              <a href=\"#\">Support</a>\n            </span>\n          </div>\n        </td>\n      </tr>\n    </table>\n  </div>\n\n</body>\n</html>\n', 'HTML', 'Content', 'Platform', NULL, NULL, '2021-06-26 00:05:34', '2021-06-26 00:05:34'),
(5, NULL, 'User account updated', NULL, 'support@domain.com', 'Your account settings have been updated', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n  <meta name=\"viewport\" content=\"width=device-width\" />\n  <title>Airmail Ping</title>\n</head>\n\n<body bgcolor=\"#ffffff\">\n\n  <div align=\"center\">\n    <table class=\"head-wrap w320 full-width-gmail-android\" bgcolor=\"#f9f8f8\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n      <tr>\n        <td background=\"https://www.filepicker.io/api/file/UOesoVZTFObSHCgUDygC\" bgcolor=\"#ffffff\" width=\"100%\" height=\"8\" valign=\"top\">\n          <!--[if gte mso 9]>\n          <v:rect xmlns:v=\"urn:schemas-microsoft-com:vml\" fill=\"true\" stroke=\"false\" style=\"mso-width-percent:1000;height:8px;\">\n            <v:fill type=\"tile\" src=\"https://www.filepicker.io/api/file/UOesoVZTFObSHCgUDygC\" color=\"#ffffff\" />\n            <v:textbox inset=\"0,0,0,0\">\n          <![endif]-->\n          <div height=\"8\">\n          </div>\n          <!--[if gte mso 9]>\n            </v:textbox>\n          </v:rect>\n          <![endif]-->\n        </td>\n      </tr>\n      <tr class=\"header-background\">\n        <td class=\"header container\" align=\"center\">\n          <div class=\"content\">\n            <span class=\"brand\">\n              <a href=\"#\">\n                Company Name\n              </a>\n            </span>\n          </div>\n        </td>\n      </tr>\n    </table>\n\n    <table class=\"body-wrap w320\">\n      <tr>\n        <td></td>\n        <td class=\"container\">\n          <div class=\"content\">\n            <table cellspacing=\"0\">\n              <tr>\n                <td>\n                  <table class=\"soapbox\">\n                    <tr>\n                      <td class=\"soapbox-title\">Your account settings have been updated</td>\n                    </tr>\n                  </table>\n                  <table class=\"body\">\n                    <tr>\n                      <td class=\"body-padding\"></td>\n                      <td class=\"body-padded\">\n                        <div class=\"body-title\">Hi {{ first_name }},</div>\n                        <table class=\"body-text\">\n                          <tr>\n                            <td class=\"body-text-cell\">\n                              Your account settings have been updated. If you did not update your settings, please <a href=\"#\">contact support</a>.\n                            </td>\n                          </tr>\n                        </table>\n                        <div><!--[if mso]>\n                          <v:roundrect xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:w=\"urn:schemas-microsoft-com:office:word\" href=\"#\" style=\"height:38px;v-text-anchor:middle;width:230px;\" arcsize=\"11%\" strokecolor=\"#407429\" fill=\"t\">\n                            <v:fill type=\"tile\" src=\"https://www.filepicker.io/api/file/N8GiNGsmT6mK6ORk00S7\" color=\"#41CC00\" />\n                            <w:anchorlock/>\n                            <center style=\"color:#ffffff;font-family:sans-serif;font-size:17px;font-weight:bold;\">Review Account Settings</center>\n                          </v:roundrect>\n                        <![endif]--><a href=\"#\"\n                        style=\"background-color:#41CC00;background-image:url(https://www.filepicker.io/api/file/N8GiNGsmT6mK6ORk00S7);border:1px solid #407429;border-radius:4px;color:#ffffff;display:inline-block;font-family:sans-serif;font-size:17px;font-weight:bold;text-shadow: -1px -1px #47A54B;line-height:38px;text-align:center;text-decoration:none;width:230px;-webkit-text-size-adjust:none;mso-hide:all;\">Review Account Settings</a></div>\n                        <table class=\"body-signature-block\">\n                          <tr>\n                            <td class=\"body-signature-cell\">\n                              <p>Thanks for being a customer!</p>\n                              <p class=\"body-signature\"><img src=\"https://www.filepicker.io/api/file/2R9HpqboTPaB4NyF35xt\" alt=\"Company Name\"></p>\n                            </td>\n                          </tr>\n                        </table>\n                      </td>\n                      <td class=\"body-padding\"></td>\n                    </tr>\n                  </table>\n                </td>\n              </tr>\n            </table>\n          </div>\n        </td>\n        <td></td>\n      </tr>\n    </table>\n\n    <table class=\"footer-wrap w320 full-width-gmail-android\" bgcolor=\"#e5e5e5\">\n      <tr>\n        <td></td>\n        <td class=\"container\">\n          <div class=\"content footer-lead\">\n            <a href=\"#\"><b>Get in touch</b></a> if you have any questions or feedback\n          </div>\n        </td>\n        <td></td>\n      </tr>\n    </table>\n    <table class=\"footer-wrap w320 full-width-gmail-android\" bgcolor=\"#e5e5e5\">\n      <tr>\n        <td></td>\n        <td class=\"container\">\n          <div class=\"content\">\n            <a href=\"#\">Contact Us</a>&nbsp;&nbsp;|&nbsp;&nbsp;\n            <span class=\"footer-group\">\n              <a href=\"#\">Facebook</a>&nbsp;&nbsp;|&nbsp;&nbsp;\n              <a href=\"#\">Twitter</a>&nbsp;&nbsp;|&nbsp;&nbsp;\n              <a href=\"#\">Support</a>\n            </span>\n          </div>\n        </td>\n        <td></td>\n      </tr>\n    </table>\n  </div>\n\n</body>\n</html>\n', 'HTML', 'Content', 'Platform', NULL, NULL, '2021-06-26 00:05:34', '2021-06-26 00:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `faq_topic_id` int(10) UNSIGNED DEFAULT NULL,
  `question` text COLLATE utf8_unicode_ci,
  `answer` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faq_topic_id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, 'Why should I sell on :marketplace?', 'There are many reasons to sell on :marketplace. We have our customers who can see your products to the ability to start selling fast without the need to create a new standalone website. You spend no time and money to do marekting, We do it for you!', '2021-06-26 00:03:17', '2021-06-26 00:03:17'),
(2, 1, 'Where else can I learn about how selling on :marketplace works?', 'We have videos, web docs, and blogs to help you find what you need.<ul><li>Getting Started page</li><li>Training and tutorials</li><li>Blog</li></ul>', '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(3, 1, 'Can I close my account?', 'If you want to close your account permanently, Seller Support can assist you. Keep in mind that you can use the Maintenance mode feature that will hide all your listings, or you can deactivate or remove your listings entirely but hold on to your account for future use. Before you close your account permanently, please cancel and remove your listings and resolve all transactions.', '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(4, 2, 'How do I manage my merchant account?', 'Use will get access to a full featured Merchant Dashboard to manage all aspects of selling on :marketplace, like manage your selling account, add product information, make inventory updates, manage orders, and manage users.', '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(5, 2, 'How many items i can add on my inventory?', 'It depends on which sbscription you choose. Please visit the pricing section for detail.', '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(6, 2, 'How will I know when I have a sale?', ':marketplace notifies you by email when you receive an order. You can change the notification settings in your account settings.', '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(7, 2, 'Can I offer gift-wrap and packaging services to my customers?', 'Yes. Our packaging service allows customers to choose when they check out, you can make the options available for any individual item on your listing page.', '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(8, 3, 'How much does it cost to sell on :marketplace?', ':marketplace offers different selling plans for a monthly subscription fee plus per-item selling fees, which vary by subscriptions. Please visit the pricing section for detail.', '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(9, 3, 'Is there any hidden cost?', 'No', '2021-06-26 00:03:18', '2021-06-26 00:03:18');

-- --------------------------------------------------------

--
-- Table structure for table `faq_topics`
--

CREATE TABLE `faq_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `for` enum('Merchant','Customer') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Merchant',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faq_topics`
--

INSERT INTO `faq_topics` (`id`, `name`, `for`, `created_at`, `updated_at`) VALUES
(1, 'Overview', 'Merchant', '2021-06-26 00:03:17', '2021-06-26 00:03:17'),
(2, 'Sell your items', 'Merchant', '2021-06-26 00:03:17', '2021-06-26 00:03:17'),
(3, 'Pricing', 'Merchant', '2021-06-26 00:03:17', '2021-06-26 00:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `rating` tinyint(4) DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `feedbackable_id` bigint(20) UNSIGNED NOT NULL,
  `feedbackable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `spam` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `customer_id`, `rating`, `comment`, `feedbackable_id`, `feedbackable_type`, `approved`, `spam`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'Animi et voluptates esse dolor omnis enim. Amet accusamus odit et ut magni. Dolores ducimus illum provident quo. Voluptas asperiores est adipisci eum molestias itaque maxime. Totam vel delectus sint et laboriosam sed.', 1, 'App\\Shop', 1, 0, '2021-06-12 00:05:31', '2021-06-21 00:05:31'),
(2, 1, 3, 'Voluptate sed iure sed eius sit vel commodi aut. Et similique sit est delectus. Cumque voluptatem et alias est. Cum accusamus explicabo et velit.', 1, 'App\\Shop', 1, 0, '2021-06-14 00:05:31', '2021-06-11 00:05:31'),
(3, 1, 2, 'Et aspernatur deserunt sequi blanditiis. Aliquam enim qui sint deleniti perferendis enim earum. Et sit quia voluptatibus est. Est reprehenderit asperiores quia eveniet esse quos laudantium.', 1, 'App\\Shop', 1, 0, '2021-06-12 00:05:31', '2021-06-15 00:05:31'),
(4, 1, 5, 'Maxime possimus explicabo amet ab et velit cupiditate. Eos animi et officiis totam. Et aperiam eum illo eligendi debitis commodi mollitia. Ea qui aliquid inventore maxime.', 5, 'App\\Inventory', 1, 0, '2021-06-14 00:05:31', '2021-06-26 00:05:31'),
(5, 1, 3, 'Aliquid et rerum magni est eius. Sit molestiae repellendus neque sapiente aut. Molestias et maxime cupiditate mollitia aut cupiditate.', 1, 'App\\Shop', 1, 0, '2021-06-22 00:05:31', '2021-06-15 00:05:31'),
(6, 1, 1, 'Veniam adipisci repudiandae ut impedit est. Perferendis fugiat enim qui numquam modi voluptas ad. Fuga minima nam officia unde est.', 1, 'App\\Shop', 1, 0, '2021-06-11 00:05:31', '2021-06-19 00:05:31'),
(7, 1, 4, 'Voluptates rem nisi repellat explicabo iusto unde perspiciatis. Sunt sed ea voluptas in molestiae iste nam. Sit facilis corrupti fuga deserunt facere commodi qui ex. Quae tempora hic qui sit eum atque.', 12, 'App\\Inventory', 1, 0, '2021-06-22 00:05:31', '2021-06-14 00:05:31'),
(8, 1, 1, 'Quibusdam consequatur nobis architecto ipsa voluptate. Excepturi quas alias magni. Aperiam quo est non reiciendis. Qui et veritatis vel iusto illo sequi.', 2, 'App\\Inventory', 1, 0, '2021-06-14 00:05:31', '2021-06-21 00:05:31'),
(9, 1, 5, 'Non est sit et quia impedit. Vero dolor dignissimos sint et rerum. Maxime error laboriosam reprehenderit iusto est porro et.', 1, 'App\\Shop', 1, 0, '2021-06-18 00:05:31', '2021-06-18 00:05:31'),
(10, 1, 1, 'Omnis et minus qui commodi qui voluptatibus occaecati. Libero placeat numquam quia ea. Minima quis asperiores corporis fuga ut. Dolorem voluptate et et sit aut ut.', 1, 'App\\Shop', 1, 0, '2021-06-13 00:05:31', '2021-06-22 00:05:31'),
(11, 1, 4, 'Vitae magnam blanditiis unde corrupti et. Officia vitae dolorum dolores autem incidunt ipsam. Autem nihil laudantium voluptatem quidem tenetur qui mollitia sint. Sint quia et voluptatum consequatur eos laudantium ratione aliquam.', 15, 'App\\Inventory', 1, 0, '2021-06-13 00:05:31', '2021-06-11 00:05:31'),
(12, 1, 1, 'Quidem asperiores nam error iure amet. Nesciunt labore odio et sint. Qui omnis ipsum iste consequatur magni et. Impedit a aut quis non modi eaque.', 1, 'App\\Shop', 1, 0, '2021-06-12 00:05:31', '2021-06-17 00:05:31'),
(13, 1, 2, 'Fugit recusandae dolores a voluptas nihil nihil quis. Dolorum alias distinctio ad. Voluptatem dolor architecto ad. Quae optio ipsa esse sunt molestiae nam ducimus.', 1, 'App\\Shop', 1, 0, '2021-06-24 00:05:31', '2021-06-24 00:05:31'),
(14, 1, 2, 'Quia aut facilis ea omnis assumenda rerum. Sunt sequi aperiam eveniet quia. Nisi perspiciatis architecto labore.', 4, 'App\\Inventory', 1, 0, '2021-06-24 00:05:31', '2021-06-23 00:05:31'),
(15, 1, 2, 'Unde optio et voluptatibus hic ea et et. Ducimus mollitia beatae eum nemo alias non. Ratione officia et placeat eum et. Aut aut cumque repellendus alias nobis et tempora.', 8, 'App\\Inventory', 1, 0, '2021-06-14 00:05:31', '2021-06-15 00:05:31'),
(16, 1, 3, 'Blanditiis at autem debitis sequi dolorum ut. Cumque tempore repellendus molestiae aut est beatae. Et doloremque amet quasi quasi dolores et. Repellendus rem deserunt aut.', 9, 'App\\Inventory', 1, 0, '2021-06-16 00:05:31', '2021-06-17 00:05:31'),
(17, 1, 5, 'Sit repudiandae ex perferendis magnam enim. Quaerat non doloremque maxime dolores quo id et qui.', 24, 'App\\Inventory', 1, 0, '2021-06-18 00:05:31', '2021-06-17 00:05:31'),
(18, 1, 4, 'Enim dolores et qui voluptatem omnis saepe nihil. Eos reprehenderit nemo quam. Dolor sed perspiciatis saepe soluta qui.', 1, 'App\\Inventory', 1, 0, '2021-06-12 00:05:31', '2021-06-13 00:05:31'),
(19, 1, 5, 'Nostrum saepe necessitatibus voluptas et qui. Nam ea sit voluptate possimus facere dolor in. Cupiditate voluptas enim dolores. Voluptatem qui sunt ducimus omnis quia tempore ut harum.', 17, 'App\\Inventory', 1, 0, '2021-06-26 00:05:31', '2021-06-20 00:05:31'),
(20, 1, 2, 'Iure sed incidunt provident ut amet. Voluptatum quae aperiam qui qui quod itaque. Ipsam eum quis ut necessitatibus cum.', 1, 'App\\Shop', 1, 0, '2021-06-13 00:05:31', '2021-06-25 00:05:31'),
(21, 1, 5, 'Esse totam ducimus sed quisquam. Omnis quisquam ut repellat cum nam maxime. Reprehenderit ut voluptatem vel.', 1, 'App\\Shop', 1, 0, '2021-06-12 00:05:31', '2021-06-17 00:05:31'),
(22, 1, 1, 'Eos accusamus et ut fugiat. Sunt ut omnis qui corrupti perferendis magni repellat.', 25, 'App\\Inventory', 1, 0, '2021-06-15 00:05:31', '2021-06-20 00:05:31'),
(23, 1, 4, 'Quis sed error temporibus ut. Aspernatur natus veritatis quia sunt in libero est. Et quis ut voluptas sequi. Dolores fugit dolorem et quidem sunt et. Deserunt id quia eos incidunt quidem optio est.', 1, 'App\\Shop', 1, 0, '2021-06-20 00:05:31', '2021-06-11 00:05:31'),
(24, 1, 2, 'Harum inventore ducimus provident at beatae rerum autem. Itaque iste odio ullam provident aperiam praesentium beatae. Perspiciatis rerum iure officiis enim. Mollitia corporis quaerat molestias aut.', 27, 'App\\Inventory', 1, 0, '2021-06-13 00:05:31', '2021-06-15 00:05:31'),
(25, 1, 4, 'Iure eligendi tempore consequatur libero possimus placeat occaecati. Quas harum fugiat consequuntur est. At qui quam voluptatem sed.', 17, 'App\\Inventory', 1, 0, '2021-06-23 00:05:31', '2021-06-18 00:05:31'),
(26, 1, 3, 'Et et voluptates in nihil provident ut quia. Voluptate iure voluptatem aut aut sed aut consequatur dolores. Accusantium vitae sequi voluptatibus esse. Esse eos cupiditate ut officia laudantium.', 20, 'App\\Inventory', 1, 0, '2021-06-17 00:05:31', '2021-06-18 00:05:31'),
(27, 1, 4, 'Corporis autem voluptatem ut cupiditate qui doloribus. In accusantium odio asperiores modi. Amet eveniet consequuntur alias repellendus sapiente mollitia perspiciatis aperiam. Quis vitae quo quae.', 1, 'App\\Shop', 1, 0, '2021-06-22 00:05:31', '2021-06-24 00:05:31'),
(28, 1, 1, 'A numquam tenetur labore quibusdam dolorum. Similique dolores sapiente aliquid ea labore quia molestias voluptatum.', 1, 'App\\Shop', 1, 0, '2021-06-16 00:05:31', '2021-06-17 00:05:31'),
(29, 1, 3, 'Nesciunt sit facere ipsa voluptates. Officiis necessitatibus quasi est quis corrupti consectetur consequatur. Repudiandae quasi ut eius reprehenderit debitis est. Quia minima et ratione rerum doloremque ut.', 5, 'App\\Inventory', 1, 0, '2021-06-20 00:05:31', '2021-06-19 00:05:31'),
(30, 1, 4, 'Ut dolore esse est. Distinctio consectetur sit veritatis ut. Nobis tempore ea commodi itaque adipisci.', 1, 'App\\Shop', 1, 0, '2021-06-14 00:05:31', '2021-06-26 00:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards`
--

CREATE TABLE `gift_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `serial_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` decimal(20,6) DEFAULT NULL,
  `remaining_value` decimal(20,6) DEFAULT NULL,
  `partial_use` tinyint(1) DEFAULT NULL,
  `activation_time` timestamp NULL DEFAULT NULL,
  `expiry_time` timestamp NULL DEFAULT NULL,
  `exclude_offer_items` tinyint(1) DEFAULT NULL,
  `exclude_tax_n_shipping` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gtin_types`
--

CREATE TABLE `gtin_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gtin_types`
--

INSERT INTO `gtin_types` (`id`, `name`, `description`) VALUES
(1, 'UPC', 'Universal Product Code (UPC), also called GTIN-12 and UPC-A'),
(2, 'EAN', 'European Article Number (EAN), also called GTIN-13'),
(3, 'JAN', 'Japanese Article Number (JAN), also called GTIN-13'),
(4, 'ISBN', 'International Standard Book Number (ISBN)'),
(5, 'ITF', 'ITF barcodes, also known as Interleaved 2 of 5 barcodes, encode 14 numeric digits and are generally used for the packaging level of products. Since they can deal with high printing tolerances, ITF is a good choice when barcodes need to be printed on corrugated cardboard.');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `featured` tinyint(4) DEFAULT NULL,
  `imageable_id` int(10) UNSIGNED NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `path`, `name`, `type`, `extension`, `size`, `order`, `featured`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(1, 'https://zcart.srkwebappinnovations.com/public/images/8YaJWpE6IC.png', '8YaJWpE6IC.png', 'logo', 'png', '0', 0, 0, 1, 'App\\Shop', '2021-07-09 00:03:40', '2021-07-09 00:03:40'),
(2, 'https://zcart.srkwebappinnovations.com/public/images/ZRmvoVk0sn.png', 'ZRmvoVk0sn.png', 'logo', 'png', '0', 0, 0, 2, 'App\\Shop', '2021-07-09 00:03:40', '2021-07-09 00:03:40'),
(4, 'images\\category_4.png', 'category_4.png', 'background', 'png', '0', 0, 0, 4, 'App\\CategoryGroup', '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(5, 'images\\category_2.png', 'category_2.png', 'background', 'png', '0', 0, 0, 2, 'App\\CategoryGroup', '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(6, 'images\\category_9.png', 'category_9.png', 'background', 'png', '0', 0, 0, 9, 'App\\CategoryGroup', '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(7, 'images\\category_1.png', 'category_1.png', 'background', 'png', '0', 0, 0, 1, 'App\\CategoryGroup', '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(8, 'images\\category_7.png', 'category_7.png', 'background', 'png', '0', 0, 0, 7, 'App\\CategoryGroup', '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(9, 'images\\category_3.png', 'category_3.png', 'background', 'png', '0', 0, 0, 3, 'App\\CategoryGroup', '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(10, 'images\\category_8.png', 'category_8.png', 'background', 'png', '0', 0, 0, 8, 'App\\CategoryGroup', '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(11, 'images\\category_6.png', 'category_6.png', 'background', 'png', '0', 0, 0, 6, 'App\\CategoryGroup', '2021-06-26 00:03:46', '2021-06-26 00:03:46'),
(12, 'images\\gePfRt80Ht.jpg', 'gePfRt80Ht.jpg', NULL, 'jpg', '202167', 0, 1, 8, 'App\\Product', '2021-06-26 00:04:06', '2021-06-26 00:04:06'),
(13, 'images\\AZUxAVAqct.jpg', 'AZUxAVAqct.jpg', NULL, 'jpg', '366988', 0, 1, 16, 'App\\Product', '2021-06-26 00:04:06', '2021-06-26 00:04:06'),
(14, 'images\\jg7IFzvhwZ.jpg', 'jg7IFzvhwZ.jpg', NULL, 'jpg', '430417', 0, 0, 16, 'App\\Product', '2021-06-26 00:04:06', '2021-06-26 00:04:06'),
(15, 'images\\npSMBoHjpt.jpg', 'npSMBoHjpt.jpg', NULL, 'jpg', '179703', 0, 1, 28, 'App\\Product', '2021-06-26 00:04:07', '2021-06-26 00:04:07'),
(16, 'images\\JYdNe7QgwJ.jpg', 'JYdNe7QgwJ.jpg', NULL, 'jpg', '194943', 0, 0, 28, 'App\\Product', '2021-06-26 00:04:07', '2021-06-26 00:04:07'),
(17, 'images\\gHhVXY7ODd.jpg', 'gHhVXY7ODd.jpg', NULL, 'jpg', '166868', 0, 0, 28, 'App\\Product', '2021-06-26 00:04:07', '2021-06-26 00:04:07'),
(18, 'images\\HkW7kg3NH4.jpg', 'HkW7kg3NH4.jpg', NULL, 'jpg', '202167', 0, 1, 27, 'App\\Product', '2021-06-26 00:04:07', '2021-06-26 00:04:07'),
(19, 'images\\PkSqwH6OP7.jpg', 'PkSqwH6OP7.jpg', NULL, 'jpg', '118247', 0, 0, 27, 'App\\Product', '2021-06-26 00:04:07', '2021-06-26 00:04:07'),
(20, 'images\\PyhvIe6Ymf.jpg', 'PyhvIe6Ymf.jpg', NULL, 'jpg', '219962', 0, 0, 27, 'App\\Product', '2021-06-26 00:04:07', '2021-06-26 00:04:07'),
(21, 'images\\dnpfLcfFyu.jpg', 'dnpfLcfFyu.jpg', NULL, 'jpg', '100496', 0, 1, 10, 'App\\Product', '2021-06-26 00:04:07', '2021-06-26 00:04:07'),
(22, 'images\\YMMLNUf8Jy.jpg', 'YMMLNUf8Jy.jpg', NULL, 'jpg', '32765', 0, 0, 10, 'App\\Product', '2021-06-26 00:04:07', '2021-06-26 00:04:07'),
(23, 'images\\yzD3Sg1aVf.jpg', 'yzD3Sg1aVf.jpg', NULL, 'jpg', '77067', 0, 0, 10, 'App\\Product', '2021-06-26 00:04:07', '2021-06-26 00:04:07'),
(24, 'images\\H1sUEXVP2x.jpg', 'H1sUEXVP2x.jpg', NULL, 'jpg', '61229', 0, 0, 10, 'App\\Product', '2021-06-26 00:04:07', '2021-06-26 00:04:07'),
(25, 'images\\x7rjW8SLqd.jpg', 'x7rjW8SLqd.jpg', NULL, 'jpg', '227200', 0, 1, 30, 'App\\Product', '2021-06-26 00:04:07', '2021-06-26 00:04:07'),
(26, 'images\\vXAR2oDBsg.jpeg', 'vXAR2oDBsg.jpeg', NULL, 'jpeg', '133945', 0, 0, 30, 'App\\Product', '2021-06-26 00:04:08', '2021-06-26 00:04:08'),
(27, 'images\\WjbtguE0vZ.jpg', 'WjbtguE0vZ.jpg', NULL, 'jpg', '277953', 0, 1, 25, 'App\\Product', '2021-06-26 00:04:08', '2021-06-26 00:04:08'),
(28, 'images\\Y9pbmci9dl.jpg', 'Y9pbmci9dl.jpg', NULL, 'jpg', '876612', 0, 0, 25, 'App\\Product', '2021-06-26 00:04:08', '2021-06-26 00:04:08'),
(29, 'images\\mFbIy5MQ8o.jpg', 'mFbIy5MQ8o.jpg', NULL, 'jpg', '342102', 0, 0, 25, 'App\\Product', '2021-06-26 00:04:08', '2021-06-26 00:04:08'),
(30, 'images\\MyQYCsmBYy.jpg', 'MyQYCsmBYy.jpg', NULL, 'jpg', '202167', 0, 1, 19, 'App\\Product', '2021-06-26 00:04:08', '2021-06-26 00:04:08'),
(31, 'images\\wrkwQSWGn6.jpg', 'wrkwQSWGn6.jpg', NULL, 'jpg', '109713', 0, 1, 18, 'App\\Product', '2021-06-26 00:04:08', '2021-06-26 00:04:08'),
(32, 'images\\Q0UOP53727.jpg', 'Q0UOP53727.jpg', NULL, 'jpg', '19375', 0, 0, 18, 'App\\Product', '2021-06-26 00:04:08', '2021-06-26 00:04:08'),
(33, 'images\\rkCAZxKrUA.jpg', 'rkCAZxKrUA.jpg', NULL, 'jpg', '142420', 0, 1, 9, 'App\\Product', '2021-06-26 00:04:08', '2021-06-26 00:04:08'),
(34, 'images\\jzrmzWYOWO.jpg', 'jzrmzWYOWO.jpg', NULL, 'jpg', '83815', 0, 0, 9, 'App\\Product', '2021-06-26 00:04:08', '2021-06-26 00:04:08'),
(35, 'images\\oTNwbxesBG.jpg', 'oTNwbxesBG.jpg', NULL, 'jpg', '21357', 0, 0, 9, 'App\\Product', '2021-06-26 00:04:08', '2021-06-26 00:04:08'),
(36, 'images\\ydAISEtVuh.jpg', 'ydAISEtVuh.jpg', NULL, 'jpg', '225459', 0, 1, 29, 'App\\Product', '2021-06-26 00:04:08', '2021-06-26 00:04:08'),
(37, 'images\\npVF7VHow8.jpg', 'npVF7VHow8.jpg', NULL, 'jpg', '244762', 0, 0, 29, 'App\\Product', '2021-06-26 00:04:09', '2021-06-26 00:04:09'),
(38, 'images\\ZWUToEdl1Q.jpg', 'ZWUToEdl1Q.jpg', NULL, 'jpg', '345128', 0, 0, 29, 'App\\Product', '2021-06-26 00:04:09', '2021-06-26 00:04:09'),
(39, 'images\\uS5HeHItJU.jpg', 'uS5HeHItJU.jpg', NULL, 'jpg', '202167', 0, 1, 13, 'App\\Product', '2021-06-26 00:04:09', '2021-06-26 00:04:09'),
(40, 'images\\QqMO4yX8Pw.jpg', 'QqMO4yX8Pw.jpg', NULL, 'jpg', '118247', 0, 0, 13, 'App\\Product', '2021-06-26 00:04:09', '2021-06-26 00:04:09'),
(41, 'images\\g3bVfmtKnN.jpg', 'g3bVfmtKnN.jpg', NULL, 'jpg', '219962', 0, 0, 13, 'App\\Product', '2021-06-26 00:04:09', '2021-06-26 00:04:09'),
(42, 'images\\qTfn7jWzrf.jpg', 'qTfn7jWzrf.jpg', NULL, 'jpg', '139886', 0, 1, 3, 'App\\Product', '2021-06-26 00:04:09', '2021-06-26 00:04:09'),
(43, 'images\\7SybMJfwzS.jpg', '7SybMJfwzS.jpg', NULL, 'jpg', '96212', 0, 0, 3, 'App\\Product', '2021-06-26 00:04:09', '2021-06-26 00:04:09'),
(44, 'images\\6r1iXxJ1Yb.jpg', '6r1iXxJ1Yb.jpg', NULL, 'jpg', '90308', 0, 0, 3, 'App\\Product', '2021-06-26 00:04:09', '2021-06-26 00:04:09'),
(45, 'images\\JA4cb8X4j0.jpg', 'JA4cb8X4j0.jpg', NULL, 'jpg', '154752', 0, 1, 1, 'App\\Product', '2021-06-26 00:04:09', '2021-06-26 00:04:09'),
(46, 'images\\QTjpn100Zm.jpg', 'QTjpn100Zm.jpg', NULL, 'jpg', '49365', 0, 0, 1, 'App\\Product', '2021-06-26 00:04:09', '2021-06-26 00:04:09'),
(47, 'images\\ZjY2Yn2r2M.jpg', 'ZjY2Yn2r2M.jpg', NULL, 'jpg', '12887', 0, 0, 1, 'App\\Product', '2021-06-26 00:04:09', '2021-06-26 00:04:09'),
(48, 'images\\9sdxMtnFZL.jpg', '9sdxMtnFZL.jpg', NULL, 'jpg', '105039', 0, 1, 4, 'App\\Product', '2021-06-26 00:04:09', '2021-06-26 00:04:09'),
(49, 'images\\Y7juA7Yi8g.jpg', 'Y7juA7Yi8g.jpg', NULL, 'jpg', '29912', 0, 0, 4, 'App\\Product', '2021-06-26 00:04:10', '2021-06-26 00:04:10'),
(50, 'images\\R7cQkTACTZ.jpg', 'R7cQkTACTZ.jpg', NULL, 'jpg', '109713', 0, 1, 14, 'App\\Product', '2021-06-26 00:04:10', '2021-06-26 00:04:10'),
(51, 'images\\WJlh4n5Cdj.jpg', 'WJlh4n5Cdj.jpg', NULL, 'jpg', '19375', 0, 0, 14, 'App\\Product', '2021-06-26 00:04:10', '2021-06-26 00:04:10'),
(52, 'images\\MugoaZmFtH.jpg', 'MugoaZmFtH.jpg', NULL, 'jpg', '202167', 0, 1, 12, 'App\\Product', '2021-06-26 00:04:10', '2021-06-26 00:04:10'),
(53, 'images\\ualsSDrX1J.jpg', 'ualsSDrX1J.jpg', NULL, 'jpg', '118247', 0, 0, 12, 'App\\Product', '2021-06-26 00:04:10', '2021-06-26 00:04:10'),
(54, 'images\\ZMPZ6FlcML.jpg', 'ZMPZ6FlcML.jpg', NULL, 'jpg', '219962', 0, 0, 12, 'App\\Product', '2021-06-26 00:04:10', '2021-06-26 00:04:10'),
(55, 'images\\m3dOiatn8I.jpg', 'm3dOiatn8I.jpg', NULL, 'jpg', '179703', 0, 1, 22, 'App\\Product', '2021-06-26 00:04:10', '2021-06-26 00:04:10'),
(56, 'images\\c0Nzi0BJYq.jpg', 'c0Nzi0BJYq.jpg', NULL, 'jpg', '194943', 0, 0, 22, 'App\\Product', '2021-06-26 00:04:10', '2021-06-26 00:04:10'),
(57, 'images\\Z3jinxenJ6.jpg', 'Z3jinxenJ6.jpg', NULL, 'jpg', '166868', 0, 0, 22, 'App\\Product', '2021-06-26 00:04:10', '2021-06-26 00:04:10'),
(58, 'images\\jIWY9OpnvA.jpg', 'jIWY9OpnvA.jpg', NULL, 'jpg', '105039', 0, 1, 6, 'App\\Product', '2021-06-26 00:04:10', '2021-06-26 00:04:10'),
(59, 'images\\sOARK4ae1X.jpg', 'sOARK4ae1X.jpg', NULL, 'jpg', '29912', 0, 0, 6, 'App\\Product', '2021-06-26 00:04:10', '2021-06-26 00:04:10'),
(60, 'images\\dfT6ZD2VXq.jpg', 'dfT6ZD2VXq.jpg', NULL, 'jpg', '109713', 0, 1, 11, 'App\\Product', '2021-06-26 00:04:10', '2021-06-26 00:04:10'),
(61, 'images\\2zjqB5HQB0.jpg', '2zjqB5HQB0.jpg', NULL, 'jpg', '19375', 0, 0, 11, 'App\\Product', '2021-06-26 00:04:10', '2021-06-26 00:04:10'),
(62, 'images\\nvQH0D8u8k.jpg', 'nvQH0D8u8k.jpg', NULL, 'jpg', '151281', 0, 1, 21, 'App\\Product', '2021-06-26 00:04:10', '2021-06-26 00:04:10'),
(63, 'images\\pAOUPBICWz.jpg', 'pAOUPBICWz.jpg', NULL, 'jpg', '282307', 0, 0, 21, 'App\\Product', '2021-06-26 00:04:10', '2021-06-26 00:04:10'),
(64, 'images\\rKxVJu5Cmt.jpg', 'rKxVJu5Cmt.jpg', NULL, 'jpg', '198579', 0, 0, 21, 'App\\Product', '2021-06-26 00:04:11', '2021-06-26 00:04:11'),
(65, 'images\\2jR3D3tpUR.jpg', '2jR3D3tpUR.jpg', NULL, 'jpg', '462235', 0, 0, 21, 'App\\Product', '2021-06-26 00:04:11', '2021-06-26 00:04:11'),
(66, 'images\\9yRdIPCPQL.jpg', '9yRdIPCPQL.jpg', NULL, 'jpg', '139886', 0, 1, 7, 'App\\Product', '2021-06-26 00:04:11', '2021-06-26 00:04:11'),
(67, 'images\\HoCdivk2n3.jpg', 'HoCdivk2n3.jpg', NULL, 'jpg', '96212', 0, 0, 7, 'App\\Product', '2021-06-26 00:04:11', '2021-06-26 00:04:11'),
(68, 'images\\K1QdOMxShA.jpg', 'K1QdOMxShA.jpg', NULL, 'jpg', '90308', 0, 0, 7, 'App\\Product', '2021-06-26 00:04:11', '2021-06-26 00:04:11'),
(69, 'images\\97VSJOf799.jpg', '97VSJOf799.jpg', NULL, 'jpg', '151281', 0, 1, 2, 'App\\Product', '2021-06-26 00:04:11', '2021-06-26 00:04:11'),
(70, 'images\\vTDdgmWnZb.jpg', 'vTDdgmWnZb.jpg', NULL, 'jpg', '282307', 0, 0, 2, 'App\\Product', '2021-06-26 00:04:11', '2021-06-26 00:04:11'),
(71, 'images\\5y9FINg39s.jpg', '5y9FINg39s.jpg', NULL, 'jpg', '198579', 0, 0, 2, 'App\\Product', '2021-06-26 00:04:11', '2021-06-26 00:04:11'),
(72, 'images\\qRoEEnSJUq.jpg', 'qRoEEnSJUq.jpg', NULL, 'jpg', '462235', 0, 0, 2, 'App\\Product', '2021-06-26 00:04:11', '2021-06-26 00:04:11'),
(73, 'images\\Se7genaeEO.jpg', 'Se7genaeEO.jpg', NULL, 'jpg', '498648', 0, 1, 5, 'App\\Product', '2021-06-26 00:04:11', '2021-06-26 00:04:11'),
(74, 'images\\9XLBztNW7u.jpg', '9XLBztNW7u.jpg', NULL, 'jpg', '478752', 0, 0, 5, 'App\\Product', '2021-06-26 00:04:11', '2021-06-26 00:04:11'),
(75, 'images\\qOuU0oGjmk.jpg', 'qOuU0oGjmk.jpg', NULL, 'jpg', '98927', 0, 1, 26, 'App\\Product', '2021-06-26 00:04:11', '2021-06-26 00:04:11'),
(76, 'images\\lqJctGYR1t.jpg', 'lqJctGYR1t.jpg', NULL, 'jpg', '38660', 0, 0, 26, 'App\\Product', '2021-06-26 00:04:12', '2021-06-26 00:04:12'),
(77, 'images\\L8GuVYbj6u.jpg', 'L8GuVYbj6u.jpg', NULL, 'jpg', '45808', 0, 0, 26, 'App\\Product', '2021-06-26 00:04:12', '2021-06-26 00:04:12'),
(78, 'images\\LwboB6lf9D.jpg', 'LwboB6lf9D.jpg', NULL, 'jpg', '109255', 0, 1, 20, 'App\\Product', '2021-06-26 00:04:12', '2021-06-26 00:04:12'),
(79, 'images\\dEFfneUPsv.jpg', 'dEFfneUPsv.jpg', NULL, 'jpg', '523497', 0, 0, 20, 'App\\Product', '2021-06-26 00:04:12', '2021-06-26 00:04:12'),
(80, 'images\\XQuzOBgzy3.jpg', 'XQuzOBgzy3.jpg', NULL, 'jpg', '288333', 0, 0, 20, 'App\\Product', '2021-06-26 00:04:12', '2021-06-26 00:04:12'),
(81, 'images\\Cmnj9UnjFi.jpg', 'Cmnj9UnjFi.jpg', NULL, 'jpg', '181830', 0, 0, 20, 'App\\Product', '2021-06-26 00:04:12', '2021-06-26 00:04:12'),
(82, 'images\\aOm6cXdz9Q.jpg', 'aOm6cXdz9Q.jpg', NULL, 'jpg', '432508', 0, 0, 20, 'App\\Product', '2021-06-26 00:04:12', '2021-06-26 00:04:12'),
(83, 'images\\H9rEmTkAEK.jpg', 'H9rEmTkAEK.jpg', NULL, 'jpg', '202845', 0, 0, 20, 'App\\Product', '2021-06-26 00:04:12', '2021-06-26 00:04:12'),
(84, 'images\\4KPpc6YKiV.jpg', '4KPpc6YKiV.jpg', NULL, 'jpg', '85299', 0, 1, 23, 'App\\Product', '2021-06-26 00:04:12', '2021-06-26 00:04:12'),
(85, 'images\\Z6s5jovKPT.jpg', 'Z6s5jovKPT.jpg', NULL, 'jpg', '21899', 0, 0, 23, 'App\\Product', '2021-06-26 00:04:12', '2021-06-26 00:04:12'),
(86, 'images\\s7FmxV5TT8.jpg', 's7FmxV5TT8.jpg', NULL, 'jpg', '100496', 0, 1, 17, 'App\\Product', '2021-06-26 00:04:12', '2021-06-26 00:04:12'),
(87, 'images\\YsFVeE6GM5.jpg', 'YsFVeE6GM5.jpg', NULL, 'jpg', '32765', 0, 0, 17, 'App\\Product', '2021-06-26 00:04:12', '2021-06-26 00:04:12'),
(88, 'images\\qLl2dwEjQT.jpg', 'qLl2dwEjQT.jpg', NULL, 'jpg', '77067', 0, 0, 17, 'App\\Product', '2021-06-26 00:04:12', '2021-06-26 00:04:12'),
(89, 'images\\y73NxVPMD4.jpg', 'y73NxVPMD4.jpg', NULL, 'jpg', '61229', 0, 0, 17, 'App\\Product', '2021-06-26 00:04:12', '2021-06-26 00:04:12'),
(90, 'images\\f645wkRkOQ.jpg', 'f645wkRkOQ.jpg', NULL, 'jpg', '349716', 0, 1, 24, 'App\\Product', '2021-06-26 00:04:12', '2021-06-26 00:04:12'),
(91, 'images\\bdXxpoBpY0.jpg', 'bdXxpoBpY0.jpg', NULL, 'jpg', '515075', 0, 0, 24, 'App\\Product', '2021-06-26 00:04:13', '2021-06-26 00:04:13'),
(92, 'images\\BZXc3EPOi6.jpg', 'BZXc3EPOi6.jpg', NULL, 'jpg', '135881', 0, 1, 15, 'App\\Product', '2021-06-26 00:04:13', '2021-06-26 00:04:13'),
(93, 'images\\0PNdyUF5so.jpg', '0PNdyUF5so.jpg', NULL, 'jpg', '224145', 0, 0, 15, 'App\\Product', '2021-06-26 00:04:13', '2021-06-26 00:04:13'),
(94, 'images\\omCYDWVMQs.jpg', 'omCYDWVMQs.jpg', NULL, 'jpg', '435031', 0, 0, 15, 'App\\Product', '2021-06-26 00:04:13', '2021-06-26 00:04:13'),
(95, 'images\\QLpJzJfPpF.jpg', 'QLpJzJfPpF.jpg', NULL, 'jpg', '150734', 0, NULL, 19, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(96, 'images\\ysrFan0bxb.jpg', 'ysrFan0bxb.jpg', NULL, 'jpg', '52301', 0, NULL, 19, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(97, 'images\\yhAe4RVGQx.jpg', 'yhAe4RVGQx.jpg', NULL, 'jpg', '147417', 0, NULL, 30, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(98, 'images\\7YpCt9nP4J.jpg', '7YpCt9nP4J.jpg', NULL, 'jpg', '117482', 0, NULL, 30, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(99, 'images\\B0qFZoGWdy.jpg', 'B0qFZoGWdy.jpg', NULL, 'jpg', '128884', 0, NULL, 30, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(100, 'images\\rzzVL0dBh3.jpg', 'rzzVL0dBh3.jpg', NULL, 'jpg', '119626', 0, NULL, 39, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(101, 'images\\i28BwRzpCH.jpg', 'i28BwRzpCH.jpg', NULL, 'jpg', '284150', 0, NULL, 39, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(102, 'images\\rqD9kkyB6w.jpg', 'rqD9kkyB6w.jpg', NULL, 'jpg', '366988', 0, NULL, 42, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(103, 'images\\1AAhRvCjBq.jpg', '1AAhRvCjBq.jpg', NULL, 'jpg', '430417', 0, NULL, 42, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(104, 'images\\eyjDzHBwp2.jpg', 'eyjDzHBwp2.jpg', NULL, 'jpg', '151281', 0, NULL, 11, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(105, 'images\\efRetNgY37.jpg', 'efRetNgY37.jpg', NULL, 'jpg', '282307', 0, NULL, 11, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(106, 'images\\Um4d90baPh.jpg', 'Um4d90baPh.jpg', NULL, 'jpg', '198579', 0, NULL, 11, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(107, 'images\\hErt10hT6A.jpg', 'hErt10hT6A.jpg', NULL, 'jpg', '462235', 0, NULL, 11, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(108, 'images\\BNpJu12kb9.jpg', 'BNpJu12kb9.jpg', NULL, 'jpg', '202167', 0, NULL, 35, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(109, 'images\\YUVFdPmvqq.jpg', 'YUVFdPmvqq.jpg', NULL, 'jpg', '143272', 0, NULL, 33, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(110, 'images\\EaEEyhPGJ0.jpg', 'EaEEyhPGJ0.jpg', NULL, 'jpg', '290073', 0, NULL, 33, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(111, 'images\\KNlga3rTc8.jpg', 'KNlga3rTc8.jpg', NULL, 'jpg', '339333', 0, NULL, 33, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(112, 'images\\Fk3fmW0AVu.jpg', 'Fk3fmW0AVu.jpg', NULL, 'jpg', '71204', 0, NULL, 18, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(113, 'images\\7CTJdl0CYi.jpg', '7CTJdl0CYi.jpg', NULL, 'jpg', '12787', 0, NULL, 18, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(114, 'images\\YpWVMDzwq7.jpg', 'YpWVMDzwq7.jpg', NULL, 'jpg', '19339', 0, NULL, 18, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(115, 'images\\Ktr9sJc2Qi.jpg', 'Ktr9sJc2Qi.jpg', NULL, 'jpg', '150734', 0, NULL, 36, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(116, 'images\\9yvxYEI7Tv.jpg', '9yvxYEI7Tv.jpg', NULL, 'jpg', '52301', 0, NULL, 36, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(117, 'images\\j6frMhSZTk.jpg', 'j6frMhSZTk.jpg', NULL, 'jpg', '105039', 0, NULL, 1, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(118, 'images\\Hvs2jlfmMD.jpg', 'Hvs2jlfmMD.jpg', NULL, 'jpg', '29912', 0, NULL, 1, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(119, 'images\\HX1wqHSHBL.jpg', 'HX1wqHSHBL.jpg', NULL, 'jpg', '150546', 0, NULL, 40, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(120, 'images\\CmzjPTyKix.jpg', 'CmzjPTyKix.jpg', NULL, 'jpg', '23875', 0, NULL, 40, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(121, 'images\\P7SOdOKhfX.jpg', 'P7SOdOKhfX.jpg', NULL, 'jpg', '63923', 0, NULL, 40, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(122, 'images\\XQYxh5jl4p.jpg', 'XQYxh5jl4p.jpg', NULL, 'jpg', '145810', 0, NULL, 22, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(123, 'images\\3uRJ9twEOI.jpg', '3uRJ9twEOI.jpg', NULL, 'jpg', '44668', 0, NULL, 22, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(124, 'images\\cBgrNtSdkK.jpg', 'cBgrNtSdkK.jpg', NULL, 'jpg', '40482', 0, NULL, 22, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(125, 'images\\eiEJaIRzhN.jpg', 'eiEJaIRzhN.jpg', NULL, 'jpg', '32457', 0, NULL, 22, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(126, 'images\\niH0RO7akH.jpg', 'niH0RO7akH.jpg', NULL, 'jpg', '228193', 0, NULL, 13, 'App\\Inventory', '2021-06-26 00:04:53', '2021-06-26 00:04:53'),
(127, 'images\\7L7xCgDba5.jpg', '7L7xCgDba5.jpg', NULL, 'jpg', '236010', 0, NULL, 13, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(128, 'images\\mPZOJxcmbW.jpg', 'mPZOJxcmbW.jpg', NULL, 'jpg', '367888', 0, NULL, 34, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(129, 'images\\G6uWHqopVN.jpg', 'G6uWHqopVN.jpg', NULL, 'jpg', '248919', 0, NULL, 34, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(130, 'images\\XAuJdIBrY7.jpg', 'XAuJdIBrY7.jpg', NULL, 'jpg', '511252', 0, NULL, 34, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(131, 'images\\zbce8ntPcJ.jpg', 'zbce8ntPcJ.jpg', NULL, 'jpg', '139886', 0, NULL, 8, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(132, 'images\\bprNP51F85.jpg', 'bprNP51F85.jpg', NULL, 'jpg', '96212', 0, NULL, 8, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(133, 'images\\J9W2ZsJnId.jpg', 'J9W2ZsJnId.jpg', NULL, 'jpg', '90308', 0, NULL, 8, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(134, 'images\\BrdGeGJaCK.jpg', 'BrdGeGJaCK.jpg', NULL, 'jpg', '278534', 0, NULL, 9, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(135, 'images\\MDEsRU3ujF.jpg', 'MDEsRU3ujF.jpg', NULL, 'jpg', '104910', 0, NULL, 9, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(136, 'images\\19FV68wSfS.jpg', '19FV68wSfS.jpg', NULL, 'jpg', '74096', 0, NULL, 9, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(137, 'images\\eb4btLSaBP.jpg', 'eb4btLSaBP.jpg', NULL, 'jpg', '82897', 0, NULL, 9, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(138, 'images\\RMTfzhPwh4.jpg', 'RMTfzhPwh4.jpg', NULL, 'jpg', '184246', 0, NULL, 27, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(139, 'images\\bbboHCbPs6.jpg', 'bbboHCbPs6.jpg', NULL, 'jpg', '47245', 0, NULL, 27, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(140, 'images\\6BNpJAMfnP.jpg', '6BNpJAMfnP.jpg', NULL, 'jpg', '6681', 0, NULL, 27, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(141, 'images\\5fILtUUfsI.jpg', '5fILtUUfsI.jpg', NULL, 'jpg', '332245', 0, NULL, 17, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(142, 'images\\sP4V0YNZBP.jpg', 'sP4V0YNZBP.jpg', NULL, 'jpg', '278426', 0, NULL, 17, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(143, 'images\\L5WNr2uO53.jpg', 'L5WNr2uO53.jpg', NULL, 'jpg', '71204', 0, NULL, 23, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(144, 'images\\TWVGAU5k3S.jpg', 'TWVGAU5k3S.jpg', NULL, 'jpg', '12787', 0, NULL, 23, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(145, 'images\\7IaqxkOs4S.jpg', '7IaqxkOs4S.jpg', NULL, 'jpg', '19339', 0, NULL, 23, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(146, 'images\\sxLDHzeXmC.jpg', 'sxLDHzeXmC.jpg', NULL, 'jpg', '246030', 0, NULL, 21, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(147, 'images\\Hw5GVTUyko.jpg', 'Hw5GVTUyko.jpg', NULL, 'jpg', '113320', 0, NULL, 21, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(148, 'images\\Ma3RFfuF2Q.jpg', 'Ma3RFfuF2Q.jpg', NULL, 'jpg', '354959', 0, NULL, 21, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(149, 'images\\9zpKkbvxZm.jpg', '9zpKkbvxZm.jpg', NULL, 'jpg', '367888', 0, NULL, 25, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(150, 'images\\m3pW2gf8iM.jpg', 'm3pW2gf8iM.jpg', NULL, 'jpg', '248919', 0, NULL, 25, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(151, 'images\\IjhMA1HsNf.jpg', 'IjhMA1HsNf.jpg', NULL, 'jpg', '511252', 0, NULL, 25, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(152, 'images\\9pIebodD30.jpg', '9pIebodD30.jpg', NULL, 'jpg', '119626', 0, NULL, 2, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(153, 'images\\aRLkJdvwSB.jpg', 'aRLkJdvwSB.jpg', NULL, 'jpg', '284150', 0, NULL, 2, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(154, 'images\\4OCAJ8iYv9.jpg', '4OCAJ8iYv9.jpg', NULL, 'jpg', '85299', 0, NULL, 3, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(155, 'images\\pGtITliErT.jpg', 'pGtITliErT.jpg', NULL, 'jpg', '21899', 0, NULL, 3, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(156, 'images\\GE0BnMTh5h.jpg', 'GE0BnMTh5h.jpg', NULL, 'jpg', '108709', 0, NULL, 15, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(157, 'images\\emRTAmkhxo.jpg', 'emRTAmkhxo.jpg', NULL, 'jpg', '19446', 0, NULL, 15, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(158, 'images\\5cTQv5WBGX.jpg', '5cTQv5WBGX.jpg', NULL, 'jpg', '154752', 0, NULL, 37, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(159, 'images\\hNpD57lRYe.jpg', 'hNpD57lRYe.jpg', NULL, 'jpg', '49365', 0, NULL, 37, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(160, 'images\\mlOZgMZdwl.jpg', 'mlOZgMZdwl.jpg', NULL, 'jpg', '12887', 0, NULL, 37, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(161, 'images\\lJGwrn3hfO.jpg', 'lJGwrn3hfO.jpg', NULL, 'jpg', '71204', 0, NULL, 38, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(162, 'images\\ZZisFuK5gN.jpg', 'ZZisFuK5gN.jpg', NULL, 'jpg', '12787', 0, NULL, 38, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(163, 'images\\tbY8tYuk2p.jpg', 'tbY8tYuk2p.jpg', NULL, 'jpg', '19339', 0, NULL, 38, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(164, 'images\\yeA18bY5Id.jpg', 'yeA18bY5Id.jpg', NULL, 'jpg', '315426', 0, NULL, 48, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(165, 'images\\yAvdCm0KmV.jpg', 'yAvdCm0KmV.jpg', NULL, 'jpg', '229382', 0, NULL, 48, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(166, 'images\\t8GplfnYHd.jpg', 't8GplfnYHd.jpg', NULL, 'jpg', '254367', 0, NULL, 48, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(167, 'images\\buDgC1LXzR.jpg', 'buDgC1LXzR.jpg', NULL, 'jpg', '273044', 0, NULL, 48, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(168, 'images\\sh2LyajTfy.jpg', 'sh2LyajTfy.jpg', NULL, 'jpg', '332245', 0, NULL, 5, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(169, 'images\\CQB6Io9Pls.jpg', 'CQB6Io9Pls.jpg', NULL, 'jpg', '278426', 0, NULL, 5, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(170, 'images\\qPjHEWmu3Z.jpg', 'qPjHEWmu3Z.jpg', NULL, 'jpg', '278534', 0, NULL, 7, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(171, 'images\\PzKYqPn459.jpg', 'PzKYqPn459.jpg', NULL, 'jpg', '104910', 0, NULL, 7, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(172, 'images\\9jTZJkW1fw.jpg', '9jTZJkW1fw.jpg', NULL, 'jpg', '74096', 0, NULL, 7, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(173, 'images\\Rzy4rAnZyt.jpg', 'Rzy4rAnZyt.jpg', NULL, 'jpg', '82897', 0, NULL, 7, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(174, 'images\\Moqn78Iu7a.jpg', 'Moqn78Iu7a.jpg', NULL, 'jpg', '488363', 0, NULL, 44, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(175, 'images\\DbSkMwf3jw.jpg', 'DbSkMwf3jw.jpg', NULL, 'jpg', '410379', 0, NULL, 44, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(176, 'images\\uN2Ak8mEqh.jpg', 'uN2Ak8mEqh.jpg', NULL, 'jpg', '370985', 0, NULL, 44, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(177, 'images\\fb6fi5pYeJ.jpg', 'fb6fi5pYeJ.jpg', NULL, 'jpg', '279970', 0, NULL, 44, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(178, 'images\\RDFJRqVu6K.jpg', 'RDFJRqVu6K.jpg', NULL, 'jpg', '227200', 0, NULL, 6, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(179, 'images\\7BgDuxCg5W.jpeg', '7BgDuxCg5W.jpeg', NULL, 'jpeg', '133945', 0, NULL, 6, 'App\\Inventory', '2021-06-26 00:04:54', '2021-06-26 00:04:54'),
(180, 'images\\J6abcv4JgQ.jpg', 'J6abcv4JgQ.jpg', NULL, 'jpg', '160529', 0, NULL, 26, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(181, 'images\\EszBHCxk7I.png', 'EszBHCxk7I.png', NULL, 'png', '194838', 0, NULL, 26, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(182, 'images\\Yvn4QG1LU7.png', 'Yvn4QG1LU7.png', NULL, 'png', '146865', 0, NULL, 26, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(183, 'images\\3F6nphEUuy.jpg', '3F6nphEUuy.jpg', NULL, 'jpg', '98927', 0, NULL, 14, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(184, 'images\\GPNRu27Z5z.jpg', 'GPNRu27Z5z.jpg', NULL, 'jpg', '38660', 0, NULL, 14, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(185, 'images\\ASsR6YsZOt.jpg', 'ASsR6YsZOt.jpg', NULL, 'jpg', '45808', 0, NULL, 14, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(186, 'images\\wUfOWrtWR7.jpg', 'wUfOWrtWR7.jpg', NULL, 'jpg', '105039', 0, NULL, 24, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(187, 'images\\bKJTGSOyWW.jpg', 'bKJTGSOyWW.jpg', NULL, 'jpg', '29912', 0, NULL, 24, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(188, 'images\\T4ddsNq8m9.jpg', 'T4ddsNq8m9.jpg', NULL, 'jpg', '150734', 0, NULL, 47, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(189, 'images\\tUBEnlGzpN.jpg', 'tUBEnlGzpN.jpg', NULL, 'jpg', '52301', 0, NULL, 47, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(190, 'images\\et7RZH4LKR.jpg', 'et7RZH4LKR.jpg', NULL, 'jpg', '143272', 0, NULL, 20, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(191, 'images\\pyFqWEe3t7.jpg', 'pyFqWEe3t7.jpg', NULL, 'jpg', '290073', 0, NULL, 20, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(192, 'images\\M9GztLFDe3.jpg', 'M9GztLFDe3.jpg', NULL, 'jpg', '339333', 0, NULL, 20, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(193, 'images\\LgRHRGQSt6.jpg', 'LgRHRGQSt6.jpg', NULL, 'jpg', '85299', 0, NULL, 50, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(194, 'images\\1RGEsyj5f4.jpg', '1RGEsyj5f4.jpg', NULL, 'jpg', '21899', 0, NULL, 50, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(195, 'images\\31wcPa3W7M.jpg', '31wcPa3W7M.jpg', NULL, 'jpg', '100496', 0, NULL, 12, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(196, 'images\\IYyqvkrXA8.jpg', 'IYyqvkrXA8.jpg', NULL, 'jpg', '32765', 0, NULL, 12, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(197, 'images\\M4eQHVanrj.jpg', 'M4eQHVanrj.jpg', NULL, 'jpg', '77067', 0, NULL, 12, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(198, 'images\\uWGMiihr4B.jpg', 'uWGMiihr4B.jpg', NULL, 'jpg', '61229', 0, NULL, 12, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(199, 'images\\HrQg9cRtKO.jpg', 'HrQg9cRtKO.jpg', NULL, 'jpg', '202167', 0, NULL, 32, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(200, 'images\\WVUx0GjCrH.jpg', 'WVUx0GjCrH.jpg', NULL, 'jpg', '225459', 0, NULL, 43, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(201, 'images\\27HJmdbXJ5.jpg', '27HJmdbXJ5.jpg', NULL, 'jpg', '244762', 0, NULL, 43, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(202, 'images\\YDGHEiZ8kB.jpg', 'YDGHEiZ8kB.jpg', NULL, 'jpg', '345128', 0, NULL, 43, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(203, 'images\\R4GD9Kb26c.jpg', 'R4GD9Kb26c.jpg', NULL, 'jpg', '100496', 0, NULL, 45, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(204, 'images\\aRz2iQ99CW.jpg', 'aRz2iQ99CW.jpg', NULL, 'jpg', '32765', 0, NULL, 45, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(205, 'images\\E5dAdqPa7i.jpg', 'E5dAdqPa7i.jpg', NULL, 'jpg', '77067', 0, NULL, 45, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(206, 'images\\W9DXiL72j8.jpg', 'W9DXiL72j8.jpg', NULL, 'jpg', '61229', 0, NULL, 45, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(207, 'images\\ixZdDNRG4B.jpg', 'ixZdDNRG4B.jpg', NULL, 'jpg', '221557', 0, NULL, 31, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(208, 'images\\th5pFpT7IB.jpg', 'th5pFpT7IB.jpg', NULL, 'jpg', '212310', 0, NULL, 31, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(209, 'images\\mD9i43yAcJ.jpg', 'mD9i43yAcJ.jpg', NULL, 'jpg', '166962', 0, NULL, 31, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(210, 'images\\Qs4Y9FFfl3.jpg', 'Qs4Y9FFfl3.jpg', NULL, 'jpg', '159915', 0, NULL, 31, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(211, 'images\\BYAXhofRHP.jpg', 'BYAXhofRHP.jpg', NULL, 'jpg', '214066', 0, NULL, 31, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(212, 'images\\65t0JpvnAO.jpg', '65t0JpvnAO.jpg', NULL, 'jpg', '128590', 0, NULL, 41, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(213, 'images\\3nP17VlIrP.png', '3nP17VlIrP.png', NULL, 'png', '451649', 0, NULL, 41, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(214, 'images\\nzZRRV11tj.jpeg', 'nzZRRV11tj.jpeg', NULL, 'jpeg', '37291', 0, NULL, 41, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(215, 'images\\CwDusAcwEL.jpeg', 'CwDusAcwEL.jpeg', NULL, 'jpeg', '107989', 0, NULL, 41, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(216, 'images\\rPhUjRt4ia.jpg', 'rPhUjRt4ia.jpg', NULL, 'jpg', '150546', 0, NULL, 46, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(217, 'images\\JoNtOHJ1ey.jpg', 'JoNtOHJ1ey.jpg', NULL, 'jpg', '23875', 0, NULL, 46, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(218, 'images\\NZvvAp8QEX.jpg', 'NZvvAp8QEX.jpg', NULL, 'jpg', '63923', 0, NULL, 46, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(219, 'images\\Mjfe96VUQR.jpg', 'Mjfe96VUQR.jpg', NULL, 'jpg', '185189', 0, NULL, 4, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(220, 'images\\KzdDhukDlF.jpg', 'KzdDhukDlF.jpg', NULL, 'jpg', '756937', 0, NULL, 4, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(221, 'images\\s2nWc8Wj2V.jpg', 's2nWc8Wj2V.jpg', NULL, 'jpg', '145810', 0, NULL, 16, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(222, 'images\\1Nrc8AB32T.jpg', '1Nrc8AB32T.jpg', NULL, 'jpg', '44668', 0, NULL, 16, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(223, 'images\\qRhonUZ1Pq.jpg', 'qRhonUZ1Pq.jpg', NULL, 'jpg', '40482', 0, NULL, 16, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(224, 'images\\Sn6yptbJ8d.jpg', 'Sn6yptbJ8d.jpg', NULL, 'jpg', '32457', 0, NULL, 16, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(225, 'images\\GNn9x8y1A1.jpg', 'GNn9x8y1A1.jpg', NULL, 'jpg', '366988', 0, NULL, 10, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(226, 'images\\xQADOVtLMJ.jpg', 'xQADOVtLMJ.jpg', NULL, 'jpg', '430417', 0, NULL, 10, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(227, 'images\\GFuf5uPNMA.jpg', 'GFuf5uPNMA.jpg', NULL, 'jpg', '145490', 0, NULL, 29, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(228, 'images\\2FuUuSlglz.jpg', '2FuUuSlglz.jpg', NULL, 'jpg', '463973', 0, NULL, 29, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(229, 'images\\RYUJeaqRdw.jpeg', 'RYUJeaqRdw.jpeg', NULL, 'jpeg', '51467', 0, NULL, 29, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(230, 'images\\iscOJdvGWW.jpg', 'iscOJdvGWW.jpg', NULL, 'jpg', '498648', 0, NULL, 49, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(231, 'images\\MLayqybAMG.jpg', 'MLayqybAMG.jpg', NULL, 'jpg', '478752', 0, NULL, 49, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(232, 'images\\PFMgMNhUGK.jpg', 'PFMgMNhUGK.jpg', NULL, 'jpg', '277953', 0, NULL, 28, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(233, 'images\\DoHTD7dtec.jpg', 'DoHTD7dtec.jpg', NULL, 'jpg', '876612', 0, NULL, 28, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(234, 'images\\TPigH8pE8A.jpg', 'TPigH8pE8A.jpg', NULL, 'jpg', '342102', 0, NULL, 28, 'App\\Inventory', '2021-06-26 00:04:55', '2021-06-26 00:04:55'),
(235, 'images\\blog_3.png', 'blog_3.png', 'cover', 'png', '0', 0, 1, 3, 'App\\Blog', '2021-06-26 00:05:04', '2021-06-26 00:05:04'),
(236, 'images\\blog_1.png', 'blog_1.png', 'cover', 'png', '0', 0, 1, 1, 'App\\Blog', '2021-06-26 00:05:04', '2021-06-26 00:05:04'),
(237, 'images\\blog_4.png', 'blog_4.png', 'cover', 'png', '0', 0, 1, 4, 'App\\Blog', '2021-06-26 00:05:05', '2021-06-26 00:05:05'),
(238, 'images\\blog_5.png', 'blog_5.png', 'cover', 'png', '0', 0, 1, 5, 'App\\Blog', '2021-06-26 00:05:05', '2021-06-26 00:05:05'),
(239, 'images\\blog_2.png', 'blog_2.png', 'cover', 'png', '0', 0, 1, 2, 'App\\Blog', '2021-06-26 00:05:05', '2021-06-26 00:05:05'),
(240, 'images\\R5gF2bo80W.jpg', 'R5gF2bo80W.jpg', 'feature', 'jpg', '244138', 1, 1, 1, 'App\\Slider', '2021-06-26 00:05:27', '2021-06-26 00:05:27'),
(241, 'images\\fw23iFPrYw.jpg', 'fw23iFPrYw.jpg', 'mobile', 'jpg', '141704', 1, 0, 1, 'App\\Slider', '2021-06-26 00:05:27', '2021-06-26 00:05:27'),
(242, 'images\\hLDnupVNMx.jpg', 'hLDnupVNMx.jpg', 'feature', 'jpg', '338842', 2, 1, 2, 'App\\Slider', '2021-06-26 00:05:27', '2021-06-26 00:05:27'),
(243, 'images\\tQL3NIzVbZ.jpg', 'tQL3NIzVbZ.jpg', 'mobile', 'jpg', '152569', 2, 0, 2, 'App\\Slider', '2021-06-26 00:05:27', '2021-06-26 00:05:27'),
(244, 'images\\KKVnaSFu0A.jpg', 'KKVnaSFu0A.jpg', 'feature', 'jpg', '290222', 3, 1, 3, 'App\\Slider', '2021-06-26 00:05:27', '2021-06-26 00:05:27'),
(245, 'images\\zYVPiZ8feV.jpg', 'zYVPiZ8feV.jpg', 'mobile', 'jpg', '158165', 3, 0, 3, 'App\\Slider', '2021-06-26 00:05:27', '2021-06-26 00:05:27'),
(246, 'images\\f2uqLJMaYH.jpg', 'f2uqLJMaYH.jpg', 'feature', 'jpg', '411584', 4, 1, 4, 'App\\Slider', '2021-06-26 00:05:27', '2021-06-26 00:05:27'),
(247, 'images\\o5uG1yMdYw.jpg', 'o5uG1yMdYw.jpg', 'mobile', 'jpg', '179071', 4, 0, 4, 'App\\Slider', '2021-06-26 00:05:27', '2021-06-26 00:05:27'),
(259, 'images\\dKCg5LUW4T.jpg', 'dKCg5LUW4T.jpg', 'feature', 'jpg', '0', 0, 1, 12, 'App\\Banner', '2021-06-26 00:05:30', '2021-06-26 00:05:30'),
(260, 'images\\XUYYJoycLH.jpg', 'XUYYJoycLH.jpg', 'feature', 'jpg', '0', 0, 1, 13, 'App\\Banner', '2021-06-26 00:05:30', '2021-06-26 00:05:30'),
(261, 'images\\hbphYvm28b.jpg', 'hbphYvm28b.jpg', 'feature', 'jpg', '0', 0, 1, 14, 'App\\Banner', '2021-06-26 00:05:30', '2021-06-26 00:05:30'),
(262, 'images\\HDia8RRqOq.jpg', 'HDia8RRqOq.jpg', 'feature', 'jpg', '0', 0, 1, 15, 'App\\Banner', '2021-06-26 00:05:30', '2021-06-26 00:05:30'),
(263, 'images\\WWlKjzAzVI.jpg', 'WWlKjzAzVI.jpg', 'feature', 'jpg', '0', 0, 1, 16, 'App\\Banner', '2021-06-26 00:05:30', '2021-06-26 00:05:30'),
(264, 'images\\SSCZiZGmoF.jpg', 'SSCZiZGmoF.jpg', 'feature', 'jpg', '0', 0, NULL, 5, 'App\\Manufacturer', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(265, 'images\\Mt8TK1b4Q5.jpg', 'Mt8TK1b4Q5.jpg', 'feature', 'jpg', '0', 0, NULL, 10, 'App\\Manufacturer', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(266, 'images\\t2wfofjxNM.jpg', 't2wfofjxNM.jpg', 'feature', 'jpg', '0', 0, NULL, 2, 'App\\Manufacturer', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(267, 'images\\XxaWkNjeMX.jpg', 'XxaWkNjeMX.jpg', 'feature', 'jpg', '0', 0, NULL, 1, 'App\\Category', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(268, 'images\\cj9K2Ep0RA.jpg', 'cj9K2Ep0RA.jpg', 'feature', 'jpg', '0', 0, NULL, 2, 'App\\Category', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(269, 'images\\CNfYX2yJw6.jpg', 'CNfYX2yJw6.jpg', 'feature', 'jpg', '0', 0, NULL, 3, 'App\\Category', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(270, 'images\\cTEOUG1SsY.jpg', 'cTEOUG1SsY.jpg', 'feature', 'jpg', '0', 0, NULL, 4, 'App\\Category', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(271, 'images\\7OudpHv4pv.png', '7OudpHv4pv.png', 'feature', 'png', '0', 0, NULL, 5, 'App\\Category', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(272, 'images\\fTM3fQqXgX.png', 'fTM3fQqXgX.png', 'feature', 'png', '0', 0, NULL, 7, 'App\\Category', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(273, 'images\\IZJIxdB5za.png', 'IZJIxdB5za.png', 'feature', 'png', '0', 0, NULL, 8, 'App\\Category', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(274, 'images\\UAFthQMH2v.png', 'UAFthQMH2v.png', 'feature', 'png', '0', 0, NULL, 10, 'App\\Category', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(275, 'images\\PXVthXAo3M.png', 'PXVthXAo3M.png', 'logo', 'png', '0', 0, NULL, 7, 'App\\Manufacturer', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(276, 'images\\2DGgh51T4O.png', '2DGgh51T4O.png', 'logo', 'png', '0', 0, NULL, 5, 'App\\Manufacturer', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(277, 'images\\YhJ77evafY.png', 'YhJ77evafY.png', 'logo', 'png', '0', 0, NULL, 11, 'App\\Manufacturer', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(278, 'images\\he5v7QTfxW.png', 'he5v7QTfxW.png', 'logo', 'png', '0', 0, NULL, 15, 'App\\Manufacturer', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(279, 'images\\kT3pzWvc7a.png', 'kT3pzWvc7a.png', 'logo', 'png', '0', 0, NULL, 1, 'App\\Manufacturer', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(280, 'images\\pkEJ8YEbvf.png', 'pkEJ8YEbvf.png', 'logo', 'png', '0', 0, NULL, 10, 'App\\Manufacturer', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(281, 'images\\35N97re1Sa.png', '35N97re1Sa.png', 'logo', 'png', '0', 0, NULL, 12, 'App\\Manufacturer', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(282, 'images\\kjkyIG412t.png', 'kjkyIG412t.png', 'logo', 'png', '0', 0, NULL, 6, 'App\\Manufacturer', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(283, 'images\\rOr0SHMCAl.png', 'rOr0SHMCAl.png', 'logo', 'png', '0', 0, NULL, 13, 'App\\Manufacturer', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(284, 'images\\R977JjsMj9.png', 'R977JjsMj9.png', 'logo', 'png', '0', 0, NULL, 8, 'App\\Manufacturer', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(285, 'images\\XPYLJQ3ftY.png', 'XPYLJQ3ftY.png', 'logo', 'png', '0', 0, NULL, 9, 'App\\Manufacturer', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(286, 'images\\unjyyCXo7O.png', 'unjyyCXo7O.png', 'logo', 'png', '0', 0, NULL, 2, 'App\\Manufacturer', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(287, 'images\\eIMFPtPsX0.png', 'eIMFPtPsX0.png', 'logo', 'png', '0', 0, NULL, 14, 'App\\Manufacturer', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(288, 'images\\IqeQjRwjFG.png', 'IqeQjRwjFG.png', 'logo', 'png', '0', 0, NULL, 3, 'App\\Manufacturer', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(289, 'images\\DBQeccvVVV.png', 'DBQeccvVVV.png', 'logo', 'png', '0', 0, NULL, 4, 'App\\Manufacturer', '2021-06-26 00:05:36', '2021-06-26 00:05:36'),
(290, 'images/D7kVDDjI7WBrNheAdn0zMXZvi9S878q4y30fecpp.png', 'Untitled.png', 'background', 'png', '174968', 0, NULL, 5, 'App\\CategoryGroup', '2021-12-06 04:35:47', '2021-12-06 04:35:47'),
(291, 'images/WNH6vebRYNlTK1t80LXJ9EFhjd5Vgjh8VQY7ryje.jpg', 'dashboard.jpeg', 'cover', 'jpeg', '128055', 0, NULL, 5, 'App\\CategoryGroup', '2021-12-06 04:35:47', '2021-12-06 04:35:47'),
(292, 'images/h15ilwGxZPMMJBAGkyBUwCWxNMYMWAJ2zbB4yRRK.png', 'Daily mail.png', 'background', 'png', '6938', 0, NULL, 10, 'App\\CategoryGroup', '2021-12-06 10:02:54', '2021-12-06 10:02:54'),
(293, 'images/y5pbAAESnkpKLYJ566NyOM2V8Gw67uHmlkilU4M6.jpg', 'Rathbones.jpeg', 'cover', 'jpeg', '10501', 0, NULL, 10, 'App\\CategoryGroup', '2021-12-06 10:02:54', '2021-12-06 10:02:54'),
(294, 'images/0VA8WnXcZz52wfxQMKV3Q3tX58oTVysLXnBT34w3.png', 'gov.uk.png', 'cover', 'png', '12730', 0, NULL, 1, 'App\\CategorySubGroup', '2021-12-06 10:06:14', '2021-12-06 10:06:14'),
(295, 'images/5muVxLRX1ywFez3SgzAoyvncuClvWt1TWHnQXZ5U.png', 'Daily mail.png', 'cover', 'png', '6938', 0, NULL, 39, 'App\\Category', '2021-12-06 10:11:16', '2021-12-06 10:11:16'),
(296, 'images/YzPEsJ9ds8np1wazgJy5A8ZOCjKHbSbgjWU0uoTt.png', 'Daily mail.png', 'feature', 'png', '6938', 0, NULL, 39, 'App\\Category', '2021-12-06 10:11:16', '2021-12-06 10:11:16'),
(297, 'images/AsUXVcg0a1Go2nU6X2DwZUSN1iuH39WtuwpP523Z.png', 'gov.uk.png', 'cover', 'png', '12730', 0, NULL, 41, 'App\\Category', '2021-12-06 12:30:50', '2021-12-06 12:30:50'),
(298, 'images/9feCyhMWXGEQDa4nqY6N7xOa2DmR5jkXBx5gK0UO.png', 'sqa consulting.png', 'feature', 'png', '2700', 0, NULL, 41, 'App\\Category', '2021-12-06 12:30:50', '2021-12-06 12:30:50'),
(300, 'images/f1JC92A0kPIIE8GDAslGihMiElO6sFZU7grdDWRd.png', 'contactpage.png', 'feature', 'png', '308170', 0, NULL, 1, 'App\\Banner', '2023-03-09 14:28:12', '2023-03-09 14:28:12'),
(301, 'images/pNnISZcBb35Ao9ZqmncB2bJ47EDcyD0VCIGYmmTi.png', 'home1.png', 'feature', 'png', '837814', 0, NULL, 2, 'App\\Banner', '2023-03-09 14:29:19', '2023-03-09 14:29:19'),
(302, 'images/8N80OVPn0FTortvcDcVf9DJOBzYrnN1bJSy8BdsW.png', 'home1.png', 'feature', 'png', '837814', 0, NULL, 3, 'App\\Banner', '2023-03-09 14:29:34', '2023-03-09 14:29:34'),
(303, 'images/dkWoX0nEkPCCznVNYRNaPiUtddeBIbDzuJ4aBtrN.png', 'home1.png', 'feature', 'png', '837814', 0, NULL, 4, 'App\\Banner', '2023-03-09 14:29:49', '2023-03-09 14:29:49'),
(304, 'images/AbM8iPLQKkloGPzosvjOPysa3OuYdql8k4PdEtIV.png', 'home1.png', 'feature', 'png', '837814', 0, NULL, 5, 'App\\Banner', '2023-03-09 14:30:05', '2023-03-09 14:30:05'),
(305, 'images/CZDGX6Ym0oZrPoWYesyjarAUT0y61FFGzvNEuIRq.png', 'home1.png', 'feature', 'png', '837814', 0, NULL, 6, 'App\\Banner', '2023-03-09 14:32:46', '2023-03-09 14:32:46'),
(306, 'images/NqFPW8IRgJxf9erjmVB0t6ThsaDRK91OLHtydtKD.png', 'home1.png', 'feature', 'png', '837814', 0, NULL, 7, 'App\\Banner', '2023-03-09 14:32:58', '2023-03-09 14:32:58'),
(307, 'images/5v23gmqoSEcK7Hg1BHri9Gl8Ce74uQsq1wIDGYjk.png', 'home1.png', 'feature', 'png', '837814', 0, NULL, 8, 'App\\Banner', '2023-03-09 14:33:11', '2023-03-09 14:33:11'),
(308, 'images/o5XM6dzS5TY4hZ6Ir3iXl6lyoTOKLp5rX6aa1cPK.png', 'home1.png', 'feature', 'png', '837814', 0, NULL, 9, 'App\\Banner', '2023-03-09 14:33:23', '2023-03-09 14:33:23'),
(309, 'images/evzBhuZJAtzoD67PH60K0PkhLhaANoQX8eraCXXS.png', 'home1.png', 'feature', 'png', '837814', 0, NULL, 10, 'App\\Banner', '2023-03-09 14:33:35', '2023-03-09 14:33:35'),
(310, 'images/Mkz8kbSSUanfmKOYu2HGoP1Sh4JAPafvxGQE0Rtt.png', 'home1.png', 'feature', 'png', '837814', 0, NULL, 11, 'App\\Banner', '2023-03-09 14:33:49', '2023-03-09 14:33:49');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `warehouse_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_id` int(10) UNSIGNED DEFAULT NULL,
  `sku` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `condition` enum('New','Used','Refurbished') COLLATE utf8_unicode_ci NOT NULL,
  `condition_note` text COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `key_features` text COLLATE utf8_unicode_ci,
  `stock_quantity` int(11) NOT NULL DEFAULT '0',
  `damaged_quantity` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `purchase_price` decimal(20,6) DEFAULT NULL,
  `sale_price` decimal(20,6) NOT NULL,
  `offer_price` decimal(20,6) DEFAULT NULL,
  `offer_start` timestamp NULL DEFAULT NULL,
  `offer_end` timestamp NULL DEFAULT NULL,
  `shipping_weight` decimal(20,2) DEFAULT NULL,
  `free_shipping` tinyint(1) DEFAULT NULL,
  `available_from` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `min_order_quantity` int(11) NOT NULL DEFAULT '1',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `linked_items` text COLLATE utf8_unicode_ci,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_description` longtext COLLATE utf8_unicode_ci,
  `stuff_pick` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `shop_id`, `title`, `warehouse_id`, `product_id`, `brand`, `supplier_id`, `sku`, `condition`, `condition_note`, `description`, `key_features`, `stock_quantity`, `damaged_quantity`, `user_id`, `purchase_price`, `sale_price`, `offer_price`, `offer_start`, `offer_end`, `shipping_weight`, `free_shipping`, `available_from`, `min_order_quantity`, `slug`, `linked_items`, `meta_title`, `meta_description`, `stuff_pick`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'Cum aliquam est ipsam dicta rerum aut.', NULL, 6, 'Heidenreich PLC', 2, 'fugit', 'Refurbished', 'Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a different person then.\' \'Explain all that,\' said the King, looking round the court was a large arm-chair at one corner of it: for she could.', 'Provident unde eveniet quisquam facere voluptatem debitis. Et architecto vel delectus. Non quidem assumenda aut et. Qui magnam voluptatum qui aliquam cumque. Veritatis dolor voluptatem distinctio qui sint. Et aliquid sed molestias a itaque. Modi excepturi corporis et perferendis ut. Quo est eos fuga velit quam minima esse accusamus. Ex fuga dolorum similique quia enim illum. Omnis non ut possimus nisi molestiae veniam. Perferendis maxime quasi veritatis neque nulla. Cum nostrum sed voluptatum. Optio non quae praesentium tempore velit dolor. Accusamus aperiam vero ullam ut vel ad. Voluptatem quasi recusandae non est et. Beatae ratione nihil dolorem asperiores. Enim esse facere autem at impedit. Rerum consequuntur ut fugit excepturi deleniti eius magni. Cum omnis delectus eveniet iste. Sit necessitatibus exercitationem animi qui amet vitae exercitationem. Itaque cupiditate distinctio iure quibusdam dignissimos. Est sapiente saepe ad qui tenetur blanditiis. Dolorem ducimus fuga nihil et maiores. Porro et quia quia odio delectus voluptatibus soluta. Neque sed eligendi eveniet libero tempora molestiae. Dolorem sunt et molestiae atque accusantium saepe rem doloribus. Ratione cum temporibus quod aut ut voluptatem. Suscipit ab magnam suscipit omnis sunt sit et. Quam sit sint omnis amet. Optio aut eligendi nihil et maiores commodi. Ipsam libero nisi minima enim omnis similique minus. Adipisci ducimus ut dignissimos optio.', 'a:7:{i:0;s:56:\"Explicabo nihil illo quia aliquam neque quia quos error.\";i:1;s:57:\"Sequi et rerum esse adipisci consequuntur quidem ratione.\";i:2;s:22:\"Sunt et et asperiores.\";i:3;s:38:\"Ut ipsum quo est ut et dolorem itaque.\";i:4;s:55:\"Necessitatibus dicta voluptatem hic velit nam voluptas.\";i:5;s:59:\"Voluptatum occaecati voluptatibus autem voluptas molestiae.\";i:6;s:35:\"Perspiciatis rerum velit dolorum a.\";}', 90, 0, 3, '341.624334', '501.624334', NULL, '2021-06-26 00:04:00', '2021-07-17 00:04:00', '1303.00', 1, '2021-06-23 00:04:00', 1, 'iure-esse-et-vel-sed', 'a:3:{i:0;i:10;i:1;i:11;i:2;i:28;}', 'Recusandae mollitia similique eum nobis voluptate consequuntur cumque voluptates.', 'I was a real nose; also its eyes by this time?\' she said to herself, as well as she did not like to try the thing yourself, some winter day, I will prosecute YOU.--Come, I\'ll take no denial; We must.', 0, 1, NULL, '2021-06-20 00:04:18', '2021-06-13 00:04:18'),
(2, 1, 'Qui enim sit et explicabo et maiores magnam.', NULL, 13, 'Schinner, Ledner and Dietrich', 5, 'et', 'New', 'At this moment Five, who had been to the Gryphon. \'I\'ve forgotten the little golden key, and when she had peeped into the court, she said to herself, and shouted out, \'You\'d better not do that.', 'Inventore magni facere minima ut rerum earum est. Quia praesentium totam saepe ut sed quod minima. Natus eum magni vero veniam porro omnis. Sit voluptas corporis explicabo dolorum aut fugiat aperiam. Repellendus provident dolorem amet ut reprehenderit animi. Ullam repudiandae fugit occaecati excepturi voluptas et sed. Et quo possimus illo placeat ea dolores. Fugit hic quos optio consequuntur. Qui voluptas amet consectetur dolores pariatur. Itaque laborum possimus ad deleniti sunt. Enim voluptatibus sequi tenetur ratione in. Sapiente debitis eveniet consectetur reprehenderit eum. Dignissimos aspernatur tenetur ut accusamus dolorem illum. Aut culpa eligendi sed. Debitis qui corrupti est enim quia accusamus cumque. Rerum reiciendis odit recusandae asperiores consequatur at. Exercitationem animi non iusto neque quos rem. Dolorum ipsum et odit asperiores. Libero corporis delectus suscipit qui nihil. Qui repellendus in quaerat labore quaerat corporis. Natus sequi debitis quaerat beatae minima. Rerum totam expedita unde voluptatem. Quia accusantium sit minima vitae voluptatem veniam illo. Esse quasi nihil mollitia rem assumenda voluptatibus. Id id accusamus fuga magnam suscipit veniam. Asperiores aut ut laboriosam. Et sed ut ipsa et adipisci in. Et magnam accusamus recusandae. Ea ut aut minima veritatis et inventore.', 'a:7:{i:0;s:63:\"Eligendi maiores libero neque incidunt molestias eum assumenda.\";i:1;s:19:\"Beatae et quia eos.\";i:2;s:25:\"Recusandae a id odio aut.\";i:3;s:35:\"Ab doloribus voluptas atque ut qui.\";i:4;s:47:\"Delectus iure quia delectus iste quis nisi vel.\";i:5;s:51:\"Ipsa quibusdam ut ipsum est voluptates dignissimos.\";i:6;s:41:\"Tempora sed velit quas necessitatibus ea.\";}', 64, 0, 3, '143.140955', '317.140955', '191.140955', '2021-06-26 00:04:00', '2021-07-04 00:04:00', '414.00', 0, '2021-06-23 00:04:00', 1, 'aut-officiis-non-molestiae-blanditiis', 'a:3:{i:0;i:8;i:1;i:12;i:2;i:46;}', 'Quam qui vel est et sit accusantium quia.', 'The poor little Lizard, Bill, was in March.\' As she said this, she looked down at once, in a minute or two to think to herself, \'it would be grand, certainly,\' said Alice, who felt very curious.', 1, 1, NULL, '2021-06-25 00:04:18', '2021-06-26 00:04:18'),
(3, 1, 'Quisquam voluptatibus facere in unde dolores.', NULL, 13, 'Harvey LLC', 5, 'dolorem', 'Refurbished', 'King in a very hopeful tone though), \'I won\'t indeed!\' said the Hatter, and he wasn\'t one?\' Alice asked. \'We called him a fish)--and rapped loudly at the March Hare. \'Yes, please do!\' but the three.', 'Similique alias est quia vel ab. Facilis ut vel voluptate aliquam maxime sint voluptatem. Qui et nam dolores aliquid. Voluptatem facilis ratione eum ea rem est quisquam. Occaecati repellendus soluta quia et. At fuga aut amet est perspiciatis dolor. Quod aliquid in libero eos. Hic ipsa nobis eaque voluptatem qui ullam repellat. Pariatur voluptas culpa amet quod et. Ut modi doloremque voluptatem culpa perspiciatis dolorem in. Ipsam ut quibusdam asperiores rem tempora rem. Aut ab aspernatur et accusantium et. Nesciunt mollitia fugit deleniti deleniti officiis. Inventore quibusdam aspernatur corrupti nobis eos mollitia. Quis et quod odit doloremque doloremque quo non. Architecto et sequi accusamus sequi eveniet quas. Dolore hic doloribus assumenda amet dolores eius corporis. Assumenda vitae sequi eos molestiae id. Enim aut rerum enim fuga. Repudiandae ipsa nostrum exercitationem dignissimos et dignissimos aut. Cumque sed voluptatem consectetur asperiores. Aspernatur esse omnis quia aut est iusto hic. Voluptatem unde numquam ipsum rerum sequi eveniet laudantium libero. Doloremque dolores et fugiat laudantium fuga occaecati sit. Nostrum sapiente voluptatem ut omnis molestiae quidem quae. Et sed provident odit ut et error. Illo aut minus nobis explicabo unde.', 'a:7:{i:0;s:32:\"Repudiandae dicta quam ut optio.\";i:1;s:46:\"Aut aperiam maiores amet repellat adipisci ex.\";i:2;s:38:\"Sint minima nisi repellendus deserunt.\";i:3;s:31:\"Quae sunt dolor qui asperiores.\";i:4;s:70:\"Ratione quo et voluptatem aliquam excepturi quibusdam inventore omnis.\";i:5;s:61:\"Voluptatem excepturi reiciendis quo natus saepe commodi modi.\";i:6;s:31:\"Tenetur non ipsum eius est eos.\";}', 43, 0, 3, '150.596000', '253.596000', NULL, '2021-06-26 00:04:00', '2021-07-02 00:04:00', '1586.00', 1, '2021-06-23 00:04:00', 1, 'iure-quia-impedit-voluptas-non-in-itaque-est-fugit', 'a:2:{i:0;i:35;i:1;i:37;}', 'Aliquid expedita vel assumenda labore aliquid est qui.', 'Hatter: \'as the things get used to it!\' pleaded poor Alice. \'But you\'re so easily offended!\' \'You\'ll get used to it!\' pleaded poor Alice began telling them her adventures from the trees upon her.', 0, 1, NULL, '2021-06-12 00:04:18', '2021-06-14 00:04:18'),
(4, 2, 'Est sint doloribus ab iusto non minus vero.', NULL, 25, 'Bergnaum PLC', 2, 'consectetur', 'Refurbished', 'Please, Ma\'am, is this New Zealand or Australia?\' (and she tried her best to climb up one of the singers in the direction it pointed to, without trying to make it stop. \'Well, I\'d hardly finished.', 'Magni commodi blanditiis pariatur deserunt. Accusamus vel ex quia alias sit. Enim et ex necessitatibus ut unde explicabo qui. Possimus quis error magni commodi facilis necessitatibus sed. Aut consequatur eum est ipsum. Optio quasi rerum nihil consectetur minima. Facere vitae distinctio sed facilis eligendi. Libero quam quisquam esse occaecati exercitationem quia. Est quis sed rem error assumenda sit autem. Modi nihil voluptate rem quia harum quos. Occaecati quia maiores et amet aliquam quo. Minima quam magni soluta officiis. Pariatur aperiam dignissimos voluptatum voluptatem ab cum qui. Eius sunt totam qui. Exercitationem repellendus doloremque impedit error. Et ut at laudantium natus velit et. Sint officia dolorum repellat perferendis. Quis ut odio odit veritatis omnis doloremque. Est praesentium et ipsa in. Ipsum enim voluptatem facere quidem ea quis dolore. Deleniti iste eveniet commodi consequatur facilis. Excepturi excepturi molestias deleniti quis ipsa consequuntur. Ut iusto illum quam voluptas sit quis. Numquam quia nam rerum. Odio alias architecto ipsa vel consequatur. Tempore illo fuga optio molestiae. Reiciendis qui vel omnis natus harum aut. Non magni qui velit vel iure autem aliquid. Consequatur suscipit vero nostrum et. Odio error sint deleniti id distinctio voluptates dolorem. Quaerat est excepturi quidem in expedita quia. Harum quae ratione at laboriosam quia ipsam laudantium. Vero voluptatem officia vel qui quia eum id.', 'a:7:{i:0;s:46:\"Est officia ullam nihil velit nam hic tenetur.\";i:1;s:50:\"Doloribus nisi laudantium beatae sint dignissimos.\";i:2;s:52:\"Doloremque et ea sunt placeat voluptatem doloremque.\";i:3;s:52:\"Et sit molestias veritatis dolorum reiciendis autem.\";i:4;s:48:\"Sint iste sed eum ad temporibus commodi ut quod.\";i:5;s:55:\"Aperiam qui odit molestiae explicabo voluptatum ab rem.\";i:6;s:57:\"Doloribus officiis voluptates adipisci non harum odit ad.\";}', 15, 0, 3, '395.036000', '508.036000', '416.036000', '2021-06-26 00:04:00', '2021-07-01 00:04:00', '546.00', 0, '2021-06-24 00:04:00', 1, 'delectus-voluptatem-accusamus-eligendi-doloremque-aperiam', 'a:2:{i:0;i:3;i:1;i:32;}', 'Veritatis repudiandae esse molestiae corporis.', 'Alice began in a moment: she looked down at once, in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen. \'It proves nothing of the Rabbit\'s little white kid gloves in one hand and.', 1, 1, NULL, '2021-06-15 00:04:18', '2021-06-14 00:04:18'),
(5, 2, 'Eum similique ea qui natus quo.', NULL, 15, 'Tromp-Osinski', 2, 'error', 'Refurbished', 'Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the most interesting, and perhaps after all it might be hungry, in which the wretched Hatter.', 'Dolor quasi dolore incidunt enim quisquam et odio. Magnam dolor sequi distinctio nihil. Officiis esse est et ea impedit commodi eveniet. At sunt nihil sint est est. Doloribus voluptas sit nihil impedit. Id autem ut voluptates fugit. Quas impedit velit adipisci voluptatem adipisci. Impedit optio ad animi ut et sed. Qui totam voluptatem magni suscipit voluptatum eveniet. Ipsum nihil facilis eaque est error ratione nihil. Laborum necessitatibus id rerum et. Iste eaque necessitatibus error saepe reprehenderit est. Facilis ratione id ipsa voluptatum dolor nesciunt. Quae et veritatis illo suscipit sed. Quo perferendis est sit fugit rerum esse quos. Aut ut et aspernatur delectus debitis molestiae ut voluptatem. Natus nihil modi aperiam eos unde. Id ut qui enim asperiores reprehenderit. Natus cum recusandae rerum impedit. Voluptatem est nam eligendi iusto. Et fugit cupiditate necessitatibus vel soluta. Nulla perferendis minima facere ipsum eius. Recusandae qui aliquid iste. Laboriosam magni est eius dolores quia quia fugit. Molestiae eos incidunt sapiente eum repellendus officiis consequuntur quasi. Aspernatur perspiciatis optio neque consequatur. Omnis assumenda illo minus iste incidunt fugiat. Excepturi voluptate consectetur omnis eos. Voluptatibus hic eius ipsam ut et maiores veritatis. Porro est delectus laboriosam id aut. Tempore molestiae quidem ad tempore debitis assumenda illo. Commodi reiciendis voluptate doloremque perferendis qui neque. Cum mollitia magnam fugit.', 'a:7:{i:0;s:54:\"Quam velit et est asperiores sed laboriosam provident.\";i:1;s:31:\"Dolores et maxime non id error.\";i:2;s:55:\"Nihil tenetur velit praesentium voluptate quam officia.\";i:3;s:48:\"Ut molestiae voluptas sapiente laudantium saepe.\";i:4;s:27:\"Alias et rerum quisquam in.\";i:5;s:38:\"Molestias ut consequuntur magnam odit.\";i:6;s:51:\"Repellendus accusantium nihil consectetur enim quo.\";}', 67, 0, 3, '284.100000', '353.100000', NULL, '2021-06-26 00:04:00', '2021-07-12 00:04:00', '1519.00', 1, '2021-06-23 00:04:00', 1, 'rerum-aliquam-error-id-accusamus-aut-perferendis-iure', 'a:2:{i:0;i:33;i:1;i:35;}', 'Consequatur quam molestiae et harum deserunt.', 'Alice, as she listened, or seemed to her great delight it fitted! Alice opened the door opened inwards, and Alice\'s first thought was that you couldn\'t cut off a little feeble, squeaking voice.', 1, 1, NULL, '2021-06-13 00:04:18', '2021-06-13 00:04:18'),
(6, 1, 'A est iure error occaecati est est qui.', NULL, 16, 'Heidenreich PLC', 3, 'rerum', 'New', 'Alice: \'besides, that\'s not a regular rule: you invented it just at first, perhaps,\' said the Footman, and began singing in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went in. The door led.', 'Eos quo voluptate voluptatem saepe aliquam nobis tempora. Laboriosam sit rerum accusamus recusandae. Corporis occaecati ipsam eveniet et. Atque porro voluptates cupiditate adipisci veritatis. Minus totam autem id rerum tempora est corporis. Nemo quisquam voluptate natus asperiores reprehenderit facilis ratione. Maxime ut perspiciatis cumque. Rerum quasi minus similique. Tempora et in dolor quisquam. Quasi laboriosam voluptatem et ea aliquam. Sapiente sint vitae voluptatem. Possimus neque quos dolore tempore perferendis dolorum voluptatibus. Hic dolore dolorum et delectus aut consequatur voluptates illum. Cupiditate velit dolore asperiores suscipit. Voluptatem rem saepe nobis nihil illo. Recusandae non voluptas labore ut perferendis cupiditate exercitationem tempore. Dolorum rerum architecto qui doloribus. Esse eum veritatis et architecto non magni et. Vero perferendis aspernatur omnis sunt. Voluptates autem nostrum facere soluta qui recusandae et. Nemo rem modi exercitationem libero qui laborum. Eius odit aperiam velit molestias consectetur consequatur. Itaque inventore ea aut repudiandae. Quo repellat eius odit. Sit praesentium aliquam quis error architecto eum. Qui dolores sunt ut rerum. Molestiae eius sunt eum sit repudiandae non maiores officiis. Doloribus veniam aut aspernatur culpa facilis voluptatum ex quaerat. Dolorum voluptas voluptatem et illum autem. Officia ut tempore non quia illum.', 'a:7:{i:0;s:56:\"Modi sequi voluptatem rerum blanditiis odio consectetur.\";i:1;s:54:\"Sequi repudiandae fugiat assumenda iusto dolorum quia.\";i:2;s:50:\"Nemo id rerum non ab facilis consequuntur dolorem.\";i:3;s:62:\"Quae fuga qui fugiat voluptatem quam accusamus voluptatem rem.\";i:4;s:26:\"Dolor in quia vitae quasi.\";i:5;s:45:\"Illum voluptate porro at architecto aut eius.\";i:6;s:28:\"Excepturi qui explicabo eum.\";}', 28, 0, 3, '249.044764', '313.044764', NULL, '2021-06-26 00:04:00', '2021-07-10 00:04:00', '1246.00', 1, '2021-06-25 00:04:00', 1, 'quis-voluptatem-eum-aut-magnam-iure', 'a:3:{i:0;i:8;i:1;i:35;i:2;i:36;}', 'Enim ut atque perspiciatis ullam consectetur.', 'And he added in an undertone, \'important--unimportant--unimportant--important--\' as if a dish or kettle had been looking over his shoulder with some curiosity. \'What a pity it wouldn\'t stay!\' sighed.', 1, 1, NULL, '2021-06-12 00:04:18', '2021-06-17 00:04:18'),
(7, 2, 'Molestiae temporibus aut ut aspernatur non ex voluptatibus dolores.', NULL, 15, 'Heidenreich PLC', 1, 'natus', 'Refurbished', 'Alice started to her ear, and whispered \'She\'s under sentence of execution.\' \'What for?\' said Alice. \'Call it what you had been to a day-school, too,\' said Alice; \'all I know I do!\' said Alice.', 'Natus recusandae nihil ut a sed totam. Similique impedit veritatis et qui. Reprehenderit dolorem veritatis optio est nam eos in. Ab unde voluptatum et tempora nam laborum aut. Ut porro fugiat sed est quis minus dolorem. Molestiae labore quis dignissimos beatae. Rerum veniam ut dolorem iusto dolores. Velit amet dicta eum odio fuga. Et ex deserunt atque porro quidem. Laboriosam laudantium assumenda sit. Quibusdam error nobis quis et rem corrupti dolorem. Qui vel vel veritatis iure. Nulla sint sequi minus nisi aut quaerat. Est ea ipsa iure qui quod reprehenderit at. Rerum amet quis omnis fugiat cumque ut. Consequatur laudantium ducimus dolores distinctio occaecati qui sed. Consequatur iure cumque eligendi corporis est accusantium. Quam architecto quisquam et et nihil delectus. Dolores molestias sed sit ut est ipsa voluptatem. Earum itaque aut velit a accusantium distinctio repellendus. Porro id id qui assumenda repellat et. Molestias optio dicta aperiam delectus veritatis delectus. Optio autem error sint aut est officia. Dolorem sed occaecati ipsa temporibus. Ea molestiae nostrum quo veritatis ipsam culpa. Deleniti natus et sit. Aut sit id cupiditate eum deserunt dolorem nihil voluptatem. Ullam magnam adipisci suscipit vero. Repellendus fugiat maxime molestiae vitae delectus. Quisquam doloribus quod vel assumenda sequi.', 'a:7:{i:0;s:42:\"Voluptas eos doloremque beatae voluptatem.\";i:1;s:29:\"Et porro aut quis voluptatem.\";i:2;s:73:\"Perferendis nihil consequuntur mollitia deserunt sunt omnis corrupti rem.\";i:3;s:45:\"Aut porro perferendis ducimus dicta eos vero.\";i:4;s:54:\"Saepe et qui debitis eaque quia voluptatibus adipisci.\";i:5;s:58:\"Omnis est voluptas cumque ut et ducimus dolorem similique.\";i:6;s:56:\"Voluptatibus aut ullam quam assumenda odit itaque neque.\";}', 21, 0, 3, '105.369716', '255.369716', '148.369716', '2021-06-26 00:04:00', '2021-07-17 00:04:00', '949.00', 0, '2021-06-24 00:04:00', 1, 'eius-vel-expedita-doloribus-sequi-voluptas-dolore-sint-nihil', 'a:3:{i:0;i:3;i:1;i:12;i:2;i:24;}', 'Eos id at autem illo cumque.', 'No room!\' they cried out when they liked, so that by the White Rabbit, who said in a ring, and begged the Mouse was bristling all over, and both footmen, Alice noticed, had powdered hair that curled.', 0, 1, NULL, '2021-06-11 00:04:18', '2021-06-12 00:04:18'),
(8, 1, 'Quos odio et est adipisci veritatis consequatur.', NULL, 9, 'Rosenbaum PLC', 1, 'vero', 'Refurbished', 'King. The next witness would be only rustling in the sea, though you mayn\'t believe it--\' \'I never saw one, or heard of such a nice soft thing to get her head to hide a smile: some of them with one.', 'Nulla et reiciendis atque et voluptatem voluptatibus temporibus voluptatem. Quo omnis distinctio hic impedit eligendi quod cum laboriosam. Esse consequatur aliquam veniam aliquam. Repudiandae facilis expedita ut molestiae quae. Quaerat illum et aut ipsam omnis reiciendis. Illum enim rerum aut eius aut labore natus. Ut sapiente libero sed. Nostrum ea incidunt possimus saepe unde consequatur consequuntur. Voluptates fugit nemo et sapiente. Exercitationem quidem autem eveniet placeat ut sed delectus. Corrupti ex sit omnis ipsa. Dolorem unde eaque porro dolor sed. Ducimus voluptatem dolorum inventore officiis aut occaecati veritatis. Accusamus animi aliquam sunt tempora. Dolore facere iure consequuntur fuga. Corrupti rem sit aliquid voluptate ut. Dolore vel est nulla ut. Aut earum praesentium alias possimus aut quidem. Dolores id labore neque nihil. Similique maiores culpa sunt ut aut reiciendis vel. Quidem esse quia velit doloremque dolorem. Optio et quaerat fuga rem iure laborum. Sint iusto quae est saepe. Non numquam ex aliquid aut et ullam sit rem. Quia quaerat minima veniam sunt. Optio eligendi voluptas non. Itaque sed est sapiente dolores occaecati architecto voluptatibus quia. Exercitationem et temporibus quidem amet. Corrupti dolor blanditiis optio blanditiis. Delectus omnis consectetur adipisci suscipit inventore quas et odit. Et harum ullam aut tempore voluptatem.', 'a:7:{i:0;s:53:\"Ipsa placeat eveniet ut repellat non quia ab dolorem.\";i:1;s:52:\"Aut consequuntur deleniti ipsam quo ab minus dolore.\";i:2;s:57:\"Rem est aut repellendus dolorem facilis consequuntur cum.\";i:3;s:61:\"Eligendi est cumque illum veritatis quos iste exercitationem.\";i:4;s:25:\"Fuga voluptates et dicta.\";i:5;s:34:\"Modi aut reprehenderit cupiditate.\";i:6;s:53:\"Facilis molestiae facilis ea deleniti rerum officiis.\";}', 92, 0, 3, '119.954409', '190.954409', NULL, '2021-06-26 00:04:00', '2021-07-05 00:04:00', '1010.00', 1, '2021-06-24 00:04:00', 1, 'mollitia-aliquam-neque-explicabo-repellendus', 'a:2:{i:0;i:33;i:1;i:35;}', 'Id et labore fuga.', 'I shall see it trying in a dreamy sort of way to change the subject,\' the March Hare will be When they take us up and to stand on your shoes and stockings for you now, dears? I\'m sure I have.', 0, 1, NULL, '2021-06-25 00:04:18', '2021-06-25 00:04:18'),
(9, 2, 'Ipsum omnis similique cum suscipit vero velit provident.', NULL, 9, 'Wilkinson Group', 1, 'non', 'Refurbished', 'Gryphon. \'Turn a somersault in the last few minutes to see how he can EVEN finish, if he thought it must make me smaller, I can go back and finish your story!\' Alice called out in a Little Bill It.', 'Dolorum delectus eos deserunt nihil dolores facere. Rerum et et consequatur placeat voluptatem molestiae accusamus. Quibusdam id sit et pariatur. Et natus minus sequi consectetur non doloribus est. Corporis cumque temporibus ipsam qui aut qui quam. Soluta voluptates ut voluptate voluptas eum corporis. Consequatur amet eum qui deserunt ex perferendis doloribus voluptate. Dolores repellendus quo blanditiis tempora qui. Eos veniam ab fugit quidem. Id velit maiores harum reiciendis ratione excepturi. In laborum ut deserunt voluptatem tenetur vitae. Fugiat dicta temporibus eum quas aspernatur. Ipsum velit voluptatem doloremque. Facilis eos deleniti adipisci laudantium occaecati. Repellat libero delectus quod dicta iusto dolorum aut. Dolorem id libero iusto dolor illo excepturi sint. Sit ipsum sunt vitae quis. Iusto qui officia voluptatum ducimus aut. Molestias a corrupti esse fugiat. Quidem dolorum recusandae blanditiis nam eum maxime iusto. Quis fugit quia maiores rem repudiandae aut totam. Eum veritatis possimus id id autem. Eveniet atque non et. Dolor qui dolores delectus molestias dolores. Voluptas provident et voluptates quae. Molestiae quos commodi nobis delectus dicta voluptas voluptatem et. Ut pariatur consequuntur quia reprehenderit consequatur quo. Ipsa voluptas vitae illum.', 'a:7:{i:0;s:54:\"Autem hic ab tenetur alias architecto dolor illum hic.\";i:1;s:51:\"Consequatur harum aut tempore incidunt dolores nam.\";i:2;s:34:\"Libero earum quaerat nobis soluta.\";i:3;s:39:\"Temporibus et placeat quod non qui eos.\";i:4;s:27:\"Ea dolores illum qui omnis.\";i:5;s:34:\"Repellat rem nisi quae autem sint.\";i:6;s:31:\"Aut maxime accusamus veritatis.\";}', 40, 0, 3, '376.745539', '485.745539', '418.745539', '2021-06-26 00:04:00', '2021-07-03 00:04:00', '1770.00', 0, '2021-06-25 00:04:00', 1, 'voluptatem-veniam-quo-eum-consectetur-quo', 'a:2:{i:0;i:1;i:1;i:38;}', 'At voluptatem aut dolor repellat ad nihil omnis necessitatibus.', 'Shakespeare, in the middle, wondering how she would have this cat removed!\' The Queen turned crimson with fury, and, after waiting till she fancied she heard a little animal (she couldn\'t guess of.', 1, 1, NULL, '2021-06-17 00:04:18', '2021-06-22 00:04:18'),
(10, 2, 'Exercitationem ea facere odio commodi debitis quisquam.', NULL, 28, 'Corwin, Bins and Herzog', 2, 'vero', 'New', 'Queen of Hearts were seated on their slates, and she told her sister, who was a general chorus of \'There goes Bill!\' then the Rabbit\'s voice along--\'Catch him, you by the prisoner to--to somebody.\'.', 'Commodi sit vero et eligendi et unde beatae. Est vitae explicabo non perferendis. Earum deleniti repellendus non molestiae quia quia qui. Doloribus molestiae eveniet quo dolorum sit ut non impedit. Quaerat magni odio maxime rerum et sit. Odit harum corporis odit magni a minima. Temporibus aspernatur sed qui earum. Voluptas eaque vero illum quis non. Ut id dignissimos ipsam excepturi. Autem mollitia est repudiandae nesciunt. Et rem quod harum debitis. Aut dolor sunt commodi magni nulla possimus. Dolores quisquam aut delectus. Qui iste quis est porro. Est expedita blanditiis est consectetur unde. Quia totam fugit tempora pariatur ipsum aut ex. Ex blanditiis eaque quaerat voluptatem. Numquam id laborum illum reprehenderit. Veniam pariatur inventore voluptate velit in omnis dignissimos. Odit pariatur commodi repellat eveniet laudantium consequatur. Nesciunt rerum aut accusantium quod. Ullam dolores dicta enim repellat. Excepturi sit reprehenderit rerum. Consequatur non perferendis velit rerum. Alias et eveniet exercitationem ratione. Nulla quod maiores est est nostrum nesciunt id est. Dolorem et quis fugiat amet vitae. Autem ex maxime aut qui ut. Repellat doloremque voluptas a minima. Harum minima aut eaque ab. Sint voluptatem temporibus non ad eos quasi dicta. Nihil sit omnis unde qui nesciunt. Aut qui natus rerum sed. Ut dolorem nostrum minus odio adipisci et. Temporibus eum praesentium sit aut aut. Libero expedita assumenda quisquam sed. Eos culpa quia labore consectetur.', 'a:7:{i:0;s:52:\"Animi perferendis aliquam ipsa vel voluptatem atque.\";i:1;s:24:\"Sit dolorem eum quo sit.\";i:2;s:36:\"Earum ut quam beatae odit ut veniam.\";i:3;s:39:\"Aut aliquam atque omnis voluptatem aut.\";i:4;s:37:\"Aperiam non quo nihil voluptas autem.\";i:5;s:47:\"Aspernatur rerum mollitia et expedita et quasi.\";i:6;s:41:\"Sint quia perferendis et beatae expedita.\";}', 64, 0, 3, '156.429800', '270.429800', NULL, '2021-06-26 00:04:00', '2021-07-04 00:04:00', '847.00', 0, '2021-06-24 00:04:00', 1, 'qui-tempore-temporibus-ut-illo-error', 'a:2:{i:0;i:24;i:1;i:43;}', 'Ut vel qui pariatur adipisci consequatur autem cupiditate.', 'M?\' said Alice. The poor little thing sobbed again (or grunted, it was very nearly in the last few minutes, and began picking them up again with a cart-horse, and expecting every moment to be.', 0, 1, NULL, '2021-06-22 00:04:18', '2021-06-26 00:04:18'),
(11, 2, 'Illo delectus et dignissimos tenetur dolorem.', NULL, 2, 'Corwin, Bins and Herzog', 4, 'porro', 'Used', 'THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear.', 'Ullam culpa qui veniam reprehenderit eum. Itaque quae perferendis ipsam neque. Atque harum aperiam accusamus recusandae qui. Ut ad fuga nesciunt et. Sit quas rem eius. Aspernatur facilis eos hic voluptatem rerum aut in. Et velit ad quos vero. Atque iure impedit nam nisi sit exercitationem. Sed et ipsam atque deserunt ratione. Necessitatibus laboriosam vero magnam distinctio alias qui dolores. Repudiandae sequi accusamus alias est. Dignissimos occaecati omnis neque enim animi laboriosam officia. Adipisci quod possimus quasi quos ea voluptatem. Maiores consequuntur qui sequi eaque officia. Nam sed ad aut quaerat nulla asperiores consequuntur doloremque. Totam veniam sed sequi reprehenderit. Quas incidunt eos voluptates saepe. Dolores repellat dolorem excepturi omnis. Voluptates sed perferendis ipsa. Est facere et eos quia et deleniti et. Dignissimos libero et quo ut nemo aut unde. Voluptatibus nostrum debitis doloremque odio. Quod et officiis omnis nostrum soluta quam pariatur reiciendis. Repellat quia consequatur architecto sit. Dolor nemo deleniti quos incidunt ipsam. Esse natus quod voluptates et libero. Aut quos odit iure doloribus. Molestiae aut nisi omnis at minus. Dolorem omnis rerum non et quod. Odio quisquam impedit sit quia nemo. Et vitae ut culpa odit. Voluptatem quasi non sit molestiae ipsum. Commodi sed mollitia voluptate tenetur.', 'a:7:{i:0;s:32:\"Ad eaque libero praesentium sed.\";i:1;s:29:\"Nisi possimus accusamus enim.\";i:2;s:49:\"Officiis est quo voluptates quaerat perspiciatis.\";i:3;s:59:\"Ea qui perferendis nulla rem molestiae consequuntur magnam.\";i:4;s:31:\"Provident ut et quas explicabo.\";i:5;s:34:\"Aut aut alias ab qui rerum soluta.\";i:6;s:38:\"Earum excepturi amet alias officia ut.\";}', 25, 0, 3, '133.503808', '309.503808', NULL, '2021-06-26 00:04:00', '2021-07-15 00:04:00', '752.00', 1, '2021-06-24 00:04:00', 1, 'enim-fuga-ea-repellat-nam-illo', 'a:3:{i:0;i:10;i:1;i:44;i:2;i:45;}', 'Explicabo aut et dolores ut.', 'The Queen had ordered. They very soon found out that it was a large ring, with the strange creatures of her own child-life, and the little golden key was lying on the bank, with her head!\' the Queen.', 0, 1, NULL, '2021-06-25 00:04:18', '2021-06-25 00:04:18'),
(12, 1, 'Cum voluptate alias sed id accusamus voluptas labore recusandae.', NULL, 22, 'Schaefer Ltd', 4, 'temporibus', 'New', 'Alice had learnt several things of this remark, and thought it over here,\' said the Mock Turtle to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a moment: she looked down at her rather.', 'Qui quo in sed sint qui ipsam. Quidem sed qui error a. Omnis sequi assumenda culpa dolorem et. Et voluptas sit odio ab. Beatae labore aut expedita soluta dolorum cum. Asperiores reiciendis excepturi veniam omnis nihil. Consequuntur omnis ea ullam. Iure perferendis cupiditate doloribus id dignissimos veniam. Qui aut iure et totam. Dolores velit sit harum ut non et illum. Molestiae autem perferendis eum et inventore repudiandae voluptas expedita. Dolorem cum dolores et et recusandae laboriosam. Et et quia quia alias temporibus nostrum. Eaque nihil in illum. Fugit soluta velit ullam asperiores aut unde id vel. Expedita sapiente ducimus voluptatum voluptatem quia incidunt. Cum fugiat iusto quia odio sunt aut non animi. Assumenda sequi qui rerum ullam enim architecto ea autem. Aliquid maiores sit doloribus corporis et. Laboriosam consequuntur in consequuntur ea odio ut et nobis. Rerum iste voluptate quia mollitia qui. Cum dolorum nostrum aliquam fugit dolorum nam. Consequatur sed qui vel dolor harum. Recusandae provident suscipit qui suscipit dignissimos. Dolorem consequatur a nostrum sint qui. Non earum quam porro voluptatem. Odit alias consectetur aperiam. Dignissimos ipsam ex excepturi sint recusandae fugiat. Odio et temporibus id itaque veniam ipsam. Dolorem exercitationem rerum aut amet accusamus ipsam porro. Explicabo consequuntur est reprehenderit voluptas perspiciatis. Architecto ea dignissimos sit ad repellat.', 'a:7:{i:0;s:39:\"Assumenda qui animi voluptate deleniti.\";i:1;s:64:\"Laboriosam voluptates sint distinctio quia et assumenda ratione.\";i:2;s:40:\"Harum possimus atque id nobis dolore ex.\";i:3;s:35:\"Error illum incidunt ut nam est et.\";i:4;s:54:\"Sunt minus et iusto quis qui molestiae esse explicabo.\";i:5;s:36:\"Sequi maxime nisi odio soluta et et.\";i:6;s:45:\"Rerum consequatur nostrum doloribus quasi in.\";}', 48, 0, 3, '358.570919', '444.570919', '359.570919', '2021-06-26 00:04:00', '2021-07-13 00:04:00', '838.00', 1, '2021-06-24 00:04:00', 1, 'est-voluptatem-ut-eaque-et-assumenda', 'a:2:{i:0;i:2;i:1;i:21;}', 'Aut adipisci ut ut omnis.', 'Duchess, \'chop off her knowledge, as there was enough of it in her head, and she jumped up on to the door, and knocked. \'There\'s no sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and.', 0, 1, NULL, '2021-06-23 00:04:18', '2021-06-23 00:04:18'),
(13, 1, 'Perferendis saepe rem quos enim nulla.', NULL, 8, 'Cummings-Dach', 4, 'est', 'Used', 'Rabbit asked. \'No, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t opened it yet,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, a good many voices all talking at.', 'Molestiae quasi eligendi maxime rerum repellendus et ipsum ut. Mollitia ad voluptas autem voluptatem. Minima nam totam quia ut. Voluptatibus ut blanditiis magni repellat architecto est. Inventore impedit aut ut ullam fugiat cumque voluptatem. Illo et qui ut doloremque. Illo dolorem quis et sit voluptates. Ipsam ducimus sed quaerat fuga sunt ea dolor. In id asperiores voluptas voluptates blanditiis. Enim quam ex ea nam et. Soluta vitae voluptatum labore et rerum vero. Omnis aut ex rerum. Cum culpa ea dolorem vel sed. Et molestiae et ab voluptates. Eos delectus autem dicta neque iure ipsam perferendis. Et sunt doloribus quis quos dolor non. Sint repellendus soluta ipsam veritatis tempore et in et. Dignissimos sequi fugit voluptatem molestiae tenetur aperiam debitis. Enim natus culpa libero sed est eos. Cum quos sunt voluptatem inventore. Dolor odit est vero dolorem eius qui earum. Voluptatem tenetur odio et consectetur. A consequuntur ut officia excepturi voluptates dolorum sunt. Ducimus aut quibusdam non voluptas. Dolorem corporis praesentium beatae aspernatur nemo ullam nulla libero. Qui et numquam voluptate. Quasi eum quasi voluptatem neque veniam. Impedit aut consequatur consequatur esse et. Voluptas placeat quo doloremque cum. Voluptas quam commodi rerum cum. Quia harum eveniet ut sint id delectus. Omnis assumenda sint omnis id. Est nesciunt temporibus consequatur et omnis dignissimos deleniti deleniti.', 'a:7:{i:0;s:52:\"Vitae velit nobis dolor ipsum dolore non recusandae.\";i:1;s:30:\"Culpa quod eos consequatur et.\";i:2;s:72:\"Consequuntur facilis saepe necessitatibus expedita ab eius rerum facere.\";i:3;s:43:\"Consequatur vel magni et similique sint ut.\";i:4;s:37:\"Et ducimus qui porro rem consequatur.\";i:5;s:67:\"Nihil illum earum autem sit vel pariatur necessitatibus asperiores.\";i:6;s:59:\"Numquam ut omnis velit perferendis recusandae ipsam minima.\";}', 53, 0, 3, '317.750000', '414.750000', NULL, '2021-06-26 00:04:00', '2021-07-03 00:04:00', '147.00', 0, '2021-06-23 00:04:00', 1, 'alias-eaque-iste-fuga-vel-dolor-saepe-beatae-dolores', 'a:3:{i:0;i:21;i:1;i:27;i:2;i:37;}', 'Ut a eos eligendi consequatur et suscipit laudantium.', 'March Hare said to Alice, flinging the baby with some curiosity. \'What a pity it wouldn\'t stay!\' sighed the Lory, who at last she spread out her hand on the look-out for serpents night and day! Why.', 1, 1, NULL, '2021-06-26 00:04:18', '2021-06-12 00:04:18'),
(14, 1, 'Minus ratione debitis temporibus neque in quibusdam.', NULL, 19, 'Harvey LLC', 5, 'esse', 'New', 'The three soldiers wandered about in the last time she saw in my life!\' She had already heard her voice sounded hoarse and strange, and the White Rabbit, \'and that\'s a fact.\' Alice did not sneeze.', 'Sint iusto natus maiores. Quo et ea repellat quae sint suscipit. Quidem consequatur hic fugit ut consequuntur magnam et. Non ut possimus impedit nihil temporibus. Dolorem nam laudantium est laudantium est et perferendis. Excepturi perspiciatis quas sed aliquam provident velit rerum. Blanditiis ducimus asperiores similique impedit. Alias est dolorem qui asperiores adipisci non. Et illum quia similique nobis. Blanditiis aliquid molestias laboriosam odit a deserunt. Asperiores qui doloremque corrupti. Error optio omnis modi omnis facere voluptates similique. Voluptatem voluptatem perspiciatis laudantium et consequatur fugiat. Provident quis sit natus. Voluptates laudantium recusandae voluptatum. Et molestias sint libero reiciendis. Itaque totam rem et reiciendis voluptatem laborum impedit. Et impedit odio repudiandae totam tenetur officia. Magni maiores maxime sed quibusdam qui doloremque. Consequatur non est voluptas neque dolore natus adipisci. Magnam dolorem dolorem delectus et labore quo autem. Id repellendus doloremque alias perspiciatis aliquid. Libero quam voluptates recusandae sapiente facere vitae eligendi. Distinctio excepturi quidem aspernatur cupiditate. Magnam dolore mollitia recusandae beatae rerum ut. Ipsum magnam nostrum asperiores et. Nihil sint qui nostrum voluptas quaerat amet ipsam accusantium. Dolores repellat veniam rerum enim.', 'a:7:{i:0;s:42:\"Magni consequatur blanditiis recusandae a.\";i:1;s:57:\"Deleniti veniam beatae quibusdam officiis fuga similique.\";i:2;s:51:\"Et est eum ipsam natus distinctio expedita qui sit.\";i:3;s:31:\"Ad at et qui voluptate ipsam a.\";i:4;s:39:\"Et eos sed in minus doloremque debitis.\";i:5;s:48:\"Impedit nihil voluptate quasi consectetur a non.\";i:6;s:24:\"Illo dolore ipsa sit ad.\";}', 23, 0, 3, '172.822000', '348.822000', NULL, '2021-06-26 00:04:00', '2021-06-29 00:04:00', '853.00', 1, '2021-06-25 00:04:00', 1, 'sequi-omnis-reprehenderit-quidem-ut-ea-qui-occaecati-commodi', 'a:3:{i:0;i:2;i:1;i:30;i:2;i:48;}', 'Commodi a illum aut dolores cumque.', 'EVEN finish, if he thought it must be removed,\' said the Gryphon. \'It\'s all about it!\' and he went on, \'if you don\'t know what to uglify is, you ARE a simpleton.\' Alice did not at all the other.', 0, 1, NULL, '2021-06-14 00:04:18', '2021-06-19 00:04:18'),
(15, 1, 'Pariatur quia dolorum laboriosam non eum fuga.', NULL, 13, 'Grimes-Wisoky', 3, 'dolorem', 'Used', 'Alice ventured to remark. \'Tut, tut, child!\' said the Hatter. He came in with the day and night! You see the earth takes twenty-four hours to turn into a tree. By the use of repeating all that.', 'Expedita et aut illo dolores. Provident enim doloremque totam aut. Dignissimos vero facere ab quasi voluptatem. Minus et fugit unde. Repellat quo quia consectetur atque. Molestiae assumenda quis quia sed qui commodi. Quisquam omnis harum sequi quae iste ut. Expedita veritatis tenetur corrupti sit maxime velit. Et sint perspiciatis libero. Ea voluptatibus facere nulla cumque quia excepturi. Quasi amet ea enim possimus blanditiis dolor. Et adipisci et eum doloremque repudiandae ut. Voluptatem similique tenetur facilis. Eos est nemo aperiam. Ea eaque velit architecto repellat. Aperiam delectus earum sapiente quia. Omnis est reprehenderit suscipit impedit est. Officia perferendis dolor voluptas praesentium. Est eaque eveniet saepe tempore voluptatem libero sequi. Est et rerum numquam enim eaque laboriosam. Quis libero commodi amet. Magni libero et suscipit neque saepe. Sed libero possimus suscipit aliquid voluptate placeat. Ut qui distinctio natus natus cupiditate illum ratione. Fugit omnis iusto quibusdam officiis. Eligendi dignissimos et minima id soluta magni corporis. Autem laborum iure iure. Ut qui et nobis eveniet iste veritatis rerum aliquid. Sed nulla consequatur earum cumque maiores animi. Velit asperiores exercitationem praesentium non dolorum. Quo ut deleniti non ad. Et velit illum eaque dolores et. Mollitia laboriosam et qui beatae. Ab dolor sed dolorem et molestiae. Cum dolore saepe autem.', 'a:7:{i:0;s:37:\"Et laudantium et et et molestiae qui.\";i:1;s:51:\"Quaerat est consequuntur tenetur dolorem nisi amet.\";i:2;s:64:\"Pariatur sunt eos temporibus consequuntur nihil qui consequatur.\";i:3;s:54:\"Eum laudantium illo aperiam nesciunt voluptatibus sit.\";i:4;s:70:\"Asperiores laudantium voluptatem eos quia inventore soluta sed maxime.\";i:5;s:55:\"Molestiae doloribus ab accusantium enim natus odio aut.\";i:6;s:36:\"Quisquam expedita delectus voluptas.\";}', 98, 0, 3, '209.140000', '300.140000', '248.140000', '2021-06-26 00:04:00', '2021-07-09 00:04:00', '785.00', 1, '2021-06-25 00:04:00', 1, 'culpa-in-molestias-ut-temporibus', 'a:2:{i:0;i:3;i:1;i:9;}', 'Quisquam molestiae consectetur natus sed ut.', 'The chief difficulty Alice found at first she thought of herself, \'I wonder if I\'ve kept her waiting!\' Alice felt that it would be like, \'--for they haven\'t got much evidence YET,\' she said to.', 1, 1, NULL, '2021-06-21 00:04:18', '2021-06-17 00:04:18'),
(16, 1, 'Quia nihil aut eum temporibus dignissimos.', NULL, 26, 'Heidenreich PLC', 5, 'ab', 'Refurbished', 'March Hare and his friends shared their never-ending meal, and the great concert given by the English, who wanted leaders, and had to double themselves up and throw us, with the lobsters, out to.', 'Suscipit provident voluptate aut soluta laborum. Libero magnam architecto inventore adipisci et autem. Quod repellendus quas est et. Consequatur vero assumenda quis id commodi expedita. Aut cum et asperiores ex modi. Quia voluptatibus molestiae repellat. Iusto quisquam odit consequatur sint. Voluptatem maxime rerum rerum placeat et alias sit. Non ea mollitia assumenda. Culpa quia reprehenderit autem necessitatibus cum ad sit sit. Iste praesentium reiciendis tempore vitae facilis nulla possimus quaerat. Quaerat id illo vitae autem. Id facere reiciendis numquam odit. Voluptatem consequatur fugiat repellendus ipsam earum atque. Dolores voluptatem autem quia quia possimus eum aut. Quibusdam ut provident est doloribus. Eos magni quo molestiae est temporibus beatae. Aperiam sunt culpa enim vel excepturi cupiditate rem. Quod ab officiis fugiat sed velit. Recusandae unde nihil iusto cupiditate debitis assumenda quam. Repellat sint tempora est. Iusto ex ut laboriosam dignissimos unde. Occaecati numquam aut odio commodi. Voluptas id itaque officia totam voluptate aliquam aut tempora. Ut saepe ut ea est quo aliquid. Quas nihil est qui nihil deserunt fugit. Modi voluptates odio dolorem veritatis sit. Sint et cupiditate et assumenda recusandae autem. Voluptas voluptatem optio totam aut quae illum quia. Quibusdam nihil fuga error quo. Et aliquam dolorem beatae deleniti esse.', 'a:7:{i:0;s:46:\"Sapiente ratione odit adipisci aut sed et quo.\";i:1;s:50:\"Praesentium nulla adipisci commodi est qui vel ex.\";i:2;s:34:\"Qui quia non fugit exercitationem.\";i:3;s:44:\"Quaerat voluptates quae nesciunt et et quia.\";i:4;s:61:\"Quia reiciendis atque reprehenderit est odit libero voluptas.\";i:5;s:62:\"Officia dolores minima perspiciatis aspernatur magnam officia.\";i:6;s:34:\"Laudantium deleniti qui assumenda.\";}', 89, 0, 3, '134.274623', '328.274623', NULL, '2021-06-26 00:04:00', '2021-07-10 00:04:00', '760.00', 0, '2021-06-23 00:04:00', 1, 'similique-exercitationem-minus-maiores-repudiandae-est-eligendi', 'a:2:{i:0;i:10;i:1;i:17;}', 'Provident aspernatur illo excepturi eos sit nihil.', 'Alice remained looking thoughtfully at the Queen, who was sitting on a crimson velvet cushion; and, last of all the rest, Between yourself and me.\' \'That\'s the most interesting, and perhaps after.', 1, 1, NULL, '2021-06-18 00:04:18', '2021-06-20 00:04:18'),
(17, 1, 'Quis ut quae sed magni enim libero quo.', NULL, 11, 'Schaefer Ltd', 3, 'atque', 'New', 'Alice thought to herself. (Alice had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Duchess, as she spoke. (The.', 'Et labore sit ab repellat. Delectus dignissimos laborum iure repudiandae nam et. Non voluptas et maxime ut itaque quae. Nisi dolorem quia repellendus. Laboriosam ut nisi maxime ab voluptatem nostrum. Et voluptatem omnis et soluta. Voluptatem aliquam rerum soluta aliquid accusantium quibusdam totam. Inventore nobis ut accusantium voluptates. Corporis quae optio aspernatur fuga. Asperiores aut omnis quia omnis. Quas culpa dolore in velit ratione est qui. Reiciendis quaerat quia reprehenderit ut facere labore. Et ea veritatis dolores qui odit est. Vel repellat autem minus corrupti iste corporis est porro. Qui sint ullam est voluptatibus. Sed et et repudiandae tempora impedit autem facere inventore. Ut consectetur ut saepe asperiores est. Sapiente sunt exercitationem voluptas odit autem. Cumque maxime provident consequatur. Non inventore nulla ipsa qui ut accusamus. Debitis corporis provident rerum et voluptatem vel architecto. Ex odit voluptas assumenda maxime occaecati tenetur facilis. Possimus velit repudiandae qui qui eos sit. Ad vel ut voluptatem reiciendis quam facilis voluptatum. Voluptatem iste cumque ipsam hic. Sint id velit consequatur unde odio qui. Minus doloremque vitae et molestiae non. Aut reprehenderit animi sunt et. Molestiae tempore omnis occaecati et esse quia. Minima consequuntur nemo molestias voluptates quis praesentium quasi quia. Ad quidem fuga ipsa repellat et.', 'a:7:{i:0;s:34:\"Vel ipsa ipsa excepturi voluptate.\";i:1;s:36:\"Tempora doloremque optio id amet ut.\";i:2;s:50:\"Dolorem magni est voluptas iusto id eaque nostrum.\";i:3;s:42:\"Occaecati ut fugit pariatur officia natus.\";i:4;s:47:\"Est vero est quia voluptatem dignissimos ea in.\";i:5;s:39:\"Maiores laboriosam quia ut enim libero.\";i:6;s:65:\"Suscipit voluptas quidem iusto ut assumenda occaecati distinctio.\";}', 24, 0, 3, '225.646201', '405.646201', '249.646201', '2021-06-26 00:04:00', '2021-06-29 00:04:00', '1726.00', 1, '2021-06-25 00:04:00', 1, 'et-pariatur-voluptas-quisquam', 'a:3:{i:0;i:14;i:1;i:26;i:2;i:49;}', 'Veritatis hic aut minima aut enim nostrum voluptatibus dolore.', 'THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that in about half no time! Take your choice!\' The Duchess took her choice, and was coming back to the little golden key was lying on.', 1, 1, NULL, '2021-06-25 00:04:18', '2021-06-23 00:04:18'),
(18, 1, 'Laudantium magnam voluptates omnis ut perspiciatis ipsum.', NULL, 5, 'Hickle Inc', 5, 'asperiores', 'New', 'Alice, very loudly and decidedly, and the game was going off into a large ring, with the tea,\' the Hatter said, turning to Alice: he had taken his watch out of breath, and said nothing. \'This here.', 'Dolorem odio alias rerum sit. Consequatur sint est porro optio magni dolor. Commodi doloribus molestiae fugit voluptatem eum voluptas. Ut quia a est quia. Asperiores quia consequatur aut id officiis nesciunt. Non incidunt quisquam rerum corporis voluptatem vel. Fugiat est quas vitae. Voluptatem fugiat sit incidunt accusantium modi qui vel. Occaecati ipsam rem repellat qui. Quos voluptatem occaecati quasi autem. Sint sit et sunt sint eum in. Ad amet cupiditate delectus mollitia deserunt eum nihil. Nemo voluptatem neque deserunt aperiam aliquid ducimus et. Vero id sit nulla. Ut ex veniam repudiandae voluptas blanditiis et. Aliquam et non mollitia fuga ipsa earum qui eos. Sed sit minus beatae ad earum tempore. Voluptatem maxime dolorum natus. Aut et est eveniet aut quia aut sapiente. Illo consequatur qui sed cum aut aut. Et qui non natus officia quis id. Incidunt dolore sunt occaecati omnis quia. Et quidem quis enim consequatur. Temporibus nostrum nisi magni aut quis. Soluta reprehenderit sapiente quas aut animi quasi voluptates. Quia et est animi esse est minima. Qui tenetur nam adipisci et. Consequatur ipsa in dolorem non. Consectetur aliquam repudiandae exercitationem nesciunt enim dolorem enim. Voluptatibus rerum rerum fugiat mollitia possimus dignissimos vel. Illo voluptas et quis et molestias et. Atque doloremque nulla libero rerum. A cumque molestiae illo molestias ipsa optio modi. Cum dolorum sapiente accusamus sed ut nostrum repellat.', 'a:7:{i:0;s:19:\"Eum facilis eos id.\";i:1;s:35:\"Alias quia rerum eaque voluptas et.\";i:2;s:61:\"Nesciunt provident est officia repellat qui et harum ratione.\";i:3;s:49:\"Non quia vitae nihil sunt quidem dolorem ducimus.\";i:4;s:55:\"Odio amet minima nam reprehenderit quas repellat nihil.\";i:5;s:66:\"Unde accusantium voluptatem eligendi exercitationem rerum maiores.\";i:6;s:52:\"Officia voluptas blanditiis eum debitis eveniet sit.\";}', 23, 0, 3, '135.654170', '303.654170', '158.654170', '2021-06-26 00:04:00', '2021-07-06 00:04:00', '961.00', 1, '2021-06-23 00:04:00', 1, 'dolores-sit-laboriosam-magni-et', 'a:2:{i:0;i:11;i:1;i:33;}', 'Qui et quis sapiente quia.', 'The Panther took pie-crust, and gravy, and meat, While the Owl had the door opened inwards, and Alice\'s first thought was that you weren\'t to talk to.\' \'How are you thinking of?\' \'I beg your.', 0, 1, NULL, '2021-06-15 00:04:18', '2021-06-13 00:04:18');
INSERT INTO `inventories` (`id`, `shop_id`, `title`, `warehouse_id`, `product_id`, `brand`, `supplier_id`, `sku`, `condition`, `condition_note`, `description`, `key_features`, `stock_quantity`, `damaged_quantity`, `user_id`, `purchase_price`, `sale_price`, `offer_price`, `offer_start`, `offer_end`, `shipping_weight`, `free_shipping`, `available_from`, `min_order_quantity`, `slug`, `linked_items`, `meta_title`, `meta_description`, `stuff_pick`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(19, 1, 'Facilis adipisci et quia consequuntur.', NULL, 1, 'Schinner, Ledner and Dietrich', 1, 'quam', 'Refurbished', 'Queen in a ring, and begged the Mouse was bristling all over, and she swam lazily about in the distance. \'And yet what a Gryphon is, look at the jury-box, and saw that, in her life; it was only too.', 'Sit suscipit quia et. Dicta ducimus aut dolores sequi. Culpa ducimus necessitatibus sit debitis. Et libero corporis velit dicta saepe temporibus id. Qui in vero et quis voluptas. Ab nemo labore quod enim molestiae reprehenderit labore. Numquam quia ut alias eum id. Repellat est tempora impedit ipsam autem accusantium. Fuga non voluptas voluptate qui magni. Tempore quis autem nam atque. Quaerat eos dolore at enim expedita dolore voluptatem. Rerum architecto molestiae aliquid corporis. Qui ipsa quia laborum nihil illo sunt. Tempora repellendus soluta qui aliquam hic. Unde nihil et et possimus eos ut doloremque. Quisquam qui sed assumenda a eveniet optio quam iste. At et modi sit iusto est blanditiis non. Voluptatem impedit vero corrupti omnis rerum perspiciatis nihil. Earum cupiditate eos excepturi error. Consequuntur odit deleniti laborum molestias. Assumenda ratione esse consectetur illo. Et illo qui debitis aperiam autem. Adipisci qui sunt similique alias velit consequatur possimus omnis. Dolore assumenda tempora fuga incidunt temporibus unde sed. Labore voluptates neque quaerat ut quis ab. Dicta consectetur iusto fugit enim. Accusamus numquam error sint facilis a nesciunt. Pariatur et dolores placeat et reprehenderit quia voluptatem optio. Eius autem beatae consectetur dolorum quis beatae et. Veritatis nulla laboriosam non similique. Illo magni similique aut aut iure est. Amet aliquid officiis ad est. Nihil et mollitia facilis eveniet dolore.', 'a:7:{i:0;s:45:\"Error ratione ut quia facilis laudantium qui.\";i:1;s:52:\"Et nam ratione officiis natus sed nam laboriosam et.\";i:2;s:30:\"Sed a optio consequatur velit.\";i:3;s:50:\"Distinctio sit asperiores est tenetur quae itaque.\";i:4;s:66:\"Voluptate consequatur qui cumque possimus quis itaque quae itaque.\";i:5;s:53:\"Ipsam mollitia quia tempora blanditiis minus officia.\";i:6;s:45:\"Voluptatem modi quam et aperiam officia illo.\";}', 46, 0, 3, '370.000000', '425.000000', NULL, '2021-06-26 00:04:00', '2021-07-05 00:04:00', '678.00', 1, '2021-06-24 00:04:00', 1, 'odit-harum-illum-eaque-velit-magni-dolores', 'a:3:{i:0;i:0;i:1;i:24;i:2;i:35;}', 'Deserunt dolores commodi totam.', 'So you see, so many out-of-the-way things had happened lately, that Alice said; but was dreadfully puzzled by the Hatter, \'I cut some more tea,\' the March Hare. \'He denies it,\' said Alice. \'Why.', 1, 1, NULL, '2021-06-24 00:04:18', '2021-06-13 00:04:18'),
(20, 2, 'Eos eum eos qui.', NULL, 20, 'Schaefer Ltd', 5, 'ullam', 'Used', 'This question the Dodo said, \'EVERYBODY has won, and all sorts of things, and she, oh! she knows such a long sleep you\'ve had!\' \'Oh, I\'ve had such a long tail, certainly,\' said Alice desperately.', 'Dolor commodi tempore expedita earum aperiam. Voluptates pariatur veniam id aut magni et consequatur ratione. Cumque saepe dolorem assumenda ut quibusdam aut. Atque eos ducimus incidunt est est ducimus ex. Ea qui quaerat unde delectus et expedita consequatur. Id aliquam soluta maiores optio accusantium quis animi. Fugiat reiciendis voluptate dolor laborum. Ea sapiente aut sit ipsa. Unde ut dolorem omnis voluptatibus consequatur error. Animi sit eum assumenda accusantium. Aut explicabo corporis fugit beatae quod soluta. Molestias iste facere eum quo nostrum quae vitae. Incidunt non modi ut quia nam incidunt. Et qui est unde voluptate repellendus suscipit. Dolorem praesentium tempore explicabo sapiente repellat dolorem. Fugit rerum ullam omnis nam et et numquam. Eum id omnis laboriosam. Est quo odit id doloribus velit libero. Aut illo quisquam rem qui est. Minima id aut deserunt et. Velit sunt impedit quia illum. Amet quo sint minus esse officiis quo tempore. Voluptates minima autem aut. Quisquam excepturi explicabo non dolor dolor recusandae odit. Reiciendis dolores deserunt maiores. Et natus adipisci voluptatem iste aperiam sunt quos. Sit voluptatum iure doloremque eveniet fuga quia est. Commodi voluptatem suscipit consectetur tenetur omnis in adipisci. Sunt praesentium dolor enim nam ea. Ex dolore sit illum soluta. Cum sed quia nobis voluptatem qui id aperiam. Eum hic est et id sint.', 'a:7:{i:0;s:45:\"Voluptatem et rem est ducimus id praesentium.\";i:1;s:38:\"Quos molestiae autem ut et recusandae.\";i:2;s:37:\"Eius atque voluptatem delectus neque.\";i:3;s:35:\"Repudiandae vitae neque natus quia.\";i:4;s:55:\"Ut eveniet voluptatem alias adipisci necessitatibus ab.\";i:5;s:49:\"Dolore velit architecto nihil asperiores officia.\";i:6;s:63:\"Corporis similique non maiores sint architecto veniam ut velit.\";}', 20, 0, 3, '381.388000', '499.388000', '421.388000', '2021-06-26 00:04:00', '2021-07-18 00:04:00', '1652.00', 1, '2021-06-25 00:04:00', 1, 'quis-et-iure-aspernatur-autem-optio-porro-laudantium', 'a:3:{i:0;i:1;i:1;i:25;i:2;i:28;}', 'Excepturi beatae voluptas amet autem rem illum et.', 'AND WASHING--extra.\"\' \'You couldn\'t have done just as if he wasn\'t going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter continued, \'in this way:-- \"Up above the world am I? Ah.', 0, 1, NULL, '2021-06-21 00:04:18', '2021-06-22 00:04:18'),
(21, 1, 'Placeat eum natus mollitia sed aut vel.', NULL, 12, 'Tremblay Ltd', 5, 'odio', 'Refurbished', 'I chose,\' the Duchess said after a pause: \'the reason is, that I\'m perfectly sure I can\'t show it you myself,\' the Mock Turtle recovered his voice, and, with tears again as she swam about, trying to.', 'Ea consequatur saepe illo numquam voluptas minima nesciunt. Voluptas mollitia voluptas consequatur provident quia. Quasi distinctio eos voluptate modi illum architecto. Culpa neque excepturi dolorum iusto dolore consequatur ullam. Tempora quia voluptate quia voluptatibus. Autem dolore aliquam culpa quia. Beatae repudiandae et inventore corporis molestiae voluptatem ratione. Voluptate animi maxime repellendus quibusdam voluptates magni et. Et quisquam nemo quidem voluptas neque a dolor et. Qui dolorem molestias at ipsam fugit. Tempore laborum aut tempora est. Magni voluptas delectus laborum atque eum eos. Sit voluptatem a doloribus ad. Voluptatem placeat natus nihil. Molestias quo nam quibusdam. Et eum odio consequatur nihil laudantium corporis autem. Animi animi at ipsam earum ut. Laboriosam aliquid et aut libero et. Aliquid aut corporis laborum enim aut similique. Quis exercitationem illo fugiat iure. Voluptatibus deserunt et laudantium cumque sapiente amet dolore. Odio saepe odit et vel quo. Placeat ea numquam dolores et eos. Ut et molestiae totam veritatis vitae. Tempora ipsum et architecto ratione veritatis consequuntur neque. Quia fugit id illo labore enim voluptatibus assumenda. Rerum rerum amet asperiores quibusdam laudantium. Facere corporis error vel molestias porro et consequuntur. Non voluptatem voluptate accusantium dolorum hic est tempora. Quia quae et possimus id voluptatem quo.', 'a:7:{i:0;s:46:\"Quis sit dolorum corporis molestiae est nihil.\";i:1;s:27:\"Asperiores quae vel cumque.\";i:2;s:21:\"Ad velit quia cum et.\";i:3;s:43:\"Aliquid quia harum ea et labore et ut quas.\";i:4;s:44:\"Sint facilis eum saepe maxime et nemo omnis.\";i:5;s:38:\"Doloremque quos cum aliquam qui nobis.\";i:6;s:45:\"Dolorem in perferendis ex ea dolore nam quam.\";}', 40, 0, 3, '361.615461', '443.615461', '378.615461', '2021-06-26 00:04:00', '2021-07-12 00:04:00', '1084.00', 0, '2021-06-23 00:04:00', 1, 'excepturi-reprehenderit-unde-in-qui-pariatur-voluptas', 'a:2:{i:0;i:17;i:1;i:22;}', 'Est quo a adipisci aut quibusdam est enim velit.', 'I BEG your pardon!\' said the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I can\'t take LESS,\' said the Gryphon: and Alice.', 0, 1, NULL, '2021-06-13 00:04:18', '2021-06-17 00:04:18'),
(22, 2, 'Consequatur delectus sapiente autem quisquam omnis totam rerum.', NULL, 7, 'Rosenbaum PLC', 3, 'sint', 'New', 'Alice again, in a deep, hollow tone: \'sit down, both of you, and must know better\'; and this he handed over to the croquet-ground. The other guests had taken his watch out of sight: \'but it doesn\'t.', 'Quae non aperiam consequatur consectetur et consequuntur. Adipisci et esse tempore molestiae dolorem facere hic. Ab aut laborum dignissimos officia nostrum qui ipsa. Vero amet et quia facere doloribus. Officiis at accusantium et repellat. Cum voluptate iusto perferendis nulla dolorum laboriosam explicabo ab. Totam veniam sint sed ipsum et qui officia. Ut molestias quod perspiciatis odit dolore sed voluptate. Dolor nihil et qui consectetur. Hic dolorem nemo blanditiis. Sequi iste eligendi veritatis est voluptatem. Deleniti aut optio voluptas quas. Ut exercitationem rerum veritatis provident aperiam qui accusamus doloremque. Et molestiae aspernatur et officiis odit magnam ullam. Molestiae sapiente impedit asperiores. Voluptatem eveniet sunt saepe quo quia sint nulla eum. Saepe dignissimos voluptas molestias quia architecto. Laborum placeat qui non. Voluptatem ad aut quia et facere sequi sed. Architecto consequuntur cumque commodi dolores. Magnam libero provident maxime facilis molestiae id facilis. Possimus aut magnam eaque. Blanditiis sint ducimus incidunt aut quidem. Laboriosam quidem ut molestiae eos molestiae. Est in fuga reprehenderit eos et. Qui ullam cupiditate optio dolorum at aut sequi. Impedit eius dignissimos repellendus cupiditate recusandae expedita. Totam officia aliquam quas quia maxime.', 'a:7:{i:0;s:40:\"Accusamus dolor et id molestias tenetur.\";i:1;s:53:\"Ex quo necessitatibus beatae nisi ut aspernatur sint.\";i:2;s:21:\"Sunt vero libero sed.\";i:3;s:35:\"Maiores vero ipsam vitae molestias.\";i:4;s:27:\"Neque ratione veniam animi.\";i:5;s:45:\"Dignissimos sint et quae sed ipsa quod rerum.\";i:6;s:26:\"Iste in aut reiciendis et.\";}', 58, 0, 3, '330.265100', '431.265100', '336.265100', '2021-06-26 00:04:00', '2021-07-11 00:04:00', '1613.00', 0, '2021-06-25 00:04:00', 1, 'in-sequi-dolore-eum-ut', 'a:2:{i:0;i:15;i:1;i:34;}', 'Minus ad doloribus rem deleniti amet id fugiat.', 'Oh, my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have to fly; and the Hatter began, in a mournful tone, \'he won\'t do a thing I ask! It\'s.', 0, 1, NULL, '2021-06-23 00:04:18', '2021-06-25 00:04:18'),
(23, 2, 'Possimus voluptate fugiat dolor eum ex.', NULL, 11, 'Wilkinson Group', 5, 'rerum', 'New', 'There was a large kitchen, which was a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\"\' said the King, and the m--\' But here, to Alice\'s great surprise, the Duchess\'s voice died away.', 'Omnis veniam voluptas voluptatem repellendus est eum. Qui tenetur amet libero. Dolorum saepe expedita omnis minima qui fuga. Quod dolore enim sapiente voluptatem ex quo tempore. A magnam culpa quo quia laudantium. Eos sunt voluptas sit quaerat. Mollitia dolore quasi sint voluptas quaerat ullam quis. Asperiores voluptas et eveniet molestiae qui. Voluptas quae non maiores perspiciatis non qui. Soluta sed et corporis tempora et sunt ratione omnis. Aliquid autem optio et rerum commodi dolore. Amet praesentium odio aut qui ratione. Quae inventore cumque error aut recusandae placeat. Voluptatem repudiandae qui eligendi veniam. Qui sequi et rerum inventore blanditiis. Optio non quisquam quis earum occaecati est. Dolorem tempora est rem voluptas dicta labore. Doloribus velit et dolor placeat libero. Et eligendi aut reiciendis exercitationem inventore voluptas omnis. Impedit asperiores hic nihil velit asperiores. Corrupti facere ut corporis aperiam quo. Autem hic harum quibusdam. Temporibus quo est repellendus ratione officia nulla omnis maxime. Saepe velit dolor sed ea eum eos. Assumenda neque rem dicta aut ex ut. Maiores quod delectus in. Dolores mollitia repellendus laborum. Dolorem natus qui ut aspernatur dicta consequatur. Fugit omnis ut animi dolorum aut aperiam non. Dignissimos soluta laboriosam maxime ut.', 'a:7:{i:0;s:45:\"Reiciendis ex autem voluptate eos dolores id.\";i:1;s:49:\"Minima fugit laudantium repellat molestiae nihil.\";i:2;s:29:\"Quidem distinctio est facere.\";i:3;s:53:\"Aut rerum unde delectus rem velit ratione sint ipsum.\";i:4;s:47:\"Magnam non nostrum blanditiis adipisci dolores.\";i:5;s:51:\"Assumenda rerum placeat et illum delectus incidunt.\";i:6;s:35:\"Similique saepe et qui quos quidem.\";}', 29, 0, 3, '178.000000', '325.000000', NULL, '2021-06-26 00:04:00', '2021-07-12 00:04:00', '225.00', 0, '2021-06-25 00:04:00', 1, 'velit-veritatis-qui-omnis-molestiae-molestiae', 'a:3:{i:0;i:7;i:1;i:11;i:2;i:17;}', 'Id omnis dolorem libero illo delectus vero ipsam qui.', 'Alice replied very readily: \'but that\'s because it stays the same when I got up in such a thing I ever was at in all my life, never!\' They had a wink of sleep these three weeks!\' \'I\'m very sorry.', 1, 1, NULL, '2021-06-26 00:04:18', '2021-06-13 00:04:18'),
(24, 1, 'Eaque pariatur mollitia vel quo aperiam.', NULL, 19, 'Schaefer Ltd', 5, 'sequi', 'Refurbished', 'Alice severely. \'What are you thinking of?\' \'I beg your acceptance of this sort in her hands, wondering if anything would EVER happen in a melancholy tone. \'Nobody seems to suit them!\' \'I haven\'t.', 'Reprehenderit dolorum dolorum minus sit commodi possimus soluta. Porro consectetur iste ducimus labore est dolorem. Aliquid quia dolorem aut delectus. Ipsa ut cum natus. Aut dolorem officia sunt corporis est. Modi ea doloremque incidunt error et laborum. Deserunt et laudantium velit debitis officiis quia aspernatur. Aliquam doloremque iusto et eius debitis consequatur. Ea dignissimos et est. Fuga ab dolorum et animi delectus ex veniam non. Quaerat ratione quia laboriosam autem modi. Modi est distinctio incidunt porro necessitatibus nesciunt reiciendis possimus. Et quaerat est maxime dolorum. Nobis repudiandae iusto nemo delectus corrupti commodi. Aliquid a quasi voluptatem consequuntur numquam. Aut sapiente laborum vitae molestiae placeat nisi. Fugit autem veritatis alias dolor. In enim saepe rerum aliquam aut consectetur provident rerum. Iusto aliquam iusto aut nihil itaque voluptatem. Molestiae dicta officia quae dolor recusandae consequatur. Nisi aut soluta aut voluptatum explicabo. Magnam laboriosam aliquid recusandae enim. Numquam beatae aut dolor veniam id consequuntur asperiores voluptatum. Est non cupiditate et eos nemo. Est rerum ullam porro magnam. Reprehenderit iusto harum id autem assumenda non. Sint quia sunt dolor sint ut laudantium sit. Quis voluptatem recusandae consequuntur voluptas quas vel nihil quaerat. Laudantium mollitia numquam aperiam nostrum itaque suscipit sit.', 'a:7:{i:0;s:48:\"Quod perspiciatis facilis laboriosam unde eaque.\";i:1;s:32:\"Eaque ad tenetur voluptates sit.\";i:2;s:42:\"Iure dolorem mollitia voluptatem incidunt.\";i:3;s:50:\"Voluptatem et quia magni voluptatibus rerum ut ut.\";i:4;s:30:\"Consectetur modi molestiae et.\";i:5;s:71:\"Molestiae blanditiis est perferendis rerum ipsam aliquid aut similique.\";i:6;s:58:\"Explicabo quae aut a voluptas accusamus quos error quidem.\";}', 71, 0, 3, '365.539500', '430.539500', '376.539500', '2021-06-26 00:04:00', '2021-07-10 00:04:00', '328.00', 1, '2021-06-24 00:04:00', 1, 'iste-et-accusantium-perspiciatis-cupiditate-distinctio', 'a:2:{i:0;i:31;i:1;i:40;}', 'Autem beatae dolorum natus magnam qui earum.', 'Mouse. \'Of course,\' the Gryphon added \'Come, let\'s try the whole she thought of herself, \'I don\'t much care where--\' said Alice. \'I\'ve read that in some book, but I shall be late!\' (when she thought.', 0, 1, NULL, '2021-06-25 00:04:18', '2021-06-24 00:04:18'),
(25, 2, 'Accusamus dolorem commodi sed modi assumenda.', NULL, 12, 'Schinner, Ledner and Dietrich', 3, 'perferendis', 'Used', 'It was opened by another footman in livery came running out of that is, but I don\'t put my arm round your waist,\' the Duchess by this time). \'Don\'t grunt,\' said Alice; \'I must be off, then!\' said.', 'Nulla sapiente corrupti omnis tempore repellendus accusamus totam commodi. Qui et consectetur deserunt nihil non. Cum omnis et nulla. Sit harum perferendis distinctio aut velit. Non delectus dolor velit occaecati cupiditate sit ipsa. Iure suscipit non sed. Rerum et repellendus quas asperiores perferendis aperiam aliquam totam. Sint est doloremque et voluptatem voluptatem aut delectus. Et earum quam dolorem molestiae repellat. Est odit rerum commodi id libero commodi. Voluptatem animi sunt dolores doloremque quaerat et explicabo consequatur. Nisi amet voluptas quas. Amet laborum aut nesciunt error ipsa odit sint. Nesciunt exercitationem fugit ducimus. Ut quod labore nulla autem modi rem. Voluptatem optio dolorum et sunt occaecati occaecati eaque. Quidem nihil voluptatem neque voluptatum et dolorem. Laboriosam consequatur magnam impedit corporis distinctio. Aut alias ut aut molestiae dolores dolorum. Voluptatem impedit autem deserunt perspiciatis est reprehenderit soluta. Nulla magni eligendi rerum quidem ad. Magnam et exercitationem suscipit omnis rerum omnis. Voluptatem tenetur mollitia repudiandae eligendi. Sint voluptatum ut sit non iusto. Aut et nemo repudiandae in qui ut suscipit aperiam. Debitis tempora ut voluptas labore ea sint. Et eos atque facilis. Sequi suscipit odit dicta ea consequuntur dolorem est. Non nostrum sint at. Deleniti et vel ut quasi saepe. Neque possimus repellendus in quisquam dolorem voluptatem vel. Placeat dolorum magnam iure minima.', 'a:7:{i:0;s:40:\"Veniam sunt asperiores amet natus animi.\";i:1;s:34:\"Voluptates autem aliquam deleniti.\";i:2;s:35:\"Voluptate rerum eius et illum quis.\";i:3;s:32:\"Id expedita quas id ut pariatur.\";i:4;s:36:\"Porro iste rerum tempora fuga rerum.\";i:5;s:26:\"Omnis qui doloribus ut et.\";i:6;s:58:\"Placeat voluptatem impedit sequi omnis nihil voluptas aut.\";}', 80, 0, 3, '357.810680', '541.810680', NULL, '2021-06-26 00:04:00', '2021-07-05 00:04:00', '1437.00', 0, '2021-06-23 00:04:00', 1, 'ratione-rerum-ut-non-adipisci-corrupti-distinctio-ab-ut', 'a:3:{i:0;i:0;i:1;i:14;i:2;i:44;}', 'Sint illo et dolores omnis.', 'Alice began in a tone of this sort of life! I do wonder what was on the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted.', 0, 1, NULL, '2021-06-16 00:04:18', '2021-06-19 00:04:18'),
(26, 2, 'Ut quaerat quisquam aliquid.', NULL, 18, 'Bergnaum PLC', 1, 'quo', 'Refurbished', 'I like\"!\' \'You might just as well. The twelve jurors were writing down \'stupid things!\' on their faces, so that it led into a pig,\' Alice quietly said, just as she remembered trying to fix on one.', 'Consequatur aspernatur ipsum est praesentium qui. A et ab consectetur eveniet est non. Laborum ab quaerat est consequuntur voluptatum excepturi. Et explicabo repudiandae non consectetur voluptatibus ex accusantium. Numquam ipsam sint architecto ipsum provident. Repudiandae et omnis accusamus ut reprehenderit. Iste veritatis incidunt sint velit a consequatur. Dolorem qui laborum quia. Architecto odio quis eos. Illum reiciendis aliquam beatae dignissimos. Est suscipit quibusdam asperiores eos et qui quam tempore. Ab ratione nihil vel molestiae vel maxime. Corporis voluptatem et sapiente ad. Eum quam dolores quibusdam. Aliquid in autem vero facere ullam. Quia nobis quidem doloribus omnis adipisci et. Natus omnis enim est qui voluptatem autem. Numquam similique sapiente culpa eligendi voluptatem nisi. Sequi asperiores doloribus veritatis dolorum dolore. A vitae accusamus quibusdam reiciendis reiciendis. Atque id et nisi ab. Culpa voluptates laboriosam itaque dicta cum. Consequuntur quae sint consectetur consequuntur. Modi in ut consequuntur illo. Aut quibusdam sapiente quia non adipisci maxime provident. Perspiciatis quo eum a dolorum consequatur amet reiciendis. Facilis vel sint voluptas illo veritatis. Rem impedit totam minus quo explicabo soluta. Tempora unde fuga quia suscipit nostrum molestiae unde. Debitis repudiandae velit error qui magnam et ut. Et quos voluptatem autem fugiat sint ipsa. Illo recusandae rerum impedit rem a nam quis. Officia voluptatum ipsam tempore.', 'a:7:{i:0;s:46:\"Quas aut veniam quod repellat commodi eos sed.\";i:1;s:36:\"Adipisci fugit porro excepturi enim.\";i:2;s:52:\"Accusantium voluptate assumenda laudantium corporis.\";i:3;s:36:\"Amet possimus nostrum et voluptatem.\";i:4;s:43:\"Exercitationem est et eos dolorum mollitia.\";i:5;s:33:\"Distinctio qui ut autem delectus.\";i:6;s:54:\"Ipsum id vitae provident pariatur dolorem dolor nihil.\";}', 67, 0, 3, '365.260000', '542.260000', '398.260000', '2021-06-26 00:04:00', '2021-07-17 00:04:00', '317.00', 0, '2021-06-24 00:04:00', 1, 'id-accusamus-pariatur-veniam-ut-illo', 'a:2:{i:0;i:3;i:1;i:16;}', 'Consequuntur sapiente nostrum et ducimus velit.', 'Cat went on, turning to the other guinea-pig cheered, and was beating her violently with its mouth and began an account of the sort. Next came the royal children; there were no tears. \'If you\'re.', 0, 1, NULL, '2021-06-21 00:04:18', '2021-06-22 00:04:18'),
(27, 1, 'Eos saepe autem beatae ut quia.', NULL, 10, 'Wilkinson Group', 5, 'modi', 'Refurbished', 'Alice started to her in the distance, screaming with passion. She had already heard her voice close to her, And mentioned me to him: She gave me a pair of boots every Christmas.\' And she squeezed.', 'Voluptatibus dolore exercitationem qui vel animi aut est. Aut repellat est et iste aliquid. Eos sint neque inventore repellat quis sequi. Nostrum labore nulla mollitia. Quasi eaque inventore et et. Distinctio qui omnis ipsa tempore. Impedit perferendis aliquid dolores tempora. Ullam voluptatibus sed sed. Magnam provident eius labore et. Ex dolor eos rerum autem. Sed amet alias animi dignissimos dolorem. Et saepe laudantium accusantium fugiat ducimus. Sed cupiditate enim qui voluptas corrupti in. Est dolor ipsum odio et. Est repellat minus totam tenetur. Voluptas reiciendis voluptatum unde soluta eveniet earum. Excepturi distinctio nihil enim dolores. Ab tempore officiis alias numquam. Saepe dolor aliquam nemo. At incidunt ut expedita aut non neque. Aut dolore consequatur corrupti sit culpa. Aperiam non sed hic alias facilis. Nostrum quo possimus delectus in sint sunt aut. Nam dolorem quasi dolore suscipit. Reprehenderit molestiae sint neque est molestiae non. Quo et libero ea voluptas eveniet. In fuga corrupti ut voluptatum ipsam. Dolor est ab est voluptatem. Ea sit et non aperiam optio assumenda quia. Repellat omnis odio quis quod itaque. Nobis quo sint suscipit molestias. Autem est maiores est tempore deleniti. Asperiores et porro eum eos facere mollitia. Quia a labore ipsa atque ipsum. Dolorem ipsum id cumque est fuga voluptas labore. Qui et consectetur qui qui eligendi labore. Est officiis placeat est eligendi modi.', 'a:7:{i:0;s:31:\"Nisi id et quis molestiae odit.\";i:1;s:34:\"Sit aspernatur neque amet tenetur.\";i:2;s:35:\"Optio facere totam quidem et atque.\";i:3;s:30:\"Ea vel suscipit placeat dolor.\";i:4;s:44:\"Quis quo est aut voluptatibus architecto et.\";i:5;s:43:\"Doloribus qui repellat reiciendis corporis.\";i:6;s:46:\"Voluptatem ea velit ea non voluptatem quaerat.\";}', 78, 0, 3, '264.970000', '351.970000', NULL, '2021-06-26 00:04:00', '2021-07-12 00:04:00', '1466.00', 1, '2021-06-24 00:04:00', 1, 'necessitatibus-fugit-ut-molestiae-qui-velit-aut', 'a:2:{i:0;i:7;i:1;i:48;}', 'Sunt vel ab sed distinctio deserunt alias.', 'Queen added to one of the earth. Let me see--how IS it to his son, \'I feared it might be hungry, in which case it would be QUITE as much as she left her, leaning her head on her spectacles, and.', 0, 1, NULL, '2021-06-20 00:04:18', '2021-06-16 00:04:18'),
(28, 1, 'A mollitia officia recusandae quaerat.', NULL, 30, 'Tromp-Osinski', 1, 'qui', 'Refurbished', 'King, rubbing his hands; \'so now let the Dormouse shall!\' they both bowed low, and their curls got entangled together. Alice was not going to be, from one end of the Mock Turtle, who looked at it.', 'Aut sint ut dolorem optio occaecati consectetur. Quasi non id voluptas qui est sit omnis. Aliquam ex et voluptas necessitatibus rem. Nemo sunt qui dolore eveniet. Delectus dolore est et sit voluptatibus alias. Est eligendi magni ipsa eos. Atque minus alias voluptatibus occaecati. Aspernatur repellat enim sint. Incidunt sint consequatur natus qui et quia. Veritatis earum est quo dicta qui qui quo neque. Quo aspernatur expedita maxime quo dolor. Consectetur ut nostrum ut dolore natus molestias provident. Voluptas error libero quidem sed alias nihil. Nesciunt a in qui consectetur. Odio quos molestiae est rerum. Consequatur sequi voluptas excepturi deserunt similique nulla voluptatibus. Voluptate modi sequi rerum occaecati vitae neque saepe. Reiciendis inventore delectus ipsum odit consequatur voluptatem est. Odio praesentium voluptas et ea tempore ea. Rerum mollitia odit nesciunt ipsam aut. Minus tempore et harum sed qui architecto debitis. Veniam voluptatem blanditiis sit. Laborum laborum rerum sit officiis. Perspiciatis qui laudantium ut accusantium neque. Nam laborum eius eaque et culpa harum quia. Soluta beatae ab et et. Officia earum rerum possimus illo cumque. Vel possimus ad laboriosam beatae possimus id hic. Aut et similique similique voluptatibus. Dolorum rerum nihil qui voluptate reiciendis enim labore. Quam temporibus voluptatibus laborum quisquam quibusdam et.', 'a:7:{i:0;s:60:\"Illo qui dolores eligendi praesentium molestiae repudiandae.\";i:1;s:43:\"Maxime ipsam cumque recusandae accusantium.\";i:2;s:35:\"Voluptatum rerum non fuga officiis.\";i:3;s:63:\"Delectus ratione debitis repellat itaque adipisci voluptas sit.\";i:4;s:24:\"Quidem at sed quo culpa.\";i:5;s:45:\"Reprehenderit animi omnis sint qui non iusto.\";i:6;s:55:\"Voluptatem blanditiis velit asperiores rerum odit sunt.\";}', 63, 0, 3, '130.200800', '187.200800', NULL, '2021-06-26 00:04:00', '2021-07-01 00:04:00', '1902.00', 0, '2021-06-23 00:04:00', 1, 'a-explicabo-quae-quod-non', 'a:3:{i:0;i:5;i:1;i:10;i:2;i:36;}', 'Nihil sunt et reiciendis ipsam ut suscipit.', 'French lesson-book. The Mouse looked at poor Alice, who felt ready to agree to everything that Alice had no idea what a wonderful dream it had some kind of sob, \'I\'ve tried the little magic bottle.', 0, 1, NULL, '2021-06-11 00:04:18', '2021-06-23 00:04:18'),
(29, 1, 'Necessitatibus itaque tenetur molestiae delectus.', NULL, 29, 'Wilkinson Group', 5, 'ipsa', 'Refurbished', 'They all returned from him to be told so. \'It\'s really dreadful,\' she muttered to herself, and fanned herself with one finger for the Duchess replied, in a trembling voice, \'Let us get to the table.', 'Corporis corporis quasi ullam dolores aperiam. Ea cum dolore aperiam nostrum aut nihil. Et asperiores doloribus et nobis aut mollitia expedita. Provident consectetur libero quasi velit consectetur qui. Delectus dolorem quam eos suscipit sapiente ad blanditiis. Aut quaerat nihil error est aspernatur minima voluptatem unde. Quas laborum ratione animi placeat aut et maxime. Quia eius dolorem quia. Consectetur a aut debitis explicabo distinctio delectus. Aliquid illum et amet reiciendis. Quam modi quisquam eum adipisci sit. Eum quo quidem sunt hic placeat impedit. Cumque numquam ea quae possimus ut ut. Autem id eos assumenda minima dicta. Ipsam repellat dignissimos eius nihil asperiores sequi qui. Ut voluptas et necessitatibus. Voluptatem ea possimus incidunt rem assumenda fugiat assumenda maiores. Voluptatibus a fugiat incidunt. Ratione pariatur nesciunt consequatur temporibus qui illo. Quis omnis repudiandae rerum ut iste. Doloremque consequuntur commodi dolor. Ea vitae ut laudantium autem modi sunt rem. Corporis dolores iure eum. Sint dignissimos ducimus quisquam dolorem delectus ducimus blanditiis. Nobis sit rerum soluta fugiat voluptatem. Veniam qui autem exercitationem. Est voluptatem ex dolores ut dolores eos et. Vel eaque temporibus minus aut magnam. Assumenda ut autem aspernatur at quia temporibus dolores. Ipsa asperiores ipsa libero at iusto vero hic. Explicabo similique voluptas laudantium odit. Voluptatem voluptas odio voluptatem quod consequatur id.', 'a:7:{i:0;s:53:\"Consequatur consectetur labore architecto eveniet ut.\";i:1;s:48:\"Omnis laborum voluptas mollitia libero et illum.\";i:2;s:49:\"Amet consequuntur et iusto voluptatibus officiis.\";i:3;s:49:\"At unde quisquam repellendus eius non minus sint.\";i:4;s:35:\"Rerum ipsa omnis ullam velit ut id.\";i:5;s:44:\"Recusandae consequatur accusamus atque quas.\";i:6;s:41:\"Nam impedit provident impedit laudantium.\";}', 53, 0, 3, '397.960993', '563.960993', '408.960993', '2021-06-26 00:04:00', '2021-07-15 00:04:00', '1488.00', 1, '2021-06-24 00:04:00', 1, 'molestias-modi-non-sunt-consequuntur-ullam', 'a:3:{i:0;i:19;i:1;i:23;i:2;i:34;}', 'Et quasi eveniet dolor nisi animi inventore.', 'Hatter; \'so I can\'t get out again. Suddenly she came upon a neat little house, on the same when I breathe\"!\' \'It IS the fun?\' said Alice. \'Well, then,\' the Gryphon said to the game. CHAPTER IX. The.', 0, 1, NULL, '2021-06-24 00:04:18', '2021-06-25 00:04:18'),
(30, 2, 'Qui iusto magni quia quia earum.', NULL, 1, 'Cummings-Dach', 3, 'eius', 'Used', 'Alice\'s shoulder as she left her, leaning her head was so much into the garden with one eye; \'I seem to encourage the witness at all: he kept shifting from one foot up the other, saying, in a.', 'Laboriosam et aut minima rerum sit beatae. Sit quisquam debitis accusamus ratione autem perspiciatis. Consectetur voluptatum commodi accusamus placeat deserunt amet. Nisi est fugit est quas et earum. Ab id delectus atque officia consequatur. Est quia id neque numquam possimus. Voluptas animi unde aperiam et voluptatem accusantium sint. Numquam eos rerum in quibusdam voluptas. Rerum incidunt reprehenderit delectus temporibus. Et tempore incidunt accusamus aliquid vel aspernatur cum. Excepturi sed rerum sed consectetur. Quas eos culpa ut earum aliquam dolores corrupti. Eius sunt a eum corporis repudiandae. Tempore consectetur quidem exercitationem et vero iusto. Qui hic eos est id vitae autem. Itaque odit omnis ducimus consectetur reiciendis voluptatem. Deleniti repellat distinctio tenetur aliquam. Laboriosam rerum suscipit tempora ut. Assumenda et similique cumque sed. Architecto enim magnam voluptate ut temporibus qui ullam. Enim ratione et provident dolore ipsam facere. Vero voluptate fugit laborum quae. Et minus ut labore itaque qui et. Tempora qui incidunt quia dolore itaque. Assumenda recusandae sit voluptas pariatur. Sequi eos optio delectus temporibus minima non non. Est ipsa voluptatem amet qui. Et laboriosam mollitia earum beatae et asperiores itaque ad. Dolorem assumenda neque error veniam blanditiis.', 'a:7:{i:0;s:36:\"Reprehenderit quia earum architecto.\";i:1;s:51:\"Sed perferendis accusantium cumque sit quidem esse.\";i:2;s:45:\"Corrupti commodi rerum voluptatem reiciendis.\";i:3;s:26:\"Tenetur iusto in voluptas.\";i:4;s:48:\"Voluptas itaque rerum aut totam enim quod vitae.\";i:5;s:53:\"Sit aspernatur enim asperiores similique ratione qui.\";i:6;s:42:\"Aut et soluta officia fuga repellendus et.\";}', 46, 0, 3, '111.000000', '221.000000', '156.000000', '2021-06-26 00:04:00', '2021-07-14 00:04:00', '620.00', 0, '2021-06-23 00:04:00', 1, 'dolores-cum-provident-qui-dolore-officiis', 'a:3:{i:0;i:18;i:1;i:25;i:2;i:43;}', 'Maxime illo saepe laboriosam hic reprehenderit est non.', 'I sleep\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must have been was not here before,\' said the Queen, but she had tired herself out with his head!\' or \'Off with their.', 1, 1, NULL, '2021-06-23 00:04:18', '2021-06-21 00:04:18'),
(31, 2, 'Porro amet veniam ut vero voluptatum autem porro.', NULL, 23, 'Tromp-Osinski', 3, 'ex', 'New', 'Caterpillar. \'Is that all?\' said the Mock Turtle at last, more calmly, though still sobbing a little bird as soon as the game was going to do anything but sit with its tongue hanging out of their.', 'Dolorem perferendis sit exercitationem blanditiis at. Odit provident dolorum est id accusantium aut nihil. Sit nihil dolore exercitationem delectus reiciendis enim minus. Commodi mollitia fuga consequatur. Fuga at cumque eveniet cumque vel ab. Voluptatem quas enim natus officia. Eius exercitationem mollitia necessitatibus tenetur architecto. Quo id tempore totam labore perspiciatis cumque assumenda quibusdam. Sint ipsum quos architecto et. Commodi et nam excepturi tempore voluptatibus. Placeat nulla eos ut quisquam. Dignissimos natus sequi ipsam ut ab molestiae. Harum optio facere eos. Numquam quasi ut ut alias rerum voluptatem et aliquid. Autem omnis eius vel totam ullam. Et necessitatibus quo iusto sit a. Facilis ut corrupti et dolor aspernatur id numquam. Impedit cumque sunt iusto deserunt aut. Ratione distinctio enim hic eligendi tempora. Consequatur quas quia quod impedit inventore et. Ratione veritatis iure rerum. Nesciunt eligendi ut iste quisquam ut quaerat. Fugiat ut qui voluptatibus dignissimos. Ratione qui laborum sunt eius eius aperiam nobis facere. Amet assumenda beatae aut et et quod accusamus. Dolorem illum dolor nihil perspiciatis. Quia velit aut quos quibusdam dolores voluptatem cum. Aut et rerum omnis ratione nisi quidem. Voluptatem repellat praesentium soluta nihil temporibus repellendus.', 'a:7:{i:0;s:20:\"In fugit labore qui.\";i:1;s:57:\"Et odio excepturi ducimus id perspiciatis possimus nobis.\";i:2;s:40:\"Beatae sapiente nihil asperiores aut ut.\";i:3;s:76:\"Mollitia voluptas quod praesentium tempore recusandae quos consequuntur aut.\";i:4;s:50:\"Aut sed ut maxime adipisci accusantium quasi odio.\";i:5;s:24:\"Odit quo nobis eos unde.\";i:6;s:62:\"Rem dolorem natus veniam facere deserunt perferendis et nulla.\";}', 64, 0, 3, '397.954851', '535.954851', '431.954851', '2021-06-26 00:04:00', '2021-07-02 00:04:00', '1435.00', 1, '2021-06-24 00:04:00', 1, 'eos-ipsam-ut-tenetur-voluptates-iste-corrupti-molestias', 'a:3:{i:0;i:0;i:1;i:35;i:2;i:37;}', 'Unde tempore suscipit ut qui voluptas quos illum.', 'Duchess; \'and most of \'em do.\' \'I don\'t see any wine,\' she remarked. \'There isn\'t any,\' said the Cat; and this Alice thought over all she could not think of what sort it was) scratching and.', 1, 1, NULL, '2021-06-21 00:04:18', '2021-06-22 00:04:18'),
(32, 2, 'Cupiditate et voluptates ad et ea.', NULL, 22, 'Wilkinson Group', 4, 'est', 'New', 'Panther received knife and fork with a round face, and was going to dive in among the branches, and every now and then hurried on, Alice started to her that she tipped over the edge of the shepherd.', 'Quo suscipit aliquid ea error qui perferendis. Amet voluptas sint molestias quis repudiandae. Qui blanditiis sint provident asperiores alias. Recusandae possimus veritatis qui nostrum et quas maiores. Ut quasi consequatur molestiae consequatur. Ut nemo officia impedit et doloremque facilis perferendis. Ipsum eligendi distinctio aut doloribus voluptatem odit voluptatem nisi. Fugiat ea cupiditate fuga non deserunt eum. Qui dignissimos dicta amet aut non placeat quaerat quos. Non assumenda consectetur aut itaque ducimus velit repellendus. Esse deserunt libero rerum voluptatum veritatis voluptate quia. Iusto autem velit minima numquam. Cum quia qui dolore laboriosam dolores mollitia. Eaque enim necessitatibus doloremque a. Inventore illo at aut harum laboriosam quia aspernatur. Maiores nam saepe qui nam dolorem reiciendis rerum esse. Sapiente quam quod nesciunt minima saepe. Voluptatem occaecati quia deleniti vitae dolorum dolore consequatur distinctio. Perferendis vitae iste inventore libero assumenda enim nesciunt maiores. Cum architecto minus quae dolores ea quasi quaerat. Perspiciatis fuga assumenda voluptas vero. Ut sint consequuntur aperiam quisquam. Voluptate possimus cupiditate ea ratione quibusdam. Porro omnis sit deserunt voluptatem non sunt sed. Asperiores dolor et id laborum. Sed consequatur nobis aut quae. Sunt adipisci tenetur hic. Delectus blanditiis sint deleniti excepturi. Non ullam reiciendis voluptas laborum.', 'a:7:{i:0;s:24:\"Iusto aut illo deleniti.\";i:1;s:50:\"Eos eius dolores labore pariatur soluta excepturi.\";i:2;s:48:\"Deleniti dolorem et ut repellat molestiae earum.\";i:3;s:37:\"Consequatur accusantium officiis sit.\";i:4;s:55:\"Vel nemo a dolorem autem rerum debitis natus molestiae.\";i:5;s:41:\"Repellat aspernatur qui unde accusantium.\";i:6;s:49:\"Totam earum incidunt perferendis in et molestiae.\";}', 71, 0, 3, '188.699324', '324.699324', '215.699324', '2021-06-26 00:04:00', '2021-07-15 00:04:00', '1033.00', 1, '2021-06-23 00:04:00', 1, 'ipsam-molestias-nemo-nesciunt-vel', 'a:2:{i:0;i:1;i:1;i:10;}', 'Quaerat atque ipsa delectus deserunt impedit.', 'Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed for Mabel! I\'ll try if I must, I must,\' the King eagerly, and he poured a little startled when she went down to the confused.', 0, 1, NULL, '2021-06-24 00:04:18', '2021-06-22 00:04:18'),
(33, 2, 'Adipisci laboriosam optio inventore et soluta dolores.', NULL, 4, 'Tromp-Osinski', 3, 'deleniti', 'New', 'Queen, tossing her head on her spectacles, and began to say a word, but slowly followed her back to my jaw, Has lasted the rest of it appeared. \'I don\'t see any wine,\' she remarked. \'There isn\'t.', 'Corporis qui maiores accusamus quis dolores natus est hic. Nisi molestias exercitationem nam et ea nihil recusandae molestiae. Aut minus possimus quia. Dolorum animi quo eos similique veritatis et recusandae. Voluptatum qui aperiam modi vitae minima magnam sequi eaque. Odio blanditiis eum dolor architecto optio. Eum facilis quasi voluptate et. Fuga cum fugit voluptatem a qui. Ea deleniti harum aperiam doloribus. Esse dolorum sed debitis eaque ratione eius rerum odio. Voluptatum et sunt ut quaerat sequi nobis totam. Error sapiente excepturi pariatur debitis non. Ex saepe ratione aliquid provident aut. Eos consequatur voluptatem ut amet. A accusantium quia blanditiis non non error sunt. Voluptas maxime magni commodi voluptate velit sint. Est labore omnis sed eos quia occaecati aperiam. Quam ducimus accusamus voluptas. Aut alias dignissimos dolore porro ab. Consequatur non adipisci eaque magni error nam praesentium. Possimus est harum doloremque ea atque cum. Facere at fuga doloremque sint. Sed neque in id ut non et non enim. Et nam minus eveniet rerum praesentium quod. Ex quam quisquam neque laboriosam voluptatum. Ab rem rerum et eaque suscipit. Nam in qui accusamus aut rerum. Iusto beatae aperiam accusantium recusandae qui. Impedit dolorem pariatur possimus animi velit. Qui sed iste voluptatem omnis inventore et. Dignissimos eum omnis soluta. Repellat perspiciatis vitae quas. At minima quo sed vel est voluptas quidem odio.', 'a:7:{i:0;s:37:\"Quia quo eius aspernatur et rem sunt.\";i:1;s:53:\"Consequatur corrupti odit qui voluptates commodi aut.\";i:2;s:56:\"Perspiciatis recusandae quibusdam sit minima illo magni.\";i:3;s:45:\"Odio qui ex fugiat doloribus sit quo ab iure.\";i:4;s:46:\"Ea repellat facilis voluptas omnis aut nam ut.\";i:5;s:27:\"Quasi sunt molestias natus.\";i:6;s:14:\"Ex aut ut eum.\";}', 10, 0, 3, '306.518353', '424.518353', '313.518353', '2021-06-26 00:04:00', '2021-07-16 00:04:00', '632.00', 1, '2021-06-24 00:04:00', 1, 'tempora-modi-commodi-enim-vel-iusto-nulla-iusto', 'a:3:{i:0;i:16;i:1;i:39;i:2;i:42;}', 'Ut sit occaecati rerum dolores.', 'Dodo. Then they both sat silent and looked at Alice. \'It goes on, you know,\' the Mock Turtle: \'crumbs would all wash off in the pool, and the poor little feet, I wonder who will put on his.', 0, 1, NULL, '2021-06-26 00:04:18', '2021-06-16 00:04:18'),
(34, 1, 'Perspiciatis quibusdam esse qui rerum.', NULL, 8, 'Wilkinson Group', 5, 'quia', 'Refurbished', 'Lobster Quadrille, that she might as well be at school at once.\' However, she got used to it!\' pleaded poor Alice in a fight with another dig of her ever getting out of a book,\' thought Alice to.', 'Doloremque et ut saepe est. Ut culpa eum voluptate ut facilis. Ex magnam dolorem recusandae molestias et et. Eaque facere excepturi sint error. Sit animi ipsa eum necessitatibus distinctio voluptas dolorum ut. Dolores et consequuntur non mollitia. Esse provident veritatis animi. Repudiandae ullam nisi praesentium assumenda suscipit suscipit rerum sed. Et consequatur id et. Id aut officia eveniet est. Sint cumque sed repellat sint eligendi aperiam. Incidunt et quia non magni. Tenetur fugit excepturi explicabo. Dignissimos numquam dolorum nihil illo et facilis. Numquam nostrum cupiditate saepe placeat dolor. Impedit nihil libero quibusdam commodi culpa voluptatem. Repellendus culpa debitis eos sint eos illum. Et saepe quaerat distinctio praesentium quidem debitis voluptates. Aut fugit ipsum id. Perferendis modi qui beatae est aut quaerat quo. Amet omnis eaque dolores ullam dolor ut numquam. Quidem et cum adipisci quis consequatur occaecati consequuntur velit. Qui earum ab tempore nisi rerum ab tempore. Fugiat occaecati provident illum. Sunt et quis a et. Qui ea qui laudantium. Quo fugiat non quidem sed fuga et nisi. Eligendi eum asperiores nisi quia harum voluptatem est. Qui accusantium rem odit id sit earum quae. Et non sit eum voluptatum et aliquid voluptatem. Eaque asperiores consequatur quo architecto et ab. Voluptatibus et ex doloremque. Et officia cum commodi eaque voluptatibus deserunt nesciunt magnam.', 'a:7:{i:0;s:60:\"Est sint eum quasi voluptatem deserunt corrupti consectetur.\";i:1;s:52:\"Saepe deleniti accusamus dolore quidem quam numquam.\";i:2;s:30:\"Et dolores soluta eaque sequi.\";i:3;s:31:\"Est illo consequuntur omnis et.\";i:4;s:33:\"Ipsa minima rem laborum pariatur.\";i:5;s:40:\"Reiciendis rerum maiores qui aut ab qui.\";i:6;s:36:\"Suscipit doloribus maiores qui sint.\";}', 25, 0, 3, '317.400000', '434.400000', NULL, '2021-06-26 00:04:00', '2021-07-17 00:04:00', '1693.00', 0, '2021-06-23 00:04:00', 1, 'cupiditate-unde-recusandae-voluptates-ratione', 'a:2:{i:0;i:5;i:1;i:31;}', 'Aspernatur non aut similique fuga id.', 'My notion was that you couldn\'t cut off a bit afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe you do either!\' And the Eaglet bent down its head to keep herself from being.', 0, 1, NULL, '2021-06-26 00:04:18', '2021-06-14 00:04:18'),
(35, 2, 'Iusto praesentium quas iure ipsum ea quia.', NULL, 3, 'Tromp-Osinski', 3, 'quisquam', 'New', 'At this moment the King, looking round the court and got behind Alice as she could for sneezing. There was no more of it in the distance would take the place of the shepherd boy--and the sneeze of.', 'Voluptatem facilis nihil nisi. Repellat explicabo autem dolorem ut placeat excepturi rerum. Voluptatem rerum iusto quo qui ex sint recusandae. Alias aut ratione aut exercitationem rerum. Rerum natus corrupti in consequatur qui quis. Maxime voluptate quo et qui. Qui eum praesentium non quia. A dolorem aliquam voluptas quia perspiciatis ut. Dolorum et veritatis provident quidem sit nihil modi. Ex dolor earum quo est. Itaque et facere ullam quaerat. Cupiditate et qui nisi ab tempore. Incidunt cupiditate ad quis magni. Ex occaecati illo cum vero in eum incidunt. Quisquam eligendi sit velit enim incidunt. Illo nobis facilis odio rem. Voluptatem quasi deleniti enim ea. Libero magnam id fuga quis voluptas aliquam quibusdam. Sed ut non quis nostrum quos optio temporibus. Et magnam consectetur impedit ipsa enim vero omnis. Consequatur beatae qui temporibus eius quia. Quae labore ullam qui sint. Incidunt culpa beatae blanditiis eius unde voluptas explicabo. Nostrum sit sequi excepturi. Magnam dolor dolor temporibus pariatur. Aut inventore provident consequatur corrupti ex. Non aut maiores molestias eos et. Est optio rerum aliquid ut nemo cum earum. Temporibus fugiat vel eius quis saepe ut voluptatem. Sed sed est enim repellendus possimus rerum. Voluptate voluptas reprehenderit iste nesciunt itaque deleniti. Et hic laudantium repellendus qui quia libero. Tenetur molestias magni nihil.', 'a:7:{i:0;s:51:\"Blanditiis perspiciatis doloribus nobis laboriosam.\";i:1;s:26:\"Culpa omnis autem hic rem.\";i:2;s:46:\"Rerum sint suscipit consectetur a consequatur.\";i:3;s:27:\"Est ullam ut aut excepturi.\";i:4;s:46:\"Doloremque corporis voluptatem aut nisi dicta.\";i:5;s:34:\"Reprehenderit qui rem et eum quis.\";i:6;s:36:\"Ducimus eaque sed amet et inventore.\";}', 25, 0, 3, '293.815122', '383.815122', '333.815122', '2021-06-26 00:04:00', '2021-07-14 00:04:00', '1193.00', 1, '2021-06-23 00:04:00', 1, 'consequatur-magni-odit-numquam-minima', 'a:2:{i:0;i:13;i:1;i:25;}', 'Nemo repellendus aut nisi asperiores qui.', 'Footman remarked, \'till tomorrow--\' At this moment the King, \'that saves a world of trouble, you know, as we were. My notion was that she was shrinking rapidly; so she went on so long since she had.', 1, 1, NULL, '2021-06-16 00:04:18', '2021-06-18 00:04:18'),
(36, 1, 'Aut minima sunt consequatur dolores sed ad.', NULL, 5, 'Grimes-Wisoky', 3, 'laudantium', 'Used', 'However, at last came a little way forwards each time and a long way. So they went up to her very much what would be of very little way forwards each time and a Long Tale They were indeed a.', 'Odit provident consectetur aspernatur distinctio. A temporibus voluptates minus omnis eos sed. Ullam dignissimos dolores dolor sunt saepe distinctio veritatis. Dolorem et laborum alias velit omnis. Sed ullam deleniti ea molestiae. Deleniti autem fugit architecto cumque nemo. Non alias tempora temporibus dolores sint eaque est. Et enim facilis dolorem quod autem nam rem. Qui porro veritatis maiores reiciendis eos illo est. Sint nisi et magni voluptatum quia blanditiis esse. Quaerat recusandae cupiditate autem. Id debitis rerum doloribus eligendi. Dolorem debitis at quam tenetur. Porro aut modi adipisci. Molestiae non officiis repudiandae sequi quibusdam magni suscipit. Quos fuga vel quo aut tenetur soluta molestiae. Sunt ut et vel cupiditate. Accusantium et tenetur ab tempora omnis id. Voluptatem accusantium natus ad ab. Rerum recusandae error necessitatibus est aut. Temporibus et quaerat nesciunt sed. Aut in est officia repellat qui sapiente. Eum aut incidunt inventore aut perspiciatis assumenda. Magnam ad saepe nihil quo recusandae quo velit qui. Dolores illum deserunt voluptatum necessitatibus. Aut maxime nulla quaerat. Culpa et modi harum aliquid. Omnis provident vel ducimus consectetur nemo sint. Qui veniam doloribus reiciendis odio nesciunt et. Tempora vel tenetur voluptates. Praesentium assumenda alias est rerum et voluptate. Officia eius ab aut et excepturi.', 'a:7:{i:0;s:20:\"Est nisi iure harum.\";i:1;s:43:\"Beatae odit perferendis quae velit commodi.\";i:2;s:52:\"Minima sed provident est autem cum maiores possimus.\";i:3;s:20:\"Aut commodi amet et.\";i:4;s:32:\"Alias eos sit eius est sapiente.\";i:5;s:43:\"Nihil provident sint tenetur est molestiae.\";i:6;s:26:\"Corrupti quia qui quo aut.\";}', 14, 0, 3, '373.926361', '454.926361', NULL, '2021-06-26 00:04:00', '2021-06-29 00:04:00', '1252.00', 1, '2021-06-23 00:04:00', 1, 'itaque-autem-voluptatem-quo-eum', 'a:2:{i:0;i:26;i:1;i:37;}', 'Numquam dolorem consectetur quae accusantium.', 'Alice, and, after folding his arms and frowning at the Mouse\'s tail; \'but why do you know about it, you know--\' \'What did they live at the top of his great wig.\' The judge, by the English, who.', 0, 1, NULL, '2021-06-25 00:04:18', '2021-06-12 00:04:18');
INSERT INTO `inventories` (`id`, `shop_id`, `title`, `warehouse_id`, `product_id`, `brand`, `supplier_id`, `sku`, `condition`, `condition_note`, `description`, `key_features`, `stock_quantity`, `damaged_quantity`, `user_id`, `purchase_price`, `sale_price`, `offer_price`, `offer_start`, `offer_end`, `shipping_weight`, `free_shipping`, `available_from`, `min_order_quantity`, `slug`, `linked_items`, `meta_title`, `meta_description`, `stuff_pick`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(37, 2, 'Sunt beatae sunt ut ea.', NULL, 13, 'Stroman-Frami', 3, 'quasi', 'Refurbished', 'You see the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice a little nervous about it while the Dodo in an undertone to the beginning again?\' Alice ventured to taste.', 'Molestiae quae minima dolorem adipisci fuga ea. Officia error nemo nobis doloremque perferendis et voluptates. Sequi sed fugiat dicta odit vitae. Et vel voluptatibus reiciendis autem quia sint molestias. Quia exercitationem aut velit perspiciatis laborum commodi. Saepe nemo ut impedit laboriosam nemo. Ducimus vero non earum laborum enim. Consequuntur sed ut ad dolor vero. Qui quibusdam placeat voluptatem molestiae. Molestias aperiam fugiat iste rerum. Iusto dolor aperiam sapiente itaque nihil voluptates fuga nobis. Quaerat illum nesciunt veniam eligendi consequatur. Ut exercitationem nemo provident voluptatum similique. Quis sequi sit aut quos rerum dolorem cum in. Tempora non qui repudiandae perferendis animi. Deleniti velit consequatur ut. Omnis aut possimus mollitia consequatur aut ut. Nam hic voluptatum ipsum sit voluptas non. Assumenda quasi nemo quia aut ea aut odio. Iusto voluptatem enim sit aperiam nihil cupiditate minus. Et eos laborum eaque qui. Repudiandae eveniet est quia consequatur fugiat. Earum dignissimos omnis quae ea. Sunt est velit neque libero. Rerum quo doloremque sit voluptate at. Unde labore vel quis eos. Maiores ab placeat velit voluptatum. Ea labore ullam architecto molestiae est officia. Aut atque debitis autem. Iste assumenda ad eos ipsam dolores voluptatem magni temporibus. Quasi recusandae omnis perferendis sequi modi. In et tempore non laborum alias natus. Consequuntur sint rem ipsum voluptatem consequatur praesentium aut.', 'a:7:{i:0;s:39:\"Dolores non ut qui commodi et est quos.\";i:1;s:36:\"Consectetur qui autem voluptatem et.\";i:2;s:46:\"Saepe illo est et occaecati libero voluptatem.\";i:3;s:61:\"Voluptates accusamus non possimus praesentium aut quas ut ut.\";i:4;s:29:\"Corrupti sint unde sequi sit.\";i:5;s:60:\"Quia sit similique perspiciatis minima est quidem porro aut.\";i:6;s:42:\"Voluptatem amet suscipit autem et impedit.\";}', 68, 0, 3, '172.344000', '309.344000', '211.344000', '2021-06-26 00:04:00', '2021-07-02 00:04:00', '1558.00', 1, '2021-06-25 00:04:00', 1, 'impedit-non-eos-quo-velit-corporis-ea-voluptas-est', 'a:2:{i:0;i:3;i:1;i:31;}', 'Porro fuga repellat consequatur exercitationem assumenda voluptas vel eius.', 'The baby grunted again, so violently, that she had peeped into the air. She did not sneeze, were the verses on his spectacles and looked at Alice, as she spoke. Alice did not dare to laugh; and, as.', 1, 1, NULL, '2021-06-11 00:04:18', '2021-06-24 00:04:18'),
(38, 1, 'Facere ipsum minus earum itaque voluptate provident.', NULL, 13, 'Wilkinson Group', 3, 'cum', 'Used', 'Owl, as a cushion, resting their elbows on it, (\'which certainly was not much surprised at this, that she had to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a natural way. \'I thought.', 'Voluptatum autem accusantium dolor et atque voluptate voluptas. Nam unde autem voluptas aut ut temporibus quos quia. Esse aliquam dolores adipisci cumque qui voluptatem. Qui itaque id sequi totam ipsa quia. Qui eos voluptas et in quasi laborum. Nulla vitae quae aperiam eum amet aut. Enim voluptas nesciunt esse velit. Commodi repudiandae veritatis inventore dolores sed minus. Maiores reprehenderit quo inventore incidunt nihil. Eius sit numquam nesciunt voluptatem facilis quia nihil. Libero quia tempora accusantium voluptatem neque aut ab. Praesentium voluptatem molestias non eveniet. Impedit natus sint ex. Non autem quasi sed non. Aspernatur illo ea consectetur nemo itaque quae qui. Nam numquam aut enim asperiores soluta ea maiores. Et qui rerum saepe placeat delectus voluptate repellendus nulla. Temporibus est pariatur nam voluptatem. Non labore non architecto sit mollitia provident. Architecto eligendi voluptates sit voluptatibus est. Quasi est aliquam magnam impedit omnis eos doloribus quibusdam. Dicta corporis aut laborum. Incidunt mollitia natus ducimus est dolores sit. Maiores voluptas minima consequatur quaerat minima reiciendis quam itaque. Omnis et natus quis praesentium eos quo. Molestiae esse aperiam sed ut illo. Consequatur incidunt soluta nihil ex non sunt neque. Corporis velit alias et fugit maxime facere consectetur. Magnam molestiae esse est adipisci labore libero velit. Tempore rerum officia impedit quo. Sit hic qui repudiandae.', 'a:7:{i:0;s:44:\"Dicta tempora et totam aut aut natus non in.\";i:1;s:56:\"Minima quisquam voluptas esse dignissimos voluptas quia.\";i:2;s:45:\"Ut quia distinctio aliquam repellat porro ab.\";i:3;s:37:\"Natus voluptatum enim eaque officiis.\";i:4;s:50:\"Et deleniti cupiditate nulla voluptate reiciendis.\";i:5;s:47:\"Possimus at sint voluptas beatae totam impedit.\";i:6;s:23:\"Est esse voluptas quia.\";}', 32, 0, 3, '295.353450', '350.353450', NULL, '2021-06-26 00:04:00', '2021-07-09 00:04:00', '204.00', 0, '2021-06-25 00:04:00', 1, 'aperiam-similique-quod-consectetur-quaerat', 'a:2:{i:0;i:10;i:1;i:27;}', 'Velit et eos autem quo cumque accusamus.', 'Alice was too slippery; and when she caught it, and on it except a tiny golden key, and Alice\'s first thought was that she was small enough to drive one crazy!\' The Footman seemed to think that very.', 0, 1, NULL, '2021-06-11 00:04:18', '2021-06-11 00:04:18'),
(39, 2, 'Similique ullam quae velit voluptas accusamus explicabo.', NULL, 1, 'Stroman-Frami', 4, 'sed', 'New', 'I never understood what it was: at first she would have done that, you know,\' Alice gently remarked; \'they\'d have been changed for any lesson-books!\' And so it was an old conger-eel, that used to.', 'Quas enim consectetur sed. Impedit fugit illo eius architecto occaecati quae tempore. Omnis rerum sed iusto saepe odit voluptatem. Minima consequatur itaque laboriosam rerum aut impedit harum pariatur. Aspernatur ad aut aut odit nulla. Sapiente consequuntur sed voluptas aut consequatur et voluptatem. Doloremque hic ipsum dicta optio. Sequi quo eligendi aperiam aperiam beatae maiores. Et mollitia et aut sed ea eum. Veniam odio corrupti dicta dolore commodi. Odio labore ullam nemo nemo facilis minima. Voluptas saepe delectus quo eos dolores. Ipsum aspernatur nobis molestiae quo. Cumque odio repudiandae atque minima. Enim mollitia magni voluptatem quo possimus provident voluptas. Nobis qui non atque nesciunt error minima. Voluptatem ipsa minima tempore excepturi pariatur enim nihil. Et quis aspernatur nam ratione. Animi repudiandae eaque corrupti doloremque. Consequuntur magnam similique culpa qui et sit. Cupiditate vero excepturi cum voluptates saepe autem. Aut ipsam qui et rerum. Aut ipsa eius inventore sed cumque laborum. Unde fugit asperiores commodi cupiditate voluptatem ad. Ut sed molestias at recusandae facere. Harum et molestiae unde incidunt nobis minima. Sapiente voluptatem sed voluptas qui asperiores. Consequatur non in dolore odio. Possimus in dolorem aut. Et ipsa voluptas ullam quo sit quis esse. Ducimus veritatis aut soluta rerum. Et vitae optio doloribus ut. Consequatur distinctio eaque dolorum et. Dolor recusandae eum hic aspernatur nobis odit qui.', 'a:7:{i:0;s:43:\"Et nulla dignissimos velit tempora nostrum.\";i:1;s:38:\"Provident voluptas adipisci non dolor.\";i:2;s:36:\"Officiis minima delectus ut aliquid.\";i:3;s:40:\"Reiciendis fuga voluptas sunt odio odit.\";i:4;s:50:\"Iste quo blanditiis quis doloribus velit voluptas.\";i:5;s:35:\"Sunt maiores sit aliquid voluptate.\";i:6;s:39:\"Ullam maiores aperiam autem et qui rem.\";}', 37, 0, 3, '331.818232', '512.818232', '347.818232', '2021-06-26 00:04:00', '2021-07-15 00:04:00', '1896.00', 0, '2021-06-25 00:04:00', 1, 'sed-ipsa-eveniet-consequatur-rerum', 'a:3:{i:0;i:14;i:1;i:15;i:2;i:17;}', 'Laboriosam nihil fuga nihil minus delectus dolores.', 'Alice. One of the accident, all except the Lizard, who seemed to think about it, so she went on, \'that they\'d let Dinah stop in the distance, and she tried hard to whistle to it; but she remembered.', 1, 1, NULL, '2021-06-18 00:04:18', '2021-06-23 00:04:18'),
(40, 1, 'Omnis eligendi quo excepturi.', NULL, 6, 'Corwin, Bins and Herzog', 2, 'dolorem', 'Refurbished', 'Queen: so she began nibbling at the end of half an hour or so there were any tears. No, there were three gardeners instantly threw themselves flat upon their faces. There was nothing on it (as she.', 'Corrupti quia at reiciendis reprehenderit voluptatum earum. Iste natus sunt voluptate sit dolores sit. Corporis ea sequi et molestiae. Qui et qui provident tempore. Est consequatur pariatur enim omnis ducimus vero. Voluptatum eaque ut omnis autem ut quibusdam quam. Modi consectetur eum et et ut sit. Fuga aliquid cumque temporibus tempore corporis omnis ad. Quam quia et quaerat minus omnis. Laboriosam molestiae dolorem perspiciatis maiores. Consequatur laboriosam laudantium voluptatem sequi perspiciatis quis dolores. Voluptatibus eos labore iste enim. Quis omnis illum vel expedita beatae qui vero atque. Et sint quasi doloremque. Et debitis ut ipsam iusto voluptas optio itaque. Ullam maxime possimus vitae eum autem. Ut omnis est aut quia. Excepturi qui iusto et porro. Iusto veritatis dignissimos ea et sit quia. Perspiciatis et ratione amet atque. Aperiam quo dolore dolorem unde ut. Quisquam qui in hic aut omnis. Consequatur doloribus magni doloribus. Quia nulla impedit doloribus sed. Voluptatem accusantium molestias voluptas nulla totam repudiandae magnam possimus. Facilis tenetur autem et nihil illum qui minus. Sunt qui cumque ea. Saepe recusandae facere quia ut ut modi. Eveniet saepe corporis fugit eaque. Similique sint asperiores incidunt est. Ipsam aut magnam sed nisi perferendis molestias. In vel dignissimos distinctio sit. Omnis impedit molestiae dolorem provident quia maiores quia. Numquam vel optio maiores doloremque.', 'a:7:{i:0;s:63:\"Soluta est autem quas molestiae dolorum voluptatem quis minima.\";i:1;s:41:\"Aliquam illum dolor incidunt fugiat enim.\";i:2;s:35:\"Maxime sunt et deleniti totam nisi.\";i:3;s:34:\"Dolor eius nulla ea explicabo est.\";i:4;s:31:\"Laboriosam est est eum nostrum.\";i:5;s:62:\"Deleniti et recusandae ipsum fuga nihil excepturi perferendis.\";i:6;s:38:\"Occaecati similique fuga amet dolores.\";}', 32, 0, 3, '393.430000', '534.430000', '418.430000', '2021-06-26 00:04:00', '2021-07-04 00:04:00', '397.00', 0, '2021-06-24 00:04:00', 1, 'vero-reprehenderit-sit-tempora-quos-nostrum-dignissimos-aut-aperiam', 'a:2:{i:0;i:0;i:1;i:36;}', 'Dicta quaerat accusantium et aut.', 'I\'m I, and--oh dear, how puzzling it all came different!\' the Mock Turtle in the distance, and she thought it over here,\' said the Hatter grumbled: \'you shouldn\'t have put it more clearly,\' Alice.', 0, 1, NULL, '2021-06-20 00:04:18', '2021-06-15 00:04:18'),
(41, 1, 'Porro sint numquam dignissimos non.', NULL, 23, 'Tromp-Osinski', 1, 'vel', 'Refurbished', 'Little Bill It was the Rabbit was no more to come, so she turned away. \'Come back!\' the Caterpillar took the hookah out of sight, he said in an impatient tone: \'explanations take such a hurry to.', 'Suscipit qui dolore autem saepe temporibus quae. Ipsa voluptas qui ipsam quae consequatur quia repellendus. Vel aut et accusamus nesciunt aut voluptate pariatur. Pariatur est nihil voluptates ut quis qui nemo. Et culpa consequuntur facilis ipsam doloremque accusamus odio odit. Quasi fugit doloribus tempore ut vitae at. Dolore iste ratione laborum eum mollitia impedit perspiciatis asperiores. Qui molestias nihil optio repudiandae. Sint repellat sed et neque et earum. Reiciendis aut enim debitis cum fugit aperiam. Veritatis hic facere dolores molestiae nisi officia nihil. Nobis hic qui error quisquam quia cupiditate magni. Autem sunt vero non quaerat non labore. Maiores corrupti neque modi quasi accusamus culpa ipsam. Vel vel dolores iusto ullam animi perspiciatis. Ab voluptas asperiores velit. Eaque inventore hic est quia adipisci voluptates. Mollitia excepturi quia sapiente ut eos inventore. Eos enim omnis totam minima enim in cumque totam. Sit molestiae dicta magnam et aperiam quia quas nisi. Labore aliquam culpa et commodi quia consequatur. Iusto dolores asperiores qui eos soluta tempore. Omnis optio nisi eum ut harum iste. Eligendi tempore eum odit sit. Quia ea rerum reprehenderit inventore voluptatibus sed accusamus. Ad voluptatem architecto mollitia maiores. Fugit et consequuntur at quos. In et blanditiis facere non. Adipisci fuga et aliquid est et. Accusamus hic vitae quibusdam rerum. Consequatur modi id veniam suscipit perspiciatis.', 'a:7:{i:0;s:58:\"Expedita quia in commodi velit optio quibusdam reiciendis.\";i:1;s:44:\"Commodi laborum culpa error fugit aut illum.\";i:2;s:55:\"Illo non eum dolores commodi minus aut commodi ducimus.\";i:3;s:25:\"Fugiat ipsum omnis culpa.\";i:4;s:39:\"Eum est similique ratione laborum iste.\";i:5;s:54:\"Dignissimos debitis impedit voluptatum ratione et qui.\";i:6;s:49:\"Quam veniam error nisi consequuntur tempore sunt.\";}', 19, 0, 3, '310.120000', '439.120000', '332.120000', '2021-06-26 00:04:00', '2021-06-29 00:04:00', '1042.00', 0, '2021-06-24 00:04:00', 1, 'id-fuga-rem-omnis-sed', 'a:3:{i:0;i:4;i:1;i:10;i:2;i:23;}', 'Dolores aspernatur impedit hic.', 'Alice herself, and shouted out, \'You\'d better not talk!\' said Five. \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I don\'t know where Dinn may be,\' said the Mock Turtle.', 1, 1, NULL, '2021-06-19 00:04:18', '2021-06-24 00:04:18'),
(42, 2, 'Assumenda inventore voluptatem enim ea modi nam quasi.', NULL, 1, 'Wilkinson Group', 1, 'et', 'Used', 'Oh, my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have done that, you know,\' said the Cat went on, without attending to her; \'but those.', 'Facere voluptatum distinctio officia aliquid. Vel natus ea rerum accusamus voluptas alias. Non in nihil dolorem quis. Reiciendis consequatur tempora illum libero nihil quod nobis ea. Odit dolorem fugiat fuga nesciunt laborum. Voluptas quod et ex placeat aut. Sunt nulla laudantium praesentium numquam sint officiis ullam. Ut maiores et sed. Ullam praesentium corrupti neque expedita consequatur. Quis libero rerum minima quia hic quo. Impedit molestiae eveniet libero amet qui quia optio doloremque. Dolore odit id perspiciatis dolorem veniam dicta ea. Id eius dolore exercitationem et eum architecto sit. Fugit non eos eveniet odio. Dolorem ipsa non repudiandae ut sed. Nihil ipsam fugit minima dolorem tempore amet tempore. Deserunt voluptate asperiores veniam sunt. Totam temporibus vel inventore. Voluptas temporibus totam dolorum et illo. Et repudiandae iste possimus dolore molestias culpa labore. Nihil tempora qui voluptas maiores sit animi similique. Ut laudantium id inventore ut consequuntur. Suscipit dolores repellendus alias et sed impedit neque sit. Laborum vero quod voluptatem veniam voluptas mollitia doloribus. Aperiam rem ut laborum voluptatem culpa. Velit quas sit dolorum. Sit aut amet esse. Consectetur ducimus quod consectetur quos dolores nostrum perferendis. In laboriosam quae debitis voluptas. Voluptatem dolores quia esse sint. Sed et qui aut cupiditate officiis porro maxime.', 'a:7:{i:0;s:43:\"Quia illum expedita voluptatum praesentium.\";i:1;s:52:\"Sint qui voluptates provident et quia nihil dolorum.\";i:2;s:47:\"Quod quaerat cumque ducimus enim fugit laborum.\";i:3;s:48:\"Iste omnis dolorem ea similique quia voluptatem.\";i:4;s:41:\"Voluptatibus sapiente sunt id a est nisi.\";i:5;s:36:\"Unde dicta omnis sint et quia harum.\";i:6;s:50:\"Nulla vero quia minima accusantium aut et nostrum.\";}', 9, 0, 3, '194.049600', '278.049600', '199.049600', '2021-06-26 00:04:00', '2021-07-17 00:04:00', '1308.00', 0, '2021-06-24 00:04:00', 1, 'numquam-recusandae-quibusdam-quo-nobis-totam-labore-fuga', 'a:2:{i:0;i:6;i:1;i:41;}', 'Quod quia aut molestias impedit vitae beatae provident.', 'Mock Turtle in the distance. \'And yet what a wonderful dream it had VERY long claws and a fan! Quick, now!\' And Alice was beginning to see what I eat\" is the same thing as \"I eat what I say--that\'s.', 1, 1, NULL, '2021-06-16 00:04:18', '2021-06-17 00:04:18'),
(43, 2, 'Laboriosam aut voluptatum id in.', NULL, 22, 'Stroman-Frami', 2, 'debitis', 'New', 'Duchess, digging her sharp little chin. \'I\'ve a right to grow up again! Let me see: that would be very likely true.) Down, down, down. Would the fall was over. Alice was not quite like the three.', 'Voluptatum non quia sint veniam aut unde. Distinctio et sed eaque consectetur. Ut quam illo debitis in sit. Aut libero qui quia voluptatem. Blanditiis qui adipisci nam maiores sed assumenda blanditiis architecto. Quis voluptatum adipisci ad. Dolor quia quidem necessitatibus sint. Magnam quas ab aut et. Aut nobis sint omnis est provident. Non corporis deserunt illo ad nisi sed tenetur. Repudiandae adipisci nobis expedita molestiae hic harum. Dolorum consequatur vero vitae nihil nulla exercitationem eaque. Nihil provident delectus expedita quos est. Sunt doloremque accusantium iure excepturi fuga. Eaque necessitatibus voluptatem omnis dolorem laborum nobis nam. Repudiandae necessitatibus quis est qui. Amet a quisquam sint officia sit ex repellendus. Placeat sit eius eos. Incidunt eveniet voluptate aperiam eveniet fugit beatae doloremque. Ea laboriosam voluptates repellendus odio in dolores. Inventore deserunt atque aut facilis blanditiis ex. Et cupiditate dignissimos eum dolores doloremque. Qui ipsam vel ab ex explicabo. Ut qui facere accusantium dolorem. Dolorem qui non fugiat repellendus quidem. Animi consequatur eaque eveniet voluptatem nulla quaerat dolorum ducimus. Id similique velit rerum sit accusantium omnis. Dicta incidunt rerum quibusdam cupiditate asperiores velit quidem. Adipisci nostrum beatae unde sunt ab. Nobis minima hic sed tempora mollitia. Consequatur ut alias eligendi. Libero ut eaque alias in repellendus eum placeat.', 'a:7:{i:0;s:46:\"Eos fugiat porro id ad ab quis voluptas saepe.\";i:1;s:31:\"Et cupiditate quia dolore quia.\";i:2;s:64:\"Perferendis numquam aspernatur omnis et eveniet culpa quia sunt.\";i:3;s:21:\"Magni quidem sit est.\";i:4;s:29:\"Nihil ut illum et libero cum.\";i:5;s:56:\"Praesentium est molestiae aspernatur sunt in laboriosam.\";i:6;s:63:\"Rem saepe dignissimos dolores molestias debitis ducimus labore.\";}', 75, 0, 3, '266.840546', '317.840546', '311.840546', '2021-06-26 00:04:00', '2021-07-07 00:04:00', '944.00', 1, '2021-06-23 00:04:00', 1, 'quae-cupiditate-et-nisi-culpa-doloribus', 'a:2:{i:0;i:2;i:1;i:16;}', 'Architecto ea impedit voluptatem dicta aut in animi.', 'King: \'leave out that it would be the use of this sort in her life, and had just upset the week before. \'Oh, I know!\' exclaimed Alice, who was gently brushing away some dead leaves that lay far.', 0, 1, NULL, '2021-06-21 00:04:18', '2021-06-20 00:04:18'),
(44, 1, 'Magnam ipsam nesciunt aliquam iure dolorem.', NULL, 15, 'Hickle Inc', 3, 'ut', 'New', 'Miss, we\'re doing our best, afore she comes, to--\' At this moment Alice appeared, she was quite pleased to find that she was beginning very angrily, but the Gryphon as if he had a head could be NO.', 'Vero quas corporis ut inventore molestias doloremque. Cum voluptatum quis tempora iste doloribus maiores modi quas. Libero perferendis quia est nam voluptas. Perferendis laborum tempora dolor tempore. Aut vel aut fugit quis quia. Aperiam voluptatem voluptatem corrupti id fugit similique ab. Corrupti voluptatum sit non et omnis tenetur. Iure soluta magnam facere atque porro error assumenda. Quos exercitationem dolorum est ut eligendi libero. Impedit id dolorum sequi consequuntur repellat enim impedit fugit. Repudiandae quibusdam doloremque est dolorem fugiat aut. Omnis distinctio modi molestiae maxime voluptatem sunt neque totam. Harum unde dicta repellendus quos. Ut hic rem corporis aut temporibus distinctio. Aliquam dolores non aut dolorum. Nisi eligendi ut natus reiciendis quos aliquam accusamus. Est dolor provident est culpa sapiente id. Qui enim praesentium natus quis nam necessitatibus. Ut pariatur consequuntur quos. Tempore aut eius aut aspernatur dolor et. Reiciendis rerum voluptatem impedit laudantium officiis aut. Amet et iusto perspiciatis ab fugiat nulla aperiam. Et qui earum voluptates in quia facilis. Quo aperiam sint dolores dolor. Est explicabo numquam porro non. Deleniti a accusantium explicabo non facilis culpa. Sed eius nobis ullam. Ut est incidunt ratione porro repellat quos. Molestiae necessitatibus ea et autem.', 'a:7:{i:0;s:44:\"Ut natus commodi fuga at ea deserunt ut aut.\";i:1;s:60:\"Fuga repellat facere reiciendis recusandae neque eveniet et.\";i:2;s:62:\"Totam harum vel veniam repudiandae voluptatem consectetur qui.\";i:3;s:68:\"Quos ut expedita consequatur tempora voluptatem quibusdam fuga sunt.\";i:4;s:50:\"Consequatur vitae est modi hic ducimus magni iste.\";i:5;s:56:\"Dolor quod atque distinctio ut deleniti tenetur dolores.\";i:6;s:58:\"Provident doloribus fuga porro recusandae similique nihil.\";}', 72, 0, 3, '392.000000', '542.000000', '427.000000', '2021-06-26 00:04:00', '2021-07-17 00:04:00', '389.00', 0, '2021-06-23 00:04:00', 1, 'eos-dolorum-sed-eveniet-distinctio', 'a:3:{i:0;i:1;i:1;i:15;i:2;i:32;}', 'Corporis id ut excepturi ea ex officiis harum praesentium.', 'It means much the most curious thing I know. Silence all round, if you don\'t know the song, perhaps?\' \'I\'ve heard something splashing about in the sea. The master was an old crab, HE was.\' \'I never.', 1, 1, NULL, '2021-06-19 00:04:18', '2021-06-11 00:04:18'),
(45, 1, 'Debitis molestias maiores delectus porro.', NULL, 22, 'Tremblay Ltd', 2, 'omnis', 'Used', 'Duchess; \'and that\'s a fact.\' Alice did not at all know whether it was very hot, she kept fanning herself all the unjust things--\' when his eye chanced to fall a long breath, and till the puppy\'s.', 'Et sit sit repellat praesentium at. Nam ad doloribus veniam voluptatem. Non dignissimos velit aliquam sint. Rerum ipsa quis deleniti sed minus magnam consequatur. Reiciendis ut et velit. Non nobis maiores et praesentium non doloremque eos et. Labore doloribus et illum voluptate. Molestiae consequatur magnam quo vel. Sed ullam laborum alias perspiciatis distinctio sit et. Animi quibusdam repudiandae quam libero consequuntur sunt ea. Sint assumenda in debitis non. Recusandae rem eos vero vero earum voluptatem quia. Aut aut necessitatibus animi amet. A atque delectus voluptate tempora. Placeat est facere ut quod occaecati expedita voluptas facere. Natus praesentium occaecati sed eveniet qui atque et vel. Eaque reiciendis velit inventore sed quia totam. Quisquam voluptatibus odit quisquam est. Eligendi molestiae quas tempore aut fuga. Excepturi commodi vitae ea. Voluptas non natus officia asperiores dolor quia. Voluptatem nostrum eos labore et architecto nihil ea. At eligendi ut iure cupiditate saepe. Consequatur in illum et ut iure. Vel nihil sit tempore excepturi sit eveniet et debitis. Sed et cupiditate aliquid libero excepturi dolor. Earum autem quas reiciendis adipisci rerum quia. Ipsum eum error omnis ut minima qui consequuntur. Est ducimus qui quibusdam omnis a et quia. Voluptatem illum dolorum sint labore. Voluptatum aperiam sapiente et consequatur sint officiis blanditiis numquam.', 'a:7:{i:0;s:57:\"Sint sapiente architecto optio dicta et voluptas aliquid.\";i:1;s:38:\"Fugit temporibus explicabo blanditiis.\";i:2;s:40:\"Non est numquam nesciunt odit explicabo.\";i:3;s:38:\"Ea quas iure voluptatum et iure error.\";i:4;s:34:\"Sit illo id saepe dolorem dolorem.\";i:5;s:61:\"Reiciendis et saepe aspernatur dolorem debitis quae quo odio.\";i:6;s:57:\"Occaecati at qui aliquid laboriosam esse molestiae eaque.\";}', 53, 0, 3, '174.290000', '322.290000', '188.290000', '2021-06-26 00:04:00', '2021-07-05 00:04:00', '1609.00', 0, '2021-06-24 00:04:00', 1, 'eligendi-deleniti-hic-aut-porro-sint', 'a:2:{i:0;i:5;i:1;i:18;}', 'Excepturi est explicabo dolorum molestias asperiores.', 'I eat one of the cupboards as she went on. \'We had the door of the house till she was ever to get in?\' asked Alice again, in a tone of the officers of the sort!\' said Alice. \'Then you keep moving.', 1, 1, NULL, '2021-06-21 00:04:18', '2021-06-11 00:04:18'),
(46, 1, 'Cum ut voluptas ratione voluptates rem.', NULL, 24, 'Grimes-Wisoky', 4, 'suscipit', 'New', 'Alice soon began talking to him,\' the Mock Turtle in the window, I only wish people knew that: then they both sat silent for a little animal (she couldn\'t guess of what work it would like the.', 'Maxime corporis laudantium velit qui unde sed. Est temporibus et sapiente. Deleniti ipsam odit beatae vel aliquam voluptas. Dolorem ipsam enim vel molestiae. Ut expedita totam perspiciatis animi perspiciatis reprehenderit culpa. Culpa qui fuga eum vel harum ut ea. Commodi quae harum quaerat voluptatem maxime aspernatur voluptatem. Doloribus iste libero qui esse fuga a. Minima enim dolore aut quod a quibusdam. Temporibus maxime quia perspiciatis minus. Et molestias quasi mollitia dolore porro consectetur. Minima quidem veritatis eos nihil eaque modi. Architecto occaecati provident quos tempora dolorem voluptates. Quidem dolores nulla autem et ipsum distinctio nisi. Accusamus deleniti voluptatem quam ratione dolores nesciunt. Ducimus sed quas quo ea dolores. Dolorem quas nisi est sed. Non aut doloribus nihil hic. Non eum et aut qui optio reprehenderit ut autem. Maxime libero quibusdam explicabo quas qui odit et quisquam. Quo voluptatem sed est explicabo qui. Explicabo dicta veniam soluta nemo repellat. Labore ab voluptatem non reprehenderit maiores ea. Esse incidunt unde consequatur in. Distinctio optio consequuntur aut. Corrupti accusantium sunt natus voluptates et. Velit voluptates quod nihil blanditiis ut iste. Libero beatae dolor sed in aut. Eum ipsa eius officiis et sint. Repellendus quis animi eos quis alias. Voluptatem dolor voluptas autem et deleniti possimus recusandae adipisci. Et omnis aut quis dicta commodi voluptatum.', 'a:7:{i:0;s:58:\"Facilis minima voluptas fugiat repellendus et praesentium.\";i:1;s:47:\"Nesciunt dolorem mollitia aut eos maiores nisi.\";i:2;s:44:\"Dolor reprehenderit rerum praesentium rerum.\";i:3;s:60:\"Nobis velit perferendis quam vero doloremque exercitationem.\";i:4;s:24:\"Rerum ducimus ut beatae.\";i:5;s:61:\"Fugiat nisi perferendis quo cum nihil consectetur unde minus.\";i:6;s:39:\"Necessitatibus et in exercitationem et.\";}', 77, 0, 3, '151.696039', '240.696039', '196.696039', '2021-06-26 00:04:00', '2021-07-01 00:04:00', '1528.00', 1, '2021-06-23 00:04:00', 1, 'in-quo-ut-iste-necessitatibus-aliquam-voluptatem-voluptas', 'a:3:{i:0;i:17;i:1;i:23;i:2;i:40;}', 'Beatae qui voluptatem possimus amet laborum officia eos.', 'And she opened it, and yet it was neither more nor less than a rat-hole: she knelt down and saying to herself \'Suppose it should be free of them bowed low. \'Would you tell me,\' said Alice, and she.', 0, 1, NULL, '2021-06-18 00:04:18', '2021-06-16 00:04:18'),
(47, 2, 'Eligendi quam in possimus possimus.', NULL, 19, 'Tromp-Osinski', 1, 'eius', 'Refurbished', 'There\'s no pleasing them!\' Alice was so large a house, that she remained the same side of WHAT?\' thought Alice to herself. Imagine her surprise, when the Rabbit noticed Alice, as she was looking.', 'Ut velit doloremque et sit cumque. Delectus eius at aspernatur repudiandae magnam. Provident officia doloribus quos aut. Rerum repellat consequatur veniam et eum tempora sapiente. Neque aut sint esse omnis. Corporis sit incidunt doloremque et aspernatur assumenda libero. Aut omnis cum vitae nostrum est. Commodi occaecati totam laboriosam minima et ut et. Dolores eveniet modi voluptates fuga voluptas asperiores. Sed quia non consequatur quod similique iste est. Ut sit vel rerum corporis libero. Ut reprehenderit dicta provident consectetur. Enim pariatur ratione libero unde sed. Aliquid quis neque unde commodi et velit cum. Molestias blanditiis molestiae facilis vel non dolores nemo. Veritatis laboriosam maiores incidunt et necessitatibus. Est aut error illo quos incidunt aut quasi sed. Et eius numquam quia. Architecto adipisci at tempora rerum libero voluptatem quam nam. Molestias nisi quia ea error in. Sed aut ea molestias voluptatem. Magnam ipsum aliquam iste animi. Autem officia ratione quia commodi. Impedit consequatur laboriosam iusto ratione. Dolorum in repellendus incidunt fugit non ut. Qui eos in sed. Quae repellat quod odit. Quo adipisci vitae sed dolorum sint. Voluptatem culpa sunt nulla occaecati. Atque necessitatibus tempore aut consectetur quam veniam. Perspiciatis id reiciendis rerum soluta sit quas dolorem.', 'a:7:{i:0;s:46:\"Quasi error molestiae error nesciunt deleniti.\";i:1;s:38:\"Suscipit sint architecto aut sed odio.\";i:2;s:27:\"Et mollitia et qui aliquid.\";i:3;s:42:\"Cum quasi distinctio consequatur quisquam.\";i:4;s:36:\"Eos dolorem libero qui ut veritatis.\";i:5;s:47:\"Incidunt ut ad vitae amet vel dignissimos sunt.\";i:6;s:58:\"Adipisci quaerat officiis porro dignissimos facilis ea ea.\";}', 80, 0, 3, '361.161774', '417.161774', '374.161774', '2021-06-26 00:04:00', '2021-06-30 00:04:00', '1023.00', 1, '2021-06-25 00:04:00', 1, 'ea-sequi-quibusdam-ratione-quo-et', 'a:3:{i:0;i:0;i:1;i:19;i:2;i:48;}', 'Distinctio esse in rem laboriosam.', 'White Rabbit: it was good manners for her to carry it further. So she began again. \'I wonder what I could say if I was, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How.', 1, 1, NULL, '2021-06-13 00:04:18', '2021-06-26 00:04:18'),
(48, 1, 'Vero qui repellat reiciendis dolorem et.', NULL, 13, 'Cummings-Dach', 5, 'nemo', 'Used', 'THAT direction,\' the Cat in a very interesting dance to watch,\' said Alice, rather alarmed at the March Hare took the place of the ground.\' So she swallowed one of the jurymen. \'It isn\'t directed at.', 'Voluptatem aut vel veniam. Harum autem sit aut ut dolor ut alias. Accusamus id distinctio nemo ut sapiente. Harum ut vel voluptatem id numquam enim. Fugit porro eos explicabo. Eligendi ipsum voluptas est officia. Modi eum ducimus debitis est dolorem. Eveniet dolorum vel quia quae aut est. Quibusdam minus ullam qui cupiditate modi minus. Dolorum quae voluptatum eos quasi aut cumque odio. Nisi magni sed dolorum doloribus vitae. Id enim voluptatem quos ipsum laudantium temporibus. Libero magni in commodi et dolorum. Velit qui enim est et. Dolores fuga aspernatur dolor distinctio quibusdam. Et fugiat natus perferendis nobis. Suscipit alias blanditiis laudantium voluptas laboriosam iusto. Odio possimus id facilis explicabo. Aut aspernatur aut vero excepturi in rerum sit. Nobis qui laboriosam tempora culpa sit vel voluptas. Dignissimos perspiciatis sint qui voluptatem ad dolorem necessitatibus. Ut quisquam enim inventore suscipit nostrum nihil adipisci. Rem fuga est ut unde corrupti dolore ut. Veritatis enim ea distinctio. Iste sed soluta voluptatem enim a ducimus. Nobis itaque repellat nobis ut numquam quibusdam sed. Aut architecto odio cumque non numquam. Sunt est officia unde. Non ut dignissimos odio. At sint dolores et et libero ullam. Fugit eaque explicabo voluptatem non sunt quaerat dolor. Et quibusdam qui doloremque aut repellendus. Qui ratione facere molestiae tenetur modi expedita. Magnam et voluptates ipsam natus ut nobis. Et et aut omnis sed est amet aut aut.', 'a:7:{i:0;s:54:\"Repellendus earum voluptatem facilis quia totam vitae.\";i:1;s:34:\"Quis mollitia velit natus tempora.\";i:2;s:52:\"Ab perferendis labore et suscipit aut sed rem quasi.\";i:3;s:33:\"Eveniet soluta quo dolorem nihil.\";i:4;s:32:\"Quia quas qui ut dolorem maxime.\";i:5;s:61:\"Optio dolores dolorem quia eligendi autem aliquid fuga alias.\";i:6;s:52:\"Quidem quia modi facilis velit expedita dolor illum.\";}', 84, 0, 3, '170.290000', '246.290000', '195.290000', '2021-06-26 00:04:00', '2021-07-01 00:04:00', '656.00', 1, '2021-06-24 00:04:00', 1, 'voluptate-quae-fugiat-nihil-earum-amet', 'a:2:{i:0;i:7;i:1;i:22;}', 'Qui et sunt molestiae sit nisi architecto adipisci.', 'Where did they draw?\' said Alice, \'but I must have a trial: For really this morning I\'ve nothing to do: once or twice, and shook itself. Then it got down off the top with its eyelids, so he did,\'.', 1, 1, NULL, '2021-06-22 00:04:18', '2021-06-12 00:04:18'),
(49, 1, 'Reiciendis aut eveniet quos totam.', NULL, 29, 'Hickle Inc', 5, 'numquam', 'New', 'Hatter. \'You MUST remember,\' remarked the King, the Queen, turning purple. \'I won\'t!\' said Alice. \'Why, there they lay on the whole party swam to the Gryphon. \'Of course,\' the Dodo in an agony of.', 'Repellat blanditiis et suscipit enim ut est. Porro vel delectus enim omnis sed aut velit. Et quo tenetur a aut ullam facere magni. Vitae illum commodi est nihil neque voluptates eveniet sed. Sed animi nulla numquam illum sed magnam. Dolorem maxime provident earum deleniti. Repellat libero facere dignissimos occaecati qui numquam sit veritatis. Vero voluptas corrupti est officia sint possimus dolores in. Est est consequuntur consequatur. Vel quam tenetur laborum dolorem. Possimus vel distinctio debitis dolorem dolorem ut est. Neque ad quas aut cupiditate. Qui velit ducimus repellendus sit et minima quasi. Corrupti qui consequatur aliquid est ipsam voluptatem architecto. Nam ea in eveniet similique officiis est dolore accusamus. Unde omnis amet pariatur qui laudantium. Maxime expedita eligendi neque fugiat eos quos. Temporibus eum sequi numquam et incidunt rerum. Impedit veritatis consequatur aut optio voluptas repellendus incidunt. Dolores dolorum voluptatem error rerum est ut. Voluptatem voluptas omnis qui sint in cupiditate. Dolores quo blanditiis facere sed voluptatum id blanditiis. Natus in rerum magni quisquam aut incidunt. Dolor sed nihil et et perferendis ad ipsum voluptas. Qui ut aut et odio quae non. Reiciendis quisquam error sint mollitia. Et ab sint est repudiandae similique sit. Incidunt rerum quas voluptas qui earum. Perspiciatis exercitationem est consequatur. Dolor quia exercitationem doloribus porro.', 'a:7:{i:0;s:44:\"Sunt distinctio similique officia assumenda.\";i:1;s:45:\"Non magnam et quisquam dolorem iure ab vitae.\";i:2;s:31:\"Velit quia et quae cum illo et.\";i:3;s:35:\"Odit sunt dolor in odit laboriosam.\";i:4;s:48:\"Quaerat consequatur non et inventore sint sequi.\";i:5;s:57:\"Autem in explicabo nostrum similique sit est consequatur.\";i:6;s:52:\"Commodi aliquam esse mollitia dicta laboriosam amet.\";}', 54, 0, 3, '264.143008', '447.143008', NULL, '2021-06-26 00:04:00', '2021-07-05 00:04:00', '1642.00', 0, '2021-06-25 00:04:00', 1, 'voluptatibus-aliquam-beatae-tempore-et-eos', 'a:3:{i:0;i:29;i:1;i:37;i:2;i:41;}', 'Quo nihil placeat ullam dolorem deleniti ea.', 'Dodo could not possibly reach it: she could do, lying down on the shingle--will you come to the voice of the sort!\' said Alice. \'Exactly so,\' said Alice. \'Of course they were\', said the King, with.', 0, 1, NULL, '2021-06-24 00:04:18', '2021-06-11 00:04:18'),
(50, 2, 'Sint neque iste qui nihil sed.', NULL, 20, 'Heidenreich PLC', 5, 'voluptatem', 'Refurbished', 'Alice \'without pictures or conversations?\' So she set to work, and very soon finished off the cake. * * * * * * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice hastily.', 'Deserunt tempora et excepturi dolores aut inventore. Officiis sit ut est ipsa. Dolore omnis possimus omnis sint atque debitis autem nobis. Dignissimos consectetur labore pariatur saepe. Et velit et nam recusandae. Dolor architecto laborum ipsum. Eveniet et minus pariatur consequatur accusamus dolor. Ipsam et tempore sint in officiis et. Commodi nesciunt esse id at quo blanditiis. Rerum tenetur sit nemo voluptatem sit harum. Quas atque velit nulla quod. Iste magnam voluptatum odio. Ea neque ut non. Sit excepturi voluptatem et aut quas atque. Et rerum quidem qui asperiores reiciendis. Vel autem hic ab earum expedita perspiciatis voluptas. Facilis recusandae iusto voluptatem est ut quasi perferendis consequatur. In cumque pariatur rerum assumenda maxime laboriosam. Rerum sit quia nemo culpa aut magnam. Quam eos perspiciatis molestias quo omnis expedita id quia. Delectus nam molestiae praesentium eius. Omnis voluptatem repellat quo ut omnis cumque. Culpa laborum eaque cum voluptas vel voluptatem cupiditate. Quia quia voluptas vel corrupti. Voluptatem est quia in alias esse iure consequatur. Voluptates sunt excepturi assumenda rerum aut totam. Optio veniam qui cum occaecati dolorem. Sit laborum consectetur voluptatum id itaque et quis pariatur. Maiores veniam id non repellendus veniam. Facere velit sit aut natus voluptatum id illo. Unde eum vel nihil officiis qui reprehenderit. Quis placeat dolor est maxime.', 'a:7:{i:0;s:28:\"Numquam et dolores hic modi.\";i:1;s:34:\"Omnis ea omnis quo qui recusandae.\";i:2;s:55:\"Placeat sed cum vitae dolorem consequuntur natus nobis.\";i:3;s:42:\"Quasi voluptatem et ullam aut et corrupti.\";i:4;s:48:\"Voluptatem quia tempore quia ullam veritatis ad.\";i:5;s:40:\"Dolorem pariatur atque omnis voluptatem.\";i:6;s:39:\"Ut atque provident aut aliquid quaerat.\";}', 54, 0, 3, '340.661200', '507.661200', NULL, '2021-06-26 00:04:00', '2021-07-18 00:04:00', '248.00', 1, '2021-06-25 00:04:00', 1, 'ratione-harum-natus-est-dolor', 'a:2:{i:0;i:22;i:1;i:33;}', 'Laborum asperiores sed repudiandae provident architecto.', 'I can remember feeling a little bird as soon as look at it!\' This speech caused a remarkable sensation among the party. Some of the Queen\'s ears--\' the Rabbit actually TOOK A WATCH OUT OF ITS.', 1, 1, NULL, '2021-06-22 00:04:18', '2021-06-15 00:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_packaging`
--

CREATE TABLE `inventory_packaging` (
  `packaging_id` int(10) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `tax` decimal(8,2) DEFAULT NULL,
  `card_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `php_locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '100',
  `rtl` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `php_locale_code`, `language`, `order`, `rtl`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'en', 'en_US', 'English', 1, 0, 1, NULL, '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(2, 'es', 'es_ES', 'Spanish', 2, 0, 0, NULL, '2021-06-26 00:03:18', '2023-03-09 14:37:52'),
(3, 'fa', 'fa_IR', 'Persian', 3, 1, 0, NULL, '2021-06-26 00:03:18', '2023-03-09 14:38:00'),
(4, 'bn', 'bn_BD', 'Bangla (Bangali)', 4, 0, 0, NULL, '2021-06-26 00:03:18', '2023-03-09 14:38:09'),
(5, 'ar', 'ar_AE', 'Arabic', 100, 1, 1, NULL, '2021-06-26 00:03:18', '2023-03-09 14:37:44'),
(6, 'zh', 'zh_CN', 'Chinese', 100, 0, 0, NULL, '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(7, 'hi', 'hi_IN', 'Hindi', 100, 0, 0, NULL, '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(8, 'da', 'da_DK', 'Danish', 100, 0, 0, NULL, '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(9, 'de', 'de_DE', 'German', 100, 0, 0, NULL, '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(10, 'el', 'el_GR', 'Greek', 100, 0, 0, NULL, '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(11, 'fr', 'fr_FR', 'French', 100, 0, 0, NULL, '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(12, 'he', 'he_IL', 'Hebrew', 100, 1, 0, NULL, '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(13, 'nl', 'nl_NL', 'Dutch', 100, 0, 0, NULL, '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(14, 'no', 'no_NO', 'Norwegian', 100, 0, 0, NULL, '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(15, 'pt', 'pt_BR', 'Portuguese', 100, 0, 0, NULL, '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(16, 'ru', 'ru_RU', 'Russian', 100, 0, 0, NULL, '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(17, 'sv', 'sv_SE', 'Swedish', 100, 0, 0, NULL, '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(18, 'th', 'th_TH', 'Thai', 100, 0, 0, NULL, '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(19, 'tr', 'tr_TR', 'Turkish', 100, 0, 0, NULL, '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(20, 'id', 'id_ID', 'Indonesian', 100, 0, 0, NULL, '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(21, 'vi', 'vi_VN', 'Vietnamese', 100, 0, 0, NULL, '2021-06-26 00:03:18', '2021-06-26 00:03:18'),
(22, 'uk', 'uk_UA', 'Ukrainian', 100, 0, 0, NULL, '2021-06-26 00:03:18', '2021-06-26 00:03:18');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `shop_id`, `name`, `slug`, `email`, `url`, `phone`, `description`, `country_id`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Heidenreich PLC', 'debitis-consequuntur-corporis-explicabo-laboriosam-vel-enim', 'jakubowski.jerod@baumbach.info', 'http://bergnaum.org/', '(794) 725-5261', 'At voluptas voluptatum accusantium. Tenetur aut voluptates ea et impedit dolore. Aliquam voluptatem earum nobis eos expedita accusamus. Ab et facere neque. Reprehenderit molestiae nemo quo tempore natus ut blanditiis. Quidem eos officia sit in est ut sint. Deleniti magni quaerat est voluptatem dolores omnis sint. Excepturi labore vitae maxime consequatur voluptas quod. Dicta vitae assumenda cumque inventore. Velit aut atque vero quia.', 666, 1, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(2, 2, 'O\'Keefe-Kuhlman', 'similique-enim-consequatur-eaque-inventore-facilis-ab-rem', 'brody46@ruecker.com', 'http://www.hessel.com/', '1-754-287-6689 x716', 'Nihil sapiente praesentium rerum sint neque eos. Deleniti est odit dolores eveniet iusto. Excepturi ad expedita consequatur est. Qui molestiae dolor fugiat ratione sunt. Sit earum eligendi sed nihil voluptatem magni rerum. Et fugiat cupiditate quae nobis nisi magnam. Necessitatibus quasi omnis aut. Amet sint ut expedita. Ullam in blanditiis eum magni illo corrupti. Nobis ut et illo saepe occaecati dolor alias. Voluptas neque neque quod quo. Aliquam quod amet et sed maiores.', 840, 1, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(3, 1, 'Schinner, Ledner and Dietrich', 'vel-odio-illo-reprehenderit-et', 'jkunze@parker.com', 'http://balistreri.com/nobis-nesciunt-soluta-qui-ut-odio-facere', '1-493-846-6933', 'Cum tempora repellat explicabo deserunt non ratione quod. Culpa neque quod ipsam temporibus illum dolores temporibus dolores. Laudantium quo quo enim quia incidunt. Consequatur quia minus quos dignissimos dolor. Sunt ea deserunt quo dolores ullam unde doloremque. Ut repudiandae adipisci sit vero. Vel ut error optio sed. Autem voluptatem illo libero. Dolores et et sunt harum. Repellat id voluptatem qui earum omnis et. Dolor qui nihil et porro.', 90, 1, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(4, 1, 'Schaefer Ltd', 'voluptatibus-sit-fugiat-maiores', 'jpagac@kuphal.org', 'http://www.gerlach.com/quia-qui-consequatur-non-deserunt-et', '438-396-0026 x829', 'Aliquam maxime mollitia quo necessitatibus. Officia voluptatem blanditiis et possimus. Minus et et atque sed eos. Labore temporibus impedit ea occaecati. Repellendus odit voluptas non nam impedit soluta. Doloribus voluptas soluta dicta ut reprehenderit. Excepturi alias occaecati itaque modi. Explicabo ad eum dolorem delectus rem necessitatibus labore. Ad et dolorem ipsa quae qui nisi nostrum repellat. At placeat blanditiis cumque rem exercitationem. Nam amet sit nam dolores quia aut ut.', 50, 1, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(5, 2, 'Harvey LLC', 'adipisci-impedit-voluptatem-ex-ut', 'donavon24@wisoky.com', 'http://www.kertzmann.com/', '+1 (509) 471-7170', 'Dolorum voluptatum amet quidem necessitatibus voluptas excepturi. Ut quia ad atque asperiores reprehenderit esse. Beatae fugiat quo animi nihil reprehenderit et. Consequuntur sit nobis molestias nihil. Nesciunt nihil nihil illo id assumenda. Quae suscipit ratione facere. Sint voluptatibus quia modi accusantium atque qui fugiat provident. Non voluptate quia ducimus voluptatem rerum corrupti ipsum.', 662, 1, NULL, '2021-06-26 00:03:49', '2021-06-26 00:03:49'),
(6, 1, 'Stroman-Frami', 'earum-vel-incidunt-accusamus-delectus-et', 'konopelski.camilla@yahoo.com', 'https://www.murazik.info/est-sapiente-recusandae-quos-et-et-quia-voluptas-veritatis', '924-575-0821 x006', 'Sed facere unde in quae praesentium ut. Tempore omnis et necessitatibus perferendis blanditiis adipisci illo molestiae. Perferendis numquam maxime dolor harum consequatur et illo. Voluptatem quia similique deleniti et officiis eum. Adipisci placeat occaecati sunt totam. Et voluptas necessitatibus et placeat nesciunt eaque. Saepe qui maiores id enim mollitia tempora. Iure incidunt quis harum qui sunt.', 376, 1, NULL, '2021-06-26 00:03:50', '2021-06-26 00:03:50'),
(7, 2, 'Grimes-Wisoky', 'accusamus-at-aut-omnis', 'riley65@wuckert.biz', 'http://www.schamberger.org/', '+1-617-909-2401', 'Occaecati harum nihil esse dolores et. Quae dolorem animi rerum voluptas doloremque laudantium. Debitis ipsa mollitia est voluptatem sed laborum ducimus expedita. Iure officiis vero omnis aliquam. Ea vel culpa ea est cum. Animi repudiandae minus quaerat voluptas quisquam et illum. Consequatur sunt dolorum omnis delectus ut. Ut aut sunt voluptatem aut qui quisquam ut.', 364, 1, NULL, '2021-06-26 00:03:50', '2021-06-26 00:03:50'),
(8, 1, 'Hickle Inc', 'et-facilis-maiores-repellendus-minus-sed', 'kirlin.justus@cronin.com', 'http://murray.biz/iure-velit-laudantium-dicta-et', '(654) 582-4891 x944', 'Nihil quis consequatur est mollitia magnam ex consectetur. Dolores et enim fuga et libero. Officiis aspernatur maxime ab. Velit iste molestiae repellat nobis. Veniam quia occaecati eum explicabo. Dolor molestiae nihil voluptates temporibus. Exercitationem sit eos enim fugiat ut fuga. Quis corporis voluptates sint.', 250, 1, NULL, '2021-06-26 00:03:50', '2021-06-26 00:03:50'),
(9, 2, 'Bergnaum PLC', 'excepturi-minima-nihil-laborum-quasi-animi-impedit-et', 'ryan27@steuber.com', 'https://prohaska.com/voluptatem-sunt-quo-iste-velit-debitis-quibusdam-laudantium.html', '656-665-4323 x20866', 'Ipsum quidem modi aut voluptatem voluptatem repudiandae. Quo corporis sunt et qui. Beatae et recusandae et natus non. Nobis aut explicabo modi est repellendus quibusdam eos. Enim et laborum id debitis sunt. Voluptatem accusantium molestiae voluptatem ea ut laudantium consectetur qui. Nemo occaecati pariatur rem impedit nisi et eius. Amet odit assumenda necessitatibus voluptas.', 196, 1, NULL, '2021-06-26 00:03:50', '2021-06-26 00:03:50'),
(10, 1, 'Corwin, Bins and Herzog', 'dolore-sunt-rerum-libero-amet-exercitationem-quas-in', 'rolfson.guadalupe@hotmail.com', 'http://www.cartwright.com/voluptatem-est-perspiciatis-quo-doloremque-est', '+1-438-713-7451', 'Enim a laboriosam fugit fugiat incidunt adipisci quidem laboriosam. Animi aut quasi error autem qui maiores occaecati molestiae. Harum ut consequuntur expedita. Perferendis aut doloribus ad quibusdam totam porro et omnis. Enim ut quibusdam unde id corrupti ullam. Non deserunt vel quis quas velit eaque aut in. Aut id harum consequatur inventore. Nesciunt id magni ut voluptas rem.', 882, 1, NULL, '2021-06-26 00:03:50', '2021-06-26 00:03:50'),
(11, 1, 'Tromp-Osinski', 'aut-debitis-voluptatem-recusandae-dolorem-deleniti-dicta-saepe', 'jaquelin.goldner@gmail.com', 'http://www.waelchi.com/', '429-374-3089', 'Quam similique sunt fugit consequatur aut explicabo. Vel et praesentium aperiam recusandae modi sed voluptate. Est ad doloribus amet ut labore. Veritatis ut sed voluptatem omnis tempora fugiat. Et sint excepturi voluptatem consequatur quod quos. Sit ut accusamus quas commodi nesciunt velit est. Corporis perspiciatis voluptatibus porro culpa ut accusantium velit. Natus sit autem quibusdam autem iste. Labore placeat nisi dolores voluptas doloribus enim consequuntur dolorum.', 624, 1, NULL, '2021-06-26 00:03:50', '2021-06-26 00:03:50'),
(12, 1, 'Cummings-Dach', 'earum-quo-repellat-qui', 'omarvin@jaskolski.com', 'https://weber.com/quis-animi-ut-et.html', '404.675.3250 x572', 'Natus cum voluptatem dolores deserunt vel molestias. Necessitatibus non nam facere pariatur velit officiis sed. Nemo rerum nulla repudiandae incidunt qui inventore veniam. Et ipsa temporibus ad. Itaque eaque velit doloribus saepe qui. Quia in voluptatum ut aut. Qui corrupti et nobis fuga eos. Consequatur animi tenetur facilis corrupti enim. Aut cum enim esse aliquid. Possimus esse aliquid molestias autem dolores sed dolorem. Consequuntur architecto distinctio rerum numquam.', 558, 1, NULL, '2021-06-26 00:03:50', '2021-06-26 00:03:50'),
(13, 2, 'Wilkinson Group', 'est-et-ut-molestiae-et-veniam-et', 'kuhlman.jamison@hotmail.com', 'https://www.rippin.info/autem-necessitatibus-ipsum-similique-aliquam-et', '(595) 960-6060', 'Non aut qui hic voluptatem porro sint ea. Et nemo et ut voluptates asperiores. Quas voluptates excepturi reiciendis qui. Vel harum mollitia tenetur eligendi qui ipsa earum. Exercitationem excepturi excepturi vel expedita eos. Veritatis cumque nostrum voluptas facilis qui qui animi. Molestias nemo iusto eum vel voluptas occaecati. Expedita ut totam qui est fugiat maiores debitis. Cum accusamus et qui voluptatem. Nihil et aut voluptatem in. Aut atque dolorum et vel omnis.', 48, 1, NULL, '2021-06-26 00:03:50', '2021-06-26 00:03:50'),
(14, 2, 'Tremblay Ltd', 'ut-beatae-aliquid-est-iure-ullam-nobis-quis', 'jena.kovacek@price.com', 'http://www.zemlak.info/quisquam-error-et-molestias-tempora-laborum-in', '305.870.3024 x06620', 'Delectus velit doloremque modi omnis consectetur aut ipsa. Aut voluptatibus aspernatur earum commodi sequi eos officiis. Et animi est nisi dolor asperiores doloremque. Et hic quia ad dolor maxime incidunt corrupti. Provident facere asperiores id voluptas nulla est temporibus. Id tenetur sed quo dolores commodi minima dolorum. Occaecati accusamus et necessitatibus repellat. Dolorum in labore asperiores unde omnis eligendi.', 360, 1, NULL, '2021-06-26 00:03:50', '2021-06-26 00:03:50'),
(15, 1, 'Rosenbaum PLC', 'culpa-eligendi-voluptatum-exercitationem-mollitia', 'dpollich@hotmail.com', 'https://www.howell.com/id-qui-rerum-eligendi-voluptatum-aut-sint-unde-quos', '(849) 654-6395', 'Quibusdam perspiciatis dolores voluptatem quaerat inventore itaque. Magnam impedit dolores quas iusto non laboriosam incidunt. Sunt necessitatibus quo exercitationem natus aliquid dolores. Assumenda praesentium vel corrupti perspiciatis. Dolores explicabo autem quidem modi et facere veniam. Inventore omnis accusantium sed quis. Consequatur similique laborum animi doloribus amet. Exercitationem tempore laborum qui. Et cum libero animi sed et. Eos sed sint aut corporis dolorem.', 76, 1, NULL, '2021-06-26 00:03:50', '2021-06-26 00:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `customer_status` int(11) DEFAULT '1',
  `label` int(11) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `shop_id`, `user_id`, `customer_id`, `name`, `phone`, `email`, `subject`, `message`, `order_id`, `product_id`, `status`, `customer_status`, `label`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 1, NULL, NULL, NULL, 'Delectus commodi accusamus similique qui vero explicabo.', 'Est reprehenderit repellat ratione. Velit quisquam sint ut totam qui amet.', 10, NULL, 1, 1, 4, NULL, '2021-06-20 00:05:15', '2021-06-26 00:05:21'),
(2, 2, NULL, 1, NULL, NULL, NULL, 'Qui voluptate laboriosam deserunt in quos laudantium qui.', 'Enim animi repellat vel quidem sit. Recusandae nihil occaecati et odit eaque qui culpa. Hic qui quia at harum iure unde nisi. Consequuntur consectetur accusantium velit accusantium.', 13, NULL, 2, 1, 2, NULL, '2021-06-23 00:05:15', '2021-06-26 00:05:21'),
(3, 1, NULL, 1, NULL, NULL, NULL, 'Exercitationem velit dolor ea rerum qui eligendi.', 'Consequatur nam est voluptas aliquid corporis ut ipsa neque. Provident reprehenderit molestiae at est omnis. Sunt accusamus nostrum rerum dignissimos possimus laborum qui.', 6, NULL, 2, 1, 2, NULL, '2021-06-23 00:05:15', '2021-06-26 00:05:21'),
(4, 1, NULL, 1, NULL, NULL, NULL, 'Dolorum facere nemo expedita autem.', 'Accusamus aperiam odit saepe deserunt rerum. Dignissimos pariatur quas dicta id. Et qui quia et et. Ab ex qui reiciendis alias assumenda esse nihil.', 6, NULL, 1, 1, 5, NULL, '2021-06-18 00:05:15', '2021-06-26 00:05:18'),
(5, 1, NULL, 1, NULL, NULL, NULL, 'Consequatur est provident consequatur omnis nam vel officia.', 'Voluptatem rerum et eveniet laudantium iusto nulla. Nam blanditiis nemo perferendis dolore dolor ut hic. Porro accusamus corporis fuga iste non. Saepe sunt eos animi rerum cum fugit animi.', 9, NULL, 3, 1, 5, NULL, '2021-06-11 00:05:15', '2021-06-26 00:05:21'),
(6, 1, NULL, 1, NULL, NULL, NULL, 'Quam nemo dicta quibusdam sit tempora.', 'Harum autem consequatur qui nulla accusantium atque. Est commodi doloremque ipsum tempora qui veritatis consequatur. Distinctio ut et ea ipsa non saepe.', 3, NULL, 1, 1, 1, NULL, '2021-06-16 00:05:15', '2021-06-15 00:05:15'),
(7, 2, NULL, 1, NULL, NULL, NULL, 'Est et molestias autem amet.', 'Est quaerat ut minus itaque quod. Dolorem veniam molestiae qui iure magni. Consequuntur voluptas nisi distinctio dolores eum. Porro exercitationem labore doloremque nulla laboriosam aliquam quis.', 7, NULL, 3, 1, 2, NULL, '2021-06-19 00:05:15', '2021-06-13 00:05:15'),
(8, 1, NULL, 1, NULL, NULL, NULL, 'A est ipsum sit ut nulla laboriosam.', 'Eveniet cupiditate id harum autem libero occaecati voluptate. Laudantium reiciendis quia nemo vero hic ut aut. Consequatur soluta iure architecto.', 14, NULL, 1, 1, 5, NULL, '2021-06-16 00:05:15', '2021-06-26 00:05:15'),
(9, 2, NULL, 1, NULL, NULL, NULL, 'Corporis et consectetur veritatis molestiae commodi eos.', 'Id sit excepturi omnis reprehenderit et a. Tenetur inventore provident sed corrupti vel. Voluptatem ex odit provident dolor. Veniam et officiis illo blanditiis.', 10, NULL, 2, 1, 4, NULL, '2021-06-19 00:05:15', '2021-06-16 00:05:15'),
(10, 2, NULL, 1, NULL, NULL, NULL, 'Nihil tempora magnam ea qui qui.', 'Officiis inventore ut impedit eius distinctio ut voluptates. Corporis ipsa voluptatem omnis. Voluptates sequi nisi facere consequatur ea.', 2, NULL, 1, 1, 1, NULL, '2021-06-19 00:05:15', '2021-06-23 00:05:15'),
(11, 1, NULL, 1, NULL, NULL, NULL, 'Dolores laboriosam provident et pariatur ratione dignissimos qui.', 'Sunt vel consequatur aut quia accusantium. Rerum sit quibusdam ut est. Reprehenderit ipsum assumenda tempore ut et maiores. Laboriosam aut reprehenderit dolorem quo consequuntur esse.', 5, NULL, 1, 1, 5, NULL, '2021-06-22 00:05:15', '2021-06-19 00:05:15'),
(12, 2, NULL, 1, NULL, NULL, NULL, 'Veritatis ut accusamus doloribus voluptas placeat at facilis placeat.', 'Magnam reprehenderit sequi sunt voluptatum vitae officia. Qui deleniti facilis nihil voluptas ratione minus sit. Cupiditate ipsum deleniti consequuntur repellat id.', 7, NULL, 3, 1, 3, NULL, '2021-06-23 00:05:15', '2021-06-26 00:05:15'),
(13, 2, NULL, 1, NULL, NULL, NULL, 'A ipsam doloremque vitae maiores ut reprehenderit.', 'Adipisci recusandae vel sed et voluptate quaerat inventore. Quos in earum eum ea sed nobis eum. Hic libero nihil omnis ut officia.', 7, NULL, 1, 1, 1, NULL, '2021-06-22 00:05:15', '2021-06-26 00:05:15'),
(14, 1, NULL, 1, NULL, NULL, NULL, 'Repellat deserunt quam sint ad quo ipsam.', 'Ut temporibus quia sit sint quam. Soluta in adipisci ipsam. Velit quos rem debitis aliquam ut consequatur consequatur. Iusto eos molestiae vel alias deleniti qui omnis dolor.', 5, NULL, 3, 1, 5, NULL, '2021-06-20 00:05:15', '2021-06-14 00:05:15'),
(15, 2, NULL, 1, NULL, NULL, NULL, 'Deleniti est sit doloribus odit.', 'Facilis totam voluptatem a velit atque ullam. Facilis in tempora accusamus laborum inventore et magnam inventore. Necessitatibus quisquam et aperiam facere. Illo laudantium non voluptatem delectus qui non nesciunt.', 7, NULL, 3, 1, 2, NULL, '2021-06-21 00:05:15', '2021-06-22 00:05:15');

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
(1, '2014_04_01_151049_create_activity_log_table', 1),
(2, '2014_10_11_000000_create_modules_table', 1),
(3, '2014_10_11_000010_create_roles_table', 1),
(4, '2014_10_11_000011_create_permissions_table', 1),
(5, '2014_10_11_000020_create_announcements_table', 1),
(6, '2014_10_11_000020_create_attachments_table', 1),
(7, '2014_10_11_000020_create_images_table', 1),
(8, '2014_10_12_000000_create_subscriptions_table', 1),
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_000001_create_password_resets_table', 1),
(11, '2014_10_12_000003_create_dashboard_configs_table', 1),
(12, '2014_10_12_000003_create_pages_table', 1),
(13, '2014_10_12_000003_create_systems_table', 1),
(14, '2014_10_12_000004_create_customers_table', 1),
(15, '2014_12_31_000001_create_countries_table', 1),
(16, '2014_12_31_000004_create_addresses_table', 1),
(17, '2015_01_11_135657_create_shops_table', 1),
(18, '2015_01_12_000002_create_configs_table', 1),
(19, '2015_05_12_131134_create_performance_indicators_table', 1),
(20, '2015_05_12_151257_create_invoices_table', 1),
(21, '2015_12_31_000002_create_tags_table', 1),
(22, '2015_12_31_000004_create_blogs_table', 1),
(23, '2016_01_11_135655_create_manufacturers_table', 1),
(24, '2016_01_11_135658_create_products_table', 1),
(25, '2016_01_11_135660_create_attribute_table', 1),
(26, '2016_01_11_135714_create_suppliers_table', 1),
(27, '2016_01_15_191220_create_category_groups_table', 1),
(28, '2016_03_11_182034_create_warehouse_table', 1),
(29, '2016_03_11_190111_create_inventory_table', 1),
(30, '2016_03_25_192206_create_taxes_table', 1),
(31, '2016_03_26_091903_create_carriers_table', 1),
(32, '2016_03_26_091903_create_shipping_zones_table', 1),
(33, '2016_03_26_091904_create_packagings_table', 1),
(34, '2016_04_22_162519_create_email_templates_table', 1),
(35, '2016_04_22_162552_create_payment_methods_table', 1),
(36, '2016_04_22_162555_create_config_manual_payments_table', 1),
(37, '2016_04_22_162555_create_config_paypal_express_table', 1),
(38, '2016_04_22_162555_create_config_stripe_table', 1),
(39, '2016_04_22_162559_create_order_table', 1),
(40, '2016_04_24_151506_create_cart_table', 1),
(41, '2017_09_13_195828_create_coupons_table', 1),
(42, '2017_09_17_202406_create_gift_cards_table', 1),
(43, '2017_11_27_144538_create_contact_us_table', 1),
(44, '2017_11_27_144538_create_disputes_table', 1),
(45, '2017_11_27_144538_create_messages_table', 1),
(46, '2017_11_27_144538_create_refunds_table', 1),
(47, '2017_11_27_144538_create_tickets_table', 1),
(48, '2017_11_27_144548_create_replies_table', 1),
(49, '2018_04_08_155212_create_notifications_table', 1),
(50, '2018_04_11_202451_create_jobs_table', 1),
(51, '2018_04_28_201222_create_faqs_table', 1),
(52, '2018_05_27_135039_create_visitors_table', 1),
(53, '2018_07_04_210334_create_banners_table', 1),
(54, '2018_07_04_210813_create_sliders_table', 1),
(55, '2018_07_16_015501_create_wishlists_table', 1),
(56, '2018_07_19_191545_create_feedbacks_table', 1),
(57, '2018_10_04_162859_create_options_table', 1),
(58, '2018_12_20_193751_create_config_paystacks_table', 1),
(59, '2018_12_24_070051_create_config_authorize_net_table', 1),
(60, '2018_12_25_163942_create_config_cybersource_table', 1),
(61, '2018_12_25_163942_create_config_instamojo_table', 1),
(62, '2019_07_11_165534_create_languages_table', 1),
(63, '2019_12_06_063720_create_chat_tables', 1),
(64, '2019_12_27_092414_add_notify_chat_to_configs_table', 1),
(65, '2020_01_09_054507_add_payment_instruction_fields_to_order_table', 1),
(66, '2020_05_06_172818_add_email_phone_fields_to_messages_table', 1),
(67, '2020_06_30_154819_create_cancellation_table', 1),
(68, '2020_07_01_103906_add_cancellation_config_to_systems_table', 1),
(69, '2020_10_22_195815_add_stripe_status_to_subscriptions_table', 1),
(70, '2020_11_20_195815_create_package_table', 1),
(71, '2020_12_18_054507_add_cancellation_fields_to_systems_table', 1),
(72, '2021_01_30_061710_add_fields_to_packages_table', 1),
(73, '2021_02_01_054507_add_description_fields_to_sliders_table', 1),
(74, '2021_02_01_054507_add_device_id_fields_to_orders_table', 1),
(75, '2021_02_01_054507_add_social_auth_fields_to_systems_table', 1),
(76, '2021_02_17_112139_add_type_field_to_images_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `access` enum('Super Admin','Platform','Merchant','Common') COLLATE utf8_unicode_ci NOT NULL,
  `actions` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `description`, `access`, `actions`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Appearance', 'Manage all appearance.', 'Platform', 'customize', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(2, 'Attribute', 'Manage all attribute.', 'Common', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(3, 'Carrier', 'Manage all carrier.', 'Merchant', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(4, 'Category', 'Manage all category.', 'Platform', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(5, 'Category Group', 'Manage all category group.', 'Platform', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(6, 'Category Sub Group', 'Manage all category sub group.', 'Platform', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(7, 'Chat Conversation', 'Manage all chat conversation.', 'Merchant', 'view,reply,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(8, 'Config', 'Manage all config.', 'Merchant', 'view,edit', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(9, 'Coupon', 'Manage all coupon.', 'Merchant', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(10, 'Cart', 'Manage all cart.', 'Common', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(11, 'Customer', 'Manage all customer.', 'Platform', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(12, 'Dispute', 'Manage all dispute.', 'Common', 'view,response', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(13, 'Inventory', 'Manage all inventory.', 'Merchant', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(14, 'Manufacturer', 'Manage all manufacturer.', 'Common', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(15, 'Message', 'Manage all message.', 'Common', 'view,add,update,delete,reply', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(16, 'Module', 'Manage all module.', 'Super Admin', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(17, 'Order', 'Manage all order.', 'Common', 'view,add,fulfill,cancel,archive,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(18, 'Packaging', 'Manage all packaging.', 'Merchant', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(19, 'Product', 'Manage all product.', 'Common', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(20, 'Refund', 'Manage all refund.', 'Common', 'view,initiate,update,approve', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(21, 'Role', 'Manage all role.', 'Common', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(22, 'Supplier', 'Manage all supplier.', 'Merchant', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(23, 'Subscription Plan', 'Manage all subscription plan.', 'Super Admin', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(24, 'Shipping Zone', 'Manage all shipping zone.', 'Merchant', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(25, 'Shipping Rate', 'Manage all shipping rate.', 'Merchant', 'add,edit,delete', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(26, 'System', 'Manage all system.', 'Super Admin', 'view,edit', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(27, 'System Config', 'Manage all system config.', 'Platform', 'view,edit', 1, NULL, '2021-06-26 00:03:02', '2021-06-26 00:03:02'),
(28, 'Tax', 'Manage all tax.', 'Merchant', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(29, 'Ticket', 'Manage all ticket.', 'Platform', 'view,update,reply,assign', 1, NULL, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(30, 'Vendor', 'Manage all vendor.', 'Platform', 'view,add,edit,delete,login', 1, NULL, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(31, 'Warehouse', 'Manage all warehouse.', 'Merchant', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(32, 'User', 'Manage all user.', 'Common', 'view,add,edit,delete,login', 1, NULL, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(33, 'Utility', 'Manage all utility.', 'Platform', 'view,add,edit,delete', 1, NULL, '2021-06-26 00:03:03', '2021-06-26 00:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_url` text COLLATE utf8_unicode_ci,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `created_by`, `icon`, `action_text`, `action_url`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('1aebd199-0959-451b-91cf-50b8455c9cb1', 'App\\Notifications\\Customer\\Registered', 'App\\Customer', 4, NULL, NULL, NULL, NULL, '{\"name\":\"Virendra Arekar\",\"email\":\"virendra.arekar@gmail.com\"}', NULL, '2021-06-26 10:10:08', '2021-06-26 10:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8_unicode_ci,
  `autoload` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `option_name`, `option_value`, `autoload`, `created_at`, `updated_at`) VALUES
(1, 'trending_categories', 'a:3:{i:0;i:30;i:1;i:4;i:2;i:31;}', 1, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(2, 'promotional_tagline', 'a:2:{s:4:\"text\";s:24:\"FLASH SALE 40% Discount!\";s:10:\"action_url\";s:1:\"/\";}', 1, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(3, 'featured_items', 'a:10:{i:0;i:30;i:1;i:42;i:2;i:1;i:3;i:13;i:4;i:8;i:5;i:2;i:6;i:48;i:7;i:47;i:8;i:43;i:9;i:45;}', 1, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(4, 'featured_brands', 'a:3:{i:0;s:1:\"2\";i:1;s:1:\"5\";i:2;s:2:\"10\";}', 1, '2023-03-19 18:18:36', '2023-03-19 18:18:36'),
(5, 'deal_of_the_day', '15', 1, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(6, 'best_finds_under', '99', 1, '2021-06-26 01:42:04', '2021-06-26 01:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ship_to` int(10) UNSIGNED DEFAULT NULL,
  `shipping_zone_id` int(10) UNSIGNED DEFAULT NULL,
  `shipping_rate_id` int(10) UNSIGNED DEFAULT NULL,
  `packaging_id` int(10) UNSIGNED DEFAULT NULL,
  `item_count` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `taxrate` decimal(20,6) DEFAULT NULL,
  `shipping_weight` decimal(20,6) DEFAULT NULL,
  `total` decimal(20,6) DEFAULT NULL,
  `discount` decimal(20,6) DEFAULT NULL,
  `shipping` decimal(20,6) DEFAULT NULL,
  `packaging` decimal(20,6) DEFAULT NULL,
  `handling` decimal(20,6) DEFAULT NULL,
  `taxes` decimal(20,6) DEFAULT NULL,
  `grand_total` decimal(20,6) DEFAULT NULL,
  `billing_address` text COLLATE utf8_unicode_ci,
  `shipping_address` text COLLATE utf8_unicode_ci,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_id` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `tracking_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `carrier_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_status` int(11) NOT NULL DEFAULT '1',
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `order_status_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `message_to_customer` text COLLATE utf8_unicode_ci,
  `send_invoice_to_customer` tinyint(1) DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci,
  `buyer_note` text COLLATE utf8_unicode_ci,
  `goods_received` tinyint(1) DEFAULT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `disputed` tinyint(1) DEFAULT NULL,
  `feedback_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_instruction` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `shop_id`, `customer_id`, `ship_to`, `shipping_zone_id`, `shipping_rate_id`, `packaging_id`, `item_count`, `quantity`, `taxrate`, `shipping_weight`, `total`, `discount`, `shipping`, `packaging`, `handling`, `taxes`, `grand_total`, `billing_address`, `shipping_address`, `email`, `device_id`, `shipping_date`, `delivery_date`, `tracking_id`, `coupon_id`, `carrier_id`, `payment_status`, `payment_method_id`, `order_status_id`, `message_to_customer`, `send_invoice_to_customer`, `admin_note`, `buyer_note`, `goods_received`, `approved`, `disputed`, `feedback_id`, `deleted_at`, `created_at`, `updated_at`, `payment_instruction`) VALUES
(1, '#763241', 1, 3, NULL, NULL, 8, 5, 2, 3, NULL, '2034.000000', '1128.183500', NULL, '7.000000', NULL, NULL, NULL, '1135.183500', '<address>36867 Ivy Parkway Apt. 860<br/>Jamel Mountains<br/>North Cheyanneburgh, <br/> 33490-4933<br/><abbr title=\"Phone\">P:</abbr> 302-868-4187</address>', '<address>36867 Ivy Parkway Apt. 860<br/>Jamel Mountains<br/>North Cheyanneburgh, <br/> 33490-4933<br/><abbr title=\"Phone\">P:</abbr> 302-868-4187</address>', NULL, NULL, NULL, NULL, 'RR123456789CN', NULL, NULL, 1, 7, 1, NULL, NULL, 'Aut porro dicta labore dolorum.', 'Fuga et quia at corporis quo.', NULL, NULL, NULL, NULL, NULL, '2021-06-07 00:04:56', '2021-06-07 00:04:56', NULL),
(2, '#144345', 2, 3, NULL, NULL, 9, 6, 2, 3, NULL, '3944.000000', '1076.974244', NULL, '4.000000', NULL, NULL, NULL, '1080.974244', '<address>36867 Ivy Parkway Apt. 860<br/>Jamel Mountains<br/>North Cheyanneburgh, <br/> 33490-4933<br/><abbr title=\"Phone\">P:</abbr> 302-868-4187</address>', '<address>36867 Ivy Parkway Apt. 860<br/>Jamel Mountains<br/>North Cheyanneburgh, <br/> 33490-4933<br/><abbr title=\"Phone\">P:</abbr> 302-868-4187</address>', NULL, NULL, NULL, NULL, 'RR123456789CN', NULL, NULL, 1, 1, 1, NULL, NULL, 'Quisquam sapiente magnam ex sapiente et ratione.', 'Veniam expedita placeat dolor qui.', NULL, NULL, NULL, NULL, NULL, '2021-06-01 00:04:56', '2021-06-01 00:04:56', NULL),
(3, '#552384', 1, 3, NULL, NULL, 14, 2, 2, 5, NULL, '2036.000000', '2020.282865', NULL, '1.000000', NULL, NULL, NULL, '2021.282865', '<address>36867 Ivy Parkway Apt. 860<br/>Jamel Mountains<br/>North Cheyanneburgh, <br/> 33490-4933<br/><abbr title=\"Phone\">P:</abbr> 302-868-4187</address>', '<address>36867 Ivy Parkway Apt. 860<br/>Jamel Mountains<br/>North Cheyanneburgh, <br/> 33490-4933<br/><abbr title=\"Phone\">P:</abbr> 302-868-4187</address>', NULL, NULL, NULL, NULL, 'RR123456789CN', NULL, NULL, 1, 5, 1, NULL, NULL, 'Et similique voluptatem cupiditate et fuga aliquid iste.', 'Sit molestiae quos quis est eos.', NULL, NULL, NULL, NULL, NULL, '2021-06-22 00:04:56', '2021-06-22 00:04:56', NULL),
(4, '#564712', 1, 2, NULL, NULL, 3, 3, 2, 4, NULL, '3030.000000', '1325.712510', NULL, '7.000000', NULL, NULL, NULL, '1332.712510', '<address>8237 Chase Streets Suite 744<br/>Kutch Forge<br/>Cormierbury, <br/> 65339<br/><abbr title=\"Phone\">P:</abbr> 296-457-5273 x510</address>', '<address>8237 Chase Streets Suite 744<br/>Kutch Forge<br/>Cormierbury, <br/> 65339<br/><abbr title=\"Phone\">P:</abbr> 296-457-5273 x510</address>', NULL, NULL, NULL, NULL, 'RR123456789CN', NULL, NULL, 1, 5, 1, NULL, NULL, 'Tempore recusandae nemo recusandae minus autem dolore.', 'Neque fuga vel nisi iusto quasi.', NULL, NULL, NULL, NULL, NULL, '2021-06-15 00:04:56', '2021-06-15 00:04:56', NULL),
(5, '#979831', 1, 2, NULL, NULL, 7, 1, 4, 10, NULL, '11633.000000', '4571.662979', NULL, '2.000000', NULL, NULL, NULL, '4573.662979', '<address>8237 Chase Streets Suite 744<br/>Kutch Forge<br/>Cormierbury, <br/> 65339<br/><abbr title=\"Phone\">P:</abbr> 296-457-5273 x510</address>', '<address>8237 Chase Streets Suite 744<br/>Kutch Forge<br/>Cormierbury, <br/> 65339<br/><abbr title=\"Phone\">P:</abbr> 296-457-5273 x510</address>', NULL, NULL, NULL, NULL, 'RR123456789CN', NULL, NULL, 1, 3, 1, NULL, NULL, 'Deleniti rem omnis quia odio aperiam ut dolor soluta.', 'Voluptatibus quidem sit ut est quasi atque enim.', NULL, NULL, NULL, NULL, NULL, '2021-06-08 00:04:56', '2021-06-08 00:04:56', NULL),
(6, '#222973', 1, 3, NULL, NULL, 17, 1, 4, 7, NULL, '8691.000000', '3174.458603', NULL, '2.000000', NULL, NULL, NULL, '3176.458603', '<address>36867 Ivy Parkway Apt. 860<br/>Jamel Mountains<br/>North Cheyanneburgh, <br/> 33490-4933<br/><abbr title=\"Phone\">P:</abbr> 302-868-4187</address>', '<address>36867 Ivy Parkway Apt. 860<br/>Jamel Mountains<br/>North Cheyanneburgh, <br/> 33490-4933<br/><abbr title=\"Phone\">P:</abbr> 302-868-4187</address>', NULL, NULL, NULL, NULL, 'RR123456789CN', NULL, NULL, 1, 5, 1, NULL, NULL, 'Natus dolores dolore sunt aut dolores eos nisi.', 'Libero inventore quibusdam nihil tenetur blanditiis suscipit illum.', NULL, NULL, NULL, NULL, NULL, '2021-06-01 00:04:56', '2021-06-01 00:04:56', NULL),
(7, '#416750', 2, 3, NULL, NULL, 9, 5, 2, 6, NULL, '9234.000000', '2291.385417', NULL, '5.000000', NULL, NULL, NULL, '2296.385417', '<address>36867 Ivy Parkway Apt. 860<br/>Jamel Mountains<br/>North Cheyanneburgh, <br/> 33490-4933<br/><abbr title=\"Phone\">P:</abbr> 302-868-4187</address>', '<address>36867 Ivy Parkway Apt. 860<br/>Jamel Mountains<br/>North Cheyanneburgh, <br/> 33490-4933<br/><abbr title=\"Phone\">P:</abbr> 302-868-4187</address>', NULL, NULL, NULL, NULL, 'RR123456789CN', NULL, NULL, 1, 8, 1, NULL, NULL, 'Nostrum quas atque qui consectetur.', 'Dolor qui consequatur non atque omnis dolor.', NULL, NULL, NULL, NULL, NULL, '2021-06-20 00:04:56', '2021-06-20 00:04:56', NULL),
(8, '#300484', 2, 1, NULL, NULL, 12, 1, 2, 4, NULL, '3693.000000', '1470.322104', NULL, '1.000000', NULL, NULL, NULL, '1471.322104', '<address>4444 Feest Hills Apt. 347<br/>Volkman Motorway<br/>East Demariostad, <br/> 67879<br/><abbr title=\"Phone\">P:</abbr> (869) 450-0929 x8202</address>', '<address>4444 Feest Hills Apt. 347<br/>Volkman Motorway<br/>East Demariostad, <br/> 67879<br/><abbr title=\"Phone\">P:</abbr> (869) 450-0929 x8202</address>', NULL, NULL, NULL, NULL, 'RR123456789CN', NULL, NULL, 1, 6, 1, NULL, NULL, 'Voluptatum quas quia corporis ullam saepe officia dolor.', 'Tenetur numquam vero omnis tempora saepe praesentium dolorem.', NULL, NULL, NULL, NULL, NULL, '2021-06-15 00:04:56', '2021-06-15 00:04:56', NULL),
(9, '#351908', 1, 2, NULL, NULL, 19, 1, 3, 7, NULL, '4107.000000', '2892.237338', NULL, '9.000000', NULL, NULL, NULL, '2901.237338', '<address>8237 Chase Streets Suite 744<br/>Kutch Forge<br/>Cormierbury, <br/> 65339<br/><abbr title=\"Phone\">P:</abbr> 296-457-5273 x510</address>', '<address>8237 Chase Streets Suite 744<br/>Kutch Forge<br/>Cormierbury, <br/> 65339<br/><abbr title=\"Phone\">P:</abbr> 296-457-5273 x510</address>', NULL, NULL, NULL, NULL, 'RR123456789CN', NULL, NULL, 1, 8, 1, NULL, NULL, 'Dolores blanditiis sequi cum veniam et veniam incidunt.', 'Veritatis odio placeat rerum assumenda et magni.', NULL, NULL, NULL, NULL, NULL, '2021-06-08 00:04:56', '2021-06-08 00:04:56', NULL),
(10, '#742274', 2, 2, NULL, NULL, 9, 5, 4, 10, NULL, '7484.000000', '3829.090850', NULL, '3.000000', NULL, NULL, NULL, '3832.090850', '<address>8237 Chase Streets Suite 744<br/>Kutch Forge<br/>Cormierbury, <br/> 65339<br/><abbr title=\"Phone\">P:</abbr> 296-457-5273 x510</address>', '<address>8237 Chase Streets Suite 744<br/>Kutch Forge<br/>Cormierbury, <br/> 65339<br/><abbr title=\"Phone\">P:</abbr> 296-457-5273 x510</address>', NULL, NULL, NULL, NULL, 'RR123456789CN', NULL, NULL, 1, 6, 1, NULL, NULL, 'Tempora quis quo reiciendis asperiores totam qui sed.', 'Voluptas velit illum ut quia aut earum optio.', NULL, NULL, NULL, NULL, NULL, '2021-05-30 00:04:56', '2021-05-30 00:04:56', NULL),
(11, '#672877', 1, 3, NULL, NULL, 3, 4, 4, 9, NULL, '8813.000000', '3631.696326', NULL, '3.000000', NULL, NULL, NULL, '3634.696326', '<address>36867 Ivy Parkway Apt. 860<br/>Jamel Mountains<br/>North Cheyanneburgh, <br/> 33490-4933<br/><abbr title=\"Phone\">P:</abbr> 302-868-4187</address>', '<address>36867 Ivy Parkway Apt. 860<br/>Jamel Mountains<br/>North Cheyanneburgh, <br/> 33490-4933<br/><abbr title=\"Phone\">P:</abbr> 302-868-4187</address>', NULL, NULL, NULL, NULL, 'RR123456789CN', NULL, NULL, 1, 1, 1, NULL, NULL, 'Autem libero vitae itaque est sit.', 'Dolor itaque quibusdam excepturi dolorem non est.', NULL, NULL, NULL, NULL, NULL, '2021-06-19 00:04:56', '2021-06-19 00:04:56', NULL),
(12, '#508018', 1, 2, NULL, NULL, 4, 2, 3, 6, NULL, '2460.000000', '2138.149096', NULL, '6.000000', NULL, NULL, NULL, '2144.149096', '<address>8237 Chase Streets Suite 744<br/>Kutch Forge<br/>Cormierbury, <br/> 65339<br/><abbr title=\"Phone\">P:</abbr> 296-457-5273 x510</address>', '<address>8237 Chase Streets Suite 744<br/>Kutch Forge<br/>Cormierbury, <br/> 65339<br/><abbr title=\"Phone\">P:</abbr> 296-457-5273 x510</address>', NULL, NULL, NULL, NULL, 'RR123456789CN', NULL, NULL, 1, 2, 1, NULL, NULL, 'Architecto voluptatum labore iste perferendis repellat.', 'Occaecati ab sed quas perferendis.', NULL, NULL, NULL, NULL, NULL, '2021-06-03 00:04:56', '2021-06-03 00:04:56', NULL),
(13, '#175042', 2, 3, NULL, NULL, 16, 3, 4, 9, NULL, '7438.000000', '3482.753740', NULL, '9.000000', NULL, NULL, NULL, '3491.753740', '<address>36867 Ivy Parkway Apt. 860<br/>Jamel Mountains<br/>North Cheyanneburgh, <br/> 33490-4933<br/><abbr title=\"Phone\">P:</abbr> 302-868-4187</address>', '<address>36867 Ivy Parkway Apt. 860<br/>Jamel Mountains<br/>North Cheyanneburgh, <br/> 33490-4933<br/><abbr title=\"Phone\">P:</abbr> 302-868-4187</address>', NULL, NULL, NULL, NULL, 'RR123456789CN', NULL, NULL, 1, 6, 1, NULL, NULL, 'Rerum voluptatibus sequi aliquid incidunt.', 'Labore quisquam similique et et possimus aut.', NULL, NULL, NULL, NULL, NULL, '2021-06-15 00:04:56', '2021-06-15 00:04:56', NULL),
(14, '#565473', 1, 3, NULL, NULL, 2, 2, 4, 8, NULL, '8598.000000', '2701.280859', NULL, '4.000000', NULL, NULL, NULL, '2705.280859', '<address>36867 Ivy Parkway Apt. 860<br/>Jamel Mountains<br/>North Cheyanneburgh, <br/> 33490-4933<br/><abbr title=\"Phone\">P:</abbr> 302-868-4187</address>', '<address>36867 Ivy Parkway Apt. 860<br/>Jamel Mountains<br/>North Cheyanneburgh, <br/> 33490-4933<br/><abbr title=\"Phone\">P:</abbr> 302-868-4187</address>', NULL, NULL, NULL, NULL, 'RR123456789CN', NULL, NULL, 1, 7, 1, NULL, NULL, 'Perferendis necessitatibus laudantium voluptatem nesciunt id impedit dolorem omnis.', 'Magni et beatae error corrupti animi et quis.', NULL, NULL, NULL, NULL, NULL, '2021-05-29 00:04:56', '2021-05-29 00:04:56', NULL),
(15, '#127237', 2, 2, NULL, NULL, 17, 1, 4, 9, NULL, '8068.000000', '3217.155979', NULL, '1.000000', NULL, NULL, NULL, '3218.155979', '<address>8237 Chase Streets Suite 744<br/>Kutch Forge<br/>Cormierbury, <br/> 65339<br/><abbr title=\"Phone\">P:</abbr> 296-457-5273 x510</address>', '<address>8237 Chase Streets Suite 744<br/>Kutch Forge<br/>Cormierbury, <br/> 65339<br/><abbr title=\"Phone\">P:</abbr> 296-457-5273 x510</address>', NULL, NULL, NULL, NULL, 'RR123456789CN', NULL, NULL, 1, 2, 1, NULL, NULL, 'Et veniam nostrum sed sed cupiditate eaque.', 'Sit et non autem voluptas at dolorem eius.', NULL, NULL, NULL, NULL, NULL, '2021-06-01 00:04:56', '2021-06-01 00:04:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `item_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(20,6) NOT NULL,
  `feedback_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_id`, `inventory_id`, `item_description`, `quantity`, `unit_price`, `feedback_id`, `created_at`, `updated_at`) VALUES
(1, 14, 'Minus ratione debitis temporibus neque in quibusdam. - New', 2, '348.822000', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(1, 24, 'Eaque pariatur mollitia vel quo aperiam. - Refurbished', 1, '430.539500', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(2, 35, 'Iusto praesentium quas iure ipsum ea quia. - New', 2, '383.815122', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(2, 37, 'Sunt beatae sunt ut ea. - Refurbished', 1, '309.344000', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(3, 2, 'Qui enim sit et explicabo et maiores magnam. - New', 3, '317.140955', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(3, 40, 'Omnis eligendi quo excepturi. - Refurbished', 2, '534.430000', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(4, 13, 'Perferendis saepe rem quos enim nulla. - Used', 1, '414.750000', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(4, 18, 'Laudantium magnam voluptates omnis ut perspiciatis ipsum. - New', 3, '303.654170', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(5, 29, 'Necessitatibus itaque tenetur molestiae delectus. - Refurbished', 3, '563.960993', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(5, 34, 'Perspiciatis quibusdam esse qui rerum. - Refurbished', 3, '434.400000', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(5, 44, 'Magnam ipsam nesciunt aliquam iure dolorem. - New', 2, '542.000000', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(5, 48, 'Vero qui repellat reiciendis dolorem et. - Used', 2, '246.290000', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(6, 17, 'Quis ut quae sed magni enim libero quo. - New', 3, '405.646201', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(6, 34, 'Perspiciatis quibusdam esse qui rerum. - Refurbished', 1, '434.400000', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(6, 41, 'Porro sint numquam dignissimos non. - Refurbished', 1, '439.120000', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(6, 44, 'Magnam ipsam nesciunt aliquam iure dolorem. - New', 2, '542.000000', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(7, 9, 'Ipsum omnis similique cum suscipit vero velit provident. - Refurbished', 3, '485.745539', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(7, 42, 'Assumenda inventore voluptatem enim ea modi nam quasi. - Used', 3, '278.049600', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(8, 11, 'Illo delectus et dignissimos tenetur dolorem. - Used', 3, '309.503808', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(8, 25, 'Accusamus dolorem commodi sed modi assumenda. - Used', 1, '541.810680', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(9, 2, 'Qui enim sit et explicabo et maiores magnam. - New', 1, '317.140955', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(9, 13, 'Perferendis saepe rem quos enim nulla. - Used', 3, '414.750000', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(9, 21, 'Placeat eum natus mollitia sed aut vel. - Refurbished', 3, '443.615461', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(10, 4, 'Est sint doloribus ab iusto non minus vero. - Refurbished', 2, '508.036000', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(10, 7, 'Molestiae temporibus aut ut aspernatur non ex voluptatibus dolores. - Refurbished', 3, '255.369716', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(10, 23, 'Possimus voluptate fugiat dolor eum ex. - New', 3, '325.000000', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(10, 31, 'Porro amet veniam ut vero voluptatum autem porro. - New', 2, '535.954851', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(11, 14, 'Minus ratione debitis temporibus neque in quibusdam. - New', 3, '348.822000', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(11, 18, 'Laudantium magnam voluptates omnis ut perspiciatis ipsum. - New', 2, '303.654170', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(11, 19, 'Facilis adipisci et quia consequuntur. - Refurbished', 2, '425.000000', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(11, 29, 'Necessitatibus itaque tenetur molestiae delectus. - Refurbished', 2, '563.960993', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(12, 16, 'Quia nihil aut eum temporibus dignissimos. - Refurbished', 2, '328.274623', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(12, 24, 'Eaque pariatur mollitia vel quo aperiam. - Refurbished', 1, '430.539500', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(12, 38, 'Facere ipsum minus earum itaque voluptate provident. - Used', 3, '350.353450', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(13, 30, 'Qui iusto magni quia quia earum. - Used', 2, '221.000000', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(13, 31, 'Porro amet veniam ut vero voluptatum autem porro. - New', 2, '535.954851', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(13, 43, 'Laboriosam aut voluptatum id in. - New', 3, '317.840546', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(13, 50, 'Sint neque iste qui nihil sed. - Refurbished', 2, '507.661200', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(14, 12, 'Cum voluptate alias sed id accusamus voluptas labore recusandae. - New', 1, '444.570919', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(14, 18, 'Laudantium magnam voluptates omnis ut perspiciatis ipsum. - New', 2, '303.654170', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(14, 19, 'Facilis adipisci et quia consequuntur. - Refurbished', 3, '425.000000', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(14, 28, 'A mollitia officia recusandae quaerat. - Refurbished', 2, '187.200800', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(15, 7, 'Molestiae temporibus aut ut aspernatur non ex voluptatibus dolores. - Refurbished', 3, '255.369716', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(15, 25, 'Accusamus dolorem commodi sed modi assumenda. - Used', 1, '541.810680', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(15, 33, 'Adipisci laboriosam optio inventore et soluta dolores. - New', 3, '424.518353', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(15, 43, 'Laboriosam aut voluptatum id in. - New', 2, '317.840546', NULL, '2021-06-26 00:03:38', '2021-06-26 00:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compatible` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dependency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `active` tinyint(1) DEFAULT '0',
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `license_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installation_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lcd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lrd` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packagings`
--

CREATE TABLE `packagings` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `width` decimal(20,6) DEFAULT NULL,
  `height` decimal(20,6) DEFAULT NULL,
  `depth` decimal(20,6) DEFAULT NULL,
  `cost` decimal(20,6) DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `packagings`
--

INSERT INTO `packagings` (`id`, `shop_id`, `name`, `width`, `height`, `depth`, `cost`, `default`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Free Basic Packaging', NULL, NULL, NULL, '0.000000', NULL, 1, NULL, '2021-06-26 00:03:17', '2021-06-26 00:03:17'),
(2, 1, 'voluptatem', '12.540000', '48.280000', '25.160000', '6.000000', NULL, 1, NULL, '2021-06-19 00:04:17', '2021-06-12 00:04:17'),
(3, 1, 'quae', '21.030000', '57.710000', '25.870000', '5.000000', NULL, 1, NULL, '2021-06-15 00:04:17', '2021-06-26 00:04:17'),
(4, 2, 'voluptas', '32.900000', '26.860000', '37.210000', '8.000000', NULL, 1, NULL, '2021-06-26 00:04:17', '2021-06-24 00:04:17'),
(5, 2, 'iusto', '34.790000', '34.350000', '29.220000', '8.000000', NULL, 1, NULL, '2021-06-23 00:04:17', '2021-06-23 00:04:17'),
(6, 1, 'sed', '45.560000', '42.340000', '23.000000', '3.000000', NULL, 1, NULL, '2021-06-11 00:04:17', '2021-06-14 00:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `published_at` timestamp NULL DEFAULT NULL,
  `visibility` int(11) NOT NULL DEFAULT '1',
  `position` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `slug`, `content`, `published_at`, `visibility`, `position`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'About us', 'about-us', 'Add your own About Us info here. You can modify this page from ADMIN PANEL >> UTILITIES >> PAGES section.', '2021-06-26 00:03:17', 1, 'copyright_area', NULL, '2021-06-26 00:03:17', '2021-06-26 00:03:17'),
(2, 1, 'Contact us', 'contact-us', 'Contact details. A contact form will be added automatically with this info. You can modify this page from ADMIN PANEL >> UTILITIES >> PAGES section.', '2021-06-26 00:03:17', 1, 'footer_3rd_column', NULL, '2021-06-26 00:03:17', '2021-06-26 00:03:17'),
(3, 1, 'Privacy policy', 'privacy-policy', 'Add your own privacy policy here. You can modify this page from ADMIN PANEL >> UTILITIES >> PAGES section.', '2021-06-26 00:03:17', 1, 'copyright_area', NULL, '2021-06-26 00:03:17', '2021-06-26 00:03:17'),
(4, 1, 'Terms and condition for customer', 'terms-of-use-customer', 'Add your own terms and condition for customer here. You can modify this page from ADMIN PANEL >> UTILITIES >> PAGES section.', '2021-06-26 00:03:17', 1, 'copyright_area', NULL, '2021-06-26 00:03:17', '2021-06-26 00:03:17'),
(5, 1, 'Terms and condition for merchant', 'terms-of-use-merchant', 'Add your own terms and condition for merchant here. You can modify this page from ADMIN PANEL >> UTILITIES >> PAGES section.', '2021-06-26 00:03:17', 2, 'copyright_area', NULL, '2021-06-26 00:03:17', '2021-06-26 00:03:17'),
(6, 1, 'Return and refund policy', 'return-and-refund-policy', 'Return and refund policy. You can modify this page from ADMIN PANEL >> UTILITIES >> PAGES section.', '2021-06-26 00:03:17', 1, 'footer_1st_column', NULL, '2021-06-26 00:03:17', '2021-06-26 00:03:17'),
(7, 1, 'Shipping', 'shipping', 'Shipping details. You can modify this page from ADMIN PANEL >> UTILITIES >> PAGES section.', '2021-06-26 00:03:17', 1, 'footer_1st_column', NULL, '2021-06-26 00:03:17', '2021-06-26 00:03:17'),
(8, 1, 'Career', 'career', 'You can modify this page from ADMIN PANEL >> UTILITIES >> PAGES section.', '2021-06-26 00:03:17', 1, 'footer_2nd_column', NULL, '2021-06-26 00:03:17', '2021-06-26 00:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` text COLLATE utf8_unicode_ci,
  `help_doc_link` text COLLATE utf8_unicode_ci,
  `terms_conditions_link` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `instructions` text COLLATE utf8_unicode_ci,
  `admin_description` text COLLATE utf8_unicode_ci,
  `admin_help_doc_link` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '99',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `code`, `name`, `type`, `company_name`, `website`, `help_doc_link`, `terms_conditions_link`, `description`, `instructions`, `admin_description`, `admin_help_doc_link`, `enabled`, `order`, `created_at`, `updated_at`) VALUES
(1, 'paypal-express', 'PayPal Express Checkout', 1, 'PayPal Inc.', 'https://www.paypal.com/', 'https://www.paypal.com/us/webapps/mpp/express-checkout', NULL, 'Add PayPal as a payment method to allow customers to checkout with PayPal. Express Checkout offers the ease of convenience and security of PayPal, can turn more shoppers into buyers. You must have a PayPal business account to activate this payment method. - You must have a PayPal business account.<br/><strong>To activate PayPal Express: </strong><br/>- You must have a PayPal business account to accept payments.<br/>- Create an app to receive API credentials for testing and live transactions.<br/>- Go to this link to create your app: <small>https://developer.paypal.com/webapps/developer/applications/myapps</small>', NULL, 'Add PayPal as a payment method to any checkout with Express Checkout. Express Checkout offers the ease of convenience and security of PayPal, can be set up in minutes and can turn more shoppers into buyers.', 'https://developer.paypal.com/docs/integration/direct/express-checkout/integration-jsv4/', 1, 1, '2021-06-26 00:03:15', '2021-06-26 00:03:15'),
(2, 'stripe', 'Stripe', 2, 'Stripe Inc.', 'https://stripe.com/', 'https://stripe.com/docs/checkout/tutorial', NULL, 'Stripe is one of the best and safe option to charge credit and debit cards around the world. Stripe has a simple fee structure and no hidden costs. No other gateway or merchant account is required. <br/><strong>By using Stripe: </strong><br/>- You have to connect our platform to your Stripe account. <br/>- You agree to Stripe\'s <a href=\"https://stripe.com/us/privacy\" target=\"_blank\">Terms of Service</a>.', NULL, 'Stripe is one of the best and safe option to charge credit and debit cards around the world. Stripe has a product for marketplace like this. To enable Stripe to your vendors, you must have to register your platform with Stripe.<br/><strong> Follow This Simple steps:</strong><br/>- Create an Stripe application using the bellow information. <a href=\"https://stripe.com/docs/connect/quickstart\" target=\"_blank\">Check their documentation for help.</a><br/>- Update the .env file on your server with Stripe API credentials.<br/><br/><strong>Remember </strong> when you register your platform use this information: <br/>- Name: \'zCart\'<br/>- Website URL: \'http://localhost/zcart/public\'<br/>- Redirect URL: \'http://localhost/zcart/public/admin/setting/stripe/redirect\'', 'https://stripe.com/docs/connect/quickstart', 1, 2, '2021-06-26 00:03:15', '2021-06-26 00:03:15'),
(3, 'authorize-net', 'Authorize.Net', 2, 'Authorize.Net', 'https://www.authorize.net/', 'https://www.authorize.net/support/', NULL, 'More solutions for your business. More support when you need it. More strength to stand on. <br/><strong>By using Authorize.Net: </strong><br/>- You have to have an Authorize.Net account. <br/>- You agree to Authorize.Net\'s <a href=\"https://www.authorize.net/about-us/terms/\" target=\"_blank\">Terms of Use</a>.', NULL, 'Authorize.Net helps makes it simple to accept electronic and credit card payments.', 'https://www.authorize.net/about-us/', 1, 3, '2021-06-26 00:03:15', '2021-06-26 00:03:15'),
(4, 'cybersource', 'CyberSource', 2, 'CyberSource', 'https://cybersource.com/', 'https://www.cybersource.com/', NULL, 'CyberSource is an E-commerce credit card payment system management company. Customers process online payments, streamline online fraud management, and simplify payment security. <br/><strong>By using CyberSource: </strong><br/>- You have to have your CyberSource account. <br/>- You agree to CyberSource\'s <a href=\"https://usa.visa.com/legal/privacy-policy.html\" target=\"_blank\">Terms of Service</a>.', NULL, 'CyberSource is one of the most popular and Multi-Channel Payment Gateway.', 'https://developer.cybersource.com/api/developer-guides/dita-gettingstarted/registration.html', 1, 4, '2021-06-26 00:03:16', '2021-06-26 00:03:16'),
(5, 'instamojo', 'Instamojo', 2, 'Instamojo Technologies Pvt. Ltd.', 'https://instamojo.com/', 'https://instamojo.com/docs/checkout/tutorial', NULL, 'Instamojo is one of the most popular and Multi-Channel Payment Gateway for India - Accept Credit/Debit Cards, Wallets, Net Banking, UPI & EMI. <br/><strong>By using Instamojo: </strong><br/>- You have to have your Instamojo business account. <br/>- You agree to Instamojo\'s <a href=\"https://www.instamojo.com/terms/\" target=\"_blank\">Terms of Service</a>.', NULL, 'Instamojo is one of the most popular and Multi-Channel Payment Gateway for India - Accept Credit/Debit Cards, Wallets, Net Banking, UPI & EMI. Enable Instamojo to your vendors.', 'https://www.instamojo.com/', 1, 5, '2021-06-26 00:03:16', '2021-06-26 00:03:16'),
(6, 'paystack', 'Paystack', 4, 'Paystack', 'https://paystack.com/', 'https://paystack.helpscoutdocs.com/', NULL, 'Modern online and offline payments for Africa. Paystack helps businesses in Africa get paid by anyone, anywhere in the world. <br/><strong>By using Paystack: </strong><br/>- You agree to Paystack\'s <a href=\"https://paystack.com/terms\" target=\"_blank\">Terms of Service</a>.', NULL, 'Modern online and offline payments for Africa. Paystack helps businesses in Africa get paid by anyone, anywhere in the world.', 'https://paystack.helpscoutdocs.com/', 1, 1, '2021-06-26 00:03:16', '2021-06-26 00:03:16'),
(7, 'cod', 'Cash On Delivery', 3, 'Cash on Delivery', NULL, NULL, NULL, 'Cash on delivery (COD), sometimes called collect on delivery, is the sale of goods by mail order where payment is made on delivery rather than in advance.', NULL, 'Cash on delivery (COD), sometimes called collect on delivery, is the sale of goods by mail order where payment is made on delivery rather than in advance.', '', 1, 5, '2021-06-26 00:03:16', '2021-06-26 00:03:16'),
(8, 'wire', 'Bank Wire Transfer', 3, 'Pay by bank wire transfer', NULL, NULL, NULL, 'Pay by bank wire transfer,  transfer the invoice amount via wire tranfer to the merchant account and confirm manually. After payment confirmation the goods will be shipped.', NULL, 'Pay by bank wire transfer,  transfer the invoice amount via wire tranfer to the merchant account and confirm manually. After payment confirmation the goods will be shipped.', '', 1, 6, '2021-06-26 00:03:16', '2021-06-26 00:03:16');

-- --------------------------------------------------------

--
-- Table structure for table `performance_indicators`
--

CREATE TABLE `performance_indicators` (
  `id` int(10) UNSIGNED NOT NULL,
  `monthly_recurring_revenue` decimal(8,2) DEFAULT NULL,
  `daily_volume` decimal(8,2) DEFAULT NULL,
  `new_merchants` int(11) NOT NULL,
  `new_customers` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `module_id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Customize', 'customize_appearance', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(2, 2, 'View', 'view_attribute', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(3, 2, 'Add', 'add_attribute', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(4, 2, 'Edit', 'edit_attribute', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(5, 2, 'Delete', 'delete_attribute', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(6, 3, 'View', 'view_carrier', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(7, 3, 'Add', 'add_carrier', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(8, 3, 'Edit', 'edit_carrier', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(9, 3, 'Delete', 'delete_carrier', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(10, 4, 'View', 'view_category', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(11, 4, 'Add', 'add_category', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(12, 4, 'Edit', 'edit_category', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(13, 4, 'Delete', 'delete_category', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(14, 5, 'View', 'view_category_group', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(15, 5, 'Add', 'add_category_group', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(16, 5, 'Edit', 'edit_category_group', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(17, 5, 'Delete', 'delete_category_group', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(18, 6, 'View', 'view_category_sub_group', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(19, 6, 'Add', 'add_category_sub_group', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(20, 6, 'Edit', 'edit_category_sub_group', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(21, 6, 'Delete', 'delete_category_sub_group', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(22, 7, 'View', 'view_chat_conversation', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(23, 7, 'Reply', 'reply_chat_conversation', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(24, 7, 'Delete', 'delete_chat_conversation', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(25, 8, 'View', 'view_config', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(26, 8, 'Edit', 'edit_config', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(27, 9, 'View', 'view_coupon', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(28, 9, 'Add', 'add_coupon', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(29, 9, 'Edit', 'edit_coupon', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(30, 9, 'Delete', 'delete_coupon', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(31, 10, 'View', 'view_cart', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(32, 10, 'Add', 'add_cart', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(33, 10, 'Edit', 'edit_cart', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(34, 10, 'Delete', 'delete_cart', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(35, 11, 'View', 'view_customer', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(36, 11, 'Add', 'add_customer', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(37, 11, 'Edit', 'edit_customer', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(38, 11, 'Delete', 'delete_customer', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(39, 12, 'View', 'view_dispute', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(40, 12, 'Response', 'response_dispute', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(41, 13, 'View', 'view_inventory', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(42, 13, 'Add', 'add_inventory', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(43, 13, 'Edit', 'edit_inventory', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(44, 13, 'Delete', 'delete_inventory', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(45, 14, 'View', 'view_manufacturer', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(46, 14, 'Add', 'add_manufacturer', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(47, 14, 'Edit', 'edit_manufacturer', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(48, 14, 'Delete', 'delete_manufacturer', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(49, 15, 'View', 'view_message', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(50, 15, 'Add', 'add_message', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(51, 15, 'Update', 'update_message', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(52, 15, 'Delete', 'delete_message', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(53, 15, 'Reply', 'reply_message', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(54, 17, 'View', 'view_order', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(55, 17, 'Add', 'add_order', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(56, 17, 'Fulfill', 'fulfill_order', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(57, 17, 'Cancel', 'cancel_order', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(58, 17, 'Archive', 'archive_order', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(59, 17, 'Delete', 'delete_order', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(60, 18, 'View', 'view_packaging', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(61, 18, 'Add', 'add_packaging', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(62, 18, 'Edit', 'edit_packaging', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(63, 18, 'Delete', 'delete_packaging', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(64, 19, 'View', 'view_product', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(65, 19, 'Add', 'add_product', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(66, 19, 'Edit', 'edit_product', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(67, 19, 'Delete', 'delete_product', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(68, 20, 'View', 'view_refund', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(69, 20, 'Initiate', 'initiate_refund', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(70, 20, 'Update', 'update_refund', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(71, 20, 'Approve', 'approve_refund', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(72, 21, 'View', 'view_role', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(73, 21, 'Add', 'add_role', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(74, 21, 'Edit', 'edit_role', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(75, 21, 'Delete', 'delete_role', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(76, 22, 'View', 'view_supplier', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(77, 22, 'Add', 'add_supplier', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(78, 22, 'Edit', 'edit_supplier', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(79, 22, 'Delete', 'delete_supplier', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(80, 24, 'View', 'view_shipping_zone', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(81, 24, 'Add', 'add_shipping_zone', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(82, 24, 'Edit', 'edit_shipping_zone', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(83, 24, 'Delete', 'delete_shipping_zone', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(84, 25, 'Add', 'add_shipping_rate', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(85, 25, 'Edit', 'edit_shipping_rate', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(86, 25, 'Delete', 'delete_shipping_rate', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(87, 27, 'View', 'view_system_config', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(88, 27, 'Edit', 'edit_system_config', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(89, 28, 'View', 'view_tax', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(90, 28, 'Add', 'add_tax', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(91, 28, 'Edit', 'edit_tax', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(92, 28, 'Delete', 'delete_tax', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(93, 29, 'View', 'view_ticket', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(94, 29, 'Update', 'update_ticket', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(95, 29, 'Reply', 'reply_ticket', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(96, 29, 'Assign', 'assign_ticket', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(97, 30, 'View', 'view_vendor', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(98, 30, 'Add', 'add_vendor', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(99, 30, 'Edit', 'edit_vendor', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(100, 30, 'Delete', 'delete_vendor', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(101, 30, 'Login', 'login_vendor', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(102, 31, 'View', 'view_warehouse', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(103, 31, 'Add', 'add_warehouse', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(104, 31, 'Edit', 'edit_warehouse', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(105, 31, 'Delete', 'delete_warehouse', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(106, 32, 'View', 'view_user', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(107, 32, 'Add', 'add_user', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(108, 32, 'Edit', 'edit_user', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(109, 32, 'Delete', 'delete_user', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(110, 32, 'Login', 'login_user', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(111, 33, 'View', 'view_utility', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(112, 33, 'Add', 'add_utility', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(113, 33, 'Edit', 'edit_utility', '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(114, 33, 'Delete', 'delete_utility', '2021-06-26 00:03:03', '2021-06-26 00:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(2, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(2, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(3, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(3, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(4, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(4, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(5, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(5, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(6, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(7, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(8, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(9, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(10, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(11, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(12, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(13, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(14, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(15, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(16, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(17, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(18, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(19, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(20, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(21, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(22, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(23, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(24, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(25, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(26, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(27, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(28, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(29, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(30, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(31, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(31, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(32, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(32, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(33, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(33, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(34, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(34, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(35, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(36, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(37, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(38, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(39, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(39, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(40, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(40, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(41, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(42, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(43, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(44, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(45, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(45, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(46, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(46, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(47, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(47, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(48, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(48, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(49, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(49, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(50, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(50, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(51, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(51, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(52, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(52, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(53, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(53, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(54, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(54, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(55, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(55, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(56, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(56, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(57, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(57, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(58, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(58, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(59, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(59, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(60, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(61, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(62, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(63, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(64, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(64, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(65, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(65, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(66, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(66, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(67, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(67, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(68, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(68, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(69, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(69, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(70, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(70, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(71, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(71, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(72, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(72, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(73, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(73, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(74, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(74, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(75, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(75, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(76, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(77, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(78, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(79, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(80, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(81, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(82, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(83, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(84, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(85, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(86, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(87, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(88, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(89, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(90, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(91, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(92, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(93, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(94, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(95, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(96, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(97, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(98, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(99, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(100, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(101, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(102, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(103, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(104, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(105, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(106, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(106, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(107, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(107, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(108, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(108, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(109, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(109, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(110, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(110, 3, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(111, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(112, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(113, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03'),
(114, 2, '2021-06-26 00:03:03', '2021-06-26 00:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `manufacturer_id` int(10) UNSIGNED DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mpn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gtin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gtin_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `min_price` decimal(20,6) DEFAULT '0.000000',
  `max_price` decimal(20,6) DEFAULT NULL,
  `origin_country` int(10) UNSIGNED DEFAULT NULL,
  `has_variant` tinyint(1) DEFAULT NULL,
  `requires_shipping` tinyint(1) DEFAULT '1',
  `downloadable` tinyint(1) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sale_count` bigint(20) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `shop_id`, `manufacturer_id`, `brand`, `name`, `model_number`, `mpn`, `gtin`, `gtin_type`, `description`, `min_price`, `max_price`, `origin_country`, `has_variant`, `requires_shipping`, `downloadable`, `slug`, `sale_count`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 12, 'aut', 'Inventore ea et a impedit at.', 'quo xs871', '56415333', '2471983785983', 'EAN', 'Et architecto at voluptatem reiciendis tempora. Aliquid hic dolore qui ut rerum. Excepturi rem consectetur quis eos minus assumenda aut.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/TGbUpEJ1z-k\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Sequi cumque optio assumenda ratione enim in deserunt. Quae qui est sit et. Atque consequatur similique autem voluptas quibusdam eligendi perferendis qui. Deserunt ipsum dolor facilis.<img src=\"https://loremflickr.com/640/360\" style=\"width: 50%; float: right;\">Consequatur consequuntur iure omnis delectus inventore. Laudantium aspernatur quibusdam vero ad. Ratione eos quis voluptates a ducimus eos. Laborum necessitatibus expedita qui non aliquam. Nihil quia ipsa unde enim cum vel porro. Eum et saepe architecto quas. Nam sit nobis impedit labore odit. Quia sunt consectetur eos illum. Odio magnam nesciunt quis minus tempore quo. Nostrum nemo modi et incidunt sequi. Perspiciatis explicabo cupiditate autem earum mollitia. Quidem enim est voluptatem odio. Dolorum sint quas asperiores quam sint. Dolorum fugit distinctio dolores laudantium impedit. Expedita doloribus iste ab expedita aut. Id est nemo et et. Reprehenderit vel quia blanditiis sunt voluptas. Aut quasi aut ratione est asperiores soluta. Nostrum assumenda ut et natus exercitationem omnis consectetur in. Aspernatur tenetur et maxime ratione.<p><br/><img src=\"http://placeimg.com/640/360/any\" style=\"width: 100%; float: none;\"></p><br/>Qui doloribus molestiae pariatur harum modi earum. Et quam non et aperiam. Aut natus architecto voluptatum quasi ipsum facilis fuga voluptatem. Asperiores quod praesentium quaerat et natus sit. Reiciendis et laudantium et quis. Nostrum fugit nobis voluptatem. Beatae dolorem doloribus rerum est dignissimos facere. Tempore reprehenderit facere voluptate aut iste dignissimos ad quo.', '0.000000', NULL, 175, 0, 1, NULL, 'excepturi-iste-explicabo-est-eum-qui-minima', 9, 1, NULL, '2021-06-26 00:03:51', '2021-06-17 00:03:51'),
(2, 1, 14, 'quod', 'Dicta tenetur perferendis nostrum quia quia facere in.', 'sint jd514', '218', '7884063507668', 'EAN', 'Voluptas est distinctio iusto. Accusantium nostrum magnam quo maiores magnam. Illum voluptates tempore est molestias fuga vitae harum sit.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/SKbHHcdLGKw\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Fugit culpa soluta eveniet aut qui. Necessitatibus error impedit adipisci id.<img src=\"https://picsum.photos/640/360.webp\" style=\"width: 50%; float: right;\">Hic mollitia voluptatibus voluptatibus doloribus nam quasi. Aut rem quia qui impedit et beatae. Ea nemo accusamus quae dolor hic corporis. Rem est ipsam excepturi est corrupti. Occaecati in soluta eaque tenetur. Amet enim rerum perferendis quia aut enim est. Nihil nihil tenetur eos soluta dolor earum. Deserunt laborum earum qui tempore aut veritatis. Molestias ullam suscipit quo. Dolor et magnam impedit. Rerum in autem rem eos. Voluptas et culpa vel recusandae reiciendis doloremque beatae. Est autem ut labore consequatur assumenda. Est omnis maiores voluptas repellendus non ut nihil. Iure itaque placeat et commodi rem non. Inventore aut excepturi nihil sed voluptate. Voluptatem nulla pariatur non magnam enim. Fugit fugit blanditiis dignissimos debitis. Quia numquam tempora amet alias aut. Officia perspiciatis neque nam ex corporis. Doloremque voluptas et modi sed eaque quia. Voluptatem vel corrupti eum expedita eum animi rerum dolore. Totam cupiditate non ad velit. Id qui et porro itaque rerum ut blanditiis repellat. Perspiciatis et voluptas consequatur ut velit. Dolorum voluptatem et nam est. Maxime et exercitationem voluptatibus qui dolore odit. Voluptatem eum in consequatur itaque eligendi nostrum. Quaerat aut perferendis nobis soluta. Voluptatem quia omnis esse dolorem recusandae. Excepturi tempora adipisci incidunt ea harum.<p><br/><img src=\"https://picsum.photos/640/360.webp\" style=\"width: 100%; float: none;\"></p><br/>Aliquam praesentium alias soluta et dolores officiis qui. Minus qui aut qui sunt. Consequuntur sint pariatur adipisci magni delectus et quod. Quos ex voluptatem eveniet fugiat ut ut omnis. Molestias ab voluptates autem vel dicta laboriosam. Blanditiis mollitia consequuntur ex qui. Ut in illo doloribus nulla dolorem dolor cum perferendis. Voluptates fugiat ducimus voluptatum animi quis quasi.', '0.000000', NULL, 807, 1, 1, NULL, 'repellat-velit-voluptatem-enim-et-iste', 3, 1, NULL, '2021-06-26 00:03:51', '2021-06-15 00:03:51'),
(3, NULL, 11, 'distinctio', 'Hic et vero et.', 'accusantium nv826', '13591', '0888577292253', 'ITF', 'Eveniet quod adipisci assumenda dolor deleniti modi. Earum ipsam perferendis consequatur qui velit. Qui laudantium est est aut voluptatibus aut et.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/tJlzIJaokVY\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Reprehenderit quam deleniti odio autem ut. Cumque aut veritatis possimus ut optio aut magnam. Consequatur et voluptatem ut. Quis et officia inventore eos.<img src=\"https://loremflickr.com/640/360\" style=\"width: 50%; float: right;\">Sequi aut beatae voluptatem in est tempora ut nihil. At aliquid dolorum aut velit est laboriosam. Tempore excepturi et corrupti nesciunt. Alias ad quod cum corporis. Perspiciatis veniam et est nesciunt nesciunt ullam. Saepe delectus ipsum quisquam sed. Totam consequatur laborum eius consequuntur debitis occaecati esse. Nostrum architecto aut qui maiores. Quod laudantium architecto expedita impedit. Magnam possimus debitis quaerat officiis corporis nulla. Omnis eos ea ratione ratione voluptates. Voluptas et placeat libero et quo. Et vero deserunt quo accusantium. Aut alias est nesciunt delectus aut nostrum. Neque enim nihil dolor velit laborum ratione. Culpa itaque facere labore occaecati repellat quia. Amet quia eligendi iste vel. Sequi quas voluptas natus deserunt aut enim doloribus in. Illo nobis qui recusandae sunt qui dolorum. Ut cumque totam repudiandae est odio. Ut repudiandae et non aut laboriosam dolores officia est. Excepturi sapiente sint repudiandae sit eos voluptatem.<p><br/><img src=\"http://placeimg.com/640/360/any\" style=\"width: 100%; float: none;\"></p><br/>Maxime est excepturi molestiae assumenda velit eos quidem recusandae. Cum et est omnis voluptas saepe sit repellat. Quisquam explicabo hic architecto. Consequuntur saepe dolores aspernatur sit et amet et. Dolores laboriosam rerum cumque repellendus eveniet reiciendis dignissimos.', '0.000000', NULL, 328, 1, 1, NULL, 'eos-neque-et-dolorum-ipsa-eum-qui', 9, 1, NULL, '2021-06-13 00:03:51', '2021-06-14 00:03:51'),
(4, NULL, 12, 'ipsam', 'Odit odio delectus quaerat ducimus architecto.', 'repudiandae qc676', '9', '7281309987411', 'JAN', 'Aut corporis est voluptatum nemo cumque suscipit. Quis autem inventore enim illum. Vero eveniet in qui quod voluptatibus et quam. Est quia atque non ad.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/SKbHHcdLGKw\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Harum consequuntur ex amet ducimus in quia quos. Vel dolorem magnam excepturi dolorem et quae. In voluptatibus provident et officiis non. Accusamus asperiores a aperiam praesentium ut numquam consequatur.<img src=\"https://picsum.photos/640/360.webp\" style=\"width: 50%; float: right;\">Quod et est rerum eaque nihil. Esse a suscipit et. Necessitatibus voluptatem inventore sed et libero asperiores. Est error quia maxime. Reiciendis dolor ea officia fuga autem. Quis nam earum quisquam minima molestias. Beatae repellendus soluta autem debitis beatae. Et enim itaque quia aut vitae. Voluptate necessitatibus quasi veniam dicta autem voluptatem minima. Voluptatibus cum perspiciatis qui in provident ut sequi quaerat. Enim impedit fugiat aut impedit et et ut velit. Debitis similique animi cupiditate explicabo labore autem. Voluptas voluptas ullam sequi consequatur. Porro dolor ex voluptatem eveniet. Ipsa voluptatem nemo dignissimos similique. Culpa dolor enim labore veritatis voluptate tempora. Et ea natus tempore molestiae in quisquam ut vel. Dolores pariatur qui autem fuga sint quos. Reiciendis maiores cumque et. Quia nemo nemo totam optio. Non quia beatae consequatur aut aliquam est. Debitis fuga minima voluptatibus et. Debitis atque aliquid esse fugit incidunt. Ipsum voluptatum a et ipsam ipsam libero in qui. Sed minima aperiam quia in.<p><br/><img src=\"https://picsum.photos/640/360.webp\" style=\"width: 100%; float: none;\"></p><br/>Quia est porro quia totam. Facere voluptatem id illo eos quos est optio. Cupiditate laudantium rerum eos nostrum. Maxime perspiciatis dicta quod qui non vitae. Reiciendis occaecati error eos cum ducimus dolorum velit. Cupiditate beatae odit unde. Expedita voluptates ut iusto consequuntur et odit. Aut quo consectetur veritatis.', '0.000000', NULL, 682, 1, 1, NULL, 'fugiat-aut-in-aliquam-ad-placeat-blanditiis-deserunt-incidunt', 1, 1, NULL, '2021-06-19 00:03:51', '2021-06-14 00:03:51'),
(5, 1, 14, 'sed', 'Voluptatem sed in esse et.', 'eligendi ac624', '4', '6890690870465', 'UPC', 'Omnis sunt officia non vero quisquam et. Facilis voluptatibus mollitia quisquam quia dolores nihil sed. A molestiae et quae aliquam sit aut. Numquam culpa aut a molestiae accusantium eos. Voluptatem et sint et et. Libero eveniet deserunt quasi quo eos.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/eEzD-Y97ges\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Fugiat consequatur nostrum suscipit ut. Qui et aut occaecati. Dicta distinctio non debitis tenetur consequuntur et dolor. Necessitatibus facere perspiciatis aut assumenda neque blanditiis provident.<img src=\"https://picsum.photos/640/360.webp\" style=\"width: 50%; float: right;\">Necessitatibus omnis vel tempora in corporis. Sit ipsam aut quis voluptas. Et et ipsam voluptatem consequuntur explicabo omnis. Ea et eveniet officiis ut cupiditate unde temporibus. Aut quia totam minus aliquam facere rerum. Sequi sunt et voluptatem laboriosam fuga ut molestiae est. Mollitia impedit eum est accusamus at. Deserunt vel cum sunt magnam aperiam quam vitae libero. Sunt ut in odio. Aut praesentium ratione nisi sed ut dolorem sint. Possimus ut occaecati qui voluptatem. Quia necessitatibus ut rerum animi. Architecto provident at aspernatur consequuntur dolores sit. Cupiditate tempore quae exercitationem omnis. Illo aut ab dolorem nostrum vel sapiente velit. Ex dolores et consequatur minima corporis natus error. Dolorem at totam ex dolor possimus nemo quo. Maiores eaque aut assumenda voluptatem tempore sunt doloremque. Ad a consequatur repellat necessitatibus dolorum accusamus fugiat hic. Sunt quibusdam pariatur iusto omnis id veritatis. Delectus placeat provident dolorum. Fuga modi enim nisi libero quis voluptatum est. Autem molestias facilis illo non incidunt sit hic. Quos qui illo in et deleniti aut expedita quia. Cumque architecto sit atque hic aut. Ipsa voluptate necessitatibus dolorem aut. Velit non iusto et repellendus. Saepe qui magni et voluptatem dolores quod aperiam numquam. Et aperiam aperiam distinctio distinctio aut. Tenetur iste fugiat ipsum. Aut voluptas expedita velit cumque.<p><br/><img src=\"http://placeimg.com/640/360/any\" style=\"width: 100%; float: none;\"></p><br/>Quia dignissimos et occaecati. Explicabo mollitia odit aut ad dolorem. Rerum repellat qui voluptatem voluptas qui. Dolore fuga vero mollitia.', '0.000000', NULL, 398, 1, 1, NULL, 'reprehenderit-nesciunt-qui-et-earum-veniam', 4, 1, NULL, '2021-06-23 00:03:51', '2021-06-17 00:03:51'),
(6, 1, 10, 'quia', 'Doloribus fugit ut a quibusdam commodi qui.', 'esse xp533', '19323115', '2491323733702', 'UPC', 'Esse sit culpa et reprehenderit neque aut libero totam. Omnis sapiente nobis et. Et non maiores debitis deserunt. Tenetur facere totam vel quos et dolores pariatur.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/TGbUpEJ1z-k\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Excepturi aut accusantium porro et. Voluptatem sunt voluptatem numquam eaque inventore aliquid. Non consequatur excepturi rerum ipsam temporibus hic. Voluptas delectus et magnam cum rerum nam quas accusamus. Corporis doloribus saepe consequatur possimus.<img src=\"https://picsum.photos/640/360.webp\" style=\"width: 50%; float: right;\">Aliquam nulla ut voluptatibus porro eum commodi. Quis recusandae est sit. Et impedit ducimus non. Ut iusto reiciendis id eius pariatur explicabo. Dolore quidem accusantium amet qui quasi aperiam. Sequi dignissimos ipsa quis quas. Aut accusantium qui in pariatur eum et rem. Enim et nam itaque dolor quod molestiae mollitia. Quisquam incidunt aspernatur sunt ullam. Qui quia praesentium odit repudiandae molestias veniam. Atque itaque eum et alias ea quia. Ut inventore eaque est iusto similique consequatur aspernatur eaque. Sapiente dignissimos amet consequatur dolor aut autem excepturi. Aut placeat est deserunt optio ducimus maxime eaque. Voluptatum cum est rerum qui harum aut repellat. Eum culpa similique et sit quae ipsa vitae. Incidunt maxime voluptate sequi et. Est quo debitis in dolores velit. Dolores ullam ipsam quo aliquam id. Vel animi qui consequatur eum molestiae perferendis. Eos cupiditate enim possimus. Consectetur aliquid dolores hic ducimus enim placeat. Sapiente non consequatur non debitis voluptatum. Quisquam et ea sint inventore necessitatibus. Ea dolores quisquam laborum excepturi voluptatem. Ratione fugit necessitatibus dolore porro. Facere aliquam in doloremque perspiciatis a. Qui dolores et ut qui aut. Nihil tempore quaerat corrupti dolore est ex qui. Vitae adipisci similique ratione voluptatibus sint totam sit. Dolor impedit qui a aut quasi quas itaque. Alias voluptatibus dolorem magni omnis. Occaecati distinctio laboriosam ea modi ad. Numquam est porro non veritatis est nisi. Cum dolores aspernatur eos minima repellat. Aspernatur maxime consequatur voluptas quae vel repellat et consequatur. Facere aut esse deserunt doloremque ad excepturi. Sit aut odit aut tempore qui.<p><br/><img src=\"https://picsum.photos/640/360.webp\" style=\"width: 100%; float: none;\"></p><br/>Maxime eligendi necessitatibus officia qui consequatur laudantium commodi. Iste officiis cumque sit id pariatur. Id hic eius tenetur est. Ducimus culpa dolorem ipsa quasi ut nisi doloribus. Ex et qui inventore qui. Dolorum animi sit enim fugit facere quis ducimus quia. Molestiae debitis non ad ut.', '0.000000', NULL, 203, 0, 1, NULL, 'officia-aspernatur-ab-voluptatem-iusto-distinctio-in', 1, 1, NULL, '2021-06-16 00:03:51', '2021-06-26 00:03:51'),
(7, 1, 8, 'architecto', 'Modi praesentium veritatis asperiores nihil aspernatur in.', 'expedita ne929', '361805', '0710976353689', 'ISBN', 'Aut adipisci accusamus modi sed ullam. Illo praesentium animi dolor. Facilis rerum neque cupiditate qui. Et mollitia ullam iste quaerat adipisci.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/eEzD-Y97ges\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Qui veniam nesciunt illo quo harum repellat nobis. A voluptatem tempora inventore praesentium itaque. Nam est quidem dolores ab. Quo exercitationem eligendi enim.<img src=\"https://picsum.photos/640/360.webp\" style=\"width: 50%; float: right;\">Debitis aut ut accusantium tempore voluptas debitis eligendi. Modi porro ipsa voluptatem omnis quasi vitae consequatur. Sunt qui dolores voluptates id nihil. Sapiente voluptate nemo et. Impedit qui quod quia dolores. Dolor deserunt autem saepe minus id adipisci quo. Id quia eos laborum laboriosam non libero eaque. Consequuntur iure ipsa perferendis dolorum saepe. Minus maiores distinctio eum est. Qui at libero vel facilis. A repellendus id architecto dolorum laboriosam quibusdam ea. Sit est ducimus voluptas nihil ipsum velit. Quasi dignissimos nulla adipisci ut ea voluptas. Enim libero non sed dolores cumque dolores dolores. Non impedit quia est corrupti voluptatem. Est quis suscipit odio quisquam qui voluptate. Cupiditate et laborum commodi ab. Ratione rerum est laudantium perspiciatis nulla iste dolorem. Provident sequi porro officiis. Non ipsam at voluptas minus accusamus dolorem omnis pariatur. Aut laboriosam quos dolore aut qui. Eligendi eaque molestias ut ea molestias at. Rerum sunt similique quasi molestias ratione ea. Omnis itaque neque est qui doloremque aliquam odit. Adipisci corporis impedit velit error fugiat. Fugiat a officiis incidunt non accusamus odit quas ducimus. Ut fuga dolor eum. Autem nostrum rerum velit tempore amet quos. Non earum beatae est nihil harum. Sunt omnis quia officia dolore et. Nam hic assumenda fugit qui. Eum reprehenderit nesciunt soluta odio corporis fuga nihil. Sint praesentium est quibusdam possimus explicabo exercitationem distinctio. Recusandae reiciendis qui sit et et. Iure temporibus beatae et autem et odit sunt. Voluptas in accusamus error laboriosam deserunt sint autem sunt. Reprehenderit et est voluptatem qui accusantium accusamus.<p><br/><img src=\"http://placeimg.com/640/360/any\" style=\"width: 100%; float: none;\"></p><br/>Cupiditate ipsum velit quae quo quia. Aut veritatis cupiditate illum libero. Esse consequatur qui impedit dolor. Aut aliquam dolores incidunt quidem consectetur placeat sunt. Suscipit dolores distinctio suscipit et accusamus voluptatem recusandae expedita.', '0.000000', NULL, 620, 0, 1, NULL, 'quo-magnam-placeat-sed-quis-est-consequatur', 2, 1, NULL, '2021-06-26 00:03:51', '2021-06-26 00:03:51'),
(8, NULL, 6, 'culpa', 'Sunt qui illo sed laudantium.', 'ratione dh229', '708623', '3319088355856', 'EAN', 'Sed quia qui aliquam facere qui consectetur. Sunt vel dolore omnis facilis.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/TGbUpEJ1z-k\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Reprehenderit nulla rerum illo reprehenderit eius et. Omnis aspernatur fugiat nam quis nostrum qui voluptas fugiat. Possimus aut et voluptatum blanditiis itaque. Quod minima laudantium excepturi id modi quo. Quia minima sed facilis dolorem non voluptatum. Ipsam quia earum consequatur excepturi.<img src=\"https://picsum.photos/640/360.webp\" style=\"width: 50%; float: right;\">Error accusamus esse molestias quia. Debitis minus vitae facilis excepturi voluptates. Dolores quasi ut consequuntur sint qui natus dolorem vel. Repellat corporis quisquam iusto at similique. Aut expedita officia velit voluptas provident quas. Sed ea omnis aliquid quasi et. Aut aut eligendi nobis consequatur officiis. Atque quo ipsa voluptatem quo eaque. Pariatur qui vel laborum aut et sunt. Voluptatem repellendus quam facere ea et. Mollitia vel deleniti quae illum. Recusandae et quas eligendi. Rerum quis in ipsam rerum modi molestias eveniet quod. Reprehenderit molestias voluptatem quam et rerum ut. Maiores quia possimus nulla cupiditate officiis et at perspiciatis. Officiis quam molestiae sed sed. Molestiae delectus ut ex quis sint qui. Molestiae recusandae autem optio et. Sapiente esse enim aspernatur quo deserunt vero. Rem quia voluptates id maxime est dolorem.<p><br/><img src=\"https://picsum.photos/640/360.webp\" style=\"width: 100%; float: none;\"></p><br/>Perspiciatis non perferendis nihil deleniti quia. Qui ea voluptas libero est ullam et. Possimus aperiam reiciendis ex. Alias vel dolor porro voluptate dolorem. Deserunt adipisci id corporis in quae.', '0.000000', NULL, 44, 0, 1, NULL, 'ab-debitis-ea-saepe-sunt', 2, 1, NULL, '2021-06-24 00:03:51', '2021-06-25 00:03:51'),
(9, 1, 15, 'nihil', 'Maxime porro est fuga iste rerum quod accusamus fuga.', 'omnis pj992', '99659524', '6263896275967', 'ITF', 'Laboriosam est facilis voluptatem amet et aliquid nam. Possimus reprehenderit delectus beatae est quia sed. Architecto vero itaque temporibus vitae itaque sint consectetur.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/eEzD-Y97ges\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Tempora saepe nam totam delectus quia dolorem consectetur. Id unde quo aut et.<img src=\"https://loremflickr.com/640/360\" style=\"width: 50%; float: right;\">Non rem autem similique enim perspiciatis. Recusandae voluptatibus et sapiente debitis harum. Deleniti in tempore aut id molestiae facilis possimus libero. Explicabo dolorum perspiciatis quas rerum eum illum nobis. Vitae facilis impedit perspiciatis quos dolorem aut optio. Eos facilis maiores odit possimus rerum. Rerum porro quia cumque et natus. Voluptatem repudiandae non at doloribus molestiae ut. Eius voluptatem unde vel deleniti eaque dignissimos dolore. Minus in qui reprehenderit consequatur deserunt sequi. Veniam soluta libero nulla. In odio culpa velit nobis ut dolores. Et sit voluptatibus atque nulla nihil ut. Voluptatem omnis id enim. Nihil esse fuga necessitatibus doloremque ipsum. Et dolorem nihil vero voluptatem quos occaecati explicabo. Quas sequi vitae nihil sint eum. Corporis doloremque eius harum. Et eius culpa libero harum. Et veniam corrupti occaecati rerum est. Reiciendis rerum quisquam sint iusto nulla et. Consequatur est est magnam magni qui reprehenderit. Et quia facere deleniti aut quibusdam autem. Et aut corporis doloremque. Rerum et et modi dolore aut vero ut non. Nisi ratione eligendi sit aut non quod. Voluptas doloremque facere aut delectus vel totam consequatur. Dolore necessitatibus voluptatem id officia minima ea quam. Ex necessitatibus corporis deserunt. Non est cupiditate at aliquam. Sed accusantium consequatur ducimus illo asperiores architecto fugiat. Sed illo voluptatibus nemo occaecati officiis iusto aut rerum. Est adipisci ea eligendi enim voluptatem earum quo. Consequuntur et ea impedit doloribus qui alias ea. Et consequatur repudiandae quasi quae reprehenderit omnis. Sed qui adipisci omnis quasi. Tenetur a est quia voluptatum voluptatum ullam.<p><br/><img src=\"http://placeimg.com/640/360/any\" style=\"width: 100%; float: none;\"></p><br/>Qui non minima at blanditiis. Eum saepe ex numquam eum illum. Et saepe consequatur nulla nam assumenda vero repudiandae. Rerum dicta aut maxime deserunt ipsa. Quo laboriosam ad dolore minus magnam. Sit a earum provident aut sed. Veniam iusto qui fugit omnis voluptas unde sed atque. Cumque vitae repellendus voluptate ab voluptate.', '0.000000', NULL, 780, 1, 1, NULL, 'cupiditate-quidem-a-labore-vel-ut-facere-aut', 0, 1, NULL, '2021-06-20 00:03:51', '2021-06-22 00:03:51'),
(10, 1, 13, 'et', 'Soluta non quisquam deserunt et dolorum expedita ut.', 'tenetur vl877', '142404', '3942630859894', 'UPC', 'Exercitationem odio et alias. Odio atque facilis beatae et. Saepe molestiae voluptatum ducimus laboriosam cum et quae. Dolores et aut non magnam fuga. Dolor omnis pariatur natus voluptas exercitationem fugit. Illo consequatur neque sit velit qui sapiente quo. Inventore saepe veniam quis et.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/7abGwVjXSY4\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Aspernatur qui veniam non excepturi distinctio. Vero est dolore at et voluptas. Quibusdam quasi nam quibusdam velit. Et porro iste amet voluptatem qui odio.<img src=\"https://picsum.photos/640/360.webp\" style=\"width: 50%; float: right;\">Aspernatur et rerum sunt autem nam sed. Sint doloremque nihil dolores. Repellat consequuntur delectus culpa adipisci delectus non sit. Vero aut aperiam reprehenderit. Non error praesentium omnis. Aliquam nulla reiciendis voluptatum est aut necessitatibus amet. Iusto unde doloribus eaque omnis aut. Libero maiores alias molestiae. Nisi aut accusantium omnis. Animi deleniti culpa quo omnis suscipit. Aut unde nihil sit labore. Explicabo asperiores corrupti ut quas possimus. Possimus occaecati voluptatibus autem accusamus. Vel vel dolorem fugit nihil. Eaque et veritatis non est qui nulla. Fuga magnam nesciunt nisi iste. Ipsam corporis ut aut autem quis. Explicabo vel quia qui consequatur rem error. Asperiores omnis nemo assumenda qui. Praesentium quia reiciendis quisquam pariatur quae. Possimus atque iure officiis animi illum. Quia qui iste earum quia. Non laudantium recusandae porro accusamus quidem nulla eius. Enim dolor quae et est. Ut aliquid aut voluptatibus repellat. Recusandae quo aspernatur qui exercitationem nemo. Rerum qui adipisci dolores non. Cupiditate iure aut enim repellendus eligendi fugit eaque. Tenetur neque harum placeat magnam deleniti magni ratione unde. Quia esse aut omnis fuga eius harum totam. Dignissimos deleniti accusamus quibusdam omnis illum quia rerum. Atque odit veniam nulla eum. Earum iusto accusamus voluptas est velit. Possimus velit sit aut quia aut omnis similique. Qui animi sunt placeat est. Qui eum reprehenderit minus est. Quo debitis error fugiat omnis ut vel. Id consequatur similique sit iste velit voluptate enim. Soluta vitae ipsum aut consequuntur. Odio dolorum rerum cum ut dolorem sint optio qui.<p><br/><img src=\"https://loremflickr.com/640/360\" style=\"width: 100%; float: none;\"></p><br/>Occaecati tempora qui perspiciatis. Maxime placeat exercitationem natus distinctio ea. Ullam repellat ut quam dolorem ut.', '0.000000', NULL, 238, 1, 1, NULL, 'aut-saepe-impedit-ut-cumque', 0, 1, NULL, '2021-06-16 00:03:51', '2021-06-18 00:03:51'),
(11, NULL, 13, 'et', 'Illum et quas sed reiciendis est.', 'omnis gc109', '7361', '1890321468165', 'UPC', 'Blanditiis dolor autem veritatis dolor nihil necessitatibus aut. Vero quasi amet qui sint nihil fugit laborum. Nemo error aut et. Et ipsam quia eum et illo. Libero rerum perferendis ipsa. Ex soluta quo enim sed.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/AVpcxtH8hWg\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Eos voluptatem et quo occaecati illum perspiciatis at. Qui laboriosam eos beatae debitis nesciunt aperiam. Consequuntur ipsa sapiente repellendus rerum ut laborum et consectetur.<img src=\"http://placeimg.com/640/360/any\" style=\"width: 50%; float: right;\">Tenetur soluta autem et tempore voluptatem. Et excepturi in rerum vel ea velit. Fugit molestias dolor eos nesciunt. Facilis ut ut ut sit adipisci eius. Optio odio temporibus veritatis possimus nemo. Necessitatibus dolorem veniam quidem et. Ipsa doloribus fugit est et laudantium. Magnam recusandae est veritatis sit. Animi quas sequi ex magni. Nemo quibusdam enim beatae quas qui reprehenderit debitis. Iure omnis voluptatem aut. Et veritatis repudiandae sit recusandae nemo. Expedita eius molestias distinctio aut. A eaque qui eos et saepe consequatur nesciunt. Iure facilis possimus autem ea. Ratione voluptatem ducimus veritatis delectus iure quia. Impedit cum labore necessitatibus in debitis. Ullam perspiciatis architecto nesciunt maxime in. Quisquam necessitatibus quia omnis qui accusamus. Quis id facilis veritatis asperiores. Earum sit nemo ab. Commodi autem unde corrupti ea optio. Quae et ducimus cumque. Voluptatem impedit vel vero repellendus ullam. Est sed esse incidunt quam adipisci temporibus. Fuga perferendis ipsam iure aliquid. Qui laudantium quia aliquam ut beatae nam. Dicta et quod odit sapiente commodi quaerat. Et suscipit eos et excepturi nihil omnis voluptatibus minus. Voluptatem dolorum at hic. Nihil aliquam veniam eius ratione et. Velit quia voluptatem tempore quaerat. Eum porro ipsa deserunt odio. Dolor maxime doloribus praesentium. Autem nesciunt ut rerum. Quis maxime magnam est sed suscipit eaque. Et excepturi officia vel. Ea voluptatibus modi aliquid ducimus. Veritatis necessitatibus debitis est quasi velit hic. Tenetur velit quia repudiandae quo ut dolorem.<p><br/><img src=\"http://placeimg.com/640/360/any\" style=\"width: 100%; float: none;\"></p><br/>Dolor reiciendis sed voluptates est distinctio. Omnis voluptatem reiciendis nostrum quae iusto corrupti. Rerum laborum nostrum voluptatibus quia.', '0.000000', NULL, 792, 0, 1, NULL, 'officia-nostrum-molestiae-sit-expedita', 2, 1, NULL, '2021-06-18 00:03:51', '2021-06-17 00:03:51'),
(12, NULL, 4, 'autem', 'Et voluptatum beatae ut sed quibusdam.', 'autem za280', '20593', '2893980732232', 'ITF', 'Aperiam dolorum ad nihil sequi voluptate. Ab minus nemo odio soluta. Tenetur ut debitis aut ducimus.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/SKbHHcdLGKw\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Error voluptatum veritatis dolorum et id debitis vitae. Dolores quae neque veritatis qui est et. Cupiditate sed facere iure doloribus magni repellendus. Earum aliquid iusto earum repellendus nihil.<img src=\"http://placeimg.com/640/360/any\" style=\"width: 50%; float: right;\">Dolores expedita sunt culpa et explicabo. Omnis fugit et nostrum quod laboriosam. Non dolor dolor id veniam. Aut vero quidem perspiciatis vel at. Dolorum est accusamus et iste officiis. Aspernatur ea qui error et. Beatae est consequatur incidunt vitae odit rem. Consequatur quia dolorem iure sed quasi. Non rerum officia consequuntur eos pariatur qui placeat. Necessitatibus itaque quasi quia totam in molestiae. Tempore debitis delectus consequatur rerum qui aut officiis. Quibusdam eligendi asperiores totam voluptas hic est eos. Voluptatem ut qui totam repellendus vel quaerat. Optio sequi et ut natus. Voluptas deserunt molestiae aliquid porro nobis reprehenderit. Perspiciatis nulla sunt impedit doloremque voluptas ipsum non. Enim quasi at quod. Ut doloribus consectetur eum nesciunt cum assumenda nulla. Facere consequatur voluptatum officia expedita. Praesentium nihil sit voluptate earum voluptatem tenetur et. Quo neque et nisi quo suscipit totam doloribus. Laboriosam ea corrupti qui quas et nemo quos. Dolorem voluptatum illum veniam hic ea. Tenetur vitae perferendis ea delectus. Voluptatum nihil id blanditiis libero velit aut officia. Ut totam ea est illo tempore voluptas. Eligendi optio eveniet repellendus at odit voluptatum. Ducimus quam atque magni consequatur qui sed. Vel natus sunt voluptatem. Ut quia asperiores quam. Qui et voluptates rerum facere ut corrupti. Quam sed quis dignissimos. Asperiores optio et incidunt quo vero. Rerum dolorem ut consequatur molestiae velit. Voluptatum aspernatur inventore laboriosam et sed. Et temporibus est est sint suscipit reprehenderit nulla. Cum ab ad dolorem nihil deleniti. Nostrum tempora minus corporis quisquam dolores.<p><br/><img src=\"https://picsum.photos/640/360.webp\" style=\"width: 100%; float: none;\"></p><br/>Voluptas dolorem quo voluptatem quos ea eius reprehenderit. Quam et ipsa est corporis culpa deserunt. Reiciendis similique quos voluptas rerum harum. Corporis qui ut est quia officiis eius.', '0.000000', NULL, 780, 0, 1, NULL, 'laborum-nam-totam-ut-nesciunt-id', 7, 1, NULL, '2021-06-16 00:03:51', '2021-06-11 00:03:51'),
(13, 1, 8, 'quaerat', 'Aspernatur autem dignissimos modi autem iure.', 'officia ua791', '499545755', '8794065072110', 'JAN', 'Reprehenderit iste et omnis qui. Est nulla vel eligendi nobis ut. Id et delectus ea soluta accusamus dolor vero.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/SKbHHcdLGKw\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Veniam consequuntur in voluptates beatae fugit reprehenderit aut. Magni est natus voluptas ad nemo.<img src=\"http://placeimg.com/640/360/any\" style=\"width: 50%; float: right;\">Voluptas voluptatem facere totam autem. Aut expedita quis facilis adipisci. Nostrum aperiam repudiandae eligendi modi praesentium. Dolore perspiciatis quisquam et voluptatem. Rerum dolor soluta et. Nihil ut distinctio esse deserunt voluptatem quis facilis. Odit eaque sint et veniam rerum aut. Facilis non totam magni et laboriosam eos magnam. Repudiandae excepturi cupiditate laborum rerum. Et soluta ullam autem praesentium distinctio veritatis non. Pariatur at dignissimos quae libero corrupti aliquam distinctio mollitia. Magnam expedita quidem nesciunt recusandae unde optio. Quos inventore adipisci dolorum ipsa esse. Eum vel deleniti consequuntur voluptatem accusamus architecto sint non. Officia molestias veniam quod laborum dolorem et et. Expedita perspiciatis incidunt laborum delectus. Excepturi deserunt sed cupiditate consectetur molestias accusantium eos aut. Aut minima laboriosam magni inventore enim. Velit veniam alias dolor et blanditiis fugit est. Officiis consequatur quam ullam. Voluptatibus excepturi voluptatem iusto aut at nihil. Ipsum quia non quisquam temporibus illum ea. Neque quis voluptas ut dolorem. Atque voluptatem exercitationem quasi et officiis minus aut. Veniam impedit consequatur qui quo. Ut ducimus repellendus odio necessitatibus quis consequatur. In numquam adipisci minus consequatur. Impedit numquam modi illum maxime.<p><br/><img src=\"https://loremflickr.com/640/360\" style=\"width: 100%; float: none;\"></p><br/>Vel corporis modi ut et. Cupiditate optio omnis quae temporibus omnis laudantium rerum. Veniam vitae ipsa et excepturi occaecati. Amet debitis adipisci quam et magnam odit quos. Consequatur dolorem soluta aliquam quia fugit soluta. Distinctio quia et amet. Enim omnis incidunt quia laborum pariatur unde pariatur.', '0.000000', NULL, 760, 0, 1, NULL, 'dolore-aut-mollitia-maiores-in-enim-voluptas', 3, 1, NULL, '2021-06-14 00:03:51', '2021-06-11 00:03:51'),
(14, 1, 5, 'cum', 'Ea eius beatae nobis autem quos rerum autem quia.', 'ipsa tl150', '9', '4552471545680', 'JAN', 'Eius voluptas qui accusantium quis unde. Officiis ut ut aut explicabo quia nulla. Rerum voluptas animi hic cupiditate. Occaecati ut explicabo ipsum repellendus incidunt magnam. Natus consequuntur vero asperiores architecto distinctio. Quibusdam perferendis laboriosam placeat et beatae sunt quam.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/SKbHHcdLGKw\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Quo quia blanditiis rerum in aut. Impedit dolore ut et dolores eius. Non sint quo maiores dicta. Rem modi ut asperiores sit vel ex consequatur.<img src=\"https://picsum.photos/640/360.webp\" style=\"width: 50%; float: right;\">Aut placeat ab consequatur eaque quis tempora numquam. Sunt unde aut quaerat. Non et quis rerum praesentium veritatis. Consequatur consequatur voluptatum rem omnis aperiam iste non. Dignissimos ut expedita vero facere. Atque est non tempore ipsum. Reprehenderit praesentium atque qui. Nam repellat accusantium laboriosam et officia doloribus. Impedit dolores non corrupti eius. Qui sequi qui fugiat officia excepturi veritatis. Et vel dolorem aut. Deleniti omnis omnis veritatis nostrum distinctio consequatur. Accusamus inventore et quia et. Vero esse at nesciunt consequuntur fuga ullam. Consequatur doloribus iure porro dolores. Et unde est est ab quae. Nisi fugit voluptas et temporibus. Et quia aut suscipit quo hic quidem laudantium inventore. Molestiae doloribus neque asperiores magni veniam. Quae voluptate quas est voluptatibus voluptate atque sit maiores. Enim inventore ut consequatur et quod. Dicta distinctio fuga qui voluptate earum a. Quos odio asperiores nemo assumenda non a aperiam qui. Omnis quis itaque modi temporibus vitae.<p><br/><img src=\"https://loremflickr.com/640/360\" style=\"width: 100%; float: none;\"></p><br/>Nihil tempora et aliquid veniam. Assumenda qui repudiandae quaerat. Magnam aut quia culpa officiis placeat quaerat. Assumenda incidunt nam id sit ut aut omnis.', '0.000000', NULL, 16, 0, 1, NULL, 'ipsum-eos-aperiam-at', 8, 1, NULL, '2021-06-23 00:03:51', '2021-06-19 00:03:51'),
(15, 1, 14, 'culpa', 'Numquam dolorem rerum tenetur velit reprehenderit et harum.', 'rerum mr365', '12', '4790619428017', 'ITF', 'Sunt hic eum omnis doloremque dolore et. Et voluptatem molestias earum aut repellat ratione est. Temporibus aut error sunt quia cum doloribus et. Impedit distinctio eaque corporis.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/TGbUpEJ1z-k\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Corrupti consequatur rerum culpa blanditiis facilis. Illo repudiandae aperiam dolorum aut animi.<img src=\"https://picsum.photos/640/360.webp\" style=\"width: 50%; float: right;\">Nihil reiciendis doloremque quia delectus. Minus incidunt aut sunt perferendis. Earum nobis ea aut suscipit in quam. Laboriosam eligendi cum nihil laborum nisi. Vel sunt nam necessitatibus dolore blanditiis eos. Dolore placeat non porro vero voluptatum beatae. Omnis ut non ut ut dolorum voluptate qui excepturi. Sit voluptatum vel sit libero ipsa. Qui totam nesciunt quidem repudiandae. Architecto quo animi autem possimus illo rem officiis officiis. Eaque sunt eum numquam quis labore. Non est ut repellendus ullam assumenda in. Et tempore porro ab. Aut repellat et quasi nam culpa. In quos est dolorum earum et nam aut. Ipsam ratione minus tenetur consequuntur voluptatem inventore. Velit itaque similique omnis unde blanditiis adipisci a. Officiis aperiam dolor suscipit sequi. Quisquam et libero enim neque aut. Nemo qui molestias molestias recusandae accusamus nihil. Consequuntur rerum maxime aut maiores explicabo. Nihil eius quis et. Aperiam aspernatur earum est recusandae excepturi nesciunt magni. Ipsam perferendis facere enim alias quia. Molestiae non delectus ducimus accusantium natus est. Temporibus sit quia mollitia. Voluptas quia corrupti architecto et rerum voluptates ratione. Est commodi doloribus ipsum. Sint quasi qui aut quidem doloribus autem. Quia nobis pariatur totam dolorem aperiam fuga. Aliquid nemo est quis ut minima id autem. Qui eveniet et quas amet animi officia. Quidem a veniam consequatur voluptatem dignissimos labore voluptas. A qui necessitatibus voluptatem fugit doloremque. Aperiam quis eaque enim. Quas voluptates consequuntur aperiam. Et iste optio consequatur. Qui dolorem et hic assumenda nobis beatae. Maxime quibusdam suscipit dolorum consequatur quasi. Voluptatum optio voluptas animi inventore voluptatem rem. Illum sed aut iure voluptatem.<p><br/><img src=\"https://loremflickr.com/640/360\" style=\"width: 100%; float: none;\"></p><br/>Ut est quasi voluptatem molestias ea rerum suscipit in. Perferendis pariatur cum consequatur eos. Veniam voluptas nisi temporibus fuga quis. Illum laboriosam libero recusandae quis voluptatem.', '0.000000', NULL, 233, 0, 1, NULL, 'voluptatum-rerum-odio-tempora-accusamus-totam-provident', 0, 1, NULL, '2021-06-22 00:03:51', '2021-06-14 00:03:51'),
(16, NULL, 3, 'qui', 'Autem totam modi nesciunt quos ea sit libero.', 'qui pz190', '924', '0150038735808', 'ISBN', 'Ad nesciunt blanditiis ipsum non sed quia sunt. Voluptatem recusandae quia aspernatur ipsa dolores neque. Ducimus aperiam optio explicabo dolor.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/TGbUpEJ1z-k\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Placeat voluptas et ut odit illo cupiditate. Et odit ducimus exercitationem qui consequatur optio facilis. Nulla in tempora possimus delectus aliquam. Et autem animi sunt in provident odio ut occaecati.<img src=\"http://placeimg.com/640/360/any\" style=\"width: 50%; float: right;\">Quae exercitationem eum exercitationem sunt sit repellendus adipisci. Officia facere voluptas et aperiam est corrupti cupiditate. Voluptate molestiae itaque omnis similique vitae reprehenderit culpa quia. Tempore aut sequi doloremque vero. Dolorum occaecati modi quia aspernatur. Est animi quibusdam velit molestiae explicabo. Amet ut iure vel quia quas laboriosam architecto. Dolor et aut inventore laborum excepturi excepturi ipsum. Cumque quas libero natus dolor. Autem suscipit voluptas adipisci ipsam beatae ratione. Ducimus ut cumque autem id repellendus. Nostrum omnis commodi aut voluptatum reprehenderit accusamus accusamus nulla. Natus earum cumque aut quia vel harum. Nihil dolorem rem est saepe sit eos mollitia. Commodi reprehenderit saepe ratione est aliquid ipsum. Suscipit quam atque aperiam soluta odio earum. Autem beatae quibusdam vero rem reprehenderit commodi. Quidem illo sed ipsam atque eligendi rerum. Repudiandae quae voluptas quos quos. Est cumque eaque dolores corporis inventore. Consectetur architecto qui aut dicta maiores sed. Accusantium temporibus repellendus vel error amet. Est culpa consectetur pariatur rem consequuntur repudiandae reiciendis. Repellendus iure quaerat rerum accusantium et quis qui. Omnis et quia quo velit quaerat. Animi qui omnis sint quo. Minima consequatur aliquid qui labore. Quibusdam adipisci molestiae veniam quam. Quia voluptatum sint qui expedita. Necessitatibus necessitatibus dignissimos et quibusdam autem quam necessitatibus. Nulla excepturi eum sit sed eligendi aut facilis consequatur. Repellendus quis unde qui nam sunt iure sunt expedita. Voluptas molestiae iure beatae non illo. Dolor aut iusto nulla reiciendis enim sunt et cum.<p><br/><img src=\"https://loremflickr.com/640/360\" style=\"width: 100%; float: none;\"></p><br/>Praesentium aspernatur rerum sint voluptas aut voluptas facilis. Et atque et et explicabo magni assumenda magnam. Amet quibusdam quisquam optio aut porro quia nulla. Laborum provident ducimus quo tempore.', '0.000000', NULL, 28, 1, 1, NULL, 'aliquid-ut-culpa-voluptatem-libero-recusandae-sed', 3, 1, NULL, '2021-06-23 00:03:51', '2021-06-13 00:03:51'),
(17, NULL, 9, 'nihil', 'Id aut quod praesentium voluptas tempora rerum.', 'commodi ku736', '8668538', '3726511645475', 'ITF', 'Culpa qui tempora iure enim. Officiis dolore dolor eaque possimus delectus iste sit perspiciatis. Architecto itaque dolorum ut aut in. Voluptas ab qui non voluptates nesciunt temporibus aliquid.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/mATMpaPBBFI\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Delectus ducimus nemo ut. Repellendus possimus aut facere quidem omnis consequuntur qui. Eum non aut recusandae reiciendis beatae quo doloremque fuga. Nisi quas magni maxime maxime laborum.<img src=\"https://picsum.photos/640/360.webp\" style=\"width: 50%; float: right;\">Temporibus minima est velit ut culpa odit. Sit vel dolorem et ut quaerat ut laudantium hic. Officiis libero numquam quae rerum. Nemo exercitationem sed iusto reprehenderit voluptate aut explicabo et. Aut doloremque qui consequuntur maxime totam totam. Non saepe velit harum dignissimos quia ut officia. Dolorum eum similique voluptate iusto voluptas velit. Quos vel eaque esse et voluptatum neque voluptas necessitatibus. Sed laboriosam officiis sint amet cupiditate labore. Iure vero et minima commodi. Voluptatum quibusdam aliquam atque repudiandae id. Quia exercitationem minus voluptatum adipisci. Libero temporibus consectetur provident velit laudantium pariatur. Expedita quidem ut quos aperiam et sapiente. Dolor non nihil dolores quis. Animi voluptatem est magni saepe expedita illum dignissimos. Itaque quod sunt earum expedita. Eum officia sapiente sunt cumque. Ipsam aut sint qui illum nobis iste omnis. Perspiciatis sed consequatur qui qui repellendus autem.<p><br/><img src=\"https://picsum.photos/640/360.webp\" style=\"width: 100%; float: none;\"></p><br/>Iusto consequuntur eos natus iste. Quia aut repellendus voluptas fugit. A accusantium voluptatum rem mollitia. Qui tenetur voluptas quisquam eum maiores sit. Autem facilis est natus praesentium ut facere. Et odio ea quam ex ea porro blanditiis. Voluptates doloremque dolore numquam blanditiis deserunt minima placeat tempora. Dolores ipsa vero nihil fugit officia.', '0.000000', NULL, 376, 0, 1, NULL, 'vitae-dignissimos-rerum-vitae-harum', 4, 1, NULL, '2021-06-20 00:03:51', '2021-06-26 00:03:51'),
(18, 1, 3, 'eaque', 'Veritatis placeat molestiae odit aut.', 'sit qx520', '4', '5431974402043', 'EAN', 'Molestias est nam necessitatibus facilis odio. Tempora temporibus voluptas placeat pariatur eos. Magni dolorum ut natus ut facilis neque fugit. Cupiditate vel laboriosam quidem ipsam cupiditate libero aut autem. Inventore dolorum accusantium amet officiis. Mollitia repudiandae et quis nulla ex est esse. Illo quisquam dolores est magnam.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/7abGwVjXSY4\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Eos quia quibusdam dolor ut fugit eaque. Ullam est assumenda aut rerum. Qui nihil earum omnis facere quidem omnis.<img src=\"https://picsum.photos/640/360.webp\" style=\"width: 50%; float: right;\">Cumque nisi aut aut iste. Velit voluptatem porro neque aliquam doloremque dolorem. Voluptas et rem aut quibusdam ad qui mollitia. Alias ipsum mollitia et laborum assumenda maiores. Eligendi voluptatem sequi hic id commodi voluptatem. Modi sunt corrupti molestias itaque unde impedit. Distinctio nesciunt atque iusto. Accusantium hic ratione alias ut itaque doloribus. Eum ex corrupti rerum. Ex omnis similique provident iusto. Cum reprehenderit nulla nemo maiores dolor. Incidunt eaque aut beatae laudantium sit eos dignissimos. Perferendis sit quisquam quas est. Aliquid tenetur ratione eligendi molestiae eum illo debitis. Quaerat est repudiandae id quis et non. Repellat non doloribus perferendis quo consequatur. Aut nam nihil et quae exercitationem neque illo. Optio nostrum enim reiciendis. Amet magnam et ducimus enim et illum eum. Velit nisi libero fugit fugit repudiandae. Neque quia sit voluptas exercitationem animi. Aliquam perspiciatis blanditiis perferendis. In dignissimos sapiente sed debitis quasi nihil temporibus. Tempore eveniet et veritatis facere eveniet. Autem consectetur sit cupiditate tenetur nihil aut labore. Eveniet in saepe eos dolore at. Ducimus dolores quia rerum in dolorem nostrum non. Dolores sapiente dolores illo sunt voluptatem et. Necessitatibus veritatis et corporis beatae suscipit. Voluptatum recusandae aut laboriosam sed est earum dolores possimus. Saepe eum dignissimos quam distinctio earum. Culpa sint quasi nesciunt eum reprehenderit dolorum et.<p><br/><img src=\"http://placeimg.com/640/360/any\" style=\"width: 100%; float: none;\"></p><br/>Natus sit nostrum quae recusandae qui porro. Totam sit quae dolorem saepe ut voluptates amet. Velit occaecati id quam autem pariatur vitae vel. Ullam quis dolorem esse et sed accusamus.', '0.000000', NULL, 344, 0, 1, NULL, 'corporis-nihil-cumque-autem-nam-minima-ipsum', 9, 1, NULL, '2021-06-22 00:03:51', '2021-06-26 00:03:51'),
(19, NULL, 12, 'qui', 'Laudantium id recusandae quas consectetur et dolor.', 'quis zw404', '560808', '4997008941434', 'JAN', 'Blanditiis praesentium vel error maxime autem. Quia incidunt doloremque iste atque. Consequuntur et qui aspernatur at amet distinctio magni. Laboriosam inventore aut commodi sunt. Earum et quasi soluta perspiciatis molestias ab. Sed atque veritatis et commodi. Officiis corporis blanditiis enim nobis corporis a sed. Consequatur corrupti fuga excepturi cupiditate sint dignissimos.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/eEzD-Y97ges\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Voluptas distinctio amet sit saepe perferendis. Alias aut omnis at officiis laborum neque omnis.<img src=\"http://placeimg.com/640/360/any\" style=\"width: 50%; float: right;\">Expedita amet nihil atque ut molestiae ratione quos. Voluptatum eveniet consectetur ad enim provident. Aspernatur libero aliquid provident voluptas aut aut. Voluptatem consequuntur et rerum dicta. Possimus reiciendis quis odit consequatur maxime ut molestiae. Eius facilis est numquam quisquam rem. Aut et eaque vel minus possimus eveniet vel qui. Incidunt eaque numquam maiores suscipit et et ad. Laudantium ea natus qui. Officiis odit doloribus omnis nihil et eum. Dolorem reiciendis enim excepturi expedita. Corrupti architecto illum a a et. Nobis perferendis voluptatem explicabo. Ratione est non voluptate ullam soluta et. Exercitationem labore harum facere quo et qui. Delectus molestiae quo molestiae voluptatibus cumque dolorem voluptatibus. Modi odit a earum et. Perspiciatis neque veritatis ullam est nihil placeat. Corporis aut ipsum exercitationem neque quia iste. Non delectus atque sapiente nemo incidunt. Suscipit dolores nesciunt odio quam. Nulla est enim facere ex. Quod facere aliquid suscipit commodi molestias. Fugiat veniam ipsam quae ea cupiditate et nihil. Mollitia perferendis quo placeat. Sit nostrum atque sed id. Et dolorem aperiam numquam suscipit ut a aut. Officiis assumenda impedit recusandae. Numquam est ab quis nesciunt asperiores dolor. Eius fugiat nam nesciunt dignissimos. Eaque commodi cupiditate reprehenderit praesentium id accusamus distinctio.<p><br/><img src=\"https://picsum.photos/640/360.webp\" style=\"width: 100%; float: none;\"></p><br/>Numquam corporis est qui deserunt aut. Ipsam autem tempore exercitationem expedita reprehenderit et mollitia voluptatem. Sit dignissimos et voluptatem non eos et sit. Autem provident et nihil quo totam.', '0.000000', NULL, 214, 0, 1, NULL, 'corporis-harum-aut-dolore-quibusdam-et-eum-quo', 9, 1, NULL, '2021-06-24 00:03:51', '2021-06-25 00:03:51');
INSERT INTO `products` (`id`, `shop_id`, `manufacturer_id`, `brand`, `name`, `model_number`, `mpn`, `gtin`, `gtin_type`, `description`, `min_price`, `max_price`, `origin_country`, `has_variant`, `requires_shipping`, `downloadable`, `slug`, `sale_count`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(20, NULL, 2, 'voluptas', 'Tenetur iste voluptas quos.', 'est zf303', '82256', '3324291530600', 'ITF', 'Magnam placeat labore repudiandae sapiente. Voluptate aut doloremque aliquam inventore. Quasi repellendus natus optio consequatur est temporibus delectus. Eaque officiis voluptatum minus consequatur officiis aspernatur.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/tJlzIJaokVY\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Itaque est cupiditate deleniti et. Repellat ut vel numquam totam corporis aut. Mollitia rerum odit qui sed alias ullam autem dolores. Ut quo sed architecto nesciunt repudiandae nostrum eum et.<img src=\"https://picsum.photos/640/360.webp\" style=\"width: 50%; float: right;\">Dignissimos eaque in itaque quia. Voluptatem ratione id quo beatae. Non porro hic vero ex quia aperiam. Necessitatibus sit ut cupiditate quidem at id. Et saepe dignissimos consequatur expedita rerum dolor architecto. Fugiat iure id deserunt quas commodi harum repellendus. Nisi ab ipsam neque voluptates. Suscipit et adipisci qui voluptate consectetur accusantium. Laboriosam omnis placeat asperiores suscipit. In adipisci itaque sunt omnis. Et voluptatem fuga qui voluptas. Magni repellendus nemo iusto nemo. Aut est voluptatem harum magnam. Adipisci molestiae velit provident provident. Saepe minus voluptatem repellendus mollitia excepturi quod ratione. Dolor optio id velit qui est. Dolorem ut magni quis provident iusto odio nisi. Est veritatis sequi occaecati impedit omnis. Ut non voluptatem est sit voluptatem velit perferendis temporibus. Delectus iste aspernatur quia voluptatem mollitia quidem.<p><br/><img src=\"https://picsum.photos/640/360.webp\" style=\"width: 100%; float: none;\"></p><br/>Nisi dicta voluptatem odio modi ut deserunt. Ullam ad minus minus amet molestiae eveniet. Ut quia iusto consectetur exercitationem commodi fugit. Assumenda sed ipsum vel quibusdam deleniti aliquid sint iste.', '0.000000', NULL, 388, 1, 1, NULL, 'tempore-rerum-quidem-nam-et-ex', 2, 1, NULL, '2021-06-21 00:03:51', '2021-06-23 00:03:51'),
(21, NULL, 3, 'voluptatem', 'Voluptatibus eum suscipit iusto eaque id officiis dignissimos.', 'et au401', '5685722', '5427805980439', 'UPC', 'Itaque corporis sequi voluptatem porro itaque ipsam quia. Quisquam quasi deserunt dignissimos asperiores. Suscipit omnis omnis porro. Sint pariatur fuga consequuntur non voluptates provident vitae et. Illo illum doloribus ut fuga dicta necessitatibus sint quibusdam. Error dolorum voluptas quisquam provident illo fuga.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/eEzD-Y97ges\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Consequatur recusandae doloribus consectetur quia ratione. Voluptas doloremque eius quam rerum et voluptas. Maxime beatae quia sed reiciendis aut consequuntur ipsa itaque.<img src=\"https://loremflickr.com/640/360\" style=\"width: 50%; float: right;\">Vel voluptas atque ducimus molestiae nihil. Dignissimos est veniam autem. Cumque earum aut voluptas non laborum repellendus in nulla. Autem excepturi at fugiat distinctio aliquam quos. Possimus aliquid iusto saepe sequi perferendis aut amet. Consectetur aperiam a et et consequatur cum voluptas. Sit natus optio odit rerum eveniet qui magnam earum. Doloremque veniam repellendus et accusamus. Voluptatem dignissimos deleniti doloremque sed. Dolore quaerat consequatur in non. Fuga cumque nemo eius vitae numquam libero sapiente. Nemo saepe optio qui natus unde eum fugit dolores. Rerum ut ut eum autem voluptatibus maxime. Assumenda laudantium ratione fugiat dolorum sint. Non nihil a magni ratione et. Recusandae officiis aut quod enim voluptates. Dolorem nesciunt quia quae porro neque. Asperiores consequatur delectus mollitia officia rerum porro saepe. Doloribus et quo enim ut rerum earum. Ut reprehenderit inventore eligendi rerum mollitia ad officia. Fugit excepturi laborum optio quaerat enim qui. Aut non magnam vel omnis aperiam aperiam fuga ut. Nihil dolor magnam nesciunt illo. Ea quia nisi laborum amet culpa. Libero est dolorem sunt explicabo. Id voluptas in qui voluptatem qui aut. Laudantium excepturi nulla ab voluptates. Molestias ut ipsum voluptatem exercitationem. Nulla sint laboriosam eum iusto sit ipsa quas. Voluptatibus nobis totam ut et. Natus molestiae aspernatur et provident at voluptas magnam id. Eum velit itaque illo ut consequatur voluptatum nam. Cupiditate ullam dolores saepe incidunt. Rerum quaerat fugiat recusandae repellat animi. Rerum nam quidem ut laborum. Omnis ut temporibus culpa eos quaerat eius magnam blanditiis. Architecto laborum maiores sint quis vel est. Est omnis hic quia deleniti. Culpa et est accusantium eius.<p><br/><img src=\"http://placeimg.com/640/360/any\" style=\"width: 100%; float: none;\"></p><br/>In occaecati voluptatibus nihil quis odit et illo. Molestias ex incidunt ab facere. Minus labore culpa nulla eligendi.', '0.000000', NULL, 356, 0, 1, NULL, 'quas-repudiandae-enim-et', 3, 1, NULL, '2021-06-15 00:03:51', '2021-06-26 00:03:51'),
(22, NULL, 5, 'non', 'In reprehenderit quia sunt ducimus aut.', 'aut mg294', '7908', '2101382661488', 'EAN', 'Facere reprehenderit quibusdam numquam. Optio quia provident ut maxime optio ex. Est modi fugit odio et. Sit quae provident ex velit ex voluptates.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/7abGwVjXSY4\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Nulla rem non saepe. Est molestias recusandae hic sapiente. Eveniet mollitia possimus ipsum expedita rerum sint et. Quia perferendis nobis minima repudiandae iste.<img src=\"http://placeimg.com/640/360/any\" style=\"width: 50%; float: right;\">Vitae voluptatem consequatur laboriosam quia. Aut accusantium pariatur error. Sunt in voluptatum facere blanditiis omnis. Aut doloremque autem distinctio laborum est. Vero et iste quo quia. Nostrum nisi sapiente omnis est vel facere et. Quia velit voluptatibus quas. Sit accusantium voluptatem ut sed sunt natus et id. Voluptates excepturi esse ut. Doloremque ea dolor illo ut. Et quis provident sint velit numquam animi. Sit laboriosam debitis rerum cum explicabo tenetur. Sit temporibus occaecati rerum saepe. Libero ut iusto dicta sed quisquam. Voluptate non voluptas delectus consequuntur dolorem. Voluptas incidunt est est explicabo excepturi. Iure in quam expedita sed ut. Recusandae vitae similique odit sunt corporis et porro non. Aut quos qui iste ea minima alias deleniti. Quos aut dolor amet sequi. Sed sit et quisquam officiis. Eius minus et dolore corporis. Voluptatum ut reiciendis id in nihil consequatur. Et omnis perferendis voluptas ut omnis perspiciatis. Id perspiciatis nostrum numquam dolore qui laborum aspernatur. Iste sint at accusamus excepturi sit. Corporis est autem excepturi. Quia illum ut placeat. Aliquid possimus modi ipsum. Numquam non est et repellendus aut eos. Reiciendis rerum delectus ut autem. Dignissimos eos sequi aspernatur blanditiis harum numquam. Reprehenderit vitae voluptatum maiores qui. Aliquid aut id deleniti hic aut repellat vel consequatur. Ut dolor sed earum doloremque tenetur deleniti. Sit reprehenderit sed dolorem praesentium et a quia.<p><br/><img src=\"http://placeimg.com/640/360/any\" style=\"width: 100%; float: none;\"></p><br/>Quia sint omnis aperiam odio officia assumenda et. Doloribus et nesciunt numquam dolorum et. Officiis modi veniam rerum repellat. Numquam sed numquam autem odio. Aut omnis eum sint dolorum consequuntur. Voluptas rerum ipsa quibusdam omnis molestiae.', '0.000000', NULL, 554, 0, 1, NULL, 'odit-ea-voluptatum-facilis-ipsum', 4, 1, NULL, '2021-06-21 00:03:51', '2021-06-20 00:03:51'),
(23, NULL, 4, 'aut', 'Eos modi nemo quod est.', 'autem ia844', '97275', '1473408132649', 'ISBN', 'Nemo illum officia officiis nisi molestiae. In accusantium quis architecto dolor. Aut officiis rerum odit pariatur. Itaque adipisci dicta est tempora.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/n7EmdNsKIhk\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Nesciunt eaque sint facilis neque doloribus voluptas soluta. Iure dignissimos qui voluptatem molestiae. Exercitationem aut dicta aut vel.<img src=\"https://loremflickr.com/640/360\" style=\"width: 50%; float: right;\">Porro alias facilis consequatur non nam est. Soluta commodi autem qui sunt fugit corrupti est. At suscipit et impedit nostrum optio sed quia aliquam. Nam nulla aliquid illo sed tenetur repellat. Ducimus ut est saepe consequuntur quo. Et blanditiis nam natus vero ipsam aut repudiandae. Quia a fugit dolorem aspernatur laudantium necessitatibus itaque. Doloribus aut aliquid aut molestias tempora recusandae. Dolorem voluptatem non consectetur laborum consequatur unde occaecati consequuntur. Aliquid rem id facilis consequatur aut ipsam. Mollitia et rerum maiores laborum laboriosam voluptatem hic tempore. Nam eius corporis aut perferendis sunt natus alias. Mollitia suscipit qui quia et accusantium cumque. Magni alias porro et enim est deserunt provident. Mollitia provident est itaque. Aliquam inventore enim modi eum.<p><br/><img src=\"https://picsum.photos/640/360.webp\" style=\"width: 100%; float: none;\"></p><br/>Voluptatem odit ut iusto provident. Ab omnis harum enim aperiam nihil hic enim. Laboriosam non nisi magnam sit nobis dignissimos.', '0.000000', NULL, 426, 0, 1, NULL, 'temporibus-rerum-iure-veniam-tenetur-nulla-tempora-quas', 5, 1, NULL, '2021-06-11 00:03:51', '2021-06-21 00:03:51'),
(24, NULL, 13, 'aperiam', 'Blanditiis incidunt totam ea.', 'et aq337', '6097229', '3404467658205', 'JAN', 'Ut reiciendis possimus veniam animi tempore deleniti. Distinctio deserunt ipsam molestiae cupiditate eum laboriosam. Voluptatem aut enim dolores aliquid. Odio voluptatem unde ipsa sunt esse expedita.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/n7EmdNsKIhk\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Cumque quo ut modi ut voluptas placeat. Eos quia in unde. Delectus harum distinctio eius ab.<img src=\"https://picsum.photos/640/360.webp\" style=\"width: 50%; float: right;\">Illo nam vel beatae at quia qui. Sequi quo corrupti laboriosam. Id vero vel quibusdam ut inventore. Autem ipsum odit consectetur qui eveniet dolorem. Asperiores velit accusamus cupiditate ex odit. Nulla fuga et minus expedita. Corrupti illo aspernatur quaerat quibusdam. Qui incidunt et dolor pariatur omnis voluptatem non. Aperiam ab sapiente enim qui. Fugit doloribus eos consequuntur nulla. Voluptatem ea nesciunt sit. Quasi error facere aut. Et provident minima ipsum ut tenetur. Harum rem qui necessitatibus sint nulla. Voluptates ab sequi voluptas explicabo. Accusantium officia harum animi. Accusantium fugit cumque praesentium sed. Autem eum enim ad ab. Suscipit doloribus omnis et. Est voluptatem vitae sunt natus aut. Alias animi rerum necessitatibus deserunt provident voluptates possimus qui. Qui numquam voluptatum dolorem aut aut nisi. Repudiandae asperiores sint provident. Praesentium ipsam deleniti maiores velit culpa necessitatibus illum. A consequuntur dolorem nihil expedita non. Illum eum nobis non enim fugiat mollitia. Unde nisi impedit sunt at accusantium. Voluptates ullam temporibus maiores error.<p><br/><img src=\"http://placeimg.com/640/360/any\" style=\"width: 100%; float: none;\"></p><br/>Veniam iste odio ea qui quam magni expedita. Ea quisquam laborum pariatur animi. Optio velit porro incidunt fugit quod dignissimos quos. Accusamus veritatis sit et velit.', '0.000000', NULL, 250, 0, 1, NULL, 'voluptas-vero-saepe-laborum-at-et-tenetur', 0, 1, NULL, '2021-06-19 00:03:51', '2021-06-17 00:03:51'),
(25, NULL, 11, 'ipsa', 'Quia iure iure odio nobis qui qui animi.', 'dolor xs650', '998', '0911004786480', 'UPC', 'Aspernatur consequuntur sit ea deleniti est. Aperiam repudiandae cumque assumenda consequatur. Cumque eos commodi enim laboriosam. Fugiat quia voluptatem odio eligendi dolorum aut dolore.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/SKbHHcdLGKw\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Dolorum distinctio dolorem consectetur iure. Eos vero et cupiditate nobis.<img src=\"http://placeimg.com/640/360/any\" style=\"width: 50%; float: right;\">Qui labore voluptate recusandae voluptatibus necessitatibus assumenda est sit. Dolore consectetur nam aliquid nisi. Repudiandae assumenda quisquam est recusandae provident quo. Atque unde deleniti sed et. Qui ut et rem. Nobis velit dolore molestiae tempore praesentium eveniet ad voluptatem. Natus consequuntur quia et rerum vel totam. Neque unde in est nihil alias autem beatae. Voluptatem omnis est quis cumque ea. Molestiae dolores et esse rerum deserunt necessitatibus. Iusto in eligendi labore corrupti quia eligendi. Ea earum voluptate sed odio et. Ab et rem voluptates non et voluptatibus. Beatae praesentium qui rerum. Tenetur nihil autem dolorum dolorem vitae ab. Repudiandae non eos nostrum adipisci velit sit quia optio. Quis magni ex dicta dolores. Sit qui eveniet ut animi itaque. Consequatur consequatur distinctio sunt pariatur.<p><br/><img src=\"http://placeimg.com/640/360/any\" style=\"width: 100%; float: none;\"></p><br/>Exercitationem et dolores voluptatem ratione. Occaecati debitis odio cupiditate blanditiis sit qui officia. Cumque voluptatem in autem amet autem error neque.', '0.000000', NULL, 148, 0, 1, NULL, 'blanditiis-exercitationem-non-excepturi-consequatur-quas-eum-vel', 9, 1, NULL, '2021-06-24 00:03:51', '2021-06-14 00:03:51'),
(26, NULL, 14, 'aut', 'Repudiandae commodi repudiandae dolorem vero.', 'consequatur or094', '3', '7476070719846', 'UPC', 'Quaerat commodi autem repellendus voluptatem. Quidem nihil non voluptatem quos tempore. Quidem rerum qui non rerum. Quam blanditiis optio dolorum quo et voluptatum. Sunt aut vitae debitis in sapiente. Expedita iusto id modi possimus voluptates quia. Atque a minus vero qui.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/7abGwVjXSY4\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Ipsam incidunt atque totam nulla facilis nisi laborum. Vel sequi repellat in exercitationem in deleniti omnis. Ducimus officiis non quia ut animi rerum mollitia amet.<img src=\"http://placeimg.com/640/360/any\" style=\"width: 50%; float: right;\">Aliquam natus sed officia doloremque quibusdam. Minus aut non qui dolores natus qui eum. Minus tenetur quibusdam magnam et omnis sunt iste. Doloribus quis voluptas aut iusto tempora. Recusandae adipisci maxime harum dolores. Et ea quia odio iusto corporis reprehenderit. Nobis dolore ea voluptatem doloremque ut libero sit voluptas. Molestias maxime asperiores reprehenderit nihil. Rerum deleniti id quibusdam. Dolore in molestiae quia aperiam at. Ut ut neque omnis quisquam. Aut totam ipsam rem accusamus consequuntur animi ratione. In aspernatur sunt atque autem deleniti eos nesciunt. Aperiam provident sit numquam. Aperiam maiores expedita rerum quis nulla quisquam modi voluptatem. Eum provident beatae sed et reprehenderit. Sit dolor tenetur blanditiis. Et ad quod possimus et. Eos porro porro qui reiciendis. Excepturi qui quis aperiam quo necessitatibus. Omnis et facere sequi. Modi impedit repellat eius enim. In eveniet doloribus autem nihil voluptatem veniam. Aut aut autem voluptatem enim neque libero cupiditate. Animi facilis molestias aut eos incidunt. Aut architecto tempore ut a rerum. Soluta ut et sed beatae debitis et sit. Est quis nisi ipsam enim. Temporibus atque modi magnam officiis quibusdam sit qui. Ipsum accusantium explicabo hic non voluptate sint. Nemo nihil ullam quas consectetur. Voluptas quasi occaecati aut itaque. Quod expedita et reiciendis velit et sapiente veniam ut. Deserunt ea minus perspiciatis.<p><br/><img src=\"http://placeimg.com/640/360/any\" style=\"width: 100%; float: none;\"></p><br/>Non quidem dicta porro et. Facere aliquam voluptates excepturi. Cupiditate ea molestiae porro quidem saepe. Qui distinctio qui rerum assumenda.', '0.000000', NULL, 380, 1, 1, NULL, 'sit-reiciendis-eius-debitis-quo-nulla-rem', 7, 1, NULL, '2021-06-24 00:03:51', '2021-06-26 00:03:51'),
(27, NULL, 12, 'non', 'Omnis vel optio est neque qui nam temporibus.', 'totam og408', '562148329', '6665724976068', 'UPC', 'Quia vel vitae qui atque. Atque in ratione natus est nihil tenetur aliquid. Laborum pariatur quibusdam voluptate facere facilis placeat delectus veritatis. Sapiente nihil corporis dolore praesentium incidunt. Repudiandae consequuntur quasi voluptatum provident ullam quia ex et. Aperiam excepturi enim perferendis. Deserunt consequuntur in reiciendis ipsam. Iure et et et perspiciatis quod aut.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/n7EmdNsKIhk\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Ex reprehenderit aspernatur aut qui inventore. Earum aperiam necessitatibus consequatur reiciendis voluptas repudiandae eaque nihil. Voluptas velit sequi assumenda quia tempore. Ipsa aut voluptate dolorem vitae aspernatur voluptatem quas beatae.<img src=\"https://picsum.photos/640/360.webp\" style=\"width: 50%; float: right;\">Amet eum excepturi id architecto dolor ullam ratione. Minus aut praesentium quo ducimus ut ea totam. Dolor accusamus unde tempora delectus et. Sapiente architecto omnis velit id. Sequi praesentium cupiditate ut aperiam facilis. Nemo sed perspiciatis eum. Rerum enim et beatae modi autem in odio. Omnis nobis vero velit deserunt. Rem sed repellat alias quos dolor ipsam. Molestiae ut ducimus cupiditate in odio aut. Magnam rerum minima libero expedita officia eum ut. Cum officiis rerum quo aspernatur numquam quam. Sed qui eos id odio ratione veniam rerum. Ut cum officiis vero sequi id commodi. Vel quod facere quia. Vel aperiam natus quo praesentium iure et praesentium. Dicta ut id odit officiis. Debitis consequatur voluptas voluptatem quo. Voluptas eius incidunt minima et. Et quia ipsam et asperiores. Quia omnis et accusantium deserunt consequuntur atque amet. Consequatur beatae beatae officia fuga a amet labore. Debitis architecto blanditiis doloribus temporibus et. Aspernatur aut deleniti minima rem. Perferendis qui reiciendis nihil natus omnis. Corporis culpa odio veniam quia sapiente. Eligendi vel nihil doloribus quibusdam error modi et. Provident iste et reprehenderit consequatur necessitatibus est commodi. Laborum repellat eligendi asperiores vel. Quia est pariatur modi similique sunt perferendis ea natus. Veniam harum iusto ea aut aperiam distinctio libero.<p><br/><img src=\"https://picsum.photos/640/360.webp\" style=\"width: 100%; float: none;\"></p><br/>Ratione rem velit ea laboriosam eum explicabo reiciendis. Dolor vero repudiandae reiciendis ea eum rerum. Quia ut consequatur provident alias eaque.', '0.000000', NULL, 470, 0, 1, NULL, 'aut-nihil-rerum-sequi-odit-facere-est-maiores', 1, 1, NULL, '2021-06-14 00:03:51', '2021-06-17 00:03:51'),
(28, NULL, 15, 'et', 'Corporis officiis consequatur vero excepturi illum consequatur dolor.', 'voluptatem nh109', '66105159', '0964924430803', 'UPC', 'Aperiam error quis perferendis. Rerum aut laborum omnis possimus ea. Beatae voluptatem repellendus qui commodi nisi provident blanditiis. Atque voluptas dicta nam. Quos voluptatum illo dolor sunt aut similique. Maxime accusantium enim et non libero voluptates facere.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/n7EmdNsKIhk\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>In debitis iste est est. Exercitationem atque eos autem qui ab. Quae repudiandae quis id adipisci necessitatibus labore molestias nihil. Non est iste consequatur deserunt eligendi accusamus. Ut suscipit enim enim facere explicabo. Rerum dolore ut saepe. Quo perferendis ut asperiores occaecati.<img src=\"http://placeimg.com/640/360/any\" style=\"width: 50%; float: right;\">Molestiae voluptatem nulla dolorem similique. Voluptatem rerum ut praesentium ut eos unde non. Suscipit repudiandae illo maiores vitae animi mollitia. Ut beatae repellendus ut omnis repudiandae non veniam. Modi et nulla sint. Mollitia explicabo voluptas nulla totam. Sint ut distinctio omnis debitis et fugiat quia necessitatibus. Earum quas dolorem dolorem provident doloribus facilis aut sed. Enim sapiente aperiam occaecati aut doloremque. Qui quia dolore ea eum quia. Ut exercitationem eaque sapiente pariatur numquam laboriosam. Ea hic error quia eos. Ut ea iusto velit explicabo cupiditate facere odit sed. Et corporis ut quis ipsam ea. Voluptatibus nulla libero est ratione molestiae. Distinctio ut cum a ea. Ut perferendis minus distinctio cum ex. Aliquam eligendi architecto id dolor. Ut mollitia corporis eum velit ut. Et quod qui a totam et. Beatae tenetur odit modi magnam. Aut itaque voluptas repudiandae accusantium asperiores iste. Praesentium voluptas odit sed recusandae sed minima. Nihil odio et repellendus vitae harum commodi. Earum expedita pariatur sapiente rem ex laboriosam. Sint doloremque suscipit aliquam iure illum. Est molestiae consequatur nostrum in. Atque distinctio nobis voluptas et optio id. Fugiat aut ea aut. Ut cupiditate eos sit eaque a aut ea. Est voluptatem repudiandae id odio. Excepturi optio distinctio et ut nemo repellat ut et. Rerum dicta dolor quaerat magnam. Quo error suscipit quia magni aliquam non architecto.<p><br/><img src=\"https://loremflickr.com/640/360\" style=\"width: 100%; float: none;\"></p><br/>Inventore rem ipsa accusamus veniam non asperiores nobis voluptatibus. Occaecati aspernatur reprehenderit consequatur aliquid vitae ut necessitatibus. Pariatur ut totam illo ut non ullam. Aut explicabo laudantium ex ea explicabo molestiae. Rerum nam pariatur alias id. Ipsa nam cum quo nihil occaecati. Voluptas repellendus vel accusantium et neque aut laborum consequuntur.', '0.000000', NULL, 364, 1, 1, NULL, 'aperiam-laboriosam-dolores-suscipit-quis', 5, 1, NULL, '2021-06-11 00:03:51', '2021-06-25 00:03:51'),
(29, NULL, 13, 'voluptatem', 'Accusantium eos tempora voluptate ut eum sunt autem.', 'nobis kb390', '1305', '2929196160061', 'JAN', 'Soluta soluta sunt quia iusto amet veniam provident. Aliquid rerum atque accusantium omnis delectus voluptates. Voluptatem accusantium possimus eos eaque nostrum nam ut nulla.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/SKbHHcdLGKw\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Ab vel minima officia qui rerum omnis. Ut quasi animi non nesciunt.<img src=\"http://placeimg.com/640/360/any\" style=\"width: 50%; float: right;\">Non explicabo qui autem tenetur numquam. Earum repellat quibusdam ad vel provident. Omnis tempore nisi vero sequi. Consequuntur illo ab rerum ipsum qui aut at dolorem. Quo dolorum molestias corrupti reprehenderit voluptates iure fugiat recusandae. Quos impedit corporis quidem natus consectetur. Sed tempora vero quia animi molestiae quia. Ea cum possimus quia alias quae. Velit corrupti esse fugiat assumenda rem cupiditate. Corrupti eius recusandae dolorem voluptas dolor praesentium. Explicabo id consequatur non tempore perspiciatis ut ut. Enim harum dignissimos accusamus. Voluptatem temporibus deserunt dicta et consectetur omnis. Non in optio corrupti consequuntur cupiditate. Voluptatem ad nisi eveniet quam. Enim itaque minus asperiores recusandae nostrum aliquid ipsa. Sunt quo voluptas laudantium est. Iste facere et excepturi sapiente. Quis non explicabo et maiores exercitationem autem nulla. Doloremque ipsam ipsum est fugit expedita eos sint. Nihil sint veniam ea voluptate commodi non. Temporibus ipsam nisi rerum et quaerat expedita aliquid. Provident et enim quos explicabo odio autem perferendis aut. Deleniti aut labore sit adipisci facilis similique est.<p><br/><img src=\"http://placeimg.com/640/360/any\" style=\"width: 100%; float: none;\"></p><br/>Est necessitatibus quisquam enim quae. Tenetur ipsum maiores voluptate culpa. Est est officia temporibus incidunt et asperiores. Inventore commodi est nihil. Necessitatibus repellendus est nobis et praesentium. Doloribus et harum molestias.', '0.000000', NULL, 454, 1, 1, NULL, 'dolor-ad-eos-adipisci-sit-iure-nostrum', 2, 1, NULL, '2021-06-18 00:03:51', '2021-06-13 00:03:51'),
(30, NULL, 13, 'ut', 'Dolorem nostrum neque nostrum eos qui.', 'magni ek780', '937', '1168137853827', 'ISBN', 'Accusamus velit voluptas facilis animi eveniet. Saepe esse accusantium sequi sapiente et. Distinctio et tempore nobis excepturi. Quo reiciendis vero ullam natus cumque enim amet. Itaque vero perspiciatis qui sint sapiente. At est velit saepe id. Ut exercitationem est maxime quas ipsa. Quos natus velit eligendi necessitatibus ut. Ea in velit nisi architecto nesciunt et.<p><br/><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/7abGwVjXSY4\" class=\"note-video-clip\" style=\"width: 100%; height: 475px; float: none;\"></iframe></p><br/>Minus qui quidem quod fuga. Dignissimos corporis ab voluptatem modi. Natus molestiae autem sequi aspernatur.<img src=\"https://loremflickr.com/640/360\" style=\"width: 50%; float: right;\">Cumque animi perspiciatis voluptatum reprehenderit est. Aut dignissimos aperiam rerum quasi ipsa iure eius. Ut ab incidunt unde veniam soluta. Nostrum et sit repellat praesentium. Eum est quibusdam aliquid possimus laboriosam optio. Quo voluptatem incidunt ut voluptatum est voluptatem. Hic sit aut cumque ipsam fuga similique. Illo enim et provident vero. Quae natus soluta iste voluptatum debitis. Nemo aliquid minima alias sed voluptas. A iusto adipisci odit expedita et. Explicabo saepe ea voluptas fugit. Est repudiandae sit suscipit officiis. Accusamus quo vitae voluptatem consequuntur dolorum libero. Vel mollitia ipsum qui qui nostrum. Voluptatum dolores similique qui reiciendis quas qui. Et minima voluptatem consequatur sed aliquam at quibusdam. Ducimus laudantium occaecati quia fugit. Optio est eaque doloribus aut dolore. Eaque vitae sed labore recusandae aliquam eos esse. Iste aut aliquam necessitatibus in. Ea autem rem commodi reprehenderit consequatur autem voluptas. Accusamus ducimus iusto expedita occaecati consequuntur reprehenderit. Aut nobis molestias quo quaerat molestias qui ea. Rem itaque sapiente nihil eum omnis laborum. Ullam voluptate similique hic consectetur.<p><br/><img src=\"https://loremflickr.com/640/360\" style=\"width: 100%; float: none;\"></p><br/>Officiis nemo ad maxime laboriosam ad qui eos. Commodi numquam consequatur et quibusdam nesciunt tempora sit. Ipsa quo expedita ducimus corporis.', '0.000000', NULL, 566, 0, 1, NULL, 'autem-sunt-vero-earum-esse-aut', 7, 1, NULL, '2021-06-15 00:03:51', '2021-06-18 00:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_fulfilled` tinyint(1) DEFAULT NULL,
  `return_goods` tinyint(1) DEFAULT NULL,
  `amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `description` longtext COLLATE utf8_unicode_ci,
  `status` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reply` longtext COLLATE utf8_unicode_ci,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `repliable_id` bigint(20) UNSIGNED NOT NULL,
  `repliable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `reply`, `user_id`, `customer_id`, `read`, `repliable_id`, `repliable_type`, `created_at`, `updated_at`) VALUES
(1, 'Ut amet ipsum error id maxime repudiandae. Repellendus numquam non sed omnis. Asperiores quia id nihil est nesciunt sed. Reiciendis reprehenderit repudiandae optio at deserunt ut.', 2, NULL, 0, 3, 'App\\Ticket', '2021-06-25 00:05:16', '2021-06-18 00:05:16'),
(2, 'Enim magnam perferendis hic. Non iusto rem dolore et exercitationem alias omnis aspernatur.', 1, NULL, 1, 3, 'App\\Ticket', '2021-06-23 00:05:16', '2021-06-14 00:05:16'),
(3, 'Maxime dolorum illum voluptas consequatur. Labore laboriosam aliquid quos et quo. Sit omnis enim commodi est asperiores explicabo.', 4, NULL, 1, 1, 'App\\Message', '2021-06-13 00:05:16', '2021-06-21 00:05:16'),
(4, 'Vitae omnis magni cupiditate voluptas et dignissimos maiores. Laudantium quisquam esse quas doloribus exercitationem. Aliquid corrupti quia et quia.', 2, NULL, 1, 2, 'App\\Ticket', '2021-06-17 00:05:16', '2021-06-12 00:05:16'),
(5, 'Qui ea ut temporibus debitis provident. Facere et dignissimos et. Cum voluptatum sunt distinctio maxime ducimus mollitia non. Non quia temporibus magnam earum.', 2, NULL, 1, 1, 'App\\Ticket', '2021-06-25 00:05:16', '2021-06-26 00:05:16'),
(6, 'Id aut dolores amet pariatur laudantium omnis dolorem. Laboriosam dolorem non velit reprehenderit consectetur. Amet ut aut velit.', 4, NULL, 1, 3, 'App\\Message', '2021-06-17 00:05:16', '2021-06-18 00:05:16'),
(7, 'Explicabo aut vero iusto recusandae omnis. Velit itaque illo necessitatibus magnam. Expedita sit est sint quam distinctio fuga. Rerum totam temporibus porro maiores.', 2, NULL, 0, 2, 'App\\Ticket', '2021-06-21 00:05:16', '2021-06-21 00:05:16'),
(8, 'Nemo qui voluptas voluptatem distinctio laudantium libero. Vitae quos porro excepturi ad magni quae rerum. Nihil qui repellat assumenda.', 2, NULL, 1, 5, 'App\\Message', '2021-06-14 00:05:16', '2021-06-23 00:05:16'),
(9, 'Et non id ut possimus reprehenderit. Animi id ea a iste consequatur sed dolor hic. Ut et aut consequuntur mollitia.', 3, NULL, 1, 2, 'App\\Ticket', '2021-06-17 00:05:16', '2021-06-23 00:05:16'),
(10, 'Consequuntur sunt enim exercitationem et laudantium neque magni. Ad porro qui sint ut explicabo culpa. Eius alias consequatur nulla asperiores reiciendis id nisi distinctio.', 2, NULL, 0, 4, 'App\\Ticket', '2021-06-24 00:05:16', '2021-06-22 00:05:16'),
(11, 'Et et exercitationem quis nostrum nam. Enim aliquid voluptatem reiciendis qui qui voluptate quae. Nulla commodi repellat et similique aut nulla. Delectus officiis mollitia sit expedita est.', 1, NULL, 1, 4, 'App\\Message', '2021-06-17 00:05:16', '2021-06-11 00:05:16'),
(12, 'Ab assumenda illo debitis voluptatem. Aut earum ratione possimus voluptate qui sint id. Officiis qui et est voluptatem excepturi.', 4, NULL, 1, 4, 'App\\Message', '2021-06-18 00:05:16', '2021-06-17 00:05:16'),
(13, 'Reiciendis nesciunt eligendi natus eum. Non incidunt ullam hic.', 1, NULL, 0, 2, 'App\\Message', '2021-06-21 00:05:16', '2021-06-23 00:05:16'),
(14, 'Unde consectetur et dolores dolor. Ullam sint unde enim excepturi numquam. Alias quia dolores rerum. Ut vero atque ut iste sed sint.', 3, NULL, 0, 2, 'App\\Message', '2021-06-22 00:05:16', '2021-06-23 00:05:16'),
(15, 'Amet eius sunt veniam et. Non autem incidunt enim iusto quia dolorem. Laudantium ex saepe consectetur assumenda quaerat ullam. Rerum sint et omnis dolores debitis. Minima sit quod eligendi alias.', 3, NULL, 1, 5, 'App\\Ticket', '2021-06-14 00:05:17', '2021-06-14 00:05:17'),
(16, 'Mollitia aut magnam quia inventore ut sequi. Explicabo consequatur autem eos. Vel occaecati ut velit quia.', 2, NULL, 1, 5, 'App\\Message', '2021-06-26 00:05:17', '2021-06-21 00:05:17'),
(17, 'Et est deleniti consequatur nihil et quia. Sunt qui culpa molestias fugiat. Ipsa omnis ipsa cupiditate. Assumenda ut quos natus dolores inventore dolorem magnam.', 1, NULL, 0, 2, 'App\\Message', '2021-06-11 00:05:17', '2021-06-22 00:05:17'),
(18, 'Rerum dolore pariatur qui eum quod minima. Nihil necessitatibus mollitia sapiente aliquam consequatur. Nihil voluptas hic itaque et quia aperiam.', 2, NULL, 0, 2, 'App\\Ticket', '2021-06-18 00:05:17', '2021-06-12 00:05:17'),
(19, 'Recusandae quibusdam repellendus autem accusamus non. Ipsa molestias modi dolorem itaque harum sapiente aliquam. Quibusdam delectus eos vel necessitatibus eius quod doloremque. Ut rerum ut sit ut necessitatibus.', 3, NULL, 1, 2, 'App\\Message', '2021-06-11 00:05:17', '2021-06-26 00:05:17'),
(20, 'Autem quia enim voluptatem accusamus quas. Distinctio harum libero ab et eius. Molestias sint iure voluptatibus porro distinctio. Libero qui enim iusto nemo.', 4, NULL, 0, 1, 'App\\Message', '2021-06-18 00:05:17', '2021-06-19 00:05:17'),
(21, 'Et deserunt possimus asperiores sequi. Repellat sequi sequi eligendi atque placeat nulla. Sed voluptatem illo autem. Omnis quaerat eum ut quia. Eos ex aliquam aliquam sed accusantium tenetur rerum esse.', 2, NULL, 0, 5, 'App\\Message', '2021-06-15 00:05:17', '2021-06-13 00:05:17'),
(22, 'Porro dolorem inventore quia aliquid. Hic quidem rem laborum omnis.', 2, NULL, 1, 3, 'App\\Message', '2021-06-26 00:05:17', '2021-06-22 00:05:17'),
(23, 'Earum consequatur id eveniet excepturi laborum laboriosam velit eius. Asperiores et illum aut quia voluptatibus. Molestiae aut porro doloribus praesentium. Culpa et blanditiis aut rerum architecto perspiciatis.', 3, NULL, 1, 2, 'App\\Ticket', '2021-06-18 00:05:17', '2021-06-12 00:05:17'),
(24, 'Et vero nam aperiam ea. Illum eius et nam dolor eveniet quisquam. Et illum sequi autem atque et et. Alias qui veniam nostrum ducimus quia nulla nemo cumque.', 3, NULL, 0, 1, 'App\\Message', '2021-06-13 00:05:17', '2021-06-26 00:05:17'),
(25, 'Quis ab aspernatur repellat ut. Dolorem exercitationem vel voluptatem quidem sed mollitia. Illum dolore similique saepe nisi. Recusandae sed eum vel a. Corrupti iusto dolor corporis quisquam et ad.', 1, NULL, 1, 3, 'App\\Message', '2021-06-16 00:05:17', '2021-06-24 00:05:17'),
(26, 'Eaque voluptatem nihil sed fugiat. Est voluptas in ex. Eaque ea aliquam enim enim odit est aut.', 2, NULL, 0, 2, 'App\\Message', '2021-06-18 00:05:17', '2021-06-18 00:05:17'),
(27, 'Similique odit maiores dolor atque reiciendis. Est autem harum qui provident. Aut fugiat consequatur magni sit consequatur tenetur modi.', 3, NULL, 0, 5, 'App\\Message', '2021-06-18 00:05:17', '2021-06-18 00:05:17'),
(28, 'Qui quas ex neque similique in. Et repellat quo consequuntur dolor. Consequatur sit itaque iure laborum ut suscipit.', 4, NULL, 1, 5, 'App\\Message', '2021-06-12 00:05:17', '2021-06-22 00:05:17'),
(29, 'Maxime vel eum omnis velit mollitia officia eos. Commodi provident rem saepe consectetur. Saepe quasi fuga vitae cupiditate. Sed est consequuntur labore consequatur porro.', 2, NULL, 0, 3, 'App\\Message', '2021-06-16 00:05:17', '2021-06-17 00:05:17'),
(30, 'Incidunt quam delectus ea architecto nemo ut porro natus. Sapiente sed ut debitis porro.', 2, NULL, 0, 1, 'App\\Message', '2021-06-11 00:05:17', '2021-06-21 00:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `public` tinyint(1) DEFAULT NULL,
  `level` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `shop_id`, `name`, `description`, `public`, `level`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Super Admin', 'Super Admin can do anything over the application.', 0, 1, NULL, '2021-06-26 00:03:01', '2021-06-26 00:03:01'),
(2, NULL, 'Admin', 'Admins can do anything over the application. Just cant access Super Admin and other Admins information.', 0, 2, NULL, '2021-06-26 00:03:01', '2021-06-26 00:03:01'),
(3, NULL, 'Merchant', 'The owner of a shop. A merchant can control all contents under his/her shop.', 0, 3, NULL, '2021-06-26 00:03:01', '2021-06-26 00:03:01'),
(4, NULL, 'Modaretor', 'Can access all information except the shop settings in under his/her shop.', 1, 4, NULL, '2021-06-26 00:03:01', '2021-06-26 00:03:01'),
(5, NULL, 'Order Handler', 'Only can access order information under his/her shop.', 1, 5, NULL, '2021-06-26 00:03:01', '2021-06-26 00:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_rates`
--

CREATE TABLE `shipping_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_zone_id` int(10) UNSIGNED NOT NULL,
  `carrier_id` int(10) UNSIGNED DEFAULT NULL,
  `based_on` enum('price','weight') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'price',
  `minimum` decimal(20,6) DEFAULT NULL,
  `maximum` decimal(20,6) DEFAULT NULL,
  `rate` decimal(20,6) DEFAULT NULL,
  `delivery_takes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipping_rates`
--

INSERT INTO `shipping_rates` (`id`, `name`, `shipping_zone_id`, `carrier_id`, `based_on`, `minimum`, `maximum`, `rate`, `delivery_takes`, `created_at`, `updated_at`) VALUES
(1, 'sed', 1, 3, 'price', '0.000000', NULL, '5.000000', '20-33 days', '2021-06-26 00:04:15', '2021-06-26 00:04:15'),
(2, 'eum', 1, 2, 'price', '0.000000', NULL, '16.000000', '8-20 days', '2021-06-26 00:04:15', '2021-06-26 00:04:15'),
(3, 'non', 1, 2, 'weight', '0.000000', '2000.000000', '9.000000', '2-21 days', '2021-06-26 00:04:15', '2021-06-26 00:04:15'),
(4, 'sit', 1, 3, 'price', '0.000000', NULL, '8.000000', '5-16 days', '2021-06-26 00:04:15', '2021-06-26 00:04:15'),
(5, 'blanditiis', 1, 5, 'price', '0.000000', NULL, '8.000000', '5-15 days', '2021-06-26 00:04:15', '2021-06-26 00:04:15'),
(6, 'ipsum', 2, 1, 'weight', '0.000000', '2000.000000', '8.000000', '8-22 days', '2021-06-26 00:04:16', '2021-06-26 00:04:16'),
(7, 'illo', 2, 1, 'weight', '0.000000', '2000.000000', '12.000000', '6-23 days', '2021-06-26 00:04:16', '2021-06-26 00:04:16'),
(8, 'quisquam', 2, 3, 'price', '0.000000', NULL, '18.000000', '12-20 days', '2021-06-26 00:04:16', '2021-06-26 00:04:16'),
(9, 'fuga', 2, 2, 'price', '0.000000', NULL, '5.000000', '20-29 days', '2021-06-26 00:04:16', '2021-06-26 00:04:16'),
(10, 'consequatur', 2, 2, 'weight', '0.000000', '2000.000000', '5.000000', '15-32 days', '2021-06-26 00:04:16', '2021-06-26 00:04:16'),
(11, 'voluptate', 3, 4, 'weight', '0.000000', '2000.000000', '5.000000', '8-25 days', '2021-06-26 00:04:16', '2021-06-26 00:04:16'),
(12, 'non', 3, 2, 'price', '0.000000', NULL, '3.000000', '20-25 days', '2021-06-26 00:04:16', '2021-06-26 00:04:16'),
(13, 'cum', 3, 2, 'weight', '0.000000', '2000.000000', '11.000000', '9-16 days', '2021-06-26 00:04:16', '2021-06-26 00:04:16'),
(14, 'possimus', 3, 1, 'price', '0.000000', NULL, '9.000000', '15-35 days', '2021-06-26 00:04:16', '2021-06-26 00:04:16'),
(15, 'perspiciatis', 3, 5, 'price', '0.000000', NULL, '15.000000', '3-23 days', '2021-06-26 00:04:16', '2021-06-26 00:04:16'),
(16, 'quia', 4, 1, 'weight', '0.000000', '2000.000000', '3.000000', '18-30 days', '2021-06-26 00:04:16', '2021-06-26 00:04:16'),
(17, 'ut', 4, 1, 'weight', '0.000000', '2000.000000', '1.000000', '3-16 days', '2021-06-26 00:04:16', '2021-06-26 00:04:16'),
(18, 'reiciendis', 4, 1, 'price', '0.000000', NULL, '3.000000', '20-25 days', '2021-06-26 00:04:16', '2021-06-26 00:04:16'),
(19, 'sit', 4, 4, 'price', '0.000000', NULL, '19.000000', '19-28 days', '2021-06-26 00:04:16', '2021-06-26 00:04:16'),
(20, 'iusto', 4, 4, 'price', '0.000000', NULL, '1.000000', '8-9 days', '2021-06-26 00:04:16', '2021-06-26 00:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_zones`
--

CREATE TABLE `shipping_zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_id` int(10) UNSIGNED DEFAULT NULL,
  `country_ids` text COLLATE utf8_unicode_ci,
  `state_ids` longtext COLLATE utf8_unicode_ci,
  `rest_of_the_world` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipping_zones`
--

INSERT INTO `shipping_zones` (`id`, `shop_id`, `name`, `tax_id`, `country_ids`, `state_ids`, `rest_of_the_world`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Domestic', 1, 'a:2:{i:0;i:50;i:1;i:840;}', 'a:67:{i:0;i:46;i:1;i:47;i:2;i:48;i:3;i:49;i:4;i:50;i:5;i:51;i:6;i:52;i:7;i:53;i:8;i:534;i:9;i:535;i:10;i:536;i:11;i:537;i:12;i:538;i:13;i:539;i:14;i:540;i:15;i:541;i:16;i:542;i:17;i:543;i:18;i:544;i:19;i:545;i:20;i:546;i:21;i:547;i:22;i:548;i:23;i:549;i:24;i:550;i:25;i:551;i:26;i:552;i:27;i:553;i:28;i:554;i:29;i:555;i:30;i:556;i:31;i:557;i:32;i:558;i:33;i:559;i:34;i:560;i:35;i:561;i:36;i:562;i:37;i:563;i:38;i:564;i:39;i:565;i:40;i:566;i:41;i:567;i:42;i:568;i:43;i:569;i:44;i:570;i:45;i:571;i:46;i:572;i:47;i:573;i:48;i:574;i:49;i:575;i:50;i:576;i:51;i:577;i:52;i:578;i:53;i:579;i:54;i:580;i:55;i:581;i:56;i:582;i:57;i:583;i:58;i:584;i:59;i:585;i:60;i:586;i:61;i:587;i:62;i:588;i:63;i:589;i:64;i:590;i:65;i:591;i:66;i:592;}', 0, 1, '2021-07-09 00:03:40', '2021-07-09 00:03:40'),
(2, 1, 'Worldwide', 1, NULL, NULL, 1, 1, '2021-07-09 00:03:40', '2021-07-09 00:03:40'),
(3, 2, 'Domestic', 1, 'a:2:{i:0;i:50;i:1;i:840;}', 'a:67:{i:0;i:46;i:1;i:47;i:2;i:48;i:3;i:49;i:4;i:50;i:5;i:51;i:6;i:52;i:7;i:53;i:8;i:534;i:9;i:535;i:10;i:536;i:11;i:537;i:12;i:538;i:13;i:539;i:14;i:540;i:15;i:541;i:16;i:542;i:17;i:543;i:18;i:544;i:19;i:545;i:20;i:546;i:21;i:547;i:22;i:548;i:23;i:549;i:24;i:550;i:25;i:551;i:26;i:552;i:27;i:553;i:28;i:554;i:29;i:555;i:30;i:556;i:31;i:557;i:32;i:558;i:33;i:559;i:34;i:560;i:35;i:561;i:36;i:562;i:37;i:563;i:38;i:564;i:39;i:565;i:40;i:566;i:41;i:567;i:42;i:568;i:43;i:569;i:44;i:570;i:45;i:571;i:46;i:572;i:47;i:573;i:48;i:574;i:49;i:575;i:50;i:576;i:51;i:577;i:52;i:578;i:53;i:579;i:54;i:580;i:55;i:581;i:56;i:582;i:57;i:583;i:58;i:584;i:59;i:585;i:60;i:586;i:61;i:587;i:62;i:588;i:63;i:589;i:64;i:590;i:65;i:591;i:66;i:592;}', 0, 1, '2021-07-09 00:03:40', '2021-07-09 00:03:40'),
(4, 2, 'Worldwide', 1, NULL, NULL, 1, 1, '2021-07-09 00:03:40', '2021-07-09 00:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `legal_name` text COLLATE utf8_unicode_ci,
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `external_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone_id` int(11) DEFAULT NULL,
  `current_billing_plan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_holder_name` text COLLATE utf8_unicode_ci,
  `card_brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `hide_trial_notice` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `payment_verified` tinyint(1) DEFAULT NULL,
  `id_verified` tinyint(1) DEFAULT NULL,
  `phone_verified` tinyint(1) DEFAULT NULL,
  `address_verified` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `owner_id`, `name`, `legal_name`, `slug`, `email`, `description`, `external_url`, `timezone_id`, `current_billing_plan`, `stripe_id`, `card_holder_name`, `card_brand`, `card_last_four`, `trial_ends_at`, `hide_trial_notice`, `active`, `payment_verified`, `id_verified`, `phone_verified`, `address_verified`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 'Big Shop', 'Big Shop Ltd.', 'big-shop', 'shop3@demo.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, 73, 'price_1H1HW7JewI4n8wVFl8Ukknoz', NULL, NULL, NULL, NULL, '2021-07-09 00:03:40', NULL, 1, 1, 1, 1, 1, NULL, '2021-07-09 00:03:40', '2021-07-09 00:03:40'),
(2, 4, 'Amz Mart', 'Amz Mart Ltd.', 'amz-mart', 'shop4@demo.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, 73, 'price_1H1HW7JewI4n8wVFl8Ukknoz', NULL, NULL, NULL, NULL, '2021-07-09 00:03:40', NULL, 1, 1, 1, 1, 1, NULL, '2021-07-09 00:03:40', '2021-07-09 00:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `shop_payment_methods`
--

CREATE TABLE `shop_payment_methods` (
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_payment_methods`
--

INSERT INTO `shop_payment_methods` (`payment_method_id`, `shop_id`, `created_at`, `updated_at`) VALUES
(7, 1, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(8, 1, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(7, 2, '2021-06-26 00:03:38', '2021-06-26 00:03:38'),
(8, 2, '2021-06-26 00:03:38', '2021-06-26 00:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_color` varchar(20) COLLATE utf8_unicode_ci DEFAULT '#333E48',
  `sub_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_title_color` varchar(20) COLLATE utf8_unicode_ci DEFAULT '#333E48',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_color` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#868E8E',
  `alt_color` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#FED700',
  `link` text COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '100',
  `text_position` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'right',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `title_color`, `sub_title`, `sub_title_color`, `description`, `description_color`, `alt_color`, `link`, `order`, `text_position`, `created_at`, `updated_at`) VALUES
(1, 'Slider title', '#333E48', 'Sub title <span>with color</span>', '#333E48', 'Description with a text', '#868E8E', '#FED700', '/category/voluptatem-laboriosam-ab-provident-natus-eligendi', 1, 'left', '2021-06-26 00:05:27', '2021-06-26 00:05:27'),
(2, 'Wireless <span>Earbuds</span>', '#333E48', 'Slider subtitle with love', '#333E48', 'Description with <span>span</span> and color', '#868E8E', '#FED700', '/category/atque-harum-minima-modi-vel', 2, 'right', '2021-06-26 00:05:27', '2021-06-26 00:05:27'),
(3, 'Slider Title', '#333E48', 'Without span subtitle', '#333E48', 'Slider description without span', '#868E8E', '#FED700', '/category/mollitia-sint-eum-sed-voluptatum-rem', 3, 'left', '2021-06-26 00:05:27', '2021-06-26 00:05:27'),
(4, '', '#333E48', '', '#333E48', '', '#868E8E', '#FED700', '', 4, 'right', '2021-06-26 00:05:27', '2021-06-26 00:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `iso_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iso_numeric` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calling_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `iso_code`, `iso_numeric`, `name`, `calling_code`, `active`, `created_at`, `updated_at`) VALUES
(1, 32, 'C', NULL, 'Ciudad Autónoma de Buenos Aires', NULL, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(2, 32, 'B', NULL, 'Buenos Aires', NULL, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(3, 32, 'K', NULL, 'Catamarca ', NULL, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(4, 32, 'H', NULL, 'Chaco ', NULL, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(5, 32, 'U', NULL, 'Chubut', NULL, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(6, 32, 'X', NULL, 'Córdoba ', NULL, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(7, 32, 'W', NULL, 'Corrientes', NULL, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(8, 32, 'E', NULL, 'Entre Ríos', NULL, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(9, 32, 'P', NULL, 'Formosa ', NULL, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(10, 32, 'Y', NULL, 'Jujuy ', NULL, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(11, 32, 'L', NULL, 'La Pampa', NULL, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(12, 32, 'F', NULL, 'La Rioja', NULL, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(13, 32, 'M', NULL, 'Mendoza ', NULL, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(14, 32, 'N', NULL, 'Misiones', NULL, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(15, 32, 'Q', NULL, 'Neuquén ', NULL, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(16, 32, 'R', NULL, 'Río Negro ', NULL, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(17, 32, 'A', NULL, 'Salta ', NULL, 1, '2021-06-26 00:02:37', '2021-06-26 00:02:37'),
(18, 32, 'J', NULL, 'San Juan', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(19, 32, 'D', NULL, 'San Luis', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(20, 32, 'Z', NULL, 'Santa Cruz', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(21, 32, 'S', NULL, 'Santa Fe', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(22, 32, 'G', NULL, 'Santiago del Estero ', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(23, 32, 'V', NULL, 'Tierra del Fuego', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(24, 32, 'T', NULL, 'Tucumán ', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(25, 40, '1', NULL, 'Burgenland', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(26, 40, '2', NULL, 'Kärnten', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(27, 40, '3', NULL, 'Niederösterreich', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(28, 40, '4', NULL, 'Oberösterreich', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(29, 40, '5', NULL, 'Salzburg', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(30, 40, '6', NULL, 'Steiermark', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(31, 40, '7', NULL, 'Tirol', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(32, 40, '8', NULL, 'Vorarlberg', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(33, 40, '9', NULL, 'Wien', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(34, 36, 'ACT', NULL, 'Australian Capital Territory', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(35, 36, 'CX', NULL, 'Christmas Island', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(36, 36, 'CC', NULL, 'Cocos Islands', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(37, 36, 'HM', NULL, 'Heard Island and McDonald Islands', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(38, 36, 'NSW', NULL, 'New South Wales', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(39, 36, 'NF', NULL, 'Norfolk Island', NULL, 1, '2021-06-26 00:02:38', '2021-06-26 00:02:38'),
(40, 36, 'NT', NULL, 'Northern Territory', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(41, 36, 'QLD', NULL, 'Queensland', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(42, 36, 'SA', NULL, 'South Australia', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(43, 36, 'TAS', NULL, 'Tasmania', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(44, 36, 'VIC', NULL, 'Victoria', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(45, 36, 'WA', NULL, 'Western Australia', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(46, 50, 'A', NULL, 'Barisal', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(47, 50, 'B', NULL, 'Chittagong', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(48, 50, 'C', NULL, 'Dhaka', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(49, 50, 'D', NULL, 'Khulna', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(50, 50, 'H', NULL, 'Mymensingh', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(51, 50, 'E', NULL, 'Rajshahi', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(52, 50, 'F', NULL, 'Rangpur', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(53, 50, 'G', NULL, 'Sylhet', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(54, 56, 'VAN', NULL, 'Antwerpen', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(55, 56, 'WBR', NULL, 'Brabant wallon', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(56, 56, 'WHT', NULL, 'Hainaut', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(57, 56, 'WLG', NULL, 'Luik', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(58, 56, 'VLI', NULL, 'Limburg', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(59, 56, 'WLX', NULL, 'Luxemburg', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(60, 56, 'WNA', NULL, 'Namur', NULL, 1, '2021-06-26 00:02:39', '2021-06-26 00:02:39'),
(61, 56, 'VOV', NULL, 'Oost-Vlaanderen', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(62, 56, 'VBR', NULL, 'Vlaams-Brabant', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(63, 56, 'VWV', NULL, 'West-Vlaanderen', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(64, 76, 'AC', NULL, 'Acre', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(65, 76, 'AL', NULL, 'Alagoas', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(66, 76, 'AP', NULL, 'Amapá', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(67, 76, 'AM', NULL, 'Amazonas', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(68, 76, 'BA', NULL, 'Bahia', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(69, 76, 'CE', NULL, 'Ceará', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(70, 76, 'DF', NULL, 'Distrito Federal', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(71, 76, 'ES', NULL, 'Espírito Santo', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(72, 76, 'GO', NULL, 'Goiás', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(73, 76, 'MA', NULL, 'Maranhão', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(74, 76, 'MT', NULL, 'Mato Grosso', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(75, 76, 'MS', NULL, 'Mato Grosso do Sul', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(76, 76, 'MG', NULL, 'Minas Gerais', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(77, 76, 'PA', NULL, 'Pará', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(78, 76, 'PB', NULL, 'Paraíba', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(79, 76, 'PR', NULL, 'Paraná', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(80, 76, 'PE', NULL, 'Pernambuco', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(81, 76, 'PI', NULL, 'Piauí', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(82, 76, 'RJ', NULL, 'Rio de Janeiro', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(83, 76, 'RN', NULL, 'Rio Grande do Norte', NULL, 1, '2021-06-26 00:02:40', '2021-06-26 00:02:40'),
(84, 76, 'RS', NULL, 'Rio Grande do Sul', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(85, 76, 'RO', NULL, 'Rondônia', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(86, 76, 'RR', NULL, 'Roraima', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(87, 76, 'SC', NULL, 'Santa Catarina', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(88, 76, 'SP', NULL, 'São Paulo', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(89, 76, 'SE', NULL, 'Sergipe', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(90, 76, 'TO', NULL, 'Tocantins', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(91, 124, 'AB', NULL, 'Alberta', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(92, 124, 'BC', NULL, 'British Columbia', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(93, 124, 'MB', NULL, 'Manitoba', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(94, 124, 'NB', NULL, 'New Brunswick', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(95, 124, 'NL', NULL, 'Newfoundland and Labrador', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(96, 124, 'NS', NULL, 'Nova Scotia', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(97, 124, 'NU', NULL, 'Nunavut', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(98, 124, 'NT', NULL, 'Northwest Territories', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(99, 124, 'ON', NULL, 'Ontario', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(100, 124, 'PE', NULL, 'Prince Edward Island', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(101, 124, 'QC', NULL, 'Quebec', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(102, 124, 'SK', NULL, 'Saskatchewan', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(103, 124, 'YT', NULL, 'Yukon', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(104, 156, '渝', NULL, '重庆', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(105, 156, '黑', NULL, '黑龙江', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(106, 156, '吉', NULL, '吉林', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(107, 156, '琼', NULL, '海南', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(108, 156, '京', NULL, '北京', NULL, 1, '2021-06-26 00:02:41', '2021-06-26 00:02:41'),
(109, 156, '辽', NULL, '辽宁', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(110, 156, '蒙', NULL, '内蒙古', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(111, 156, '藏', NULL, '西藏', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(112, 156, '青', NULL, '青海', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(113, 156, '宁', NULL, '宁夏', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(114, 156, '新', NULL, '新疆', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(115, 156, '甘', NULL, '甘肃', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(116, 156, '冀', NULL, '河北', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(117, 156, '豫', NULL, '河南', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(118, 156, '鄂', NULL, '湖北', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(119, 156, '湘', NULL, '湖南', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(120, 156, '鲁', NULL, '山东', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(121, 156, '苏', NULL, '江苏', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(122, 156, '皖', NULL, '安徽', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(123, 156, '晋', NULL, '山西', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(124, 156, '陕', NULL, '陕西', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(125, 156, '川', NULL, '四川', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(126, 156, '滇', NULL, '云南', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(127, 156, '黔', NULL, '贵州', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(128, 156, '浙', NULL, '浙江', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(129, 156, '闽', NULL, '福建', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(130, 156, '桂', NULL, '广西', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(131, 156, '沪', NULL, '上海', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(132, 156, '津', NULL, '天津', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(133, 156, '港', NULL, '香港', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(134, 156, '澳', NULL, '澳门', NULL, 1, '2021-06-26 00:02:42', '2021-06-26 00:02:42'),
(135, 156, '台', NULL, '台湾', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(136, 156, '赣', NULL, '江西', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(137, 156, '粤', NULL, '广东', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(138, 276, 'BW', NULL, 'Baden-Württemberg', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(139, 276, 'BY', NULL, 'Bayern', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(140, 276, 'BE', NULL, 'Berlin', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(141, 276, 'BB', NULL, 'Brandenburg', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(142, 276, 'HB', NULL, 'Bremen', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(143, 276, 'HH', NULL, 'Hamburg', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(144, 276, 'HE', NULL, 'Hessen', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(145, 276, 'MV', NULL, 'Mecklenburg-Vorpommern', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(146, 276, 'NI', NULL, 'Niedersachsen', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(147, 276, 'NW', NULL, 'Nordrhein-Westfalen', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(148, 276, 'RP', NULL, 'Rheinland-Pfalz', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(149, 276, 'SL', NULL, 'Saarland', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(150, 276, 'SN', NULL, 'Sachsen', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(151, 276, 'ST', NULL, 'Sachsen-Anhalt', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(152, 276, 'SH', NULL, 'Schleswig-Holstein', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(153, 276, 'TH', NULL, 'Thüringen', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(154, 724, 'C', NULL, 'La Coruña', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(155, 724, 'LU', NULL, 'Lugo', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(156, 724, 'BI', NULL, 'Vizcaya', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(157, 724, 'SS', NULL, 'Guipúzcoa', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(158, 724, 'HU', NULL, 'Huesca', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(159, 724, 'L', NULL, 'Lérida', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(160, 724, 'GI', NULL, 'Gerona', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(161, 724, 'B', NULL, 'Barcelona', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(162, 724, 'T', NULL, 'Tarragona', NULL, 1, '2021-06-26 00:02:43', '2021-06-26 00:02:43'),
(163, 724, 'CS', NULL, 'Castellón', NULL, 1, '2021-06-26 00:02:44', '2021-06-26 00:02:44'),
(164, 724, 'V', NULL, 'Valencia', NULL, 1, '2021-06-26 00:02:44', '2021-06-26 00:02:44'),
(165, 724, 'A', NULL, 'Alicante', NULL, 1, '2021-06-26 00:02:44', '2021-06-26 00:02:44'),
(166, 724, 'MU', NULL, 'Murcia', NULL, 1, '2021-06-26 00:02:44', '2021-06-26 00:02:44'),
(167, 724, 'Z', NULL, 'Zaragoza', NULL, 1, '2021-06-26 00:02:44', '2021-06-26 00:02:44'),
(168, 724, 'TE', NULL, 'Teruel', NULL, 1, '2021-06-26 00:02:44', '2021-06-26 00:02:44'),
(169, 724, 'CU', NULL, 'Cuenca', NULL, 1, '2021-06-26 00:02:44', '2021-06-26 00:02:44'),
(170, 724, 'AB', NULL, 'Albacete', NULL, 1, '2021-06-26 00:02:44', '2021-06-26 00:02:44'),
(171, 724, 'AL', NULL, 'Almeria', NULL, 1, '2021-06-26 00:02:44', '2021-06-26 00:02:44'),
(172, 724, 'GR', NULL, 'Granada', NULL, 1, '2021-06-26 00:02:44', '2021-06-26 00:02:44'),
(173, 724, 'MA', NULL, 'Málaga', NULL, 1, '2021-06-26 00:02:44', '2021-06-26 00:02:44'),
(174, 724, 'TF', NULL, 'Tenerife', NULL, 1, '2021-06-26 00:02:44', '2021-06-26 00:02:44'),
(175, 724, 'CA', NULL, 'Cádiz', NULL, 1, '2021-06-26 00:02:44', '2021-06-26 00:02:44'),
(176, 724, 'SE', NULL, 'Sevilla', NULL, 1, '2021-06-26 00:02:44', '2021-06-26 00:02:44'),
(177, 724, 'H', NULL, 'Huelva', NULL, 1, '2021-06-26 00:02:44', '2021-06-26 00:02:44'),
(178, 724, 'GC', NULL, 'Las Palmas', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(179, 724, 'M', NULL, 'Madrid', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(180, 724, 'BA', NULL, 'Badajoz', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(181, 724, 'CC', NULL, 'Cáceres', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(182, 724, 'TO', NULL, 'Toledo', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(183, 724, 'CR', NULL, 'Ciudad Real', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(184, 724, 'SA', NULL, 'Salamanca', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(185, 724, 'CO', NULL, 'Córdoba', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(186, 724, 'J', NULL, 'Jaén', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(187, 724, 'AV', NULL, 'Ávila', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(188, 724, 'VA', NULL, 'Valladolid', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(189, 724, 'ZA', NULL, 'Zamora', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(190, 724, 'VI', NULL, 'Álava', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(191, 724, 'SG', NULL, 'Segovia', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(192, 724, 'BU', NULL, 'Burgos', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(193, 724, 'PO', NULL, 'Pontevedra', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(194, 724, 'LE', NULL, 'León', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(195, 724, 'OU', NULL, 'Orense', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(196, 724, 'P', NULL, 'Palencia', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(197, 724, 'LO', NULL, 'La Rioja', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(198, 724, 'SO', NULL, 'Soria', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(199, 724, 'GU', NULL, 'Guadalajara', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(200, 250, 'ARA', NULL, 'Auvergne-Rhône-Alpes', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(201, 250, 'BFC', NULL, 'Bourgogne-Franche-Comté', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(202, 250, 'BRE', NULL, 'Bretagne', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(203, 250, 'CVL', NULL, 'Centre-Val de Loire', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(204, 250, 'COR', NULL, 'Corse', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(205, 250, 'GES', NULL, 'Grand-Est', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(206, 250, 'GUA', NULL, 'Guadeloupe', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(207, 250, 'HDF', NULL, 'Hauts-de-France', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(208, 250, 'IDF', NULL, 'Île-de-France', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(209, 250, 'MAY', NULL, 'Mayotte', NULL, 1, '2021-06-26 00:02:45', '2021-06-26 00:02:45'),
(210, 250, 'NOR', NULL, 'Normandie', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(211, 250, 'NAQ', NULL, 'Nouvelle-Aquitaine', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(212, 250, 'OCC', NULL, 'Occitanie', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(213, 250, 'PDL', NULL, 'Pays-de-la-Loire', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(214, 250, 'PAC', NULL, 'Provence-Alpes-Côte-d’Azur', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(215, 250, 'LRE', NULL, 'La Réunion', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(216, 360, 'AC', NULL, 'Special Region of Aceh', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(217, 360, 'BA', NULL, 'Bali', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(218, 360, 'BB', NULL, 'Bangka–Belitung Islands', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(219, 360, 'BT', NULL, 'Banten', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(220, 360, 'BE', NULL, 'Bengkulu', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(221, 360, 'JT', NULL, 'Central Java', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(222, 360, 'KT', NULL, 'Central Kalimantan', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(223, 360, 'ST', NULL, 'Central Sulawesi', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(224, 360, 'JI', NULL, 'East Java', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(225, 360, 'KI', NULL, 'East Kalimantan', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(226, 360, 'NT', NULL, 'East Nusa Tenggara', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(227, 360, 'GO', NULL, 'Gorontalo', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(228, 360, 'JK', NULL, 'Jakarta Special Capital Region', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(229, 360, 'JA', NULL, 'Jambi', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(230, 360, 'LA', NULL, 'Lampung', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(231, 360, 'MA', NULL, 'Maluku', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(232, 360, 'KU', NULL, 'North Kalimantan', NULL, 1, '2021-06-26 00:02:46', '2021-06-26 00:02:46'),
(233, 360, 'MU', NULL, 'North Maluku', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(234, 360, 'SA', NULL, 'North Sulawesi', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(235, 360, 'SU', NULL, 'North Sumatra', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(236, 360, 'PA', NULL, 'Special Region of Papua', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(237, 360, 'RI', NULL, 'Riau', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(238, 360, 'KR', NULL, 'Riau Islands', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(239, 360, 'SG', NULL, 'Southeast Sulawesi', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(240, 360, 'KS', NULL, 'South Kalimantan', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(241, 360, 'SN', NULL, 'South Sulawesi', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(242, 360, 'SS', NULL, 'South Sumatra', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(243, 360, 'JB', NULL, 'West Java', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(244, 360, 'KB', NULL, 'West Kalimantan', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(245, 360, 'NB', NULL, 'West Nusa Tenggara', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(246, 360, 'PB', NULL, 'Special Region of West Papua', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(247, 360, 'SR', NULL, 'West Sulawesi', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(248, 360, 'SB', NULL, 'West Sumatra', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(249, 360, 'YO', NULL, 'Special Region of Yogyakarta', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(250, 356, 'AP', NULL, 'Andhra Pradesh', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(251, 356, 'AR', NULL, 'Arunachal Pradesh', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(252, 356, 'AS', NULL, 'Assam', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(253, 356, 'BR', NULL, 'Bihar', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(254, 356, 'CT', NULL, 'Chhattisgarh', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(255, 356, 'GA', NULL, 'Goa', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(256, 356, 'GJ', NULL, 'Gujarat', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(257, 356, 'HR', NULL, 'Haryana', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(258, 356, 'HP', NULL, 'Himachal Pradesh', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(259, 356, 'JK', NULL, 'Jammu and Kashmir', NULL, 1, '2021-06-26 00:02:47', '2021-06-26 00:02:47'),
(260, 356, 'JH', NULL, 'Jharkhand', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(261, 356, 'KA', NULL, 'Karnataka', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(262, 356, 'KL', NULL, 'Kerala', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(263, 356, 'MP', NULL, 'Madhya Pradesh', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(264, 356, 'MH', NULL, 'Maharashtra', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(265, 356, 'MN', NULL, 'Manipur', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(266, 356, 'ML', NULL, 'Meghalaya', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(267, 356, 'MZ', NULL, 'Mizoram', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(268, 356, 'NL', NULL, 'Nagaland', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(269, 356, 'OR', NULL, 'Odisha', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(270, 356, 'PB', NULL, 'Punjab', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(271, 356, 'RJ', NULL, 'Rajasthan', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(272, 356, 'SK', NULL, 'Sikkim', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(273, 356, 'TN', NULL, 'Tamil Nadu', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(274, 356, 'TG', NULL, 'Telangana', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(275, 356, 'TR', NULL, 'Tripura', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(276, 356, 'UP', NULL, 'Uttar Pradesh', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(277, 356, 'UT', NULL, 'Uttarakhand', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(278, 356, 'WB', NULL, 'West Bengal', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(279, 356, 'AN', NULL, 'Andaman and Nicobar Islands', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(280, 356, 'CH', NULL, 'Chandigarh', NULL, 1, '2021-06-26 00:02:48', '2021-06-26 00:02:48'),
(281, 356, 'DN', NULL, 'Dadra and Nagar Haveli', NULL, 1, '2021-06-26 00:02:49', '2021-06-26 00:02:49'),
(282, 356, 'DD', NULL, 'Daman and Diu', NULL, 1, '2021-06-26 00:02:49', '2021-06-26 00:02:49'),
(283, 356, 'LD', NULL, 'Lakshadweep', NULL, 1, '2021-06-26 00:02:49', '2021-06-26 00:02:49'),
(284, 356, 'DL', NULL, 'National Capital Territory of Delhi', NULL, 1, '2021-06-26 00:02:49', '2021-06-26 00:02:49'),
(285, 356, 'PY', NULL, 'Puducherry', NULL, 1, '2021-06-26 00:02:49', '2021-06-26 00:02:49'),
(286, 380, '65', NULL, 'Abruzzo', NULL, 1, '2021-06-26 00:02:49', '2021-06-26 00:02:49'),
(287, 380, '77', NULL, 'Basilicata', NULL, 1, '2021-06-26 00:02:49', '2021-06-26 00:02:49'),
(288, 380, '78', NULL, 'Calabria', NULL, 1, '2021-06-26 00:02:49', '2021-06-26 00:02:49'),
(289, 380, '72', NULL, 'Campania', NULL, 1, '2021-06-26 00:02:49', '2021-06-26 00:02:49'),
(290, 380, '45', NULL, 'Emilia-Romagna', NULL, 1, '2021-06-26 00:02:49', '2021-06-26 00:02:49'),
(291, 380, '62', NULL, 'Lazio', NULL, 1, '2021-06-26 00:02:49', '2021-06-26 00:02:49'),
(292, 380, '42', NULL, 'Liguria', NULL, 1, '2021-06-26 00:02:49', '2021-06-26 00:02:49'),
(293, 380, '25', NULL, 'Lombardy', NULL, 1, '2021-06-26 00:02:49', '2021-06-26 00:02:49'),
(294, 380, '57', NULL, 'Marche', NULL, 1, '2021-06-26 00:02:49', '2021-06-26 00:02:49'),
(295, 380, '67', NULL, 'Molise', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(296, 380, '21', NULL, 'Piedmont', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(297, 380, '75', NULL, 'Apulia', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(298, 380, '52', NULL, 'Tuscany', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(299, 380, '55', NULL, 'Umbria', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(300, 380, '34', NULL, 'Veneto', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(301, 380, '36', NULL, 'Friuli Venezia Giulia', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(302, 380, '88', NULL, 'Sardinia', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(303, 380, '82', NULL, 'Sicily', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(304, 380, '32', NULL, 'Trentino-South Tyrol', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(305, 380, '23', NULL, 'Aosta Valley', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(306, 392, '23', NULL, 'Aiti', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(307, 392, '05', NULL, 'Akita', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(308, 392, '02', NULL, 'Aomori', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(309, 392, '38', NULL, 'Ehime', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(310, 392, '21', NULL, 'Gihu', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(311, 392, '10', NULL, 'Gunma', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(312, 392, '34', NULL, 'Hirosima', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(313, 392, '01', NULL, 'Hokkaidô', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(314, 392, '18', NULL, 'Hukui', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(315, 392, '40', NULL, 'Hukuoka', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(316, 392, '07', NULL, 'Hukusima', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(317, 392, '28', NULL, 'Hyôgo', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(318, 392, '08', NULL, 'Ibaraki', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(319, 392, '17', NULL, 'Isikawa', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(320, 392, '03', NULL, 'Iwate', NULL, 1, '2021-06-26 00:02:50', '2021-06-26 00:02:50'),
(321, 392, '37', NULL, 'Kagawa', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(322, 392, '46', NULL, 'Kagosima', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(323, 392, '14', NULL, 'Kanagawa ', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(324, 392, '39', NULL, 'Kôti', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(325, 392, '43', NULL, 'Kumamoto ', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(326, 392, '26', NULL, 'Kyôto', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(327, 392, '24', NULL, 'Mie', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(328, 392, '04', NULL, 'Miyagi', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(329, 392, '45', NULL, 'Miyazaki', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(330, 392, '20', NULL, 'Nagano', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(331, 392, '42', NULL, 'Nagasaki', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(332, 392, '29', NULL, 'Nara', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(333, 392, '15', NULL, 'Niigata', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(334, 392, '44', NULL, 'Ôita', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(335, 392, '33', NULL, 'Okayama', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(336, 392, '47', NULL, 'Okinawa', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(337, 392, '27', NULL, 'Ôsaka', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(338, 392, '41', NULL, 'Saga', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(339, 392, '11', NULL, 'Saitama', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(340, 392, '25', NULL, 'Siga', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(341, 392, '32', NULL, 'Simane', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(342, 392, '22', NULL, 'Sizuoka', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(343, 392, '12', NULL, 'Tiba', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(344, 392, '09', NULL, 'Totigi', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(345, 392, '36', NULL, 'Tokusima', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(346, 392, '13', NULL, 'Tôkyô', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(347, 392, '31', NULL, 'Tottori', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(348, 392, '16', NULL, 'Toyama', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(349, 392, '30', NULL, 'Wakayama', NULL, 1, '2021-06-26 00:02:51', '2021-06-26 00:02:51'),
(350, 392, '06', NULL, 'Yamagata', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(351, 392, '35', NULL, 'Yamaguti', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(352, 392, '19', NULL, 'Yamanasi', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(353, 484, 'AG', NULL, 'Aguascalientes', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(354, 484, 'BC', NULL, 'Baja California', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(355, 484, 'BS', NULL, 'Baja California Sur', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(356, 484, 'CM', NULL, 'Campeche', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(357, 484, 'CS', NULL, 'Chiapas', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(358, 484, 'CH', NULL, 'Chihuahua', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(359, 484, 'MX', NULL, 'Coahuila', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(360, 484, 'CL', NULL, 'Colima', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(361, 484, 'DF', NULL, 'Federal District', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(362, 484, 'DG', NULL, 'Durango', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(363, 484, 'GT', NULL, 'Guanajuato', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(364, 484, 'GR', NULL, 'Guerrero', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(365, 484, 'HG', NULL, 'Hidalgo', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(366, 484, 'JA', NULL, 'Jalisco', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(367, 484, 'ME', NULL, 'Mexico', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(368, 484, 'MI', NULL, 'Michoacán', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(369, 484, 'MO', NULL, 'Morelos', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(370, 484, 'NA', NULL, 'Nayarit', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(371, 484, 'NL', NULL, 'Nuevo León', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(372, 484, 'OA', NULL, 'Oaxaca', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(373, 484, 'PU', NULL, 'Puebla', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(374, 484, 'QE', NULL, 'Querétaro', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(375, 484, 'QR', NULL, 'Quintana Roo', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(376, 484, 'SL', NULL, 'San Luis Potosí', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(377, 484, 'SI', NULL, 'Sinaloa', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(378, 484, 'SO', NULL, 'Sonora', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(379, 484, 'TB', NULL, 'Tabasco', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(380, 484, 'TM', NULL, 'Tamaulipas', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(381, 484, 'TL', NULL, 'Tlaxcala', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(382, 484, 'VE', NULL, 'Veracruz', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(383, 484, 'YU', NULL, 'Yucatán', NULL, 1, '2021-06-26 00:02:52', '2021-06-26 00:02:52'),
(384, 484, 'ZA', NULL, 'Zacatecas', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(385, 528, 'DR', NULL, 'Drenthe', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(386, 528, 'FL', NULL, 'Flevoland', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(387, 528, 'FR', NULL, 'Friesland', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(388, 528, 'GD', NULL, 'Gelderland', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(389, 528, 'GR', NULL, 'Groningen', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(390, 528, 'LB', NULL, 'Limburg', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(391, 528, 'NB', NULL, 'Noord-Brabant', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(392, 528, 'NH', NULL, 'Noord-Holland', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(393, 528, 'OV', NULL, 'Overijssel', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(394, 528, 'UT', NULL, 'Utrecht', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(395, 528, 'ZH', NULL, 'Zuid-Holland', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(396, 528, 'ZL', NULL, 'Zeeland', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(397, 528, 'AW', NULL, 'Aruba', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(398, 528, 'BQ', NULL, 'Bonaire', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(399, 528, 'CW', NULL, 'Curaçao', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(400, 528, 'SX', NULL, 'Sint Maarten', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(401, 604, 'LMA', NULL, 'Municipalidad Metropolitana de Lima', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(402, 604, 'AMA', NULL, 'Amazonas', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(403, 604, 'ANC', NULL, 'Ancash', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(404, 604, 'APU', NULL, 'Apurímac', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(405, 604, 'ARE', NULL, 'Arequipa', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(406, 604, 'AYA', NULL, 'Ayacucho', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(407, 604, 'CAJ', NULL, 'Cajamarca', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(408, 604, 'CUS', NULL, 'Cusco', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(409, 604, 'CAL', NULL, 'El Callao', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(410, 604, 'HUV', NULL, 'Huancavelica', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(411, 604, 'HUC', NULL, 'Huánuco', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(412, 604, 'ICA', NULL, 'Ica', NULL, 1, '2021-06-26 00:02:53', '2021-06-26 00:02:53'),
(413, 604, 'JUN', NULL, 'Junín', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(414, 604, 'LAL', NULL, 'La Libertad', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(415, 604, 'LAM', NULL, 'Lambayeque', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(416, 604, 'LIM', NULL, 'Lima', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(417, 604, 'LOR', NULL, 'Loreto', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(418, 604, 'MDD', NULL, 'Madre de Dios', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(419, 604, 'MOQ', NULL, 'Moquegua', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(420, 604, 'PAS', NULL, 'Pasco', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(421, 604, 'PIU', NULL, 'Piura', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(422, 604, 'PUN', NULL, 'Puno', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(423, 604, 'SAM', NULL, 'San Martín', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(424, 604, 'TAC', NULL, 'Tacna', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(425, 604, 'TUM', NULL, 'Tumbes', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(426, 604, 'UCA', NULL, 'Ucayali', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(427, 764, '37', NULL, 'Amnat Charoen', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(428, 764, '15', NULL, 'Ang Thong', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(429, 764, '38', NULL, 'Bueng Kan', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(430, 764, '31', NULL, 'Buri Ram', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(431, 764, '24', NULL, 'Chachoengsao', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(432, 764, '18', NULL, 'Chai Nat', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(433, 764, '36', NULL, 'Chaiyaphum', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(434, 764, '22', NULL, 'Chanthaburi', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(435, 764, '50', NULL, 'Chiang Mai', NULL, 1, '2021-06-26 00:02:54', '2021-06-26 00:02:54'),
(436, 764, '57', NULL, 'Chiang Rai', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(437, 764, '20', NULL, 'Chon Buri', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(438, 764, '86', NULL, 'Chumphon', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(439, 764, '46', NULL, 'Kalasin', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(440, 764, '62', NULL, 'Kamphaeng Phet', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(441, 764, '71', NULL, 'Kanchanaburi', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(442, 764, '40', NULL, 'Khon Kaen', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(443, 764, '81', NULL, 'Krabi', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(444, 764, '52', NULL, 'Lampang', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(445, 764, '51', NULL, 'Lamphun', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(446, 764, '42', NULL, 'Loei', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(447, 764, '16', NULL, 'Lop Buri', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(448, 764, '58', NULL, 'Mae Hong Son', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(449, 764, '44', NULL, 'Maha Sarakham', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(450, 764, '49', NULL, 'Mukdahan', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(451, 764, '26', NULL, 'Nakhon Nayok', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(452, 764, '73', NULL, 'Nakhon Pathom', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(453, 764, '48', NULL, 'Nakhon Phanom', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(454, 764, '30', NULL, 'Nakhon Ratchasima', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(455, 764, '60', NULL, 'Nakhon Sawan', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(456, 764, '80', NULL, 'Nakhon Si Thammarat', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(457, 764, '55', NULL, 'Nan', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(458, 764, '96', NULL, 'Narathiwat', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(459, 764, '39', NULL, 'Nong Bua Lam Phu', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(460, 764, '43', NULL, 'Nong Khai', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(461, 764, '12', NULL, 'Nonthaburi', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(462, 764, '13', NULL, 'Pathum Thani', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(463, 764, '94', NULL, 'Pattani', NULL, 1, '2021-06-26 00:02:55', '2021-06-26 00:02:55'),
(464, 764, '82', NULL, 'Phangnga', NULL, 1, '2021-06-26 00:02:56', '2021-06-26 00:02:56'),
(465, 764, '93', NULL, 'Phatthalung', NULL, 1, '2021-06-26 00:02:56', '2021-06-26 00:02:56'),
(466, 764, '56', NULL, 'Phayao', NULL, 1, '2021-06-26 00:02:56', '2021-06-26 00:02:56'),
(467, 764, '67', NULL, 'Phetchabun', NULL, 1, '2021-06-26 00:02:56', '2021-06-26 00:02:56'),
(468, 764, '76', NULL, 'Phetchaburi', NULL, 1, '2021-06-26 00:02:56', '2021-06-26 00:02:56'),
(469, 764, '66', NULL, 'Phichit', NULL, 1, '2021-06-26 00:02:56', '2021-06-26 00:02:56'),
(470, 764, '65', NULL, 'Phitsanulok', NULL, 1, '2021-06-26 00:02:56', '2021-06-26 00:02:56'),
(471, 764, '54', NULL, 'Phrae', NULL, 1, '2021-06-26 00:02:56', '2021-06-26 00:02:56'),
(472, 764, '14', NULL, 'Phra Nakhon Si Ayutthaya', NULL, 1, '2021-06-26 00:02:56', '2021-06-26 00:02:56'),
(473, 764, '83', NULL, 'Phuket', NULL, 1, '2021-06-26 00:02:56', '2021-06-26 00:02:56'),
(474, 764, '25', NULL, 'Prachin Buri', NULL, 1, '2021-06-26 00:02:56', '2021-06-26 00:02:56'),
(475, 764, '77', NULL, 'Prachuap Khiri Khan', NULL, 1, '2021-06-26 00:02:56', '2021-06-26 00:02:56'),
(476, 764, '85', NULL, 'Ranong', NULL, 1, '2021-06-26 00:02:56', '2021-06-26 00:02:56'),
(477, 764, '70', NULL, 'Ratchaburi', NULL, 1, '2021-06-26 00:02:56', '2021-06-26 00:02:56'),
(478, 764, '21', NULL, 'Rayong', NULL, 1, '2021-06-26 00:02:56', '2021-06-26 00:02:56'),
(479, 764, '45', NULL, 'Roi Et', NULL, 1, '2021-06-26 00:02:56', '2021-06-26 00:02:56'),
(480, 764, '27', NULL, 'Sa Kaeo', NULL, 1, '2021-06-26 00:02:56', '2021-06-26 00:02:56'),
(481, 764, '47', NULL, 'Sakon Nakhon', NULL, 1, '2021-06-26 00:02:56', '2021-06-26 00:02:56'),
(482, 764, '11', NULL, 'Samut Prakan', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(483, 764, '74', NULL, 'Samut Sakhon', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(484, 764, '75', NULL, 'Samut Songkhram', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(485, 764, '19', NULL, 'Saraburi', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(486, 764, '91', NULL, 'Satun', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(487, 764, '17', NULL, 'Sing Buri', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(488, 764, '33', NULL, 'Si Sa Ket', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(489, 764, '90', NULL, 'Songkhla', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(490, 764, '64', NULL, 'Sukhothai', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(491, 764, '72', NULL, 'Suphan Buri', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(492, 764, '84', NULL, 'Surat Thani', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(493, 764, '32', NULL, 'Surin', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(494, 764, '63', NULL, 'Tak', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(495, 764, '92', NULL, 'Trang', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(496, 764, '23', NULL, 'Trat', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(497, 764, '34', NULL, 'Ubon Ratchathani', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(498, 764, '41', NULL, 'Udon Thani', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(499, 764, '61', NULL, 'Uthai Thani', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(500, 764, '53', NULL, 'Uttaradit', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(501, 764, '95', NULL, 'Yala', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(502, 764, '35', NULL, 'Yasothon', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(503, 834, '01', NULL, 'Arusha', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(504, 834, '02', NULL, 'Dar es Salaam', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(505, 834, '03', NULL, 'Dodoma', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(506, 834, '27', NULL, 'Geita', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(507, 834, '04', NULL, 'Iringa', NULL, 1, '2021-06-26 00:02:57', '2021-06-26 00:02:57'),
(508, 834, '05', NULL, 'Kagera', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(509, 834, '06', NULL, 'Kaskazini Pemba', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(510, 834, '07', NULL, 'Kaskazini Unguja', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(511, 834, '28', NULL, 'Katavi', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(512, 834, '08', NULL, 'Kigoma', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(513, 834, '09', NULL, 'Kilimanjaro', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(514, 834, '10', NULL, 'Kusini Pemba', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(515, 834, '11', NULL, 'Kusini Unguja', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(516, 834, '12', NULL, 'Lindi', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(517, 834, '26', NULL, 'Manyara', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(518, 834, '13', NULL, 'Mara', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(519, 834, '14', NULL, 'Mbeya', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(520, 834, '15', NULL, 'Mjini Magharibi', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(521, 834, '16', NULL, 'Morogoro', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(522, 834, '17', NULL, 'Mtwara', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(523, 834, '18', NULL, 'Mwanza', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(524, 834, '29', NULL, 'Njombe', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(525, 834, '19', NULL, 'Pwani Coast', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(526, 834, '20', NULL, 'Rukwa', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(527, 834, '21', NULL, 'Ruvuma', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(528, 834, '22', NULL, 'Shinyanga', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(529, 834, '30', NULL, 'Simiyu', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(530, 834, '23', NULL, 'Singida', NULL, 1, '2021-06-26 00:02:58', '2021-06-26 00:02:58'),
(531, 834, '31', NULL, 'Songwe', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(532, 834, '24', NULL, 'Tabora', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(533, 834, '25', NULL, 'Tanga', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(534, 840, 'AL', NULL, 'Alabama', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(535, 840, 'AK', NULL, 'Alaska', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(536, 840, 'AS', NULL, 'American Samoa', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(537, 840, 'AZ', NULL, 'Arizona', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(538, 840, 'AR', NULL, 'Arkansas', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(539, 840, 'CA', NULL, 'California', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(540, 840, 'CO', NULL, 'Colorado', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(541, 840, 'CT', NULL, 'Connecticut', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(542, 840, 'DE', NULL, 'Delaware', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(543, 840, 'DC', NULL, 'District Of Columbia', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(544, 840, 'FM', NULL, 'Federated States Of Micronesia', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(545, 840, 'FL', NULL, 'Florida', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(546, 840, 'GA', NULL, 'Georgia', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(547, 840, 'GU', NULL, 'Guam', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(548, 840, 'HI', NULL, 'Hawaii', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(549, 840, 'ID', NULL, 'Idaho', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(550, 840, 'IL', NULL, 'Illinois', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(551, 840, 'IN', NULL, 'Indiana', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(552, 840, 'IA', NULL, 'Iowa', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(553, 840, 'KS', NULL, 'Kansas', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(554, 840, 'KY', NULL, 'Kentucky', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(555, 840, 'LA', NULL, 'Louisiana', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59');
INSERT INTO `states` (`id`, `country_id`, `iso_code`, `iso_numeric`, `name`, `calling_code`, `active`, `created_at`, `updated_at`) VALUES
(556, 840, 'ME', NULL, 'Maine', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(557, 840, 'MH', NULL, 'Marshall Islands', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(558, 840, 'MD', NULL, 'Maryland', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(559, 840, 'MA', NULL, 'Massachusetts', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(560, 840, 'MI', NULL, 'Michigan', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(561, 840, 'MN', NULL, 'Minnesota', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(562, 840, 'MS', NULL, 'Mississippi', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(563, 840, 'MO', NULL, 'Missouri', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(564, 840, 'MT', NULL, 'Montana', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(565, 840, 'NE', NULL, 'Nebraska', NULL, 1, '2021-06-26 00:02:59', '2021-06-26 00:02:59'),
(566, 840, 'NV', NULL, 'Nevada', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(567, 840, 'NH', NULL, 'New Hampshire', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(568, 840, 'NJ', NULL, 'New Jersey', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(569, 840, 'NM', NULL, 'New Mexico', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(570, 840, 'NY', NULL, 'New York', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(571, 840, 'NC', NULL, 'North Carolina', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(572, 840, 'ND', NULL, 'North Dakota', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(573, 840, 'MP', NULL, 'Northern Mariana Islands', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(574, 840, 'OH', NULL, 'Ohio', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(575, 840, 'OK', NULL, 'Oklahoma', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(576, 840, 'OR', NULL, 'Oregon', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(577, 840, 'PW', NULL, 'Palau', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(578, 840, 'PA', NULL, 'Pennsylvania', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(579, 840, 'PR', NULL, 'Puerto Rico', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(580, 840, 'RI', NULL, 'Rhode Island', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(581, 840, 'SC', NULL, 'South Carolina', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(582, 840, 'SD', NULL, 'South Dakota', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(583, 840, 'TN', NULL, 'Tennessee', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(584, 840, 'TX', NULL, 'Texas', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(585, 840, 'UT', NULL, 'Utah', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(586, 840, 'VT', NULL, 'Vermont', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(587, 840, 'VI', NULL, 'Virgin Islands', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(588, 840, 'VA', NULL, 'Virginia', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(589, 840, 'WA', NULL, 'Washington', NULL, 1, '2021-06-26 00:03:00', '2021-06-26 00:03:00'),
(590, 840, 'WV', NULL, 'West Virginia', NULL, 1, '2021-06-26 00:03:01', '2021-06-26 00:03:01'),
(591, 840, 'WI', NULL, 'Wisconsin', NULL, 1, '2021-06-26 00:03:01', '2021-06-26 00:03:01'),
(592, 840, 'WY', NULL, 'Wyoming', NULL, 1, '2021-06-26 00:03:01', '2021-06-26 00:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_plan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plans`
--

CREATE TABLE `subscription_plans` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `plan_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `best_for` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` decimal(8,2) NOT NULL DEFAULT '0.00',
  `transaction_fee` decimal(8,2) NOT NULL DEFAULT '0.00',
  `marketplace_commission` decimal(8,2) NOT NULL DEFAULT '0.00',
  `order_per_month` int(11) DEFAULT NULL,
  `revenue_per_month` int(11) DEFAULT NULL,
  `team_size` int(11) NOT NULL DEFAULT '1',
  `inventory_limit` int(11) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscription_plans`
--

INSERT INTO `subscription_plans` (`name`, `plan_id`, `best_for`, `cost`, `transaction_fee`, `marketplace_commission`, `order_per_month`, `revenue_per_month`, `team_size`, `inventory_limit`, `featured`, `order`, `deleted_at`, `created_at`, `updated_at`) VALUES
('Business', 'price_1GyyRyJewI4n8wVFSRWlMSHy', NULL, '29.00', '1.90', '2.50', NULL, NULL, 5, 200, 1, 2, NULL, '2021-06-26 00:03:17', '2021-06-26 00:03:17'),
('Individual', 'price_1H1HUQJewI4n8wVFTnjx77Ws', NULL, '9.00', '2.50', '3.00', NULL, NULL, 1, 20, 0, 1, NULL, '2021-06-26 00:03:17', '2021-06-26 00:03:17'),
('Professional', 'price_1H1HW7JewI4n8wVFl8Ukknoz', NULL, '49.00', '1.00', '1.50', NULL, NULL, 10, 500, 0, 3, NULL, '2021-06-26 00:03:17', '2021-06-26 00:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `shop_id`, `name`, `email`, `contact_person`, `url`, `description`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'Nolan-Walsh', 'altenwerth.fredy@daugherty.com', 'Mr. Armand Brown DDS', 'http://www.bahringer.com/hic-in-voluptates-omnis-cumque-minima.html', 'Ab vel atque similique laboriosam corporis molestiae voluptatem vitae. Et est aut numquam ipsa. Quam rerum delectus modi perferendis ullam illum. Nobis eaque laudantium dolor eveniet consequatur dolor. Dignissimos eius blanditiis in eveniet. Repellendus itaque unde minima culpa fugiat. Mollitia in culpa qui. Amet aut nesciunt iure quo sit nisi perferendis. Aut quam ratione repellat voluptatem blanditiis sapiente sint. Tempore quo et nisi velit. Impedit sed occaecati eos ad.', 1, NULL, '2021-06-26 00:03:50', '2021-06-26 00:03:50'),
(2, 2, 'Durgan, Casper and Ritchie', 'monroe.brakus@wilderman.net', 'Alexandre Greenfelder', 'http://www.schmeler.org/occaecati-minima-officia-assumenda-harum-quod', 'Corporis excepturi sint mollitia sit soluta sit maiores. Laborum ducimus minus nobis ipsum deserunt molestias minus quae. Fuga consequatur officiis cupiditate ducimus. Ratione voluptates quis quibusdam. Vitae qui quo quidem ut omnis maxime. Est velit ea qui vitae aut cum aperiam voluptatem. Natus laboriosam dolorem et reiciendis magnam aliquam qui. Provident recusandae rem repellendus ea officia reiciendis. Quam natus minus quod. Facere ratione temporibus aliquid aperiam.', 1, NULL, '2021-06-26 00:03:50', '2021-06-26 00:03:50'),
(3, 2, 'Wolff, Haley and Goodwin', 'keeling.theresia@klocko.com', 'Zackary Roberts', 'https://www.rodriguez.com/aut-molestias-quos-voluptatem-dignissimos-cum-id-doloribus-labore', 'Similique aperiam consequuntur explicabo doloremque. Veritatis voluptatem cupiditate tenetur vero est unde. In reiciendis eos et sit. Et exercitationem at expedita ipsum alias. Est voluptas enim quam illum eum. Aliquam nesciunt adipisci occaecati dolore et. Molestias ut earum alias ea vero eum aut doloremque.', 1, NULL, '2021-06-26 00:03:50', '2021-06-26 00:03:50'),
(4, 1, 'Satterfield Inc', 'rbalistreri@collins.com', 'Dr. Carolanne Orn', 'http://www.daniel.com/laborum-ut-ipsum-qui-nemo-sed-mollitia-voluptas', 'Pariatur rerum voluptas sapiente inventore ut et. Impedit omnis quis alias ipsa. Laborum et tempora asperiores laudantium et modi. Autem vel omnis error debitis non deserunt. Labore dolor qui atque voluptatem nihil nesciunt quae. Cumque eius aut eveniet illum dolorem doloribus molestiae. Totam vel qui aut ullam. Non aspernatur reiciendis tenetur ut odit minus corporis. Vel omnis beatae impedit consequatur cumque adipisci. Totam deleniti beatae dolore et. Illo nemo sit ex et qui veritatis qui.', 1, NULL, '2021-06-26 00:03:50', '2021-06-26 00:03:50'),
(5, 2, 'Weissnat LLC', 'bennie05@yahoo.com', 'Albina Collier', 'http://jacobi.com/aut-quia-et-occaecati-non-et-sit-similique-minus', 'Atque repellendus veritatis fugiat earum non aut. Ut distinctio laudantium voluptate vel voluptas. Ea repellat blanditiis fugiat. Vel cumque illum sint minus animi assumenda tempore. Fugit debitis dolorem sunt eos. Esse nihil sed id asperiores rerum nemo. Maxime doloremque iusto est. Et in sunt voluptate incidunt quidem. Delectus tempora occaecati et quidem qui et vel voluptas.', 1, NULL, '2021-06-26 00:03:50', '2021-06-26 00:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `systems`
--

CREATE TABLE `systems` (
  `id` int(10) UNSIGNED NOT NULL,
  `maintenance_mode` tinyint(1) DEFAULT NULL,
  `install_verion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Marketplace',
  `slogan` text COLLATE utf8_unicode_ci,
  `legal_name` text COLLATE utf8_unicode_ci,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `worldwide_business_area` tinyint(1) DEFAULT '1',
  `timezone_id` int(11) NOT NULL DEFAULT '35',
  `currency_id` int(11) NOT NULL DEFAULT '148',
  `default_language` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `vendor_can_view_customer_info` tinyint(1) DEFAULT '0',
  `can_use_own_catalog_only` tinyint(1) DEFAULT '0',
  `google_analytic_report` tinyint(1) DEFAULT '0',
  `required_card_upfront` tinyint(1) DEFAULT '1',
  `vendor_needs_approval` tinyint(1) DEFAULT '1',
  `trial_days` int(11) DEFAULT NULL,
  `ask_customer_for_email_subscription` tinyint(1) DEFAULT '1',
  `support_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `support_phone_toll_free` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `support_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default_sender_email_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_email_sender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pinterest_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_auth` tinyint(1) NOT NULL DEFAULT '1',
  `length_unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'meter',
  `weight_unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'g',
  `valume_unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'liter',
  `decimals` enum('0','2','3','4','5','6') COLLATE utf8_unicode_ci NOT NULL DEFAULT '2',
  `show_currency_symbol` tinyint(1) NOT NULL DEFAULT '1',
  `show_space_after_symbol` tinyint(1) NOT NULL DEFAULT '1',
  `coupon_code_size` int(11) NOT NULL DEFAULT '8',
  `gift_card_serial_number_size` int(11) NOT NULL DEFAULT '13',
  `gift_card_pin_size` int(11) NOT NULL DEFAULT '10',
  `active_theme` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `selling_theme` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `pagination` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `show_seo_info_to_frontend` tinyint(1) DEFAULT '1',
  `max_img_size_limit_kb` int(11) NOT NULL DEFAULT '5000',
  `max_number_of_inventory_imgs` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `address_default_country` int(11) DEFAULT NULL,
  `address_default_state` int(11) DEFAULT NULL,
  `show_address_title` tinyint(1) DEFAULT NULL,
  `address_show_country` tinyint(1) DEFAULT NULL,
  `address_show_map` tinyint(1) DEFAULT NULL,
  `allow_guest_checkout` tinyint(1) DEFAULT '1',
  `auto_approve_order` tinyint(1) DEFAULT '0',
  `notify_when_vendor_registered` tinyint(1) DEFAULT '1',
  `notify_when_dispute_appealed` tinyint(1) DEFAULT '1',
  `notify_new_message` tinyint(1) DEFAULT NULL,
  `notify_new_ticket` tinyint(1) DEFAULT '1',
  `enable_chat` tinyint(1) DEFAULT '1',
  `digital_goods_only` tinyint(1) DEFAULT '0',
  `is_multi_vendor` tinyint(1) DEFAULT '1',
  `max_role_level` int(10) UNSIGNED NOT NULL DEFAULT '99',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `can_cancel_order_within` int(11) DEFAULT '0',
  `vendor_order_cancellation_fee` decimal(20,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `systems`
--

INSERT INTO `systems` (`id`, `maintenance_mode`, `install_verion`, `name`, `slogan`, `legal_name`, `email`, `worldwide_business_area`, `timezone_id`, `currency_id`, `default_language`, `vendor_can_view_customer_info`, `can_use_own_catalog_only`, `google_analytic_report`, `required_card_upfront`, `vendor_needs_approval`, `trial_days`, `ask_customer_for_email_subscription`, `support_phone`, `support_phone_toll_free`, `support_email`, `default_sender_email_address`, `default_email_sender_name`, `facebook_link`, `google_plus_link`, `twitter_link`, `pinterest_link`, `instagram_link`, `youtube_link`, `social_auth`, `length_unit`, `weight_unit`, `valume_unit`, `decimals`, `show_currency_symbol`, `show_space_after_symbol`, `coupon_code_size`, `gift_card_serial_number_size`, `gift_card_pin_size`, `active_theme`, `selling_theme`, `pagination`, `show_seo_info_to_frontend`, `max_img_size_limit_kb`, `max_number_of_inventory_imgs`, `address_default_country`, `address_default_state`, `show_address_title`, `address_show_country`, `address_show_map`, `allow_guest_checkout`, `auto_approve_order`, `notify_when_vendor_registered`, `notify_when_dispute_appealed`, `notify_new_message`, `notify_new_ticket`, `enable_chat`, `digital_goods_only`, `is_multi_vendor`, `max_role_level`, `created_at`, `updated_at`, `can_cancel_order_within`, `vendor_order_cancellation_fee`) VALUES
(1, NULL, '2.3.1', 'zCart', NULL, 'Zcart Inc.', 'notify@demo.com', 1, 35, 148, 'en', 0, 0, 0, NULL, 1, 13, 1, NULL, NULL, 'support@demo.com', NULL, NULL, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.pinterest.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 1, 'cm', 'gm', 'liter', '2', 1, 0, 8, 13, 10, 'default', 'default', 10, 1, 5000, 10, 840, 453, NULL, 1, 1, 1, 0, 1, 1, NULL, 1, 1, 0, 1, 99, '2021-06-26 00:03:01', '2021-06-26 00:03:01', 0, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` int(10) UNSIGNED NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`tag_id`, `taggable_id`, `taggable_type`) VALUES
(12, 3, 'App\\Blog'),
(29, 3, 'App\\Blog'),
(11, 3, 'App\\Blog'),
(10, 3, 'App\\Blog'),
(15, 3, 'App\\Blog'),
(15, 1, 'App\\Blog'),
(10, 1, 'App\\Blog'),
(3, 1, 'App\\Blog'),
(5, 4, 'App\\Blog'),
(18, 4, 'App\\Blog'),
(27, 4, 'App\\Blog'),
(29, 4, 'App\\Blog'),
(21, 4, 'App\\Blog'),
(12, 4, 'App\\Blog'),
(19, 4, 'App\\Blog'),
(12, 5, 'App\\Blog'),
(19, 5, 'App\\Blog'),
(9, 5, 'App\\Blog'),
(23, 5, 'App\\Blog'),
(8, 5, 'App\\Blog'),
(27, 5, 'App\\Blog'),
(24, 2, 'App\\Blog');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'aut', '2021-06-26 00:05:10', '2021-06-26 00:05:10'),
(2, 'voluptatem', '2021-06-26 00:05:11', '2021-06-26 00:05:11'),
(3, 'sint', '2021-06-26 00:05:11', '2021-06-26 00:05:11'),
(4, 'pariatur', '2021-06-26 00:05:11', '2021-06-26 00:05:11'),
(5, 'hic', '2021-06-26 00:05:11', '2021-06-26 00:05:11'),
(6, 'sunt', '2021-06-26 00:05:11', '2021-06-26 00:05:11'),
(7, 'minus', '2021-06-26 00:05:11', '2021-06-26 00:05:11'),
(8, 'nihil', '2021-06-26 00:05:11', '2021-06-26 00:05:11'),
(9, 'dolor', '2021-06-26 00:05:12', '2021-06-26 00:05:12'),
(10, 'perspiciatis', '2021-06-26 00:05:12', '2021-06-26 00:05:12'),
(11, 'modi', '2021-06-26 00:05:12', '2021-06-26 00:05:12'),
(12, 'vel', '2021-06-26 00:05:12', '2021-06-26 00:05:12'),
(13, 'exercitationem', '2021-06-26 00:05:12', '2021-06-26 00:05:12'),
(14, 'facere', '2021-06-26 00:05:12', '2021-06-26 00:05:12'),
(15, 'amet', '2021-06-26 00:05:12', '2021-06-26 00:05:12'),
(16, 'voluptate', '2021-06-26 00:05:12', '2021-06-26 00:05:12'),
(17, 'ipsum', '2021-06-26 00:05:12', '2021-06-26 00:05:12'),
(18, 'repudiandae', '2021-06-26 00:05:12', '2021-06-26 00:05:12'),
(19, 'qui', '2021-06-26 00:05:12', '2021-06-26 00:05:12'),
(20, 'magnam', '2021-06-26 00:05:12', '2021-06-26 00:05:12'),
(21, 'sed', '2021-06-26 00:05:13', '2021-06-26 00:05:13'),
(22, 'dolorem', '2021-06-26 00:05:13', '2021-06-26 00:05:13'),
(23, 'rerum', '2021-06-26 00:05:13', '2021-06-26 00:05:13'),
(24, 'nihil', '2021-06-26 00:05:13', '2021-06-26 00:05:13'),
(25, 'quis', '2021-06-26 00:05:13', '2021-06-26 00:05:13'),
(26, 'eos', '2021-06-26 00:05:13', '2021-06-26 00:05:13'),
(27, 'voluptatibus', '2021-06-26 00:05:13', '2021-06-26 00:05:13'),
(28, 'voluptas', '2021-06-26 00:05:13', '2021-06-26 00:05:13'),
(29, 'ut', '2021-06-26 00:05:13', '2021-06-26 00:05:13'),
(30, 'expedita', '2021-06-26 00:05:13', '2021-06-26 00:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `taxrate` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `state_id` int(10) UNSIGNED DEFAULT NULL,
  `public` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `shop_id`, `name`, `taxrate`, `country_id`, `state_id`, `public`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, '- No tax -', '0.000000', NULL, NULL, 1, 1, NULL, '2021-06-26 00:03:16', '2021-06-26 00:03:16'),
(2, 1, 'suscipit 3.06%', '3.060778', 400, NULL, NULL, 1, NULL, '2021-06-26 00:04:17', '2021-06-26 00:04:17'),
(3, 2, 'consequatur 8%', '8.000000', 612, NULL, NULL, 1, NULL, '2021-06-26 00:04:17', '2021-06-26 00:04:17'),
(4, 2, 'inventore 8.73%', '8.726935', 702, NULL, NULL, 1, NULL, '2021-06-26 00:04:17', '2021-06-26 00:04:17'),
(5, 2, 'quia 7%', '7.000000', 144, NULL, NULL, 1, NULL, '2021-06-26 00:04:17', '2021-06-26 00:04:17'),
(6, 2, 'aliquid 5.4%', '5.395512', 492, NULL, NULL, 1, NULL, '2021-06-26 00:04:17', '2021-06-26 00:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `assigned_to` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `priority` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `shop_id`, `user_id`, `category_id`, `subject`, `message`, `assigned_to`, `status`, `priority`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 2, 'Sed commodi reprehenderit commodi enim modi.', 'Aspernatur pariatur nisi ut voluptatem aut voluptas. Qui voluptate et debitis est placeat commodi et ullam. Sapiente est harum voluptas illum. Consequuntur voluptatem quia placeat odio qui voluptatum aliquid maxime.', NULL, 3, 1, NULL, '2021-06-23 00:05:16', '2021-06-26 00:05:17'),
(2, 2, 3, 1, 'Cumque quasi tenetur aliquid suscipit labore.', 'Inventore et harum architecto. Dolorem accusamus voluptates neque ut saepe qui.', NULL, 4, 2, NULL, '2021-06-21 00:05:16', '2021-06-26 00:05:20'),
(3, 1, 3, 3, 'Eum omnis est sint adipisci et.', 'Itaque quis enim temporibus minima qui numquam. Et placeat cumque architecto est et recusandae ut. Doloremque voluptatum est repellendus totam optio. Ut alias vel distinctio repudiandae est.', NULL, 3, 4, NULL, '2021-06-18 00:05:16', '2021-06-26 00:05:17'),
(4, 1, 3, 3, 'At quo doloremque at ad rerum.', 'Nihil alias et quam. Quas ex ut qui iusto ut aperiam. Numquam sequi exercitationem accusamus nisi rerum consequatur aut.', NULL, 2, 3, NULL, '2021-06-21 00:05:16', '2021-06-26 00:05:18'),
(5, 1, 3, 3, 'Quisquam architecto architecto quod voluptate dolorem vel ullam.', 'Vel voluptatem quia ut illo sint ad sit. Qui consequatur consequatur debitis natus enim. Nobis non eum dolores quia illum ipsum necessitatibus tempora. Non omnis voluptatibus temporibus architecto cum.', NULL, 5, 3, NULL, '2021-06-26 00:05:16', '2021-06-26 00:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_categories`
--

CREATE TABLE `ticket_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket_categories`
--

INSERT INTO `ticket_categories` (`id`, `name`) VALUES
(1, 'General query'),
(2, 'Merchant support'),
(3, 'Technical support'),
(4, 'Webmaster');

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `offset` int(11) DEFAULT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `utc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dst` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `value`, `abbr`, `offset`, `text`, `utc`, `dst`, `created_at`, `updated_at`) VALUES
(1, 'Dateline Standard Time', 'DST', -12, '(UTC-12:00) International Date Line West', 'Etc/GMT+12', 0, '2021-06-26 00:02:11', '2021-06-26 00:02:11'),
(2, 'UTC-11', 'U', -11, '(UTC-11:00) Coordinated Universal Time-11', 'Pacific/Midway', 0, '2021-06-26 00:02:11', '2021-06-26 00:02:11'),
(3, 'Hawaiian Standard Time', 'HST', -10, '(UTC-10:00) Hawaii', 'Pacific/Honolulu', 0, '2021-06-26 00:02:11', '2021-06-26 00:02:11'),
(4, 'Alaskan Standard Time', 'AKDT', -8, '(UTC-09:00) Alaska', 'America/Anchorage', 1, '2021-06-26 00:02:11', '2021-06-26 00:02:11'),
(5, 'Pacific Standard Time (Mexico)', 'PDT', -7, '(UTC-08:00) Baja California', 'America/Santa_Isabel', 1, '2021-06-26 00:02:11', '2021-06-26 00:02:11'),
(6, 'Pacific Standard Time', 'PDT', -7, '(UTC-08:00) Pacific Time (US & Canada)', 'America/Los_Angeles', 1, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(7, 'US Mountain Standard Time', 'UMST', -7, '(UTC-07:00) Arizona', 'America/Phoenix', 0, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(8, 'Mountain Standard Time (Mexico)', 'MDT', -6, '(UTC-07:00) Chihuahua, La Paz, Mazatlan', 'America/Chihuahua', 1, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(9, 'Mountain Standard Time', 'MDT', -6, '(UTC-07:00) Mountain Time (US & Canada)', 'America/Denver', 1, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(10, 'Central America Standard Time', 'CAST', -6, '(UTC-06:00) Central America', 'America/Guatemala', 0, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(11, 'Central Standard Time', 'CDT', -5, '(UTC-06:00) Central Time (US & Canada)', 'America/Chicago', 1, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(12, 'Central Standard Time (Mexico)', 'CDT', -5, '(UTC-06:00) Guadalajara, Mexico City, Monterrey', 'America/Mexico_City', 1, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(13, 'Canada Central Standard Time', 'CCST', -6, '(UTC-06:00) Saskatchewan', 'America/Regina', 0, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(14, 'SA Pacific Standard Time', 'SPST', -5, '(UTC-05:00) Bogota, Lima, Quito', 'America/Lima', 0, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(15, 'Eastern Standard Time', 'EDT', -4, '(UTC-05:00) Eastern Time (US & Canada)', 'America/New_York', 1, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(16, 'US Eastern Standard Time', 'UEDT', -4, '(UTC-05:00) Indiana (East)', 'America/Indianapolis', 1, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(17, 'Venezuela Standard Time', 'VST', -4, '(UTC-04:30) Caracas', 'America/Caracas', 0, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(18, 'Paraguay Standard Time', 'PST', -4, '(UTC-04:00) Asuncion', 'America/Asuncion', 0, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(19, 'Atlantic Standard Time', 'ADT', -3, '(UTC-04:00) Atlantic Time (Canada)', 'Atlantic/Bermuda', 1, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(20, 'Central Brazilian Standard Time', 'CBST', -4, '(UTC-04:00) Cuiaba', 'America/Cuiaba', 0, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(21, 'SA Western Standard Time', 'SWST', -4, '(UTC-04:00) Georgetown, La Paz, Manaus, San Juan', 'America/Aruba', 0, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(22, 'Pacific SA Standard Time', 'PSST', -4, '(UTC-04:00) Santiago', 'America/Santiago', 0, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(23, 'Newfoundland Standard Time', 'NDT', -2, '(UTC-03:30) Newfoundland', 'America/St_Johns', 1, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(24, 'E. South America Standard Time', 'ESAST', -3, '(UTC-03:00) Brasilia', 'America/Sao_Paulo', 0, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(25, 'Argentina Standard Time', 'AST', -3, '(UTC-03:00) Buenos Aires', 'America/Buenos_Aires', 0, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(26, 'SA Eastern Standard Time', 'SEST', -3, '(UTC-03:00) Cayenne, Fortaleza', 'America/Cayenne', 0, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(27, 'Greenland Standard Time', 'GDT', -2, '(UTC-03:00) Greenland', 'America/Godthab', 1, '2021-06-26 00:02:12', '2021-06-26 00:02:12'),
(28, 'Montevideo Standard Time', 'MST', -3, '(UTC-03:00) Montevideo', 'America/Montevideo', 0, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(29, 'Bahia Standard Time', 'BST', -3, '(UTC-03:00) Salvador', 'America/Bahia', 0, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(30, 'UTC-02', 'U', -2, '(UTC-02:00) Coordinated Universal Time-02', 'America/Noronha', 0, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(31, 'Azores Standard Time', 'ADT', 0, '(UTC-01:00) Azores', 'Atlantic/Azores', 1, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(32, 'Cape Verde Standard Time', 'CVST', -1, '(UTC-01:00) Cape Verde Is.', 'Atlantic/Cape_Verde', 0, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(33, 'Morocco Standard Time', 'MDT', 1, '(UTC) Casablanca', 'Africa/Casablanca', 1, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(34, 'UTC', 'CUT', 0, '(UTC) Coordinated Universal Time', 'America/Danmarkshavn', 0, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(35, 'GMT Standard Time', 'GDT', 1, '(UTC) Dublin, Edinburgh, Lisbon, London', 'Europe/London', 1, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(36, 'Greenwich Standard Time', 'GST', 0, '(UTC) Monrovia, Reykjavik', 'Africa/Monrovia', 0, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(37, 'W. Europe Standard Time', 'WEDT', 2, '(UTC+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna', 'Europe/Amsterdam', 1, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(38, 'Central Europe Standard Time', 'CEDT', 2, '(UTC+01:00) Belgrade, Bratislava, Budapest, Ljubljana, Prague', 'Europe/Budapest', 1, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(39, 'Romance Standard Time', 'RDT', 2, '(UTC+01:00) Brussels, Copenhagen, Madrid, Paris', 'Europe/Paris', 1, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(40, 'Central European Standard Time', 'CEDT', 2, '(UTC+01:00) Sarajevo, Skopje, Warsaw, Zagreb', 'Europe/Warsaw', 1, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(41, 'W. Central Africa Standard Time', 'WCAST', 1, '(UTC+01:00) West Central Africa', 'Africa/Lagos', 0, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(42, 'Namibia Standard Time', 'NST', 1, '(UTC+01:00) Windhoek', 'Africa/Windhoek', 0, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(43, 'GTB Standard Time', 'GDT', 3, '(UTC+02:00) Athens, Bucharest, Chisinau, Nicosia', 'Europe/Athens', 1, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(44, 'Middle East Standard Time', 'MEDT', 3, '(UTC+02:00) Beirut', 'Asia/Beirut', 1, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(45, 'Egypt Standard Time', 'EST', 2, '(UTC+02:00) Cairo', 'Africa/Cairo', 0, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(46, 'Syria Standard Time', 'SDT', 3, '(UTC+02:00) Damascus', 'Asia/Damascus', 1, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(47, 'South Africa Standard Time', 'SAST', 2, '(UTC+02:00) Harare, Pretoria, Johannesburg, Bujumbura', 'Africa/Harare', 0, '2021-06-26 00:02:13', '2021-06-26 00:02:13'),
(48, 'FLE Standard Time', 'FDT', 3, '(UTC+02:00) Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius', 'Europe/Helsinki', 1, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(49, 'Turkey Standard Time', 'TDT', 3, '(UTC+02:00) Istanbul', 'Europe/Istanbul', 1, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(50, 'Israel Standard Time', 'JDT', 3, '(UTC+02:00) Jerusalem', 'Asia/Jerusalem', 1, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(51, 'Libya Standard Time', 'LST', 2, '(UTC+02:00) Tripoli', 'Africa/Tripoli', 0, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(52, 'Jordan Standard Time', 'JST', 3, '(UTC+03:00) Amman', 'Asia/Amman', 0, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(53, 'Arabic Standard Time', 'AST', 3, '(UTC+03:00) Baghdad', 'Asia/Baghdad', 0, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(54, 'Kaliningrad Standard Time', 'KST', 3, '(UTC+03:00) Kaliningrad, Minsk', 'Europe/Kaliningrad', 0, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(55, 'Arab Standard Time', 'AST', 3, '(UTC+03:00) Aden, Bahrain, Kuwait, Riyadh, Qatar', 'Asia/Qatar', 0, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(56, 'E. Africa Standard Time', 'EAST', 3, '(UTC+03:00) Nairobi, Comoro, Juba', 'Africa/Nairobi', 0, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(57, 'Iran Standard Time', 'IDT', 4, '(UTC+03:30) Tehran', 'Asia/Tehran', 1, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(58, 'Arabian Standard Time', 'AST', 4, '(UTC+04:00) Abu Dhabi, Muscat', 'Asia/Dubai', 0, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(59, 'Azerbaijan Standard Time', 'ADT', 5, '(UTC+04:00) Baku', 'Asia/Baku', 1, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(60, 'Russian Standard Time', 'RST', 4, '(UTC+04:00) Samara, Moscow, St. Petersburg, Simferopol, Volgograd', 'Europe/Moscow', 0, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(61, 'Mauritius Standard Time', 'MST', 4, '(UTC+04:00) Port Louis, Mauritius, Reunion, Mahe', 'Indian/Mauritius', 0, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(62, 'Georgian Standard Time', 'GST', 4, '(UTC+04:00) Tbilisi', 'Asia/Tbilisi', 0, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(63, 'Caucasus Standard Time', 'CST', 4, '(UTC+04:00) Yerevan', 'Asia/Yerevan', 0, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(64, 'Afghanistan Standard Time', 'AST', 4, '(UTC+04:30) Kabul', 'Asia/Kabul', 0, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(65, 'West Asia Standard Time', 'WAST', 5, '(UTC+05:00) Ashgabat, Dushanbe, Tashkent, Maldives', 'Asia/Tashkent', 0, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(66, 'Pakistan Standard Time', 'PST', 5, '(UTC+05:00) Islamabad, Karachi', 'Asia/Karachi', 0, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(67, 'India Standard Time', 'IST', 6, '(UTC+05:30) Chennai, Kolkata, Mumbai, New Delhi', 'Asia/Calcutta', 0, '2021-06-26 00:02:14', '2021-06-26 00:02:14'),
(68, 'Sri Lanka Standard Time', 'SLST', 6, '(UTC+05:30) Sri Jayawardenepura', 'Asia/Colombo', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(69, 'Nepal Standard Time', 'NST', 6, '(UTC+05:45) Kathmandu', 'Asia/Katmandu', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(70, 'Central Asia Standard Time', 'CAST', 6, '(UTC+06:00) Astana, Dhaka, Thimphu', 'Asia/Dhaka', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(71, 'Ekaterinburg Standard Time', 'EST', 6, '(UTC+06:00) Ekaterinburg', 'Asia/Yekaterinburg', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(72, 'Myanmar Standard Time', 'MST', 6, '(UTC+06:30) Yangon (Rangoon), Cocos', 'Asia/Rangoon', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(73, 'SE Asia Standard Time', 'SAST', 7, '(UTC+07:00) Bangkok, Hanoi, Jakarta, Saigon', 'Asia/Bangkok', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(74, 'N. Central Asia Standard Time', 'NCAST', 7, '(UTC+07:00) Novosibirsk', 'Asia/Novosibirsk', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(75, 'China Standard Time', 'CST', 8, '(UTC+08:00) Beijing, Chongqing, Hong Kong, Macau, Shanghai, Urumqi', 'Asia/Shanghai', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(76, 'North Asia Standard Time', 'NAST', 8, '(UTC+08:00) Krasnoyarsk', 'Asia/Krasnoyarsk', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(77, 'Singapore Standard Time', 'MPST', 8, '(UTC+08:00) Kuala Lumpur, Singapore, Brunei, Makassar, Manila', 'Asia/Singapore', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(78, 'W. Australia Standard Time', 'WAST', 8, '(UTC+08:00) Perth', 'Australia/Perth', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(79, 'Taipei Standard Time', 'TST', 8, '(UTC+08:00) Taipei', 'Asia/Taipei', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(80, 'Ulaanbaatar Standard Time', 'UST', 8, '(UTC+08:00) Ulaanbaatar', 'Asia/Ulaanbaatar', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(81, 'North Asia East Standard Time', 'NAEST', 9, '(UTC+09:00) Irkutsk', 'Asia/Irkutsk', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(82, 'Tokyo Standard Time', 'TST', 9, '(UTC+09:00) Dili, Osaka, Palau, Sapporo, Tokyo', 'Asia/Tokyo', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(83, 'Korea Standard Time', 'KST', 9, '(UTC+09:00) Pyongyang, Seoul', 'Asia/Seoul', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(84, 'Cen. Australia Standard Time', 'CAST', 10, '(UTC+09:30) Adelaide', 'Australia/Adelaide', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(85, 'AUS Central Standard Time', 'ACST', 10, '(UTC+09:30) Darwin', 'Australia/Darwin', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(86, 'E. Australia Standard Time', 'EAST', 10, '(UTC+10:00) Brisbane', 'Australia/Brisbane', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(87, 'AUS Eastern Standard Time', 'AEST', 10, '(UTC+10:00) Canberra, Melbourne, Sydney', 'Australia/Sydney', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(88, 'West Pacific Standard Time', 'WPST', 10, '(UTC+10:00) Guam, Port Moresby', 'Pacific/Guam', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(89, 'Tasmania Standard Time', 'TST', 10, '(UTC+10:00) Hobart', 'Australia/Hobart', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(90, 'Yakutsk Standard Time', 'YST', 10, '(UTC+10:00) Yakutsk', 'Asia/Yakutsk', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(91, 'Central Pacific Standard Time', 'CPST', 11, '(UTC+11:00) Solomon Is., New Caledonia', 'Pacific/Guadalcanal', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(92, 'Vladivostok Standard Time', 'VST', 11, '(UTC+11:00) Vladivostok', 'Asia/Vladivostok', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(93, 'New Zealand Standard Time', 'NZST', 12, '(UTC+12:00) Auckland, Wellington', 'Antarctica/McMurdo', 0, '2021-06-26 00:02:15', '2021-06-26 00:02:15'),
(94, 'UTC+12', 'U', 12, '(UTC+12:00) Coordinated Universal Time+12', 'Pacific/Tarawa', 0, '2021-06-26 00:02:16', '2021-06-26 00:02:16'),
(95, 'Fiji Standard Time', 'FST', 12, '(UTC+12:00) Fiji', 'Pacific/Fiji', 0, '2021-06-26 00:02:16', '2021-06-26 00:02:16'),
(96, 'Magadan Standard Time', 'MST', 12, '(UTC+12:00) Magadan', 'Asia/Magadan', 0, '2021-06-26 00:02:16', '2021-06-26 00:02:16'),
(97, 'Samoa/Tonga/Kamchatka Standard Time', 'SST', 13, '(UTC+13:00) Samoa, Tongatapu, Fakaofo, Enderbury', 'Pacific/Apia', 0, '2021-06-26 00:02:16', '2021-06-26 00:02:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '3',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nice_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `last_visited_at` timestamp NULL DEFAULT NULL,
  `last_visited_from` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `read_announcements_at` timestamp NULL DEFAULT NULL,
  `verification_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `shop_id`, `role_id`, `name`, `nice_name`, `email`, `password`, `dob`, `sex`, `description`, `last_visited_at`, `last_visited_from`, `active`, `read_announcements_at`, `verification_token`, `email_verified_at`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Super Admin', 'SuperAdmin', 'superadmin@demo.com', '$2y$10$GugBuNWl6K/ru2HxTISWcu5yjJAraq22pMc6ke6k2wUqt7Q7I35zW', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'G0wEQZMS5dz0jpPyAASDJz0RRwKGJe3VcNUQa23CCQs1jVNqB8F5WHwJgbgO', NULL, '2021-06-26 00:03:01', '2021-06-26 00:03:01'),
(2, NULL, 2, 'Admin User', 'Admin', 'admin@demo.com', '$2y$10$tBqFgRhSA9azz5VB/2PmS.J3Kl0ac0.urwNgvoENH3lpDq6UgUIDa', '2014-06-08', 'app.male', 'Ad dicta qui rerum itaque eveniet aut. Iusto dolorum accusantium sequi quam sed ipsum qui. Cum recusandae dolores fugiat sunt a nobis. Doloribus assumenda sed non fuga enim corporis fugit. Et maiores quo nihil blanditiis culpa. Ut et sit quae atque. Consequatur aut saepe veritatis id cumque omnis ex facere. Et minus repellat ratione.', NULL, NULL, 1, NULL, NULL, NULL, 'dAnOaEFw17', NULL, '2021-06-19 00:03:39', '2021-06-20 00:03:39'),
(3, 1, 3, 'Merchant User', 'Merchant', 'merchant@demo.com', '$2y$10$3pvLmmJGS5.7rm8Xnoqmb.7hoAcn8teBVfgxJA8imcSeFpo0uv1t6', '2015-08-06', 'app.male', 'Repudiandae corporis sapiente molestias eos mollitia eveniet praesentium. Assumenda consectetur cum distinctio reiciendis aut iusto. Et aut ratione accusantium. Eius est mollitia voluptatem asperiores est nihil. Ea aut provident exercitationem nam. Aut non eos ut est aliquid accusantium. Sint error dolores iusto odit mollitia ullam est. Ad voluptas labore qui est. Exercitationem voluptatum accusantium tempore asperiores odio. Quia eius voluptatem quaerat aut sunt voluptates adipisci.', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2021-06-24 00:03:40', '2021-06-21 00:03:40'),
(4, 2, 3, 'Billie Kuphal', 'O\'Keefe', 'rdubuque@hotmail.com', '$2y$10$3ja0mGa5QAxGv3my4nFM.uKAK4B.WmQpch49MUKQP8EemxghJNK9G', '1986-07-08', 'app.female', 'Dignissimos perspiciatis laudantium modi. Est accusantium eius in labore ad. Eum doloremque blanditiis modi officiis exercitationem animi. Dolorem eveniet incidunt fugiat assumenda recusandae facilis asperiores aperiam. Fuga et nihil est sint. Ratione ipsa consequuntur et iusto.', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2021-06-26 00:03:40', '2021-06-26 00:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_warehouse`
--

CREATE TABLE `user_warehouse` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `mac` varchar(17) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hits` mediumint(9) NOT NULL DEFAULT '0',
  `page_views` bigint(20) DEFAULT NULL,
  `country_code` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`ip`, `mac`, `device`, `hits`, `page_views`, `country_code`, `info`, `deleted_at`, `created_at`, `updated_at`) VALUES
('::1', NULL, NULL, 1, 286, NULL, 's:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36\";', NULL, '2021-06-26 01:05:42', '2021-06-26 10:12:07'),
('1.22.116.124', NULL, NULL, 1, 224, NULL, 's:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43\";', NULL, '2021-12-05 08:09:33', '2021-12-05 09:59:05'),
('1.22.116.192', NULL, NULL, 1, 588, NULL, 's:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43\";', NULL, '2021-12-06 03:32:10', '2021-12-06 12:55:50'),
('1.23.90.241', NULL, NULL, 1, 1313, NULL, 's:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43\";', NULL, '2021-12-09 22:59:12', '2021-12-10 10:02:24'),
('102.135.44.141', 'C4:0B:77:EF:9F:96', NULL, 896, 934, 'BH', NULL, NULL, '2020-12-26 00:05:34', '2020-12-26 00:05:34'),
('103.117.212.88', NULL, NULL, 3, 199, NULL, 's:38:\"Serf/1.3.9 (mod_pagespeed/1.13.35.2-0)\";', NULL, '2021-12-05 08:10:10', '2021-12-16 02:04:53'),
('103.140.74.250', NULL, NULL, 1, 3, NULL, 's:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36\";', NULL, '2023-03-29 01:51:29', '2023-03-29 01:59:22'),
('103.195.202.12', NULL, NULL, 1, 110, NULL, 's:122:\"Mozilla/5.0 (Linux; Android 10; vivo 1804) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.92 Mobile Safari/537.36\";', NULL, '2021-12-10 10:01:24', '2021-12-10 14:13:00'),
('103.195.202.244', NULL, NULL, 1, 21, NULL, 's:122:\"Mozilla/5.0 (Linux; Android 10; vivo 1804) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Mobile Safari/537.36\";', NULL, '2021-12-06 22:49:19', '2021-12-06 22:50:18'),
('103.195.202.62', NULL, NULL, 1, 5, NULL, 's:122:\"Mozilla/5.0 (Linux; Android 10; vivo 1804) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Mobile Safari/537.36\";', NULL, '2021-12-06 00:39:00', '2021-12-06 01:04:53'),
('106.205.217.95', NULL, NULL, 1, 93, NULL, 's:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36\";', NULL, '2021-12-08 09:23:35', '2021-12-08 10:16:05'),
('106.209.211.108', NULL, NULL, 1, 58, NULL, 's:122:\"Mozilla/5.0 (Linux; Android 10; vivo 1804) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Mobile Safari/537.36\";', NULL, '2021-12-05 08:21:09', '2021-12-05 08:50:00'),
('106.220.111.130', NULL, NULL, 1, 126, NULL, 's:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.69\";', NULL, '2023-03-15 11:30:44', '2023-03-15 11:32:42'),
('108.108.115.246', '61:C7:7A:7D:80:B7', NULL, 704, 1498, 'CL', NULL, NULL, '2021-03-26 00:05:34', '2021-03-26 00:05:34'),
('11.167.209.214', '3E:33:AC:75:91:98', NULL, 569, 852, 'MF', NULL, NULL, '2021-03-26 00:05:34', '2021-03-26 00:05:34'),
('113.193.33.8', NULL, NULL, 1, 53, NULL, 's:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43\";', NULL, '2021-12-08 09:15:22', '2021-12-08 10:17:30'),
('113.193.35.124', NULL, NULL, 1, 160, NULL, 's:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43\";', NULL, '2021-12-06 22:18:13', '2021-12-06 23:19:46'),
('114.119.129.33', NULL, NULL, 1, 1, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-04-06 02:52:11', '2022-04-06 02:52:11'),
('114.119.132.187', NULL, NULL, 106, 204, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-03-14 12:51:40', '2022-11-24 01:44:54'),
('114.119.132.192', NULL, NULL, 54, 80, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-03-13 00:28:34', '2022-10-06 17:29:23'),
('114.119.132.202', NULL, NULL, 83, 326, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-03-13 10:42:28', '2022-10-06 06:45:35'),
('114.119.132.207', NULL, NULL, 65, 108, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-03-13 16:10:43', '2022-09-27 05:06:27'),
('114.119.132.211', NULL, NULL, 71, 105, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-03-14 18:38:26', '2022-11-20 10:37:00'),
('114.119.132.218', NULL, NULL, 95, 173, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-03-14 03:13:53', '2022-11-23 18:44:37'),
('114.119.132.227', NULL, NULL, 88, 177, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-03-11 06:30:57', '2022-09-13 09:05:46'),
('114.119.132.228', NULL, NULL, 145, 288, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-03-13 08:35:45', '2022-11-23 13:54:30'),
('114.119.135.92', NULL, NULL, 2, 4, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-11-25 05:56:38', '2022-11-26 03:32:05'),
('114.119.136.109', NULL, NULL, 1, 1, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2023-02-14 08:18:57', '2023-02-14 08:18:57'),
('114.119.136.88', NULL, NULL, 2, 4, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-11-24 03:30:06', '2022-11-25 17:32:27'),
('114.119.138.210', NULL, NULL, 3, 7, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-11-24 22:40:35', '2022-11-26 14:48:11'),
('114.119.138.25', NULL, NULL, 1, 1, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2023-02-14 11:30:37', '2023-02-14 11:30:37'),
('114.119.138.251', NULL, NULL, 1, 1, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-11-25 15:07:23', '2022-11-25 15:07:23'),
('114.119.145.115', NULL, NULL, 2, 2, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-03-31 13:26:33', '2022-04-10 06:12:29'),
('114.119.145.116', NULL, NULL, 2, 2, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-03-18 07:13:28', '2022-04-03 10:11:05'),
('114.119.145.123', NULL, NULL, 1, 1, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-03-23 14:00:31', '2022-03-23 14:00:31'),
('114.119.150.41', NULL, NULL, 3, 4, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-11-24 12:08:07', '2022-11-26 14:16:46'),
('114.119.151.174', NULL, NULL, 1, 1, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2023-02-14 03:46:18', '2023-02-14 03:46:18'),
('114.119.151.59', NULL, NULL, 2, 2, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-11-24 21:58:07', '2022-11-25 04:11:17'),
('114.119.153.215', NULL, NULL, 3, 3, NULL, 's:165:\"Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)\";', NULL, '2022-11-24 06:20:11', '2022-11-26 13:45:09'),
('119.121.154.225', 'F4:2D:81:22:B2:4E', NULL, 99, 393, 'LI', NULL, NULL, '2021-01-26 00:05:34', '2021-01-26 00:05:34'),
('124.91.73.231', '61:58:2F:06:DF:3E', NULL, 911, 1162, 'BD', NULL, NULL, '2021-06-26 00:05:34', '2021-06-26 00:05:34'),
('127.0.0.1', NULL, NULL, 1, 18, NULL, 's:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0\";', NULL, '2021-06-26 01:12:56', '2021-06-26 01:20:05'),
('136.16.223.170', '8C:A2:52:78:28:89', NULL, 233, 835, 'CA', NULL, NULL, '2021-02-26 00:05:34', '2021-02-26 00:05:34'),
('136.166.70.25', '9A:1F:28:B4:AB:17', NULL, 655, 965, 'LS', NULL, NULL, '2021-03-26 00:05:34', '2021-03-26 00:05:34'),
('136.18.135.59', '30:40:BD:63:42:04', NULL, 520, 1240, 'TF', NULL, NULL, '2021-04-26 00:05:34', '2021-04-26 00:05:34'),
('138.199.39.4', NULL, NULL, 1, 2, NULL, 's:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0\";', NULL, '2022-08-30 12:27:25', '2022-08-30 12:27:26'),
('138.201.36.87', NULL, NULL, 2, 3, NULL, 's:97:\"serpstatbot/2.1 (advanced backlink tracking bot; https://serpstatbot.com/; abuse@serpstatbot.com)\";', NULL, '2022-07-02 23:06:33', '2022-07-03 03:05:10'),
('141.60.233.67', '89:35:E9:41:17:29', NULL, 84, 312, 'IS', NULL, NULL, '2020-12-26 00:05:34', '2020-12-26 00:05:34'),
('142.111.241.68', NULL, NULL, 1, 1, NULL, 's:144:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36 QQBrowser/4.3.4986.400\";', NULL, '2022-08-14 03:31:56', '2022-08-14 03:31:56'),
('152.109.81.213', '45:73:94:E9:EF:E8', NULL, 124, 146, 'AI', NULL, NULL, '2021-05-26 00:05:34', '2021-05-26 00:05:34'),
('152.57.130.109', NULL, NULL, 1, 33, NULL, 's:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0\";', NULL, '2022-01-29 17:34:24', '2022-01-29 17:34:35'),
('157.40.149.218', NULL, NULL, 1, 26, NULL, 's:151:\"Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-M205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/19.0 Chrome/102.0.5005.125 Mobile Safari/537.36\";', NULL, '2023-02-23 17:22:59', '2023-02-23 17:23:07'),
('157.55.39.0', NULL, NULL, 4, 5, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-07-04 05:41:25', '2022-07-12 08:14:56'),
('157.55.39.101', NULL, NULL, 6, 6, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-07-28 22:19:31', '2022-08-14 02:20:49'),
('157.55.39.11', NULL, NULL, 3, 3, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2022-12-19 22:30:57', '2022-12-25 11:02:03'),
('157.55.39.116', NULL, NULL, 3, 3, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2022-10-16 17:00:29', '2022-10-19 09:34:19'),
('157.55.39.124', NULL, NULL, 1, 1, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-05-11 21:57:05', '2022-05-11 21:57:05'),
('157.55.39.127', NULL, NULL, 5, 5, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2022-10-05 10:49:26', '2022-10-20 06:48:06'),
('157.55.39.152', NULL, NULL, 1, 1, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-05-15 13:31:45', '2022-05-15 13:31:45'),
('157.55.39.170', NULL, NULL, 4, 4, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2022-10-14 13:56:41', '2022-10-21 02:24:52'),
('157.55.39.172', NULL, NULL, 4, 4, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2022-12-18 17:35:18', '2022-12-25 20:17:56'),
('157.55.39.182', NULL, NULL, 1, 1, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-08-25 09:11:44', '2022-08-25 09:11:44'),
('157.55.39.192', NULL, NULL, 9, 13, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-08-06 13:07:54', '2022-08-22 01:29:28'),
('157.55.39.203', NULL, NULL, 1, 1, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-06-18 10:34:09', '2022-06-18 10:34:09'),
('157.55.39.206', NULL, NULL, 5, 6, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2022-07-25 05:00:48', '2022-10-21 04:21:45'),
('157.55.39.207', NULL, NULL, 1, 2, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-06-18 12:03:19', '2022-06-18 12:19:20'),
('157.55.39.208', NULL, NULL, 4, 5, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-06-26 18:24:39', '2022-07-13 14:48:07'),
('157.55.39.209', NULL, NULL, 1, 1, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2022-12-24 13:02:39', '2022-12-24 13:02:39'),
('157.55.39.33', NULL, NULL, 3, 3, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-08-06 04:04:36', '2022-08-14 17:25:26'),
('157.55.39.41', NULL, NULL, 6, 7, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2022-07-15 00:53:55', '2022-07-31 00:30:40'),
('157.55.39.56', NULL, NULL, 1, 1, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-12-24 19:55:23', '2022-12-24 19:55:23'),
('157.55.39.6', NULL, NULL, 5, 5, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-09-27 00:58:26', '2022-10-16 21:53:11'),
('157.55.39.62', NULL, NULL, 4, 10, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-06-25 17:20:27', '2022-07-07 04:49:45'),
('157.55.39.63', NULL, NULL, 3, 3, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-08-11 15:20:56', '2022-08-14 13:09:26'),
('157.55.39.72', NULL, NULL, 2, 2, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-08-29 09:32:30', '2022-09-02 00:13:44'),
('157.55.39.75', NULL, NULL, 2, 4, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-09-08 13:40:35', '2022-09-09 21:52:50'),
('157.55.39.76', NULL, NULL, 3, 3, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-09-17 07:49:49', '2022-10-04 06:09:39'),
('157.55.39.77', NULL, NULL, 2, 2, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-09-12 11:16:11', '2022-09-13 00:02:54'),
('157.55.39.78', NULL, NULL, 3, 3, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-09-08 09:13:33', '2022-09-13 08:29:49'),
('157.55.39.93', NULL, NULL, 1, 1, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-11-12 22:26:15', '2022-11-12 22:26:15'),
('157.55.39.99', NULL, NULL, 5, 5, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-06-26 20:21:16', '2022-07-16 23:00:02'),
('157.90.181.220', NULL, NULL, 66, 4685, NULL, 's:67:\"Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)\";', NULL, '2022-01-31 17:49:54', '2022-09-28 10:18:08'),
('167.94.138.127', NULL, NULL, 1, 3, NULL, 's:70:\"Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)\";', NULL, '2023-03-28 21:47:15', '2023-03-28 21:47:16'),
('17.121.112.207', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-11-24 13:08:23', '2022-11-24 13:08:23'),
('17.121.112.88', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-11-13 11:40:12', '2022-11-13 11:40:12'),
('17.121.113.141', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-11-23 18:37:54', '2022-11-23 18:37:54'),
('17.121.113.145', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-11-20 09:04:14', '2022-11-20 09:04:14'),
('17.121.113.162', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-15 21:42:44', '2022-12-15 21:42:44'),
('17.121.113.89', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-11-19 18:33:08', '2022-11-19 18:33:08'),
('17.121.114.107', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-11-18 15:47:33', '2022-11-18 15:47:33'),
('17.121.114.148', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-11-15 14:49:12', '2022-11-15 14:49:12'),
('17.121.114.155', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-11-24 21:48:54', '2022-11-24 21:48:54'),
('17.121.114.184', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-11-23 09:24:03', '2022-11-23 09:24:03'),
('17.121.114.191', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-11-16 23:23:35', '2022-11-16 23:23:35'),
('17.121.115.109', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-11-22 17:15:11', '2022-11-22 17:15:11'),
('17.121.115.179', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-11-17 12:50:41', '2022-11-17 12:50:41'),
('17.121.115.185', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-11-13 17:36:04', '2022-11-13 17:36:04'),
('17.121.115.76', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-14 09:15:42', '2022-12-14 09:15:42'),
('17.241.219.101', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-03-04 15:02:37', '2023-03-04 15:02:37'),
('17.241.219.117', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-21 04:41:32', '2023-02-21 04:41:32'),
('17.241.219.13', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-24 21:20:31', '2022-12-24 21:20:31'),
('17.241.219.145', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-17 22:38:35', '2023-02-17 22:38:35'),
('17.241.219.150', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-25 10:34:04', '2022-12-25 10:34:04'),
('17.241.219.152', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-03-03 03:39:00', '2023-03-03 03:39:00'),
('17.241.219.160', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-23 11:03:06', '2022-12-23 11:03:06'),
('17.241.219.166', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-25 02:47:29', '2022-12-25 02:47:29'),
('17.241.219.180', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-23 02:28:44', '2022-12-23 02:28:44'),
('17.241.219.185', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-03-06 04:46:15', '2023-03-06 04:46:15'),
('17.241.219.206', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-20 04:38:58', '2023-02-20 04:38:58'),
('17.241.219.208', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-16 10:38:05', '2023-02-16 10:38:05'),
('17.241.219.21', NULL, NULL, 2, 2, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-23 15:31:42', '2023-02-16 22:12:39'),
('17.241.219.213', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 19:59:34', '2023-02-19 19:59:34'),
('17.241.219.220', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-20 03:35:13', '2023-02-20 03:35:13'),
('17.241.219.222', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-22 16:45:04', '2022-12-22 16:45:04'),
('17.241.219.225', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 03:49:24', '2023-02-19 03:49:24'),
('17.241.219.245', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-25 07:05:39', '2022-12-25 07:05:39'),
('17.241.219.29', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-25 14:15:55', '2022-12-25 14:15:55'),
('17.241.219.46', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-16 03:51:49', '2023-02-16 03:51:49'),
('17.241.219.47', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-25 14:17:21', '2022-12-25 14:17:21'),
('17.241.219.59', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 03:00:39', '2023-02-19 03:00:39'),
('17.241.219.69', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 03:39:26', '2023-02-19 03:39:26'),
('17.241.219.7', NULL, NULL, 1, 2, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 06:36:31', '2023-02-19 17:57:12'),
('17.241.219.70', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-26 06:28:43', '2022-12-26 06:28:43'),
('17.241.219.96', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 05:48:02', '2023-02-19 05:48:02'),
('17.241.219.97', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 04:05:37', '2023-02-19 04:05:37'),
('17.241.227.10', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-18 00:00:41', '2023-02-18 00:00:41'),
('17.241.227.104', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 20:42:28', '2023-02-19 20:42:28'),
('17.241.227.108', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 02:32:54', '2023-02-19 02:32:54'),
('17.241.227.112', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-18 22:21:09', '2023-02-18 22:21:09'),
('17.241.227.124', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 22:26:22', '2023-02-19 22:26:22'),
('17.241.227.126', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-16 16:44:49', '2023-02-16 16:44:49'),
('17.241.227.136', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-26 06:30:31', '2022-12-26 06:30:31'),
('17.241.227.142', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-18 23:51:48', '2023-02-18 23:51:48'),
('17.241.227.143', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-23 00:45:17', '2022-12-23 00:45:17'),
('17.241.227.179', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-23 17:05:11', '2022-12-23 17:05:11'),
('17.241.227.183', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-26 11:40:43', '2022-12-26 11:40:43'),
('17.241.227.190', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-17 23:57:25', '2023-02-17 23:57:25'),
('17.241.227.194', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 21:07:28', '2023-02-19 21:07:28'),
('17.241.227.199', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-03-06 06:42:57', '2023-03-06 06:42:57'),
('17.241.227.200', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-23 12:59:52', '2022-12-23 12:59:52'),
('17.241.227.230', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 03:37:05', '2023-02-19 03:37:05'),
('17.241.227.243', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-20 08:19:02', '2023-02-20 08:19:02'),
('17.241.227.247', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 15:23:05', '2023-02-19 15:23:05'),
('17.241.227.29', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-17 19:00:35', '2023-02-17 19:00:35'),
('17.241.227.42', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-22 11:11:24', '2022-12-22 11:11:24'),
('17.241.227.46', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-18 23:52:09', '2023-02-18 23:52:09'),
('17.241.227.49', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 23:33:00', '2023-02-19 23:33:00'),
('17.241.227.61', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-17 21:29:51', '2023-02-17 21:29:51'),
('17.241.227.89', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 02:51:32', '2023-02-19 02:51:32'),
('17.241.227.93', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-20 01:11:07', '2023-02-20 01:11:07'),
('17.241.227.94', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-20 03:16:26', '2023-02-20 03:16:26'),
('17.241.227.96', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-03-06 03:43:30', '2023-03-06 03:43:30'),
('17.241.75.10', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 23:05:19', '2023-02-19 23:05:19'),
('17.241.75.104', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-17 07:40:06', '2023-02-17 07:40:06'),
('17.241.75.115', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-03-05 23:22:44', '2023-03-05 23:22:44'),
('17.241.75.120', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 22:11:45', '2023-02-19 22:11:45'),
('17.241.75.121', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-25 17:28:18', '2022-12-25 17:28:18'),
('17.241.75.122', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 06:12:09', '2023-02-19 06:12:09'),
('17.241.75.125', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-21 12:23:51', '2022-12-21 12:23:51'),
('17.241.75.126', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-20 03:49:03', '2023-02-20 03:49:03'),
('17.241.75.157', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-25 11:21:24', '2022-12-25 11:21:24'),
('17.241.75.164', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 04:35:37', '2023-02-19 04:35:37'),
('17.241.75.168', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-03-06 07:07:38', '2023-03-06 07:07:38'),
('17.241.75.188', NULL, NULL, 1, 2, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-03-06 00:07:53', '2023-03-06 02:55:44'),
('17.241.75.21', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-03-06 05:45:46', '2023-03-06 05:45:46'),
('17.241.75.217', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-25 00:23:18', '2022-12-25 00:23:18'),
('17.241.75.219', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-03-06 06:51:09', '2023-03-06 06:51:09'),
('17.241.75.220', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-03-04 22:10:29', '2023-03-04 22:10:29'),
('17.241.75.222', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 21:14:56', '2023-02-19 21:14:56'),
('17.241.75.243', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-03-06 01:16:41', '2023-03-06 01:16:41'),
('17.241.75.244', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-22 19:12:50', '2022-12-22 19:12:50'),
('17.241.75.245', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-17 23:50:38', '2023-02-17 23:50:38'),
('17.241.75.246', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-23 05:14:27', '2022-12-23 05:14:27'),
('17.241.75.247', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-23 03:24:03', '2022-12-23 03:24:03'),
('17.241.75.29', NULL, NULL, 2, 2, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-22 22:15:04', '2022-12-25 02:12:50'),
('17.241.75.37', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-24 04:35:36', '2022-12-24 04:35:36'),
('17.241.75.44', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-20 03:15:44', '2023-02-20 03:15:44'),
('17.241.75.51', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-22 08:22:59', '2023-02-22 08:22:59'),
('17.241.75.61', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 13:31:26', '2023-02-19 13:31:26'),
('17.241.75.65', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2023-02-19 01:28:56', '2023-02-19 01:28:56'),
('17.241.75.80', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-23 04:22:41', '2022-12-23 04:22:41'),
('17.241.75.94', NULL, NULL, 1, 1, NULL, 's:169:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)\";', NULL, '2022-12-22 22:15:15', '2022-12-22 22:15:15'),
('178.28.12.12', '29:B5:23:3F:9D:0C', NULL, 690, 1477, 'MF', NULL, NULL, '2021-04-26 00:05:34', '2021-04-26 00:05:34'),
('185.191.171.1', NULL, NULL, 34, 40, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-21 10:07:56', '2023-03-08 02:51:41'),
('185.191.171.10', NULL, NULL, 38, 49, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-20 05:03:45', '2023-03-09 14:00:59'),
('185.191.171.11', NULL, NULL, 16, 23, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-20 17:30:51', '2023-03-04 19:10:32'),
('185.191.171.12', NULL, NULL, 23, 26, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-21 03:54:05', '2023-03-08 20:30:36'),
('185.191.171.13', NULL, NULL, 20, 22, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-24 19:31:46', '2023-03-09 11:14:01'),
('185.191.171.14', NULL, NULL, 20, 29, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-21 02:56:57', '2023-03-09 06:31:00'),
('185.191.171.15', NULL, NULL, 19, 26, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-21 02:00:36', '2023-03-05 12:21:37'),
('185.191.171.16', NULL, NULL, 20, 21, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-20 16:08:12', '2023-03-04 14:11:03'),
('185.191.171.17', NULL, NULL, 14, 14, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-25 11:16:29', '2023-02-16 21:50:08'),
('185.191.171.18', NULL, NULL, 22, 26, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-20 07:16:44', '2023-03-05 02:20:49'),
('185.191.171.19', NULL, NULL, 26, 32, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-18 01:04:09', '2023-03-04 20:59:22'),
('185.191.171.2', NULL, NULL, 21, 27, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-23 12:20:16', '2023-03-08 19:46:13'),
('185.191.171.20', NULL, NULL, 17, 17, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-20 07:06:58', '2023-03-03 21:35:03'),
('185.191.171.21', NULL, NULL, 17, 20, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-21 19:12:07', '2023-03-09 11:35:52'),
('185.191.171.22', NULL, NULL, 24, 35, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-19 13:47:45', '2023-03-03 20:43:08'),
('185.191.171.23', NULL, NULL, 30, 36, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-20 19:55:57', '2023-03-09 16:59:42'),
('185.191.171.24', NULL, NULL, 31, 38, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-19 17:31:59', '2023-03-08 16:58:27'),
('185.191.171.25', NULL, NULL, 31, 42, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-17 17:33:21', '2023-03-08 09:19:03'),
('185.191.171.26', NULL, NULL, 29, 37, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-20 23:19:45', '2023-03-05 07:30:06'),
('185.191.171.3', NULL, NULL, 25, 37, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-20 03:09:16', '2023-03-08 15:12:33'),
('185.191.171.33', NULL, NULL, 25, 29, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-20 09:09:23', '2023-03-03 16:27:04'),
('185.191.171.34', NULL, NULL, 15, 16, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-19 17:32:48', '2023-03-04 15:49:19'),
('185.191.171.35', NULL, NULL, 22, 26, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-20 14:36:04', '2023-03-08 00:27:59'),
('185.191.171.36', NULL, NULL, 27, 31, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-21 21:47:20', '2023-02-28 17:44:04');
INSERT INTO `visitors` (`ip`, `mac`, `device`, `hits`, `page_views`, `country_code`, `info`, `deleted_at`, `created_at`, `updated_at`) VALUES
('185.191.171.37', NULL, NULL, 17, 20, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-24 11:45:20', '2023-02-20 10:45:18'),
('185.191.171.38', NULL, NULL, 25, 33, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-25 17:45:00', '2023-03-05 03:51:25'),
('185.191.171.39', NULL, NULL, 26, 29, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-19 16:22:03', '2023-03-06 16:52:17'),
('185.191.171.4', NULL, NULL, 32, 45, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-19 00:52:25', '2023-03-08 17:54:20'),
('185.191.171.40', NULL, NULL, 24, 30, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-22 05:28:44', '2023-02-28 18:37:24'),
('185.191.171.41', NULL, NULL, 19, 23, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-22 02:26:42', '2023-03-04 11:52:06'),
('185.191.171.42', NULL, NULL, 25, 28, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-25 17:50:20', '2023-03-04 18:42:57'),
('185.191.171.43', NULL, NULL, 23, 28, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-21 04:43:03', '2023-03-07 22:11:08'),
('185.191.171.44', NULL, NULL, 23, 27, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-21 20:33:56', '2023-03-09 06:30:57'),
('185.191.171.45', NULL, NULL, 22, 25, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-23 19:05:52', '2023-03-08 22:26:31'),
('185.191.171.5', NULL, NULL, 25, 32, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-21 19:35:46', '2023-02-21 21:19:13'),
('185.191.171.6', NULL, NULL, 26, 31, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-19 13:34:03', '2023-03-09 01:51:22'),
('185.191.171.7', NULL, NULL, 33, 45, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-21 16:58:34', '2023-03-04 16:01:43'),
('185.191.171.8', NULL, NULL, 26, 34, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-20 10:45:04', '2023-03-09 12:14:26'),
('185.191.171.9', NULL, NULL, 32, 38, NULL, 's:75:\"Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)\";', NULL, '2022-08-20 11:44:56', '2023-03-04 18:14:11'),
('188.165.212.137', NULL, NULL, 1, 2, NULL, 's:61:\"Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)\";', NULL, '2022-09-13 15:19:47', '2022-09-13 15:20:12'),
('188.43.136.45', NULL, NULL, 1, 2, NULL, 's:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";', NULL, '2023-03-29 01:51:49', '2023-03-29 02:01:16'),
('192.3.134.216', NULL, NULL, 1, 213, NULL, 's:61:\"Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)\";', NULL, '2022-09-13 20:04:44', '2022-09-13 20:11:17'),
('192.99.160.200', NULL, NULL, 1, 2, NULL, 's:61:\"Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)\";', NULL, '2022-09-16 20:39:02', '2022-09-16 20:39:21'),
('192.99.37.124', NULL, NULL, 1, 92, NULL, 's:61:\"Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)\";', NULL, '2022-09-14 12:51:26', '2022-09-14 12:53:44'),
('198.208.32.19', '42:C1:71:70:2A:2C', NULL, 51, 303, 'BJ', NULL, NULL, '2021-01-26 00:05:34', '2021-01-26 00:05:34'),
('2.49.107.238', NULL, NULL, 1, 77, NULL, 's:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\";', NULL, '2023-03-09 00:26:07', '2023-03-09 00:26:30'),
('2.49.71.11', NULL, NULL, 1, 73, NULL, 's:118:\"Mozilla/5.0 (Linux; Android 13; SM-M127G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36\";', NULL, '2023-03-11 08:24:08', '2023-03-11 08:25:47'),
('2.51.237.171', NULL, NULL, 1, 123, NULL, 's:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";', NULL, '2023-03-24 21:31:53', '2023-03-24 21:38:17'),
('203.182.76.246', '90:55:1F:CA:CB:7E', NULL, 615, 897, 'MR', NULL, NULL, '2021-03-26 00:05:34', '2021-03-26 00:05:34'),
('207.46.13.109', NULL, NULL, 22, 35, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-05-23 18:44:13', '2022-07-14 08:42:09'),
('207.46.13.111', NULL, NULL, 5, 5, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2022-11-19 21:20:04', '2022-11-25 09:23:48'),
('207.46.13.123', NULL, NULL, 1, 1, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-08-29 13:19:41', '2022-08-29 13:19:41'),
('207.46.13.125', NULL, NULL, 8, 9, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-07-20 07:21:15', '2022-08-10 12:02:32'),
('207.46.13.134', NULL, NULL, 1, 1, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-09-04 13:52:57', '2022-09-04 13:52:57'),
('207.46.13.139', NULL, NULL, 13, 19, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-06-02 18:48:18', '2022-09-14 05:48:19'),
('207.46.13.145', NULL, NULL, 5, 6, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2022-09-12 00:24:28', '2022-12-20 20:31:19'),
('207.46.13.150', NULL, NULL, 3, 3, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2022-12-23 21:50:16', '2022-12-26 10:19:54'),
('207.46.13.164', NULL, NULL, 1, 1, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-09-19 08:02:01', '2022-09-19 08:02:01'),
('207.46.13.175', NULL, NULL, 1, 2, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-04-17 11:29:05', '2022-04-17 20:28:16'),
('207.46.13.180', NULL, NULL, 1, 1, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-09-25 11:05:08', '2022-09-25 11:05:08'),
('207.46.13.191', NULL, NULL, 1, 1, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-08-06 22:42:38', '2022-08-06 22:42:38'),
('207.46.13.201', NULL, NULL, 1, 1, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-05-20 19:09:04', '2022-05-20 19:09:04'),
('207.46.13.207', NULL, NULL, 15, 18, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-05-21 13:39:43', '2022-06-14 16:46:04'),
('207.46.13.25', NULL, NULL, 2, 2, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-05-19 09:55:36', '2022-05-21 14:00:04'),
('207.46.13.27', NULL, NULL, 4, 5, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-08-23 16:59:27', '2022-09-05 10:10:06'),
('207.46.13.30', NULL, NULL, 7, 8, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-08-02 17:03:33', '2022-08-20 07:33:44'),
('207.46.13.36', NULL, NULL, 17, 26, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-05-19 21:12:20', '2022-06-14 23:36:41'),
('207.46.13.50', NULL, NULL, 2, 4, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-07-25 06:07:46', '2022-07-29 03:01:16'),
('207.46.13.51', NULL, NULL, 5, 8, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-06-25 13:18:48', '2022-07-21 15:26:32'),
('207.46.13.53', NULL, NULL, 4, 4, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-07-17 00:42:33', '2022-08-10 14:57:13'),
('207.46.13.58', NULL, NULL, 1, 1, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-09-22 10:46:37', '2022-09-22 10:46:37'),
('207.46.13.65', NULL, NULL, 2, 2, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2022-11-20 14:54:47', '2022-11-21 08:44:38'),
('207.46.13.75', NULL, NULL, 1, 1, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-04-25 01:18:07', '2022-04-25 01:18:07'),
('213.226.202.87', '04:85:BC:A8:D2:C5', NULL, 7, 989, 'SZ', NULL, NULL, '2021-05-26 00:05:34', '2021-05-26 00:05:34'),
('213.254.159.102', 'E5:F5:D5:CB:5A:26', NULL, 318, 1010, 'AL', NULL, NULL, '2021-04-26 00:05:34', '2021-04-26 00:05:34'),
('216.236.58.145', 'D0:44:AD:71:E1:BC', NULL, 805, 921, 'QA', NULL, NULL, '2021-01-26 00:05:34', '2021-01-26 00:05:34'),
('216.244.66.248', NULL, NULL, 180, 1583, NULL, 's:88:\"Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)\";', NULL, '2022-02-12 12:11:37', '2023-03-10 17:43:44'),
('219.92.206.23', '3D:1B:4C:51:81:37', NULL, 389, 448, 'BJ', NULL, NULL, '2021-01-26 00:05:34', '2021-01-26 00:05:34'),
('223.177.200.83', NULL, NULL, 1, 36, NULL, 's:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56\";', NULL, '2022-11-23 13:11:19', '2022-11-23 13:11:29'),
('223.178.208.78', NULL, NULL, 1, 209, NULL, 's:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";', NULL, '2023-03-24 20:59:00', '2023-03-24 21:44:28'),
('223.178.209.224', NULL, NULL, 1, 43, NULL, 's:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.49\";', NULL, '2023-02-23 17:12:48', '2023-02-23 17:13:56'),
('223.178.209.235', NULL, NULL, 2, 1190, NULL, 's:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";', NULL, '2023-03-28 19:10:35', '2023-03-29 01:58:03'),
('223.178.212.166', NULL, NULL, 2, 1396, NULL, 's:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\";', NULL, '2023-03-11 01:40:49', '2023-03-11 12:45:03'),
('223.178.212.24', NULL, NULL, 1, 63, NULL, 's:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/110.0\";', NULL, '2023-02-21 03:01:28', '2023-02-21 03:01:49'),
('223.178.212.98', NULL, NULL, 1, 48, NULL, 's:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.69\";', NULL, '2023-03-14 19:58:09', '2023-03-14 19:58:18'),
('223.178.213.228', NULL, NULL, 2, 1665, NULL, 's:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\";', NULL, '2023-03-09 00:25:28', '2023-03-09 16:04:49'),
('223.178.213.66', NULL, NULL, 1, 235, NULL, 's:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.41\";', NULL, '2023-03-19 17:55:19', '2023-03-19 18:19:29'),
('243.154.36.254', '6B:09:86:F3:E7:D9', NULL, 235, 1225, 'CV', NULL, NULL, '2021-05-26 00:05:34', '2021-05-26 00:05:34'),
('252.95.104.138', '66:62:E8:14:88:2C', NULL, 943, 1468, 'LY', NULL, NULL, '2021-04-26 00:05:34', '2021-04-26 00:05:34'),
('255.219.44.139', '3F:9E:E6:D8:BF:7D', NULL, 440, 732, 'PF', NULL, NULL, '2020-12-26 00:05:34', '2020-12-26 00:05:34'),
('36.101.194.196', 'E1:0B:98:F6:F0:1D', NULL, 928, 1422, 'WF', NULL, NULL, '2021-03-26 00:05:34', '2021-03-26 00:05:34'),
('40.216.158.153', '4E:D0:4D:82:C1:BD', NULL, 786, 841, 'AL', NULL, NULL, '2021-01-26 00:05:34', '2021-01-26 00:05:34'),
('40.77.167.1', NULL, NULL, 2, 2, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-08-17 16:00:52', '2022-08-22 10:22:39'),
('40.77.167.10', NULL, NULL, 11, 16, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-05-22 19:38:02', '2022-06-17 05:18:01'),
('40.77.167.16', NULL, NULL, 1, 1, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2022-11-11 05:25:14', '2022-11-11 05:25:14'),
('40.77.167.161', NULL, NULL, 1, 1, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2023-02-19 05:31:41', '2023-02-19 05:31:41'),
('40.77.167.17', NULL, NULL, 4, 4, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-07-22 20:16:24', '2022-11-15 03:02:51'),
('40.77.167.2', NULL, NULL, 5, 8, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-09-30 10:14:02', '2022-10-17 08:22:11'),
('40.77.167.221', NULL, NULL, 1, 1, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2023-02-24 16:54:43', '2023-02-24 16:54:43'),
('40.77.167.222', NULL, NULL, 1, 1, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2023-02-20 01:21:58', '2023-02-20 01:21:58'),
('40.77.167.26', NULL, NULL, 12, 20, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-05-22 04:26:32', '2022-06-18 08:00:21'),
('40.77.167.3', NULL, NULL, 2, 2, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-06-17 06:01:09', '2022-09-22 00:06:54'),
('40.77.167.31', NULL, NULL, 5, 5, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-06-25 23:32:03', '2022-06-29 07:12:08'),
('40.77.167.34', NULL, NULL, 5, 5, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-05-20 07:31:10', '2022-05-30 10:52:08'),
('40.77.167.35', NULL, NULL, 1, 1, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-06-25 16:11:07', '2022-06-25 16:11:07'),
('40.77.167.48', NULL, NULL, 1, 1, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2022-12-20 19:38:52', '2022-12-20 19:38:52'),
('40.77.167.52', NULL, NULL, 1, 1, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2022-10-19 08:27:37', '2022-10-19 08:27:37'),
('40.77.167.57', NULL, NULL, 1, 1, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2022-11-20 04:50:25', '2022-11-20 04:50:25'),
('40.77.167.71', NULL, NULL, 5, 5, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-08-03 19:06:57', '2022-08-13 23:37:29'),
('40.77.167.8', NULL, NULL, 1, 1, NULL, 's:71:\"Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)\";', NULL, '2022-07-01 08:05:11', '2022-07-01 08:05:11'),
('42.197.116.118', '9B:36:09:3D:81:5A', NULL, 263, 1117, 'TD', NULL, NULL, '2021-05-26 00:05:34', '2021-05-26 00:05:34'),
('43.224.8.189', NULL, NULL, 1, 83, NULL, 's:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36\";', NULL, '2022-01-29 17:46:29', '2022-01-29 17:47:27'),
('43.249.235.20', NULL, NULL, 2, 151, NULL, 's:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76\";', NULL, '2022-01-29 17:46:51', '2022-02-03 18:59:34'),
('45.127.45.29', NULL, NULL, 1, 22, NULL, 's:122:\"Mozilla/5.0 (Linux; Android 10; vivo 1804) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.92 Mobile Safari/537.36\";', NULL, '2021-12-10 14:12:46', '2021-12-10 14:13:03'),
('45.127.45.49', NULL, NULL, 1, 51, NULL, 's:122:\"Mozilla/5.0 (Linux; Android 10; vivo 1804) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Mobile Safari/537.36\";', NULL, '2021-12-06 00:38:48', '2021-12-06 01:04:53'),
('45.154.141.22', NULL, NULL, 1, 1, NULL, 's:144:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36 QQBrowser/4.3.4986.400\";', NULL, '2022-08-13 21:04:29', '2022-08-13 21:04:29'),
('46.4.100.132', NULL, NULL, 7, 14, NULL, 's:73:\"Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http://megaindex.com/crawler)\";', NULL, '2022-02-16 00:22:46', '2022-10-02 00:56:03'),
('47.9.185.91', NULL, NULL, 1, 2, NULL, 's:134:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.62\";', NULL, '2022-07-22 11:33:49', '2022-07-22 11:34:45'),
('49.32.219.70', NULL, NULL, 1, 60, NULL, 's:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36 Edg/99.0.1150.46\";', NULL, '2022-03-23 14:27:23', '2022-03-23 14:28:13'),
('49.33.235.183', NULL, NULL, 1, 45, NULL, 's:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53\";', NULL, '2021-12-16 02:03:17', '2021-12-16 02:04:15'),
('49.36.227.210', NULL, NULL, 1, 81, NULL, 's:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\";', NULL, '2022-07-23 06:58:14', '2022-07-23 06:59:21'),
('5.161.130.88', NULL, NULL, 1, 1, NULL, 's:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36\";', NULL, '2022-10-09 01:41:45', '2022-10-09 01:41:45'),
('51.222.253.1', NULL, NULL, 28, 56, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-03-30 04:14:42', '2023-02-26 06:53:23'),
('51.222.253.10', NULL, NULL, 30, 78, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-03-30 06:41:49', '2023-02-26 06:53:39'),
('51.222.253.11', NULL, NULL, 31, 69, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-04-08 02:33:46', '2023-02-26 06:53:35'),
('51.222.253.12', NULL, NULL, 37, 71, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-03-30 07:18:59', '2023-02-26 06:53:35'),
('51.222.253.13', NULL, NULL, 38, 77, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-03-29 23:17:40', '2023-02-26 06:53:20'),
('51.222.253.14', NULL, NULL, 33, 75, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-03-30 02:41:38', '2023-02-26 06:53:34'),
('51.222.253.15', NULL, NULL, 34, 71, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-03-29 23:13:58', '2023-02-26 06:53:32'),
('51.222.253.16', NULL, NULL, 36, 79, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-02-08 03:24:15', '2023-02-26 06:53:31'),
('51.222.253.17', NULL, NULL, 33, 82, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-03-21 09:07:16', '2023-02-26 06:53:34'),
('51.222.253.18', NULL, NULL, 31, 72, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-03-31 13:18:35', '2023-02-22 15:49:53'),
('51.222.253.19', NULL, NULL, 30, 69, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-03-30 07:04:47', '2023-02-26 06:53:40'),
('51.222.253.2', NULL, NULL, 33, 76, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-02-08 04:37:41', '2023-02-26 06:53:38'),
('51.222.253.20', NULL, NULL, 36, 73, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-03-29 23:03:02', '2023-02-26 06:53:39'),
('51.222.253.3', NULL, NULL, 28, 64, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-02-28 02:20:49', '2023-02-26 06:53:20'),
('51.222.253.4', NULL, NULL, 33, 75, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-03-30 03:27:34', '2023-02-26 06:53:24'),
('51.222.253.5', NULL, NULL, 29, 75, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-03-29 22:59:27', '2023-02-22 17:14:06'),
('51.222.253.6', NULL, NULL, 31, 86, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-02-28 16:43:50', '2023-02-26 06:53:33'),
('51.222.253.7', NULL, NULL, 34, 78, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-03-29 22:52:38', '2023-02-26 06:53:29'),
('51.222.253.8', NULL, NULL, 32, 78, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-03-29 22:49:19', '2023-02-26 06:53:37'),
('51.222.253.9', NULL, NULL, 31, 61, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-03-30 05:08:48', '2023-02-22 17:45:54'),
('52.167.144.47', NULL, NULL, 1, 1, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2023-02-25 14:37:54', '2023-02-25 14:37:54'),
('52.167.144.83', NULL, NULL, 1, 1, NULL, 's:145:\"Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36\";', NULL, '2023-03-01 22:46:06', '2023-03-01 22:46:06'),
('52.226.199.170', NULL, NULL, 2, 2, NULL, 's:28:\"YouBot (+http://www.you.com)\";', NULL, '2023-03-05 12:23:15', '2023-03-09 07:00:40'),
('54.36.148.0', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-25 16:16:40', '2022-09-25 16:16:40'),
('54.36.148.103', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:13', '2022-09-16 23:27:13'),
('54.36.148.105', NULL, NULL, 2, 3, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-05 22:25:03', '2022-08-06 14:54:28'),
('54.36.148.11', NULL, NULL, 1, 2, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 09:47:08', '2022-08-06 16:18:42'),
('54.36.148.111', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 16:54:36', '2022-08-06 16:54:36'),
('54.36.148.113', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 16:52:27', '2022-08-06 16:52:27'),
('54.36.148.115', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 14:48:17', '2022-08-06 14:48:17'),
('54.36.148.121', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 14:03:56', '2022-08-06 14:03:56'),
('54.36.148.123', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-26 02:24:36', '2022-09-26 02:24:36'),
('54.36.148.125', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:25', '2022-09-16 23:27:25'),
('54.36.148.126', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 17:15:38', '2022-08-06 17:15:38'),
('54.36.148.128', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 17:31:12', '2022-08-06 17:31:12'),
('54.36.148.13', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 14:02:03', '2022-08-06 14:02:03'),
('54.36.148.14', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 16:26:26', '2022-08-06 16:26:26'),
('54.36.148.142', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-26 02:08:11', '2022-09-26 02:08:11'),
('54.36.148.145', NULL, NULL, 1, 3, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 08:12:31', '2022-08-06 17:13:29'),
('54.36.148.148', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:12', '2022-09-16 23:27:12'),
('54.36.148.149', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 16:10:50', '2022-08-06 16:10:50'),
('54.36.148.150', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:19', '2022-09-16 23:27:19'),
('54.36.148.151', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 10:33:56', '2022-08-06 10:33:56'),
('54.36.148.152', NULL, NULL, 2, 2, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-05 22:25:10', '2022-08-06 14:31:14'),
('54.36.148.159', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:13', '2022-09-16 23:27:13'),
('54.36.148.163', NULL, NULL, 2, 2, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 14:39:47', '2022-09-25 15:50:24'),
('54.36.148.17', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 16:08:43', '2022-08-06 16:08:43'),
('54.36.148.170', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 17:33:35', '2022-08-06 17:33:35'),
('54.36.148.175', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-26 00:56:47', '2022-09-26 00:56:47'),
('54.36.148.178', NULL, NULL, 2, 2, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 17:42:44', '2022-09-25 15:41:30'),
('54.36.148.18', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:15', '2022-09-16 23:27:15'),
('54.36.148.181', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 17:06:22', '2022-08-06 17:06:22'),
('54.36.148.186', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 12:10:58', '2022-08-06 12:10:58'),
('54.36.148.187', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 16:50:15', '2022-08-06 16:50:15'),
('54.36.148.189', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:25', '2022-09-16 23:27:25'),
('54.36.148.194', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 17:36:10', '2022-08-06 17:36:10'),
('54.36.148.200', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 14:52:18', '2022-08-06 14:52:18'),
('54.36.148.201', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 07:32:47', '2022-08-06 07:32:47'),
('54.36.148.202', NULL, NULL, 2, 2, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-05 21:03:09', '2022-08-06 16:30:11'),
('54.36.148.203', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-25 20:50:18', '2022-09-25 20:50:18'),
('54.36.148.204', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:23', '2022-09-16 23:27:23'),
('54.36.148.208', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 16:44:02', '2022-08-06 16:44:02'),
('54.36.148.213', NULL, NULL, 2, 2, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 17:04:05', '2022-09-16 23:27:15'),
('54.36.148.225', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:21', '2022-09-16 23:27:21'),
('54.36.148.227', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:18', '2022-09-16 23:27:18'),
('54.36.148.232', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-05 22:25:06', '2022-08-05 22:25:06'),
('54.36.148.235', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 16:31:21', '2022-08-06 16:31:21'),
('54.36.148.236', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 11:37:53', '2022-08-06 11:37:53'),
('54.36.148.237', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 14:00:11', '2022-08-06 14:00:11'),
('54.36.148.240', NULL, NULL, 3, 4, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-05 22:24:57', '2022-09-16 23:27:12'),
('54.36.148.242', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 14:05:43', '2022-08-06 14:05:43'),
('54.36.148.243', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:13', '2022-09-16 23:27:13'),
('54.36.148.249', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 14:07:56', '2022-08-06 14:07:56'),
('54.36.148.253', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 06:27:17', '2022-08-06 06:27:17'),
('54.36.148.4', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-05 22:25:07', '2022-08-05 22:25:07'),
('54.36.148.40', NULL, NULL, 2, 2, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-05 22:25:04', '2022-08-06 16:56:44'),
('54.36.148.41', NULL, NULL, 1, 2, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 17:29:00', '2022-08-06 17:40:25'),
('54.36.148.44', NULL, NULL, 2, 2, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-05 22:25:08', '2022-09-16 23:27:20'),
('54.36.148.47', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 14:43:48', '2022-08-06 14:43:48'),
('54.36.148.5', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:16', '2022-09-16 23:27:16'),
('54.36.148.50', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-05 22:25:04', '2022-08-05 22:25:04'),
('54.36.148.53', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:18', '2022-09-16 23:27:18'),
('54.36.148.56', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 17:17:39', '2022-08-06 17:17:39'),
('54.36.148.57', NULL, NULL, 2, 2, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 07:09:25', '2022-09-16 23:27:19'),
('54.36.148.61', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:17', '2022-09-16 23:27:17'),
('54.36.148.62', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 17:38:19', '2022-08-06 17:38:19'),
('54.36.148.66', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 16:32:31', '2022-08-06 16:32:31'),
('54.36.148.70', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:15', '2022-09-16 23:27:15'),
('54.36.148.71', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-05 21:23:14', '2022-08-05 21:23:14'),
('54.36.148.73', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-05 22:25:07', '2022-08-05 22:25:07'),
('54.36.148.75', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:17', '2022-09-16 23:27:17'),
('54.36.148.76', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-05 22:25:06', '2022-08-05 22:25:06'),
('54.36.148.77', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:16', '2022-09-16 23:27:16'),
('54.36.148.80', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 17:24:37', '2022-08-06 17:24:37'),
('54.36.148.81', NULL, NULL, 2, 2, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 14:35:31', '2022-09-16 23:27:26'),
('54.36.148.82', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 17:11:25', '2022-08-06 17:11:25'),
('54.36.148.90', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-05 22:25:05', '2022-08-05 22:25:05'),
('54.36.148.92', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-05 22:25:06', '2022-08-05 22:25:06'),
('54.36.148.94', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 17:26:41', '2022-08-06 17:26:41'),
('54.36.148.95', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-25 23:38:39', '2022-09-25 23:38:39'),
('54.36.148.99', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:20', '2022-09-16 23:27:20'),
('54.36.149.104', NULL, NULL, 2, 3, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 16:27:42', '2022-09-16 23:27:26'),
('54.36.149.12', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 17:22:15', '2022-08-06 17:22:15'),
('54.36.149.14', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 16:45:58', '2022-08-06 16:45:58'),
('54.36.149.15', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-05 22:25:03', '2022-08-05 22:25:03'),
('54.36.149.17', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 03:16:53', '2022-09-16 03:16:53'),
('54.36.149.18', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 17:19:59', '2022-08-06 17:19:59'),
('54.36.149.24', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 16:04:15', '2022-08-06 16:04:15'),
('54.36.149.26', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:22', '2022-09-16 23:27:22'),
('54.36.149.27', NULL, NULL, 2, 2, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 15:46:16', '2022-09-16 23:27:17'),
('54.36.149.37', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:08', '2022-09-16 23:27:08'),
('54.36.149.4', NULL, NULL, 2, 2, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 15:57:46', '2022-09-16 23:27:14'),
('54.36.149.41', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 17:08:52', '2022-08-06 17:08:52'),
('54.36.149.42', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:24', '2022-09-16 23:27:24'),
('54.36.149.47', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-25 15:50:20', '2022-09-25 15:50:20'),
('54.36.149.52', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-05 22:25:03', '2022-08-05 22:25:03'),
('54.36.149.71', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 14:12:03', '2022-08-06 14:12:03'),
('54.36.149.78', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-05 22:25:07', '2022-08-05 22:25:07'),
('54.36.149.80', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 00:02:22', '2022-08-06 00:02:22'),
('54.36.149.85', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-06 14:29:10', '2022-08-06 14:29:10'),
('54.36.149.86', NULL, NULL, 3, 3, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-08-05 22:25:05', '2022-09-16 23:27:22'),
('54.36.149.9', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-25 17:18:40', '2022-09-25 17:18:40'),
('54.36.149.96', NULL, NULL, 1, 1, NULL, 's:66:\"Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)\";', NULL, '2022-09-16 23:27:14', '2022-09-16 23:27:14'),
('56.145.47.165', '30:D4:93:B9:86:14', NULL, 81, 734, 'PM', NULL, NULL, '2021-06-26 00:05:34', '2021-06-26 00:05:34'),
('6.114.102.58', '00:46:E4:BE:80:38', NULL, 604, 1274, 'AI', NULL, NULL, '2021-02-26 00:05:34', '2021-02-26 00:05:34'),
('62.201.255.71', NULL, NULL, 1, 1, NULL, 's:126:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36 Vivaldi/5.3.2679.68\";', NULL, '2022-10-15 13:25:36', '2022-10-15 13:25:36'),
('65.108.142.49', NULL, NULL, 1, 2, NULL, 's:61:\"Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)\";', NULL, '2022-10-02 18:31:05', '2022-10-02 18:32:22'),
('65.108.203.159', NULL, NULL, 1, 2, NULL, 's:61:\"Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)\";', NULL, '2022-10-11 21:57:35', '2022-10-11 21:58:07'),
('65.108.206.155', NULL, NULL, 1, 3, NULL, 's:61:\"Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)\";', NULL, '2022-10-08 19:48:16', '2022-10-08 20:36:59'),
('65.108.227.178', NULL, NULL, 1, 2, NULL, 's:61:\"Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)\";', NULL, '2022-09-20 00:01:12', '2022-09-20 00:01:47'),
('65.108.46.72', NULL, NULL, 1, 6, NULL, 's:61:\"Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)\";', NULL, '2022-09-14 22:23:28', '2022-09-14 22:23:36'),
('65.109.63.254', NULL, NULL, 1, 2, NULL, 's:61:\"Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)\";', NULL, '2022-10-18 00:02:27', '2022-10-18 00:52:33'),
('65.109.67.82', NULL, NULL, 1, 2, NULL, 's:61:\"Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)\";', NULL, '2022-09-26 15:47:49', '2022-09-26 15:49:03'),
('65.21.232.254', NULL, NULL, 1, 12, NULL, 's:61:\"Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)\";', NULL, '2023-02-22 11:18:56', '2023-02-22 11:19:56'),
('73.167.58.229', NULL, NULL, 1, 1, NULL, 's:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\";', NULL, '2022-10-04 13:47:59', '2022-10-04 13:47:59'),
('75.223.23.223', 'D3:1D:C9:1E:E0:27', NULL, 578, 1068, 'AW', NULL, NULL, '2021-01-26 00:05:34', '2021-01-26 00:05:34'),
('82.80.230.228', NULL, NULL, 2, 362, NULL, 's:101:\"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36\";', NULL, '2022-05-15 23:11:13', '2022-05-16 03:17:46'),
('82.80.244.51', NULL, NULL, 1, 3, NULL, 's:75:\"Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; Touch; rv:11.0) like Gecko\";', NULL, '2022-05-16 01:21:42', '2022-05-16 02:06:31'),
('82.80.249.133', NULL, NULL, 1, 4, NULL, 's:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36\";', NULL, '2022-05-16 01:14:45', '2022-05-16 02:44:33'),
('82.80.249.143', NULL, NULL, 1, 17, NULL, 's:72:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0\";', NULL, '2022-05-16 01:16:10', '2022-05-16 03:17:22'),
('82.80.249.155', NULL, NULL, 1, 3, NULL, 's:65:\"Mozilla/5.0 (Windows NT 5.1; rv:25.0) Gecko/20100101 Firefox/25.0\";', NULL, '2022-05-16 02:13:10', '2022-05-16 02:41:26'),
('82.80.249.157', NULL, NULL, 1, 2, NULL, 's:77:\"Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:36.0) Gecko/20100101 Firefox/36.0\";', NULL, '2022-05-16 01:14:28', '2022-05-16 01:57:33'),
('82.80.249.163', NULL, NULL, 1, 8, NULL, 's:101:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36\";', NULL, '2022-05-16 01:21:08', '2022-05-16 03:15:25'),
('82.80.249.164', NULL, NULL, 1, 10, NULL, 's:108:\"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36\";', NULL, '2022-05-16 01:37:34', '2022-05-16 03:17:21'),
('82.80.249.204', NULL, NULL, 1, 2, NULL, 's:65:\"Mozilla/5.0 (Windows NT 5.1; rv:25.0) Gecko/20100101 Firefox/25.0\";', NULL, '2022-05-16 01:15:27', '2022-05-16 02:27:42'),
('82.80.249.227', NULL, NULL, 1, 5, NULL, 's:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36\";', NULL, '2022-05-16 01:22:47', '2022-05-16 02:48:40'),
('83.244.216.9', '88:F2:73:14:60:14', NULL, 54, 687, 'MT', NULL, NULL, '2021-06-26 00:05:34', '2021-06-26 00:05:34'),
('91.219.254.100', NULL, NULL, 1, 2, NULL, 's:61:\"Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)\";', NULL, '2022-10-14 23:02:27', '2022-10-14 23:03:05'),
('92.170.99.242', '47:D9:B2:E4:F1:11', NULL, 783, 985, 'GS', NULL, NULL, '2020-12-26 00:05:34', '2020-12-26 00:05:34'),
('93.112.214.69', NULL, NULL, 1, 35, NULL, 's:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36\";', NULL, '2022-03-08 09:14:18', '2022-03-08 09:14:24'),
('94.130.237.98', NULL, NULL, 6, 340, NULL, 's:67:\"Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)\";', NULL, '2022-05-05 20:02:17', '2022-11-12 05:33:42'),
('94.159.185.242', 'DF:F2:75:04:6E:82', NULL, 860, 1440, 'IM', NULL, NULL, '2020-12-26 00:05:34', '2020-12-26 00:05:34'),
('94.23.203.180', NULL, NULL, 1, 2, NULL, 's:61:\"Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)\";', NULL, '2022-09-29 16:57:28', '2022-09-29 16:58:23'),
('94.23.7.187', NULL, NULL, 3, 6, NULL, 's:61:\"Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)\";', NULL, '2022-09-23 13:53:25', '2022-10-21 01:31:41'),
('95.217.109.26', NULL, NULL, 1, 2, NULL, 's:61:\"Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)\";', NULL, '2022-09-14 04:15:22', '2022-09-14 04:15:23'),
('95.91.109.15', NULL, NULL, 1, 1, NULL, 's:61:\"Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)\";', NULL, '2022-09-13 20:43:18', '2022-09-13 20:43:18'),
('99.111.189.187', '4D:CC:EA:B3:DD:7A', NULL, 741, 1577, 'TO', NULL, NULL, '2021-06-26 00:05:34', '2021-06-26 00:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `incharge` bigint(20) UNSIGNED DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `shop_id`, `name`, `email`, `incharge`, `description`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kuhlman-Sporer', 'feest.valentin@yahoo.com', 3, 'Facilis autem velit omnis beatae. Dolorem quo illum ut blanditiis. Aperiam odit ut debitis incidunt nobis. Ipsa pariatur delectus in excepturi optio. Cumque amet autem repellendus nihil deleniti eos dolores. Explicabo omnis optio quia repellat eius. Vitae eos mollitia repellendus et vitae. Quidem ut mollitia asperiores nulla iure libero et id. Laboriosam rerum qui ipsam dolores nesciunt quo odit.', 1, NULL, '2021-06-26 00:04:15', '2021-06-26 00:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `inventory_id`, `product_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 35, 3, 1, '2021-06-17 00:05:30', '2021-06-17 00:05:30'),
(2, 26, 18, 1, '2021-06-11 00:05:30', '2021-06-11 00:05:30'),
(3, 17, 11, 1, '2021-06-21 00:05:30', '2021-06-21 00:05:30'),
(4, 41, 23, 1, '2021-06-13 00:05:30', '2021-06-13 00:05:30'),
(5, 37, 13, 1, '2021-06-15 00:05:30', '2021-06-15 00:05:30'),
(6, 5, 15, 1, '2021-06-12 00:05:30', '2021-06-12 00:05:30'),
(7, 41, 23, 1, '2021-06-11 00:05:30', '2021-06-11 00:05:30'),
(8, 22, 7, 1, '2021-06-26 00:05:30', '2021-06-26 00:05:30'),
(9, 36, 5, 1, '2021-06-14 00:05:30', '2021-06-14 00:05:30'),
(10, 37, 13, 1, '2021-06-13 00:05:30', '2021-06-13 00:05:30'),
(11, 30, 1, 1, '2021-06-20 00:05:30', '2021-06-20 00:05:30'),
(12, 26, 18, 1, '2021-06-24 00:05:30', '2021-06-24 00:05:30'),
(13, 48, 13, 1, '2021-06-18 00:05:30', '2021-06-18 00:05:30'),
(14, 35, 3, 1, '2021-06-15 00:05:30', '2021-06-15 00:05:30'),
(15, 32, 22, 1, '2021-06-18 00:05:30', '2021-06-18 00:05:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_country_id_foreign` (`country_id`);

--
-- Indexes for table `address_types`
--
ALTER TABLE `address_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `address_types_type_unique` (`type`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributes_attribute_type_id_foreign` (`attribute_type_id`);

--
-- Indexes for table `attribute_inventory`
--
ALTER TABLE `attribute_inventory`
  ADD KEY `attribute_inventory_attribute_id_index` (`attribute_id`),
  ADD KEY `attribute_inventory_inventory_id_index` (`inventory_id`),
  ADD KEY `attribute_inventory_attribute_value_id_index` (`attribute_value_id`);

--
-- Indexes for table `attribute_types`
--
ALTER TABLE `attribute_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_types_type_unique` (`type`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_groups`
--
ALTER TABLE `banner_groups`
  ADD UNIQUE KEY `banner_groups_id_unique` (`id`),
  ADD UNIQUE KEY `banner_groups_name_unique` (`name`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comments_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `cancellations`
--
ALTER TABLE `cancellations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cancellations_order_id_foreign` (`order_id`),
  ADD KEY `cancellations_customer_id_foreign` (`customer_id`),
  ADD KEY `cancellations_cancellation_reason_id_foreign` (`cancellation_reason_id`);

--
-- Indexes for table `cancellation_reasons`
--
ALTER TABLE `cancellation_reasons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cancellation_reasons_detail_unique` (`detail`);

--
-- Indexes for table `carriers`
--
ALTER TABLE `carriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_shop_id_foreign` (`shop_id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD KEY `cart_items_cart_id_index` (`cart_id`),
  ADD KEY `cart_items_inventory_id_index` (`inventory_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_category_sub_group_id_foreign` (`category_sub_group_id`);

--
-- Indexes for table `category_groups`
--
ALTER TABLE `category_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_groups_slug_unique` (`slug`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD KEY `category_product_category_id_index` (`category_id`),
  ADD KEY `category_product_product_id_index` (`product_id`);

--
-- Indexes for table `category_sub_groups`
--
ALTER TABLE `category_sub_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_sub_groups_slug_unique` (`slug`),
  ADD KEY `category_sub_groups_category_group_id_foreign` (`category_group_id`);

--
-- Indexes for table `chat_conversations`
--
ALTER TABLE `chat_conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_conversations_shop_id_foreign` (`shop_id`),
  ADD KEY `chat_conversations_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`shop_id`),
  ADD UNIQUE KEY `configs_shop_id_unique` (`shop_id`);

--
-- Indexes for table `config_authorize_net`
--
ALTER TABLE `config_authorize_net`
  ADD PRIMARY KEY (`shop_id`),
  ADD KEY `config_authorize_net_shop_id_index` (`shop_id`);

--
-- Indexes for table `config_cybersources`
--
ALTER TABLE `config_cybersources`
  ADD PRIMARY KEY (`shop_id`),
  ADD KEY `config_cybersources_shop_id_index` (`shop_id`);

--
-- Indexes for table `config_instamojo`
--
ALTER TABLE `config_instamojo`
  ADD PRIMARY KEY (`shop_id`),
  ADD KEY `config_instamojo_shop_id_index` (`shop_id`);

--
-- Indexes for table `config_manual_payments`
--
ALTER TABLE `config_manual_payments`
  ADD KEY `config_manual_payments_shop_id_index` (`shop_id`),
  ADD KEY `config_manual_payments_payment_method_id_index` (`payment_method_id`);

--
-- Indexes for table `config_paypal_express`
--
ALTER TABLE `config_paypal_express`
  ADD PRIMARY KEY (`shop_id`),
  ADD KEY `config_paypal_express_shop_id_index` (`shop_id`);

--
-- Indexes for table `config_paystacks`
--
ALTER TABLE `config_paystacks`
  ADD PRIMARY KEY (`shop_id`),
  ADD KEY `config_paystacks_shop_id_index` (`shop_id`);

--
-- Indexes for table `config_stripes`
--
ALTER TABLE `config_stripes`
  ADD PRIMARY KEY (`shop_id`),
  ADD KEY `config_stripes_shop_id_index` (`shop_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_timezone_id_foreign` (`timezone_id`),
  ADD KEY `countries_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_customer`
--
ALTER TABLE `coupon_customer`
  ADD KEY `coupon_customer_coupon_id_index` (`coupon_id`),
  ADD KEY `coupon_customer_customer_id_index` (`customer_id`);

--
-- Indexes for table `coupon_shipping_zone`
--
ALTER TABLE `coupon_shipping_zone`
  ADD KEY `coupon_shipping_zone_coupon_id_index` (`coupon_id`),
  ADD KEY `coupon_shipping_zone_shipping_zone_id_index` (`shipping_zone_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_api_token_unique` (`api_token`);

--
-- Indexes for table `dashboard_configs`
--
ALTER TABLE `dashboard_configs`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `disputes`
--
ALTER TABLE `disputes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disputes_order_id_foreign` (`order_id`),
  ADD KEY `disputes_customer_id_foreign` (`customer_id`),
  ADD KEY `disputes_dispute_type_id_foreign` (`dispute_type_id`);

--
-- Indexes for table `dispute_types`
--
ALTER TABLE `dispute_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dispute_types_detail_unique` (`detail`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_faq_topic_id_foreign` (`faq_topic_id`);

--
-- Indexes for table `faq_topics`
--
ALTER TABLE `faq_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedbacks_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `gift_cards`
--
ALTER TABLE `gift_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gtin_types`
--
ALTER TABLE `gtin_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gtin_types_name_unique` (`name`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inventories_slug_unique` (`slug`),
  ADD KEY `inventories_product_id_foreign` (`product_id`);

--
-- Indexes for table `inventory_packaging`
--
ALTER TABLE `inventory_packaging`
  ADD KEY `inventory_packaging_packaging_id_index` (`packaging_id`),
  ADD KEY `inventory_packaging_inventory_id_index` (`inventory_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_created_at_index` (`created_at`),
  ADD KEY `invoices_user_id_index` (`user_id`),
  ADD KEY `invoices_shop_id_index` (`shop_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_code_unique` (`code`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `manufacturers_slug_unique` (`slug`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `order_items_order_id_index` (`order_id`),
  ADD KEY `order_items_inventory_id_index` (`inventory_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packagings`
--
ALTER TABLE `packagings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance_indicators`
--
ALTER TABLE `performance_indicators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `performance_indicators_created_at_index` (`created_at`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`),
  ADD KEY `permissions_module_id_index` (`module_id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refunds_order_id_foreign` (`order_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_rates`
--
ALTER TABLE `shipping_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_rates_shipping_zone_id_index` (`shipping_zone_id`);

--
-- Indexes for table `shipping_zones`
--
ALTER TABLE `shipping_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shops_slug_unique` (`slug`),
  ADD UNIQUE KEY `shops_email_unique` (`email`),
  ADD KEY `shops_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `shop_payment_methods`
--
ALTER TABLE `shop_payment_methods`
  ADD KEY `shop_payment_methods_payment_method_id_index` (`payment_method_id`),
  ADD KEY `shop_payment_methods_shop_id_index` (`shop_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_country_id_foreign` (`country_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_shop_id_stripe_status_index` (`shop_id`,`stripe_status`);

--
-- Indexes for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD PRIMARY KEY (`plan_id`),
  ADD UNIQUE KEY `subscription_plans_name_unique` (`name`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `systems`
--
ALTER TABLE `systems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD KEY `taggables_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`),
  ADD KEY `tickets_category_id_foreign` (`category_id`);

--
-- Indexes for table `ticket_categories`
--
ALTER TABLE `ticket_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_categories_name_unique` (`name`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_warehouse`
--
ALTER TABLE `user_warehouse`
  ADD KEY `user_warehouse_user_id_index` (`user_id`),
  ADD KEY `user_warehouse_warehouse_id_index` (`warehouse_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_inventory_id_foreign` (`inventory_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `address_types`
--
ALTER TABLE `address_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attribute_types`
--
ALTER TABLE `attribute_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cancellations`
--
ALTER TABLE `cancellations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cancellation_reasons`
--
ALTER TABLE `cancellation_reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `carriers`
--
ALTER TABLE `carriers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `category_groups`
--
ALTER TABLE `category_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category_sub_groups`
--
ALTER TABLE `category_sub_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `chat_conversations`
--
ALTER TABLE `chat_conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=895;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `disputes`
--
ALTER TABLE `disputes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dispute_types`
--
ALTER TABLE `dispute_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `faq_topics`
--
ALTER TABLE `faq_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `gift_cards`
--
ALTER TABLE `gift_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gtin_types`
--
ALTER TABLE `gtin_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packagings`
--
ALTER TABLE `packagings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `performance_indicators`
--
ALTER TABLE `performance_indicators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shipping_rates`
--
ALTER TABLE `shipping_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `shipping_zones`
--
ALTER TABLE `shipping_zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=593;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `systems`
--
ALTER TABLE `systems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ticket_categories`
--
ALTER TABLE `ticket_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_attribute_type_id_foreign` FOREIGN KEY (`attribute_type_id`) REFERENCES `attribute_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `attribute_inventory`
--
ALTER TABLE `attribute_inventory`
  ADD CONSTRAINT `attribute_inventory_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_inventory_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_inventory_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cancellations`
--
ALTER TABLE `cancellations`
  ADD CONSTRAINT `cancellations_cancellation_reason_id_foreign` FOREIGN KEY (`cancellation_reason_id`) REFERENCES `cancellation_reasons` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cancellations_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cancellations_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `carts_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_category_sub_group_id_foreign` FOREIGN KEY (`category_sub_group_id`) REFERENCES `category_sub_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_sub_groups`
--
ALTER TABLE `category_sub_groups`
  ADD CONSTRAINT `category_sub_groups_category_group_id_foreign` FOREIGN KEY (`category_group_id`) REFERENCES `category_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_conversations`
--
ALTER TABLE `chat_conversations`
  ADD CONSTRAINT `chat_conversations_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `chat_conversations_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `configs`
--
ALTER TABLE `configs`
  ADD CONSTRAINT `configs_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `config_authorize_net`
--
ALTER TABLE `config_authorize_net`
  ADD CONSTRAINT `config_authorize_net_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `config_cybersources`
--
ALTER TABLE `config_cybersources`
  ADD CONSTRAINT `config_cybersources_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `config_instamojo`
--
ALTER TABLE `config_instamojo`
  ADD CONSTRAINT `config_instamojo_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `config_manual_payments`
--
ALTER TABLE `config_manual_payments`
  ADD CONSTRAINT `config_manual_payments_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `config_manual_payments_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `config_paypal_express`
--
ALTER TABLE `config_paypal_express`
  ADD CONSTRAINT `config_paypal_express_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `config_paystacks`
--
ALTER TABLE `config_paystacks`
  ADD CONSTRAINT `config_paystacks_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `config_stripes`
--
ALTER TABLE `config_stripes`
  ADD CONSTRAINT `config_stripes_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `countries_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `countries_timezone_id_foreign` FOREIGN KEY (`timezone_id`) REFERENCES `timezones` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `coupon_customer`
--
ALTER TABLE `coupon_customer`
  ADD CONSTRAINT `coupon_customer_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_customer_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_shipping_zone`
--
ALTER TABLE `coupon_shipping_zone`
  ADD CONSTRAINT `coupon_shipping_zone_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_shipping_zone_shipping_zone_id_foreign` FOREIGN KEY (`shipping_zone_id`) REFERENCES `shipping_zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `disputes`
--
ALTER TABLE `disputes`
  ADD CONSTRAINT `disputes_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `disputes_dispute_type_id_foreign` FOREIGN KEY (`dispute_type_id`) REFERENCES `dispute_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `disputes_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_faq_topic_id_foreign` FOREIGN KEY (`faq_topic_id`) REFERENCES `faq_topics` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventory_packaging`
--
ALTER TABLE `inventory_packaging`
  ADD CONSTRAINT `inventory_packaging_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inventory_packaging_packaging_id_foreign` FOREIGN KEY (`packaging_id`) REFERENCES `packagings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `refunds`
--
ALTER TABLE `refunds`
  ADD CONSTRAINT `refunds_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `shipping_rates`
--
ALTER TABLE `shipping_rates`
  ADD CONSTRAINT `shipping_rates_shipping_zone_id_foreign` FOREIGN KEY (`shipping_zone_id`) REFERENCES `shipping_zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `shops_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shop_payment_methods`
--
ALTER TABLE `shop_payment_methods`
  ADD CONSTRAINT `shop_payment_methods_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_payment_methods_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taggables`
--
ALTER TABLE `taggables`
  ADD CONSTRAINT `taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `ticket_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_warehouse`
--
ALTER TABLE `user_warehouse`
  ADD CONSTRAINT `user_warehouse_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_warehouse_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD CONSTRAINT `warehouses_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
