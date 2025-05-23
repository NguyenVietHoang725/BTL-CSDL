﻿INSERT INTO tLoaiPhong (MaLoaiPhong, TenLoaiPhong, Nam_Nu, SoNguoi, DonGia)
VALUES
		('LP40', N'Phòng 4 người Nữ', 0, 4, 1600000),
		('LP41', N'Phòng 4 người Nam', 1, 4, 1600000),
		('LP60', N'Phòng 6 người Nữ', 0, 6, 2100000),
		('LP61', N'Phòng 6 người Nam', 1, 6, 2100000),
		('LP80', N'Phòng 8 người Nữ', 0, 8, 2400000),
		('LP81', N'Phòng 8 người Nam', 1, 8, 2400000);

INSERT INTO tPhong (MaPhong, TenPhong, MaLoaiPhong)
VALUES  
		('A1P01', N'P101', 'LP40'),
		('A1P02', N'P102', 'LP40'),
		('A1P03', N'P103', 'LP40'),
		('A2P01', N'P101', 'LP80'),
		('A2P02', N'P102', 'LP80'),
		('A2P06', N'P201', 'LP81'),
		('A2P07', N'P202', 'LP81'),
		('A2P11', N'P301', 'LP81'),
		('A2P12', N'P302', 'LP81'),
		('A3P01', N'P101', 'LP60'),
		('A3P02', N'P102', 'LP60'),
		('A3P03', N'P103', 'LP60'),
		('A3P07', N'P201', 'LP61'),
		('A3P08', N'P202', 'LP61'),
		('A3P09', N'P203', 'LP61');

INSERT INTO tSinhVien (MaSV, HoTen, NgaySinh, GioiTinh, SDT)
VALUES	
		('230870261', N'Vũ Bất Bình', '2005-11-18', '1', '0972936189'), 
		('233212163', N'Hồ Đắc Di', '2005-05-13', '1', '0709110148'),
		('241765996', N'Giàng Thị Mai', '2006-07-20', '0', '0388643901'), 
		('203581209', N'Tô Lâm', '2002-03-06', '1', '0331356271'),
		('240846478', N'Nguyễn Hữu Duyên', '2006-09-01', '0', '0875306860'), 
		('241162019', N'Vũ Kim Chi', '2006-07-20', '0', '0896828580'), 
		('221383603', N'Đắc Nhân Tâm', '2004-11-26', '1', '0366796100'), 
		('231529422', N'Trần Hải Đăng', '2005-03-08', '1', '0787795092'),
		('213129180', N'Trần Minh Sang', '2003-12-17', '1', '0897878469'),
		('212126824', N'Vũ Mai Lan Nhi', '2003-01-07', '0', '0895212709'), 
		('231698227', N'Đặng Trang Anh', '2005-12-19', '0', '0794854606'), 
		('220116929', N'Lục Hoàng Hà', '2004-03-18', '0', '0786561875'), 
		('201440450', N'Lưu Tùng Khánh', '2002-04-19', '1', '0395966976'),
		('200920608', N'Doãn Chí Bình', '2002-06-27', '1', '0842856594'), 
		('243641030', N'Đỗ Kim Oanh', '2006-11-27', '0', '0969357069'), 
		('200828032', N'Bùi Hữu Duyên', '2002-01-20', '1', '0388098911'), 
		('230575521', N'Trương Anh Ngọc', '2005-12-09', '1', '0381680343'),
		('220888001', N'Hoàng Lan Chi', '2004-08-21', '0', '0925468661'), 
		('200529587', N'Tập Cận Bình', '2002-02-15', '1', '0841751008'), 
		('231230791', N'Nguyễn Việt Hoàng', '2005-02-07', '1', '0388577967'),
		('222895641', N'Nguyễn Hải Ninh', '2004-12-02', '1', '0528416094'),
		('231230824', N'Nguyễn Thị Thùy Linh', '2005-11-03', '0', '0346293666'), 
		('231230834', N'Nguyễn Phạm Hoàng Mai', '2005-08-09', '0', '0365457362'), 
		('201328183', N'Đoàn Bảo Hân', '2000-12-26', '0', '0327902799'), 
		('231230821', N'Lưu Tùng Lâm', '2005-07-31', '1', '0393826705'), 
		('231230766', N'Vũ Thị Thanh Hằng', '2005-12-21', '0', '0961688109'), 
		('231230904', N'Nguyễn Văn Tú', '2005-11-21', '1', '0399955675'),
		('243645302', N'Nguyễn Thị Kim Sao', '2006-01-12', '0', '0829773751'), 
		('242244894', N'Lại Trường Giang', '2006-01-15', '1', '0562758422'),
		('240135848', N'Lại Mạnh Dũng', '2006-05-13', '1', '0867931121'),
		('243940766', N'Hứa Quang Hán', '2006-04-02', '1', '0376054504'),
		('243681310', N'Nghiêm Vũ Hoàng Long', '2006-05-10', '1', '0844578848'),
		('223511979', N'Trương Tuấn Tú', '2004-02-15', '1', '0371614794'),
		('242611945', N'Đặng Tiến Hoàng', '2006-12-20', '1', '0529407691');

