-- insert publisher_tb(publisher_name)
select
	-- 발행자,
	nullif(발행자, "") -- 두 개 값이 같으면 null로 바꿔라
    -- ifnull(nullif(replace(발행자, " ", ""), ""), "발행자 없음") # 띄워쓰기 들어간것 공백으로 바꾸고 공백은 전부 발행자 없음 처리
from
	sample_dvd_tb
group by
	발행자
having
	nullif(발행자, "") is not null;
    
    
insert into publisher_tb(publisher_name)
select
	nullif(발행자, "") as publisher_name
from
	sample_dvd_tb
group by
	발행자
having
	publisher_name is not null;
    
    
    