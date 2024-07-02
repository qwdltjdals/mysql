# where - 조건

# 단순 비교 연산
select
	*
from
	student_tb
where
	 student_name = "김준일"; # 비교연산(찾기)
     
     # OR 연산
select # 해당 열만 선택 3
	student_id,
    student_name
from # 해당 테이블에서 1
	student_tb
where # 해당 행을 찾아서 2
	student_name = "김준일"
    or student_name = "김준이";
    
    # in
select
	*
from
	student_tb
where
	student_name in ("김준일", "김준이", "김준삼"); # or
    
select
	*
from
	student_tb
where
	introduce = "천재";
    
select
	*
from
	student_tb
where
	student_id > 2
    and student_id < 4;
    
select
	*
from
	student_tb
where
	student_id between 2 and 4; # between a 이상 b 이하
    
    # NOT
select
	*
from
	student_tb
where
	not student_name = "김준일";
    
    
    # Null 체크
    # is null 긍정
    # is not null 부정
select
	*
from
	student_tb
where
	introduce is not null; # null이 아닌 것만
    
    select
	*
from
	student_tb
where
	introduce is null; # null인 것만
    
insert into student_tb
values
	(0, "손경태", "010-1111-2222", "aaa@gmail.com", null, now()),
	(0, "김지현", "010-1111-3333", "bbb@naver.com", null, now()),
	(0, "김동인", "010-2222-2222", "ccc@gmail.com", null, now()),
	(0, "김정현", "010-4444-3333", "aaabbb@naver.com", null, now()),
	(0, "권오광", "010-5555-2222", "bbbccc@kakao.com", null, now()),
	(0, "권혁진", "010-1111-5555", "aaabbbccc@kakao.com", null, now());
    
    # 와일드 카드(like)
select
	*
from
	student_tb
where
	student_name like "김%"; # 김씨로 시작하는 사람만 추출


select
	*
from
	student_tb
where
	email like "%gmail.com"; # gmali.com으로 끝나는 것만 추출
    
    
select
	*
from
	student_tb
where
	phone like "%2222%"; # 이 값을 포함하고 있는ㄴ 것(앞이든 뒤든 중간ㅇ니든 상관ㄴ 없음)
    
select
	*
from
	student_tb
where
	phone like "%2222%"
    and not phone like "%2222"; # 2222포함하면서 뒷자리가 2222이아니면 됨 = 가운데
    
select
	*
from
	student_tb
where
	email like "___bbb%"; # 앞에 세 글자 아무거나 그다음 bbb 뒤에는 상관 X
    
    
    