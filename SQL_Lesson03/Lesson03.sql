---------------- SELECT ----------------
-- Select <select list[cột]>
-- FROM <Tên_bảng>
-- INNER/LEFT/RIGHT/FULL JOIN <Tên_bảng> ON <map cột>
-- WHERE <mệnh_đề_đk>
-- GROUP BY <group by list[cột]>
-- HAVING <mệnh_đề_đk>
-- ORDER BY (order by list[cột]) ASC/DESC


--- CASE WHEN THEN END 
-- SYSTAX: CASE WHEN mệnh_đề_điều_kiện THEN Giá_trị_trả_về
--				WHEN mệnh_đề_điều_kiện THEN Giá_trị_trả_về (có hoặc không)...
--				ELSE Giá_trị_trả_về 
--              END AS Tên_cột
	

-- Price< 6000 -> giả rẻ;
-- Price>= 6000 và Price <20000 -> giá vừa phải;
-- Price>=20000 -> giá đắt
select *, CASE WHEN Price < 6000 THEN N'giả rẻ' 
				WHEN Price < 20000 THEN N' giá vừa phải' 
				--WHEN Price >= 20000 THEN N' giá đắt' END
				ELSE N' giá đắt' END
			 AS Giá 
from [dbo].[Book]
-- IIF()
-- SYSTAX: IIF(mênh_đề_điều_kiện,giá_trị_trả_về_nếu_đúng,giá_trị_trả_về_nếu_sai)
select *,IIF(Price < 6000,N'giả rẻ' ,IIF(Price < 20000,N' giá vừa phải',N' giá đắt')) AS Giá 
from [dbo].[Book]


-- Truy vấn con(Sub query)

-- đếm số lượng sách theo dạnh mục
--C1: cách join
SELECT Category.CategoryName,COUNT(Book.BookId) AS SL FROM Category
LEFT JOIN Book ON Book.CategoryId = Category.CategoryId
GROUP BY Category.CategoryName
-- C2: Subquery
SELECT CategoryName,(SELECT COUNT(*) FROM Book WHERE CategoryId = Category.CategoryId) AS SL 
FROM Category
-- C3: Subquery và join
--SELECT CategoryId, COUNT(*) AS SL FROM Book GROUP BY CategoryId

SELECT C.CategoryName,ISNULL(B.SL,0) FROM Category C
LEFT JOIN (SELECT CategoryId, COUNT(*) AS SL FROM Book GROUP BY CategoryId) AS B
ON  B.CategoryId = C.CategoryId


-- Sử dụng tham số để truy vấn
DECLARE @search nvarchar(255)
SET @search = 'shin'
SET @search = '%' + @search + '%'
select * from Book WHERE Title like @search




