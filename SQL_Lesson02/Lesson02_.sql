---------------- SELECT ----------------
-- Select <select list[cột]>
-- FROM <Tên_bảng>
-- LEFT/RIGHT/FULL/INNER JOIN <Tên_bảng> ON <select map [cột = cột]>
-- WHERE <mệnh_đề_đk>
-- GROUP BY <group by list[cột]>
-- HAVING <mệnh_đề_đk>
-- ORDER BY (order by list[cột]) ASC/DESC

-- Cú pháp select không FROM 
select 'SP01'  AS ID, 'Iphone 15 plus' as N'Tên Sản phẩm', 650000 as 'Giá'

-- select có FROM 
select * FROM Book
select BookId AS ID, Title, Author, Release, Price, Description, Picture, PublisherId, CategoryId FROM Book

-- select có WHERE
SELECT * FROM [DBO].[BOOK] WHERE TITLE LIKE '%D%' AND Price >28500

-- select có GROUP BY

-- select có HAVING

-- LEFT JOIN 
select * from [dbo].[Category]
select * from [dbo].[BOOK]

select * from [dbo].[Category]
LEFT JOIN [dbo].[BOOK] ON [dbo].[Category].CategoryId = [dbo].[BOOK].CategoryId

select * from [dbo].[BOOK] AS C
RIGHT JOIN [dbo].[Category] AS B ON C.CategoryId = B.CategoryId ORDER BY C.CategoryId

select * from [dbo].[Category] AS C
RIGHT JOIN [dbo].[BOOK] AS B ON C.CategoryId = B.CategoryId ORDER BY C.CategoryId

select * from [dbo].[Category] AS C
INNER JOIN [dbo].[BOOK] AS B ON C.CategoryId = B.CategoryId ORDER BY C.CategoryId


select * from [dbo].[Category] AS C
FULL JOIN [dbo].[BOOK] AS B ON C.CategoryId = B.CategoryId ORDER BY C.CategoryId


-- DISTINCT
select DISTINCT Release, PublisherId, CategoryId from [dbo].Book
-- TOP
select TOP(4) * from [dbo].Book ORDER BY Price DESC
-- PERCENT.
select  * from [dbo].Book ORDER BY Price
select TOP(15) PERCENT *  from [dbo].Book ORDER BY Price DESC

select TOP(4) * from [dbo].Book ORDER BY Price DESC
select TOP(4) WITH TIES * from [dbo].Book ORDER BY Price DESC

