-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2018 at 01:53 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ban_hang_l`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `html` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `html`) VALUES
(1, '<span style="font-size:36px;cursor:default" class="l_31">Quần &Aacute;o<br />\r\n</span>');

-- --------------------------------------------------------

--
-- Table structure for table `binh_luan_lllll`
--

CREATE TABLE IF NOT EXISTS `binh_luan_lllll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noi_dung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `loai_menu` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi_so` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `so_lan_xoa` int(255) NOT NULL,
  `ngay_binh_luan` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `binh_luan_lllll`
--


-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE IF NOT EXISTS `footer` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `html` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `html`) VALUES
(1, '<style type="text/css">a.llll:hover{color:red;}</style><br />\r\n<table border="0" width="990">\r\n    <tbody>\r\n        <tr>\r\n            <td style="text-align: right;" width="445"><strong>Email :</strong></td>\r\n            <td width="445">Email g&igrave; đ&oacute;</td>\r\n        </tr>\r\n        <tr>\r\n            <td style="text-align: right;"><strong>Điện thoại :</strong></td>\r\n            <td>Số điện thoại g&igrave; đ&oacute;</td>\r\n        </tr>\r\n        <tr>\r\n            <td style="text-align: right;"><strong>Địa chỉ :</strong></td>\r\n            <td>Địa chỉ g&igrave; đ&oacute;</td>\r\n        </tr>\r\n        <tr>\r\n            <td style="text-align:right"><strong>T&ecirc;n code web : </strong></td>\r\n            <td><a href="http://lamwebbanhang.blogspot.com/2017/07/code-web-ban-hang-e-lo-code-php.html" target="_blank" class="llll">Code web b&aacute;n h&agrave;ng E lờ</a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<br />');

-- --------------------------------------------------------

--
-- Table structure for table `hinh_anh_knl`
--

CREATE TABLE IF NOT EXISTS `hinh_anh_knl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `thuoc_san_pham` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `thuoc_bai_viet` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `hinh_anh_knl`
--

