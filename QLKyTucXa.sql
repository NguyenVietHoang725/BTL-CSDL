-- Tạo một Database QLKyTucXa mới
CREATE DATABASE QLKyTucXa

-- Sử dụng Database QLKyTucXa
USE QLKyTucXa

-- Tạo bảng tSinhVien
CREATE TABLE tSinhVien (
    MaSV NVARCHAR(10) PRIMARY KEY,    -- 10 ký tự, VD: 231230791, là mã sinh viên (khóa chính)
    HoTen NVARCHAR(100) NOT NULL,     -- Họ tên sinh viên, không được phép NULL
    NgaySinh DATE,                    -- Ngày sinh sinh viên
    GioiTinh BIT,                     -- 0 = Nữ ; 1 = Nam, lưu trữ giới tính dưới dạng bit
    SDT VARCHAR(10)                   -- Số điện thoại sinh viên, sử dụng VARCHAR để linh động hơn CHAR
)

-- Tạo bảng tNhanVien
CREATE TABLE tNhanVien (
    MaNV NVARCHAR(10) PRIMARY KEY,    -- 10 ký tự, VD: NV001, là mã nhân viên (khóa chính)
    HoTen NVARCHAR(100) NOT NULL,     -- Họ tên nhân viên, không được phép NULL
    NgaySinh DATE,                    -- Ngày sinh nhân viên
    GioiTinh BIT,                     -- 0 = Nữ ; 1 = Nam, lưu trữ giới tính dưới dạng bit
    ChucVu NVARCHAR(100)              -- Chức vụ của nhân viên
)

-- Tạo bảng tPTTThuePhong
CREATE TABLE tPTTThuePhong (
    MaPT NVARCHAR(10) PRIMARY KEY,    -- Mã phiếu thanh toán thuê phòng (khóa chính)
    MaNV NVARCHAR(10) NOT NULL,       -- Mã nhân viên lập phiếu
    MASV NVARCHAR(10) NOT NULL,       -- Mã sinh viên thuê phòng
    NgayLapPhieu DATE,                -- Ngày lập phiếu thanh toán
    TongTien DECIMAL(18, 2),          -- Tổng tiền thanh toán, định dạng số thực với 2 chữ số thập phân
    TrangThai BIT DEFAULT 0,          -- Trạng thái thanh toán: 0 = chưa thanh toán, 1 = đã thanh toán

    -- Khóa ngoại
    FOREIGN KEY (MaNV) REFERENCES tNhanVien(MaNV),   -- Liên kết đến bảng tNhanVien
    FOREIGN KEY (MASV) REFERENCES tSinhVien(MaSV)    -- Liên kết đến bảng tSinhVien
)

-- Tạo bảng tLoaiPhong
CREATE TABLE tLoaiPhong (
    MaLoaiPhong NVARCHAR(10) PRIMARY KEY,  -- Mã loại phòng (khóa chính)
    TenLoaiPhong NVARCHAR(100) NOT NULL,   -- Tên loại phòng
    Nam_Nu BIT,                            -- 0 = Nữ ; 1 = Nam, chỉ định loại phòng theo giới tính
    SoNguoi INT                            -- Số người tối đa trong phòng
)

-- Tạo bảng tPhong
CREATE TABLE tPhong (
    MaPhong NVARCHAR(10) PRIMARY KEY,      -- Mã phòng (khóa chính)
    TenPhong NVARCHAR(100) NOT NULL,      -- Tên phòng
    MaLoaiPhong NVARCHAR(10),             -- Mã loại phòng, liên kết với bảng tLoaiPhong

    -- Khóa ngoại
    FOREIGN KEY (MaLoaiPhong) REFERENCES tLoaiPhong(MaLoaiPhong)  -- Liên kết đến bảng tLoaiPhong
)

-- Tạo bảng tHopDong
CREATE TABLE tHopDong (
    MaHD NVARCHAR(10) PRIMARY KEY,        -- Mã hợp đồng (khóa chính)
    MaNV NVARCHAR(10) NOT NULL,           -- Mã nhân viên lập hợp đồng
    MaSV NVARCHAR(10) NOT NULL,           -- Mã sinh viên ký hợp đồng
    MaPhong NVARCHAR(10) NOT NULL,        -- Mã phòng thuê
    NgayBatDau DATE,                      -- Ngày bắt đầu hợp đồng
    NgayKetThuc DATE,                     -- Ngày kết thúc hợp đồng

    -- Khóa ngoại
    FOREIGN KEY (MaNV) REFERENCES tNhanVien(MaNV),   -- Liên kết đến bảng tNhanVien
    FOREIGN KEY (MaSV) REFERENCES tSinhVien(MaSV),   -- Liên kết đến bảng tSinhVien
    FOREIGN KEY (MaPhong) REFERENCES tPhong(MaPhong) -- Liên kết đến bảng tPhong
)

