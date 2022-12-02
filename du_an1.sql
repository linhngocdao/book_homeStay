-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 17, 2021 lúc 09:01 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `du_an1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `ma_bl` int(11) NOT NULL,
  `ma_kh` int(11) NOT NULL,
  `ma_hs` int(11) NOT NULL,
  `noi_dung` text NOT NULL,
  `ngay_bl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `binh_luan`
--

INSERT INTO `binh_luan` (`ma_bl`, `ma_kh`, `ma_hs`, `noi_dung`, `ngay_bl`) VALUES
(8, 1, 31, 'Homestay rất đẹp, rất tuyệt vời', '2021-11-30'),
(9, 1, 31, 'Homestay rất đẹp, rất tuyệt vời', '2021-11-30'),
(10, 10, 29, 'Tôi đã ở đây thấy hoemstay rất tốt!!!', '2021-12-02'),
(11, 10, 25, 'Tôi đã ở đây thấy hoemstay rất tốt!!!', '2021-12-02'),
(12, 10, 19, 'Tôi đã ở đây thấy hoemstay rất tốt!!!', '2021-12-02'),
(13, 10, 20, 'Tôi đã ở đây thấy hoemstay rất tốt!!!', '2021-12-02'),
(14, 10, 21, 'Tôi đã ở đây thấy hoemstay rất tốt!!!', '2021-12-02'),
(15, 10, 22, 'Tôi đã ở đây thấy hoemstay rất tốt!!!', '2021-12-02'),
(16, 10, 23, 'Tôi đã ở đây thấy hoemstay rất tốt!!!', '2021-12-02'),
(17, 10, 24, 'Tôi đã ở đây thấy hoemstay rất tốt!!!', '2021-12-02'),
(18, 10, 25, 'Tôi đã ở đây thấy hoemstay rất tốt!!!', '2021-12-02'),
(19, 10, 26, 'Tôi đã ở đây thấy hoemstay rất tốt!!!', '2021-12-02'),
(20, 10, 27, 'Tôi đã ở đây thấy hoemstay rất tốt!!!', '2021-12-02'),
(21, 10, 28, 'Tôi đã ở đây thấy hoemstay rất tốt!!!', '2021-12-02'),
(22, 10, 29, 'Tôi đã ở đây thấy hoemstay rất tốt!!!', '2021-12-02'),
(23, 10, 30, 'Tôi đã ở đây thấy hoemstay rất tốt!!!', '2021-12-02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dat_phong`
--

CREATE TABLE `dat_phong` (
  `ma_dp` int(11) NOT NULL,
  `ten_kh` varchar(255) NOT NULL,
  `sdt` int(10) NOT NULL,
  `dia_chi` text NOT NULL,
  `ma_kh` int(11) NOT NULL COMMENT 'mã khách hàng',
  `ngay_dat` datetime NOT NULL,
  `ngay_den` date NOT NULL,
  `ngay_ve` date NOT NULL,
  `ma_km` int(11) NOT NULL,
  `trang_thai` tinyint(4) NOT NULL DEFAULT 0,
  `ma_hs` int(11) NOT NULL,
  `tong_tien` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dat_phong`
--

INSERT INTO `dat_phong` (`ma_dp`, `ten_kh`, `sdt`, `dia_chi`, `ma_kh`, `ngay_dat`, `ngay_den`, `ngay_ve`, `ma_km`, `trang_thai`, `ma_hs`, `tong_tien`) VALUES
(86, 'Nguyễn Trung Hiệp', 1234567890, '', 10, '2021-12-02 09:54:08', '2021-12-08', '2021-12-10', 1, 1, 20, 2000000),
(87, 'Trung Hiệ', 1234567890, '', 10, '2021-12-02 09:57:25', '2021-12-05', '2021-12-10', 1, 2, 21, 3000000),
(89, 'Nguyễn Trung Hiệp', 1234567890, '', 8, '2021-12-05 16:23:06', '2021-12-06', '2021-12-10', 1, 2, 39, 22500000),
(90, 'Nguyễn Trung Hiệp', 1234567890, '', 10, '2021-12-07 09:05:14', '2021-12-05', '2021-12-08', 1, 0, 20, 1000000),
(91, 'Mai', 225, '', 11, '2021-12-07 13:03:56', '2021-12-08', '2021-12-09', 1, 1, 29, 1998000),
(92, 'Mai', 225, '', 11, '2021-12-11 11:17:39', '2021-12-12', '2021-12-16', 1, 1, 39, 15000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dia_diem`
--

CREATE TABLE `dia_diem` (
  `ma_dd` int(11) NOT NULL,
  `ten_dd` varchar(255) NOT NULL,
  `anh_dd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dia_diem`
--

INSERT INTO `dia_diem` (`ma_dd`, `ten_dd`, `anh_dd`) VALUES
(120, 'Quận Đống Đa', 'a20.jpg'),
(121, 'Quận Hoàn Kiếm', 'a16.jpg'),
(124, 'Quận Ba Đình', 'a3.jpg'),
(132, 'Quận Long Biên', 'a9.jpg'),
(133, 'Huyện Chương Mỹ', 'a5.jpg'),
(134, 'Quận Tây Hồ', 'a14.jpg'),
(135, 'Huyện Đan Phượng', 'a7.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoi_tro`
--

CREATE TABLE `hoi_tro` (
  `ma_ht` int(11) NOT NULL,
  `ten_ht` varchar(255) NOT NULL,
  `sdt_ht` int(10) NOT NULL,
  `email_ht` varchar(255) NOT NULL,
  `noi_dung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoi_tro`
--

INSERT INTO `hoi_tro` (`ma_ht`, `ten_ht`, `sdt_ht`, `email_ht`, `noi_dung`) VALUES
(1, 'Nguyễn Trung Hiệp', 327692276, 'hiep@gmail.com', 'Tôi k biết đặt phòng thế nào '),
(2, 'Nguyễn Trung Hiệp', 327692276, 'hiepgacuti29032002@gmail.com', 'ng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `homestay`
--

CREATE TABLE `homestay` (
  `ma_hs` int(11) NOT NULL,
  `ten_hs` varchar(255) NOT NULL,
  `anh_hs` varchar(255) NOT NULL,
  `gioi_thieu` text NOT NULL,
  `ma_dd` int(11) NOT NULL,
  `ma_lp` int(11) NOT NULL,
  `gia` int(12) NOT NULL,
  `gia_km` int(12) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `homestay`
--

INSERT INTO `homestay` (`ma_hs`, `ten_hs`, `anh_hs`, `gioi_thieu`, `ma_dd`, `ma_lp`, `gia`, `gia_km`) VALUES
(19, 'Căn Hộ Duplex Indochina 1BR View Hà Nội', 'bv1.jpg', 'Chào mừng bạn đến MLibrary! \r\n\r\nVới vị trí đắc địa giữa trung tâm quận Tây Hồ, MLibrary sẽ giúp bạn được trải nghiệm bầu không khí trong lành, không gian yên tĩnh, sang trọng, và thoải mái; đặc biệt nhât chính là những tiện nghi, dịch vụ đẳng cấp, hiện đại chuẩn tiêu chí 5 sao.\r\n\r\nMLibrary phù hợp cho du lịch nghỉ dưỡng, tuần trăng mật, công tác, giải trí.', 120, 11, 1200000, 0),
(20, 'Luxury 1BR Apt Vinhomes Skylake near Keangnam', 'bv2.jpg', 'Căn hộ mới và hiện đại vừa được trang bị tiện nghi giúp khách hàng cảm thấy như đang ở nhà. Toàn bộ căn hộ tràn ngập ánh sáng tự nhiên, tạo sự vừa thoáng vừa rộng rãi. Các tòa nhà có đầy đủ tiện nghi bao gồm Phòng tập thể dục, bể bơi 4 mùa, sân vườn đẹp, nhà hàng, khu vui chơi trẻ em, Cửa hàng dược phẩm ... Giao thông rất thuận tiện để đi bất cứ nơi nào trong thành phố cũng như các khu công nghiệp quanh thủ đô Hà Nội. Khách truy cập vào toàn bộ nơi. Tôi sẽ có mặt 24/7. Khu phố rất an toàn và xinh đẹp với công viên, hồ nước và khu giải trí. Cửa hàng tiện lợi, siêu thị và các dịch vụ khác cũng có sẵn trong khoảng cách đi bộ. Rất an toàn để có được xung quanh. Grab hoặc taxi được khuyến nghị nếu bạn muốn đi quanh thành phố.', 121, 10, 1200000, 1000000),
(21, 'The Galaxy Home', 'bv3.jpg', 'Tóm tắt về The Galaxy Home Apartment\r\n\r\n·Vị trí rất đẹp và thuận tiện ở quận Cầu Giấy\r\n\r\n·Gần công viên Cầu Giấy, Lotteria, trung tâm mua sắm với môi trường ngoài trời yên tĩnh\r\n\r\n·Bạn hoàn toàn có thể trải nghiệm những dịch vụ cao cấp tại đây\r\n\r\nVề không gian\r\n\r\n·Căn hộ được thiết kế với nhiều lựa chọn bố trí hợp lý và được trang bị theo tiêu chuẩn cao cấp 4 sao với ban công riêng và cảnh quan đẹp\r\n\r\n·Có nhiều dịch vụ tại chỗ khác nhau như giặt ủi, dịch vụ vệ sinh, Wi-Fi miễn phí tốc độ cao, an ninh 24/7\r\n\r\n·Dịch vụ khách hàng đặc biệt được cung cấp\r\n\r\nCăn hộ Deluxe 60m2 - Có ban công - Hướng nhìn thành phố\r\n\r\n·Thang máy ra vào căn hộ với hệ thống thẻ khóa an ninh\r\n\r\n·Phòng khách được thiết kế theo phong cách hiện đại với ghế sofa và khu vực ăn uống riêng\r\n\r\n·Nhà bếp được trang bị đầy đủ với bếp điện và máy hút mùi điện, lò vi sóng, tủ lạnh, ấm điện, đồ thủy tinh, đồ sành sứ, dao kéo\r\n\r\n·Phòng tắm được trang bị bồn tắm dài / tắm đứng và kính riêng\r\n\r\n·Phòng ngủ có sẵn ga trải giường và két an toàn cá nhân trong phòng\r\n\r\n·Hệ thống giải trí với TV LCD và các kênh truyền hình cáp\r\n\r\n·Điều hòa hai chiều với bộ điều khiển nhiệt riêng\r\n\r\n·Điện thoại\r\n\r\n·Wi-fi\r\n\r\n·Cơ sở vật chất phòng tắm và nhà bếp tiện nghi đến từ các nhãn hàng nổi tiếng như: Koller, Samsung, Electrolux...\r\n\r\n·Căn hộ đều có tiện nghi sang trọng, điện thoại, kênh truyền hình cáp, TV màn hình phẳng, máy lạnh, khu vực phòng khách, máy giặt, tủ quần áo, giá treo quần áo, máy sấy tóc, phòng tắm, dép, vòi hoa sen, ghế sofa, sàn gỗ, tủ lạnh, lò vi sóng, đồ dùng nhà bếp, bàn ăn, khăn tắm, ga trải giường.\r\n\r\nCác dịch vụ khác\r\n\r\n·Dịch vụ dọn phòng: 2 lần mỗi tuần\r\n\r\n·Dịch vụ giặt đồ\r\n\r\n·Bãi đỗ xe\r\n\r\n·Camera an ninh 24/7', 124, 12, 1100000, 1000000),
(22, 'Lotusland - The Tropical Relax House', 'bv4.jpg', '- Tropical Relax có nét quyến rũ riêng trong không gian yên tĩnh trong khu vực đầy cây xanh\r\n\r\n- Mỗi góc của ngôi nhà đều được chăm chút từng tí một\r\n\r\n- Ban công khá rộng và có view nhìn xuống đường, bạn có thể đọc sách hoặc nhâm nhi một tách cafe ở đây\r\n\r\n- Xung quanh rất nhiều quán cafe, quán ăn, bar pub và thuận lợi cho bạn tham quan cũng như tận hưởng Hà Nội\r\n\r\nNằm trên đường Nguyễn Trường Tộ, Tropical Relax có nét quyến rũ riêng trong không gian yên tĩnh trong khu vực đầy cây xanh. Chúng tôi mong muốn có thể giúp khách du lịch thư giãn sau một chuyến bay dài hoặc sau một ngày khám phá Hà Nội, mỗi góc của ngôi nhà được chăm chút từng tí một. Hãy thử và trải nghiệm Tropical Relax House.', 132, 11, 1200000, 1000000),
(23, 'Cosy & Delightful Studio | 1 min to Hoan Kiem Lake', 'bv1.jpg', 'Phòng riêng · 1 Phòng tắm · 1 giường · 1 phòng ngủ · 2 khách (tối đa 3 khách)\r\n\r\n- Nằm ở trung tâm nên bạn có thể dễ dàng di chuyển từ căn hộ đến các điểm tham quan nổi tiếng\r\n\r\n- Chỗ ở của chúng tôi cung cấp cho bạn đầy đủ những tiện nghi hiện đại, thoải mái như đang ở trong chính ngôi nhà của mình\r\n\r\n- Cosy & Delightful Studio nằm trên tầng 5 một tòa nhà hoàn toàn mới trên phố Nhà Thờ - con phố cao cấp bậc nhất Hà Nội\r\n\r\n- Chỗ ở của chúng tôi chỉ đơn giản ở giữa tất cả mọi thứ: Nhà thờ St.Joseph và chùa Bà Đá ở trước cửa nhà của bạn\r\n\r\n- 2 phút đến hồ Gươm, ít hơn 10 phút đi bộ đến phố Tạ Hiện và Chợ Đêm\r\n\r\n- Có một khu vườn lớn ở phía trước phòng, nơi bạn có thể ngắm cảnh nhà thờ và đường phố bên dưới\r\n\r\n- Bạn không thể ở một vị trí tốt hơn để khám phá khu phố cổ và Hà Nội\r\n\r\n- Nằm ở trung tâm nên bạn có thể dễ dàng di chuyển từ căn hộ đến các điểm tham quan nổi tiếng\r\n\r\n- Chỗ ở của chúng tôi cung cấp cho bạn đầy đủ những tiện nghi hiện đại, thoải mái như đang ở trong chính ngôi nhà của mình\r\n\r\n- Cosy & Delightful Studio nằm trên tầng 5 một tòa nhà hoàn toàn mới trên phố Nhà Thờ - con phố cao cấp bậc nhất Hà Nội\r\n\r\n- Chỗ ở của chúng tôi chỉ đơn giản ở giữa tất cả mọi thứ: Nhà thờ St.Joseph và chùa Bà Đá ở trước cửa nhà của bạn\r\n\r\n- 2 phút đến hồ Gươm, ít hơn 10 phút đi bộ đến phố Tạ Hiện và Chợ Đêm\r\n\r\n- Có một khu vườn lớn ở phía trước phòng, nơi bạn có thể ngắm cảnh nhà thờ và đường phố bên dưới\r\n\r\n- Bạn không thể ở một vị trí tốt hơn để khám phá khu phố cổ và Hà Nội', 133, 10, 1100000, 1000000),
(24, 'The Galaxy Home - 1 Phòng Ngủ, 60m2, View Thành Phố, Ban Công - Dịch Vọng', 'hs_1.png', 'Phòng riêng · 1 Phòng tắm · 1 giường · 1 phòng ngủ · 2 khách (tối đa 3 khách)\r\n\r\nTóm tắt về The Galaxy Home Apartment\r\n\r\n·Vị trí rất đẹp và thuận tiện ở quận Cầu Giấy\r\n\r\n·Gần công viên Cầu Giấy, Lotteria, trung tâm mua sắm với môi trường ngoài trời yên tĩnh\r\n\r\n·Bạn hoàn toàn có thể trải nghiệm những dịch vụ cao cấp tại đây\r\n\r\nVề không gian\r\n\r\n·Căn hộ được thiết kế với nhiều lựa chọn bố trí hợp lý và được trang bị theo tiêu chuẩn cao cấp 4 sao với ban công riêng và cảnh quan đẹp\r\n\r\n·Có nhiều dịch vụ tại chỗ khác nhau như giặt ủi, dịch vụ vệ sinh, Wi-Fi miễn phí tốc độ cao, an ninh 24/7\r\n\r\n·Dịch vụ khách hàng đặc biệt được cung cấp\r\n\r\nCăn hộ Deluxe 60m2 - Có ban công - Hướng nhìn thành phố\r\n\r\n·Thang máy ra vào căn hộ với hệ thống thẻ khóa an ninh\r\n\r\n·Phòng khách được thiết kế theo phong cách hiện đại với ghế sofa và khu vực ăn uống riêng\r\n\r\n·Nhà bếp được trang bị đầy đủ với bếp điện và máy hút mùi điện, lò vi sóng, tủ lạnh, ấm điện, đồ thủy tinh, đồ sành sứ, dao kéo\r\n\r\n·Phòng tắm được trang bị bồn tắm dài / tắm đứng và kính riêng\r\n\r\n·Phòng ngủ có sẵn ga trải giường và két an toàn cá nhân trong phòng\r\n\r\n·Hệ thống giải trí với TV LCD và các kênh truyền hình cáp\r\n\r\n·Điều hòa hai chiều với bộ điều khiển nhiệt riêng\r\n\r\n·Điện thoại\r\n\r\n·Wi-fi\r\n\r\n·Cơ sở vật chất phòng tắm và nhà bếp tiện nghi đến từ các nhãn hàng nổi tiếng như: Koller, Samsung, Electrolux...\r\n\r\n·Căn hộ đều có tiện nghi sang trọng, điện thoại, kênh truyền hình cáp, TV màn hình phẳng, máy lạnh, khu vực phòng khách, máy giặt, tủ quần áo, giá treo quần áo, máy sấy tóc, phòng tắm, dép, vòi hoa sen, ghế sofa, sàn gỗ, tủ lạnh, lò vi sóng, đồ dùng nhà bếp, bàn ăn, khăn tắm, ga trải giường.\r\n\r\nCác dịch vụ khác\r\n\r\n·Dịch vụ dọn phòng: 2 lần mỗi tuần\r\n\r\n·Dịch vụ giặt đồ\r\n\r\n·Bãi đỗ xe\r\n\r\n·Camera an ninh 24/7\r\n\r\nTóm tắt về The Galaxy Home Apartment\r\n\r\n·Vị trí rất đẹp và thuận tiện ở quận Cầu Giấy\r\n\r\n·Gần công viên Cầu Giấy, Lotteria, trung tâm mua sắm với môi trường ngoài trời yên tĩnh\r\n\r\n·Bạn hoàn toàn có thể trải nghiệm', 120, 10, 850000, 0),
(25, 'Hanoi Home 3 - Beautiful apartment for you (no. 22) - miễn phí xe đạp', 'hs2.jpg', 'Phòng riêng · 1 Phòng tắm · 1 giường · 1 phòng ngủ · 2 khách (tối đa 2 khách)\r\n\r\nCăn hộ nằm ở một vị trí lý tưởng, nơi này là một con phố đông đúc của cộng đồng nước ngoài. Có rất nhiều nhà hàng, quán bar, quán cà phê, phòng tập thể dục, tất cả đều được làm cho người nước ngoài.\r\n\r\nKhu vực xung quanh có nhiều cảnh quan đẹp như Hồ Kiếm, Hồ Trúc Bạch, Chùa Quán Thành, Sông Hồng, Làng hoa Quang An, Làng hoa Nhật Tân và đặc biệt là Hồ Tây rộng lớn, rộng lớn, nơi bạn có thể đi xe đạp ( miễn phí) quanh Hồ và uống cà phê dọc đường.\r\n\r\nTrái ngược với sự nhộn nhịp của đường phố, căn hộ nằm trong một con hẻm cách đường phố khoảng 100 mét, rất yên tĩnh và thích hợp để nghỉ ngơi, làm việc và sinh sống tại đây. Bạn sẽ cảm thấy thoải mái vì Chủ nhà rất thân thiện và mến khách. Nhà an toàn với an ninh 24/24. Bạn có thể tận hưởng đạp xe quanh thị trấn với xe đạp miễn phí. Dịch vụ dọn phòng miễn phí hai lần một tuần, đỗ xe máy trong tòa nhà.\r\n\r\nCăn hộ nằm ở một vị trí lý tưởng, nơi này là một con phố đông đúc của cộng đồng nước ngoài. Có rất nhiều nhà hàng, quán bar, quán cà phê, phòng tập thể dục, tất cả đều được làm cho người nước ngoài.\r\n\r\nKhu vực xung quanh có nhiều cảnh quan đẹp như Hồ Kiếm, Hồ Trúc Bạch, Chùa Quán Thành, Sông Hồng, Làng hoa Quang An, Làng hoa Nhật Tân và đặc biệt là Hồ Tây rộng lớn, rộng lớn, nơi bạn có thể đi xe đạp ( miễn phí) quanh Hồ và uống cà phê dọc đường.\r\n\r\nTrái ngược với sự nhộn nhịp của đường phố, căn hộ nằm trong một con hẻm cách đường phố khoảng 100 mét, rất yên tĩnh và thích hợp để nghỉ ngơi, làm việc và sinh sống tại đây. Bạn sẽ cảm thấy thoải mái vì Chủ nhà rất thân thiện và mến khách. Nhà an toàn với an ninh 24/24. Bạn có thể tận hưởng đạp xe quanh thị trấn với xe đạp miễn phí. Dịch vụ dọn phòng miễn phí hai lần một tuần, đỗ xe máy trong tòa nhà.', 121, 10, 690000, 0),
(26, 'JOI homestay - căn hộ view phố,, ban công ,gần chợ đêm', 'hs3.jpeg', 'Nguyên căn · 1 Phòng tắm · 1 giường · 1 phòng ngủ · 2 khách (tối đa 4 khách)\r\n\r\nCăn hộ nằm trên tầng 2 của toà nhà , với ban công nhìn xuống phố cổ\r\n\r\nVị trí không thể tốt hơn ! Cách chợ đêm cuối tuần 2 phút đi bộ , Chợ Đồng Xuân chỉ 5 phút , hồ Hoàn Kiếm 10 phút đi bộ\r\n\r\nNgoài ra có rất nhiều hàng quán xung quanh. Nổi tiếng bạn có thể tìm thấy cafe trứng, cafe cốt dừa , các loại nước ép ngay trước cửa nhà. Cửa hàng tiện lợi chỉ cách 100m mở 24h . Các món ngon của Hà Nội cũng tập trung nhiều xung quanh khu vực này với vài bước chân thôi ( Bánh Cuốn, Phở, Bún Thang, Bún riêu , Bún chả ect ...)\r\n\r\nPhòng tắm rộng nằm ngay trong phòng với vách tắm ngăn .\r\n\r\nSmart TIvi , có netflix ( bạn phải có account riêng của mình nhé :) )\r\n\r\nMột cái bếp nhỏ trong phòng để bạn có thể nấu những món đơn giản\r\n\r\nCăn hộ nằm trên tầng 3 của toà nhà và không có thang máy\r\n\r\nNếu bạn đi xe máy , có chỗ để xe ban ngày , ngay trước cửa chỗ nghỉ. Ban đêm sẽ có bãi đỗ xe cách 100m ( mất phí)\r\n\r\nNếu phòng này không không trống ngày bạn muốn đặt, hãy nhắn tin hỏi bọn mình để có các loại phòng khác nhé\r\n\r\nCăn hộ nằm trên tầng 2 của toà nhà , với ban công nhìn xuống phố cổ\r\n\r\nVị trí không thể tốt hơn ! Cách chợ đêm cuối tuần 2 phút đi bộ , Chợ Đồng Xuân chỉ 5 phút , hồ Hoàn Kiếm 10 phút đi bộ\r\n\r\nNgoài ra có rất nhiều hàng quán xung quanh. Nổi tiếng bạn có thể tìm thấy cafe trứng, cafe cốt dừa , các loại nước ép ngay trước cửa nhà. Cửa hàng tiện lợi chỉ cách 100m mở 24h . Các món ngon của Hà Nội cũng tập trung nhiều xung quanh khu vực này với vài bước chân thôi ( Bánh Cuốn, Phở, Bún Thang, Bún riêu , Bún chả ect ...)\r\n\r\nPhòng tắm rộng nằm ngay trong phòng với vách tắm ngăn .\r\n\r\nSmart TIvi , có netflix ( bạn phải có account riêng của mình nhé :) )\r\n\r\nMột cái bếp nhỏ trong phòng để bạn có thể nấu những món đơn giản\r\n\r\nCăn hộ nằm trên tầng 3 của toà nhà và không có thang máy\r\n\r\nNếu bạn đi xe máy , có chỗ để xe ban ngày , ngay trước cửa chỗ nghỉ. Ban đêm sẽ có bãi đỗ xe cách 100m ( mất phí)\r\n\r\nNếu phòng ', 124, 10, 450000, 0),
(27, 'IPG.C1003 - Căn hộ 2 phòng ngủ tại Imperia Garden - Thiết kế hiện đại và tiện dụng', 'hs5.jpg', 'Nguyên căn · 2 Phòng tắm · 2 giường · 2 phòng ngủ · 2 khách (tối đa 4 khách)\r\n\r\nChung cư IMPERIA GARDEN, với 4 toà nhà cao từ 27 đến 35 tầng. Đây là một chung cư cao cấp, sang trọng, đẳng cấp 5 sao. Nằm giữa trung tâm quận Thanh Xuân, thành phố Hà Nội, rất thuận lợi cho việc nghỉ ngơi, du lịch và công tác.\r\n\r\nNơi đây có hệ thống hạ tầng tiện ích và dịch vụ đồng bộ, khép kín bao gồm: các trung tâm chăm sóc sức khỏe và làm đẹp như bể bơi ngoài trời, bể bơi trong nhà (4 mùa), khu tập gym, khu vui chơi trẻ em, trường học, hệ thống nhà hàng, siêu thị mua sắm, hầm đỗ xe thông minh …\r\n\r\nCác khoảng cây xanh đan xen giúp làm hài hòa cảnh quan và không gian kiến trúc tổng thể và góp phần điều hòa không khí, tạo không gian nghỉ ngơi thư giãn. Tất cả nhằm kiến tạo một môi trường sống chất lượng, mang tới cuộc sống hoàn hảo cho cư dân.\r\n\r\nĐến với Vistay bạn sẽ được tận hưởng một cuộc sống khác biệt, không gian thật sự sang trọng, thoải mái, có thể nghỉ dưỡng và vui chơi thỏa thích. Ngoài ra, phía trong chỗ ở của chúng tôi đã chuẩn bị sẵn cho bạn: TV, tủ lạnh, máy giặt, wifi miễn phí, điều hoà 2 chiều, bồn tắm nước nóng, giường, tủ, bàn ghế, sofa, bếp, dụng cụ nấu ăn, …\r\n\r\nChung cư IMPERIA GARDEN, với 4 toà nhà cao từ 27 đến 35 tầng. Đây là một chung cư cao cấp, sang trọng, đẳng cấp 5 sao. Nằm giữa trung tâm quận Thanh Xuân, thành phố Hà Nội, rất thuận lợi cho việc nghỉ ngơi, du lịch và công tác.\r\n\r\nNơi đây có hệ thống hạ tầng tiện ích và dịch vụ đồng bộ, khép kín bao gồm: các trung tâm chăm sóc sức khỏe và làm đẹp như bể bơi ngoài trời, bể bơi trong nhà (4 mùa), khu tập gym, khu vui chơi trẻ em, trường học, hệ thống nhà hàng, siêu thị mua sắm, hầm đỗ xe thông minh …\r\n\r\nCác khoảng cây xanh đan xen giúp làm hài hòa cảnh quan và không gian kiến trúc tổng thể và góp phần điều hòa không khí, tạo không gian nghỉ ngơi thư giãn. Tất cả nhằm kiến tạo một môi trường sống chất lượng, mang tới cuộc sống hoàn hảo cho cư dân.\r\n\r\nĐến với Vistay bạn sẽ được tận hưởng một cuộc sống khác biệt, kh', 124, 11, 1177000, 999000),
(28, 'Runaway - The Chipmunk', 'hs6.jpg', 'Nguyên căn · 1 Phòng tắm · 2 giường · 2 phòng ngủ · 4 khách (tối đa 5 khách)\r\n\r\n✔️ Runaway - The Chipmunk chỉ cách trung tâm Hà Nội 45km, rất thích hợp cho chuyến nghỉ dưỡng cuối tuần bên bạn bè\r\n\r\n✔️ Nhà kính Runaway dành cho một nhóm bạn từ 2-4 người với đầy đủ những tiện nghi hiện đại nhất\r\n\r\n✔️ Xung quanh nhà có không gian rất rộng và thoáng để bạn có thể tổ chức tiệc nướng hoặc lửa trại\r\n\r\n✔️ Chủ nhà rất vui tính và nhận đặt đồ ăn vặt về đêm cho các bạn nữa\r\n\r\n- Địa chỉ: xã Minh Phú, huyện Sóc Sơn, Hà Nội\r\n\r\nCăn nhà kính Runaway dành cho nhóm 2-4 bạn với 2 giường đôi và 1 phòng tắm, 2 ban công. 1 ban công view rộng, ngắm cảnh núi rừng ở xa và 1 ban công cạnh tán cây thông, ngắm nhìn đồi thông xanh mướt. Có không gian BBQ ngoài trời. Bàn ăn ngoài vườn với ô che hoặc bàn ăn dưới giàn chanh leo lung linh ánh sáng. Có thể setup máy chiếu để làm phòng chiếu phim.\r\n\r\nDịch vụ chung tại The Chipmunk - Nhà của Sóc: Boardgame Uno, Mèo Nổ, Ma Sói, Bài Tây, Beerpong Cho thuê Loa & Mic, Máy chiếu, PS4. Nhận đặt đồ ăn\r\n\r\n✔️ Runaway - The Chipmunk chỉ cách trung tâm Hà Nội 45km, rất thích hợp cho chuyến nghỉ dưỡng cuối tuần bên bạn bè\r\n\r\n✔️ Nhà kính Runaway dành cho một nhóm bạn từ 2-4 người với đầy đủ những tiện nghi hiện đại nhất\r\n\r\n✔️ Xung quanh nhà có không gian rất rộng và thoáng để bạn có thể tổ chức tiệc nướng hoặc lửa trại\r\n\r\n✔️ Chủ nhà rất vui tính và nhận đặt đồ ăn vặt về đêm cho các bạn nữa\r\n\r\n- Địa chỉ: xã Minh Phú, huyện Sóc Sơn, Hà Nội\r\n\r\nCăn nhà kính Runaway dành cho nhóm 2-4 bạn với 2 giường đôi và 1 phòng tắm, 2 ban công. 1 ban công view rộng, ngắm cảnh núi rừng ở xa và 1 ban công cạnh tán cây thông, ngắm nhìn đồi thông xanh mướt. Có không gian BBQ ngoài trời. Bàn ăn ngoài vườn với ô che hoặc bàn ăn dưới giàn chanh leo lung linh ánh sáng. Có thể setup máy chiếu để làm phòng chiếu phim.\r\n\r\nDịch vụ chung tại The Chipmunk - Nhà của Sóc: Boardgame Uno, Mèo Nổ, Ma Sói, Bài Tây, Beerpong Cho thuê Loa & Mic, Máy chiếu, PS4. Nhận đặt đồ ăn', 133, 11, 1400000, 1250000),
(29, 'Aloha Hanoi Homestay 24', 'hs7.jpg', 'Nguyên căn · 2 Phòng tắm · 3 giường · 2 phòng ngủ · 4 khách (tối đa 6 khách)\r\n\r\nAloha Hanoi Homestay 24 rộng 90m2 với 2 phòng ngủ, phòng khách riêng biệt cùng TV màn hình phẳng và ghế sofa. Chỗ ở của chúng tôi được sử dụng tối đa cho 4 người. Tuy nhiên, nếu các bạn muốn ở cùng nhau, hoặc nhóm bạn đông mà muốn tiết kiệm chi phí thì chúng tôi có thể cung cấp thêm một tấm nệm sàn đôi cho khách thứ 5 và thứ 6.\r\n\r\nNhà bếp được trang bị đầy đủ nhất những tiện nghi hiện đại, thoải mái để các bạn có thể tự nấu ăn tại đây như: lò vi sóng, tủ lạnh, dụng cụ nhà bếp và ấm đun nước điện. Chỗ ở của chúng tôi rất phù hợp cho một gia đình hoặc một nhóm bạn. Chúng tôi cung cấp thêm cho bạn một máy giặt để bạn có thể chủ động giặt đồ tại nhà.\r\n\r\nAloha Hanoi Homestay 24 rộng 90m2 với 2 phòng ngủ, phòng khách riêng biệt cùng TV màn hình phẳng và ghế sofa. Chỗ ở của chúng tôi được sử dụng tối đa cho 4 người. Tuy nhiên, nếu các bạn muốn ở cùng nhau, hoặc nhóm bạn đông mà muốn tiết kiệm chi phí thì chúng tôi có thể cung cấp thêm một tấm nệm sàn đôi cho khách thứ 5 và thứ 6.\r\n\r\nNhà bếp được trang bị đầy đủ nhất những tiện nghi hiện đại, thoải mái để các bạn có thể tự nấu ăn tại đây như: lò vi sóng, tủ lạnh, dụng cụ nhà bếp và ấm đun nước điện. Chỗ ở của chúng tôi rất phù hợp cho một gia đình hoặc một nhóm bạn. Chúng tôi cung cấp thêm cho bạn một máy giặt để bạn có thể chủ động giặt đồ tại nhà.', 133, 11, 1155000, 999000),
(30, 'Goldentrip Homestay IV', 'hs8.jpg', 'Phòng riêng · 1 Phòng tắm · 2 giường · 1 phòng ngủ · 2 khách (tối đa 4 khách)\r\n\r\nGoldentrip IV có diện tích 45m2. Gồm 1 phòng ngủ và 1 phòng tắm. Được chúng tôi trang bị đầy đủ các thiết bị tiện nghi, hiện đại. Với mong muốn mang đến những trải nghiệm thoải mái và riêng tư nhất.\r\n\r\nPhòng ngủ có cửa sổ lớn và ban công rộng rãi, thoáng đãng. Giúp căn phòng luôn tràn ngập ánh sáng và bạn hãy tận hưởng bầu không khí trong lành vào những buổi sáng tinh mơ.\r\n\r\nChúng tôi còn trang bị thêm không gian bếp nhỏ xinh và nhà vệ sinh riêng, đáp ứng mọi nhu cầu của khách hàng. Bạn có thể cùng bạn bè hay người thân dành buổi tối cùng nhau tận hưởng những bữa ăn thật đầm ấm do chính tay mình làm.\r\n\r\nGoldentrip IV sử dụng màu trắng là gam màu chủ đạo. Được thiết kế với phong cách hiện đại. Nội thất chúng tôi sử dụng gỗ tự nhiên, gỗ công nghiệp, sắt không gỉ,... Luôn khiến các du khách cảm thấy vừa ấm áp vừa mới lạ.\r\n\r\nChúng tôi sẵn sàng giải đáp, giúp đỡ mọi vấn đề của du khách. Hãy liên hệ trực tiếp với chúng tôi khi bạn cần:\r\n\r\n- Cung cấp tour du lịch dài hoặc ngắn ngày, trong và ngoài nước\r\n\r\n- Có hướng dẫn viên tiếng Anh đi tour\r\n\r\n- Tư vấn các điểm ăn uống và vui chơi\r\n\r\nGoldentrip IV nằm ở trung tâm thành phố và gần nhiều điểm tham quan du lịch nổi tiếng. Bạn hãy lưu ngay lại nơi nghỉ nghỉ lý tưởng cho chuyến du lịch sắp tới của bạn nhé.\r\n\r\nGoldentrip IV có diện tích 45m2. Gồm 1 phòng ngủ và 1 phòng tắm. Được chúng tôi trang bị đầy đủ các thiết bị tiện nghi, hiện đại. Với mong muốn mang đến những trải nghiệm thoải mái và riêng tư nhất.\r\n\r\nPhòng ngủ có cửa sổ lớn và ban công rộng rãi, thoáng đãng. Giúp căn phòng luôn tràn ngập ánh sáng và bạn hãy tận hưởng bầu không khí trong lành vào những buổi sáng tinh mơ.\r\n\r\nChúng tôi còn trang bị thêm không gian bếp nhỏ xinh và nhà vệ sinh riêng, đáp ứng mọi nhu cầu của khách hàng. Bạn có thể cùng bạn bè hay người thân dành buổi tối cùng nhau tận hưởng những bữa ăn thật đầm ấm do chính tay mình làm.\r\n\r\nGoldentrip IV sử dụng màu trắng là gam', 134, 10, 650000, 550000),
(31, 'Breakfast Included★3BR Apartment in Hanoi center', 'hs9.jpg', 'Nguyên căn · 3 Phòng tắm · 4 giường · 3 phòng ngủ · 6 khách (tối đa 6 khách)\r\n\r\nA. Chi tiết căn hộ:\r\n\r\nCăn hộ riêng rộng 155 m2 với tổng 3 phòng ngủ với 3 phòng tắm, 1 phòng khách và 1 bếp\r\n\r\n- Phòng 301: 1 giường cỡ king\r\n\r\n- Phòng 302: 1 giường cỡ king\r\n\r\n- Phòng 303: 2 giường đơn\r\n\r\nKhu vườn trên sân thượng với 150 m2 trên đỉnh tòa nhà. Tận dụng lợi thế của khu vườn trên sân thượng đáng yêu của chúng tôi và có một tách cà phê, trà trong khi trò chuyện với gia đình và bạn bè.\r\n\r\nB. Tiện nghi:\r\n\r\nMỗi phòng: TV thông minh, dép, khăn 3 người / người, đồ vệ sinh cá nhân, áo choàng tắm và máy sấy tóc,\r\n\r\nMột ấm đun nước, cốc, chai nước, cà phê, trà và đường\r\n\r\nBếp: Bếp điện từ, lò nướng, tủ lạnh, lò vi sóng, máy nướng bánh mì với nồi, chảo\r\n\r\nDụng cụ nhà bếp có chén, ly rượu\r\n\r\nĐường, muối, hạt tiêu, nước sốt, giấm, ớt và sốt cà chua luôn có sẵn\r\n\r\nC. Dịch vụ của chúng tôi:\r\n\r\nBữa sáng kiểu Việt / chay / cơ bản miễn phí của người Mỹ với tổng số 8 thực đơn mỗi sáng từ 7:30 sáng đến 10:00 sáng\r\n\r\n(Nếu bạn cần ra ngoài sớm để tham quan, lên kế hoạch tham quan, vui lòng hỏi tôi để tôi có thể chuẩn bị thức ăn như: bánh mì, bánh ngọt, trái cây, sữa chua, .. cho bạn ngày hôm trước)\r\n\r\nChai nước, cà phê, trà MIỄN PHÍ trong mỗi phòng và khu vực nhà bếp (sẽ được nạp lại hàng ngày)\r\n\r\n1 chai sữa MIỄN PHÍ, 1 chai nước ép táo / cam trong 1 NGÀY\r\n\r\nLưu trữ hành lý MIỄN PHÍ trước và sau khi đăng ký\r\n\r\nDịch vụ vệ sinh MIỄN PHÍ hàng ngày\r\n\r\nMIỄN PHÍ tự giặt đồ và có phí dịch vụ giặt ủi (Giá: 100.000 đồng / giỏ)\r\n\r\nCho thuê xe đạp và xe máy\r\n\r\nDịch vụ đón và trả khách với xe 5, 7, 9 hoặc 16 chỗ\r\n\r\nDịch vụ bảo vệ 24/7\r\n\r\nC. Các điểm tham quan gần đó:\r\n\r\n- 30 giây đi bộ đến Văn Văn (đối diện căn hộ)\r\n\r\n- 5 phút đi bộ đến Bảo tàng Mỹ thuật Việt Nam\r\n\r\n- 15 phút đi bộ đến Khu phức hợp Hồ Chí Minh (Lăng, Chùa Một Trụ và Bảo tàng HCM)\r\n\r\n- 13 phút bằng taxi đến khu phố cổ\r\n\r\nBên cạnh đó, tôi cũng là một người bản địa vô cùng thân thiện và thoải mái. Chính vì vậy đừng ngại ngần mà chia sẻ với ', 135, 12, 3483000, 3000000),
(32, 'Ancient Lane - Queen Room', 'hs10.png', 'Phòng riêng · 1 Phòng tắm · 1 giường · 1 phòng ngủ · 2 khách (tối đa 2 khách)\r\n\r\nĐền Quán Sứ nằm trong bán kính chưa đến 1 km từ Ancient Lane, trong khi Đền Ngọc Sơn cách đó 12 phút đi bộ. Sân bay gần nhất là sân bay quốc tế Nội Bài, cách đó 25 km.\r\n\r\nQuận Hoàn Kiếm là lựa chọn tuyệt vời cho du khách thích mua sắm,ẩm thực đường phố và không gian. Đây là khu vực ở Hà Nội mà khách yêu thích.\r\n\r\nAncient Lane nằm ở thành phố Hà Nội và có khu vườn cũng như sân hiên. Nằm gần Nhà hát múa rối nước Thăng Long, Nhà Thờ Lớn và Hồ Hoàn Kiếm. Chỗ ở của chúng tôi cách Ô Quan Chưởng 12 phút đi bộ và Hồ Hoàn Kiếm trong vòng 500 m.\r\n\r\nWi-Fi được cung cấp miễn phí cho tất cả khách. Một số phòng có ban công. Nhân viên nói tiếng Anh và tiếng Việt tại lễ tân 24 giờ luôn sẵn sàng hỗ trợ quý khách.\r\n\r\nBữa sáng tự chọn được phục vụ hàng ngày. Quý khách có thể dùng bữa tại nhà hàng trong khuôn viên chuyên về ẩm thực quốc tế.\r\n\r\nĐền Quán Sứ nằm trong bán kính chưa đến 1 km từ Ancient Lane, trong khi Đền Ngọc Sơn cách đó 12 phút đi bộ. Sân bay gần nhất là sân bay quốc tế Nội Bài, cách đó 25 km.\r\n\r\nQuận Hoàn Kiếm là lựa chọn tuyệt vời cho du khách thích mua sắm,ẩm thực đường phố và không gian. Đây là khu vực ở Hà Nội mà khách yêu thích.\r\n\r\nAncient Lane nằm ở thành phố Hà Nội và có khu vườn cũng như sân hiên. Nằm gần Nhà hát múa rối nước Thăng Long, Nhà Thờ Lớn và Hồ Hoàn Kiếm. Chỗ ở của chúng tôi cách Ô Quan Chưởng 12 phút đi bộ và Hồ Hoàn Kiếm trong vòng 500 m.\r\n\r\nWi-Fi được cung cấp miễn phí cho tất cả khách. Một số phòng có ban công. Nhân viên nói tiếng Anh và tiếng Việt tại lễ tân 24 giờ luôn sẵn sàng hỗ trợ quý khách.\r\n\r\nBữa sáng tự chọn được phục vụ hàng ngày. Quý khách có thể dùng bữa tại nhà hàng trong khuôn viên chuyên về ẩm thực quốc tế.', 120, 10, 1250000, 0),
(33, 'Ancient Lane - Deluxe Room', 'hs11.jpg', 'Phòng riêng · 1 Phòng tắm · 1 giường · 1 phòng ngủ · 2 khách (tối đa 2 khách)\r\n\r\nBữa sáng tự chọn được phục vụ hàng ngày tại Ancient Lane. Quý khách có thể dùng bữa tại nhà hàng trong khuôn viên chuyên về ẩm thực quốc tế.\r\n\r\nNhân viên nói tiếng Anh và tiếng Việt tại lễ tân 24 giờ luôn sẵn sàng hỗ trợ quý khách. Wi-Fi được cung cấp miễn phí cho tất cả khách. Một số phòng có ban công.\r\n\r\nĐền Quán Sứ nằm trong bán kính chưa đến 1 km từ chỗ ở của chúng tôi trong khi Đền Ngọc Sơn cách đó 12 phút đi bộ. Sân bay gần nhất là sân bay quốc tế Nội Bài, cách đó 25 km.\r\n\r\nQuận Hoàn Kiếm là lựa chọn tuyệt vời cho du khách thích mua sắm, ẩm thực đường phố và không gian. Đây là khu vực ở Hà Nội mà khách du lịch rất yêu thích.\r\n\r\nAncient Lane nằm ở thành phố Hà Nội và có khu vườn cũng như sân hiên. Nằm gần Nhà hát múa rối nước Thăng Long, Nhà Thờ Lớn và Hồ Hoàn Kiếm. Chỗ ở của chúng tôi cách Ô Quan Chưởng 12 phút đi bộ và Hồ Hoàn Kiếm trong vòng 500 m.\r\n\r\nBữa sáng tự chọn được phục vụ hàng ngày tại Ancient Lane. Quý khách có thể dùng bữa tại nhà hàng trong khuôn viên chuyên về ẩm thực quốc tế.\r\n\r\nNhân viên nói tiếng Anh và tiếng Việt tại lễ tân 24 giờ luôn sẵn sàng hỗ trợ quý khách. Wi-Fi được cung cấp miễn phí cho tất cả khách. Một số phòng có ban công.\r\n\r\nĐền Quán Sứ nằm trong bán kính chưa đến 1 km từ chỗ ở của chúng tôi trong khi Đền Ngọc Sơn cách đó 12 phút đi bộ. Sân bay gần nhất là sân bay quốc tế Nội Bài, cách đó 25 km.\r\n\r\nQuận Hoàn Kiếm là lựa chọn tuyệt vời cho du khách thích mua sắm, ẩm thực đường phố và không gian. Đây là khu vực ở Hà Nội mà khách du lịch rất yêu thích.\r\n\r\nAncient Lane nằm ở thành phố Hà Nội và có khu vườn cũng như sân hiên. Nằm gần Nhà hát múa rối nước Thăng Long, Nhà Thờ Lớn và Hồ Hoàn Kiếm. Chỗ ở của chúng tôi cách Ô Quan Chưởng 12 phút đi bộ và Hồ Hoàn Kiếm trong vòng 500 m.', 120, 10, 1050000, 950000),
(34, 'Ancient Lane - Deluxe Twin Room with City View', 'hs12.jpg', 'Phòng riêng · 1 Phòng tắm · 2 giường · 1 phòng ngủ · 2 khách (tối đa 2 khách)\r\n\r\nBữa sáng tự chọn được phục vụ hàng ngày. Quý khách có thể dùng bữa tại nhà hàng trong khuôn viên chuyên về ẩm thực quốc tế.\r\n\r\nAncient Lane nằm ở thành phố Hà Nội và có khu vườn cũng như sân hiên. Nằm gần Nhà hát múa rối nước Thăng Long, Nhà Thờ Lớn và Hồ Hoàn Kiếm. Chỗ ở của chúng tôi cách Ô Quan Chưởng 12 phút đi bộ và Hồ Hoàn Kiếm trong vòng 500 m.\r\n\r\nWi-Fi được cung cấp miễn phí cho tất cả khách. Một số phòng có ban công. Nhân viên nói tiếng Anh và tiếng Việt tại lễ tân 24 giờ luôn sẵn sàng hỗ trợ quý khách.\r\n\r\nĐền Quán Sứ nằm trong bán kính chưa đến 1 km từ chỗ ở của chúng tôi trong khi Đền Ngọc Sơn cách đó 12 phút đi bộ. Sân bay gần nhất là sân bay quốc tế Nội Bài, cách đó 25 km.\r\n\r\nQuận Hoàn Kiếm là lựa chọn tuyệt vời cho du khách thích mua sắm, ẩm thực đường phố và không gian. Đây là khu vực ở Hà Nội mà khách yêu thích.\r\n\r\nBữa sáng tự chọn được phục vụ hàng ngày. Quý khách có thể dùng bữa tại nhà hàng trong khuôn viên chuyên về ẩm thực quốc tế.\r\n\r\nAncient Lane nằm ở thành phố Hà Nội và có khu vườn cũng như sân hiên. Nằm gần Nhà hát múa rối nước Thăng Long, Nhà Thờ Lớn và Hồ Hoàn Kiếm. Chỗ ở của chúng tôi cách Ô Quan Chưởng 12 phút đi bộ và Hồ Hoàn Kiếm trong vòng 500 m.\r\n\r\nWi-Fi được cung cấp miễn phí cho tất cả khách. Một số phòng có ban công. Nhân viên nói tiếng Anh và tiếng Việt tại lễ tân 24 giờ luôn sẵn sàng hỗ trợ quý khách.\r\n\r\nĐền Quán Sứ nằm trong bán kính chưa đến 1 km từ chỗ ở của chúng tôi trong khi Đền Ngọc Sơn cách đó 12 phút đi bộ. Sân bay gần nhất là sân bay quốc tế Nội Bài, cách đó 25 km.\r\n\r\nQuận Hoàn Kiếm là lựa chọn tuyệt vời cho du khách thích mua sắm, ẩm thực đường phố và không gian. Đây là khu vực ở Hà Nội mà khách yêu thích.', 121, 10, 1180000, 1000000),
(35, 'Anchie Homestay 2 - Homestay tại phố cổ với phong cách độc đáo - 04', 'hs13.jpg', 'Phòng riêng · 1 Phòng tắm · 1 giường · 1 phòng ngủ · 2 khách (tối đa 2 khách)\r\n\r\nAnchie Homestay nằm trên đường Lý Nam Đế, đây là một trong những con đường đẹp và an toàn nhất ở HaNoi và thu hút nhiều khách du lịch đến ở. Trong khoảng cách đi bộ, bạn sẽ đến một loạt các chợ lớn, cửa hàng tiện lợi, nhà hàng & quán cà phê và nhiều điểm du lịch nổi tiếng. Nhà trọ mang đến trải nghiệm sống chân thực như người dân địa phương, nhưng vẫn có cảm giác thư giãn trong kỳ nghỉ.\r\n\r\nAnchie Homestay là một không gian ấm cúng với phong cách Đông Dương, giường thoải mái, ánh sáng tự nhiên và nhà bếp xinh xắn. Ở phía trên cùng của ngôi nhà, chúng tôi có một sân thượng tuyệt vời để dùng bữa & thư giãn với tầm nhìn đẹp. Tất cả các phòng đều có cửa sổ, cho phép bạn tận hưởng ánh sáng mặt trời và gió. Chúng tôi chắc chắn bạn sẽ thích nó và cảm thấy nó giống như ngôi nhà của bạn.\r\n\r\nAnchie Homestay nằm trên đường Lý Nam Đế, đây là một trong những con đường đẹp và an toàn nhất ở HaNoi và thu hút nhiều khách du lịch đến ở. Trong khoảng cách đi bộ, bạn sẽ đến một loạt các chợ lớn, cửa hàng tiện lợi, nhà hàng & quán cà phê và nhiều điểm du lịch nổi tiếng. Nhà trọ mang đến trải nghiệm sống chân thực như người dân địa phương, nhưng vẫn có cảm giác thư giãn trong kỳ nghỉ.\r\n\r\nAnchie Homestay là một không gian ấm cúng với phong cách Đông Dương, giường thoải mái, ánh sáng tự nhiên và nhà bếp xinh xắn. Ở phía trên cùng của ngôi nhà, chúng tôi có một sân thượng tuyệt vời để dùng bữa & thư giãn với tầm nhìn đẹp. Tất cả các phòng đều có cửa sổ, cho phép bạn tận hưởng ánh sáng mặt trời và gió. Chúng tôi chắc chắn bạn sẽ thích nó và cảm thấy nó giống như ngôi nhà của bạn.', 121, 10, 537000, 0),
(36, 'PICCOLO phòng đẹp lý tưởng với decor cực chill ở trung tâm HN', 'hs16.jpg', 'Phòng riêng · 1 Phòng tắm · 1 giường · 1 phòng ngủ · 2 khách (tối đa 3 khách)\r\n\r\n\" Chill in your tiny space \" \r\n\r\nKhám phá một không gian đầy thú vị và mang lại nhiều trải nghiệm mới lạ tại PALLADIO - Amazing Home\r\n\r\nI. Không gian\r\n\r\n  Căn phòng Piccolo sẽ là một nơi ấm cúng và kín đáo để bạn yên tâm thưởng thức một ngày êm đềm, tạm quên đi những bộn bề của cuộc sống. Tất cả các đồ trang trí được thực hiện tỉ mỉ với tình yêu lớn của chúng tôi. Tôi hy vọng bạn và gia đình sẽ cảm thấy thoải mái và hạnh phúc khi khám phá một không gian mới lạ nhưng cũng vô cùng thân thuộc giữa trung tâm Hà Nội.\r\n\r\nII. Tiện nghi khách có quyền sử dụng:\r\n\r\n  Trong thời gian bạn ở PICCOLO, bạn sẽ có quyền truy cập:\r\n\r\n- 01 phòng ngủ riêng biệt với 01 giường cỡ lớn, 01 sofa\r\n\r\n- 01 Phòng tắm riêng với đầy đủ đồ dùng vệ sinh cá nhân cần thiết\r\n\r\n- 01 bếp chung với thiết bị nhà bếp đầy đủ\r\n\r\n- Wifi tốc độ cao\r\n\r\n- Chỗ để xe miễn phí\r\n\r\nIII. Tổng quan về khu phố\r\n\r\nNằm ngay trên trục đường giao thông chính nhưng lại cực kỳ yên tĩnh, gần mọi nơi :\r\n\r\n- Cách chợ 50m, cách siêu thị 24/7 100m\r\n\r\n- Cách hồ Tây 200m\r\n\r\n- Cách phố cổ Hà Nội 3km\r\n\r\n- Cách lăng Bác 1km\r\n\r\n- Cách sân bay Nội Bài 20 phút lái xe\r\n\r\nIV. Những điều cần lưu ý khác:\r\n\r\n- Giờ check in và check out: check in sau 14h và check out 12h. Bạn nhận/trả phòng ngoài khung giờ trên phụ thu 50k/h và cần báo trước để chúng mình sắp xếp nhé.\r\n\r\nDễ dàng tự check-in cực kỳ linh hoạt. Có thang máy phục vụ quý khách. Đảm bảo an toàn tối đa với hệ thống camera giám sát toàn bộ không gian chung và lối đi lại của căn nhà.\r\n\r\nBên cạnh đó, gia đình tôi cũng là những người bản địa vô cùng thân thiện và thoải mái, sẵn sàng đáp ứng yêu cầu của bạn 24/7. Chính vì vậy đừng ngại ngần mà chia sẻ với chúng tôi những điều bạn đang thắc mắc hoặc những khó khăn bạn gặp phải khi ở đây.\r\n\r\nKhi di chuyển trong nhà hoặc lên / xuống thang máy hoặc cầu thang, xin lưu ý để giảm tiếng ồn, giữ cho khu vực sạch sẽ (không xả rác!). Tôi hy vọng bạn không cảm thấy phiền ', 132, 10, 499000, 0),
(37, 'K6 Homestay - Santorini suite', 'hs17.jpg', 'Phòng riêng · 1 Phòng tắm · 1 giường · 1 phòng ngủ · 2 khách (tối đa 2 khách)\r\n\r\nK6 Homestay tọa lạc tại đường Hồng Hà nằm giữa lòng thủ đô Hà Nội nhưng vô cùng yên tĩnh, sang trọng với thiết kế 12 phòng mang 12 phong cách khác nhau mang đủ phong cách Á - Châu. Không gian Homestay thoáng đãng, tiện nghi đầy đủ, sạch sẽ. Ngoài những phòng có bếp riêng, K6 Homestay còn trang bị thêm bếp chung trên tầng thượng, giúp các cặp đôi có thể thưởng thức bữa ăn ở không gian ngoài trời ngắm toàn cảnh thành phố. Phía dưới tầng 1 của Homestay có thêm chỗ giặt là và tủ để đồ riêng cho khách. Đến với K6 Homestay, khách hàng sẽ có cảm giác như ở chính ngôi nhà của mình. Trong bán kính 1km đi bộ từ Homestay, bạn có thể tìm thấy mọi thú vui của Hà Nội như nhà hát lớn, công viên, phố đi bộ, bảo tàng, hàng ăn vặt, quán ăn đêm, bia hơi, phố Tây và những quán bar sập sình nhạc xuyên màn đêm.\r\n\r\nK6 Homestay tọa lạc tại đường Hồng Hà nằm giữa lòng thủ đô Hà Nội nhưng vô cùng yên tĩnh, sang trọng với thiết kế 12 phòng mang 12 phong cách khác nhau mang đủ phong cách Á - Châu. Không gian Homestay thoáng đãng, tiện nghi đầy đủ, sạch sẽ. Ngoài những phòng có bếp riêng, K6 Homestay còn trang bị thêm bếp chung trên tầng thượng, giúp các cặp đôi có thể thưởng thức bữa ăn ở không gian ngoài trời ngắm toàn cảnh thành phố. Phía dưới tầng 1 của Homestay có thêm chỗ giặt là và tủ để đồ riêng cho khách. Đến với K6 Homestay, khách hàng sẽ có cảm giác như ở chính ngôi nhà của mình. Trong bán kính 1km đi bộ từ Homestay, bạn có thể tìm thấy mọi thú vui của Hà Nội như nhà hát lớn, công viên, phố đi bộ, bảo tàng, hàng ăn vặt, quán ăn đêm, bia hơi, phố Tây và những quán bar sập sình nhạc xuyên màn đêm.', 132, 10, 900000, 0),
(38, 'Nhà Quả Thông Pine house - View sân vườn bể bơi cực chất tại Sóc Sơn', 'hs18.jpg', 'Nguyên căn · 3 Phòng tắm · 5 giường · 1 phòng ngủ · 10 khách (tối đa 12 khách)\r\n\r\nNhà Quả Thông (Pine House) có diện tích 100m2 gồm 1 phòng khách, 1 phòng ngủ với 3 giường lớn, sân nướng BBQ rộng rãi thích hợp cho các nhóm bạn trẻ, các gia đình thân thiết cùng nhau có một kỳ nghỉ vui vẻ. Nhà có đầy đủ Bát đũa, bếp nấu, bếp nướng than BBQ, bát đĩa, cốc chén.\r\n\r\nYêu cầu:- Khách hàng đã tiêm Vacxin Covid 19 - Quét mã QR code khi tới Checkin- Khai báo y tế đầy đủ. Căn Pine House cho 10 người:\r\n\r\nGiá đi trong ngày các ngày trong tuần T2-T5 từ 9h - 17h: 2.500.000\r\n\r\nGiá Qua đêm ngày thường: 3.200.000\r\n\r\nGiá cuối tuần: 5.200.000\r\n\r\nCheckin 14h/Checkout 12h trưa hôm sau\r\n\r\nPhụ thu thêm người: 200k/Người FREE trẻ dưới 6T tối đa 4 bé\r\n\r\nPhụ thu thêm giờ sau khi check lịch: 150k/h\r\n\r\nThan: 15k/kgĐá túi: 15k\r\n\r\nThuê Loa: 200k\r\n\r\nTiện ích:1 Phòng ngủ tập thể 5 giường1 Phòng sinh hoạt chung, 1 sofabed, 2 đệm kê thêm\r\n\r\nĐầy đủ Bát đũa, Bếp lẩu, Bếp nướng BBQ\r\n\r\nBóng bàn\r\n\r\nBể bơi chung\r\n\r\n1 P.tắm &wc khép kín, 2 tắm&wc rời, 2 tắm tráng tại bể bơi\r\n\r\nHỗ trợ dọn dẹp bát đũa, vệ sinh khu vực ăn của home buổi tối\r\n\r\nFree bữa sáng\r\n\r\nThuê xe đạp leo núi: 30k/h\r\n\r\nNhà Quả Thông (Pine House) có diện tích 100m2 gồm 1 phòng khách, 1 phòng ngủ với 3 giường lớn, sân nướng BBQ rộng rãi thích hợp cho các nhóm bạn trẻ, các gia đình thân thiết cùng nhau có một kỳ nghỉ vui vẻ. Nhà có đầy đủ Bát đũa, bếp nấu, bếp nướng than BBQ, bát đĩa, cốc chén.\r\n\r\nYêu cầu:- Khách hàng đã tiêm Vacxin Covid 19 - Quét mã QR code khi tới Checkin- Khai báo y tế đầy đủ. Căn Pine House cho 10 người:\r\n\r\nGiá đi trong ngày các ngày trong tuần T2-T5 từ 9h - 17h: 2.500.000\r\n\r\nGiá Qua đêm ngày thường: 3.200.000\r\n\r\nGiá cuối tuần: 5.200.000\r\n\r\nCheckin 14h/Checkout 12h trưa hôm sau\r\n\r\nPhụ thu thêm người: 200k/Người FREE trẻ dưới 6T tối đa 4 bé\r\n\r\nPhụ thu thêm giờ sau khi check lịch: 150k/h\r\n\r\nThan: 15k/kgĐá túi: 15k\r\n\r\nThuê Loa: 200k\r\n\r\nTiện ích:1 Phòng ngủ tập thể 5 giường1 Phòng sinh hoạt chung, 1 sofabed, 2 đệm kê thêm\r\n\r\nĐ', 133, 10, 3200000, 2500000),
(39, 'An Vui Cottage 19 - Ba Vì', 'hs19.jpg', 'Nguyên căn · 3 Phòng tắm · 19 giường · 4 phòng ngủ · 19 khách (tối đa 25 khách)\r\n\r\nĐiền viên mà vẫn sang chảnh, chỉ có thể là cảm giác khi bạn dừng đôi chân mỏi tại An Vui Cottage, một sản phẩm rất mới của thương hiêu nghỉ dưỡng An Vui. Tọa lạc ngay sát người anh em An Vui Lodge, chiếc Cottage xinh xắn thừa hưởng mặt hồ rộng ngay phía trước nhà, mang đến bầu không khí trong mát.\r\n\r\nMời bạn ghé chân tới An Vui Cottage 19!\r\n\r\n\r\n\r\nCottage 19: có tổng cộng 4 phòng ngủ, trong đó có 3 phòng ngủ triple với giường queen-size (3-4 người) + 1 phòng ngủ dorm 10 giường 0.9m, 3 nhà vệ sinh.\r\n\r\n- Phòng khách: smarttv, wifi dung lượng cao\r\n\r\n- Phòng bếp: bếp từ, tủ lạnh, đồ dùng bếp\r\n\r\n- Tiện ích nhà tắm: khăn tắm, khăn mặt, đồ vệ sinh\r\n\r\n\r\n\r\nTiện ích chung:\r\n\r\n- Bể bơi ngoài trời\r\n\r\n- Bàn ghế gỗ và BBQ ngoài trời\r\n\r\n- Sân chơi cho trẻ: Cầu trượt, xích đu, sân lốp xe\r\n\r\nDịch vụ thêm:\r\n\r\n- Câu cá theo giờ (100.000 VNĐ/giờ)\r\n\r\n- Chèo thuyền kayak (150.000 VNĐ/giờ)\r\n\r\n- Đặt tiệc: set lunch, set dinner, BBQ\r\n\r\n- Tổ chức sự kiện\r\n\r\nĐiền viên mà vẫn sang chảnh, chỉ có thể là cảm giác khi bạn dừng đôi chân mỏi tại An Vui Cottage, một sản phẩm rất mới của thương hiêu nghỉ dưỡng An Vui. Tọa lạc ngay sát người anh em An Vui Lodge, chiếc Cottage xinh xắn thừa hưởng mặt hồ rộng ngay phía trước nhà, mang đến bầu không khí trong mát.\r\n\r\nMời bạn ghé chân tới An Vui Cottage 19!\r\n\r\n\r\n\r\nCottage 19: có tổng cộng 4 phòng ngủ, trong đó có 3 phòng ngủ triple với giường queen-size (3-4 người) + 1 phòng ngủ dorm 10 giường 0.9m, 3 nhà vệ sinh.\r\n\r\n- Phòng khách: smarttv, wifi dung lượng cao\r\n\r\n- Phòng bếp: bếp từ, tủ lạnh, đồ dùng bếp\r\n\r\n- Tiện ích nhà tắm: khăn tắm, khăn mặt, đồ vệ sinh\r\n\r\n\r\n\r\nTiện ích chung:\r\n\r\n- Bể bơi ngoài trời\r\n\r\n- Bàn ghế gỗ và BBQ ngoài trời\r\n\r\n- Sân chơi cho trẻ: Cầu trượt, xích đu, sân lốp xe\r\n\r\nDịch vụ thêm:\r\n\r\n- Câu cá theo giờ (100.000 VNĐ/giờ)\r\n\r\n- Chèo thuyền kayak (150.000 VNĐ/giờ)\r\n\r\n- Đặt tiệc: set lunch, set dinner, BBQ\r\n\r\n- Tổ chức sự kiện', 135, 10, 4000000, 3750000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_kh` int(11) NOT NULL COMMENT 'mã khách hàng',
  `ten_kh` varchar(255) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` int(10) NOT NULL,
  `anh` varchar(255) NOT NULL,
  `vai_tro` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_kh`, `ten_kh`, `mat_khau`, `email`, `sdt`, `anh`, `vai_tro`) VALUES
(1, 'Nguyễn Trung Hiệp', '123456', 'hiepgacuti29032002@gmail.com', 34340, 'dường gốm xứ.jpg', 0),
(3, 'Nguyễn Trung Hiệp', '123abc', 'hiepntph15608@fpt.edu.vn', 34340, '', 0),
(5, 'Nguyễn Trung Hiệp', '1234567', 'hiepntph15608@gmail.com', 34340, '', 0),
(6, 'hiep', '12345678', 'hiep@gmail.com', 464532, '', 1),
(8, 'Nguyễn Trung Hiệp', '123456789', 'hiepntph15608@gmail.com', 1234567890, '', 0),
(9, 'Nguyễn Trung Hiệp', '123456789abc', 'hiepntph15608@fpt.edu.vn', 1234567890, '', 0),
(10, 'Nguyễn Trung Hiệp', '12345678910', 'hiepntph@fpt.edu.vn', 1234567890, 'anh1.png', 0),
(11, 'Mai', '123456789', 'mai@fpt.edu.vn', 225, '../img/anh_kh/anh.png', 0),
(12, 'Nguyễn Hiệp', '123456789', 'hiep15608@fpt.edu.vn', 2147483647, '../img/anh_kh/anh1.png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyen_mai`
--

CREATE TABLE `khuyen_mai` (
  `ma_km` int(11) NOT NULL,
  `ten_km` varchar(225) NOT NULL,
  `noi_dung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khuyen_mai`
--

INSERT INTO `khuyen_mai` (`ma_km`, `ten_km`, `noi_dung`) VALUES
(1, '1154966676', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_phong`
--

CREATE TABLE `loai_phong` (
  `ma_lp` int(11) NOT NULL,
  `ten_lp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loai_phong`
--

INSERT INTO `loai_phong` (`ma_lp`, `ten_lp`) VALUES
(10, '1 phòng ngủ'),
(11, '2 phòng ngủ'),
(12, '3 phòng ngủ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `ma_tin` int(11) NOT NULL,
  `ten_tin` varchar(2255) NOT NULL,
  `anh_tin` varchar(255) NOT NULL,
  `gioi_thieu` text NOT NULL,
  `ngay_tin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tin_tuc`
--

INSERT INTO `tin_tuc` (`ma_tin`, `ten_tin`, `anh_tin`, `gioi_thieu`, `ngay_tin`) VALUES
(2, '5 homestay Hà Nội đẹp, thơ mộng và nổi tiếng trên mạng xã hội', 'news1.jpg', '1. Ngôi nhà nghệ sĩ Thái Lan\r\nNhà nghệ sĩ Thái (Thai\'s House) là một homestay Hà Nội đẹp hiếm hoi. Ngôi nhà nhỏ xinh này là sự pha trộn ấn tượng giữa nội thất cổ điển của phương Tây với nét mộc mạc, huyền bí của phương Đông. Không gian sân vườn thơ mộng và vị trí thuận lợi, gần trung tâm khiến homestay càng thích hợp cho các cặp đôi. 2. Chloe & Leo Tràng Tiền\r\nChloe & Leo Homestay nằm trong con hẻm nhỏ Tràng Tiền - khu phố “sả” nhất thủ đô. Nằm giữa trung tâm Hà Nội nhưng Chloe & Leo vẫn khéo léo giữ gìn sự bình yên cho những ai ghé qua.', '2021-11-29'),
(3, '\r\n4 quán ăn bình dân ngon như cơm nhà, đắt hàng nhưng cực hút khách ở Hà Nội', 'news9.jpg', 'Gạo có cánh\r\nĐối với những người sành ăn, cơm lam Vinh Thu không phải là một cái tên xa lạ. Dù không gian không quá rộng, chỉ đơn giản là vài bộ bàn ghế nhựa hay thậm chí, có lúc quán đông khách vẫn vui vẻ ngồi đợi hoặc ngồi vỉa hè. Tất cả chỉ vì gạo Vinh Thu đã ghi dấu ấn trong khẩu vị của nhiều người.\r\n\r\nVẫn là những món ăn dân dã như: cơm lam, chả ram tôm đất, cá chép om dưa… nhưng được chế biến cầu kỳ. Vì vậy, dù không gian khá bình dân nhưng cơm tấm Vinh Thu được đánh giá là “đắt xắt ra miếng”, đi 2 người cũng có giá khoảng 100.000 đồng đến 150.000 đồng.', '2021-11-29'),
(4, 'Căn Hộ Duplex Indochina 1BR View Hà Nội', 'news3.jpg', 'Chào mừng bạn đến MLibrary! \r\n\r\nVới vị trí đắc địa giữa trung tâm quận Tây Hồ, MLibrary sẽ giúp bạn được trải nghiệm bầu không khí trong lành, không gian yên tĩnh, sang trọng, và thoải mái; đặc biệt nhât chính là những tiện nghi, dịch vụ đẳng cấp, hiện đại chuẩn tiêu chí 5 sao.\r\n\r\nMLibrary phù hợp cho du lịch nghỉ dưỡng, tuần trăng mật, công tác, giải trí.', '2021-11-29'),
(5, 'Thơm nức mũi với những quán bánh chuối, bánh khoai dân dã trên đường phố Hà Nội', 'news6.jpg', 'Bánh chuối, bánh khoai Giáp Bát\r\nBánh rán này bán đã gần 10 năm nhưng vẫn giữ nguyên giá 5.000 đồng / chiếc dù giá trị quy ra tiền. Tuy không có vị trí địa lý thuận lợi để bán hàng nhưng nhờ tình làng nghĩa xóm và lượng khách quen nhiều năm nên quán cơm gia đình này vẫn giữ được khách đến tận bây giờ.\r\n\r\nBánh béo sẽ được cắt thành từng miếng nhỏ.  Ảnh: @nhhimlovefoods\r\nBánh béo sẽ được cắt thành từng miếng nhỏ. Ảnh: @nhhimlovefoods\r\nBánh chuối, bánh khoai hay bánh ngô đều được chiên giòn trong chảo dầu, sau khi đã thấm bớt mỡ, chủ quán sẽ cắt bánh thành từng miếng nhỏ, kèm theo bát nước mắm chua ngọt. Vị ngọt và cay hòa quyện với nhau tạo nên hương vị thơm ngon.\r\n\r\nĐiểm trừ của quán là vỏ bánh còn dày, chất lượng bánh được đánh giá là “ngon ngày nào”. Địa chỉ của quán là 80 Giáp Bát, Q. Hoàng Mai, nếu bạn ở gần có thể thử một ít.\r\n\r\nThêm một miếng tương ớt nữa là ngon.  Ảnh: @glambertjubee\r\nThêm một miếng tương ớt nữa là ngon. Ảnh: @glambertjubee\r\nĐịa chỉ: 80 Giáp Bát, Q. Hoàng Mai', '2021-11-29'),
(6, '3 quán bánh canh ghẹ ngon rẻ ở Hà Nội', 'news7.jpg', 'Bánh tráng trộn Thọ Nhuộm Mở đầu danh sách là quán bánh căn ngã ba có lịch sử hơn 20 năm tại phố Thợ Nhuộm - Hỏa Lò. Đối với những ai đam mê món bánh tráng trộn, đặc biệt là bánh đa cua thì không thể không biết đến quán cô Từ bán hàng rong này, chủ quán đã quyết định cho thuê quán để ổn định quán của mình.  Tìm địa điểm bán bánh đa cua ở Hà Nội - Ảnh 1 Chỉ là một tô bánh đa cua trộn nhưng quán Cô Nụ có điểm đặc biệt là dùng thanh cua làm nhân trộn nên nước dùng rất đậm đà mùi cua, thơm ngon vô cùng. Bữa cơm ngoài riêu cua còn có chả cá, thịt bò trần với cô cùng chất lượng. Tùy theo lượng nhân muốn thêm vào mà một tô bánh tráng trộn có giá từ 25.000 đồng đến 30.000 đồng, giá thì rẻ nhưng chất lượng thì không hề rẻ chút nào!', '2021-11-29'),
(7, 'Bánh mì kem trứng, món ăn “trọn gói tuổi thơ” rất phổ biến ở Hà Nội', 'news8.jpg', 'Bánh mì kem trứng như một “nỗi nhớ” Hà Nội vào thu. Chỉ là sự kết hợp đơn giản giữa trứng, đường và một chút bánh mì nóng giòn ăn kèm nhưng lại vô cùng thơm ngon, hương vị không thể chối từ. Chút ấm nóng, beo béo, béo ngậy, giòn tan trong miệng của món ăn này thực sự làm say lòng thực khách.  bánh mì kem trứng - Ảnh 1 Bánh mì giòn ăn kèm với kem tươi tuy mộc mạc nhưng ngon tuyệt vời. Bí quyết tạo ra món kem trứng kiểu Hà Nội Kem trứng đúng điệu là phải có vị béo, ngậy của trứng, ngọt nhẹ của đường, lớp kem mịn, độ sánh vừa phải và quan trọng hơn là không hề tanh chút nào. Nghe thì có vẻ đơn giản như vậy nhưng thực ra không hề dễ dàng chút nào. Để có món kem trứng ngon, đòi hỏi tay nghề của người làm phải thật khéo léo và tỉ mỉ trong từng công đoạn.', '2021-11-29');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`ma_bl`),
  ADD KEY `ma_kh` (`ma_kh`),
  ADD KEY `ma_phong` (`ma_hs`),
  ADD KEY `ma_kh_2` (`ma_kh`);

--
-- Chỉ mục cho bảng `dat_phong`
--
ALTER TABLE `dat_phong`
  ADD PRIMARY KEY (`ma_dp`),
  ADD KEY `ma_kh` (`ma_kh`),
  ADD KEY `ma_km` (`ma_km`),
  ADD KEY `ma_hs` (`ma_hs`);

--
-- Chỉ mục cho bảng `dia_diem`
--
ALTER TABLE `dia_diem`
  ADD PRIMARY KEY (`ma_dd`);

--
-- Chỉ mục cho bảng `hoi_tro`
--
ALTER TABLE `hoi_tro`
  ADD PRIMARY KEY (`ma_ht`);

--
-- Chỉ mục cho bảng `homestay`
--
ALTER TABLE `homestay`
  ADD PRIMARY KEY (`ma_hs`),
  ADD KEY `ma_dd` (`ma_dd`),
  ADD KEY `ma_lp` (`ma_lp`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_kh`);

--
-- Chỉ mục cho bảng `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  ADD PRIMARY KEY (`ma_km`);

--
-- Chỉ mục cho bảng `loai_phong`
--
ALTER TABLE `loai_phong`
  ADD PRIMARY KEY (`ma_lp`);

--
-- Chỉ mục cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`ma_tin`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `ma_bl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `dat_phong`
--
ALTER TABLE `dat_phong`
  MODIFY `ma_dp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `dia_diem`
--
ALTER TABLE `dia_diem`
  MODIFY `ma_dd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT cho bảng `hoi_tro`
--
ALTER TABLE `hoi_tro`
  MODIFY `ma_ht` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `homestay`
--
ALTER TABLE `homestay`
  MODIFY `ma_hs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `ma_kh` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã khách hàng', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  MODIFY `ma_km` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `loai_phong`
--
ALTER TABLE `loai_phong`
  MODIFY `ma_lp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `ma_tin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `binh_luan_ibfk_2` FOREIGN KEY (`ma_hs`) REFERENCES `homestay` (`ma_hs`),
  ADD CONSTRAINT `binh_luan_ibfk_3` FOREIGN KEY (`ma_kh`) REFERENCES `khach_hang` (`ma_kh`);

--
-- Các ràng buộc cho bảng `dat_phong`
--
ALTER TABLE `dat_phong`
  ADD CONSTRAINT `dat_phong_ibfk_1` FOREIGN KEY (`ma_kh`) REFERENCES `khach_hang` (`ma_kh`),
  ADD CONSTRAINT `dat_phong_ibfk_3` FOREIGN KEY (`ma_km`) REFERENCES `khuyen_mai` (`ma_km`),
  ADD CONSTRAINT `dat_phong_ibfk_4` FOREIGN KEY (`ma_hs`) REFERENCES `homestay` (`ma_hs`);

--
-- Các ràng buộc cho bảng `homestay`
--
ALTER TABLE `homestay`
  ADD CONSTRAINT `homestay_ibfk_1` FOREIGN KEY (`ma_lp`) REFERENCES `loai_phong` (`ma_lp`),
  ADD CONSTRAINT `homestay_ibfk_2` FOREIGN KEY (`ma_dd`) REFERENCES `dia_diem` (`ma_dd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
