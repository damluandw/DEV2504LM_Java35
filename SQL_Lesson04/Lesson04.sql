-- SELECT <bổ từ TOP,PERCENT,..> <select list - các cột>
-- FROM <Tên_bảng_1>
-- INNER/LEFT/RIGHT/FULL JOIN  <Tên_bảng_2>  ON <Tên_bảng_1>.<tên_cột> = <Tên_bảng_2>.<tên_cột> ... ///AND  <Tên_bảng_1>.<tên_cột> = <Tên_bảng_2>.<tên_cột>
-- WHERE <mệnh_đề_điều_kiện_1> AND/OR <mệnh_đề_điều_kiện_2> ...
-- GROUP BY <select list của group by - các cột>
-- HAVING <mệnh_đề_điều_kiện_1> AND/OR <mệnh_đề_điều_kiện_2> ...
-- ORDER BY <select list - các cột> ASC/DESC

-- subquery
--  truy vấn sử dụng tham số truy vấn

--Bài 2.8
select *   from [dbo].[SinhVien]
select *   from [dbo].[Ketqua]
select HoSV + ' ' + TenSV AS N'Họ và tên',MaKH AS N'Mã khoa'   from [dbo].[SinhVien]
select * from [dbo].[MonHoc]
select *, IIF(diem>8,N'Giỏi',IIF(diem>=6, N'Khá',N'Trung bình')) AS N'Loại' from [dbo].[Ketqua]

select HoSV + ' ' + TenSV AS N'Họ và tên',MaKH AS N'Mã khoa',MH.TenMH , KQ.Diem,
IIF(diem>8,N'Giỏi',IIF(diem>=6, N'Khá',N'Trung bình')) AS N'Loại'
from [dbo].[SinhVien] SV
INNER JOIN [dbo].[Ketqua] KQ ON SV.MaSV = KQ.MaSV
INNER JOIN [dbo].[MonHoc] MH ON KQ.MaMH = MH.MaMH
ORDER BY TenSV,HoSV ASC, Diem DESC

-- Bài 6.5: 

SELECT * FROM SinhVien SV
INNER JOIN Khoa KH ON SV.MaKH= KH.MaKH
WHERE TenKH = N'Tin học'

SELECT * FROM SinhVien WHERE MaKH = (SELECT MaKH FROM Khoa WHERE TenKH = N'Tin học')
SELECT * FROM Ketqua WHERE MaMH ='09'

DECLARE @tenKhoa nvarchar(50),
		@maMon nvarchar(10)

SET @tenKhoa = N'Tin học'
SET @maMon = '06'
INSERT INTO Ketqua (MaSV, MaMH, Diem)
SELECT MaSV,@maMon,7 FROM SinhVien WHERE MaKH = (SELECT MaKH FROM Khoa WHERE TenKH = @tenKhoa)
AND MaSV NOT IN (SELECT MaSV FROM Ketqua WHERE MaMH = @maMon) --!='A01'

select * from Ketqua



--Bài 3.22:
Select * from [dbo].[MonHoc]
Select * from [dbo].[Ketqua] 

Select MaMH, COUNT(*) AS SL_Truot INTO #SVTruot from [dbo].[Ketqua]  WHERE Diem < 5 GROUP BY MaMH
select * from #SVTruot
Select MaMH, COUNT(*) AS SL_Qua INTO #SVQua from [dbo].[Ketqua]  WHERE Diem >= 5 GROUP BY MaMH
select * from #SVQua

SELECT ISNULL(A.MaMH,B.MaMH) AS MaMH,ISNULL(SL_Qua,0) AS SL_Qua,ISNULL(SL_Truot,0) AS SL_Truot
		INTO #ThongKe
		FROM #SVTruot A
		FULL JOIN #SVQua B ON A.MaMH = B.MaMH
select * from #ThongKe
Select MH.MaMH, MH.TenMH, T.SL_Qua, T.SL_Truot from [dbo].[MonHoc] MH
INNER JOIN #ThongKe T ON  T.MaMH = MH.MaMH

DROP TABLE #SVTruot
DROP TABLE #SVQua
DROP TABLE #ThongKe

-- Bài 4.3
DECLARE @TenMon nvarchar(50)
SET @TenMon = N'Tiếng Anh cơ bản'
Select KQ.MaSV, KH.MaKH ,MH.TenMH, KQ.Diem   from [dbo].[Ketqua] KQ
INNER JOIN [dbo].[SinhVien] SV ON KQ.MaSV = SV.MaSV
INNER JOIN [dbo].[Khoa] KH ON SV.MaKH = KH.MaKH
INNER JOIN [dbo].[MonHoc] MH ON MH.MaMH = KQ.MaMH
WHERE MH.TenMH = @TenMon


-- Bài 5.11
SELECT MaSV, HoSV + ' ' + TenSV AS N'Họ và tên'  FROM [dbo].[SinhVien]
SELECT  * FROM  MonHoc
SELECT  * FROM  Ketqua

SELECT  KQ.MaSV,HoSV + ' ' + TenSV AS N'Họ và tên',MH.TenMH, KQ.Diem FROM  Ketqua KQ
INNER JOIN 
(SELECT MaMH, MAX(Diem) AS Diem FROM  Ketqua GROUP BY MaMH) KQM ON KQ.MaMH = KQM.MaMH AND KQ.Diem = KQM.Diem
INNER JOIN [dbo].[SinhVien] SV ON KQ.MaSV = SV.MaSV
INNER JOIN MonHoc MH ON MH.MaMH = KQ.MaMH


-- Bài 3.25


select SV.MaSV,HoSV, TenSV, MaKH from SinhVien SV
INNER JOIN 
(select MaSV, count(*) AS Dem from [dbo].[Ketqua] WHERE Diem <5 GROUP BY MaSV HAVING count(*) >=2) A ON A.MaSV = SV.MaSV

select SV.MaSV,HoSV, TenSV, MaKH from SinhVien SV 
	WHERE MaSV IN (select MaSV AS Dem from [dbo].[Ketqua] WHERE Diem <5 GROUP BY MaSV HAVING count(*) >=2)

-- Bài 3.29
select * from SinhVien
select * from Khoa
select * from [dbo].[Ketqua]


SELECT HoSV + ' ' + TenSV AS N'Họ và tên' , TenKH, Phai, DiemTB FROM SinhVien 
INNER JOIN Khoa  ON SinhVien.MaKH = Khoa. MaKH
INNER JOIN 
(select MaSV, AVG(Diem) DiemTB from [dbo].[Ketqua] GROUP BY MaSV HAVING AVG(Diem) >4) A ON A.MaSV = SinhVien.MaSV