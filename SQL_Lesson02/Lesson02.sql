-- Vị từ 
-- IN 
select * from [dbo].[Book] WHERE CategoryId = 1 OR CategoryId = 3
select * from [dbo].[Book] WHERE CategoryId IN (1,3)


-- BETWEEN 
select * from [dbo].[Book] WHERE CategoryId >= 1 AND CategoryId <= 3

select * from [dbo].[Book] WHERE  CategoryId BETWEEN 1 AND 3

-- LIKE
--  _,%, ^, []
--% : lấy giá trị bất kỳ
-- lấy các bản ghi có từ giàu trong title
select * from [dbo].[Book] WHERE Title LIKE N'%giàu%'
--_ :thay thế 1 ký tự bất kỳ
-- lấy các bản ghi có chữ cái thứ 2 là chữ u trong cột title 
select * from [dbo].[Book] WHERE Title LIKE N'_u%'

-- ^,[]
-- lấy các bản ghi có ký tự đầu tiên là chữ D
select * from [dbo].[Book] WHERE Title LIKE N'[D]%'
-- lấy các bản ghi có ký tự đầu tiên không chứa chữ DC
select * from [dbo].[Book] WHERE Title LIKE N'[^CDĐ]%'

-- lấy các bản ghi không chứ ký tự D trong cột title
select * from [dbo].[Book] WHERE Title NOT LIKE N'%[D]%'

--- CONTAINS

--select * from [dbo].[Book] WHERE  CONTAINS(BookId,'2')

--  HÀM CONVERT

select CONVERT(datetime,'20221206')

-- CONVERT, DATEADD,DATEDIFF
select DATEADD(DAY,-3,CONVERT(datetime,'20250417'))
select DATEADD(DAY,3,CONVERT(datetime,'20250417'))
select DATEDIFF(DAY,CONVERT(datetime,'20250417'),CONVERT(datetime,'20250420'))
select DATEDIFF(MONTH,CONVERT(datetime,'20250417'),CONVERT(datetime,'20250720'))
-- DAY, MONTH, YEAR
select DAY(GETDATE()), MONTH(GETDATE()),YEAR(GETDATE())


select * from [dbo].[Book] WHERE BookId  ='P68102' 
UPDATE [Book] SET Author = 'Devmaster' WHERE BookId  ='P68102' 

select *, ISNULL(Author,Price) from [dbo].[Book] 

select *, ISNULL(Author,Price) from [dbo].[Book] 

UPDATE [dbo].[Book]  SET  Author = ISNULL(A.Author,B.Author)
FROM [dbo].[Book]  A
JOIN [BookStoreDB].[dbo].[Book] B ON A.BookId = B.BookId


select *, len(Title) from [dbo].[Book] 
-- IF ELSE 
IF(DAY(GETDATE()) =17)
BEGIN
	PRINT GETDATE()
END
ELSE 
BEGIN --{
	PRINT 'Devmater'
	PRINT 'DamLuan'
END --}

