# 출판사를 기준으로 category의 count를 집계한다.



select
#	rank() over(partition by publisher_id order by book_count desc) as `rank`, -- 각각의 출판사 내에서 도서갯수가 많은 것(카테고리 안에서) 공동 등수인 것은 공동으로 메기기
	row_number() over(partition by publisher_id order by book_count desc) as `num`, -- 공동 등수 없음
	pc_count_tb.*
from
	(select
		publisher_id,
		category_id,
		count(*) as book_count
	from
		print_tb
	group by
		publisher_id,
		category_id) as pc_count_tb;



select
	*
from
	(select
	#	rank() over(partition by publisher_id order by book_count desc) as `rank`, -- 각각의 출판사 내에서 도서갯수가 많은 것(카테고리 안에서) 공동 등수인 것은 공동으로 메기기 1 2 2 4 등
	#	dense_rank() over(partition by publisher_id order by book_count desc) as `dense_rank`, -- 각각의 출판사 내에서 도서갯수가 많은 것(카테고리 안에서) 공동 등수인 것은 공동으로 메기기 1 2 2 3 등
		row_number() over(partition by publisher_id order by book_count desc) as `num`, -- 공동 등수 없음
		pc_count_tb.*
	from
		(select
			publisher_id,
			category_id,
			count(*) as book_count
		from
			print_tb
		group by
			publisher_id,
			category_id) as pc_count_tb) as book_row_number_tb
where
	num = 1;