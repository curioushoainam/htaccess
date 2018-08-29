-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 01, 2018 at 11:08 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `first_web_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ho_ten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_dang_nhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_nhom` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trang_thai` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_cap_nhat` datetime DEFAULT NULL,
  PRIMARY KEY (`ma`),
  UNIQUE KEY `ten_dang_nhap` (`ten_dang_nhap`),
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ma`, `ho_ten`, `ten_dang_nhap`, `mat_khau`, `avatar`, `ma_nhom`, `email`, `dia_chi`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'admin1', 'admin1', 'cddc42e3a87c78ab2a0a7cc68715339b', NULL, 2, 'admin1@email.com', 'admin1 Q.1 tp.HCM', 1, '2018-07-03 00:00:00', '2018-08-01 11:08:52'),
(2, 'admin2', 'admin2', 'cddc42e3a87c78ab2a0a7cc68715339b', NULL, 1, 'admin2@email.com', 'admin2 Q.2 HCM.city', 0, '2018-07-03 00:00:00', '2018-07-23 01:07:19'),
(3, 'admin3', 'admin3', 'cddc42e3a87c78ab2a0a7cc68715339b', NULL, 1, 'admin3@email.com', 'admin3 Q.3 HCM.city', 1, '2018-07-03 00:00:00', '2018-08-01 02:08:55'),
(4, 'admin4', 'admin4', 'cddc42e3a87c78ab2a0a7cc68715339b', NULL, 1, 'admin4@email.com', 'admin4 Q.3 HCM.city', 1, '2018-07-03 00:00:00', '2018-08-01 02:08:03'),
(5, 'admin5', 'admin5', 'cddc42e3a87c78ab2a0a7cc68715339b', NULL, 3, 'admin5@email.com', 'admin5 Q.5 HCM.city', 2, '2018-07-03 00:00:00', '2018-08-01 11:08:40'),
(6, 'admin6', 'admin6', 'cddc42e3a87c78ab2a0a7cc68715339b', NULL, 3, 'admin6@email.com', 'admin6 Q.5', 0, '2018-07-03 00:00:00', NULL),
(7, 'admin7', 'admin7', 'cddc42e3a87c78ab2a0a7cc68715339b', NULL, 3, 'admin7@gmail.com', '', 2, '2018-07-20 04:07:36', '2018-08-01 11:08:39'),
(8, 'admin8', 'admin8', 'cddc42e3a87c78ab2a0a7cc68715339b', NULL, 3, 'admin8@gmail.com', '', 2, '2018-07-20 04:07:49', '2018-08-01 11:08:34'),
(9, 'admin9', 'admin9', 'cddc42e3a87c78ab2a0a7cc68715339b', NULL, 3, 'admin9@gmail.com', '', 2, '2018-07-21 06:07:04', '2018-08-01 11:08:49'),
(10, 'admin10', 'admin10', 'cddc42e3a87c78ab2a0a7cc68715339b', NULL, 3, 'admin10@gmail.com', '', 0, '2018-07-23 00:00:00', '2018-07-23 01:07:39'),
(11, 'admin11', 'admin11', 'cddc42e3a87c78ab2a0a7cc68715339b', NULL, 1, 'admin11@gmail.com', 'admin11 - Dist 2 - HCM city - Vietnam', 2, '2018-07-24 04:07:04', '2018-08-01 11:08:09'),
(12, 'admin12', 'admin12', 'cddc42e3a87c78ab2a0a7cc68715339b', NULL, 1, 'admin12@email.com', '', 2, '2018-07-25 04:07:47', '2018-08-01 11:08:37'),
(13, 'admin13', 'admin13', 'cddc42e3a87c78ab2a0a7cc68715339b', 'images/avatars/admin131532676125.jpg', 1, 'admin13@email.com', 'admin13', 2, '2018-07-27 07:07:05', '2018-08-01 11:08:23'),
(14, 'admin14', 'admin14', 'cddc42e3a87c78ab2a0a7cc68715339b', 'images/avatars/admin14_1532676294.jpg', 1, 'admin14@xmail.com', 'admin14', 2, '2018-07-27 07:07:54', '2018-08-01 11:08:23'),
(15, 'admin15', 'admin15', 'cddc42e3a87c78ab2a0a7cc68715339b', 'images/avatars/admin15_1532681668.png', 3, 'admin15@amail.com', 'admin15', 2, '2018-07-27 08:07:28', '2018-08-01 11:08:11'),
(16, 'admin16', 'admin16', 'cddc42e3a87c78ab2a0a7cc68715339b', 'images/avatars/admin16_1532682037.jpg', 3, 'admin16@amail.com', 'admin16', 2, '2018-07-27 09:07:37', '2018-08-01 11:08:33');

-- --------------------------------------------------------

--
-- Table structure for table `admin_function`
--

DROP TABLE IF EXISTS `admin_function`;
CREATE TABLE IF NOT EXISTS `admin_function` (
  `ma` int(2) NOT NULL AUTO_INCREMENT,
  `ma_cha` int(2) DEFAULT NULL,
  `ten` int(11) DEFAULT NULL,
  `link` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_group`
--

DROP TABLE IF EXISTS `admin_group`;
CREATE TABLE IF NOT EXISTS `admin_group` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_cap_nhat` datetime DEFAULT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_group`
--

