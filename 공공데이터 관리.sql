-- 도서관 정보 테이블 데이터 추출
select * from sample_book_tb;

select
	도서관명,
    도서관구분코드,
    도서관홈페이지
from
	sample_book_tb
group by # 조합이 같은 것 끼리 하나의 그룹으로 묶음
	도서관명,
    도서관구분코드,
    도서관홈페이지;
    
-- 카테고리 정보 테이블 데이터 추출

select
	카테고리,
    count(*)
from
	sample_book_tb
group by
	카테고리;
    
select
	출판사
from
	sample_book_tb
group by
	출판사;
    
select
	형식
from
	sample_book_tb
group by
	형식;
    
select
	도서관구분코드,
	도서명,
    저자명,
    국제표준도서번호(ISBN),
    카테고리,
    출판사,
    포지주소(URL),
    형식
from
	sample_book_tb
group by
	형식
