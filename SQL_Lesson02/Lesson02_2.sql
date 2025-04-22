---------------- SELECT ----------------
-- Select <select list[cột]>
-- FROM <Tên_bảng>
-- WHERE <mệnh_đề_đk>
-- GROUP BY <group by list[cột]>
-- HAVING <mệnh_đề_đk>
-- ORDER BY (order by list[cột]) ASC/DESC


-- GROUP dùng khi tính tổng/count,... (gộp hàng)
-- tính tổng giá theo năm
select Release,SUM(Price) from [dbo].[Book] GROUP BY Release
-- đếm số quyển sách theo danh mục và nhà xuất bản
select CategoryId,PublisherId, COUNT(BookId) 
from [dbo].[Book] GROUP BY CategoryId,PublisherId

-- đếm số quyển sách theo danh mục và nhà xuất bản
--select CategoryId,PublisherId, COUNT(BookId) as dem
--from [dbo].[Book] WHERE COUNT(BookId) >2
-- GROUP BY CategoryId,PublisherId

select CategoryId,PublisherId, COUNT(BookId) as dem
from [dbo].[Book] GROUP BY CategoryId,PublisherId 
HAVING COUNT(BookId) >2



