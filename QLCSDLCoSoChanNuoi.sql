use QLChanNuoi
go
create procedure UpdateThongTinCaNhan(
@ID nvarchar(12)
, @HoTen nvarchar(30)
, @ChucVu nvarchar(15)
, @TrangThai nvarchar(20)
, @Action int
)As begin 
	If @Action = -1 Begin 
		Delete from ThongTinCaNhan where ID = @ID 
	End
	If @Action = 0 Begin 
		Update ThongTinCaNhan SET
		ID = @ID,
		HoTen = @HoTen,
		ChucVu = @ChucVu,
		TrangThai = @TrangThai
		where ID = @ID
	End
	If @Action = 1 Begin 
		Insert into ThongTinCaNhan (ID,HoTen,ChucVu,TrangThai) values (@ID,@HoTen,@ChucVu,@TrangThai)
	End
end
go
create procedure UpdateToChucCapGiayChungNhan(
@Ten nvarchar(30)
, @DiaChi nvarchar(50)
, @SDT nvarchar(10)
, @TrangThai varchar
, @Action int
)As begin
	If @Action = -1 Begin 
		Delete from ToChucCapGiayChungNhan where Ten = @Ten	
	End
	If @Action = 0 Begin 
		Update ToChucCapGiayChungNhan SET
		Ten = @Ten,
		DiaChi = @DiaChi,
		SDT = @SDT,
		TrangThai = @TrangThai
		where Ten = @Ten
	End
	If @Action = 1 Begin 
		Insert into ToChucCapGiayChungNhan (Ten,DiaChi,SDT,TrangThai) values (@Ten,@DiaChi,@SDT,@TrangThai)
	End
end 
go
create procedure UpdateGiayChungNhan(
@Ma nvarchar(10)
, @NoiCap nvarchar(30)
, @ChiTieu nvarchar(20)
, @Action int
)As begin
	If @Action = -1 Begin
		Delete from GiayChungNhan where Ma = @Ma
	End
	If @Action = 0 Begin
		Update GiayChungNhan SET
		Ma = @Ma,
		NoiCap = @NoiCap,
		ChiTieu = @ChiTieu
		where Ma = @Ma
	End
	If @Action = 1 Begin 
		Insert into GiayChungNhan (Ma,NoiCap,ChiTieu) values (@Ma,@NoiCap,@ChiTieu) 
	End
end 
go
create procedure UpdateCoSoChanNuoi(
@Ten nvarchar(30)
, @DiaChi nvarchar(50)
, @SDT nvarchar(10)
, @MaChungNhan nvarchar(10)
, @TrangThai nvarchar(20)
, @Action int
)As begin
	If @Action = -1 Begin 
		Delete from CoSoChanNuoi where Ten = @Ten
	End
	If @Action = 0 Begin
		Update CoSoChanNuoi SET 
		Ten = @Ten,
		DiaChi = @DiaChi,
		SDT = @SDT,
		MaChungNhan = @MaChungNhan,
		TrangThai = @TrangThai
		where Ten = @Ten
	End
	If @Action = 1 Begin
		Insert into CoSoChanNuoi (Ten,DiaChi,SDT,MaChungNhan,TrangThai) values (@Ten,@DiaChi,@SDT,@MaChungNhan,@TrangThai)
	End
end 
go
create procedure UpdateToChucCoSo(
@Ten nvarchar(30)
, @VaiTro nvarchar(30)
, @Action int
)As begin
	If @Action = -1 Begin
		Delete from ToChucCoSo where Ten = @Ten 
	End
	If @Action = 0 Begin 
		Update ToChucCoSo SET
		Ten = @Ten,
		VaiTro = @VaiTro
		where Ten = @Ten
	End
	If @Action = 1 Begin 
		Insert into ToChucCoSo (Ten,VaiTro) values (@Ten,@VaiTro)
	End
end 
go
create procedure UpdateQuanLyNhanSu(
@TenCoSo nvarchar(30)
, @IDCaNhan nvarchar(12)
, @TenToChuc nvarchar(30)
, @Action int
)As begin
	If @Action = -1 Begin 
		Delete from QuanLyNhanSu where TenCoSo = @TenCoSo
	End
	If @Action = 0 Begin
		Update QuanLyNhanSu SET 
		TenCoSo = @TenCoSo,
		ID = @IDCaNhan,
		TenToChuc = @TenToChuc
		where TenCoSo = @TenCoSo
	End
	If @Action = 1 Begin 
		Insert into QuanLyNhanSu (TenCoSo,ID,TenToChuc) values (@TenCoSo,@IDCaNhan,@TenToChuc)
	End
end 
go
create procedure UpdateDKChanNuoi(
@TenCoSo nvarchar(30)
, @MatDoVatNuoi int
, @NguonNuoc bit
, @NguonThucAn bit
, @XuLyChatThai bit
, @Action int
)As begin
	If @Action = -1 Begin 
		Delete from DKChanNuoi where TenCoSo = @TenCoSo 
	End
	If @Action = 0 Begin 
		Update DKChanNuoi SET 
		TenCoSo = @TenCoSo,
		MatDoVatNuoi = @MatDoVatNuoi,
		NguonNuoc = @NguonNuoc,
		NguonThucAn = @NguonThucAn,
		XuLyChatThai = @XuLyChatThai
		where TenCoSo = @TenCoSo
	End
	If @Action = 1 Begin
		Insert into DKChanNuoi (TenCoSo,MatDoVatNuoi,NguonNuoc,NguonThucAn,XuLyChatThai) 
			values (@TenCoSo,@MatDoVatNuoi,@NguonNuoc,@NguonThucAn,@XuLyChatThai) 
	End
end 
go
create procedure UpdateCoSoCheBien(
@Ten nvarchar(30)
, @DiaChi nvarchar(50)
, @SDT nvarchar(10)
, @MaChungNhan nvarchar(10)
, @TrangThai nvarchar(20)
, @Action int
)As begin
	If @Action = -1 Begin 
		Delete from CoSoCheBien where Ten = @Ten
	End
	If @Action = 0 Begin 
		Update CoSoCheBien SET 
		Ten = @Ten,
		DiaChi = @DiaChi,
		SDT = @SDT,
		MaChungNhan = @MaChungNhan,
		TrangThai = @TrangThai
		where Ten = @Ten
	End
	If @Action = 1 Begin 
		Insert into CoSoCheBien (Ten,DiaChi,SDT,MaChungNhan,TrangThai) values (@Ten,@DiaChi,@SDT,@MaChungNhan,@TrangThai)
	End
end 
go
create procedure UpdateSanPhamCheBien(
@TenCoSo nvarchar(30)
, @TenSanPham nvarchar(30)
, @NguyenLieu nvarchar(50)
, @PhuongThuc nvarchar(30)
, @Action int
)As begin
	If @Action = -1 Begin 
		Delete from SanPhamCheBien where TenCoSo = @TenCoSo
	End
	If @Action = 0 Begin 
		Update SanPhamCheBien SET 
		TenCoSo = @TenCoSo,
		TenSanPham = @TenSanPham,
		NguyenLieu = @NguyenLieu,
		PhuongThuc = @PhuongThuc
		where TenCoSo = @TenCoSo
	End
	If @Action = 1 Begin 
		Insert into SanPhamCheBien (TenCoSo,TenSanPham,NguyenLieu,PhuongThuc) 
			values (@TenCoSo,@TenSanPham,@NguyenLieu,@PhuongThuc) 
	End
end 
go