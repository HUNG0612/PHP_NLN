-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 18, 2023 lúc 09:52 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `php_mysql1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `status`) VALUES
(4, 'hungadmin', '202cb962ac59075b964b07152d234b70', 1),
(5, 'admin', '202cb962ac59075b964b07152d234b70', 1),
(6, 'hung', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(3, 'Tai nghe 2023', '<p>Welcome to Admin 2023</p>\r\n', '<p>Welcome to Admin 2023</p>\r\n', 2, 1, '1672215423 tainghe1.jpg'),
(4, 'Python cơ bản', '<p>B&agrave;i 1: Tổng quan về Python</p>\r\n', '<p>- Python l&agrave; một ng&ocirc;n ngữ lập tr&igrave;nh kịch bản (scripting language)&nbsp;do&nbsp;<strong>Guido van Rossum</strong>&nbsp;tạo ra năm 1990. Đến nay th&igrave; cộng đồng người sử dụng ng&ocirc;n ngữ n&agrave;y rất đ&ocirc;ng,&nbsp;nếu so s&aacute;nh từ bảng xếp hạng c&aacute;c ng&ocirc;n ngữ năm 2016 th&igrave; Python đứng tứ 3 trong top 10 ng&ocirc;n ngữ phổ biến nhất.</p>\r\n\r\n<p>V&agrave;&nbsp;Python lu&ocirc;n được biết đến với c&aacute;c đặc điểm sau đ&acirc;u:&nbsp;</p>\r\n\r\n<ul>\r\n	<li>C&uacute; ph&aacute;p rất tường minh, dễ đọc.</li>\r\n	<li>C&aacute;c khả năng tự x&eacute;t mạnh mẽ.</li>\r\n	<li>Hướng đối tượng trực gi&aacute;c.</li>\r\n	<li>C&aacute;ch thể hiện tự nhi&ecirc;n m&atilde; thủ tục.</li>\r\n	<li>Ho&agrave;n to&agrave;n m&ocirc;-đun h&oacute;a, hỗ trợ c&aacute;c g&oacute;i theo cấp bậc.</li>\r\n	<li>Xử l&yacute; lỗi dựa theo ngoại lệ.</li>\r\n	<li>Kiểu dữ liệu động ở mức rất cao.</li>\r\n	<li>C&aacute;c thư viện chuẩn v&agrave; c&aacute;c m&ocirc;-đun ngo&agrave;i bao qu&aacute;t hầu như mọi việc.</li>\r\n	<li>Phần mở rộng v&agrave; m&ocirc;-đun dễ d&agrave;ng viết trong C, C++.</li>\r\n	<li>C&oacute; thể nh&uacute;ng trong ứng dụng như một giao diện kịch bản&nbsp;(scripting interface).</li>\r\n	<li>Python mạnh mẽ v&agrave; thực hiện rất&nbsp;nhanh.</li>\r\n</ul>\r\n', 4, 1, '1672233326 Python-logo-notext.svg.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(2, 1, '6767', 0),
(3, 1, '5648', 0),
(4, 2, '1308', 0),
(5, 2, '8480', 0),
(6, 7, '983', 1),
(7, 7, '7472', 1),
(8, 7, '5927', 1),
(9, 7, '6485', 1),
(10, 7, '69', 1),
(11, 7, '5578', 1),
(12, 7, '6154', 1),
(13, 7, '9786', 1),
(14, 7, '9287', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_details`
--

CREATE TABLE `cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart_details`
--

INSERT INTO `cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(1, '5648', 34, 1),
(2, '5648', 31, 1),
(3, '1308', 34, 1),
(4, '1308', 33, 1),
(5, '8480', 33, 1),
(6, '8480', 34, 1),
(7, '983', 34, 1),
(8, '7472', 34, 1),
(9, '5927', 34, 1),
(10, '6485', 34, 1),
(11, '69', 34, 1),
(12, '5578', 34, 1),
(13, '6154', 32, 1),
(14, '9786', 26, 1),
(15, '9287', 30, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangky`
--

CREATE TABLE `dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dangky`
--

INSERT INTO `dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(1, 'Hùng Nguyễn', 'hung@gmail.com', 'Cần Thơ', '900150983cd24fb0d6963f7d28e17f72', '0123456789'),
(2, 'admin123', 'admin123@gmail.com', 'An Giang', '202cb962ac59075b964b07152d234b70', '0123456789'),
(7, 'Hùng', 'hung123@gmail.com', 'An Giang', '202cb962ac59075b964b07152d234b70', '0123456789'),
(8, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(10, 'Iphone', 4),
(11, 'Samsung', 5),
(12, 'Oppo', 6),
(13, 'Nokia', 6),
(14, 'Vivo', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucbaiviet`
--

CREATE TABLE `danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmucbaiviet`
--

