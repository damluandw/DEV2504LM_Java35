select * from [dbo].[SinhVien]
select * from  [dbo].[Khoa]
select * from [dbo].[Ketqua]

select SV.MaSV, SV.HoSV + ' ' +SV.TenSV AS 'Họ và tên',SV.MaKH  from [dbo].[SinhVien] SV
--INNER JOIN [dbo].[Khoa] K ON SV.MaKH =K.MaKH

select * from MonHoc where TenMH = N'Cơ sở dữ liệu'
select * from [dbo].[Ketqua] WHERE MaMH ='01'

select SV.MaSV, SV.HoSV + ' ' +SV.TenSV AS 'Họ và tên',SV.MaKH  from [dbo].[SinhVien] SV
WHERE SV.MaSV NOT IN (select MaSV from [dbo].[Ketqua] 
WHERE MaMH IN (select MaMH from MonHoc where TenMH = N'Cơ sở dữ liệu'))

DECLARE @MaMH VARCHAR(10)
select @MaMH = MaMH from MonHoc where TenMH = N'Cơ sở dữ liệu'
--SET @MaMH = (select MaMH from MonHoc where TenMH = N'Cơ sở dữ liệu')
--SELECT @MaMH
select SV.MaSV, SV.HoSV + ' ' +SV.TenSV AS 'Họ và tên',SV.MaKH  from [dbo].[SinhVien] SV
WHERE SV.MaSV NOT IN (select MaSV from [dbo].[Ketqua] WHERE MaMH =@MaMH )
