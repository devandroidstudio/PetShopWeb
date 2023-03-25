-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2023 at 12:58 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_donhang`
--

CREATE TABLE `chitiet_donhang` (
  `id_ctdonhang` int(11) NOT NULL,
  `madathang` varchar(50) NOT NULL,
  `makh` varchar(100) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `soluong` tinyint(4) DEFAULT NULL,
  `giamgia` int(11) DEFAULT NULL,
  `giatien` int(11) DEFAULT NULL,
  `tongtien` int(11) DEFAULT NULL,
  `trangthai` varchar(100) NOT NULL,
  `ngaydat` datetime DEFAULT current_timestamp(),
  `id_dathang` int(11) NOT NULL,
  `id_kh` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitiet_donhang`
--

INSERT INTO `chitiet_donhang` (`id_ctdonhang`, `madathang`, `makh`, `id_sanpham`, `tensp`, `soluong`, `giamgia`, `giatien`, `tongtien`, `trangthai`, `ngaydat`, `id_dathang`, `id_kh`) VALUES
(367, 'MDH136', 'MAKH136', 6, 'Bánh Gặm Cho Chó – Smoked Beefy Dental Bone -14g', 1, NULL, 12000, 64000, 'đang xử lý', '2022-01-11 13:49:00', 0, 0),
(368, 'MDH136', 'MAKH136', 7, 'Soup Whiskas Vị Cá Biển – 85gr', 4, NULL, 52000, 64000, 'đang xử lý', '2022-01-11 13:49:00', 0, 0),
(395, 'MDH670', 'MAKH670', 6, 'Bánh Gặm Cho Chó – Smoked Beefy Dental Bone -14g', 1, NULL, 12000, 12000, 'đang xử lý', '2023-02-10 16:26:42', 0, 0),
(396, '', '', 6, 'Bánh Gặm Cho Chó – Smoked Beefy Dental Bone -14g', 1, NULL, 12000, 0, 'đang xử lý', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dangki`
--

CREATE TABLE `dangki` (
  `id_dangki` int(11) NOT NULL,
  `hoten` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `matkhau` varchar(100) DEFAULT NULL,
  `id_phanquyen` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dangki`
--

INSERT INTO `dangki` (`id_dangki`, `hoten`, `email`, `matkhau`, `id_phanquyen`) VALUES
(1, 'admin', '', 'e10adc3949ba59abbe56e057f20f883e', 1),
(22, 'trieu', 'trieu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2),
(23, 'user123', 'user@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2),
(24, 'quan', 'quan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2),
(25, 'staff', 'staff', 'e10adc3949ba59abbe56e057f20f883e', 3);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `ten_danhmuc` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `ten_danhmuc`) VALUES
(1, 'sản phẩm cho chó'),
(2, 'sản phẩm cho mèo'),
(3, 'tất cả sản phẩm'),
(4, 'con giống'),
(5, 'nổi bật');

-- --------------------------------------------------------

--
-- Table structure for table `dathang`
--

CREATE TABLE `dathang` (
  `id_dathang` int(11) NOT NULL,
  `madathang` varchar(50) NOT NULL,
  `makh` varchar(100) NOT NULL,
  `trangthai` varchar(100) DEFAULT NULL,
  `tongtien` int(11) NOT NULL,
  `ngaydathang` datetime DEFAULT current_timestamp(),
  `id_kh` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dathang`
--

INSERT INTO `dathang` (`id_dathang`, `madathang`, `makh`, `trangthai`, `tongtien`, `ngaydathang`, `id_kh`) VALUES
(176, 'MDH670', 'MAKH670', 'đang xử lý', 12000, '2023-02-10 16:26:42', 0),
(158, 'MDH136', 'MAKH136', 'đang giao', 64000, '2022-01-11 13:49:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` varchar(100) NOT NULL,
  `tenkh` varchar(100) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sdt` int(11) DEFAULT NULL,
  `id_kh` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`makh`, `tenkh`, `diachi`, `email`, `sdt`, `id_kh`) VALUES
('MAKH670', 'quân đặt hàng online', '4 Thành phố Vũng Tàu Bà Rịa - Vũng Tàu', 'quan@gmail.com', 1234, 1),
('MAKH136', 'user123', '25 Huyện Krông Năng ', 'user@gmail.com', 1667877480, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

CREATE TABLE `phanquyen` (
  `id_phanquyen` int(11) NOT NULL,
  `tenquyen` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phanquyen`
--

INSERT INTO `phanquyen` (`id_phanquyen`, `tenquyen`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensp` varchar(100) DEFAULT NULL,
  `anhsp` varchar(255) DEFAULT NULL,
  `giasp` int(11) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id_sanpham`, `tensp`, `anhsp`, `giasp`, `mota`, `id_danhmuc`) VALUES
(1, 'Thức Ăn Cho Chó Trưởng Thành Giống Lớn – Eminent Adult Large Breed – 500g', './upload/Eminent.jpg', 72000, NULL, 1),
(2, 'Pate Cho Mèo – Pate Fit4 Cats -Cá Ngừ Và Thanh Cua 160g', './upload/dohop.jpg', 20000, NULL, 2),
(3, 'Soup Cho Chó Pedigree Vị Gan Nướng 130gr', './upload/keocho.jpg', 18000, NULL, 1),
(4, 'Royal Canin Maxi Puppy 4kg – Thức Ăn Dành Cho Chó Con Giống Lớn', './upload/camcho.jpg', 627000, NULL, 1),
(6, 'Bánh Gặm Cho Chó – Smoked Beefy Dental Bone -14g', './upload/dochocho.jpg', 12000, '', 5),
(7, 'Soup Whiskas Vị Cá Biển – 85gr', './upload/dohop2.jpg', 13000, '', 5),
(8, 'Sữa Tắm Cho Chó – SOS Shampoo – Đen – 530ml', './upload/suatamcho.jpg', 150000, '', 1),
(9, 'Bàn Cào Móng Mèo Hình Chuột Mickey', './upload/dohop3.jpg', 11500, '<p>B&agrave;n C&agrave;o M&oacute;ng M&egrave;o H&igrave;nh Chuột Dễ thương</p>\r\n', 2),
(10, 'Ống Tiêm Đút Thuốc Thú Cưng 1', './upload/dungcutiem.jpg', 20000, '', 5),
(11, 'Tấm Lót Hình Dấu Chân Thú Size Nhỏ', './upload/taymeo.jpg', 30000, '<p>Bao tay h&igrave;nh m&egrave;o dễ thương</p>\r\n', 2),
(25, 'Balo phi hành gia', './upload/Balo-Phi-Thuyen-Trong.jpg', 50000, '<p>Quần Ống Rộng Nhung Tăm D&aacute;ng Su&ocirc;ng Baggy Phong C&aacute;ch H&agrave;n Quốc Uniex Nam Nữ Basic 5 M&agrave;u</p>\r\n\r\n<p>THNG TIN SẢN PHẨM: 👉 T&ecirc;n sản phẩm: Quần Jogger Ống Rộng Su&ocirc;ng Oversize form rộng UNISEX, quần nhung tăm ống su&ocirc;ng, quần nhung tăm ống rộng,...</p>\r\n\r\n<p>- Đặc điểm: chất nhung tăm, cạp chun si&ecirc;u thoải m&aacute;i.</p>\r\n\r\n<p>✔️ Xuất sứ: Việt Nam ✔️</p>\r\n\r\n<p>Nam v&agrave; Nữ đều mặc được ✔️</p>\r\n\r\n<p>Chất liệu: Nhung G&acirc;n - Nhung Tăm MỀM MỊN M&Aacute;T</p>\r\n\r\n<p>. Form quần rộng chuẩn OVERSIZE UNISEX cực đẹp. - Bảng size: Bảng size nằm dưới c&ugrave;ng a, quần form nhỏ n&ecirc;n mn tăng size gi&uacute;p e nh&eacute;.</p>\r\n\r\n<p>❤️Size M: dưới 48kg d&agrave;i 90cm (người dưới 1m55) Size L: dưới 56kg d&agrave;i 93cm (người 1m55 -1m65) Size XL: dưới 65kg d&agrave;i 95cm (người 1m65 - 1m73) &lt;1M75 Mn muốn mặc rộng xu&ocirc;ng hẳn c&oacute; thể tăng 1 size l&agrave; đẹp a.</p>\r\n\r\n<p>❤CAM KẾT KHI MUA H&Agrave;NG TẠI SHOP❤️</p>\r\n\r\n<p>✅Sản phẩm lu&ocirc;n được kiểm tra đ&uacute;ng m&agrave;u, đ&uacute;ng size, kh&ocirc;ng lỗi chỉ, lỗi vải mới giao cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>✅H&agrave;ng chủ yếu l&agrave; H&Agrave;NG XƯỞNG nhưng shop cam kết sẽ chuẩn bị h&agrave;ng trong thời gian sớm nhất c&ugrave;ng số lượng h&agrave;ng sẵn cho mn để r&uacute;t ngắn thời gian chuẩn bị h&agrave;ng.</p>\r\n\r\n<p>✅Hỗ trợ đổi trả khi kh&aacute;ch muốn đổi m&agrave;u đổi size bằng ship ngo&agrave;i.</p>\r\n\r\n<p>✅Sẵn s&agrave;ng ho&agrave;n h&agrave;ng trả tiền cho d&ugrave; c&oacute; một lỗi chỉ nhỏ, kh&aacute;ch chủ động gửi lại h&agrave;ng gi&uacute;p shop nh&eacute;.</p>\r\n\r\n<p>❤️Lưu &yacute; cần đọc:</p>\r\n\r\n<p>😘VIDEO shop tự quay + Ảnh thật do shop tự chụp + Ảnh do kh&aacute;ch đ&atilde; mua h&agrave;ng feedback = Mn y&ecirc;n t&acirc;m về chất lượng sản phẩm b&ecirc;n shop nh&eacute;!</p>\r\n\r\n<p>😘Nếu bạn H&Agrave;I L&Ograve;NG về sản phẩm xin h&atilde;y tặng shop 5 sao, với mỗi feedback 5 sao shop sẽ gửi tặng bạn 1 voucher thật xịn x&ograve;.</p>\r\n\r\n<p>😘Nếu bạn KH&Ocirc;NG H&Agrave;I L&Ograve;NG về sản phẩm, đừng vội đ&aacute;nh gi&aacute; sản phẩm, đừng ấn Đ&Atilde; NHẬN ĐƯỢC H&Agrave;NG, h&atilde;y inobox để shop đổi trả h&agrave;ng gi&uacute;p bạn nh&eacute;.</p>\r\n', 1),
(29, 'Chó chihuahua', './upload/Chó-chi-hua-hua.jpg', 20000, '<h3><strong>Lịch sử ra đời của giống ch&oacute; chihuahua</strong></h3>\r\n\r\n<p>Giống ch&oacute; Corgi đ&atilde; c&oacute; từ kh&aacute; l&acirc;u rồi. Người ta ước t&iacute;nh, ch&uacute;ng bắt đầu xuất hiện v&agrave;o khoảng 3000 năm trước tại xứ Wales, nước Anh. C&oacute; kh&aacute; nhiều giả thuyết được đưa ra về tổ ti&ecirc;n của giống ch&oacute; Corgi. Nhưng khả năng cao nhất, c&oacute; lẽ ch&uacute;ng bắt nguồn từ giống ch&oacute; Vallhunds (một giống ch&oacute; l&ugrave;n của Thụy Điển).</p>\r\n\r\n<p>Từ sau thế kỷ 16 &ndash; thời k&igrave; Ch&acirc;u &Acirc;u cũng như nước Anh ph&aacute;t triển thịnh vượng, ch&oacute; Corgi kh&ocirc;ng c&ograve;n được sử dụng để chăn gia s&uacute;c m&agrave; thay v&agrave;o đ&oacute; được nu&ocirc;i như th&uacute; cưng trong c&aacute;c hộ gia đ&igrave;nh. Ch&uacute;ng dần trở n&ecirc;n phổ biến tại Ch&acirc;u &Acirc;u. Được c&aacute;c gia đ&igrave;nh ho&agrave;ng gia Anh y&ecirc;u th&iacute;ch nhất l&agrave; dưới thời của nữ ho&agrave;ng Anh Elizabeth đệ nhị.</p>\r\n\r\n<h3><strong>Ph&acirc;n loại ch&oacute;</strong></h3>\r\n\r\n<p>Pembroke Corgi đang dẫn đầu trong nh&oacute;m những giống ch&oacute; được ưa chuộng nhất tr&ecirc;n Thế Giới. Ch&uacute;ng c&oacute; ngoại h&igrave;nh kh&aacute; ngộ nghĩnh với bờ m&ocirc;ng to h&igrave;nh tr&aacute;i tim rất hư cấu. Độ phổ biến của Pembroke cao hơn nhiều so với người anh em. Ch&oacute; Cardigan hiện nay số lượng kh&ocirc;ng c&ograve;n nhiều&hellip;</p>\r\n', 4),
(30, 'Chó Pug', './upload/Chó-Pug.jpg', 3500000, '<h3><strong>Lịch sử ra đời của giống ch&oacute; pug</strong></h3>\r\n\r\n<p>Giống ch&oacute; <strong>pug&nbsp;</strong>đ&atilde; c&oacute; từ kh&aacute; l&acirc;u rồi. Người ta ước t&iacute;nh, ch&uacute;ng bắt đầu xuất hiện v&agrave;o khoảng 3000 năm trước tại xứ Wales, nước Anh. C&oacute; kh&aacute; nhiều giả thuyết được đưa ra về tổ ti&ecirc;n của giống ch&oacute;. Nhưng khả năng cao nhất, c&oacute; lẽ ch&uacute;ng bắt nguồn từ giống ch&oacute; Vallhunds (một giống ch&oacute; l&ugrave;n của Thụy Điển).</p>\r\n\r\n<p>Từ sau thế kỷ 16 &ndash; thời k&igrave; Ch&acirc;u &Acirc;u cũng như nước Anh ph&aacute;t triển thịnh vượng, ch&oacute; Corgi kh&ocirc;ng c&ograve;n được sử dụng để chăn gia s&uacute;c m&agrave; thay v&agrave;o đ&oacute; được nu&ocirc;i như th&uacute; cưng trong c&aacute;c hộ gia đ&igrave;nh. Ch&uacute;ng dần trở n&ecirc;n phổ biến tại Ch&acirc;u &Acirc;u. Được c&aacute;c gia đ&igrave;nh ho&agrave;ng gia Anh y&ecirc;u th&iacute;ch nhất l&agrave; dưới thời của nữ ho&agrave;ng Anh Elizabeth đệ nhị.</p>\r\n\r\n<h3><strong>Ph&acirc;n loại ch&oacute; pug</strong></h3>\r\n\r\n<p><strong>Pug</strong> đang dẫn đầu trong nh&oacute;m những giống ch&oacute; được ưa chuộng nhất tr&ecirc;n Thế Giới. Ch&uacute;ng c&oacute; ngoại h&igrave;nh kh&aacute; ngộ nghĩnh với bờ m&ocirc;ng to h&igrave;nh tr&aacute;i tim rất hư cấu. Độ phổ biến của Pembroke cao hơn nhiều so với người anh em. Ch&oacute; Cardigan hiện nay số lượng kh&ocirc;ng c&ograve;n nhiều&hellip;</p>\r\n\r\n<p><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/16.png\" /></p>\r\n\r\n<p><img src=\"chrome-extension://cianljdimgjlpmjllcbahmpdnicglaap/logo/16.png\" /></p>\r\n', 4),
(37, 'Bella – Bàn Chải Đánh Tơi Lông Và Lấy Lông Rụng Nhỏ', './upload/Bàn-Chải-Đánh-Tơi-Lông-Cho-Chó-Mèo.jpg', 49000, '', 2),
(31, 'Giống chó lạp xưởng/xúc xích', './upload/Chó-Lạp-xưởng-1.jpg', 2500000, '<h3><strong>Lịch sử ra đời của giống ch&oacute; lạp xưởng/x&uacute;c x&iacute;ch</strong></h3>\r\n\r\n<p>Giống ch&oacute; Corgi đ&atilde; c&oacute; từ kh&aacute; l&acirc;u rồi. Người ta ước t&iacute;nh, ch&uacute;ng bắt đầu xuất hiện v&agrave;o khoảng 3000 năm trước tại xứ Wales, nước Anh. C&oacute; kh&aacute; nhiều giả thuyết được đưa ra về tổ ti&ecirc;n của giống ch&oacute; . Nhưng khả năng cao nhất, c&oacute; lẽ ch&uacute;ng bắt nguồn từ giống ch&oacute; Vallhunds (một giống ch&oacute; l&ugrave;n của Thụy Điển).</p>\r\n\r\n<p>Từ sau thế kỷ 16 &ndash; thời k&igrave; Ch&acirc;u &Acirc;u cũng như nước Anh ph&aacute;t triển thịnh vượng, ch&oacute; Corgi kh&ocirc;ng c&ograve;n được sử dụng để chăn gia s&uacute;c m&agrave; thay v&agrave;o đ&oacute; được nu&ocirc;i như th&uacute; cưng trong c&aacute;c hộ gia đ&igrave;nh. Ch&uacute;ng dần trở n&ecirc;n phổ biến tại Ch&acirc;u &Acirc;u. Được c&aacute;c gia đ&igrave;nh ho&agrave;ng gia Anh y&ecirc;u th&iacute;ch nhất l&agrave; dưới thời của nữ ho&agrave;ng Anh Elizabeth đệ nhị.</p>\r\n\r\n<h3><strong>Ph&acirc;n loại ch&oacute;</strong></h3>\r\n\r\n<p><strong>lạp xưởng/x&uacute;c x&iacute;ch</strong> đang dẫn đầu trong nh&oacute;m những giống ch&oacute; được ưa chuộng nhất tr&ecirc;n Thế Giới. Ch&uacute;ng c&oacute; ngoại h&igrave;nh kh&aacute; ngộ nghĩnh với bờ m&ocirc;ng to h&igrave;nh tr&aacute;i tim rất hư cấu. Độ phổ biến của Pembroke cao hơn nhiều so với người anh em . Ch&oacute; Cardigan hiện nay số lượng kh&ocirc;ng c&ograve;n nhiều&hellip;</p>\r\n', 4),
(32, 'Chó Bull', './upload/Chó-Bully.jpg', 7500000, '<p><strong>Ch&oacute; Bull Ph&aacute;p</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Nguồn Gốc Ch&oacute; Bull Ph&aacute;p</strong></p>\r\n\r\n<p>Ch&oacute; Bull Ph&aacute;p (<a href=\"https://en.wikipedia.org/wiki/French_Bulldog\">French Bulldog</a>) l&agrave; giống ch&oacute; được lai tạo từ 2 giống ch&oacute; Bull Anh v&agrave; ch&oacute; Sục Ph&aacute;p bởi những người Anh di cư sang Ph&aacute;p v&agrave;o năm 1860.</p>\r\n\r\n<p>Ban đầu giống ch&oacute; n&agrave;y vẫn được gọi l&agrave; Bulldog như tổ ti&ecirc;n của ch&uacute;ng ở Anh. Tuy nhi&ecirc;n, đến cuối thế kỷ 19, sau nhiều cuộc tranh c&atilde;i dữ dội giữa 2 nước th&igrave; c&aacute;i t&ecirc;n Bull Ph&aacute;p đ&atilde; được lựa chọn để ph&acirc;n biệt với ch&oacute;&nbsp;<a href=\"https://azpet.com.vn/cho-bull-anh/\">Bulldog (Bull Anh</a>).</p>\r\n\r\n<h2>Đặc Điểm Ch&oacute; Bull Ph&aacute;p</h2>\r\n\r\n<p>Ch&oacute; Bull Ph&aacute;p c&oacute; c&acirc;n nặng trung b&igrave;nh trong khoảng từ 8 đến 14kg. Chiều cao trong khoảng 30cm v&agrave; chiều d&agrave;i cơ thể khoảng 80cm (đối với ch&oacute; đ&atilde; trưởng th&agrave;nh). Bull Ph&aacute;p l&agrave; giống ch&oacute; c&oacute; cơ bắp ph&aacute;t triển, phần vai ph&aacute;t triển, Ch&acirc;n lớn, ngắn v&agrave; rắn chắc. L&ocirc;ng Bull Ph&aacute;p ngắn, mượt; Với lớp l&ocirc;ng ngắn Bull Ph&aacute;p &iacute;t g&acirc;y phiền phức cho chủ nu&ocirc;i về vấn đề rụng l&ocirc;ng.</p>\r\n\r\n<p>Bull Ph&aacute;p sở hữu đ&ocirc;i ta kh&aacute; to v&agrave; thẳng đứng. M&otilde;m phẳng, tr&aacute;n tr&ograve;n, mũi tẹt v&agrave; hếch l&ecirc;n tr&ecirc;n. Đầu bẹp v&agrave; thấp hơn giống ch&oacute; bull Anh. Ch&uacute;ng c&oacute; đ&ocirc;i mắt tr&ograve;n lồi m&agrave;u sẫm v&agrave; h&agrave;m dưới khỏe; c&aacute;c cơ m&aacute; ph&aacute;t triển tốt. Lớp mỡ ở hai b&ecirc;n m&aacute; d&agrave;y, trễ xuống v&agrave; đung đưa như &ldquo;nọng cằm&rdquo;.</p>\r\n\r\n<p>Ch&oacute; Bull Ph&aacute;p c&oacute; hai loại đu&ocirc;i: Thẳng hoặc xoắn với lớp l&ocirc;ng mượt v&agrave; thẳng, khi sờ c&oacute; cảm gi&aacute;c trơn nhẵn.</p>\r\n\r\n<p>Tuổi thọ trung b&igrave;nh của ch&oacute; Bull Ph&aacute;p từ 10 đến 12 năm.</p>\r\n\r\n<h2>Nu&ocirc;i Dạy Ch&oacute; Bull Ph&aacute;p</h2>\r\n\r\n<p>Bull Ph&aacute;p nổi tiếng l&agrave; giống ch&oacute; vui nhộn, th&iacute;ch g&acirc;y cười. Đ&acirc;y l&agrave; lo&agrave;i ch&oacute; hoạt b&aacute;t, th&iacute;ch chơi đ&ugrave;a, chạy nhảy; tuy nhi&ecirc;n ch&uacute;ng hay gặp c&aacute;c vấn đề về h&ocirc; hấp do mũi tẹt v&agrave; ngắn. Ch&uacute;ng c&ograve;n kh&aacute; nhạy cảm với những biến đổi nhiệt độ, chịu n&oacute;ng v&agrave; lạnh k&eacute;m, dễ bị sốc nhiệt. V&igrave; vậy, khi nu&ocirc;i giống ch&oacute; n&agrave;y, chủ nu&ocirc;i n&ecirc;n ch&uacute; &yacute; nhiệt độ, kh&ocirc;ng gian để ch&uacute;ng được vận động một c&aacute;ch hợp l&yacute; để kh&ocirc;ng ảnh hưởng đến sức khỏe.</p>\r\n\r\n<p>Nhu cầu ăn uống của Bull Ph&aacute;p kh&aacute; đơn giản, kh&ocirc;ng k&eacute;n ăn. Ch&uacute;ng l&agrave; lo&agrave;i ch&oacute; lười vận động, hay nằm một chỗ n&ecirc;n cần tr&aacute;nh cho ăn qu&aacute; nhiều tinh bột, dễ dần đến b&eacute;o ph&igrave;. Khẩu phần ăn đảm bảo cung cấp đủ 21- 30% protein v&agrave; 10- 15% chất b&eacute;o trong mỗi bữa.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh nu&ocirc;i, cần dẫn ch&oacute; đi ti&ecirc;m ph&ograve;ng v&agrave; kiểm tra sức khỏe định kỳ. Ngo&agrave;i ra n&ecirc;n t&igrave;m hiểu kỹ những bệnh l&yacute; thường gặp ở Bull Ph&aacute;p để biết c&aacute;ch ph&ograve;ng tr&aacute;nh. Nếu ph&aacute;t hiện sự bất thường th&igrave; cần đưa ch&oacute; đi kh&aacute;m v&agrave; điều trị ngay.</p>\r\n\r\n<p>Bull Ph&aacute;p l&agrave; giống ch&oacute; gặp nhiều vấn đề trong sinh sản, thường Bull Ph&aacute;p c&aacute;i mang thai &iacute;t khi sinh thường được m&agrave; phải cần đến sự hỗ trợ th&uacute; y. Tại Việt Nam, Bull Ph&aacute;p được xếp v&agrave;o giống ch&oacute; hiểm, đắt đỏ.</p>\r\n\r\n<p><strong>Bảng gi&aacute; tham khảo của ch&oacute; Bull ph&aacute;p</strong></p>\r\n\r\n<table style=\"width:469px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h2>M&Agrave;U SẮC</h2>\r\n			</td>\r\n			<td>\r\n			<h2>C&Uacute;N ĐỰC</h2>\r\n			</td>\r\n			<td>\r\n			<h2>C&Uacute;N C&Aacute;I</h2>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&ograve; sữa</td>\r\n			<td>7.500.000</td>\r\n			<td>8.000.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đen vện</td>\r\n			<td>Update</td>\r\n			<td>Update</td>\r\n		</tr>\r\n		<tr>\r\n			<td>V&agrave;ng B&ograve;</td>\r\n			<td>Update</td>\r\n			<td>Update</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trắng tinh</td>\r\n			<td>8.000.000</td>\r\n			<td>8.500.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>X&aacute;m xanh</td>\r\n			<td>Update</td>\r\n			<td>Update</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Li&ecirc;n hệ ngay để sỡ hữu ngay một b&eacute; Bull Ph&aacute;p dễ thương, khỏe mạnh k&egrave;m theo ưu đ&atilde;i l&ecirc;n đến 2.500.000 khi mua c&uacute;n.</p>\r\n\r\n<p><strong>Mua C&uacute;n</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Sức khỏe tốt, c&aacute;c b&eacute; đều được xổ giun, ch&iacute;ch ngừa 2 mũi vaccin ngừa 7 bệnh tr&ecirc;n ch&oacute;.</strong></li>\r\n	<li><strong>Bảo h&agrave;nh sức khỏe (7 bệnh) trong v&ograve;ng 2 tuần.</strong></li>\r\n	<li><strong>Tặng 1 g&oacute;i spa bất kỳ cho b&eacute;.</strong></li>\r\n	<li><strong>Giảm 10% c&aacute;c dịch vụ spa trong v&ograve;ng 1 năm</strong></li>\r\n	<li><strong>Tặng 1 g&oacute;i thức ăn cho b&eacute;.</strong></li>\r\n	<li><strong>.</strong></li>\r\n	<li><strong>Hỗ trợ mua lại c&uacute;n con gi&aacute; cao nếu sau n&agrave;y c&aacute;c b&eacute; sinh sản.</strong></li>\r\n	<li><strong>Tư vấn c&aacute;ch chăm s&oacute;c ho&agrave;n to&agrave;n miễn ph&iacute;.</strong></li>\r\n</ul>\r\n', 4),
(34, 'Chó shiba', './upload/shiba-1.png', 150000, '<h2>CH&Oacute; SHIBA INU</h2>\r\n\r\n<p>Nhắc đến ch&uacute; ch&oacute; Shiba chắc hẳn người Việt n&agrave;o cũng biết đến vai thử &quot;Cậu V&agrave;ng&quot; đ&igrave;nh đ&aacute;m của giống ch&oacute; n&agrave;y trong năm 2019 vừa qua.</p>\r\n\r\n<p>Sở dĩ giống ch&oacute; n&agrave;y được lựa chọn để đ&oacute;ng phim l&agrave; do ch&uacute;ng vốn rất th&ocirc;ng minh, hiểu chuyện v&agrave; rất ngoan ngo&atilde;n.</p>\r\n\r\n<h2>NGUỒN GỐC CH&Oacute; SHIBA INU</h2>\r\n\r\n<p>Ch&oacute; Shiba c&oacute; nguồn gốc từ đất nước mặt trời mọc - Nhật Bản. Ch&uacute;ng l&agrave; 1 trong 6 giống ch&oacute; bản địa nguy&ecirc;n thủy cực k&igrave; qu&yacute; gi&aacute; của đất nước n&agrave;y. Giống ch&oacute; n&agrave;y được nu&ocirc;i với mục đ&iacute;ch ban đầu l&agrave; để c&ugrave;ng con người đi săn chim ch&oacute;c v&agrave; lợn rừng.</p>\r\n\r\n<p>Khi chiến tranh thế giới thứ 2 b&ugrave;ng nổ, Shiba đ&atilde; từng đứng b&ecirc;n bờ vụng tuyệt chủng do thức ăn bị khan hiếm. Sau chiến tranh, người ta đ&atilde; nhận ra sự việc n&agrave;y v&agrave; cho nh&acirc;n giống lại giống ch&oacute; Shiba đ&aacute;ng y&ecirc;u n&agrave;y.</p>\r\n', 4),
(35, 'Cheems', './upload/meme-cheems-1.png', 0, '<p>Chỉ l&agrave; meme cho vui</p>\r\n', 4),
(36, 'Chó cỏ', './upload/choco.jpg', 300000, '<p>Đ&acirc;y l&agrave; giống ch&oacute; bản địa VN</p>\r\n', 4),
(56, 'Đồ ăn cho chó', './upload/camcho.jpg', 40000, 'Đồ ăn cho chó abc xyz', 1),
(38, 'Chén ăn du lịch', './upload/chen-an-du-lich.jpg', 25000, '', 2),
(39, 'Túi Grooming Cho Mèo Size Lớn ( mix 2 màu)', './upload/Túi-Grooming-Cho-Mèo.jpg', 90000, ';mrgt;gr', 2),
(40, 'Ba Lô Phi Thuyền Nhiều Màu Sắc', './upload/Balo-Phi-Thuyền.jpg', 350000, 'ldkfsldf', 5),
(41, 'Găng tay chải lông 1', './upload/gang-tay-chai-long-1.jpg', 65000, 'abc', 5),
(42, 'Găng tay chải lông 2', './upload/thucan.jpg', 45000, '<p>abc</p>\r\n', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD PRIMARY KEY (`id_ctdonhang`,`madathang`,`makh`,`id_sanpham`,`id_dathang`,`id_kh`),
  ADD KEY `madathang` (`madathang`),
  ADD KEY `makh` (`makh`),
  ADD KEY `id_sanpham` (`id_sanpham`),
  ADD KEY `id_dathang` (`id_dathang`),
  ADD KEY `id_kh` (`id_kh`);

--
-- Indexes for table `dangki`
--
ALTER TABLE `dangki`
  ADD PRIMARY KEY (`id_dangki`),
  ADD KEY `id_phanquyen` (`id_phanquyen`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`id_dathang`,`madathang`,`makh`,`id_kh`),
  ADD KEY `makh` (`makh`),
  ADD KEY `id_kh` (`id_kh`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`,`id_kh`);

--
-- Indexes for table `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`id_phanquyen`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sanpham`),
  ADD KEY `id_danhmuc` (`id_danhmuc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  MODIFY `id_ctdonhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT for table `dangki`
--
ALTER TABLE `dangki`
  MODIFY `id_dangki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dathang`
--
ALTER TABLE `dathang`
  MODIFY `id_dathang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id_kh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `id_phanquyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