INSERT INTO `hinh_anh_knl` (`id`, `ten`, `thuoc_san_pham`, `thuoc_bai_viet`) VALUES
(6, '66.gif', '', ''),
(7, 'at-a4.gif', '', ''),
(11, 'e36.jpg', '', ''),
(10, 'qn.jpg', '', ''),
(12, 'l_l_l_l_l.gif', '', ''),
(18, '98.gif', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `khung_html`
--

CREATE TABLE IF NOT EXISTS `khung_html` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vi_tri` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `khung_html`
--

INSERT INTO `khung_html` (`id`, `vi_tri`, `ten`, `noi_dung`) VALUES
(1, '1', 'Thông tin liên hệ', 'Nội dung th&ocirc;ng tin li&ecirc;n hệ<br />'),
(2, '2', 'Hướng dẫn mua hàng', 'Nội dung hướng dẫn mua h&agrave;ng <br />'),
(3, '3', 'Khung html 3', 'Nội dung khung html 3'),
(4, '4', 'Liên kết web', '<style type="text/css" >\r\na.lll:hover{color:red;}\r\n</style>\r\nBạn có thể tải code web bán hàng <b>E lờ</b> tại liên kết tải code phía dưới : <br><br>\r\n\r\n<a href="http://lamwebbanhang.blogspot.com/2017/07/code-web-ban-hang-e-lo-code-php.html" target="_blank" class="lll" >Liên kết tải code</a>');

-- --------------------------------------------------------

--
-- Table structure for table `luot_truy_cap`
--

CREATE TABLE IF NOT EXISTS `luot_truy_cap` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `luot_truy_cap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `moc_thoi_gian` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `thoi_gian` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `luot_truy_cap`
--

INSERT INTO `luot_truy_cap` (`id`, `luot_truy_cap`, `mo_ta`, `moc_thoi_gian`, `thoi_gian`) VALUES
(1, '0', 'Tổng truy cập', '', ''),
(2, '0', 'Trong ngày', '1500447879', '3'),
(3, '59', 'Trong 3 ngày', '1500443383', ''),
(4, '59', 'Trong 10 ngày', '1500443383', ''),
(5, '0', 'Trong tháng', '1500443383', '2'),
(6, '0', 'Trong năm', '', '2018');

-- --------------------------------------------------------

--
-- Table structure for table `menu_ngang`
--

CREATE TABLE IF NOT EXISTS `menu_ngang` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `loai` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `thuoc_menu` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_mo_ta` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sap_xep` int(255) NOT NULL,
  `bat_tat_binh_luan` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `menu_ngang`
--

INSERT INTO `menu_ngang` (`id`, `ten`, `link`, `loai`, `thuoc_menu`, `noi_dung_mo_ta`, `noi_dung`, `sap_xep`, `bat_tat_binh_luan`) VALUES
(1, 'Giới thiệu', '', 'bai_viet_mot_tin', '', '', '<br />\r\nNội dung phần giới thiệu<br />\r\n<br />\r\nNội dung phần giới thiệu <br />\r\n<br />\r\nNội dung phần giới thiệu <br />\r\n<br />\r\nNội dung phần giới thiệu <br />\r\n<br />', 0, 'bat'),
(4, 'Quần áo nữ', '', 'san_pham', '', 'Nội dung mô tả danh mục quần áo nam', '<br />', 0, 'tat'),
(5, 'Giầy dép', '', 'san_pham', '', '', '', 0, ''),
(14, 'Hướng dẫn mua hàng', '', 'bai_viet_mot_tin', '', '', 'Nội dung hướng dẫn mua h&agrave;ng c110<br />', 0, 'bat'),
(20, 'Tin tức', '', 'tin_tuc', '', 'Nội dung mô tả menu tin tức', '', 0, ''),
(21, 'Áo nữ', '', 'san_pham', '4', '', '<br />', 1, 'tat'),
(22, 'Quần nữ', '', 'san_pham', '4', '', '<br />', 2, 'tat'),
(23, 'Kiểu 1', '', 'san_pham', '5', '', '', 0, ''),
(24, 'Kiểu 2', '', 'san_pham', '5', '', '', 0, ''),
(25, 'Áo thun', '', 'san_pham', '4', '', '', 0, ''),
(26, 'Kích cỡ nhỏ', '', 'san_pham', '22', '', '', 0, ''),
(27, 'Kích cỡ vừa', '', 'san_pham', '22', '', '', 0, ''),
(29, 'Trong nước', '', 'san_pham', '27', '', '', 0, ''),
(30, 'Nước ngoài', '', 'san_pham', '27', '', '', 0, ''),
(31, 'Trong nước', '', 'san_pham', '24', '', '', 1, ''),
(32, 'Nước ngoài', '', 'san_pham', '24', '', '', 0, ''),
(33, 'Kiểu 1', '', 'san_pham', '21', '', '', 0, ''),
(34, 'Kiểu 2', '', 'san_pham', '21', '', '', 0, ''),
(35, 'Kiểu 3', '', 'san_pham', '21', '', '', 0, ''),
(36, 'Kiểu 1.1', '', 'san_pham', '33', '', '', 0, ''),
(37, 'Kiểu 1.2', '', 'san_pham', '33', '', '', 0, ''),
(48, 'Danh mục 9', '', 'tin_tuc', '20', '', '<br />', 38, ''),
(49, 'Danh mục 10', '', 'tin_tuc', '20', '', '<br />', 49, ''),
(50, 'Quần thun', '', 'san_pham', '4', '', '<br />', 50, '');

-- --------------------------------------------------------

--
-- Table structure for table `quang_cao_phai`
--

CREATE TABLE IF NOT EXISTS `quang_cao_phai` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `file` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `rong` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `cao` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `quang_cao_phai`
--


-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE IF NOT EXISTS `san_pham` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `gia_ban` int(255) NOT NULL,
  `noi_dung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thuoc_menu` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `so_luong_mua` int(255) NOT NULL,
  `trang_chu` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `sap_xep_trang_chu` int(255) NOT NULL,
  `loai` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `ksp1` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `sx_ksp1` int(255) NOT NULL,
  `ksp2` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `sx_ksp2` int(255) NOT NULL,
  `ksp3` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `sx_ksp3` int(255) NOT NULL,
  `ksp4` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `sx_ksp4` int(255) NOT NULL,
  `loai_gia` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `gb_vb` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_ngan` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh_pnd` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sap_xep` int(255) NOT NULL,
  `bat_tat_binh_luan` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=379 ;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten`, `hinh_anh`, `gia_ban`, `noi_dung`, `thuoc_menu`, `so_luong_mua`, `trang_chu`, `sap_xep_trang_chu`, `loai`, `ksp1`, `sx_ksp1`, `ksp2`, `sx_ksp2`, `ksp3`, `sx_ksp3`, `ksp4`, `sx_ksp4`, `loai_gia`, `gb_vb`, `noi_dung_ngan`, `hinh_anh_pnd`, `sap_xep`, `bat_tat_binh_luan`) VALUES
