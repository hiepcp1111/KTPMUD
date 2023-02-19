use master
go
drop database QLND
go
create database QLND
go
use QLND
go
create table DonViHanhChinhHuyen
(Ma nvarchar(10) primary key 
, TenHuyen nvarchar(20)
)
create table DonViHanhChinhXa
(Ma nvarchar(10) primary key
, MaHuyen nvarchar(10) foreign key references DonViHanhChinhHuyen(Ma)
, TenXa nvarchar(20)
)
create table Quyen
(Ma nvarchar(5) primary key
, MoTa nvarchar(30)
)
create table ThongTinCaNhan
(ID nvarchar(12) primary key
, HoTen nvarchar(30)
, MaQuyen nvarchar(5) foreign key references Quyen(Ma)
, MaDiaChi nvarchar(10) foreign key references DonViHanhChinhXa(Ma)
)
create table TaiKhoan
(ID nvarchar(12) foreign key references ThongTinCaNhan(ID)
, password nvarchar(20)
, state bit 
)
create table LichSuTruyCap
(ID nvarchar(12) foreign key references ThongTinCaNhan(ID)
, ThoiGian Datetime
)
create table LichSuTacDong
(ID nvarchar(12) foreign key references ThongTinCaNhan(ID)
, TacDong nvarchar(20)
, ThoiGian Datetime
)

create table Nhom
(Ma nvarchar(10) primary key
, Ten nvarchar(20)
, MaQuyen nvarchar(5) foreign key references Quyen(Ma)
, TrangThai bit
)
create table NhomNguoiDung
(ID nvarchar(12) foreign key references ThongTinCaNhan(ID)
, MaNhom nvarchar(10) foreign key references Nhom(Ma)
)