INSERT INTO `admin_group` (`ma`, `ten`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'G001', 1, '2018-07-03 00:00:00', NULL),
(2, 'G002', 1, '2018-07-03 00:00:00', NULL),
(3, 'G003', 1, '2018-07-03 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permission`
--

DROP TABLE IF EXISTS `admin_permission`;
CREATE TABLE IF NOT EXISTS `admin_permission` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ma_chuc_nang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma_nhom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_cap_nhat` datetime NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8_unicode_ci NOT NULL,
  `tu_khoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hinh_chia_se` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tom_tat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chi_tiet` text COLLATE utf8_unicode_ci NOT NULL,
  `ma_nhom_tin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_cap_nhat` datetime DEFAULT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`ma`, `alias`, `ten`, `tieu_de`, `mo_ta`, `tu_khoa`, `hinh`, `hinh_chia_se`, `tom_tat`, `chi_tiet`, `ma_nhom_tin`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, '4-cloud-gaming_mien-phi', 'Ứng Dụng Cloud Gaming', '4 Ứng Dụng Cloud Gaming Miễn Phí Giúp Chơi Game Khủng Ngay Trên Điện Thoại', 'Cloud Gaming là một dịch vụ đám mây giúp người dùng có thể trải nghiệm được những tựa game cực khủng thuộc nền tảng PC/Console ngay trên các dòng điện thoại tầm trung mà không cần tốn nhiều tiền để sở hữu máy cấu hình khủng.', 'Cloud Gaming', 'cloud-gaming', 'cloud-gaming', 'Cloud Gaming là một dịch vụ đám mây giúp người dùng có thể trải nghiệm được những tựa game cực khủng thuộc nền tảng PC/Console ngay trên các dòng điện thoại tầm trung', 'Cloud Gaming là một dịch vụ đám mây giúp người dùng có thể trải nghiệm được những tựa game cực khủng thuộc nền tảng PC/Console ngay trên các dòng điện thoại tầm trung mà không cần tốn nhiều tiền để sở hữu máy cấu hình khủng.\r\n\r\nHoạt động như một ứng dụng streaming, các dịch vụ Cloud Gaming này phát trực tiếp lại những hình ảnh từ một máy tính được đặt tại nơi khác, thông qua nhưng thao tác và các phím ảo được thiết lập sẵn hoặc kết nối với tay cầm thông qua bluetooth cho phép người dùng có thể tương tác ngay trên điện thoại của mình.\r\n\r\nhttps://i.quantrimang.com/photos/image/2018/07/02/Cloud-Gaming-650.jpg\r\n\r\nVới Cloud Gaming, người dùng chỉ cần một chiếc điện thoại Android và đường truyền mạng đủ mạnh là đã có thể chơi game khủng trên điện thoại rồi.\r\n\r\nDưới đây là 4 ứng dụng Cloud Gaming miễn phí được đánh giá là tốt nhất hiện nay, mời các bạn tham khảo.\r\n\r\n1. Vortex Cloud Gaming\r\n\r\nhttps://i.quantrimang.com/photos/image/2018/07/02/Cloud-Gaming-2.jpg\r\n\r\nChỉ cần trở thành thành viên của Vortex, người dùng đã có cơ hội trải nghiệm miễn phí những tựa game nổi tiếng và quen thuộc như Fortnite, GTA V, Tomb Raider, và cả PUBG. Vortex ngay trên điện thoại của mình.\r\n\r\nCloud Gaming hiện đã có mặt trên cả nền tảng Windows lẫn Android.\r\n\r\n    Vortex Cloud Gaming - Apps on Google Play\r\n\r\n2. Hatch Cloud Gaming\r\n\r\nhttps://i.quantrimang.com/photos/image/2018/07/02/Cloud-Gaming-3.jpg\r\n\r\nHatch Cloud Gaming cũng sở hữu một thư viện game khổng lồ và cho phép người dùng sử dụng miễn phí một loạt những tựa game thuộc hàng bom tấn. Nhưng bên cạnh đó, Hatch Cloud Gaming cũng có những tựa game như Far Cry 5 chẳng hạn, yêu cầu người dùng phải bỏ tiền ra mới có thể trải nghiệm.\r\n\r\n    Hatch Cloud Gaming - Apps on Google Play\r\n\r\n3. LiquidSky PC Cloud Gaming\r\n\r\nhttps://i.quantrimang.com/photos/image/2018/07/02/Cloud-Gaming-4.jpg\r\n\r\nVới LiquidSky, người dùng \"không cần\" thiết bị chuyên dụng như Xbox hay PS... mà vẫn có thể chơi các loại game console. Đây là ứng dụng đầu tiên cung cấp cho người dùng trải nghiệm tuyệt vời này.\r\n\r\nNhững trò chơi này được lưu trữ và hoạt động trực tiếp trên máy chủ ảo (Cloud Gaming) nên người chơi chỉ cần sở hữu một chiếc smartphone hoặc tablet Android là có thể thoải mái lựa chọn và chơi các tựa game trên LiquidSky.\r\n\r\nLiquidSky hỗ trợ hầu hết các kết nối như OTG / bàn phím Bluetooth…\r\n\r\n    LiquidSky PC Cloud Gaming - Apps on Google Play\r\n\r\n4. Shadow - Cloud Gaming\r\n\r\nhttps://i.quantrimang.com/photos/image/2018/07/02/Cloud-Gaming-5.jpg\r\n\r\nKhác với các ứng dụng đám mây trên, Shadow - Clod Gaming về bản chất mang đến cho người dùng một chiếc PC cấu hình cực khủng và để trải nghiệm một tựa game nào đó, người dùng sẽ phải mua bản quyền game và cài đặt lên chiếc PC này. Chiếc PC này được trang bị bộ vi xử lý XEON 8 cùng card màn hình GTX 1080.\r\n\r\n    Shadow - Cloud Gaming - Apps on Google Play\r\n', '1', 1, '2018-07-04 00:00:00', NULL),