(328, 'Sản phẩm 5', '16.jpg', 65000, 'Nội dung 5', '21', 0, 'co', 13, 'menu_ngang', '', 0, 'co', 0, '', 0, '', 0, '', '', '<br />', '', 3, 'bat'),
(329, 'Sản phẩm 6', '3.jpg', 75000, 'Nội dung 6', '21', 0, 'co', 6, 'menu_ngang', '', 0, 'co', 1, '', 0, '', 0, '', '', '<br />', '', 2, 'bat'),
(330, 'Sản phẩm 7', '5.jpg', 85000, 'Nội dung 7', '21', 0, 'co', 8, 'menu_ngang', '', 0, '', 0, '', 0, '', 0, '', '', '<br />', '', 9, 'bat'),
(339, 'Sản phẩm 16', '12.jpg', 70000, 'Nội dung sản phẩm<br />', '36', 0, 'co', 3, 'menu_ngang', '', 0, '', 0, '', 0, '', 0, '', '', '<br />', '', 18, 'bat'),
(340, 'Sản phẩm 17', '13.jpg', 70000, 'Nội dung sản phẩm<br />', '36', 0, 'co', 5, 'menu_ngang', 'co', 0, '', 0, '', 0, '', 0, '', '', '<br />', '', 17, 'bat'),
(342, 'Sản phẩm 19', '14.jpg', 45000, 'Nội dung sản phẩm<br />', '36', 0, 'co', 13, 'menu_ngang', '', 0, 'co', 0, '', 0, '', 0, '', '', '<br />', '', 19, 'bat'),
(343, 'sản phẩm 20', '15.jpg', 75000, 'Nội dung sản phẩm<br />', '37', 0, 'co', 4, 'menu_ngang', '', 0, '', 0, '', 0, '', 0, '', '', '<br />', '', 0, 'bat'),
(344, 'Sản phẩm 21', '8.jpg', 85000, 'Nội dung sản phẩm<br />', '37', 0, 'co', 3, 'menu_ngang', '', 0, '', 0, '', 0, '', 0, '', '', '<br />', '', 0, 'bat'),
(345, 'Sản phẩm 22', '7.jpg', 95000, 'Nội dung sản phẩm<br />', '37', 0, 'co', 4, 'menu_ngang', '', 0, '', 0, '', 0, '', 0, '', '', '<br />', '', 0, 'bat'),
(346, 'Sản phẩm 23', '9.jpg', 95000, 'Nội dung sản phẩm<br />', '37', 0, 'co', 12, 'menu_ngang', '', 0, '', 0, '', 0, '', 0, '', '', '<br />', '', 0, 'bat'),
(347, 'Sản phẩm 24', '6.jpg', 95000, 'Nội dung sản phẩm<br />', '35', 0, 'co', 1, 'menu_ngang', '', 0, '', 0, '', 0, '', 0, '', '', '<br />', '', 0, 'bat'),
(356, 'Sản phẩm 1', '17.jpg', 95000, 'Nội dung<br />', '4', 0, 'khong', 29, 'menu_ngang', '', 0, '', 0, '', 0, '', 0, '', '', '<br />', '', 1, 'bat'),
(357, 'Giầy 1', 'gd-a1.gif', 125000, 'Nội dung sản phẩm giầy', '24', 0, 'khong', 31, 'menu_ngang', '', 0, '', 0, '', 0, '', 0, '', '', '', '', 1, 'bat'),
(358, 'Giầy 2', 'gd-a2.gif', 125000, 'Nội dung sản phẩm giầy', '24', 0, 'khong', 32, 'menu_ngang', '', 0, '', 0, '', 0, '', 0, '', '', '', '', 2, 'bat'),
(359, 'Giầy 3', 'gd-a3.gif', 135000, 'Nội dung sản phẩm giầy', '24', 0, 'khong', 33, 'menu_ngang', '', 0, '', 0, '', 0, '', 0, '', '', '', '', 3, 'bat'),
(360, 'Giầy 4', 'gd-a4.gif', 135000, 'Nội dung sản phẩm giầy', '24', 0, 'khong', 36, 'menu_ngang', '', 0, '', 0, '', 0, '', 0, '', '', '', '', 4, 'bat'),
(362, 'Sản phẩm g1', '1.jpg', 85000, 'nội dung <br />\r\n<br />\r\nnội dung <br />\r\n<br />\r\nnội dung <br />\r\n<br />\r\nnội dung <br />\r\n<br />\r\nnội dung <br />\r\n<br />\r\nnội dung <br />\r\n<br />\r\nnội dung <br />\r\n<br />\r\nnội dung <br />\r\n<br />\r\nnội dung <br />\r\n<br />\r\nnội dung', '4', 0, 'co', 9, 'menu_ngang', '', 0, 'co', 0, '', 0, '', 0, '', '', 'Nội dung ngắn g&igrave; đ&oacute; <br />', '', 0, 'bat'),
(366, 'Sản phẩm g2', '11.jpg', 0, 'Sản phẩm g2<br />', '21', 0, 'co', 13, 'menu_ngang', 'co', 366, '', 366, '', 366, '', 366, 'lien_he', '', 'g2<br />', '', 371, 'bat'),
(367, 'Sản phẩm g3', '2.jpg', 90000, '&Aacute;o thun g3<br />', '25', 0, 'khong', 17, 'menu_ngang', '', 367, '', 367, 'co', 367, '', 367, '', '', 'noi dung ngan gi do<br />', '', 0, 'bat'),
(368, 'Sản phẩm e1', '4.jpg', 80000, 'e1<br />', '34', 0, 'khong', 19, 'menu_ngang', '', 368, '', 368, '', 368, '', 368, '', '', '<br />', '', 0, 'bat'),
(369, 'Sản phẩm e2', '10.jpg', 95000, 'Sản phẩm e2<br />', '34', 0, 'co', 12, 'menu_ngang', '', 369, '', 369, '', 369, 'co', 369, 'lien_he', '', 'noi dung ngan gi do<br />', '', 0, 'bat'),
(372, 'Giầy 5', 'gd-a5.gif', 80000, 'nội dung sản phẩm<br />', '24', 0, 'khong', 41, 'menu_ngang', '', 370, '', 370, '', 370, '', 370, '', '', '<br />', '', 370, 'bat'),
(375, 'Hàng 17', '17.jpg', 70000, '<br />', '4', 0, 'co', 15, 'menu_ngang', '', 373, '', 373, '', 373, '', 373, '', '', '<br />', '', 373, 'bat'),
(376, 'Hàng 18', '18.jpg', 80000, '<br />', '4', 0, 'co', 18, 'menu_ngang', '', 376, '', 376, '', 376, '', 376, '', '', '<br />', '', 376, 'bat'),
(377, 'Hàng 19', '19.jpg', 90000, '<br />', '4', 0, 'co', 14, 'menu_ngang', '', 377, '', 377, '', 377, '', 377, '', '', '<br />', '', 377, 'bat'),
(378, 'Hàng 20', '20.jpg', 90000, '<br />', '4', 0, 'co', 16, 'menu_ngang', '', 378, '', 378, '', 378, '', 378, '', '', '<br />', '', 378, 'bat');