-- Tạo bảng tPBTThuePhong
CREATE TABLE tPBTThuePhong (
    MaPB NVARCHAR(10) PRIMARY KEY,        -- Mã phiếu thanh toán thuê phòng (khóa chính)
    MaHD NVARCHAR(10) NOT NULL,           -- Mã hợp đồng liên kết với hợp đồng thuê
    TongTien DECIMAL(18, 2) NOT NULL,     -- Tổng tiền thanh toán cho hợp đồng
    NgayLapPhieu DATE NOT NULL,           -- Ngày lập phiếu thanh toán
    HanThanhToan DATE NOT NULL,           -- Ngày hết hạn thanh toán
    TrangThai BIT,                        -- Trạng thái thanh toán: 0 = chưa thanh toán, 1 = đã thanh toán

    -- Khóa ngoại
    FOREIGN KEY (MaHD) REFERENCES tHopDong(MaHD)  -- Liên kết đến bảng tHopDong
)

-- Tạo bảng tDienNuoc
CREATE TABLE tDienNuoc (
    MaCongTo NVARCHAR(10),                -- Mã công tơ
    ThangGhiSo DATE,                      -- Tháng ghi số điện, nước
    MaPhong NVARCHAR(10),                 -- Mã phòng liên kết với bảng tPhong
    ChiSoDau INT,                         -- Chỉ số công tơ đầu kỳ
    ChiSoCuoi INT,                        -- Chỉ số công tơ cuối kỳ

    PRIMARY KEY (MaCongTo, ThangGhiSo),   -- Khóa chính kết hợp (Mã công tơ + Tháng ghi số)
    FOREIGN KEY (MaPhong) REFERENCES tPhong(MaPhong) -- Liên kết đến bảng tPhong
)

-- Tạo bảng tPTTDienNuoc
CREATE TABLE tPTTDienNuoc (
    MaPT NVARCHAR(10) PRIMARY KEY,        -- Mã phiếu thanh toán điện nước (khóa chính)
    MaNV NVARCHAR(10) NOT NULL,           -- Mã nhân viên lập phiếu
    MaPhong NVARCHAR(10) NOT NULL,        -- Mã phòng liên kết với bảng tPhong
    NgayLapPhieu DATE NOT NULL,           -- Ngày lập phiếu
    HanThanhToan DATE NOT NULL,           -- Ngày hết hạn thanh toán
    TongTien DECIMAL(18, 2) NOT NULL,     -- Tổng tiền thanh toán
    TrangThai BIT NOT NULL,               -- Trạng thái thanh toán: 0 = chưa thanh toán, 1 = đã thanh toán

    -- Khóa ngoại
    FOREIGN KEY (MaNV) REFERENCES tNhanVien(MaNV),   -- Liên kết đến bảng tNhanVien
    FOREIGN KEY (MaPhong) REFERENCES tPhong(MaPhong) -- Liên kết đến bảng tPhong
)

-- Tạo bảng tPBTDienNuoc
CREATE TABLE tPBTDienNuoc (
    MaPT NVARCHAR(10) PRIMARY KEY,        -- Mã phiếu thanh toán điện nước (khóa chính)
    NgayLapPhieu DATE NOT NULL,           -- Ngày lập phiếu
    HanThanhToan DATE NOT NULL,           -- Ngày hết hạn thanh toán
    TongTien DECIMAL(18, 2) NOT NULL,     -- Tổng tiền thanh toán
    TrangThai BIT NOT NULL                -- Trạng thái thanh toán: 0 = chưa thanh toán, 1 = đã thanh toán
)

-- Tạo bảng tCTPBTDienNuoc
CREATE TABLE tCTPBTDienNuoc (
    MaPB NVARCHAR(10),                   -- Mã phiếu thanh toán
    MaCongTo NVARCHAR(10),               -- Mã công tơ
    ThangGhiSo DATE,                     -- Tháng ghi số điện nước
    ChiSo INT,                           -- Chỉ số công tơ
    DonGia DECIMAL(18, 2),               -- Đơn giá điện, nước
    ThanhTien DECIMAL(18, 2),            -- Thành tiền (chi phí điện nước)

    PRIMARY KEY (MaPB, MaCongTo, ThangGhiSo),  -- Khóa chính kết hợp
    FOREIGN KEY (MaPB) REFERENCES tPBTDienNuoc(MaPT) -- Liên kết đến bảng tPBTDienNuoc
)
