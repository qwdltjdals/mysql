insert into rental_tb
select
	distinct -- 중복값 제거
	0 as rental_id,
    floor(rand() * 3000) + 1 as dvd_id, -- rand = 랜덤한 값 생성(랜덤함수)
    "김준일" as customer_name,
    now() as rental_date
from
	dvd_tb
where
	dvd_id < 1001
order by
	dvd_id;
    
select * from rental_tb;