-- --------------------------------------------------------

--
-- Table structure for table `so_nguoi_online`
--

CREATE TABLE IF NOT EXISTS `so_nguoi_online` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `time` int(255) NOT NULL,
  `ky_danh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=42 ;

--
-- Dumping data for table `so_nguoi_online`
--

INSERT INTO `so_nguoi_online` (`id`, `time`, `ky_danh`) VALUES
(41, 1500438661, '');

-- --------------------------------------------------------

--
-- Table structure for table `thong_so`
--

CREATE TABLE IF NOT EXISTS `thong_so` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia_tri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=55 ;

--
-- Dumping data for table `thong_so`
--

INSERT INTO `thong_so` (`id`, `ma`, `gia_tri`) VALUES
(1, 'bo_cuc', 'cot_trai_cot_phai'),
(2, 'sxcp', 'k_html1[---]ksp1[---]ksp2[---]thong_ke[---]k_html4[---][---][---][---][---]'),
(3, 'ssp_ksp1', '2'),
(4, 'ssp_ksp2', '2'),
(5, 'ssp_ksp3', '2'),
(6, 'ssp_ksp4', '2'),
(7, 'td_a1', 'Hàng tốt'),
(9, 'td_a2', 'Hàng rẻ'),
(10, 'td_a3', 'Hàng gia công'),
(11, 'td_a4', 'Hàng chất lượng cao'),
(12, 'so_dong_splq', '2'),
(13, 'thamso_l', 'sua_thong_ke'),
(14, 'tg_tc_1', '1517662091'),
(15, 'tg_tc_2', '1517503478'),
(16, 'tg_tc_3', '1500465666'),
(17, 'tg_tc_4', '1500465666'),
(18, 'tg_tc_5', '1517662091'),
(19, 'tg_tc_6', '1517662091'),
(20, 'mau_giao_dien', 'hong'),
(21, 'chuc_nang_binh_luan_san_pham', 'bat'),
(22, 'thoi_gian_xoa_binh_luan_san_pham', '1502882098'),
(23, 'thoi_gian_them_binh_luan_san_pham', '1502882757'),
(24, 'chuc_nang_binh_luan_danh_sach_bai_viet', 'bat'),
(25, 'chuc_nang_binh_luan_bai_viet_mot_tin', 'bat'),
(26, 'tieu_de_web', 'Quần áo'),
(27, 'mo_ta_web', 'Mô tả web'),
(28, 'so_san_pham_tren_dong', '3'),
(40, 'so_binh_luan_toi_da', '30000'),
(29, 'nguoi_tro_chuyen', '62'),
(30, 'tro_chuyen', 'bat'),
(32, 'luot_truy_cap_trong_mot_giay', '0'),
(33, 'thoi_gian_tctmg', '1502272427'),
(34, 'so_tin_nhan_toi_da', '1000'),
(35, 'thoi_diem_nhan_tin_gan_day', '1502883895'),
(36, 'thoi_diem_lay_tin_nhan_moi', '1502288172'),
(37, 'so_lan_lay_tin_nhan_trong_mot_giay', '10'),
(39, 'so_binh_luan_toi_da_trong_ngay', '300'),
(41, 'so_binh_luan_trong_ngay', '14'),
(42, 'ngay_binh_luan_moi', '16'),
(44, 'xoa_binh_luan_khi_dat_toi_gioi_han', 'co'),
(43, 'cach_hien_thi_binh_luan', 'moi_truoc_cu_sau'),
(52, 'm3', '90px'),
(53, 'm1', 'khong'),
(54, 'm2', '160px');

-- --------------------------------------------------------

--
-- Table structure for table `tin_tuc`
--

CREATE TABLE IF NOT EXISTS `tin_tuc` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `thuoc_menu` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `sap_xep` int(255) NOT NULL,
  `bat_tat_binh_luan` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=205 ;

--
-- Dumping data for table `tin_tuc`
--

INSERT INTO `tin_tuc` (`id`, `ten`, `noi_dung`, `hinh_anh`, `thuoc_menu`, `sap_xep`, `bat_tat_binh_luan`) VALUES
(203, 'Tin tức e35', 'Noi dung tin tuc e35<br />', 'e35.jpg', '20', 101, 'bat'),
(204, 'Tin tức e36', 'Noi dung tin tuc e36<br />', 'e36.jpg', '20', 100, 'bat');

-- --------------------------------------------------------

--
-- Table structure for table `tro_chuyen_lllll`
--

CREATE TABLE IF NOT EXISTS `tro_chuyen_lllll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noi_dung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_tro_chuyen` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `thoi_gian` int(255) NOT NULL,
  `hien_thi` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tro_chuyen_lllll`
--

