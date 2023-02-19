use master
go
drop database QLChanNuoi
go
create database QLChanNuoi
go
use QLChanNuoi
go
create table ThongTinCaNhan
(ID nvarchar(12) primary key
, HoTen nvarchar(30) 
, ChucVu nvarchar(15)
, TrangThai nvarchar(20)
)
create table ToChucCapGiayChungNhan
(Ten nvarchar(30) primary key
, DiaChi nvarchar(50)
, SDT nvarchar(10)
, TrangThai varchar(20)
)
create table GiayChungNhan
(Ma nvarchar(10) primary key
, NoiCap nvarchar(30) foreign key references ToChucCapGiayChungNhan(Ten)
, ChiTieu nvarchar(20)
)
create table CoSoChanNuoi
(Ten nvarchar(30) primary key
, DiaChi nvarchar(50)
, SDT nvarchar(10)
, MaChungNhan nvarchar(10) foreign key references GiayChungNhan(Ma)
, TrangThai nvarchar(20)
)
create table ToChucCoSo
(Ten nvarchar(30) primary key
, VaiTro nvarchar(30)
)
create table QuanLyNhanSu
(TenCoSo nvarchar(30) foreign key references CoSoChanNuoi(Ten)
, IDCaNhan nvarchar(12) foreign key references ThongTinCaNhan(ID)
, TenToChuc nvarchar(30) foreign key references ToChucCoSo(Ten)
)
create table DKChanNuoi
(TenCoSo nvarchar(30) foreign key references CoSoChanNuoi(Ten)
, MatDoVatNuoi int
, NguonNuoc bit
, NguonThucAn bit
, XuLyChatThai bit
)
create table CoSoCheBien
(Ten nvarchar(30) primary key
, DiaChi nvarchar(50)
, SDT nvarchar(10)
, MaChungNhan nvarchar(10) foreign key references GiayChungNhan(Ma)
, TrangThai nvarchar(20)
)
create table SanPhamCheBien
(TenCoSo nvarchar(30) foreign key references CoSoCheBien(Ten)
, TenSanPham nvarchar(30)
, NguyenLieu nvarchar(50)
, PhuongThuc nvarchar(30)
)
