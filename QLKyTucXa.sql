-- Tạo một Database QLKyTucXa mới
CREATE DATABASE QLKyTucXa

-- Sử dụng Database QLKyTucXa
USE QLKyTucXa

-- Tạo bảng tSinhVien
CREATE TABLE tSinhVien (
    MaSV NVARCHAR(10) PRIMARY KEY,  
    HoTen NVARCHAR(100) NOT NULL,     
    NgaySinh DATE,                   
    GioiTinh BIT,                   
    SDT VARCHAR(10)                  
)

-- Tạo bảng tNhanVien
CREATE TABLE tNhanVien (
    MaNV NVARCHAR(10) PRIMARY KEY,    
    HoTen NVARCHAR(100) NOT NULL,    
    NgaySinh DATE,                    
    GioiTinh BIT,                   
    ChucVu NVARCHAR(100)           
)

-- Tạo bảng tPTTThuePhong
CREATE TABLE tPTTThuePhong (
    MaPT NVARCHAR(10) PRIMARY KEY,				
    MaNV NVARCHAR(10) NOT NULL,				
    MASV NVARCHAR(10) NOT NULL,				
    NgayLapPhieu DATE,							
    TongTien DECIMAL(18, 2),					
    TrangThai BIT DEFAULT 0,					

    -- Khóa ngoại
    FOREIGN KEY (MaNV) REFERENCES tNhanVien(MaNV),   
    FOREIGN KEY (MASV) REFERENCES tSinhVien(MaSV)   
)

-- Tạo bảng tLoaiPhong
CREATE TABLE tLoaiPhong (
    MaLoaiPhong NVARCHAR(10) PRIMARY KEY,		
    TenLoaiPhong NVARCHAR(100) NOT NULL,		
    Nam_Nu BIT,									
    SoNguoi INT									
)

-- Tạo bảng tPhong
CREATE TABLE tPhong (
    MaPhong NVARCHAR(10) PRIMARY KEY,		
    TenPhong NVARCHAR(100) NOT NULL,			
    MaLoaiPhong NVARCHAR(10),					

    -- Khóa ngoại
    FOREIGN KEY (MaLoaiPhong) REFERENCES tLoaiPhong(MaLoaiPhong)  
)

-- Tạo bảng tHopDong
CREATE TABLE tHopDong (
    MaHD NVARCHAR(10) PRIMARY KEY,        
    MaNV NVARCHAR(10) NOT NULL,          
    MaSV NVARCHAR(10) NOT NULL,         
    MaPhong NVARCHAR(10) NOT NULL,       
    NgayBatDau DATE,                     
    NgayKetThuc DATE,                    

    -- Khóa ngoại
    FOREIGN KEY (MaNV) REFERENCES tNhanVien(MaNV),  
    FOREIGN KEY (MaSV) REFERENCES tSinhVien(MaSV),  
    FOREIGN KEY (MaPhong) REFERENCES tPhong(MaPhong) 
)

-- Tạo bảng tPBTThuePhong
CREATE TABLE tPBTThuePhong (
    MaPB NVARCHAR(10) PRIMARY KEY,        
    MaHD NVARCHAR(10) NOT NULL,           
    TongTien DECIMAL(18, 2) NOT NULL,   
    NgayLapPhieu DATE NOT NULL,          
    HanThanhToan DATE NOT NULL,        
    TrangThai BIT,                       

    -- Khóa ngoại
    FOREIGN KEY (MaHD) REFERENCES tHopDong(MaHD)  
)

-- Tạo bảng tDienNuoc
CREATE TABLE tDienNuoc (
    MaCongTo NVARCHAR(10),               
    ThangGhiSo DATE,                     
    MaPhong NVARCHAR(10),              
    ChiSoDau INT,                        
    ChiSoCuoi INT,                     

    PRIMARY KEY (MaCongTo, ThangGhiSo),   
    FOREIGN KEY (MaPhong) REFERENCES tPhong(MaPhong) 
)

-- Tạo bảng tPTTDienNuoc
CREATE TABLE tPTTDienNuoc (
    MaPT NVARCHAR(10) PRIMARY KEY,       
    MaNV NVARCHAR(10) NOT NULL,          
    MaPhong NVARCHAR(10) NOT NULL,       
    NgayLapPhieu DATE NOT NULL,          
    HanThanhToan DATE NOT NULL,      
    TongTien DECIMAL(18, 2) NOT NULL,     
    TrangThai BIT NOT NULL,            

    -- Khóa ngoại
    FOREIGN KEY (MaNV) REFERENCES tNhanVien(MaNV),   
    FOREIGN KEY (MaPhong) REFERENCES tPhong(MaPhong) 
)

-- Tạo bảng tPBTDienNuoc
CREATE TABLE tPBTDienNuoc (
    MaPT NVARCHAR(10) PRIMARY KEY,        
    NgayLapPhieu DATE NOT NULL,           
    HanThanhToan DATE NOT NULL,          
    TongTien DECIMAL(18, 2) NOT NULL,     
    TrangThai BIT NOT NULL                
)

-- Tạo bảng tCTPBTDienNuoc
CREATE TABLE tCTPBTDienNuoc (
    MaPB NVARCHAR(10),                   
    MaCongTo NVARCHAR(10),               
    ThangGhiSo DATE,                     
    ChiSo INT,                           
    DonGia DECIMAL(18, 2),               
    ThanhTien DECIMAL(18, 2),           

    PRIMARY KEY (MaPB, MaCongTo, ThangGhiSo),  

    FOREIGN KEY (MaPB) REFERENCES tPBTDienNuoc(MaPT),
    FOREIGN KEY (MaCongTo, ThangGhiSo) REFERENCES tDienNuoc(MaCongTo, ThangGhiSo)
);
