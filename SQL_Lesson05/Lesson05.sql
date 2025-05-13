select *, CONVERT(varchar(10),NgaySinh,103) from [QLSINHVIEN].[dbo].[SinhVien]  ORDER BY MaSV
------------------------VIEW------------------------
--CREATE VIEW - tạo view
CREATE VIEW vw_SinhVien
AS
SELECT  HoSV + ' ' +TenSV AS HoTen, IIF(phai=0,N'Nữ',N'Nam') AS Phai FROM SinhVien --ORDER BY MaSV
GO
SELECT * FROM vw_SinhVien
-- ALTER VIEW - sửa view
ALTER VIEW vw_SinhVien
with encryption
AS
SELECT  HoSV + ' ' +TenSV AS HoTen, IIF(phai=0,N'Nữ',N'Nam') AS Phai
		,CONVERT(varchar(10),NgaySinh,103) AS NgaySinh FROM SinhVien 
GO
SELECT * FROM vw_SinhVien
-- DROP VIEW - xóa view
DROP VIEW vw_SinhVien 
--
sp_helptext vw_SinhVien
sp_depends vw_SinhVien

------------------------STORED PROCEDURE------------------------
--CREATE PROCEDURE - tạo view
CREATE PROCEDURE sp_SinhVien_Phai
		@Phai tinyint
AS
BEGIN
	SELECT  HoSV + ' ' +TenSV AS HoTen, IIF(phai=0,N'Nữ',N'Nam') AS Phai
		,CONVERT(varchar(10),NgaySinh,103) AS NgaySinh FROM SinhVien WHERE Phai = @Phai
END
GO
exec sp_SinhVien_Phai @Phai = 1
SELECT * FROM Ketqua
GO
CREATE PROCEDURE sp_DiemMax
		@MaMH varchar(50),
		@DiemMax float OUTPUT
AS
BEGIN
	SELECT MaMH, MAX(Diem) AS Diem INTO #DiemMax FROM Ketqua WHERE MaMH = @MaMH GROUP BY MaMH
	SELECT @DiemMax = Diem FROM #DiemMax
END
GO


DECLARE @Diem float
exec sp_DiemMax @MaMH = '01',@DiemMax = @Diem OUTPUT
PRINT @Diem
exec sp_DiemMax  '03', @Diem OUTPUT
PRINT @Diem
--ALTER PROCEDURE - sửa thủ thục
ALTER PROCEDURE sp_DiemMax
		@MaMH varchar(50),
		@DiemMax float OUTPUT
AS
BEGIN
	SELECT MaMH, MAX(Diem) AS Diem INTO #DiemMax FROM Ketqua WHERE MaMH = @MaMH GROUP BY MaMH
	SELECT @DiemMax = Diem FROM #DiemMax
	RETURN 1
END
GO
DECLARE @Diem float
exec sp_DiemMax  '03', @Diem OUTPUT
PRINT @Diem
--DROP PROCEDURE - xóa thủ thục

------------------------TRIGGER------------------------
-- CREATE TRIGGER
CREATE TRIGGER trg_CheckDiem ON [dbo].[Ketqua]
FOR INSERT 
AS
BEGIN
	IF(SELECT Diem FROM inserted) <0
	BEGIN 
		PRINT 'Diem khong <0'
		ROLLBACK TRANSACTION
	END
END

GO
INSERT INTO [dbo].[Ketqua] VALUES
('A04','01',5)

delete [Ketqua] where MaSV ='A04' and MaMH ='01'

update  [Ketqua] SET diem =-5 where MaSV ='A04' and MaMH ='01'

CREATE TRIGGER trg_CheckDiem_Update ON [dbo].[Ketqua]
FOR UPDATE 
AS
BEGIN
	IF(SELECT Diem FROM inserted) <0
	BEGIN 
		PRINT 'Diem khong <0'
		ROLLBACK TRANSACTION
	END
END
GO
update  [Ketqua] SET diem =-5 where MaSV ='A04' and MaMH ='01'