INSERT INTO `danhmucbaiviet` (`id_baiviet`, `tendanhmuc_baiviet`, `thutu`) VALUES
(5, 'Sự kiện', 1),
(6, 'Mẹo hay', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `id` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`id`, `thongtinlienhe`) VALUES
(1, '<p>123</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(23, 'Điện thoại Vivo Y15s', 'VV001', '2710000', 3, '1675511697 vivo-y15s-2021-(20).jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', 1, 14),
(24, 'Điện thoại Nokia G11', 'NK002', '2990000', 3, '1675511613 Nokia-g11-xám-thumb-600x600.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', 1, 13),
(25, 'Điện thoại Nokia G21', 'NK001', '3690000', 3, '1675511573 nokia-g21-xanh-thumb-600x600.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', 1, 13),
(26, 'Điện thoại OPPO A55', 'OP002', '3950000', 3, '1675511266 oppo-a55-4g-(22).jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', 1, 12),
(27, 'Điện thoại OPPO Reno8 Pro 5G', 'OP001', '17990000', 3, '1675511220 oppo-reno8-pro-thumb-xanh-1-600x600.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', 1, 12),
(28, 'Điện thoại Samsung Galaxy S22 Ultra 5G 512GB', 'SS002', '31990000', 3, '1675511456 samsung-galaxy-s22-ultra-512gb-(12).jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', 1, 11),
(29, 'Điện thoại Samsung Galaxy S22 Ultra 5G 128GB', 'SS001', '23990000', 3, '1675511401 samsung-galaxy-s22-ultra-(20).jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', 1, 11),
(30, 'Điện thoại iPhone 12 64GB', 'IP006', '15990000', 3, '1675510945 iphone-12-(52).jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', 1, 10),
(31, 'Điện thoại iPhone 14 Pro 128GB', 'IP005', '27290000', 3, '1675510708 iphone-14-pro-(52).jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', 1, 10),
(32, 'Điện thoại iPhone 13 Pro 1TB', 'IP004', '29990000', 3, '1675510502 iphone-13-pro-1tb-(38).jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', 1, 10),
(33, 'Điện thoại iPhone 11 64GB', 'IP003', '11490000', 3, '1675510342 iphone-11-(88).jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n', 1, 10),
(34, 'Điện thoại iPhone 13 Pro Max 1TB', 'IP002', '34990000', 3, '1675510636 iphone-13-pro-max-1tb-(38).jpg', '', '', 1, 10),
(35, 'Điện thoại iPhone 14 Pro 1TB', 'IP001', '37990000', 5, '1676050384 iphone-14-pro-1tb-(40).jpg', '<p>Ưu đ&atilde;i đặc biệt</p>\r\n\r\n<ul>\r\n	<li>Giảm ngay&nbsp;<strong>100.000Đ</strong>&nbsp;khi mua k&egrave;m tai nghe&nbsp;<strong><a href=\"https://onewaymobile.vn/in-ear/tai-nghe-apple-airpods-pro-2022-new100-dp838.html\">Airpods Pro 2</a></stro', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<p>L&agrave; một trong những t&acirc;m điểm của sự kiện Far out ra mắt sản phẩm mới của Apple vừa qua,&nbsp;<strong>iPhone 14 Pro Max&nbsp;&nbsp;</strong>đ&atilde; thu h&uacute;t sự ch&uacute; &yacute; mạnh mẽ của đ&ocirc;ng đảo t&iacute;n đồ c&ocirc;ng nghệ. Với nhiều n&acirc;ng cấp về phần cứng cũng như thiết kế,&nbsp;<strong>iPhone 14 Pro Max</strong>&nbsp;xứng đ&aacute;ng l&agrave; mẫu flagship b&aacute;n chạy nhất trong năm nay.&nbsp;</p>\r\n\r\n<h2><strong>Thiết kế Dynamic Island cho trải nghiệm độc đ&aacute;o</strong></h2>\r\n\r\n<p>Thay đổi đ&aacute;ng ch&uacute; &yacute; nhất tr&ecirc;n d&ograve;ng<strong>&nbsp;iPhone 14 Pro/ 14 Pro Max</strong>&nbsp;kh&ocirc;ng thể kh&ocirc;ng kể đến nơi đặt cụm camera trước v&agrave; cảm biến. Năm nay m&agrave;n h&igrave;nh tai thỏ được chuyển th&agrave;nh m&agrave;n h&igrave;nh dạng chữ i nằm ngang gọi l&agrave; Dynamic Island, đ&acirc;y cũng l&agrave; nơi hiện th&ocirc;ng b&aacute;o mới, k&iacute;ch thước cụm &quot;Dynamic Island&quot; sẽ tự động thay đổi k&iacute;ch thước t&ugrave;y từng trường hợp. Bạn c&oacute; thể mở rộng bằng c&aacute;c thao t&aacute;c vuốt chạm, cũng như trở về m&agrave;n h&igrave;nh ch&iacute;nh khi cần thiết.</p>\r\n', 1, 10);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_danhmuc` (`id_danhmuc`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `id_khachhang` (`id_khachhang`);

--
-- Chỉ mục cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`id_cart_details`),
  ADD KEY `id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `dangky`
--
ALTER TABLE `dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `danhmucbaiviet`
--
ALTER TABLE `danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sanpham`),
  ADD KEY `id_danhmuc` (`id_danhmuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `dangky`
--
ALTER TABLE `dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `danhmucbaiviet`
--
ALTER TABLE `danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `cart_details_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id_sanpham`);

--
-- Các ràng buộc cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD CONSTRAINT `danhmuc_ibfk_1` FOREIGN KEY (`id_danhmuc`) REFERENCES `sanpham` (`id_danhmuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
