-- order by - 정렬
-- ASC > 오름차순(생략가능), DESC > 내림차순(생략불가능)

select
	*
from
	category_tb
order by
	category_id desc; -- 정렬하고 싶은 행 이름 / desc = 역순
    
select
	*
from
	category_tb
order by
	category_id; -- 정렬하고 싶은 행 이름 / desc = 역순
    
    
    -- 퍼블리셔 내림차순, 카테고리id 오름차순 정렬, bookid 내림차순
select
	*
from
	print_tb
order by
	publisher_id desc,
    category_id,
    book_id desc;
    