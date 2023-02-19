use QLChatThai
go
create procedure UpdateCoSoSanXuat(
@Ten nvarchar(50)
, @DiaChi nvarchar(50)
, @SDT nvarchar(12)
, @TrangThai nvarchar(20)
, @Action int
)
As begin
	If @Action = -1 Begin 
		Delete from CoSoSanXuat where Ten = @Ten
		End
	If @Action = 0 Begin 
		Update CoSoSanXuat SET 
		Ten= @Ten,
		DiaChi= @DiaChi,
		SDT= @SDT,
		TrangThai = @TrangThai
		where Ten = @Ten
	End
	If @Action = 1 Begin 
		Insert into CoSoSanXuat (Ten,DiaChi,SDT,TrangThai) values (@Ten,@DiaChi,@SDT,@TrangThai)
	End
end
go
create procedure UpdateSanPham(
@Ma nvarchar(10)
, @Ten nvarchar(30)
, @ThanhPham nvarchar(30)
, @CongDung nvarchar(50)
, @NguonGoc nvarchar(30)
, @Action int
)
As begin
	If @Action = -1 Begin 
		Delete from SanPham where Ma = @Ma 
		End
	If @Action = 0 Begin 
		Update SanPham SET 
		Ma= @Ma,
		Ten= @Ten,
		ThanhPham= @ThanhPham,
		CongDung= @CongDung,
		NguonGoc = @NguonGoc
	End
	If @Action = 1 Begin 
		Insert into SanPham (Ma,Ten,ThanhPham,CongDung,NguonGoc) values (@Ma,@Ten,@ThanhPham,@CongDung,@NguonGoc) 
	End
end
go
create procedure UpdateCoSoKhaoNghiem(
@Ten nvarchar(50)
, @DiaChi nvarchar(50)
, @SDT nvarchar(12)
, @TrangThai nvarchar(20)
, @Action int
)
As Begin 
	If @Action = -1 Begin 
		Delete from CoSoKhaoNghiem where Ten = @Ten 
	End
	If @Action = 0 Begin 
		Update CoSoKhaoNghiem SET
		Ten= @Ten,
		DiaChi= @DiaChi,
		SDT= @SDT,
		TrangThai = @TrangThai
		where Ten = @Ten
	End
	If @Action = 1 Begin
		Insert into CoSoKhaoNghiem (Ten,DiaChi,SDT,TrangThai) values (@Ten,@DiaChi,@SDT,@TrangThai)
	End
end 
go
create procedure UpdateQlSanPham(
@MaSanPham nvarchar(10)
, @CoSoSanXuat nvarchar(50)
, @CoSoKhaoNghiem nvarchar(50)
, @Action int
)
As Begin
	If @Action = -1 Begin 
		Delete from QlSanPham where MaSanPham = @MaSanPham 
	End
	If @Action = 0 Begin 
		Update QlSanPham SET 
		MaSanPham= @MaSanPham,
		CoSoSanXuat= @CoSoSanXuat,
		CoSoKhaoNghiem= @CoSoKhaoNghiem
		where MaSanPham = @MaSanPham
	End
	If @Action = 1 Begin 
		Insert into QlSanPham (MaSanPham,CoSoSanXuat,CoSoKhaoNghiem) values (@MaSanPham,@CoSoSanXuat,@CoSoKhaoNghiem)
	End
end
go
