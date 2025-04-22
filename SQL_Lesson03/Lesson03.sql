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
