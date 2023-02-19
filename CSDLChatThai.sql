use master
go
drop database QLChatThai
go
create database QLChatThai
go
use QLChatThai
go
create table CoSoSanXuat
(Ten nvarchar(50) primary key
, DiaChi nvarchar(50)
, SDT nvarchar(12)
, TrangThai nvarchar(20)
)
create table SanPham
(Ma nvarchar(10) primary key
, Ten nvarchar(30)
, ThanhPham nvarchar(30)
, CongDung nvarchar(50)
, NguonGoc nvarchar(30)
)
create table CoSoKhaoNghiem
(Ten nvarchar(50) primary key
, DiaChi nvarchar(50)
, SDT nvarchar(12)
, TrangThai nvarchar(20)
)
create table QlSanPham
(MaSanPham nvarchar(10) foreign key references SanPham(Ma)
, CoSoSanXuat nvarchar(50) foreign key references CoSoSanXuat(Ten)
, CoSoKhaoNghiem nvarchar(50) foreign key references CoSoKhaoNghiem(Ten)
)

