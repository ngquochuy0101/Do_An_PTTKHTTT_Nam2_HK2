-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 04, 2024 lúc 01:40 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlsieuthimini`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietchuongtrinhgiamgia`
--

CREATE TABLE `chitietchuongtrinhgiamgia` (
  `idChiTietChuongTrinhGiamGia` int(11) NOT NULL,
  `loaiGiam` int(11) DEFAULT NULL,
  `soTienGiam` int(11) DEFAULT NULL,
  `phanTramGiam` int(11) NOT NULL,
  `idChuongTrinh` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietchuongtrinhgiamgia`
--

INSERT INTO `chitietchuongtrinhgiamgia` (`idChiTietChuongTrinhGiamGia`, `loaiGiam`, `soTienGiam`, `phanTramGiam`, `idChuongTrinh`) VALUES
(1, 1, 10000, 0, 1),
(2, 2, 0, 0, 1),
(3, 1, 20000, 0, 2),
(4, 2, 0, 0, 2),
(5, 1, 15000, 0, 3),
(6, 2, 0, 0, 3),
(7, 1, 30000, 0, 4),
(8, 2, 0, 0, 4),
(9, 1, 25000, 0, 5),
(10, 2, 0, 0, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `idChiTietHoaDon` int(11) NOT NULL,
  `donGia` int(11) DEFAULT NULL,
  `soLuong` int(11) DEFAULT NULL,
  `thanhTien` int(11) DEFAULT NULL,
  `idHoaDon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`idChiTietHoaDon`, `donGia`, `soLuong`, `thanhTien`, `idHoaDon`) VALUES
