-- 프로시저
-- 패키지
-- 트랜잭션
-- 예외처리


-- 송금 : 내통장에서 돈을 빼 --> 상대방 통장에 돈 입금 -- 하나의 트랜잭션

SELECT * FROM STUDENTS;

INSERT INTO STUDENTS(SID, SNAME, STEL, SADDR, SGENDER, SAGE)
VALUES('','','','','',20);

SELECT 'S' || TO_CHAR(TO_NUMBER(SUBSTR(NVL(MAX(SID), 'S000'),2, 3)) + 1, 'FM000')
FROM STUDENTS;