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


--11
select SV.MaSV, SV.HoSV + ' ' +SV.TenSV AS 'Họ và tên' from [dbo].[SinhVien] SV
select * from [dbo].[MonHoc]
select * from [dbo].[Ketqua]

select TenMH from [dbo].[MonHoc]

select KQ.MaSV, (SELECT SV.HoSV + ' ' +SV.TenSV AS 'Họ và tên' from [dbo].[SinhVien] SV WHERE SV.MaSV =KQ.MaSV ) AS 'Họ và tên'
, MH.TenMH,diemlonnhat AS 'Điểm' from [dbo].[Ketqua] KQ
INNER JOIN (
select MaMH,MAX(Diem) AS diemlonnhat from [dbo].[Ketqua] GROUP BY MaMH
) KQ2 ON KQ2.MaMH = KQ.MaMH AND Diem = diemlonnhat
INNER JOIN [dbo].[MonHoc] MH ON MH.MaMH = KQ.MaMH
------------------------------------------------ 
select MaMH,MAX(Diem) AS diemlonnhat INTO #KQ from [dbo].[Ketqua] GROUP BY MaMH
select * from #KQ

 select KQ.MaSV, KQ.MaMH,diemlonnhat INTO #KQ2  from [dbo].[Ketqua] KQ
INNER JOIN #KQ KQ2 ON KQ2.MaMH = KQ.MaMH AND Diem = diemlonnhat
------------
select KQ.MaSV, SV.HoSV + ' ' +SV.TenSV AS 'Họ và tên', TenMH, KQ.diemlonnhat as N'Điểm' from 
(select KQ.MaSV, KQ.MaMH,diemlonnhat from [dbo].[Ketqua] KQ
INNER JOIN (select MaMH,MAX(Diem) AS diemlonnhat  from [dbo].[Ketqua] GROUP BY MaMH) KQ2 ON KQ2.MaMH = KQ.MaMH AND Diem = diemlonnhat
) KQ
INNER JOIN [SinhVien] SV ON SV.MaSV = KQ.MaSV 
INNER JOIN [dbo].[MonHoc] MH ON MH.MaMH = KQ.MaMH

DROP TABLE #KQ
DROP TABLE #KQ2
