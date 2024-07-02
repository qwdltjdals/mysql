#데이터조회(DML - SELECT)

select * from seudent_tb;
select `student_id`, `student_name`, `phone`, `email`, `introduce`, `admission_date` from `stduy`.`student_tb`;
select student_id, student_name, phone, email, introduce, admission_date from `stduy`.`student_tb`;
select student_id, student_name, phone, email, introduce, admission_date from `student_tb`;
select student_id, student_name, phone, email, introduce, admission_date from student_tb;
select student_id, student_name, phone from student_tb;
select  student_name, student_id, phone from student_tb;
select student_id, student_name as s_name from student_tb;

# union(all) 병합 조건 - 컬럼의 개수와 자료형이 동일한 select 결과만 병합 가능
# union -> 중복 제거 후 select 결과 병합
# union all -> 중복 제거 없이 select 결과 병합

select
	number,
	name
from
	(select 1 as number, "김준일" as name, 31 as age
	union all
	select 2 as number, "김준이" as name, 32 as age
	union all
	select 2 as number, "김준이" as name, 32 as age) as temp_tb; # 가상의 테이블 이름을 지정함

select student_id, student_name from student_tb
union all
select student_id, phone from student_tb;