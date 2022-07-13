SELECT * FROM STUDENTS;
-- 김돌우는 부산에 살고 24살이며 남자이다.

-- 문자 연결자
SELECT SID || SNAME FROM STUDENTS
WHERE SAGE > 25;

SELECT SNAME || '는' || SADDR || '에 살고' || SAGE || '살이다' 
FROM STUDENTS ;

-- 수식 연산 DUAL -> 가상의 테이블
SELECT 90 + 44 FROM DUAL;
-- ORACLE에서 숫자와 문자로 표현된 숫자를 연산시 숫자로 치환해서 계산함
SELECT 90 + '144' FROM DUAL;
-- ORACLE에서 숫자와 문자를 연결시 숫자를 문자로 치환해서 처리
SELECT 90 || 'ADFA' FROM DUAL;

SELECT CONCAT('AAAA',CONCAT('90', 'ADFA')) FROM DUAL;

SELECT * FROM STUDENTS;

-- INSTR -> 입력한 값이 조회하는 값에 있다면 자리값을 반환
SELECT SNAME, INSTR(SNAME, '김') FROM STUDENTS;

SELECT STEL, INSTR(STEL, '5555') FROM STUDENTS;
-- INSTR을 이용하여 반드시 넣어야하는 값의 입력 유무를 확인할 수 있다.

SELECT INSTR('ABCDEFGHIJKL', 'F') FROM DUAL;

-- 전화번호가 010으로 시작하는 학생을 찾아주세요
SELECT * FROM STUDENTS WHERE STEL LIKE '010%';

-- 전화번호가 국번이 5555으로 시작하는 학생을 찾아주세요
SELECT * FROM STUDENTS WHERE STEL LIKE '%5555%'; -- 틀림

-- SUBSTR
SELECT SUBSTR('123456789', 2) FROM DUAL;
SELECT SNAME, SUBSTR(SNAME, 2) FROM STUDENTS;
-- 앞쪽만 가져오고 싶을 때
SELECT SUBSTR('123456789', 1, 3) FROM DUAL;

-- REPLACE
SELECT REPLACE('ABCD', 'A','-') FROM DUAL;
SELECT REPLACE(SGENDER, 'M', '남자') FROM STUDENTS;

-- 함수, 메서드
-- 메서드 :  객체지향언어에서 사용하는 것
-- 함수 : 객체지향언어가 아닌 것에서 사용