(2, 'galaxy-note9-co-pin-lon-hon-but-s-pen-dieu-khien-tu-xa', 'Galaxy Note9 có pin lớn hơn, bút S Pen điều khiển từ xa', 'Smartphone cao cấp sắp ra mắt của Samsung hứa hẹn nhiều cải tiến ở tính năng, bút cảm ứng và cấu hình nhưng thiết kế không khác Note8. ', 'Đã có nhiều dự đoán cũng như tin tức rò rỉ về smartphone cao cấp thế hệ mới của Samsung. Theo blogger Eldar Muztazin từ Mobile-Review, người được cho đã được sử dụng thử Galaxy Note9 trước khi ra mắt, mẫu Note mới không thay đổi về thiết kế so với Note8 nhưng sẽ có hàng loạt bổ sung và nâng cấp về tính năng, phần mềm cũng như bút cảm ứng S Pen. ', 'Galaxy Note 9', 'galaxy-note-9', 'galaxy-note-9', 'Galaxy Note9 có pin lớn hơn, bút S Pen điều khiển từ xa', ' Theo Phone Arena, Galaxy Note9 đã được Uỷ ban truyền thông Mỹ (FCC) cấp phép với tên mã SM-N960U và SM-N960U1. Điều này đồng nghĩa với việc smartphone cao cấp của Samsung sẽ sớm có mặt trên thị trường. Mới đây, hãng Hàn Quốc đã xác nhận sẽ tổ chức sự kiện ra mắt sản phẩm mới, Unpacked 2018, vào 9/8 tới tại New York (Mỹ). \r\nS Pen, cấu hình và tính năng hứa hẹn là những điểm mới trên Note9 thay vì kiểu dáng bên ngoài.\r\n\r\nS Pen, cấu hình và tính năng hứa hẹn là những điểm mới trên Note9 thay vì kiểu dáng bên ngoài.\r\n\r\nĐã có nhiều dự đoán cũng như tin tức rò rỉ về smartphone cao cấp thế hệ mới của Samsung. Theo blogger Eldar Muztazin từ Mobile-Review, người được cho đã được sử dụng thử Galaxy Note9 trước khi ra mắt, mẫu Note mới không thay đổi về thiết kế so với Note8 nhưng sẽ có hàng loạt bổ sung và nâng cấp về tính năng, phần mềm cũng như bút cảm ứng S Pen. \r\n\r\nTrong đó điểm đáng chú ý nhất là việc bút S Pen lần đầu được tích hợp pin và sử dụng công nghệ Bluetooth để kết nối tới điện thoại. Ngoài việc tăng độ chính xác và nhạy khi viết và vẽ, việc sử dụng Bluetooth có thể đem tới cho S Pen khả năng hoạt động như một điều khiển từ xa, dùng để chụp ảnh, điều khiển nhạc... Eldar Muztazin tiết lộ S Pen sẽ có những tính năng dành riêng cho khách hàng doanh nghiệp nhưng không tiết lộ cụ thể. \r\nBút cảm ứng S Pen mới dùng công nghệ Bluetooth Low Energy tiết kiệm điện năng.\r\n\r\nBút cảm ứng S Pen mới được FCC xác nhận dùng công nghệ Bluetooth Low Energy tiết kiệm điện năng. Ảnh: Phone Arena.\r\n\r\nNgoài S Pen,cấu hình của Galaxy Note9 được nâng lên cao hẳn so với những smartphone cao cấp trước đó của Samsung. Máy sẽ đi kèm với RAM 8GB cùng các tuỳ chọn bộ nhớ trong lần lượt 256GB và 512GB, mức cao nhất đối với smartphone hiện nay. Pin được nâng từ 3.300 mAh trên Note8 lên thành 4.000 mAh. \r\n\r\nTuy nhiên camera và kiểu dáng của Galaxy Note9 có thể ít thay đổi so với thế hệ trước. Máy vẫn được trang bị hệ thống camera kép tương tự S9 với một ống kính chuyên chụp ảnh chân dung. Mẫu Note mới cũng sẽ không có cảm biến vân tay ẩn bên trong màn hình như tin đồn, thay vào đó cảm biến này được đặt ngay bên dưới cụm camera kép ở lưng, không còn nằm ngay bên cạnh như Note8. \r\n\r\nẢnh dựng từ máy tính về Galaxy Note9\r\n\r\nVới những thay đổi trên, đặc biệt về cấu hình, giá bán của Galaxy Note9 năm nay đang được dự đoán sẽ đắt hơn nhiều thế hệ tiền nhiệm, đặc biệt ở phiên bản có bộ nhớ trong lên tới 512GB. Năm ngoái, giá bán của Note8 khi ra mắt tại Mỹ đã là 950 USD', '1', 1, '2018-07-04 00:00:00', NULL),
(3, 'cac-tran-dau-tai-world-cup-2018-duoc-quay-the-nao', 'Các trận đấu tại World Cup 2018 được quay thế nào ', 'Các trận đấu tại World Cup 2018 được quay thế nào ', 'Mỗi bàn thắng, tình huống trên sân để tới được màn hình thiết bị của người xem là cả một chặng đường dài phức tạp và tốn kém.', 'world cup 2018', 'world-cup-2018', 'world-cup-2018', 'Mỗi bàn thắng, tình huống trên sân để tới được màn hình thiết bị của người xem là cả một chặng đường dài phức tạp và tốn kém.', ' Theo Techradar, có khoảng một tỷ người trên thế giới có khả năng theo dõi trực tiếp qua màn hình 64 trận đấu tại World Cup 2018 diễn ra ở Nga mùa hè này. Nhưng để chắc chắn rằng mỗi người hâm mộ bóng đá trong số này có thể theo dõi các trận đấu một cách tốt nhất có thể, rất nhiều bước chuẩn bị đã được thực hiện.\r\n\r\nQuay một trận đấu bóng đá là một quá trình phức tạp và phải tốn hàng trăm giờ chuẩn bị trước khi quả bóng lăn trên sân. Nó cũng chiếm một lượng tiền lớn đầu tư vào cơ sở hạ tầng.\r\n\r\nCác trận đấu tại World Cup 2018 được quay thế nào\r\n\r\nVài tháng trước khi World Cup diễn ra, FIFA đã thông báo rằng đây sẽ là lần đầu tiên toàn bộ 64 trận đấu tại giải đấu này được quay ở chất lượng Ultra HD và HDR. Điều này có nghĩa là bất kể chất lượng hình ảnh được chọn bởi các đài truyền hình trên khắp thế giới là như thế nào (UHD/ HDR hay 1080p), luôn có một nguồn cấp dữ liệu phù hợp để cho họ sử dụng.\r\n\r\nĐể làm được điều này, mỗi trận đấu sẽ được ghi hình bởi 37 camera. Trong đó, 8 chiếc hỗ trợ đồng thời đầu ra UHD/HDR và 1.080p/SDR. Tám chiếc khác hỗ trợ song song đường ra 1.080p/HDR và 1.080p/SDR.\r\n\r\nKhông chỉ vậy, để đảm bảo rằng ngay cả những cú ra chân nhanh nhất cũng không bị bỏ qua, 8 camera khác được sử dụng để quay các cảnh quay siêu chậm (super slow-motion) và hai camera quay cảnh cực chậm (ultra slow-motion). Nhờ đó, mọi góc độ của trận đấu được ghi lại ở tốc độ khung hình cao (thường là hàng nghìn), sau đó, nó có thể bị làm chậm lại để phục vụ cho mục đích nghiên cứu.\r\n\r\nNhững chiếc camera này là chìa khóa cho những thứ như công nghệ VAR (video hỗ trợ trọng tài) và đã được sử dụng để đảm bảo tính chính xác trong các quyết định của trọng tài khi có những tình huống gây tranh cãi nảy sinh.\r\n\r\nNgoài ra còn các camera khác là Cinefex helicam (trực thăng gắn camera), camera treo trên dây cáp, hai camera đảo góc và một camera trong đường hầm. Để phục vụ những người muốn xem trận bóng dưới góc nhìn thực tế ảo, một camera với góc quay 360 độ cũng có sẵn để phục vụ.\r\n\r\nTổng cộng, có 370 camera nhãn hiệu Sony, 29 bộ chuyển XVS (cũng do Sony sản xuất) và hơn 1.000 màn hình được sử dụng để hỗ trợ cho hệ thống này. Tất cả được thực hiện bởi Host Broadcast Services (HBS), công ty phụ trách việc quay phim cho giải đấu World Cup từ năm 2002.\r\n\r\nTuy nhiên, dù nguồn cấp dữ liệu có thể tạo ra các hình ảnh với chất lượng cao, không phải tất cả đều sẽ được truyền tới người xem một cách nguyên vẹn với độ phân giải cao nhất bởi nó bị ảnh hưởng bởi các quy tắc phát sóng ở nhiều quốc gia. Với mục đích chính là nội dung có thể tiếp cận được với nhiều người nhất có thể, chúng phải được phát trên các kênh miễn phí. Những kênh này phần nhiều không có sự đầu tư về công nghệ, cũng như các yếu tố hỗ trợ cần thiết khác để hiển thị hình ảnh ở định dạng 4K.\r\n\r\nDẫu vậy, không có nghĩa là người xem không thể tiếp cận các kênh hình ảnh chất lượng cao. Một số nền tảng, luồng giới hạn ở một số TV và hộp giải mã có thể khắc phục vấn đề này. Một số nhà cung cấp truyền hình cáp cũng có thể mang tới cho khách hàng của họ các trận bóng với hình ảnh chất lượng cao. \r\n\r\nNhiều người hy vọng rằng tới World Cup 2022 diễn ra ở Qatar, các kênh 4K sẽ là tiêu chuẩn hiển thị chung cho tất cả mọi người. Trong tương lai sau đó có thể là chất lượng 8K, công nghệ hiện nay vẫn còn đang trong giai đoạn thử nghiệm.\r\n\r\nBảo Nam', '2', 1, '2018-07-04 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `article_group`
--

DROP TABLE IF EXISTS `article_group`;
CREATE TABLE IF NOT EXISTS `article_group` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma_cha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tu_khoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hinh_chia_se` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trang_thai` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_cap_nhat` datetime DEFAULT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `article_group`
--

INSERT INTO `article_group` (`ma`, `ten`, `ma_cha`, `alias`, `tieu_de`, `tu_khoa`, `mo_ta`, `hinh_chia_se`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'dienthoai', '0', 'dien-thoai', 'điện thoại', 'điện thoại', 'Trang tin cập nhật những thông tin mới nhất về thế giới smart phone', 'dien-thoai', 2, '2018-07-04 00:00:00', '2018-08-01 15:08:18'),
(2, 'Thế giới sô', '0', 'the-gioi-ky-thuat-so', 'Thế giới kỹ thuật sô', 'kỹ thuật sô', 'Trang tin cập nhật những thông tin nổi bật về thế giới kỹ thuật sô', '', 1, '2018-07-04 00:00:00', '2018-08-01 14:16:03'),
(3, 'Tin cập nhật', '0', 'tin_cap_nhat', 'Điện thoại có chức năng đọc được cảm xúc của người dùng', 'điện thoại, đọc cảm xúc', 'EQ-Radio có thể dựa vào nhịp tim và hơi thở để dự đoán cảm xúc của con người, mở ra khả năng ứng dụng trong nhiều lĩnh vực.', 'images/articles/tin_cap_nhat_1533055278_.jpg', 1, '2018-07-31 23:41:18', '2018-08-01 10:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_hoa_don`
--

DROP TABLE IF EXISTS `chi_tiet_hoa_don`;
CREATE TABLE IF NOT EXISTS `chi_tiet_hoa_don` (
  `ma_hoa_don` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma_san_pham` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` bigint(20) NOT NULL,
  `giam_gia` float NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_cap_nhat` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chuc_nang`
--

DROP TABLE IF EXISTS `chuc_nang`;
CREATE TABLE IF NOT EXISTS `chuc_nang` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma_cha` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_cap_nhat` datetime DEFAULT NULL,
  PRIMARY KEY (`ma`),
  UNIQUE KEY `link` (`link`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chuc_nang`
--

INSERT INTO `chuc_nang` (`ma`, `ten`, `link`, `ma_cha`, `level`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'HOME', '/home', 0, 0, 1, '2018-07-03 00:00:00', NULL),
(2, 'ĐIỆN THOẠI', '/dien-thoai', 0, 0, 1, '2018-07-03 00:00:00', NULL),
(3, 'MÁY TÍNH BẢNG', '/may-tinh-bang', 0, 0, 1, '2018-07-03 00:00:00', NULL),
(4, 'PHỤ KIỆN', '/phu-kien', 0, 0, 1, '2018-07-03 00:00:00', NULL),
(5, 'SẢN PHẨM KHÁC', '/san-pham-khac', 0, 0, 1, '2018-07-03 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `configure`
--

DROP TABLE IF EXISTS `configure`;
CREATE TABLE IF NOT EXISTS `configure` (
  `ma` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `khoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia_tri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_hoan_thanh` datetime DEFAULT NULL,
  `mail_from` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `from_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_auth` int(1) NOT NULL,
  `smtp_host` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_pass` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_secure` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_port` int(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `configure`
--

INSERT INTO `configure` (`ma`, `khoa`, `gia_tri`, `trang_thai`, `ngay_tao`, `ngay_hoan_thanh`, `mail_from`, `from_name`, `smtp_auth`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_secure`, `smtp_port`) VALUES
(1, 'key', 'value', 1, '2018-07-30 00:00:00', '2018-07-31 00:00:00', 'webhay@gmail.com', 'Hỗ trợ website abc.com', 1, 'smtp.gmail.com', 'php23453thang@gmail.com', 'php@2017', 'ssl', 465);

-- --------------------------------------------------------

--
-- Table structure for table `hang_san_xuat`
--

DROP TABLE IF EXISTS `hang_san_xuat`;
CREATE TABLE IF NOT EXISTS `hang_san_xuat` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma_cha` int(11) NOT NULL DEFAULT '0',
  `trang_thai` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_cap_nhat` datetime DEFAULT NULL,
  PRIMARY KEY (`ma`),
  UNIQUE KEY `ten` (`ten`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hang_san_xuat`
--

INSERT INTO `hang_san_xuat` (`ma`, `ten`, `alias`, `ma_cha`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'APPLE', 'APPLE', 0, 1, '2018-07-04 00:00:00', NULL),
(2, 'SAMSUNG', 'SAMSUNG', 0, 1, '2018-07-04 00:00:00', NULL),
(3, 'SONY', 'SONY', 0, 1, '2018-07-04 00:00:00', NULL),
(4, 'BLACKBERY', 'BLACKBERY', 0, 1, '2018-07-04 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

DROP TABLE IF EXISTS `hoa_don`;
CREATE TABLE IF NOT EXISTS `hoa_don` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `so_hoa_don` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_lap` date NOT NULL,
  `ma_khach_hang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tong_tien` bigint(20) NOT NULL,
  `phuong_thuc_thanh_toan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma_ship` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phi_ship` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thue` float NOT NULL,
  `tinh_trang` int(11) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_cap_nhat` datetime DEFAULT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoa_don`
--

INSERT INTO `hoa_don` (`ma`, `so_hoa_don`, `ngay_lap`, `ma_khach_hang`, `tong_tien`, `phuong_thuc_thanh_toan`, `ma_ship`, `phi_ship`, `thue`, `tinh_trang`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, '00000100', '2018-07-04', 'cust1', 50000000, '0', 'ship1', '50000', 5000000, 1, 1, '2018-07-04 00:00:00', NULL),
(2, '00000001', '2018-07-04', 'cust2', 20000000, '1', 'ship2', '900000', 2000000, 1, 1, '2018-07-04 00:00:00', NULL),
(3, '00000002', '2018-07-04', 'cust3', 18000000, '1', 'ship3', '900000', 1800000, 1, 1, '2018-07-04 00:00:00', NULL),
(4, '00000004', '2018-07-04', 'cust4', 10000000, '2', 'ship4', '30000', 1000000, 1, 1, '2018-07-04 00:00:00', NULL),
(5, '00000023', '2018-07-04', 'cust5', 15000000, '0', 'ship5', '30000', 1500000, 1, 1, '2018-07-04 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

DROP TABLE IF EXISTS `khach_hang`;
CREATE TABLE IF NOT EXISTS `khach_hang` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten_dang_nhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_cap_nhat` datetime DEFAULT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`ma`, `ten`, `ten_dang_nhap`, `mat_khau`, `sdt`, `dia_chi`, `email`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'cust cust 1', 'cust1', '123456', '098xxxxxx1', '01 - Earth - Sun System', 'cust1@email.com', 1, '2018-07-04 00:00:00', '2018-07-04 00:00:00'),
(2, 'cust cust 02', 'cust02', '123456', '098xxxxxx2', '02 - Earth - Sun System', 'cust2@email.com', 1, '2018-07-04 00:00:00', NULL),
(3, 'cust cust 03', 'cust03', '123456', '098xxxxxx3', '03 - Earth - Sun System', 'cust3@email.com', 1, '2018-07-04 00:00:00', NULL),
(4, 'cust cust 04', 'cust04', '123456', '098xxxxxx4', '04 - Earth - Sun System', 'cust4@email.com', 1, '2018-07-04 00:00:00', NULL),
(5, 'cust cust 05', 'cust05', '123456', '098xxxxxx5', '05 - Earth - Sun System', 'cust5@email.com', 1, '2018-07-04 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

DROP TABLE IF EXISTS `loai`;
CREATE TABLE IF NOT EXISTS `loai` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma_cha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tu_khoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hinh_chia_se` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_cap_nhat` datetime DEFAULT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`ma`, `alias`, `ten`, `ma_cha`, `tieu_de`, `tu_khoa`, `mo_ta`, `hinh_chia_se`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'dien-thoai', 'điện thoại', '0', 'dien thoai', 'dien thoai', 'smart phone', 'dien-thoai', 1, '2018-07-04 00:00:00', NULL),
(2, 'may-tinh-bang', 'MÁY TÍNH BẢNG', '0', 'may tinh bang', 'may tinh bang', 'MÁY TÍNH BẢNG', 'may-tinh-bang', 1, '2018-07-04 00:00:00', NULL),
(3, 'phu-kien', 'PHỤ KIỆN', '0', 'phu kien', 'phu kien', 'PHỤ KIỆN', 'phu-kien', 1, '2018-07-04 00:00:00', NULL),
(4, 'san-pham-khac', 'SẢN PHẨM KHÁC', '0', 'san pham khac', 'san pham khac', 'SẢN PHẨM KHÁC', 'san-pham-khac', 1, '2018-07-04 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ma_quan_tri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma_chuc_nang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_cap_nhat` datetime NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhom_san_pham`
--

DROP TABLE IF EXISTS `nhom_san_pham`;
CREATE TABLE IF NOT EXISTS `nhom_san_pham` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma_cha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tu_khoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hinh_chia_se` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_cap_nhat` datetime DEFAULT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhom_san_pham`
--

INSERT INTO `nhom_san_pham` (`ma`, `alias`, `ten`, `ma_cha`, `tieu_de`, `tu_khoa`, `hinh_chia_se`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'samsung', 'samsung', '0', 'điện thoại', 'samsung', 'samsung-galaxy-s9', 1, '2018-07-04 00:00:00', NULL),
(2, 'apple', 'Apple', '0', 'điện thoại', 'apple', 'iphonex', 1, '2018-07-04 00:00:00', NULL),
(3, 'sony', 'Sony', '0', 'điện thoại', 'sony', 'sony', 1, '2018-07-04 00:00:00', NULL),
(4, 'htc', 'HTC', '0', 'điện thoại', 'htc', 'htc', 0, '2018-07-04 00:00:00', NULL),
(5, 'blackberry', 'BlackBerry', '0', 'điện thoại', 'blackberry', 'blackberry', 0, '2018-07-04 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phuong_thuc_thanh_toan`
--

DROP TABLE IF EXISTS `phuong_thuc_thanh_toan`;
CREATE TABLE IF NOT EXISTS `phuong_thuc_thanh_toan` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nha_cung_cap` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trang_thai` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_cap_nhat` datetime DEFAULT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phuong_thuc_thanh_toan`
--

INSERT INTO `phuong_thuc_thanh_toan` (`ma`, `ten`, `nha_cung_cap`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'tiền mặt', NULL, 1, '2018-07-04 00:00:00', NULL),
(2, 'credit card', 'vcb', 1, '2018-07-04 00:00:00', NULL),
(3, 'transaction', 'vcb', 1, '2018-07-04 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

DROP TABLE IF EXISTS `san_pham`;
CREATE TABLE IF NOT EXISTS `san_pham` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma_nhom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_chi_tiet` text COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_tom_tat` text COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `danh_sach_hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tu_khoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh_chia_se` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma_loai` int(11) NOT NULL DEFAULT '0',
  `so_luong` int(11) NOT NULL,
  `don_gia` bigint(20) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_cap_nhat` datetime DEFAULT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`ma`, `ten`, `alias`, `ma_nhom`, `noi_dung_chi_tiet`, `noi_dung_tom_tat`, `hinh_anh`, `danh_sach_hinh`, `tieu_de`, `tu_khoa`, `mo_ta`, `hinh_anh_chia_se`, `ma_loai`, `so_luong`, `don_gia`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'Điện thoại Samsung Galaxy A6 A600', 'samsung-galaxy-a6-a600', '2', 'Trải nghiệm bộ đôi Samsung Galaxy A6 và A6+ tại các cửa hàng của Mai Nguyên và SES Mai Nguyên\r\nVới sức hút từ thương hiệu Samsung cũng như sở hữu những thông số khá ấn tượng trong phân khúc giá, Galaxy A6 và A6+ đã nhanh chóng nhận được sự quan tâm rất lớn từ phía người dùng. Vì thế, tại các cửa hàng của Mai Nguyên và SES Mai Nguyên, bộ đôi này đã có phiên bản trưng bày để cho quý khách tới trải nghiệm thử...\r\n\r\nCác khách hàng sở hữu Samsung Galaxy A6 và Samsung Galaxy A6+ không chỉ sở hữu sản phẩm mang thiết kế trẻ trung, tính năng và ứng dụng hiện đại mà còn sở hữu những quà tặng đặc biệt như tặng kèm tai nghe Samsung U Flex hay chương trình hỗ trợ khách hàng có thẻ tín dụng với ưu đãi trả góp lãi suất 0%. Đặc biệt, với các cửa hàng SES (Samsung Experience Store) Mai Nguyên, bạn còn được tặng thêm bao da chính hãng cao cấp. ', 'Màn hình:Super AMOLED, 6.3\", Full HD+\r\nHệ điều hành:Android 8.0 (Oreo)\r\nCamera sau:24 MP và 16 MP (2 camera)\r\nCamera trước:24 MP\r\nCPU:Qualcomm Snapdragon 660 8 nhân\r\nRAM:4 GB\r\nBộ nhớ trong:64 GB\r\nThẻ nhớ:MicroSD, hỗ trợ tối đa 400 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:3700 mAh', 'samsung-galaxy-a6-a6000', 'samsung-galaxy-a6-a6000', 'samsung galaxy a6', 'a6 a6000', 'Tuyệt Tác Thiết Kế Siêu Mỏng Vượt Trội\r\n﻿Khám phá một trong những tuyệt tác thiết kế mỏng nhất từ Samsung. Trên tay chế tác kim loại tinh xảo kết hợp mặt kính 2.5D cao cấp từ Galaxy A6. Nâng tầm đẳng cấp, sang trọng nổi bật.\r\n', 'samsung-galaxy-a6-a6000', 1, 20, 6740000, 1, '2018-07-04 00:00:00', NULL),
(2, 'Điện thoại Samsung Galaxy A8+ A730 (2018)', 'samsung-galaxy-a8+-a730-2018', '2', 'Chia sẻ nhanh về Galaxy A8+: mình thật sự thích nó hơn cả S8 và Note8\r\nMình thường chỉ thích và sử dụng các điện thoại flagship làm máy chính, nhưng thỉnh thoảng cũng có một số chiếc điện thoại tầm trung xuất sắc lọt vào tầm mắt của mình và nó chứng minh rằng không phải ít tiền là đồ dỏm. Galaxy A8+ là một trong số đó, và thật sự mình thích thiết kế của cái máy này hơn cả Galaxy S8 và Note 8, vốn là những cái máy đắt hơn rất nhiều so với A8+ và thuộc phân khúc cao cấp nhất của Samsung cho tới lúc mình đang viết bài này.\r\n\r\nNhìn thẳng từ trước tới, bạn có thể nói ngay rằng chiếc A8+ do Samsung làm vì những điểm tương đồng của nó với Galaxy S8, nổi bật nhất là màn hình viền mỏng. Thật ra nói mỏng thì cũng chưa phải đúng lắm vì cạnh hai bên của A8+ vẫn khá dày, nhưng viền trên dưới được vát đi khá nhiều cộng với màn hình dài tạo cảm giác máy rất đẹp. Chiếc S8 và Note8 \"đánh lừa\" bạn một chút vì màn hình cong tràn ra hai bên nên bạn không thấy hai mép trái phải, chứ nếu bạn nhìn kĩ vào cạnh bên thì vẫn sẽ thấy chi tiết này.', 'Màn hình:Super AMOLED, 6.3\", Full HD+\r\nHệ điều hành:Android 8.0 (Oreo)\r\nCamera sau:24 MP và 16 MP (2 camera)\r\nCamera trước:24 MP\r\nCPU:Qualcomm Snapdragon 660 8 nhân\r\nRAM:4 GB\r\nBộ nhớ trong:64 GB\r\nThẻ nhớ:MicroSD, hỗ trợ tối đa 400 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:3700 mAh', 'samsung-galaxy-a8-2018', 'samsung-galaxy-a8-2018', 'galaxy', 'a8-2018', 'Tuyệt Tác Thiết Kế Siêu Mỏng Vượt Trội\r\n﻿Khám phá một trong những tuyệt tác thiết kế mỏng nhất từ Samsung. Trên tay chế tác kim loại tinh xảo kết hợp mặt kính 2.5D cao cấp từ Galaxy A8 Star. Nâng tầm đẳng cấp, sang trọng nổi bật.\r\n', 'samsung-galaxy-a8-2018', 1, 50, 12490000, 1, '2018-07-04 00:00:00', NULL),
(3, 'Điện thoại Samsung Galaxy S9 G960', 'samsung-galaxy-s9-g960', '2', 'Chuyện chưa kể về camera của bộ đôi Galaxy S9\r\nBộ cảm biến camera nhanh gấp 4 lần so với công nghệ trước đây đã tạo nên khả năng quay super slow-mo của Galaxy S9.\r\n\r\nCác thành viên nhóm phát triển camera của Samsung vừa có những chia sẻ về quá trình làm nên camera, tính năng được rất nhiều đánh giá tích cực trên bộ đôi Galaxy S9.\r\n\r\nBuổi gặp gỡ có sự tham gia của các ông Doosoo Kim, Sungwook Choi đến từ nhóm phát triển camera cùng Youngmin Nam, Junmo Kim thuộc nhóm hoạch định sản phẩm.\r\nChuyen chua ke ve camera cua bo doi Galaxy S9 hinh anh 1\r\n\r\nĐội ngũ phát triển camera trên Galaxy S9. \r\n\r\nCảm biến cải tiến mang đến những khả năng bất ngờ\r\n\r\n\"Thiết bị có thể đạt tốc độ đọc hình ảnh nhanh gấp bốn lần camera thông thường, nhờ vào bộ cảm biến xếp chồng ba lớp gồm một cảm biến CMOS, một bộ mạch chính và một bộ nhớ truy xuất ngẫu nhiên động DRAM, chưa từng được tích hợp vào bộ cảm biến trước đây\".\r\n\r\n\"Việc tích hợp DRAM này vào cảm biến hình ảnh đã loại bỏ những trở ngại trước đây, như tốc độ vận hành giữa bộ cảm biến và bộ vi xử lý ứng dụng (Application Processor) tích hợp trong camera tốc độ cao lên tới 960 khung hình/giây\", DongSoo Kim giải thích.\r\n\r\nGalaxy S9 cho khả năng quay super slowmotion trong điều kiện chói sáng, cũng như giảm thiểu tối đa nhiễu hạt trên hình ảnh trong môi trường thiếu sáng.\r\n\r\n\"So với các dòng sản phẩm thế hệ trước, tỷ lệ giảm nhiễu hạt của Galaxy S9 lên đến 30% trong điều kiện thiếu sáng. Ống kính khẩu độ kép có khả năng tự điều chỉnh theo môi trường ánh sáng, giống với cơ chế hoạt động của mắt người, mang đến khả năng chụp thiếu sáng đáng kinh ngạc cho Galaxy S9\", Sungwook Choi cho hay.\r\nChuyen chua ke ve camera cua bo doi Galaxy S9 hinh anh 2\r\n\r\nSuper slowmotion là một trong những tính năng được đánh giá cao trên Galaxy S9. Ảnh: Hardwarezone.\r\n\r\nNhững cải tiến về cảm biến hình ảnh, ống kính khẩu độ kép cùng nhiều tính năng camera khác đã mang đến trải nghiệm hoàn toàn mới. Giờ đây, người dùng có thể lưu lại các khoảnh khắc thú vị dưới dạng đoạn phim ngắn 0,2 giây tốc độ cao, và trải ra thành 6 giây siêu chậm với tính năng quay siêu chậm.\r\n\r\nVượt qua các bài kiểm tra một cách chuyên sâu, toàn diện\r\n\r\nNgay từ khi có bản mẫu hoàn thiện đầu tiên được trang bị tính năng quay siêu chậm, Samsung vẫn tiếp tục tìm cách cải tiến phiên bản này thông qua hàng loạt bài kiểm tra nghiêm ngặt, toàn diện để chuẩn bị cho giai đoạn thương mại hóa tiếp theo.\r\n\r\nThoạt đầu, tính năng này chỉ thực hiện được trên máy tính xách tay. Trong các thử nghiệm tiếp theo, nhóm nghiên cứu lúc thì hai, lúc thì ba chiếc laptop để thử nghiệm tính năng quay siêu chậm dưới cái nắng hè chói chang tại công viên giải trí Hàn Quốc. Ở đó, họ đã kiểm tra chức năng bắt chuyển động (motion detection) để ghi lại các khoảnh khắc di chuyển bất chợt mà người dùng muốn lưu giữ.\r\n\r\n“Quá trình thử nghiệm tính năng bắt chuyển động cho chế độ quay super slowmotion này thật sự chẳng dễ dàng. Mọi người cứ nhìn chằm chằm lúc chúng tôi mang mấy chiếc laptop đến khu công viên giải trí để ghi hình lại các trò tàu lượn siêu tốc\", Dongsoo Kim chia sẻ.\r\n\r\n“Chúng tôi còn chụp ảnh trong suốt hai tiếng đồng hồ ở giữa một dãy núi, vào một đêm buốt giá để hoàn thiện hơn nữa chức năng chụp ảnh trong điều kiện thiếu sáng”, Sungwook Choi hồi tưởng lại.\r\n\r\nKhai thác tối đa khả năng camera của smartphone\r\n\r\nVới nhu cầu thiết yếu của smartphone đối với đời sống hiện nay, việc phát triển công nghệ giúp tối ưu hóa camera trên thiết bị được xem yếu tố then chốt.\r\nChuyen chua ke ve camera cua bo doi Galaxy S9 hinh anh 3\r\n\r\nCamera là một trong những tính năng trọng điểm phát triển của Samsung. Ảnh: CNN.\r\n\r\n“Camera của Galaxy S9 tập trung vào đơn giản hóa chức năng quay super slowmotion, giúp dễ dàng và tiện lợi tạo ra các video đến khả năng chia sẻ liền mạch.\r\n\r\nKết quả là người dùng sẽ tạo ra được một tập tin định dạng GIF với kích thước tiêu chuẩn từ 3 đến 15 MB có thời lượng 6 giây. Đây là thời gian tối ưu đáp ứng được nhu cầu thưởng thức và chia sẻ hiện nay của người dùng\", Youngmin Nam cho biết.\r\n\r\nĐối với tính năng AR Emoji, người dùng có thể chia sẻ các sticker AR Emoji qua nhiều nền tảng nhắn tin khác nhau. Camera trước cũng được nâng cấp nhằm cải thiện trải nghiệm người dùng, đồng thời tích hợp thêm nhiều tính năng vui nhộn.\r\n\r\nMột ví dụ điển hình là chức năng tự lấy nét Selfie Focus ở camera trước có thể nhận diện khuôn mặt từ hình ảnh, dựa vào các thuật toán chuyên sâu nhằm mang lại những bức selfie ấn tượng, đồng thời kích hoạt hiệu ứng chụp xóa phông.\r\n\r\nNhóm phát triển cho rằng tương lai của camera trên smartphone đang phát triển đúng hướng.\r\n\r\n\"Mục tiêu tối thượng của chúng tôi là phát triển camera, làm sao để luôn tạo ra các bức ảnh đẹp nhất cho người dùng mà không cần phải chỉnh sửa. Những hình ảnh và video quay bởi Galaxy S9 có thể thỏa mãn được nhu cầu ngày càng khắt khe của người tiêu dùng\", Junmo Kim chia sẻ.\r\n\r\nTheo Zing.vn\r\n', '\r\n    Màn hình:Super AMOLED, 5.8\", Quad HD+ (2K+)\r\n    Hệ điều hành:Android 8.0 (Oreo)\r\n    Camera sau:12 MP\r\n    Camera trước:8 MP\r\n    CPU:Exynos 9810 8 nhân 64 bit\r\n    RAM:4 GB\r\n    Bộ nhớ trong:64 GB\r\n    Thẻ nhớ:MicroSD, hỗ trợ tối đa 400 GB\r\n    Thẻ SIM:2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\n    Dung lượng pin:3000 mAh, có sạc nhanh\r\n', 'samsung-galaxy-s9', 'samsung-galaxy-s9', 'galaxy', 'galaxy s9', 'Siêu phẩm Samsung Galaxy S9 chính thức ra mắt mang theo hàng loạt cải tiến, tính năng cao cấp như camera thay đổi khẩu độ, quay phim siêu chậm 960 fps, AR Emoji... nhanh chóng gây sốt làng công nghệ.', 'samsung-galaxy-s9', 1, 23, 17990000, 1, '2018-07-04 00:00:00', NULL),
(4, 'Điện thoại Apple iPhone 8 64GB (Chính hãng Apple VN)', 'apple-iphone-8-64gb-chinh-hang-apple-vn', '1', '\r\nĐặc điểm nổi bật của iPhone 8 64GB\r\n\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Jack chuyển tai nghe 3.5mm, Cáp, Cây lấy sim\r\niPhone 8 64GB nổi bật với điểm nhấn mặt lưng kính kết hợp cạnh viền và mặt trước giữ nguyên thiết kế như iPhone 7, cùng với đó là hàng loạt công nghệ đáng mong đợi như sạc nhanh, không dây hay hỗ trợ thực tế ảo AR.\r\nThay đổi phong cách thiết kế\r\n\r\niPhone 8 kết hợp giữa những đường nét đã làm nên chuẩn mực, thương hiệu với sự thời thượng và hiện đại của mặt lưng phủ kính cường lực thay vì nguyên khối kim loại. Điểm thiết kế này mang lại độ bóng bẩy, đẹp mắt hơn cho sản phẩm.\r\nTrên tay iPhone 8\r\n\r\nMặt lưng kính giúp iPhone 8 được tích hợp công nghệ sạc không dây hiện đại mà người dùng mong đợi từ lâu. Ngoài ra còn là lần đầu tiên Apple trang bị công nghệ sạc pin nhanh cho iPhone.\r\n\r\nTrên tay iPhone 8\r\n\r\nPhong cách mới cũng đồng thời loại bỏ hoàn toàn những chi tiết thừa như phần anten trên mặt lưng để đưa thiết kế iPhone 8 đến độ hoàn hảo.\r\n\r\nTrên tay iPhone 8\r\nMàn hình chất lượng\r\n\r\nMặt trước iPhone 8 vẫn sở hữu màn hình 4.7 inch độ phân giải Retina HD nhưng được Apple nâng cấp và gọi bằng cái tên Retina HD True Tone với khả năng hiển thị màu chính xác hơn. Phím home cảm ứng lực 3D Touch tích hợp với cả cảm biến vân tay. \r\n\r\nTrên tay iPhone 8\r\nNâng cấp camera\r\n\r\nCamera chính có độ phân giải 12 MP, khẩu độ F/1.8 cùng rất nhiều cải tiến về hình ảnh, độ sắc nét, tốc độ hay khả năng chụp thiếu sáng. Ngoài ra còn nâng cấp một vài điểm như hỗ trợ quay video 4K @60fps, và nâng tiếp video 240fps lên độ phân giải 1080p.\r\n\r\nTrên tay iPhone 8\r\n\r\nCamera trước vẫn có độ phân giải 7 MP cùng khẩu độ F/2.2 cho hình ảnh chân thực, sắc nét mà không hề quá ảo diệu.\r\n\r\niphone-8-256gb\r\nCấu hình mạnh mẽ nhất\r\n\r\nĐiểm qua cấu hình, iPhone 8 sẽ sử dụng con chip 6 nhân A11 Bionic tương tự như trên iPhone X, chip có sức mạnh cao cấp nhất tính đến thời điểm ra mắt iPhone 8, cùng 2 GB RAM.  \r\n\r\nTrên tay iPhone 8\r\n\r\nKết hợp cùng phiên bản iOS 11, cả iPhone 8 nhấn mạnh vào khả năng trình chiếu thực tế ảo AR mang đến những trải nghiệm hoàn toàn khác biệt so với trước đây.\r\n\r\niphone-8-256gb\r\nChống nước, bụi cao cấp\r\n\r\niPhone 8 không quên tích hợp chuẩn chống nước, bụi cao cấp mang đến sự an toàn, bền bỉ cũng như khả năng sử dụng lâu dài chống chịu nhiều điều kiện thời tiết.', '    Màn hình:LED-backlit IPS LCD, 4.7\", Retina HD\r\n    Hệ điều hành:iOS 11\r\n    Camera sau:12 MP\r\n    Camera trước:7 MP\r\n    CPU:Apple A11 Bionic 6 nhân\r\n    RAM:2 GB\r\n    Bộ nhớ trong:64 GB\r\n    Thẻ SIM:1 Nano SIM, Hỗ trợ 4G\r\n    Dung lượng pin:1821 mAh, có sạc nhanh\r\n', 'iphone8', 'iphone8', 'iphone', 'iphone 8', 'iPhone 8 chính hãng Apple VN - Sang trọng, bóng bẩy, bộ nhớ 64 và 256 GB ', 'iphone8', 1, 31, 20990000, 1, '2018-07-04 00:00:00', NULL),
(5, 'Điện thoại Apple iPhone X 64GB (Chính hãng Apple VN)', 'apple-iphone-x-64gb-chinh-hang-apple-vn', '1', '\"Giá iPhone X\" là cụm từ được rất nhiều người mong chờ muốn biết và tìm kiếm trên Google bởi đây là chiếc điện thoại mà Apple kỉ niệm 10 năm iPhone đầu tiên được bán ra.\r\nThiết kế đột phá\r\n\r\nNhư các bạn cũng đã biết thì đã 4 năm kể từ iPhone 6 và iPhone 6 Plus Apple vẫn chưa có thay đổi nào đáng kể trong thiết kế của mình.\r\n\r\nThiết kế đột phá\r\n\r\nNhưng với iPhone X thì đó lại là 1 câu chuyện hoàn toàn khác, máy chuyển qua sử dụng màn hình tỉ lệ 19,5:9 mới mẻ với phần diện tích hiển thị mặt trước cực lớn.\r\n\r\nThiết kế đột phá\r\n\r\nMặt lưng kính hỗ trợ sạc nhanh không dây cũng như phần camera kép đặt dọc cũng là những thứ đầu tiên xuất hiện trên 1 chiếc iPhone.\r\nMàn hình với tai thỏ\r\n\r\nĐiểm khiến iPhone X bị chê nhiều nhất đó chính là phần \"tai thỏ\" phía trên màn hình, Apple đã chấp nhận điều này để đặt cụm camera TrueDept mới của hãng.\r\n\r\nMàn hình với tai thỏ\r\n\r\nMàn hình kích thước 5.8 inch độ phân giải 1125 x 2436 pixels đem đến khả năng hiển thị xuất sắc.\r\n\r\nMàn hình với tai thỏ\r\n\r\niPhone X sử dụng tấm nền OLED (được tinh chỉnh bởi Apple) thay vì LCD như những chiếc iPhone trước đây và điều này đem lại cho máy 1 màu đen thể hiện rất sâu cũng khả năng tái tạo màu sắc không kém phần chính xác.\r\nFace ID tạo nên đột phá\r\n\r\nTouch ID trên iPhone X đã bị loại bỏ, thay vào đó là bạn sẽ chuyển qua sử dụng Face ID, một phương thức bảo mật sinh trắc học mới của Apple.\r\n\r\nFace ID tạo nên đột phá\r\n\r\nVới sự trợ giúp của cụm camera TrueDept thì iPhone X có khả năng nhận diện khuôn mặt 3D của người dùng từ đó mở khóa chiếc iPhone một cách nhanh chóng.\r\n\r\nFace ID tạo nên đột phá\r\n\r\nTuy sẽ hơi hụt hẫng khi Touch ID đã quá quen thuộc trên những chiếc iPhone như tốc độ cũng như trải nghiệm \"khóa như không khóa\" của Face ID hoàn toàn có thể khiến bạn yên tâm sử dụng.\r\nThao tác vuốt và vuốt\r\n\r\nKhông còn phím Home cứng nên các thao tác trên iPhone X cũng hoàn toàn khác so với những đàn anh đi trước.\r\n\r\nThao tác vuốt và vuốt\r\n\r\nGiờ đây chỉ với thao tác vuốt và vuốt từ cạnh dưới là bạn đã có thể truy cập vào đa nhiệm, trở về màn hình Home một cách nhanh chóng.\r\nCamera cải tiến\r\n\r\niPhone X vẫn sở hữu bộ đôi camera với độ phân giải 12 MP nhưng camera tele thứ 2 với khẩu độ được nâng lên mức f/2.4 so với f/2.8 của iPhone 7 Plus.\r\n\r\nCamera cải tiến\r\n\r\nNgoài ra thì cả 2 camera trên iPhone X đều sở hữu cho mình khả năng chống rung quang học giúp bạn dễ dàng bắt trọn mọi khoảnh khắc trong cuộc sống.\r\n\r\nCamera cải tiến\r\n\r\nCamera trước độ phân giải 7 MP với khả năng selfie xóa phông đáp ứng tốt mọi nhu cầu tự sướng của giới trẻ hiện nay.\r\n\r\nCamera cải tiến\r\n\r\nBộ đôi camera trên iPhone X được đánh giá rất cao về chất lượng ảnh chụp và là một trong những chiếc camera phone chụp ảnh đẹp nhất trong năm 2017.\r\nHiệu năng mạnh mẽ\r\n\r\nHiệu năng của những chiếc iPhone chưa bao giờ là vấn đề và với iPhone X thì mọi thứ vẫn rất ấn tượng.\r\n\r\nHiệu năng mạnh mẽ\r\n\r\nCon chip Apple A11 Bionic 6 nhân kết hợp với 3 GB RAM thì iPhone X tự tin là chiếc smartphone mạnh mẽ nhất mà Apple từng sản xuất.\r\n\r\nHiệu năng mạnh mẽ\r\n\r\nNgoài ra với iPhone X thì Apple cũng nhấn mạnh với trải nghiệm thực tế ảo tăng cường giúp bạn có những phút giây thư giãn thú vị.\r\n\r\nHiệu năng mạnh mẽ\r\n\r\nViên pin trên iPhone X có dung lượng 2716 mAh (lớn hơn cả trên iPhone 8 Plus) cho bạn sử dụng khá ổn trong khoảng một ngày liên tục.', '    Màn hình:OLED, 5.8\", Super Retina\r\n    Hệ điều hành:iOS 11\r\n    Camera sau:2 camera 12 MP\r\n    Camera trước:7 MP\r\n    CPU:Apple A11 Bionic 6 nhân\r\n    RAM:3 GB\r\n    Bộ nhớ trong:64 GB\r\n    Thẻ SIM:1 Nano SIM, Hỗ trợ 4G\r\n    Dung lượng pin:2716 mAh, có sạc nhanh\r\n', 'iphone-x', 'iphone-x', 'iphone', 'iphone x', 'Thiết kế toàn màn hình với viền siêu mỏng - Sang trọng và đẳng cấp', 'iphone-x', 1, 12, 28590000, 1, '2018-07-04 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipper`
--

DROP TABLE IF EXISTS `shipper`;
CREATE TABLE IF NOT EXISTS `shipper` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten_shipper` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten_cty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi_cty_shipper` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_cap_nhat` datetime DEFAULT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipper`
--

INSERT INTO `shipper` (`ma`, `ten_shipper`, `ten_cty`, `dia_chi_cty_shipper`, `sdt`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'shipper 01', 'fast-ship', '01 - Mars - Sun system ', '0989xxxxxx', 1, '2018-07-04 00:00:00', NULL),
(2, 'shipper 02', 'fast-ship', '01 - Mars - Sun system', '0988xxxxxx', 1, '2018-07-04 00:00:00', NULL),
(3, 'shipper 03', 'fast-ship', '01 - Mars - Sun system', '0987xxxxxx', 0, '2018-07-04 00:00:00', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