INSERT INTO tNhanVien (MaNV, HoTen, NgaySinh, GioiTinh, ChucVu)
VALUES  
		('KT001', N'Phan Đức Bội', '1973-11-30', '1', N'Quản lý Kế toán'),
		('KT002', N'Mai Đức Anh', '1980-09-10', '1', N'Kế toán'),
		('KT003', N'Hà Thị Lan', '1992-11-12', '0', N'Kế toán'),
		('NV001', N'Nguyễn Thị Hiền', '1998-07-20', '0', N'Quản lý Nhân viên'),
		('NV002', N'Trần Thị Mai', '1995-03-22', '0', N'Nhân viên'),
		('NV003', N'Phan Văn Đức', '1989-03-03', '1', N'Nhân viên'),
		('NV004', N'Hà Thị Minh', '1996-07-27', '0', N'Nhân viên'),
		('NV005', N'Phạm Văn Dũng', '1988-06-30', '1', N'Nhân viên'),
		('BV001', N'Ngô Quốc Huy', '1983-04-20', '1', N'Quản lý Bảo vệ'),
		('BV002', N'Nguyễn Thị Linh', '1991-09-18', '0', N'Bảo vệ'),
		('BV003', N'Lê Thị Hồng', '1993-02-14', '0', N'Bảo vệ');

INSERT INTO tHopDong (MaHD, MaNV, MaSV, MaPhong, NgayBatDau, NgayKetThuc)
VALUES
		('HD001', 'NV002', '230870261', 'A2P06', '2024-09-01', '2025-02-01'),
		('HD002', 'NV004', '233212163', 'A2P06', '2025-01-01', '2025-06-01'),
		('HD003', 'NV005', '241765996', 'A1P01', '2024-11-01', '2025-04-01'),
		('HD004', 'NV003', '203581209', 'A2P06', '2025-02-01', '2025-12-01'),
		('HD005', 'NV003', '240846478', 'A1P01', '2024-07-01', '2025-07-01'),
		('HD006', 'NV004', '241162019', 'A1P01', '2025-03-01', '2025-08-01'),
		('HD007', 'NV005', '221383603', 'A2P06', '2024-08-01', '2025-01-01'),
		('HD008', 'NV002', '231529422', 'A2P06', '2025-04-01', '2025-09-01'),
		('HD009', 'NV003', '213129180', 'A2P06', '2024-10-01', '2025-03-01'),
		('HD010', 'NV004', '212126824', 'A1P01', '2025-01-01', '2025-11-01'),
		('HD011', 'NV005', '231698227', 'A1P02', '2024-12-01', '2025-05-01'),
		('HD012', 'NV002', '220116929', 'A1P02', '2024-06-01', '2025-06-01'),
		('HD013', 'NV003', '201440450', 'A2P06', '2025-02-01', '2025-07-01'),
		('HD014', 'NV004', '200920608', 'A2P06', '2024-11-01', '2025-04-01'),
		('HD015', 'NV002', '243641030', 'A1P02', '2025-03-01', '2025-08-01');

INSERT INTO tPBTThuePhong (MaPB, MaHD, NgayLapPhieu, HanThanhToan, TongTien, TrangThai)
VALUES
		('001', 'HD001', '2024-11-01', '2024-11-15', 2400000 / 8, 1), 
		('002', 'HD002', '2024-12-15', '2024-12-25', 2400000 / 8, 1), 
		('003', 'HD003', '2024-10-01', '2024-10-10', 1600000 / 4, 1), 
		('004', 'HD004', '2025-01-10', '2025-01-20', 2400000 / 8, 1), 
		('005', 'HD005', '2025-03-01', '2025-03-10', 1600000 / 4, 1), 
		('006', 'HD006', '2025-04-10', '2025-04-25', NULL, 0), 
		('007', 'HD007', '2025-04-12', '2025-04-27', NULL, 0), 
		('008', 'HD008', '2025-04-18', '2025-05-01', NULL, 0),
		('009', 'HD009', '2024-09-10', '2024-09-20', 2400000 / 8, 1),
		('010', 'HD010', '2024-12-05', '2024-12-20', 1600000 / 4, 1), 
		('011', 'HD011', '2025-01-15', '2025-01-30', 1600000 / 4, 1), 
		('012', 'HD012', '2025-04-15', '2025-05-01', NULL, 0),
		('013', 'HD013', '2025-04-20', '2025-05-05', NULL, 0), 
		('014', 'HD014', '2024-10-01', '2024-10-10', 2400000 / 8, 1), 
		('015', 'HD015', '2025-04-22', '2025-05-07', NULL, 0);
		
