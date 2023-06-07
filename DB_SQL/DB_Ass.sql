CREATE DATABASE Java5_Assignment
GO
USE Java5_Assignment
GO
CREATE TABLE Hang(
	id BIGINT IDENTITY(1,1) PRIMARY KEY,
	TenHang NVARCHAR(100) NOT NULL,
	TrangThai INT DEFAULT 0
) 
CREATE TABLE KieuKetNoi(
	id BIGINT IDENTITY(1,1) PRIMARY KEY,
	TenKieu NVARCHAR(100) NOT NULL,
	TrangThai INT DEFAULT 0
)
CREATE TABLE LoaiBanPhim(
	id BIGINT IDENTITY(1,1) PRIMARY KEY,
	TenLoai NVARCHAR(100) NOT NULL,
	TrangThai INT DEFAULT 0
)
CREATE TABLE MauSac(
	id BIGINT IDENTITY(1,1) PRIMARY KEY,
	TenMau NVARCHAR(20) NOT NULL,
	TrangThai INT DEFAULT 0
)
CREATE TABLE KhuyenMai(
	id BIGINT IDENTITY(1,1) PRIMARY KEY,
	TenKhuyenMai NVARCHAR(100) NOT NULL,
	SoTienGiam MONEY,
	TrietKhauGiam FLOAT,
	LoaiGiam BIT NOT NULL,
	TrangThai INT DEFAULT 0
)
CREATE TABLE BanPhim(
	id BIGINT IDENTITY(1,1) PRIMARY KEY,
	TenBanPhim NVARCHAR(100) NOT NULL,
	SoLuong INT DEFAULT 0 NOT NULL,
	DonGia MONEY NOT NULL,
	DenNen BIT NOT NULL,
	Images IMAGE ,
	MaHang BIGINT REFERENCES dbo.Hang(id),
	MaLoai BIGINT REFERENCES dbo.LoaiBanPhim(id),
	MaKieu BigInt REFERENCES  KieuKetNoi(id),
	MaMau BIGINT REFERENCES dbo.MauSac(id),
	MoTa NVARCHAR(MAX) NOT NULL,
	TrangThai INT DEFAULT 0
)

CREATE TABLE NhanVien(
	id BIGINT IDENTITY(1,1) PRIMARY KEY,
	HoTen NVARCHAR(100) NOT NULL,
	GioiTinh BIT NOT NULL,
	NgaySinh DATE NOT NULL,
	DiaChi VARCHAR(max),
	Email VARCHAR(100) NOT NULL,
	Sdt VARCHAR(15),
	[Role] INT DEFAULT 0 NOT NULL ,
	MatKhau VARCHAR(50) DEFAULT '123@a' NOT NULL,
	TrangThai INT DEFAULT 0
)
CREATE TABLE KhachHang (
	id BIGINT IDENTITY(1,1) PRIMARY KEY,
	HoTen NVARCHAR(100) NOT NULL,
	GioiTinh BIT NOT NULL,
	NgaySinh DATE NOT NULL,
	Email VARCHAR(100) NOT NULL,
	Sdt VARCHAR(15),
	DiaChi VARCHAR(max),
	MatKhau VARCHAR(50) DEFAULT '123@a' NOT NULL,
	TrangThai INT DEFAULT 0
)
CREATE TABLE GioHang (
	id BIGINT IDENTITY(1,1) PRIMARY KEY,
	IdNV BIGINT,
	NgayTao DATE NOT NULL,
	NgayThanhToan DATE,
	TenNguoiNhan NVARCHAR(100) NOT NULL,
	DiaChi NVARCHAR(max) NOT NULL,
	Sdt VARCHAR(15),
	TrangThai INT DEFAULT 0 NOT NULL,
)
GO
	ALTER TABLE dbo.GioHang 
ADD FOREIGN KEY (IdKh) REFERENCES dbo.KhachHang(id);
go
	ALTER TABLE dbo.GioHang
ADD FOREIGN KEY (IdNV) REFERENCES dbo.NhanVien(id);
CREATE TABLE GioHangChiTiet(
	IdGioHang BIGINT REFERENCES dbo.GioHang(id) NOT NULL,
	IdBanPhim BIGINT REFERENCES dbo.BanPhim(id) NOT NULL,
	SoLuong INT NOT NULL,
	DonGia MONEY NOT NULL,
	DonGiaKhiGiam MONEY
)
INSERT INTO dbo.MauSac
(
    TenMau,
    TrangThai
)
VALUES
(   N'Đen', -- TenMau - nvarchar(20)
    0    -- TrangThai - int
    ),
	(   N'Trắng', -- TenMau - nvarchar(20)
    0    -- TrangThai - int
    ),
	(   N'Đỏ', -- TenMau - nvarchar(20)
    0    -- TrangThai - int
    ),
	(   N'Vàng', -- TenMau - nvarchar(20)
    0    -- TrangThai - int
    )
INSERT INTO dbo.Hang
(
    TenHang,
    TrangThai
)
VALUES
(   N'Logitech', -- TenHang - nvarchar(100)
    0    -- TrangThai - int
    ),
	(   N'Fuhlen', -- TenHang - nvarchar(100)
    0    -- TrangThai - int
    ),
(   N'Akko', -- TenHang - nvarchar(100)
    0    -- TrangThai - int
    ),
	(   N'Corsair', -- TenHang - nvarchar(100)
    0    -- TrangThai - int
    )
	INSERT INTO dbo.LoaiBanPhim
	(
	    TenLoai,
	    TrangThai
	)
	VALUES
	(   N'Tiêu chuẩn', -- TenKieu - nvarchar(100)
	    0    -- TrangThai - int
	    ),(   N'Cơ', -- TenKieu - nvarchar(100)
	    0    -- TrangThai - int
	    ),
		(   N'Màng', -- TenKieu - nvarchar(100)
	    0    -- TrangThai - int
	    ),
		(   N'Gaming', -- TenKieu - nvarchar(100)
	    0    -- TrangThai - int
	    ),
		(   N'Ergonomic', -- TenKieu - nvarchar(100)
	    0    -- TrangThai - int
	    ),(   N'Chuyên dụng', -- TenKieu - nvarchar(100)
	    0    -- TrangThai - int
	    )
INSERT INTO dbo.KieuKetNoi
(
    TenKieu,
    TrangThai
)
VALUES
(   N'USB', -- TenKieu - nvarchar(100)
    0    -- TrangThai - int
    ),(   N'Bluetooth', -- TenKieu - nvarchar(100)
    0    -- TrangThai - int
    ),(   N'Không dây RF', -- TenKieu - nvarchar(100)
    0    -- TrangThai - int
    ),(   N'Cổng PS/2', -- TenKieu - nvarchar(100)
    0    -- TrangThai - int
    ),(   N'Cảm ứng', -- TenKieu - nvarchar(100)
    0    -- TrangThai - int
    )

	SELECT * FROM dbo.BanPhim
	SELECT * FROM dbo.Hang
	ALTER TABLE dbo.BanPhim ADD MaKhuyenMai BIGINT

	ALTER TABLE dbo.BanPhim
ADD FOREIGN KEY (MaKhuyenMai) REFERENCES dbo.KhuyenMai(id);
ALTER TABLE dbo.GioHang ADD IdKH BIGINT
ALTER TABLE dbo.GioHang ADD TrangThai INT DEFAULT 0


SELECT * FROM dbo.BanPhim
SELECT * FROM dbo.KhachHang
DELETE FROM dbo.KhachHang WHERE id = 6

