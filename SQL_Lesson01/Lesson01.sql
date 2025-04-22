-- USE: sử dụng DB nào
-- GO ngắt câu lệnh 
USE [master]
GO
-- Tạo DB mới
CREATE DATABASE [Lesson01]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Lesson01', FILENAME = N'D:\00.DATABASE\Lesson01.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Lesson01_log', FILENAME = N'D:\00.DATABASE\Lesson01_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

------------THÊM/SỬA/XÓA BẢNG----------------
-- Tạo bảng CREATE TABLE
CREATE TABLE MONHOC(
	ID BIGINT,
	NAME NVARCHAR(50)
)
GO
-- Cập nhật bảng ALTER TABLE
-- sửa cột
ALTER TABLE MONHOC
ALTER COLUMN NAME NVARCHAR(100)
GO
-- thêm cột
ALTER TABLE MONHOC
ADD PHONGHOC NVARCHAR(100)
GO

-- sửa tên cột
--ALTER TABLE MONHOC
--RENAME COLUMN PHONGHOC to PHONGHOC1;
--GO
EXEC sp_rename 'dbo.Class.Studtent_ID', 'Student_ID', 'COLUMN';
GO
-- xóa cột
ALTER TABLE MONHOC
DROP COLUMN PHONGHOC1
GO
-- Xóa bảng
DROP TABLE MONHOC
GO

------------------DỮ LIỆU--------------
-- Thêm dữ liệu
INSERT INTO [dbo].[Student] (Id, Name, Age, Address) VALUES 
(2,'Devmaster',12,N'Vũ Ngọc Phan'),
(3,'DamLuan',28,N'Vũ Ngọc Phan')
INSERT INTO [dbo].[Class] (Id, Student_ID, ClassName)
SELECT Id,Id,Name FROM [Student]
GO
-- Sửa dữ liệu
UPDATE Student SET Name = N'Khoa 2',Age=23  WHERE Id = 2
GO
-- Xóa dữ liệu
DELETE Student WHERE Id = 2
DELETE Student
TRUNCATE TABLE Student
GO
-- 
SELECT * FROM Student
SELECT * FROM [Class]

-----------------------BIẾN-----------------------
----Khai báo biến
DECLARE @ten_bien nvarchar(20)
--DEC 
-- Gán
--SET @ten_bien = 'Devmaster'
--SELECT @ten_bien

SELECT @ten_bien = Name FROM Student WHERE id = 1
PRINT @ten_bien

DECLARE @Student TABLE
(
	id bigint,
	name nvarchar(100),
	age tinyint,
	address nvarchar(100)
)
INSERT INTO @Student
SELECT * FROM Student

SELECT * FROM @Student


SELECT * INTO #Student FROM Student

SELECT * FROM #Student
DROP TABLE #Student
