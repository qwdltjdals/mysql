
insert into producer_tb
select
	distinct
    0,
    제작자
from
	sample_dvd_tb;
    
    
    # 같은거
-- insert into producer_tb
-- select
-- 	0,
--  제작자
-- from
--	sample_dvd_tb
-- group by
-- 	제작자;