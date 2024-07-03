-- Group by = 집계, 중복제거할때 사용

select
	distinct -- distinct 중복제거 효과
	category_id,
	publisher_id
from
	print_tb;
    
select -- 3
	category_id,
    count(*)
from
	print_tb
where -- 1
	book_id > 7000
group by -- 2
	category_id;
    
-- 도서명 중 '돈' 이라는 글자가 들어간 데이터들을 찾아 카테고리별로 묶으시오.
-- 그리고 카테고리 별로 도서 개수가 출력되어야 한다.

select -- 4
		category_id,
		count(*) as category_count -- count의 이름
	from -- 1
		print_tb
	where -- 2
		book_name like "%돈%"
	group by -- 3
		category_id;

select
	* -- from의 전체
from
	(select -- 4
		category_id,
		count(*) as category_count -- count의 이름
	from -- 1
		print_tb
	where -- 2
		book_name like "%돈%"
	group by -- 3
		category_id) as category_group_book_tb
where
	category_count > 10;

    
    
select -- 4
	category_id,
	count(*) as category_count -- count의 이름
from -- 1
	print_tb
where -- 2
	book_name like "%돈%"
group by -- 3
	category_id
having -- group by 결과를 가지고 조건을 주는 것 5 - 결과에서 필터를 걸어서 출력
	category_count > 10;
    