INSERT INTO tPTTThuePhong (MaPT, MaNV, MaSV, NgayLapPhieu, TongTien, TrangThai)
VALUES 
		('001', 'KT002', '230870261', '2024-11-16', 2400000 / 8, 1), 
		('002', 'KT002', '233212163', '2024-12-26', 2400000 / 8, 1),
		('003', 'KT002', '241765996', '2024-10-11', 1600000 / 4, 1), 
		('004', 'KT002', '203581209', '2025-01-21', 2400000 / 8, 0), 
		('005', 'KT002', '240846478', '2025-03-11', 1600000 / 4, 0),
		('009', 'KT002', '213129180', '2024-09-21', 2400000 / 8, 1), 
		('010', 'KT002', '212126824', '2024-12-21', 1600000 / 4, 1), 
		('011', 'KT002', '231698227', '2025-01-31', 1600000 / 4, 0),
		('014', 'KT002', '200920608', '2024-10-10', 2400000 / 8, 1); 

INSERT INTO tDienNuoc (MaCongTo, ThangGhiSo, MaPhong, ChiSoDau, ChiSoCuoi)
VALUES
		('E001', '2025-04-01', 'A1P01', 0, 0), ('W001', '2025-04-01', 'A1P01', 0, 0),
		('E002', '2025-04-01', 'A1P02', 0, 0), ('W002', '2025-04-01', 'A1P02', 0, 0),
		('E003', '2025-04-01', 'A1P03', 0, 0), ('W003', '2025-04-01', 'A1P03', 0, 0),
		('E004', '2025-04-01', 'A2P01', 0, 0), ('W004', '2025-04-01', 'A2P01', 0, 0),
		('E005', '2025-04-01', 'A2P02', 0, 0), ('W005', '2025-04-01', 'A2P02', 0, 0),
		('E006', '2024-09-01', 'A2P06', 100, 115), ('W006', '2024-09-01', 'A2P06', 50, 59),
		('E006', '2024-10-01', 'A2P06', 115, 132), ('W006', '2024-10-01', 'A2P06', 59, 69),
		('E006', '2024-11-01', 'A2P06', 132, 150), ('W006', '2024-11-01', 'A2P06', 69, 80),
		('E006', '2025-01-01', 'A2P06', 150, 168), ('W006', '2025-01-01', 'A2P06', 80, 92),
		('E007', '2025-04-01', 'A2P07', 0, 0), ('W007', '2025-04-01', 'A2P07', 0, 0),
		('E008', '2025-04-01', 'A2P11', 0, 0), ('W008', '2025-04-01', 'A2P11', 0, 0),
		('E009', '2025-04-01', 'A2P12', 0, 0), ('W009', '2025-04-01', 'A2P12', 0, 0),
		('E010', '2025-04-01', 'A3P01', 0, 0), ('W010', '2025-04-01', 'A3P01', 0, 0),
		('E011', '2025-04-01', 'A3P02', 0, 0), ('W011', '2025-04-01', 'A3P02', 0, 0),
		('E012', '2025-04-01', 'A3P03', 0, 0), ('W012', '2025-04-01', 'A3P03', 0, 0),
		('E013', '2025-04-01', 'A3P07', 0, 0), ('W013', '2025-04-01', 'A3P07', 0, 0),
		('E014', '2025-04-01', 'A3P08', 0, 0), ('W014', '2025-04-01', 'A3P08', 0, 0),
		('E015', '2025-04-01', 'A3P09', 0, 0), ('W015', '2025-04-01', 'A3P09', 0, 0);

INSERT INTO tPTTDienNuoc (MaPT, MaNV, MaPhong, NgayLapPhieu, TongTien, TrangThai)
VALUES 
		('001', 'KT003', 'A2P06', '2024-09-03', 59500, '1'),
		('002', 'KT003', 'A2P06', '2024-10-03', 85500, '1'),
		('003', 'KT003', 'A2P06', '2024-11-05', 103000, '0'),
		('004', 'KT003', 'A2P06', '2025-01-05', 113600, '0');

INSERT INTO tPBTDienNuoc (MaPB, NgayLapPhieu, HanThanhToan, TongTien, TrangThai)
VALUES 
		('001', '2024-09-02', '2024-09-10', 59500, '0'),
		('002', '2024-10-02', '2024-10-10', 85500, '0'),
		('003', '2024-11-02', '2024-11-10', 103000, '0'),
		('004', '2025-01-02', '2025-01-10', 113600, '0');

INSERT INTO tCTPBTDienNuoc (MaPB, MaCongTo, ThangGhiSo, ChiSo, DonGia, ThanhTien)
VALUES 
		('001', 'E006', '2024-09-01', 15, 3000, 45000),
		('001', 'W006', '2024-09-01', 9, 7000, 14500),
		('002', 'E006', '2024-10-01', 17, 3000, 51000),
		('002', 'W006', '2024-10-01', 10, 7000, 7000),
		('003', 'E006', '2024-11-01', 18, 3000, 54000),
		('003', 'W006', '2024-11-01', 11, 7000, 77000),
		('004', 'E006', '2025-01-01', 18, 3000, 54000),
		('004', 'W006', '2025-01-01', 12, 7000, 59600);


