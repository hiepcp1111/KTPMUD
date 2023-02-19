use master
go
drop database QLKhac
go
create database QLKhac
go
use QLKhac
go
create table ChiCuc
(Ten nvarchar(30) primary key
, DiaChi nvarchar(30)
, SDT nvarchar(10)
, TrangThai nvarchar(30)
)
create table DaiLyBanThuoc
(Ten nvarchar(30) primary key
, DiaChi nvarchar(30)
, SDT nvarchar(10)
, ChiCuc nvarchar(30) foreign key references ChiCuc(Ten)
, TrangThai nvarchar(20)
)
create table ThuocThuY
(DaiLy nvarchar(30) foreign key references DaiLyBanThuoc(Ten)
, TenThuoc nvarchar(30)
, MaThuoc nvarchar(10)
, DoiTuongSuDung nvarchar(20)
)
create table KhuTamGiuTieuHuy
(Ten nvarchar(30) primary key
, DiaChi nvarchar(30)
, SDT nvarchar(10)
, ChiCuc nvarchar(30) foreign key references ChiCuc(Ten)
, TrangThai nvarchar(20)
)
create table QLTamGiuTieuHuy
(TenCoSo nvarchar(30) foreign key references KhuTamGiuTieuHuy(Ten)
, LoaiVatNuoi nvarchar(30)
, SoLuong int
, NguyenNhan nvarchar(30)
, TrangThai nvarchar(20)
, ThoiGian DateTime
)
create table KhuGietMo
(Ten nvarchar(30) primary key
, DiaChi nvarchar(30)
, SDT nvarchar(10)
, ChiCuc nvarchar(30) foreign key references ChiCuc(Ten)
, TrangThai nvarchar(20)
)
create table QLGietMo
(TenCoSo nvarchar(30) foreign key references KhuGietMo(Ten)
, LoaiVatNuoi nvarchar(30)
, SoLuong int
, ThoiGian DateTime
)
