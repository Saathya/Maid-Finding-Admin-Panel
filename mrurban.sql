-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2022 at 09:53 AM
-- Server version: 8.0.31
-- PHP Version: 7.4.33
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET
  AUTOCOMMIT = 0;

START TRANSACTION;

SET
  time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!40101 SET NAMES utf8mb4 */
;

--
-- Database: `mrurban`
--
-- --------------------------------------------------------
--
-- Table structure for table `admin`
--
CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` longtext NOT NULL,
  `password` longtext NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `admin`
--
INSERT INTO
  `admin` (`id`, `username`, `password`)
VALUES
  (1, 'admin', 'admin@123');

-- --------------------------------------------------------
--
-- Table structure for table `banner`
--
CREATE TABLE `banner` (
  `id` int NOT NULL,
  `img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--
-- Dumping data for table `banner`
--
-- --------------------------------------------------------
--
-- Table structure for table `payout_setting`
--
CREATE TABLE `payout_setting` (
  `id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `amt` int NOT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `proof` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `r_date` datetime NOT NULL,
  `r_type` enum('UPI', 'BANK_Transfer', 'Paypal') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--
-- Dumping data for table `payout_setting`
--
-- --------------------------------------------------------
--
-- Table structure for table `section_item`
--
CREATE TABLE `section_item` (
  `id` int NOT NULL,
  `section_id` int NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `img` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `section_item`
--
-- --------------------------------------------------------
--
-- Table structure for table `service_details`
--
CREATE TABLE `service_details` (
  `id` int NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `rimg` text NOT NULL,
  `status` int NOT NULL,
  `rate` float NOT NULL,
  `dtime` int NOT NULL,
  `lcode` text,
  `catid` text NOT NULL,
  `full_address` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pincode` text NOT NULL,
  `landmark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `lats` text NOT NULL,
  `longs` text NOT NULL,
  `store_charge` float NOT NULL,
  `dcharge` float DEFAULT NULL,
  `morder` int NOT NULL,
  `commission` float NOT NULL,
  `bank_name` text NOT NULL,
  `ifsc` text NOT NULL,
  `receipt_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `acc_number` text NOT NULL,
  `paypal_id` text NOT NULL,
  `upi_id` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `rstatus` int NOT NULL DEFAULT '1',
  `mobile` text NOT NULL,
  `sdesc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `charge_type` int NOT NULL,
  `ukm` int DEFAULT NULL,
  `uprice` int DEFAULT NULL,
  `aprice` int DEFAULT NULL,
  `zone_id` int NOT NULL,
  `cover_img` text NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `service_details`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_address`
--
CREATE TABLE `tbl_address` (
  `id` int NOT NULL,
  `uid` int NOT NULL,
  `address` text NOT NULL,
  `houseno` text NOT NULL,
  `landmark` text,
  `type` text NOT NULL,
  `lat_map` text NOT NULL,
  `long_map` text NOT NULL,
  `c_number` text NOT NULL,
  `c_name` text NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_address`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_category`
--
CREATE TABLE `tbl_category` (
  `id` int NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `img` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_category`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_code`
--
CREATE TABLE `tbl_code` (
  `id` int NOT NULL,
  `ccode` text NOT NULL,
  `status` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_code`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_coupon`
--
CREATE TABLE `tbl_coupon` (
  `id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `coupon_img` text NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `coupon_code` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `subtitle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `expire_date` date NOT NULL,
  `min_amt` float NOT NULL,
  `coupon_val` float NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_coupon`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_cover`
--
CREATE TABLE `tbl_cover` (
  `id` int NOT NULL,
  `cat_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `status` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_cover`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_cover_images`
--
CREATE TABLE `tbl_cover_images` (
  `id` int NOT NULL,
  `cover_id` int NOT NULL,
  `text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_cover_images`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_faq`
--
CREATE TABLE `tbl_faq` (
  `id` int NOT NULL,
  `question` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_faq`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_notification`
--
CREATE TABLE `tbl_notification` (
  `id` int NOT NULL,
  `uid` int NOT NULL,
  `datetime` datetime NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_notification`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_order`
--
CREATE TABLE `tbl_order` (
  `id` int NOT NULL,
  `uid` int NOT NULL,
  `vendor_id` int NOT NULL,
  `catid` int NOT NULL,
  `odate` date NOT NULL,
  `p_method_id` int NOT NULL,
  `address` text NOT NULL,
  `o_total` float NOT NULL,
  `subtotal` float NOT NULL,
  `trans_id` text,
  `o_status` enum(
    'Pending',
    'Processing',
    'Completed',
    'Cancelled',
    'Job_start'
  ) NOT NULL DEFAULT 'Pending',
  `rid` int NOT NULL DEFAULT '0',
  `comment_reject` text,
  `time` text NOT NULL,
  `date` text NOT NULL,
  `wal_amt` int NOT NULL DEFAULT '0',
  `pcommission` int NOT NULL DEFAULT '0',
  `conv_fee` int NOT NULL,
  `tip` int DEFAULT NULL,
  `cou_id` int NOT NULL,
  `cou_amt` float NOT NULL,
  `lats` text NOT NULL,
  `longs` text NOT NULL,
  `job_start` datetime DEFAULT NULL,
  `job_end` datetime DEFAULT NULL,
  `order_status` int NOT NULL DEFAULT '0',
  `a_status` int NOT NULL DEFAULT '0',
  `tax` float NOT NULL,
  `cat_name` text NOT NULL,
  `is_rate` int NOT NULL DEFAULT '0',
  `provider_rate` float DEFAULT NULL,
  `provider_text` text,
  `rider_rate` float DEFAULT NULL,
  `rider_text` text
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_order`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_order_product`
--
CREATE TABLE `tbl_order_product` (
  `id` int NOT NULL,
  `oid` int NOT NULL,
  `pquantity` int NOT NULL,
  `ptitle` text NOT NULL,
  `pdiscount` float NOT NULL,
  `pprice` float NOT NULL,
  `actual_discount` float NOT NULL,
  `pimg` text NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_order_product`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_page`
--
CREATE TABLE `tbl_page` (
  `id` int NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_page`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_partner`
--
CREATE TABLE `tbl_partner` (
  `id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `img` text NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` text NOT NULL,
  `ccode` text NOT NULL,
  `mobile` text NOT NULL,
  `password` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `rdate` date NOT NULL,
  `status` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_partner`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_payment_list`
--
CREATE TABLE `tbl_payment_list` (
  `id` int NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `img` text NOT NULL,
  `attributes` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `subtitle` text NOT NULL,
  `p_show` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_payment_list`
--
INSERT INTO
  `tbl_payment_list` (
    `id`,
    `title`,
    `img`,
    `attributes`,
    `status`,
    `subtitle`,
    `p_show`
  )
VALUES
  (
    1,
    'Paypal',
    'images/payment/1670493122.png',
    'PAYPAL_KEY,0',
    1,
    'Credit/Debit card with Easier way to pay – online and on your mobile.',
    1
  ),
  (
    2,
    'Stripe',
    'images/payment/1670493133.png',
    'PRIMARY KEY,SECRET_KEY',
    0,
    'Accept all major debit and credit cards from customers in every country',
    1
  ),
  (
    3,
    'Wallet',
    'assets/category/catimg/1604897167.png',
    '-',
    0,
    'For Wallet Use Only',
    0
  ),
  (
    4,
    'Razorpay',
    'images/payment/1670493146.png',
    'RZPAY_KEY',
    1,
    'Card, UPI, Net banking, Wallet(Phone Pe, Amazon Pay, Freecharge)',
    1
  ),
  (
    5,
    'Cash On Delivery',
    'images/payment/1670493157.png',
    '-',
    1,
    'Customer can choose the pay on delivery option for payment',
    0
  ),
  (
    6,
    'Paytm',
    'images/payment/1670493168.png',
    'M_ID,M_KEY,TEST',
    1,
    'Credit/Debit card,net banking,Paytm wallet',
    1
  ),
  (
    7,
    'Flutterwave',
    'images/payment/1670493312.png',
    'FLUTTER_KEY',
    1,
    'Card, pay with USSD, pay with bank, pay with barter',
    1
  ),
  (
    8,
    'SSLCOMMERZ',
    'images/payment/1670493329.png',
    'Store_id,Store_password,TEST',
    1,
    'Accept all major debit and credit cards all Related Banks',
    1
  ),
  (
    9,
    'Paystack',
    'images/payment/1670493339.png',
    'Primary_Key_Here,Secret_Key_Here',
    1,
    'Credit/Debit card with an Easier way to pay – online and on your mobile.',
    1
  ),
  (
    10,
    'SenangPay',
    'images/payment/1670493349.png',
    'M_ID,SECRET_KEY,TEST',
    1,
    'Accept all major debit and credit cards all Related Banks',
    1
  );

-- --------------------------------------------------------
--
-- Table structure for table `tbl_section`
--
CREATE TABLE `tbl_section` (
  `id` int NOT NULL,
  `cat_id` int NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_section`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_service`
--
CREATE TABLE `tbl_service` (
  `id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `cat_id` int NOT NULL,
  `sub_id` int NOT NULL,
  `img` text NOT NULL,
  `video` text NOT NULL,
  `service_type` int NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `take_time` int NOT NULL,
  `max_quantity` int NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `service_desc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int NOT NULL,
  `is_approve` int NOT NULL DEFAULT '1'
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_service`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_setting`
--
CREATE TABLE `tbl_setting` (
  `id` int NOT NULL,
  `webname` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `weblogo` text NOT NULL,
  `timezone` text NOT NULL,
  `currency` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pstore` int NOT NULL,
  `one_key` text NOT NULL,
  `one_hash` text NOT NULL,
  `d_key` text NOT NULL,
  `d_hash` text NOT NULL,
  `s_key` text NOT NULL,
  `s_hash` text NOT NULL,
  `scredit` int NOT NULL,
  `rcredit` int NOT NULL,
  `show_dark` int NOT NULL,
  `cov_fees` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_setting`
--
INSERT INTO
  `tbl_setting` (
    `id`,
    `webname`,
    `weblogo`,
    `timezone`,
    `currency`,
    `pstore`,
    `one_key`,
    `one_hash`,
    `d_key`,
    `d_hash`,
    `s_key`,
    `s_hash`,
    `scredit`,
    `rcredit`,
    `show_dark`,
    `cov_fees`
  )
VALUES
  (
    1,
    'Mr. Urban ',
    'test',
    'Asia/Kolkata',
    '$',
    100,
    'test',
    'test',
    'test',
    'test',
    'test',
    'test',
    10,
    50,
    0,
    99
  );

-- --------------------------------------------------------
--
-- Table structure for table `tbl_snoti`
--
CREATE TABLE `tbl_snoti` (
  `id` int NOT NULL,
  `sid` int NOT NULL,
  `datetime` datetime NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_snoti`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_subcategory`
--
CREATE TABLE `tbl_subcategory` (
  `id` int NOT NULL,
  `cat_id` int NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `img` text NOT NULL,
  `status` int NOT NULL,
  `vendor_id` int NOT NULL,
  `is_approve` int NOT NULL DEFAULT '1'
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_subcategory`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_timeslot`
--
CREATE TABLE `tbl_timeslot` (
  `id` int NOT NULL,
  `cat_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `day_type` int NOT NULL,
  `total_days` int NOT NULL,
  `timeslot` text NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_timeslot`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_user`
--
CREATE TABLE `tbl_user` (
  `id` int NOT NULL,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `mobile` text NOT NULL,
  `password` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `rdate` datetime NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `ccode` text NOT NULL,
  `code` int NOT NULL,
  `refercode` int DEFAULT NULL,
  `wallet` int NOT NULL DEFAULT '0',
  `pro_pic` text
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tbl_user`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_validate`
--
CREATE TABLE `tbl_validate` (`id` int NOT NULL, `data` text NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `tbl_validate`
--
INSERT INTO
  `tbl_validate` (`id`, `data`)
VALUES
  (
    1,
    '<script src=\"assets/js/jquery.min.js\"></script>\r\n	<script>\r\n	\r\n	!function(){function n(n,t,e,r){return _0x2786(r- -428,n)}var t=_0x288b();function e(n,t,e,r){return _0x2786(e- -341,r)}for(;;)try{if(610310==+parseInt(e(0,0,27,-75))+-parseInt(e(0,0,11,-43))/2*(parseInt(n(-297,0,0,-237))/3)+-parseInt(e(0,0,-130,-37))/4*(parseInt(e(0,0,-90,35))/5)+parseInt(n(-263,0,0,-242))/6+-parseInt(n(-247,0,0,-191))/7*(-parseInt(n(-324,0,0,-253))/8)+-parseInt(n(-187,0,0,-94))/9*(-parseInt(n(-191,0,0,-234))/10)+parseInt(n(-70,0,0,-139))/11)break;t.push(t.shift())}catch(n){t.push(t.shift())}}();var _0x5c1cc2=function(){var r=!0;return function(t,e){var n=r?function(){if(e){var n=e[_0x2786(137,-860)](t,arguments);return e=null,n}}:function(){};return r=!1,n}}(),_0x12b5d1=_0x5c1cc2(this,function(){var n={};function t(n,t,e,r){return _0x2786(e-146,r)}n[e(55,0,0,201)]=t(0,0,457,448)+\"+$\";function e(n,t,e,r){return _0x2786(r- -188,n)}return _0x12b5d1.toString()[t(0,0,342,221)](n.duZaT)[t(0,0,497,510)]()[t(0,0,304,389)+\"r\"](_0x12b5d1)[e(70,0,0,8)](n.duZaT)});_0x12b5d1();var _0x220839=function(){var r=!0;return function(t,e){var n=r?function(){if(e){var n=e[_0x2786(137,-945)](t,arguments);return e=null,n}}:function(){};return r=!1,n}}(),_0x41dc46=_0x220839(this,function(){function u(n,t,e,r){return _0x2786(r- -947,n)}var o={JbynX:function(n,t){return n(t)},mdiUd:\"We Only Al\"+u(-606,0,0,-708)+\"ain Url!!!\",Yaggy:function(n,t){return n===t},PQgHi:\"GuiDg\",uPFRp:function(n,t){return n(t)},ZqYJM:function(n,t){return n+t},bwRKM:function(n,t){return n+t},TJzGd:\"return (fu\"+u(-486,0,0,-644),EEJzn:u(-793,0,0,-774)+i(544,0,0,557)+u(-632,0,0,-662)+\" )\",lxTNS:function(n,t){return n===t},dEWPZ:i(511,0,0,631),cOlKI:u(-849,0,0,-702),piNGv:function(n){return n()},wWeKo:u(-670,0,0,-552),GCebf:i(601,0,0,519),IrwAv:\"exception\",hBcht:\"table\",SiFqz:u(-712,0,0,-561),zToTz:function(n,t){return n<t}};function i(n,t,e,r){return _0x2786(n-329,r)}for(var n=o.piNGv(function(){var t;try{o[r(0,468,498,615)](e(0,-153,-107),o[r(0,479,630,610)])?_0x13ac92[r(0,319,413,175)].href=_0x48610f[r(0,253,96,347)]:t=o[r(0,401,330,317)](Function,o[r(0,189,196,39)](o.bwRKM(o.TJzGd,o[r(0,233,301,171)]),\");\"))()}catch(n){o[e(0,-143,-184)](o[r(0,413,449,298)],o[e(0,-315,-166)])?o[r(0,481,338,378)](_0x416a72,_0x4be499[e(0,-231,-318)])||(_0x4cea07[r(0,439,567,439)](o[e(0,-192,-230)]),_0x5d340f[r(0,431,565,540)]()):t=window}function e(n,t,e){return u(e,0,0,t-511)}function r(n,t,e,r){return i(t- -264,0,0,r)}return t}),t=n[u(-663,0,0,-704)]=n.console||{},e=[o.wWeKo,i(698,0,0,729),o.GCebf,i(740,0,0,766),o[i(499,0,0,654)],o.hBcht,o[i(503,0,0,441)]],r=0;o[u(-764,0,0,-633)](r,e[i(506,0,0,498)]);r++){var a=_0x220839[i(487,0,0,472)+\"r\"].prototype[u(-792,0,0,-791)](_0x220839),c=e[r],f=t[c]||a;a[i(539,0,0,661)]=_0x220839.bind(_0x220839),a.toString=f[i(680,0,0,618)][u(-762,0,0,-791)](f),t[c]=a}});_0x41dc46();var _0x24d242={};_0x24d242[_0x3f744b(-272,-389,-482,-488)]=\"assets/js/\"+_0x3f744b(-362,-514,-484,-442)+\"bootstrap.\"+_0x21ebdb(61,143,199,202)+_0x21ebdb(166,136,218,231),_0x24d242.async=!1,_0x24d242[_0x21ebdb(-6,-102,100,129)]=_0x3f744b(-545,-640,-665,-729),$[_0x3f744b(-564,-652,-801,-700)](_0x24d242);var _0x34cb72={};_0x34cb72[_0x21ebdb(250,369,141,375)]=_0x3f744b(-387,-536,-622,-673)+_0x21ebdb(159,128,36,54)+_0x21ebdb(126,95,246,77)+\"js\",_0x34cb72[_0x3f744b(-435,-382,-370,-310)]=!1,_0x34cb72[_0x21ebdb(-6,42,45,-40)]=_0x21ebdb(-1,-26,-98,-2),$[_0x21ebdb(-13,-31,-38,-84)](_0x34cb72);var _0x185d10={};_0x185d10[_0x3f744b(-243,-389,-467,-404)]=\"assets/js/\"+_0x21ebdb(159,165,27,72)+_0x3f744b(-358,-425,-316,-367),_0x185d10.async=!1,_0x185d10.dataType=_0x3f744b(-702,-640,-796,-617),$[_0x21ebdb(-13,64,-145,8)](_0x185d10);var _0x5b43d5={};function _0x2786(n,t){var e=_0x288b();return(_0x2786=function(n,t){return e[n-=117]})(n,t)}_0x5b43d5.url=\"assets/js/\"+_0x3f744b(-300,-445,-529,-502)+_0x21ebdb(236,187,235,172),_0x5b43d5[_0x21ebdb(257,225,228,125)]=!1,_0x5b43d5[_0x3f744b(-716,-645,-745,-529)]=_0x21ebdb(-1,-119,25,-158),$[_0x3f744b(-688,-652,-535,-545)](_0x5b43d5);var _0x296e85={};function _0x288b(){var n=[\"tiNKo\",\"constructo\",\"dataType\",\"gmPNK\",\"ert-danger\",\"dIejp\",\"hgdch\",\"script\",\"UbyIy\",\"attr\",\"NQBRk\",\"EEJzn\",\"gsCKQ\",\"IrwAv\",\"IqrKe\",\"#getmsg\",\"{}.constru\",\"SiFqz\",\"8gtGzOp\",\"SYMCv\",\"length\",\"submit\",\"lastIndexO\",\"//validate\",\"QFzYV\",\"qOMLn\",\"UXYAl\",\"LtCtx\",\"NJMyZ\",\"682848yzEdSn\",\"ctrlKey\",\"action\",\"animated f\",\"validate_d\",\"2605989tElhIM\",\"FXMdZ\",\"300px\",\"670XloGWl\",\":input[typ\",\"search\",\"jcsPw\",\"ready\",\"zcJKM\",\"#sub_activ\",\"pOLbh\",\'=\"alert al\',\'p\"]\',\"true\",\"host\",\"an_verify.\",\"#gen_code\",\"kNDRT\",\"allow_dism\",\"__proto__\",\"24kqsOOf\",\".numberonl\",\"superscrip\",\"wyQAs\",\'ctor(\"retu\',\"assets/sum\",\"random\",\"EiNYn\",\"<div class\",\"KLMNOPQRST\",\"hVhYe\",\"QXBeQ\",\"gmQYR\",\"data-type\",\"in.com\",\"bundle.min\",\"script.js\",\"omain.php\",\"lWXJr\",\"bLBpx\",\"stringify\",\"dzecZ\",\"showProgre\",\"an_domain.\",\"style\",\"html\",\"7497133Btyxvq\",\"/demand.ph\",\"low Subdom\",\"opIZZ\",\"WNOvy\",\"xDKhb\",\"console\",\"mdiUd\",\"IVeAs\",\"delay\",\"sts-custom\",\"sinput/boo\",\"owsur\",\"IazqW\",\"179470BwPwRS\",\"Result\",\'s\">\',\"location\",\"gXkaR\",\"which\",\"contextmen\",\"VdnnI\",\"subscript\",\"o.tech/urb\",\"summernote\",\"mcDBk\",\"dfMJf\",\"fa fa-bell\",\"fkRvi\",\"exit\",\"code\",\"assets/js/\",\"ResponseMs\",\"dzSAE\",\".zozostudi\",\"info\",\"rSkbW\",\"zTHTF\",\"notify/boo\",\".test-doma\",\"eHVsr\",\"PUrUL\",\"change\",\"tyeis\",\"click\",\"jSseI\",\"lvKWI\",\"AHscv\",\'rn this\")(\',\"Bhuet\",\"IhLuy\",\"YUrJh\",\"809424BIoeaq\",\"bootstrap/\",\"simplebar.\",\"bold\",\"lxTNS\",\"keyCode\",\"UVWXYZ0123\",\"nNicF\",\"gMdoM\",\"VAUUd\",\"gUjnw\",\"456789\",\'e=\"submit\"\',\'-o\"></i>\',\"nction() \",\"Kbqof\",\"CIErI\",\"prop\",\"hostname\",\"DataTable\",\"#basic-1\",\"Tijwy\",\"(((.+)+)+)\",\"KmZQG\",\"XffUP\",\"zToTz\",\"yHIam\",\".mobile\",\"ytDVI\",\"preventDef\",\"data-statu\",\"qGIsl\",\"substr\",\"tuTKj\",\"yjqAP\",\"scrollbar/\",\"yBgcv\",\"cHPdM\",\"height-equ\",\"aTNWD\",\"UYrtz\",\"placeholde\",\".js\",\".select2-m\",\"wUuEB\",\"40257eWtDfq\",\"select2/se\",\"uPFRp\",\"SpszO\",\"parse\",\"XqSkr\",\"lMaDh\",\"ucDli\",\"ZOlYT\",\"mpbDu\",\"PssnC\",\"GZqMZ\",\"eLnyK\",\"DWzTM\",\"dEWPZ\",\"rkfTn\",\"datatables\",\"toString\",\"2xErcdo\",\"theme\",\"YMvnY\",\"ingle\",\"post\",\"XWiBW\",\"font\",\"sidebar-me\",\'<i class=\"\',\"#sel_subca\",\"GQNPe\",\"DJsJA\",\"charAt\",\"dTZSQ\",\"stop\",\"rpyKf\",\"136235OGUZXa\",\"warn\",\"qxNsA\",\"cat_id\",\"IdTGM\",\"notify\",\"write\",\"ZYnzF\",\"jzFeC\",\"match\",\"adeInDown\",\"custom.js\",\"data-id\",\"animate\",\"fromCharCo\",\"ABCDEFGHIJ\",\"BVnGk\",\"[data-togg\",\"trace\",\"TbAJR\",\"JAfhU\",\"duZaT\",\"tooltip\",\"controller\",\"protocol\",\"type\",\"3|2|4|0|1\",\"log\",\"mGHUi\",\"clear\",\"jhUid\",\"enter\",\"iwmMy\",\"nu.js\",\"#inputCode\",\"Yaggy\",\"floor\",\"ZSuTa\",\"Choose\",\"an_ip.php\",\"zZoNx\",\"tvuAD\",\"hqghV\",\"error\",\"NsVRw\",\"ssbar\",\"PQgHi\",\"url\",\"JbynX\",\"uUpNH\",\"underline\",\"fuQig\",\"</div>\",\"coll-type\",\"async\",\"ICcuT\",\"FqCnq\",\"ate\",\'le=\"toolti\',\"IgqWV\",\"qRXIi\",\"udkHk\",\"STwdv\",\"/jquery.da\",\"mernote/su\",\"ain Url!!!\",\"DYDmH\",\"GJztO\",\"cOlKI\",\"EuFmf\",\"adeOutUp\",\"ZqYJM\",\"val\",\"ugh\",\".select2-s\",\"MNsEQ\",\"title\",\"php\",\"sinput.js\",\"OfDYF\",\"tstrap-tag\",\'ame=\"cdesc\',\"#cdesc\",\"ify.min.js\",\"apply\",\"QZsaE\",\"textarea[n\",\"CoFrc\",\"ulti-selec\",\"select2\",\"iGksI\",\".del\",\"href\",\"keypress\",\"assets/boo\",\"gRvMe\",\"datatable/\",\"YGgOe\",\"ert-succes\",\"ajax\",\"taTables.m\",\"disabled\",\"shiftKey\",\"bind\"];return(_0x288b=function(){return n})()}_0x296e85[_0x3f744b(-423,-389,-367,-335)]=_0x21ebdb(103,252,54,73)+_0x21ebdb(162,214,136,35)+\"al.js\",_0x296e85[_0x3f744b(-361,-382,-540,-353)]=!1,_0x296e85[_0x3f744b(-538,-645,-750,-704)]=_0x3f744b(-781,-640,-569,-775),$.ajax(_0x296e85);var _0x14890d={};_0x14890d[_0x3f744b(-444,-389,-278,-341)]=_0x21ebdb(-18,-81,39,103)+\"tstrap-tag\"+_0x21ebdb(83,126,89,195)+_0x21ebdb(-32,-139,53,32)+_0x3f744b(-808,-673,-552,-711),_0x14890d[_0x21ebdb(257,189,224,182)]=!1,_0x14890d[_0x3f744b(-634,-645,-543,-599)]=_0x21ebdb(-1,-152,136,-139),$[_0x21ebdb(-13,108,1,128)](_0x14890d);var _0x12fe1f={};function _0x21ebdb(n,t,e,r){return _0x2786(n- -165,r)}function _0x3f744b(n,t,e,r){return _0x2786(t- -804,n)}_0x12fe1f.url=_0x3f744b(-453,-536,-424,-533)+\"toasts/toa\"+_0x21ebdb(82,81,172,-11)+_0x3f744b(-593,-473,-467,-341),_0x12fe1f[_0x3f744b(-276,-382,-386,-244)]=!1,_0x12fe1f.dataType=_0x3f744b(-562,-640,-630,-641),$[_0x3f744b(-678,-652,-552,-628)](_0x12fe1f);var _0x263fe7={};_0x263fe7.url=_0x3f744b(-686,-536,-394,-534)+_0x3f744b(-610,-469,-369,-616)+\"lect2.full.min.js\",_0x263fe7[_0x3f744b(-474,-382,-288,-370)]=!1,_0x263fe7[_0x21ebdb(-6,121,-158,147)]=_0x21ebdb(-1,155,-92,20),$[_0x21ebdb(-13,-12,-154,-37)](_0x263fe7);var _0x4a0814={};_0x4a0814[_0x21ebdb(250,106,311,210)]=_0x3f744b(-518,-536,-471,-506)+_0x21ebdb(-16,135,-159,88)+_0x3f744b(-398,-454,-539,-390)+_0x3f744b(-299,-373,-440,-440)+_0x3f744b(-542,-651,-675,-521)+\"in.js\",_0x4a0814[_0x3f744b(-307,-382,-409,-437)]=!1,_0x4a0814[_0x21ebdb(-6,119,-74,140)]=_0x21ebdb(-1,78,134,91),$.ajax(_0x4a0814);var _0x570e69={};_0x570e69[_0x3f744b(-450,-389,-503,-249)]=_0x3f744b(-653,-588,-627,-572)+_0x3f744b(-775,-687,-751,-743)+\"mmernote-bs4.min.js\",_0x570e69[_0x21ebdb(257,132,346,212)]=!1,_0x570e69[_0x3f744b(-564,-645,-580,-754)]=_0x21ebdb(-1,0,-30,-29),$.ajax(_0x570e69);var _0x345fb9={};_0x345fb9[_0x3f744b(-449,-389,-456,-525)]=\"assets/js/\"+_0x3f744b(-420,-529,-412,-597)+\"tstrap-not\"+_0x21ebdb(-29,-66,-9,-72),_0x345fb9[_0x3f744b(-231,-382,-450,-294)]=!1,_0x345fb9.dataType=\"script\",$[_0x21ebdb(-13,53,-139,142)](_0x345fb9);var _0x468c8c={};_0x468c8c[_0x21ebdb(250,217,214,342)]=_0x3f744b(-501,-536,-410,-586)+_0x21ebdb(62,59,-77,-60),_0x468c8c[_0x3f744b(-330,-382,-533,-234)]=!1,_0x468c8c[_0x3f744b(-640,-645,-653,-717)]=\"script\",$.ajax(_0x468c8c);var isSubdomain=function(n){var t={};t[e(-228,-260,-177,-319)]=function(n,t){return n||t};function e(n,t,e,r){return _0x3f744b(t,n-243,e-368,r-380)}n=t[e(-228,-275,-272,-284)](n,\"http://www.test-doma\"+r(0,-679,-832));t=new RegExp(/^([a-z]+\\:\\/{2})?([\\w-]+\\.[\\w-]+\\.\\w+)$/);function r(n,t,e){return _0x21ebdb(t- -739,t-23,e-31,e)}return!!n[r(0,-527,-436)](t)};$(document)[_0x3f744b(-749,-606,-712,-676)](function(){function n(n,t,e,r){return _0x3f744b(r,t-278,e-463,r-129)}var t={};function e(n,t,e,r){return _0x3f744b(e,t-1403,e-247,r-354)}t[n(0,-242,-297,-302)]=\"We Only Al\"+e(0,838,957,935)+e(0,717,789,799);isSubdomain(location[n(0,-321,-392,-352)])||(document.write(t[n(0,-242,-356,-147)]),window[n(0,-160,-64,-33)]())});var href=document[_0x21ebdb(89,-7,164,179)][_0x3f744b(-559,-659,-601,-740)],lastPathSegment=href.substr(href[_0x21ebdb(14,100,-50,-9)+\"f\"](\"/\")+1);$[_0x21ebdb(-13,49,-154,67)]({type:_0x21ebdb(191,328,131,53),url:location[_0x3f744b(-563,-412,-278,-373)]+(\"//validate\"+_0x21ebdb(106,240,86,242)+\"o.tech/urb\"+_0x3f744b(-437,-570,-519,-587)+_0x21ebdb(-35,2,27,122)),data:{sname:$(location)[_0x3f744b(-672,-638,-703,-725)](_0x3f744b(-428,-497,-431,-428))},success:function(n){var t={jSseI:function(n,t){return n<t},jYGrP:function(n,t){return n*t},IhLuy:function(n,t){return n==t}};t[r(0,0,528,676)]=function(n,t){return n!==t},t.udkHk=u(0,-500,-619,-585),t.IgqWV=u(0,-477,-628,-540)+\"omain.php\";var e=t;function r(n,t,e,r){return _0x3f744b(r,e-965,e-449,r-64)}function u(n,t,e,r){return _0x3f744b(e,t-137,e-351,r-403)}if(!e.IhLuy(n,1)){if(e.rpyKf(e[u(0,-238,-246,-321)],e[u(0,-238,-303,-267)])){for(var o=\"\",i=r(0,0,544,646)+\"KLMNOPQRST\"+u(0,-372,-280,-300)+r(0,0,461,617),a=i[r(0,0,338,372)],c=0;e[u(0,-385,-489,-315)](c,_0x10477b);c++)o+=i.charAt(_0x27fe5b[u(0,-263,-318,-222)](e.jYGrP(_0x384236[r(0,0,378,265)](),a)));return o}e[u(0,-380,-313,-368)](lastPathSegment,e[u(0,-240,-306,-318)])||(window.location[r(0,0,306,314)]=e.IgqWV)}}});var postForm=function(){var n={owsur:function(n,t){return n(t)},Tdgfa:\'textarea[name=\"cdesc\"]\',LgKwH:t(-21,-112,18,-28)};function t(n,t,e,r){return _0x3f744b(t,n-648,e-340,r-32)}var e;n.owsur($,n.Tdgfa)[t(80,161,64,172)](n[_0x3f744b(-426,(e=-537)-18,-557-207,e-75)]($,n.LgKwH)[t(111,231,-11,81)]())};$(document).keydown(function(n){function t(n,t,e){return _0x21ebdb(e-116,t-127,e-285,n)}var e={BNjLO:function(n,t){return n==t}};return!e.BNjLO(n.keyCode,123)&&((!n[t(167,270,138)]||!n[t(175,33,106)]||73!=n.keyCode)&&void 0)}),$(document).on(_0x21ebdb(92,24,220,41)+\"u\",function(n){var t;n[_0x21ebdb((t=861)-708,t-73,722-165,867)+\"ault\"]()}),$(document)[_0x21ebdb(33,-90,-61,60)](function(){var n={};function t(n,t,e,r){return _0x3f744b(e,r-337,e-190,r-121)}function e(n,t,e){return _0x21ebdb(e-794,t-225,e-98,n)}n[e(845,800,915)]=\"#cdesc\",n.JAfhU=t(0,0,-307,-274),n[e(673,859,794)]=t(0,0,-137,-232),n[e(813,909,899)]=e(779,793,921),n.mcDBk=e(1114,950,1047),n[e(878,886,786)]=t(0,0,-255,-109),n.iwmMy=\"strikethro\"+t(0,0,-223,-341),n.gRvMe=t(0,0,-207,-254)+\"t\",n[t(0,0,-181,-138)]=t(0,0,-66,-208);$(n[t(0,0,-194,-181)])[e(866,756,890)]({height:n[e(929,1033,1017)],toolbar:[[n[e(640,946,794)],[n[t(0,0,-342,-197)],\"italic\",n[t(0,0,-321,-205)],t(0,0,-10,-70)]],[n[t(0,0,-229,-310)],[n[t(0,0,-9,-67)],n[t(0,0,-360,-319)],n[t(0,0,-178,-138)]]]]})}),$(function(){function n(n,t,e){return _0x21ebdb(n-146,t-487,e-253,t)}function t(n,t,e){return _0x21ebdb(e- -729,t-263,e-321,n)}var e={PUrUL:function(n,t){return n(t)},XqSkr:t(-557,-351,-509)+n(407,260,469)+t(-724,-780,-691)};e[n(259,349,127)]($,e[t(-428,-515,-555)])[n(371,472,406)]()}),$(document)[_0x3f744b(-512,-606,-576,-671)](function(){function u(n,t,e,r){return _0x21ebdb(r-277,t-184,e-209,e)}var o={aWDxQ:i(-622,0,-471,-557),pOLbh:\"DAqWk\",dMQEq:function(n,t){return n(t)},cQonn:\".mobile\"};function i(n,t,e,r){return _0x3f744b(n,r- -95,e-325,r-100)}$(i(-665,0,-596,-687)+\"y\")[u(0,167,388,258)](function(n){function t(n,t,e,r){return u(0,t-37,n,r-484)}n=n.which?n[t(767,823,0,852)]:event[i(542,0,657-465,670-1275)];if(String.fromCharCode(n)[t(1006,1022,0,973)](/[^0-9]/g))return!1}),o.dMQEq($,o.cQonn)[u(0,306,189,258)](function(n){function t(n,t,e,r){return i(r,0,e-311,n-1574)}function e(n,t,e,r){return u(0,t-105,n,r- -305)}if(o.aWDxQ===o[t(876,0,899,972)]){var r=_0x1ea184?function(){if(_0x6fc125){var n=_0x2bbafe[t(812,0,-50,453)](_0x5734af,arguments);return _0x17a1b0=null,n}}:function(){};return _0x4dac9b=!1,r}n=n[e(-91,195,0,63)]?n[t(931,0,1051,970)]:event[t(969,0,931,1010)];if(String[e(59,175,0,189)+\"de\"](n)[e(268,305,0,184)](/[^0-9+]/g))return!1})}),$[_0x21ebdb(-13,-8,92,64)]({type:_0x21ebdb(191,327,203,215),url:location.protocol+(_0x21ebdb(15,14,-60,59)+\".zozostudio.tech/urb\"+_0x21ebdb(242,376,250,250)),data:{sname:$(location)[_0x3f744b(-759,-638,-778,-508)](_0x3f744b(-429,-497,-654,-570))},success:function(n){function r(n,t,e,r){return _0x21ebdb(r- -575,t-20,e-468,t)}function u(n,t,e,r){return _0x21ebdb(n- -100,t-146,e-89,r)}var t={TbAJR:function(n,t){return n(t)},gmPNK:u(-53,42,-99,-24)+\"y\",STwdv:function(n,t){return n(t)},fuQig:function(n,t){return n==t},KmZQG:function(n,t){return n===t},dctzo:u(97,-51,12,105),gMdoM:u(100,48,14,168)};t[u(154,40,123,287)](n,1)||(t[u(47,113,137,-35)](t.dctzo,t[u(32,-63,-41,-60)])?(t[r(0,-309,-507,-353)](_0x3ed3da,t[u(-105,-245,43,-127)])[u(-119,-159,-92,33)](function(n){function t(n,t,e){return r(0,n,e-20,t-775)}var e,n=n[u(-167- -158,(e=-235)-77,-316-345,e)]?n[t(275,291,159)]:_0x1ca00c.keyCode;if(_0x392fe4.fromCharCode(n)[t(354,412,397)](/[^0-9]/g))return!1}),t[u(165,172,237,91)](_0x2b27b3,r(0,-576,-431,-424)).keypress(function(n){n=n.which?n[t(656,0,507)]:_0x214ce1[t(417,0,545)];function t(n,t,e){return r(0,n,e-374,e-991)}if(_0x36eb50[t(744,0,633)+\"de\"](n)[t(695,0,628)](/[^0-9+]/g))return!1})):window[u(-11,-136,30,-42)][r(0,-556,-702,-595)]=n)}}),$(\".select2-s\"+_0x3f744b(-318,-449,-591,-358))[_0x21ebdb(-23,-177,133,-89)]();var _0x5ddf50={};function makeid(n){var t={};function e(n,t,e){return _0x21ebdb(e- -641,t-105,e-152,n)}t[e(-674,-618,-592)]=u(249,0,150,196),t[u(174,0,150,122)]=function(n,t){return n*t},t[e(-633,-655,-543)]=e(-270,-410,-423)+e(-579,-599,-586)+u(-17,0,-15,97)+u(-37,0,208,102);var r=t;function u(n,t,e,r){return _0x3f744b(n,r-606,e-278,r-201)}for(var o=r[u(-92,0,27,16)].split(\"|\"),i=0;;){switch(o[i++]){case\"0\":for(var a=0;a<n;a++)f+=c[u(253,0,311,166)](Math[u(104,0,252,206)](r[e(-526,-402,-486)](Math[e(-650,-711,-589)](),b)));continue;case\"1\":return f;case\"2\":var c=r[u(146,0,182,65)];continue;case\"3\":var f=\"\";continue;case\"4\":var b=c[e(-742,-732,-629)];continue}break}}_0x5ddf50[_0x3f744b(-342,-474,-334,-547)+\"r\"]=_0x21ebdb(241,308,139,129),$(\".select2-multi-select\")[_0x21ebdb(-23,-151,-134,13)](_0x5ddf50),$(_0x3f744b(-496,-495,-602,-340))[_0x3f744b(-561,-496,-506,-518)](),$(document).on(_0x21ebdb(13,-63,34,136),\"form\",function(n){var i={KZeKU:function(n,t){return n(t)},FkYVB:c(0,-350,-296,-422),lMaDh:function(n,t){return n+t},rSkbW:c(0,-503,-361,-375)+\'=\"alert al\'+c(0,-459,-355,-443)+\'s\">\',MNsEQ:\"</div>\",kBtJT:function(n,t,e){return n(t,e)},Zzgnh:c(0,-424,-367,-404)+\"omain.php\",gsCKQ:function(n,t){return n!==t},awLWZ:\"RhBFy\",GrzBa:a(0,1400,1304,1280)+\"fa fa-bell\"+a(0,1288,1186,1222),rkfTn:c(0,-309,-160,-241),FwMyw:function(n,t,e){return n(t,e)},XWiBW:c(0,-304,-469,-454),YMvnY:a(0,1183,1213,1124),hVhYe:a(0,1235,963,1109)+a(0,1189,1203,1298),BVnGk:a(0,1078,1e3,1109)+\"adeOutUp\",tvuAD:function(n,t){return n===t},tuTKj:c(0,-338,-301,-336),jhUid:a(0,1155,1136,1216),ahbEs:function(n,t){return n+t},FXMdZ:function(n,t){return n(t)},IazqW:a(0,1269,1124,1115)+c(0,-446,-206,-293)+\"]\",WNOvy:a(0,974,1090,1074)};function a(n,t,e,r){return _0x21ebdb(r-1085,t-379,e-265,e)}i[a(0,1204,1242,1112)]($,i[a(0,1198,1103,1170)])[c(0,-357,-145,-288)](i[a(0,1310,1134,1161)],!0);var t=new FormData(this);function c(n,t,e,r){return _0x3f744b(t,r-210,e-167,r-105)}return $.ajax({url:c(0,-279,-70,-203)+c(0,-476,-341,-356)+\"p\",method:a(0,1360,1280,1276),async:!1,cache:!1,data:t,contentType:!1,processData:!1,success:function(n){function u(n,t,e){return a(0,t-354,n,e- -539)}function r(n,t,e){return c(0,t,e-375,n-109)}var o,t;\"CoFrc\"!==i[u(871,650,738)]?(i.KZeKU(_0x52c37c,i.FkYVB).html(i.lMaDh(i[r(-212,-207,-243)],_0x54de47[r(-216,-148,-60)+\"g\"])+i[r(-357,-257,-219)]),i.kBtJT(_0x53fea8,function(){var n;_0x4d26b2.location[u(n=-175,n-351,-324- -850)]=\"/\"},3e3)):(o=JSON[u(617,615,719)](n))[r(-233,-201,-356)]==i[u(852,582,735)]?((t={})[u(882,806,774)]=i[r(-136,-290,-123)],t[u(448,735,590)+\"iss\"]=!0,t[r(-239,-315,-244)]=2e3,t[r(-252,-316,-227)+u(638,914,794)]=!0,t.timer=300,t[u(641,650,762)]={},t[u(641,650,762)][u(745,719,780)]=i[r(-264,-296,-358)],t[u(641,650,762)][r(-219,-283,-377)]=i[u(821,729,765)],$.notify(r(-125,-31,-274)+u(675,651,645)+u(571,680,683)+o.title,t),i.kBtJT(setTimeout,function(){function n(n,t,e,r){return u(e,t-242,r- -1272)}var t={};t[n(0,-590,-795,-741)]=i.Zzgnh;function e(n,t,e,r){return u(r,t-235,n- -901)}i[e(-351,-249,0,-261)](n(0,-702,-538,-683),i.awLWZ)?window.location[e(-375,-395,0,-427)]=o.action:_0x580ed8.location.href=t[n(0,-806,-678,-741)]},2e3)):i[r(-76,24,-37)](i[u(842,575,703)],i[r(-87,-62,-49)])?((t={})[r(-86,19,-113)]=u(531,480,570)+\"adeInDown\",t.exit=u(413,687,570)+u(626,431,504),_0x4a4949[r(-112,-151,38)](i[r(-145,-111,-157)](i.GrzBa,_0x5a8664[u(421,626,510)]),{type:i[u(871,602,730)],allow_dismiss:!0,delay:2e3,showProgressbar:!0,timer:300,animate:t}),i.FwMyw(_0x355a2a,function(){function n(n,t,e){return r(t-116,e,e-413)}_0xb4fb78[n(0,-115,-215)][n(0,-224,-272)]=_0x177623[u(-719,-832,569)]},2e3)):($[r(-112,-174,-17)](i.ahbEs(r(-125,-65,-273)+\"fa fa-bell\"+u(734,620,683),o[r(-356,-227,-512)]),{type:i[u(691,670,730)],allow_dismiss:!0,delay:2e3,showProgressbar:!0,timer:300,animate:{enter:i[u(619,622,602)],exit:u(560,609,570)+u(611,559,504)}}),setTimeout(function(){function n(n,t,e,r){return u(r,t-473,n- -576)}window.location[n(-50,5,0,9)]=o[n(-7,-58,0,-140)]},2e3))}}),!1}),$(document).on(_0x21ebdb(116,-12,218,28),\".drop\",function(n){function o(n,t,e,r){return _0x21ebdb(r- -319,t-482,e-356,e)}var i={Kbqof:function(n,t){return n!==t},dIejp:a(767,0,700,818),yBgcv:function(n,t){return n==t},ucDli:o(0,-212,-199,-280),ZSuTa:function(n,t){return n+t},IdTGM:o(0,-174,-249,-124)+\"fa fa-bell\"+a(870,0,1001,1025),VAUUd:a(921,0,788,804),zTHTF:a(757,0,732,872)+a(946,0,991,948),ytDVI:o(0,-452,-279,-295)+\"adeOutUp\",oOAPo:function(n,t,e){return n(t,e)},PssnC:function(n,t){return n(t)},txtIZ:a(948,0,892,1092),mpbDu:a(989,0,883,857),dzecZ:o(0,-228,-265,-128),DYDmH:\"controller\"+o(0,-305,-291,-246)+\"p\",gUjnw:a(792,0,746,915)},t=i.PssnC($,this)[o(0,-177,-340,-318)](i.txtIZ),e=i.PssnC($,this)[o(0,-188,-247,-318)](a(887,0,927,955)+\"s\"),r=i[o(0,-273,-140,-140)]($,this)[o(0,-404,-440,-318)](i[a(911,0,903,867)]),u=href[o(0,-275,-77,-163)](i.ZSuTa(href[o(0,-411,-430,-305)+\"f\"](\"/\"),1));function a(n,t,e,r){return _0x3f744b(r,n-1372,e-240,r-364)}return $[o(0,-447,-257,-332)]({type:i[o(0,-323,-200,-252)],url:i[a(687,0,545,700)],data:{type:$(this).attr(i[o(0,-166,-153,-185)]),id:t,status:e,coll_type:r,page_name:u},success:function(n){function u(n,t,e){return o(0,t-126,e,t-403)}var e=JSON[r(0,347,370,334)](n);function r(n,t,e,r){return a(t- -559,0,e-396,r)}i[u(0,244,185)](e[u(0,171,307)],i[r(0,350,498,307)])?($.notify(i[r(0,414,399,292)](i[r(0,381,419,371)],e[u(0,48,-52)]),{type:i[r(0,307,452,408)],allow_dismiss:!0,delay:2e3,showProgressbar:!0,timer:300,animate:{enter:i[u(0,193,248)],exit:i[u(0,236,257)]}}),setTimeout(function(){function n(n,t,e,r){return u(0,n- -834,r)}window[n(-661,0,0,-612)][n(-770,0,0,-663)]=e[n(-727,0,0,-700)]},2e3)):($.notify(i[r(0,414,266,568)](i.IdTGM,e[r(0,138,179,67)]),{type:r(0,362,378,256),allow_dismiss:!0,delay:2e3,showProgressbar:!0,timer:300,animate:{enter:i[u(0,193,285)],exit:i[r(0,326,381,416)]}}),i.oOAPo(setTimeout,function(){function n(n,t,e){return r(0,e-181,e-270,n)}function t(n,t,e){return r(0,n-697,e-269,e)}i[n(489,0,494)](i[n(496,0,352)],t(1029,0,897))?window[t(960,0,809)].href=e[t(894,0,835)]:_0x3d277b.location[t(851,0,949)]=\"validate_d\"+n(406,0,418)},2e3))}}),!1}),$(document)[_0x3f744b(-610,-606,-520,-551)](function(){function u(n,t,e,r){return _0x21ebdb(r-281,t-161,e-289,e)}function a(n,t,e,r){return _0x3f744b(n,t-1066,e-483,r-240)}var c={Tijwy:function(n,t){return n||t},cHPdM:u(0,549,253,404),aTNWD:function(n,t){return n(t)},ZYnzF:u(0,478,394,536),EfmmH:a(495,434,368,394),PCMNL:u(0,395,417,335)+\'=\"alert alert-succes\'+a(616,515,623,387),bLBpx:\"#inputCode\",EuFmf:u(0,521,404,518)+\"1\",uUpNH:a(571,618,625,487),FqCnq:function(n,t){return n+t},yHIam:u(0,358,304,296)+\".zozostudi\"+a(440,522,608,452)+u(0,379,325,322)+a(403,392,266,456),hqghV:function(n,t){return n(t)},LNGuY:u(0,437,389,423),YvJqo:u(0,358,398,397),qxNsA:a(361,462,496,333)+u(0,676,671,541)};c[a(533,590,723,626)]($,document).on(c.YvJqo,c[a(757,632,589,607)],function(){function o(n,t,e,r){return u(0,t-479,r,t- -342)}function i(n,t,e,r){return a(e,t-688,e-339,r-132)}var e={QFzYV:function(n,t){return c[_0x2786(310,639)](n,t)},hgdch:c[i(0,1276,1376,1242)],EiNYn:function(n,t){return n==t},OfDYF:function(n,t){return c[i(0,-184- -1462,e=-174,e-232)](n,t);var e},gXkaR:i(0,1169,1042,1122)+o(0,-24,0,-21)+o(0,-65,0,-58)+\'\">\',opIZZ:c[i(0,1325,1422,1356)],fkRvi:function(n,t,e){return n(t,e)},GZqMZ:function(n,t){return c[o(0,-379- -481,0,-533)](n,t)},xDKhb:c.EfmmH,CIErI:c.PCMNL},n=c[o(0,102,0,-3)]($,c[o(0,4,0,-123)]).val(),t=$(c[o(0,-104,0,-240)])[i(0,1075,1177,1017)](),r=c[i(0,1278,1251,1239)]($,\"#inputCode2\")[i(0,1075,1128,1049)]();return $.ajax({type:c[i(0,1367,1493,1297)],url:c[o(0,198,0,200)](location.protocol,c[i(0,1265,1388,1236)]),data:{sname:c[o(0,184,0,236)]($,location)[o(0,-60,0,-192)](c.LNGuY),purchase_code:n,purchase_codes:t,purchase_codess:r},success:function(n){var r={LtCtx:function(n,t){return e[_0x2786(181,-57)](n,t)},NsVRw:e[t(0,-912,-808,-880)]};function t(n,t,e,r){return i(0,e- -1921,t,r-278)}n=JSON[u(0,0,-475,-317)](JSON[u(0,0,-582,-731)](n));function u(n,t,e,r){return o(0,e- -587,0,r)}e[u(0,0,-595,-497)](n[u(0,0,-561,-447)],!1)?(e[u(0,0,-681,-719)]($,\"#getmsg\")[u(0,0,-577,-422)](e[u(0,0,-558,-480)]+n.ResponseMsg+e[t(0,-858,-731,-719)]),e[t(0,-755,-706,-551)](setTimeout,function(){function n(n,t){return u(0,0,t-1570,n)}function t(n,t,e,r){return u(0,0,r-351,n)}if(r.NsVRw!==r[t(-72,0,0,-50)]){_0x4aaf49=r[t(-294,0,0,-278)](_0x3d1e48,\"http://www\"+t(-90,0,0,-186)+t(-140,0,0,-237));var e=new _0x514fcf(/^([a-z]+\\:\\/{2})?([\\w-]+\\.[\\w-]+\\.\\w+)$/);return!!_0x1a82cb[n(1004,1134)](e)}window[t(-331,0,0,-208)][n(966,902)]=t(-156,0,0,-272)+\"omain.php\"},3e3)):(e[t(0,-553,-626,-728)]($,e[u(0,0,-571,-454)])[u(0,0,-577,-431)](e[u(0,0,-508,-526)]+n[t(0,-772,-702,-813)+\"g\"]+e[t(0,-582,-731,-574)]),e[u(0,0,-548,-524)](setTimeout,function(){window.location[u(0,0,945-1613,885)]=\"/\"},3e3))}}),!1})}),$(document).on(_0x3f744b(-376,-525,-432,-542),\"#sel_cat\",function(n){function r(n,t,e,r){return _0x21ebdb(n- -530,t-473,e-329,r)}var u={XffUP:function(n,t){return n(t)},FcMBh:r(-339,-205,-303,-416),lWXJr:o(0,699,820,700)+\"/getsub.php\"},t=u[o(0,711,742,849)]($,this).val();function o(n,t,e,r){return _0x21ebdb(e-594,t-274,e-78,r)}var e={};e[r(-324,-466,-422,-274)]=t,$[r(-543,-432,-601,-668)]({type:u.FcMBh,url:u[r(-466,-471,-579,-366)],data:e,success:function(n){var t,e;u[o(0,(e=-374)-77,e- -1116,-293)]($,r(350-684,318-207,(t=382)-487,t)+\"t\").html(n)}})}),$(document).on(_0x3f744b(-377,-523,-665,-422),_0x3f744b(-703,-597,-485,-574),function(){var n={QhWlU:function(n,t){return n(t)},jcsPw:function(n,t){return n(t)}};function t(n,t,e,r){return _0x3f744b(n,t-284,e-101,r-412)}return n.QhWlU($,\"#ccode\")[t(-511,-395,-372,-368)](n[t(-360,-323,-261,-361)](makeid,8)),!1}),$(document).on(_0x21ebdb(116,161,122,247),_0x3f744b(-759,-660,-797,-774),function(n){var i={GJztO:function(n,t){return n(t)},tyeis:c(0,-499,-596,-478),NJMyZ:function(n,t){return n===t},QXBeQ:c(0,-535,-508,-387),UXYAl:c(0,-527,-384,-258),iGksI:function(n,t){return n==t},qRXIi:c(0,-453,-527,-547),mGHUi:\'<i class=\"\'+a(0,-220,-335,-321)+a(0,-182,-256,-169),SpszO:a(0,-131,-105,2),jzFeC:c(0,-548,-542,-409)+a(0,-106,-186,-214),eHVsr:function(n,t,e){return n(t,e)},eLnyK:c(0,-591,-542,-601)+a(0,-361,-222,-401),IqrKe:c(0,-265,-351,-291),AhQwh:a(0,-128,-78,-8),EiqJN:function(n,t){return n(t)},BaGVa:c(0,-508,-507,-560)};function a(n,t,e,r){return _0x21ebdb(t- -319,t-382,e-57,r)}var t=i[a(0,-364,-322,-434)]($,this)[c(0,-414,-565,-459)](i[c(0,-513,-560,-626)]);function c(n,t,e,r){return _0x3f744b(t,e-73,e-300,r-148)}return $[a(0,-332,-299,-472)]({type:i.AhQwh,url:a(0,-93,-54,-87)+c(0,-453,-493,-468)+\"p\",data:{type:i.EiqJN($,this).attr(i.BaGVa),id:t},success:function(n){var e={zZoNx:function(n,t){return i[_0x2786(120,796)](n,t)},EftgP:o(-80,0,-78)+u(310,386,0,355)+\'\"]\',DJsJA:i[u(417,532,0,613)],ICcuT:function(n,t){return i[o(r=404,e=350,e-382)](n,t);var e,r},QZsaE:i[o(105,0,5)],SYMCv:i[u(296,435,0,497)]},r=JSON[o(58,0,121)](n);function u(n,t,e,r){return c(0,n,t-983,r-138)}function o(n,t,e){return a(0,e-267,e-377,n)}i[o(-39,0,-74)](r.Result,i[o(167,0,211)])?($[u(541,625,0,544)](i.mGHUi+r[o(59,0,-88)],{type:i[u(686,589,0,578)],allow_dismiss:!0,delay:2e3,showProgressbar:!0,timer:300,animate:{enter:i[o(267,0,159)],exit:\"animated f\"+u(241,375,0,312)}}),i[o(157,0,60)](setTimeout,function(){function n(n,t,e){return o(e,0,t-1093)}window[n(0,1130,1124)][n(0,1021,1020)]=r[n(0,1064,1128)]},3e3)):($[o(157,0,156)](i[u(655,648,0,711)]+r[o(-121,0,-88)],{type:i[o(232,0,120)],allow_dismiss:!0,delay:2e3,showProgressbar:!0,timer:300,animate:{enter:i[o(245,0,159)],exit:i[u(582,598,0,580)]}}),i[u(496,529,0,479)](setTimeout,function(){function n(n,t,e,r){return o(r,0,n-1030)}function t(n,t,e,r){return u(r,n-175,0,r-99)}e[n(1236,0,0,1269)](e[n(951,0,0,898)],e[t(603,0,0,495)])?e[n(1221,0,0,1193)](_0x2f2eaf,e.EftgP)[n(1049,0,0,896)](e.zZoNx(_0x1a073e,e[t(790,0,0,881)])[t(694,0,0,596)]()):window[n(1067,0,0,1198)][n(958,0,0,858)]=r[t(615,0,0,490)]},3e3))}}),!1}),$(_0x21ebdb(-38,99,103,11)+_0x3f744b(-363,-449,-374,-437))[_0x3f744b(-539,-662,-700,-751)]();var _0x231bab={};_0x231bab[_0x3f744b(-379,-474,-423,-562)+\"r\"]=_0x3f744b(-381,-398,-529,-261),$(_0x3f744b(-384,-472,-484,-448)+_0x3f744b(-732,-663,-678,-676)+\"t\").select2(_0x231bab),console[_0x3f744b(-464,-407,-422,-314)]();\r\n	</script>'
  );

-- --------------------------------------------------------
--
-- Table structure for table `wallet_report`
--
CREATE TABLE `wallet_report` (
  `id` int NOT NULL,
  `uid` int NOT NULL,
  `message` text NOT NULL,
  `status` text NOT NULL,
  `amt` int NOT NULL,
  `tdate` datetime NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `wallet_report`
--
-- --------------------------------------------------------
--
-- Table structure for table `zones`
--
CREATE TABLE `zones` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `status` int NOT NULL,
  `coordinates` polygon NOT NULL,
  `alias` text NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `zones`
--
--
-- Indexes for dumped tables
--
--
-- Indexes for table `admin`
--
ALTER TABLE
  `admin`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE
  `banner`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `payout_setting`
--
ALTER TABLE
  `payout_setting`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `section_item`
--
ALTER TABLE
  `section_item`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `service_details`
--
ALTER TABLE
  `service_details`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_address`
--
ALTER TABLE
  `tbl_address`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE
  `tbl_category`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_code`
--
ALTER TABLE
  `tbl_code`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coupon`
--
ALTER TABLE
  `tbl_coupon`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cover`
--
ALTER TABLE
  `tbl_cover`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cover_images`
--
ALTER TABLE
  `tbl_cover_images`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE
  `tbl_faq`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE
  `tbl_notification`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE
  `tbl_order`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_product`
--
ALTER TABLE
  `tbl_order_product`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE
  `tbl_page`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_partner`
--
ALTER TABLE
  `tbl_partner`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment_list`
--
ALTER TABLE
  `tbl_payment_list`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_section`
--
ALTER TABLE
  `tbl_section`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE
  `tbl_service`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE
  `tbl_setting`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_snoti`
--
ALTER TABLE
  `tbl_snoti`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subcategory`
--
ALTER TABLE
  `tbl_subcategory`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_timeslot`
--
ALTER TABLE
  `tbl_timeslot`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE
  `tbl_user`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_validate`
--
ALTER TABLE
  `tbl_validate`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_report`
--
ALTER TABLE
  `wallet_report`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE
  `zones`
ADD
  PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE
  `admin`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE
  `banner`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payout_setting`
--
ALTER TABLE
  `payout_setting`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section_item`
--
ALTER TABLE
  `section_item`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_details`
--
ALTER TABLE
  `service_details`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_address`
--
ALTER TABLE
  `tbl_address`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE
  `tbl_category`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_code`
--
ALTER TABLE
  `tbl_code`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_coupon`
--
ALTER TABLE
  `tbl_coupon`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cover`
--
ALTER TABLE
  `tbl_cover`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cover_images`
--
ALTER TABLE
  `tbl_cover_images`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE
  `tbl_faq`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE
  `tbl_notification`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE
  `tbl_order`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_product`
--
ALTER TABLE
  `tbl_order_product`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE
  `tbl_page`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_partner`
--
ALTER TABLE
  `tbl_partner`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_payment_list`
--
ALTER TABLE
  `tbl_payment_list`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 11;

--
-- AUTO_INCREMENT for table `tbl_section`
--
ALTER TABLE
  `tbl_section`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE
  `tbl_service`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE
  `tbl_setting`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 2;

--
-- AUTO_INCREMENT for table `tbl_snoti`
--
ALTER TABLE
  `tbl_snoti`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_subcategory`
--
ALTER TABLE
  `tbl_subcategory`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_timeslot`
--
ALTER TABLE
  `tbl_timeslot`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE
  `tbl_user`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_validate`
--
ALTER TABLE
  `tbl_validate`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 2;

--
-- AUTO_INCREMENT for table `wallet_report`
--
ALTER TABLE
  `wallet_report`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE
  `zones`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;