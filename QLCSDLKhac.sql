use QLKhac
go
create procedure UpdateChiCuc(
@Ten nvarchar(30)
, @DiaChi nvarchar(30)
, @SDT nvarchar(10)
, @TrangThai nvarchar(30)
, @Action int
)As begin
	If @Action = -1 Begin 
		Delete from ChiCuc where Ten = @Ten
	End
	If @Action = 0 Begin 
		Update ChiCuc SET
		Ten = @Ten,
		DiaChi = @DiaChi,
		SDT = @SDT,
		TrangThai = @TrangThai
		where Ten = @Ten
	End
	If @Action = 1 Begin 
		Insert into ChiCuc (Ten,DiaChi,SDT,TrangThai) values (@Ten,@DiaChi,@SDT,@TrangThai) 
	End
end 
go
create procedure UpdateDaiLyBanThuoc(
@Ten nvarchar(30)
, @DiaChi nvarchar(30)
, @SDT nvarchar(10)
, @ChiCuc nvarchar(30)
, @TrangThai nvarchar(20)
, @Action int
)As begin
	If @Action = -1 Begin 
		Delete from DaiLyBanThuoc where Ten = @Ten
	End
	If @Action = 0 Begin 
		Update DaiLyBanThuoc SET 
		Ten = @Ten,
		DiaChi = @DiaChi,
		SDT = @SDT,
		ChiCuc = @ChiCuc,
		TrangThai = @TrangThai
		where Ten = @Ten
	End
	If @Action = 1 Begin 
		Insert into DaiLyBanThuoc (Ten,DiaChi,SDT,ChiCuc,TrangThai) values (@Ten,@DiaChi,@SDT,@ChiCuc,@TrangThai)
	End
end 
go
create procedure UpdateThuocThuY(
@DaiLy nvarchar(30)
, @TenThuoc nvarchar(30)
, @MaThuoc nvarchar(10)
, @DoiTuongSuDung nvarchar(20)
, @Action int
)As begin
	If @Action = -1 Begin 
		Delete from ThuocThuY where DaiLy = @DaiLy
	End
	If @Action = 0 Begin 
		Update ThuocThuY SET
		DaiLy = @DaiLy,
		TenThuoc = @TenThuoc,
		MaThuoc = @MaThuoc,
		DoiTuongSuDung = @DoiTuongSuDung
		where DaiLy = @DaiLy
	End
	If @Action = 1 Begin
		Insert into ThuocThuY (DaiLy,TenThuoc,MaThuoc,DoiTuongSuDung) values (@DaiLy,@TenThuoc,@MaThuoc,@DoiTuongSuDung) 
	End
end
go
create procedure UpdateKhuTamGiuTieuHuy(
@Ten nvarchar(30)
, @DiaChi nvarchar(30)
, @SDT nvarchar(10)
, @ChiCuc nvarchar(30)
, @TrangThai nvarchar(20)
, @Action int
)As begin
	If @Action = -1 Begin 
		Delete from KhuTamGiuTieuHuy where Ten = @Ten
	End
	If @Action = 0 Begin 
		Update KhuTamGiuTieuHuy SET 
		Ten = @Ten,
		DiaChi = @DiaChi,
		SDT = @SDT,
		ChiCuc = @ChiCuc,
		TrangThai = @TrangThai
		where Ten = @Ten	
	End
	If @Action = 1 Begin 
		Insert into KhuTamGiuTieuHuy (Ten,DiaChi,SDT,ChiCuc,TrangThai) values (@Ten,@DiaChi,@SDT,@ChiCuc,@TrangThai)
	End
end
go
create procedure UpdateQLTamGiuTieuHuy(
@TenCoSo nvarchar(30)
, @LoaiVatNuoi nvarchar(30)
, @SoLuong int
, @NguyenNhan nvarchar(30)
, @TrangThai nvarchar(20)
, @ThoiGian datetime
, @Action int
)As begin
	If @Action = -1 Begin
		Delete from QLTamGiuTieuHuy where TenCoSo = @TenCoSo 
	End
	If @Action = 0 Begin 
		Update QLTamGiuTieuHuy SET 
		TenCoSo = @TenCoSo,
		LoaiVatNuoi = @LoaiVatNuoi,
		SoLuong = @SoLuong,
		NguyenNhan = @NguyenNhan,
		TrangThai = @TrangThai,
		ThoiGian = @ThoiGian
		where TenCoSo = @TenCoSo
	End
	If @Action = 1 Begin 
		Insert into QLTamGiuTieuHuy (TenCoSo,LoaiVatNuoi,SoLuong,NguyenNhan,TrangThai,ThoiGian) 
			values (@TenCoSo,@LoaiVatNuoi,@SoLuong,@NguyenNhan,@TrangThai,@ThoiGian) 
	End
end 
go
create procedure UpdateKhuGietMo(
@Ten nvarchar(30)
, @DiaChi nvarchar(30)
, @SDT nvarchar(10)
, @ChiCuc nvarchar(30)
, @TrangThai nvarchar(20)
, @Action int
)As begin
	If @Action = -1 Begin 
		Delete from KhuGietMo where Ten = @Ten 
	End
	If @Action = 0 Begin 
		Update KhuGietMo SET 
		Ten = @Ten,
		DiaChi = @DiaChi,
		SDT = @SDT,
		ChiCuc = @ChiCuc,
		TrangThai = @TrangThai
		where Ten = @Ten
	End
	If @Action = 1 Begin 
		Insert into KhuGietMo (Ten,DiaChi,SDT,ChiCuc,TrangThai) values (@Ten,@DiaChi,@SDT,@ChiCuc,@TrangThai)
	End
end 
go
create procedure UpdateQLGietMo(
@TenCoSo nvarchar(30)
, @LoaiVatNuoi nvarchar(30)
, @SoLuong int
, @ThoiGian datetime
, @Action int
)As begin
	If @Action = -1 Begin
		Delete from QLGietMo where TenCoSo = @TenCoSo 
	End
	If @Action = 0 Begin 
		Update QLGietMo SET 
		TenCoSo = @TenCoSo,
		LoaiVatNuoi = @LoaiVatNuoi,
		SoLuong = @SoLuong,
		ThoiGian = @ThoiGian
		where TenCoSo = @TenCoSo
	End
	If @Action = 1 Begin 
		Insert into QLGietMo (TenCoSo,LoaiVatNuoi,SoLuong,ThoiGian) values (@TenCoSo,@LoaiVatNuoi,@SoLuong,@ThoiGian) 
	End
end
go