(2, 60000, 5, 300000, 1),
(3, 55000, 8, 440000, 2),
(4, 70000, 12, 840000, 2),
(5, 60000, 7, 420000, 3),
(6, 50000, 9, 450000, 3),
(7, 70000, 11, 770000, 4),
(8, 60000, 6, 360000, 4),
(9, 55000, 8, 440000, 5),
(10, 70000, 10, 700000, 5),
(11, 10000, 2, 20000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `idChiTietPhieuNhap` int(11) NOT NULL,
  `soLuong` int(11) DEFAULT NULL,
  `donGiaSP` int(11) DEFAULT NULL,
  `thanhTien` int(11) DEFAULT NULL,
  `idPhieuNhap` int(11) DEFAULT NULL,
  `idSP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`idChiTietPhieuNhap`, `soLuong`, `donGiaSP`, `thanhTien`, `idPhieuNhap`, `idSP`) VALUES
(1, 10, 50000, 500000, 1, 1),
(2, 5, 60000, 300000, 1, 2),
(3, 8, 55000, 440000, 2, 3),
(4, 12, 70000, 840000, 2, 4),
(5, 7, 60000, 420000, 3, 5),
(6, 9, 50000, 450000, 3, 6),
(7, 11, 70000, 770000, 4, 7),
(8, 6, 60000, 360000, 4, 8),
(9, 8, 55000, 440000, 5, 9),
(10, 10, 70000, 700000, 5, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsp`
--

CREATE TABLE `chitietsp` (
  `idChiTietSP` int(11) NOT NULL,
  `doNgot` int(11) DEFAULT NULL,
  `hinhDang` varchar(50) DEFAULT NULL,
  `huong` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsp`
--



-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuongtrinhgiamgia`
--

CREATE TABLE `chuongtrinhgiamgia` (
  `idChuongTrinh` int(11) NOT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chuongtrinhgiamgia`
--


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `idHoaDon` int(11) NOT NULL,
  `tongTien` int(11) DEFAULT NULL,
  `tienGiamGia` int(11) DEFAULT NULL,
  `ngayLap` datetime DEFAULT NULL,
  `idNhanVien` int(11) DEFAULT NULL,
  `idKhachHang` int(11) DEFAULT NULL,
  `idChiTietChuongTrinhGiamGia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `idKhachHang` int(11) NOT NULL,
  `SDT` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

CREATE TABLE `loaisp` (
  `idLoaiSP` int(11) NOT NULL,
  `tenLoaiSP` varchar(50) DEFAULT NULL,
  `dacTinh` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `idNhaCungCap` int(11) NOT NULL,
  `tenNCC` varchar(50) DEFAULT NULL,
  `diaChi` varchar(100) DEFAULT NULL,
  `sdt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`idNhaCungCap`, `tenNCC`, `diaChi`, `sdt`) VALUES
(1, 'Nhà cung cấp 1', 'Địa chỉ 1', '0123456789'),
(2, 'Nhà cung cấp 2', 'Địa chỉ 2', '0987654321'),
(3, 'Nhà cung cấp 3', 'Địa chỉ 3', '0123456789'),
(4, 'Nhà cung cấp 4', 'Địa chỉ 4', '0987654321'),
(5, 'Nhà cung cấp 5', 'Địa chỉ 5', '0123456789'),
(6, 'Nhà cung cấp 6', 'Địa chỉ 6', '0987654321'),
(7, 'Nhà cung cấp 7', 'Địa chỉ 7', '0123456789'),
(8, 'Nhà cung cấp 8', 'Địa chỉ 8', '0987654321'),
(9, 'Nhà cung cấp 9', 'Địa chỉ 9', '0123456789'),
(10, 'Nhà cung cấp 10', 'Địa chỉ 10', '0987654321');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `idNhanVien` int(11) NOT NULL,
  `MK` varchar(50) DEFAULT NULL,
  `CCCD` varchar(12) DEFAULT NULL,
  `hoTenLot` varchar(50) DEFAULT NULL,
  `ten` varchar(50) DEFAULT NULL,
  `ngaySinh` datetime DEFAULT NULL,
  `SDT` varchar(10) DEFAULT NULL,
  `trangThai` int(11) DEFAULT NULL,
  `chucVu` int(11) DEFAULT NULL,
  `luongThang` int(11) DEFAULT NULL,
  `gioiTinh` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`idNhanVien`, `MK`, `CCCD`, `hoTenLot`, `ten`, `ngaySinh`, `SDT`, `trangThai`, `chucVu`, `luongThang`, `gioiTinh`) VALUES
(1, '1', '123456789012', 'Trần', 'Thị B', '1990-01-01 00:00:00', '0123456789', 0, 1, 5000000, 0),
(2, 'password2', '987654321012', 'Trần', 'Thị B', '1995-02-02 00:00:00', '0987654321', 0, 1, 6000000, 0),
(3, 'password3', '456789012345', 'Lê', 'Thị C', '1992-03-03 00:00:00', '0123456789', 1, 1, 5500000, 0),
(4, 'password4', '543210987654', 'Phạm', 'Văn D', '1988-04-04 00:00:00', '0987654321', 1, 1, 7000000, 0),
(5, 'password5', '987654321012', 'Trần', 'Văn E', '1993-05-05 00:00:00', '0123456789', 1, 1, 6000000, 0),
(6, 'password6', '123456789012', 'Nguyễn', 'Thị F', '1996-06-06 00:00:00', '0987654321', 1, 1, 5000000, 0),
(7, 'password7', '210987654321', 'Võ', 'Thị G', '1991-07-07 00:00:00', '0123456789', 1, 3, 7000000, 0),
(8, 'password8', '432109876543', 'Trương', 'Văn H', '1989-08-08 00:00:00', '0987654321', 1, 1, 6000000, 0),
(9, 'password9', '765432109876', 'Nguyễn', 'Văn I', '1994-09-09 00:00:00', '0123456789', 1, 1, 5500000, 0),
(10, 'password10', '210987654321', 'Lê', 'Thị K', '1997-10-10 00:00:00', '0987654321', 1, 1, 7000000, 0),
(11, 'mk', 'cccd', 'Nguyễn', 'Văn A', '2004-12-10 00:00:00', '0878955654', 1, 1, 100000, 1),
(12, 'mk', 'cccd', 'nguyen quoc', ' huy', '2004-12-10 00:00:00', '0878955654', 1, 1, 100000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `idPhieuNhap` int(11) NOT NULL,
  `ngayLap` datetime DEFAULT NULL,
  `trangThai` int(11) DEFAULT NULL,
  `tongTien` int(11) DEFAULT NULL,
  `idNhaCungCap` int(11) DEFAULT NULL,
  `idNhanVien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idSP` int(11) NOT NULL,
  `tenSP` varchar(50) DEFAULT NULL,
  `soLuongSpConLai` int(11) DEFAULT NULL,
  `HSD` datetime DEFAULT NULL,
  `NSX` datetime DEFAULT NULL,
  `hinhAnhMinhHoa` varchar(50) DEFAULT NULL,
  `donGia` int(11) DEFAULT NULL,
  `idLoaiSP` int(11) DEFAULT NULL,
  `idChiTietSP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietchuongtrinhgiamgia`
--
ALTER TABLE `chitietchuongtrinhgiamgia`
  ADD PRIMARY KEY (`idChiTietChuongTrinhGiamGia`),
  ADD KEY `idChuongTrinh` (`idChuongTrinh`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`idChiTietHoaDon`),
  ADD KEY `idHoaDon` (`idHoaDon`);

--
-- Chỉ mục cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`idChiTietPhieuNhap`),
  ADD KEY `idPhieuNhap` (`idPhieuNhap`),
  ADD KEY `idSP` (`idSP`);

--
-- Chỉ mục cho bảng `chitietsp`
--
ALTER TABLE `chitietsp`
  ADD PRIMARY KEY (`idChiTietSP`);

--
-- Chỉ mục cho bảng `chuongtrinhgiamgia`
--
ALTER TABLE `chuongtrinhgiamgia`
  ADD PRIMARY KEY (`idChuongTrinh`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`idHoaDon`),
  ADD KEY `idChiTietChuongTrinhGiamGia` (`idChiTietChuongTrinhGiamGia`),
  ADD KEY `idNhanVien` (`idNhanVien`),
  ADD KEY `idKhachHang` (`idKhachHang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`idKhachHang`,`SDT`);

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`idLoaiSP`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`idNhaCungCap`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`idNhanVien`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`idPhieuNhap`),
  ADD KEY `idNhanVien` (`idNhanVien`),
  ADD KEY `idNhaCungCap` (`idNhaCungCap`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idSP`),
  ADD KEY `idLoaiSP` (`idLoaiSP`),
  ADD KEY `idChiTietSP` (`idChiTietSP`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietchuongtrinhgiamgia`
--
ALTER TABLE `chitietchuongtrinhgiamgia`
  MODIFY `idChiTietChuongTrinhGiamGia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `idChiTietHoaDon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `idChiTietPhieuNhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `chitietsp`
--
ALTER TABLE `chitietsp`
  MODIFY `idChiTietSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `chuongtrinhgiamgia`
--
ALTER TABLE `chuongtrinhgiamgia`
  MODIFY `idChuongTrinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `idHoaDon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `idKhachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `idLoaiSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `idNhaCungCap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `idNhanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `idPhieuNhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietchuongtrinhgiamgia`
--
ALTER TABLE `chitietchuongtrinhgiamgia`
  ADD CONSTRAINT `chitietchuongtrinhgiamgia_ibfk_1` FOREIGN KEY (`idChuongTrinh`) REFERENCES `chuongtrinhgiamgia` (`idChuongTrinh`);

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`idHoaDon`) REFERENCES `hoadon` (`idHoaDon`);

--
-- Các ràng buộc cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `chitietphieunhap_ibfk_1` FOREIGN KEY (`idPhieuNhap`) REFERENCES `phieunhap` (`idPhieuNhap`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_2` FOREIGN KEY (`idSP`) REFERENCES `sanpham` (`idSP`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`idChiTietChuongTrinhGiamGia`) REFERENCES `chitietchuongtrinhgiamgia` (`idChiTietChuongTrinhGiamGia`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`idNhanVien`) REFERENCES `nhanvien` (`idNhanVien`),
  ADD CONSTRAINT `hoadon_ibfk_3` FOREIGN KEY (`idKhachHang`) REFERENCES `khachhang` (`idKhachHang`);

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`idNhanVien`) REFERENCES `nhanvien` (`idNhanVien`),
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`idNhaCungCap`) REFERENCES `nhacungcap` (`idNhaCungCap`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`idLoaiSP`) REFERENCES `loaisp` (`idLoaiSP`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`idChiTietSP`) REFERENCES `chitietsp` (`idChiTietSP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
