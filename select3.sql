# group by - 그룹
# 집계 -> count, max, min, sum, avg

select
admission_date,
	count(*) # 날짜에 해당하는 모든 행의 갯수 출력
from
	student_tb
group by
	admission_date;