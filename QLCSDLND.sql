use QLND
go
create procedure UpdateDonViHanhChinhHuyen(
@Ma nvarchar(10)
, @TenHuyen nvarchar(20)
, @Action int
)
As begin 
	If @Action = -1 Begin 
		Delete from DonViHanhChinhHuyen where Ma = @Ma 
	End
	If @Action = 0 Begin 
		Update DonViHanhChinhHuyen SET
		Ma= @Ma,
		TenHuyen = @TenHuyen
		where Ma = @Ma	
	End
	If @Action = 1 Begin 
		Insert into DonViHanhChinhHuyen (Ma,TenHuyen) values (@Ma,@TenHuyen)
	End
end
go
create procedure UpdateDonViHanhChinhXa(
@Ma nvarchar(10)
, @MaHuyen nvarchar(10)
, @TenXa nvarchar(20)
, @Action int
)
As begin 
	If @Action = -1 Begin 
		Delete from DonViHanhChinhXa where Ma = @Ma 
	End
	If @Action = 0 Begin 
		Update DonViHanhChinhXa SET
		Ma= @Ma,
		MaHuyen= @MaHuyen,
		TenXa = @TenXa
		where Ma = @Ma
	End
	If @Action = 1 Begin
		Insert into DonViHanhChinhXa (Ma,MaHuyen,TenXa) values (@Ma,@MaHuyen,@TenXa)
	End
end
go
create procedure UpdateQuyen(
@Ma nvarchar(5)
, @MoTa nvarchar(30)
, @Action int
)
As begin 
	If @Action = -1 Begin 
		Delete from Quyen where Ma = @Ma 
	End
	If @Action = 0 Begin 
		Update Quyen SET 
		Ma= @Ma,
		MoTa = @MoTa
		where Ma = @Ma
	End
	If @Action = 1 Begin 
		Insert into Quyen (Ma,MoTa) values (@Ma,@MoTa)
	End
end 
go
create procedure UpdateThongTinCaNhan(
@ID nvarchar(12)
, @HoTen nvarchar(30)
, @MaQuyen nvarchar(5)
, @MaDiaChi nvarchar(10)
, @Action int
)As begin 
	If @Action = -1 Begin 
		Delete from ThongTinCaNhan where ID = @ID 
	End
	If @Action = 0 Begin 
		Update ThongTinCaNhan SET 
		ID= @ID,
		HoTen= @HoTen,
		MaQuyen= @MaQuyen,
		MaDiaChi = @MaDiaChi
		where ID = @ID
	End
	If @Action = 1 Begin 
		Insert into ThongTinCaNhan (ID,HoTen,MaQuyen,MaDiaChi) values (@ID,@HoTen,@MaQuyen,@MaDiaChi)
	End
end 
go
create procedure UpdateTaiKhoan(
@ID nvarchar(12)
, @password nvarchar(20)
, @state bit
, @Action int
)As begin 
	If @Action = -1 Begin 
		Delete from TaiKhoan where ID = @ID 
	End
	If @Action = 0 Begin 
		Update TaiKhoan SET 
		ID= @ID,
		password= @password,
		state = @state
		where ID = @ID
	End
	If @Action = 1 Begin 
		Insert into TaiKhoan (ID,password,state) values (@ID,@password,@state)
	End
end 
go
create procedure UpdateLichSuTruyCap(
@ID nvarchar(12)
, @ThoiGian datetime
, @Action int
)As begin 
	If @Action = -1 Begin 
		Delete from LichSuTruyCap where ID = @ID 
	End
	If @Action = 0 Begin 
		Update LichSuTruyCap SET
		ID= @ID,
		ThoiGian = @ThoiGian
		where ID = @ID	
	End
	If @Action = 1 Begin 
		Insert into LichSuTruyCap (ID,ThoiGian) values (@ID,@ThoiGian)
	End
end 
go
create procedure UpdateLichSuTacDong(
@ID nvarchar(12)
, @TacDong nvarchar(20)
, @ThoiGian datetime
, @Action int
)As begin 
	If @Action = -1 Begin 
		Delete from LichSuTacDong where ID = @ID
	End
	If @Action = 0 Begin 
		Update LichSuTacDong SET
		ID= @ID,
		TacDong= @TacDong,
		ThoiGian = @ThoiGian
		where ID = @ID
	End
	If @Action = 1 Begin
		Insert into LichSuTacDong (ID,TacDong,ThoiGian) values (@ID,@TacDong,@ThoiGian)
	End
end 
go
create procedure UpdateNhom(
@Ma nvarchar(10)
, @Ten nvarchar(20)
, @MaQuyen nvarchar(5)
, @TrangThai bit
, @Action int
)As begin 
	If @Action = -1 Begin 
		Delete from Nhom where Ma = @Ma 
	End
	If @Action = 0 Begin 
		Update Nhom SET
		Ma= @Ma,
		Ten= @Ten,
		MaQuyen= @MaQuyen,
		TrangThai = @TrangThai
		where Ma = @Ma
	End
	If @Action = 1 Begin
		Insert into Nhom (Ma,Ten,MaQuyen,TrangThai) values (@Ma,@Ten,@MaQuyen,@TrangThai)
	End
end 
go
create procedure UpdateNhomNguoiDung(
@ID nvarchar(12)
, @MaNhom nvarchar(10)
, @Action int
)As begin 
	If @Action = -1 Begin 
		Delete from NhomNguoiDung where ID = @ID 
	End
	If @Action = 0 Begin 
		Update NhomNguoiDung SET 
		ID= @ID,
		MaNhom= @MaNhom
		where ID = @ID
	End
	If @Action = 1 Begin 
		Insert into NhomNguoiDung (ID,MaNhom) values (@ID,@MaNhom)
	End
end
go


