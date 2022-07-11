--1. 문자 함수

-- CONCAT : 문자열 연결, 합치기

-- INSTR : 특정문자의 위치를 반환

-- SUBSTR : 문자의 일부분 반환

-- REPLACE : 특정문자 대체

-- LPAD : 왼쪽부터 지정 문자로 채우는 함수

-- LTRIM : 왼쪽에서 특정문자 / 공백을 삭제
-- RTRIM : 오른쪽에서 삭제
-- TRIM : 앞뒤로 특정문자나 공백 삭제


--2. 변환 함수

-- to_char
-- to_date
-- to_number


--3. 조건함수

-- nvl
-- decode


--4. 날짜함수

-- sysdate
-- months_between
-- add_months
-- next_day
-- last_day

--5. 숫자 함수

-- TRUNC : 456.789를 소수 둘째자리까지 절삭

-- MOD : 나누기 연산 후 나머지 값을 반환

-- ROUND : 반올림


--날짜 포맷
/*
TO_CHAR(SYSDATE,'YYYYMMDD'),
TO_CHAR(SYSDATE,'YYYY-MM-DD'),
TO_CHAR(SYSDATE,'YYYY/MM/DD'),
TO_CHAR(SYSDATE,'YYYY'),
TO_CHAR(SYSDATE,'YY'),
TO_CHAR(SYSDATE,'MM'),
TO_CHAR(SYSDATE,'MON'), --월
TO_CHAR(SYSDATE,'D'),--(주중의 일을 1~7로 표시(일요일 = 1)
TO_CHAR(SYSDATE,'DD'),--
TO_CHAR(SYSDATE,'DDD'),--(1년기준 일 수)
TO_CHAR(SYSDATE,'DAY'),--(요일 표시)
TO_CHAR(SYSDATE,'DY'), --(요일을 한자리로 표시)
TO_CHAR(SYSDATE,'WW'), -- (일년 기준 주를 00 ~ 53 형태로 표시)
TO_CHAR(SYSDATE,'W'), -- (한달 기준 몇번째 주)
TO_CHAR(SYSDATE,'DL'),-- (0000년 00월 00일 0요일)

--사간 포맷
TO_CHAR(SYSDATE,'AM'),--오전
TO_CHAR(SYSDATE,'PM'),--오후
TO_CHAR(SYSDATE,'HH'), -- (시간을 0 ~ 12 형태로 표시)
TO_CHAR(SYSDATE,'HH24'), -- (시간을 0 ~ 24 형태로 표시)
TO_CHAR(SYSDATE,'MI'), -- (분을 00 ~ 59 형태로 표시)
TO_CHAR(SYSDATE,'SS'), -- (초을 01 ~ 59 형태로 표시)

--세기 포맷
TO_CHAR(SYSDATE,'CC'), --21 (세기)
TO_CHAR(SYSDATE,'BC') --서기
*/


--TO_CHAR 시간 및 숫자 표현
--,(콤마)
--SELECT TO_CHAR(123456, '999,999') FROM DUAL;

--S
--SELECT TO_CHAR(-123, 'S999') FROM DUAL;







