insert into registration_number_tb
select
	0,
    등록번호
from
	ex_tb
group by
	등록번호;
    
insert into title_tb
select
	0,
    제목
from
	ex_tb
group by
	제목;

insert into dvd_publisher_tb
select
	0,
    발행자
from
	ex_tb
group by
	발행자;
    
insert into producer_tb
select
	0,
    저작자
from
	ex_tb
group by
	저작자;
    
insert into dvd_publiscation_year_tb
select
	0,
    발행년
from
	ex_tb
group by
	발행년;
    
insert into database_date_tb
select
	0,
    데이터기준일자
from
	ex_tb
group by
	데이터기준일자;
    
SELECT * FROM stduy.ex_tb;


update
	ex_tb as ex
left outer join registration_number_tb as rn on(rn.number_name = ex.등록번호)
left outer join dvd_publisher_tb dp on(dp.publisher_name = ex.발행자)
left outer join producer_tb pd on(pd.producer_name = ex.저작자)
set
	등록번호_id = rn.number_id,
	발행자_id = dp.publisher_id,
	저작자_id = pd.producer_id;

insert dvd_print_tb
select
	0,
    등록번호,
    제목,
    저작자_id,
    발행자_id,
    발행년,
    데이터기준일자
from
	ex_tb;
    

    
    