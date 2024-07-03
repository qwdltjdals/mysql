# 데이터 수정(DML - UPDATE)

select * from student_tb;
    
select
	student_id
from
	student_tb
where
	student_name = "김준오";
    

update # student_tb 을 참조 1
	student_tb
set # emali인 것을 바꿔라 3
	email = "faftweer@gmail.com"
where # 해당 행의 위치를 찾아라 2
	student_id = (	select
						temp_student_tb.student_id
					from
						(select * from student_tb) as temp_student_tb # 위에꺼(update)랑 이거랑 같으면 안되므로 가라테이블 하나 만듦
					where
						temp_student_tb.student_name = "김준오");
                        
update
	student_tb
set
	phone = "010-8752-2645"
where
	student_id = 3;