
--아래의 데이터를 분석하고
--학생들은 반드시 6과목 시험을 쳐야 한다.
--국어와 수학은 두개의 시험중 1개의 시험만 골라서 치면된다.
--시험을 치지 않은 과목은 0점 처리한다.

CREATE TABLE STUDENTS
(
    SID     CHAR(4)         NOT NULL  PRIMARY KEY, --학생아이디
    SNAME   VARCHAR2(30)    NOT NULL,               -- 학생이름
    STEL    VARCHAR2(20)    NOT NULL,               -- 연락처
    SADDR   VARCHAR2(10)    NOT NULL,               -- 주소
    SGENDER CHAR(1)         NOT NULL,               -- 성별
    SAGE     NUMBER(3)       NOT NULL               -- 나이
);

    INSERT INTO STUDENTS VALUES('S001', '김돌우', '01077778888', '부산', 'M', 24);
    INSERT INTO STUDENTS VALUES('S002', '박영익', '01055556666', '울산', 'M', 27);
    INSERT INTO STUDENTS VALUES('S003', '도소욱', '01088887777', '부산', 'M', 28);
    INSERT INTO STUDENTS VALUES('S004', '정미주', '01055554444', '부산', 'F', 22);
    INSERT INTO STUDENTS VALUES('S005', '김기윤', '01077775555', '창원', 'M', 21);
    INSERT INTO STUDENTS VALUES('S006', '이효진', '01066669999', '창원', 'F', 25);
    INSERT INTO STUDENTS VALUES('S007', '강신욱', '01044447777', '부산', 'M', 23);
    INSERT INTO STUDENTS VALUES('S008', '박범식', '01099998888', '울산', 'M', 27);
    INSERT INTO STUDENTS VALUES('S009', '여인순', '01051477787', '부산', 'F', 31);
    INSERT INTO STUDENTS VALUES('S010', '최순애', '01078974444', '김해', 'F', 32);
    --COMMIT;
    --ROLLBACK;
    --남학생이면서 27살 이상인 학생
    SELECT * FROM STUDENTS
    WHERE SAGE >= 27;
    
    --남학생 또는 27살 이상인 학생
    SELECT * FROM STUDENTS
    WHERE SAGE >= 27 OR SGENDER = 'M';
    
CREATE TABLE PROFESSORS
(
    PID     CHAR(4)         NOT NULL  PRIMARY KEY,
    PNAME   VARCHAR2(30)    NOT NULL,
    PTEL    VARCHAR2(20)    NOT NULL,
    PADDR   VARCHAR2(10)    NOT NULL,
    PGENDER CHAR(1)         NOT NULL,
    BIRTH   VARCHAR2(8)     NOT NULL
);
    
    INSERT INTO PROFESSORS VALUES('P001','최국일','01099996566','부산','M','19730804');
    INSERT INTO PROFESSORS VALUES('P002','경승수','01077148888','부산','M','19710109');
    INSERT INTO PROFESSORS VALUES('P003','박수연','01055414444','부산','F','19780214');
    INSERT INTO PROFESSORS VALUES('P004','김경순','01024147784','울산','F','19801222');
    INSERT INTO PROFESSORS VALUES('P005','박수걸','01074145887','울산','M','19770505');
    INSERT INTO PROFESSORS VALUES('P006','도인중','01021444444','창원','M','19781128');
    INSERT INTO PROFESSORS VALUES('P007','이수영','01057414414','김해','F','19800107');
    INSERT INTO PROFESSORS VALUES('P008','이국중','01092417984','창원','M','19730309');
    INSERT INTO PROFESSORS VALUES('P009','박도우','01092417984','김해','M','19801009');
    INSERT INTO PROFESSORS VALUES('P010','이연수','01092417984','부산','F','19820509');
    
CREATE TABLE SUBJECTS
(
    SUBID     CHAR(6)         NOT NULL PRIMARY KEY,
    SNAME   VARCHAR2(30)    NOT NULL,
    GRADE   NUMBER(3)       NOT NULL               --학점
);

    INSERT INTO SUBJECTS VALUES('SUB001','국어',3);
    INSERT INTO SUBJECTS VALUES('SUB002','수학',3);
    INSERT INTO SUBJECTS VALUES('SUB003','영어',3);
    INSERT INTO SUBJECTS VALUES('SUB004','과학',2);
    INSERT INTO SUBJECTS VALUES('SUB005','사회',2);
    INSERT INTO SUBJECTS VALUES('SUB006','음악',1);
    --COMMIT;
    
CREATE TABLE EXAMS
(
    EID        CHAR(4)          PRIMARY KEY, -- 시험아이디
    SUBID      CHAR(6)          NOT NULL, -- 과목아이디
    ENAME      VARCHAR2(30)     NOT NULL  -- 시험과목명
);
-- DROP TABLE EXAMS;

    INSERT INTO EXAMS VALUES('E001','SUB001','국어1 시험');
    INSERT INTO EXAMS VALUES('E002','SUB001','국어2 시험');
    INSERT INTO EXAMS VALUES('E003','SUB002','수학1 시험');
    INSERT INTO EXAMS VALUES('E004','SUB002','수학2 시험');
    INSERT INTO EXAMS VALUES('E005','SUB003','영어 시험');
    INSERT INTO EXAMS VALUES('E006','SUB004','과학 시험');
    INSERT INTO EXAMS VALUES('E007','SUB005','사회 시험');
    INSERT INTO EXAMS VALUES('E008','SUB006','음악 시험');


CREATE TABLE SCORES
(
    SID         CHAR(4)             NOT NULL,   -- 시험친 결과의 아이디
    EID         CHAR(4)             NOT NULL,   -- 시험 아이디
    SUBID       CHAR(6)             NOT NULL,   -- 과목아이디
    SCIDX       NUMBER(5)           NOT NULL,   -- 학기
    SCORE       NUMBER(5,2)         NOT NULL    -- 점수
);


    --김돌우
    INSERT INTO SCORES VALUES('S001', 'E001', 'SUB001', 1, 91.12);
    INSERT INTO SCORES VALUES('S001', 'E003', 'SUB002', 1, 78.67);                             
    INSERT INTO SCORES VALUES('S001', 'E005', 'SUB003', 1, 86.45);
    INSERT INTO SCORES VALUES('S001', 'E006', 'SUB004', 1, 80.67);
    INSERT INTO SCORES VALUES('S001', 'E007', 'SUB005', 1, 90);
    INSERT INTO SCORES VALUES('S001', 'E008', 'SUB006', 1, 77);
    
    --박영익
    INSERT INTO SCORES VALUES('S002', 'E002', 'SUB001', 1, 69);
    INSERT INTO SCORES VALUES('S002', 'E003', 'SUB002', 1, 98);                             
    INSERT INTO SCORES VALUES('S002', 'E005', 'SUB003', 1, 56);
    INSERT INTO SCORES VALUES('S002', 'E006', 'SUB004', 1, 78);
    INSERT INTO SCORES VALUES('S002', 'E007', 'SUB005', 1, 87.90);
    INSERT INTO SCORES VALUES('S002', 'E008', 'SUB006', 1, 76.20);
    
    --도소욱
    INSERT INTO SCORES VALUES('S003', 'E002', 'SUB001', 1, 65.44);
    INSERT INTO SCORES VALUES('S003', 'E003', 'SUB002', 1, 78.09);                             
    INSERT INTO SCORES VALUES('S003', 'E006', 'SUB004', 1, 88);
    INSERT INTO SCORES VALUES('S003', 'E007', 'SUB005', 1, 56);
    INSERT INTO SCORES VALUES('S003', 'E008', 'SUB006', 1, 78);

    --정미주
    INSERT INTO SCORES VALUES('S004', 'E002', 'SUB001', 1, 90);
    INSERT INTO SCORES VALUES('S004', 'E004', 'SUB002', 1, 77);                             
    INSERT INTO SCORES VALUES('S004', 'E005', 'SUB003', 1, 90);
    INSERT INTO SCORES VALUES('S004', 'E006', 'SUB004', 1, 94);
    INSERT INTO SCORES VALUES('S004', 'E007', 'SUB005', 1, 76.44);
    INSERT INTO SCORES VALUES('S004', 'E008', 'SUB006', 1, 87.45);
    
    --김기윤
    INSERT INTO SCORES VALUES('S005', 'E001', 'SUB001', 1, 77.45);
    INSERT INTO SCORES VALUES('S005', 'E004', 'SUB002', 1, 99);                             
    INSERT INTO SCORES VALUES('S005', 'E005', 'SUB003', 1, 87);
    INSERT INTO SCORES VALUES('S005', 'E006', 'SUB004', 1, 78);
    

    --이효진
    INSERT INTO SCORES VALUES('S006', 'E001', 'SUB001', 1, 77);
    INSERT INTO SCORES VALUES('S006', 'E004', 'SUB002', 1, 65);                             
    INSERT INTO SCORES VALUES('S006', 'E005', 'SUB003', 1, 54);
    INSERT INTO SCORES VALUES('S006', 'E006', 'SUB004', 1, 77.44);
    INSERT INTO SCORES VALUES('S006', 'E007', 'SUB005', 1, 80.87);
    INSERT INTO SCORES VALUES('S006', 'E008', 'SUB006', 1, 98);
    
    
    --강신욱
    INSERT INTO SCORES VALUES('S008', 'E002', 'SUB001', 1, 90);
    INSERT INTO SCORES VALUES('S008', 'E004', 'SUB002', 1, 88.67);                             
    INSERT INTO SCORES VALUES('S008', 'E005', 'SUB003', 1, 67.56);
    INSERT INTO SCORES VALUES('S008', 'E006', 'SUB004', 1, 90);
    INSERT INTO SCORES VALUES('S008', 'E007', 'SUB005', 1, 71.11);
    INSERT INTO SCORES VALUES('S008', 'E008', 'SUB006', 1, 87.45);
    
    --박범식
    INSERT INTO SCORES VALUES('S009', 'E001', 'SUB001', 1, 65);
    INSERT INTO SCORES VALUES('S009', 'E004', 'SUB002', 1, 56.67);                             
    INSERT INTO SCORES VALUES('S009', 'E005', 'SUB003', 1, 77);
    INSERT INTO SCORES VALUES('S009', 'E006', 'SUB004', 1, 82);
    INSERT INTO SCORES VALUES('S009', 'E007', 'SUB005', 1, 83.09);
    INSERT INTO SCORES VALUES('S009', 'E008', 'SUB006', 1, 93);
    
    --여인순
    INSERT INTO SCORES VALUES('S001', 'E001', 'SUB001', 1, 56);
    INSERT INTO SCORES VALUES('S001', 'E004', 'SUB002', 1, 97);                             
    INSERT INTO SCORES VALUES('S001', 'E005', 'SUB003', 1, 57);
    INSERT INTO SCORES VALUES('S001', 'E006', 'SUB004', 1, 90);
    INSERT INTO SCORES VALUES('S001', 'E007', 'SUB005', 1, 76);
    INSERT INTO SCORES VALUES('S001', 'E008', 'SUB006', 1, 84);
    
    --최순애
    INSERT INTO SCORES VALUES('S001', 'E001', 'SUB001', 1, 78);
    INSERT INTO SCORES VALUES('S001', 'E003', 'SUB002', 1, 89);                             
    INSERT INTO SCORES VALUES('S001', 'E006', 'SUB004', 1, 78.56);
    INSERT INTO SCORES VALUES('S001', 'E007', 'SUB005', 1, 80.88);
    INSERT INTO SCORES VALUES('S001', 'E008', 'SUB006', 1, 98);
    
    -- COMMIT;
    
    --1. 각 교수별 시험출제 현황 리스트를 보여주세요
    --(교수이름, 과목명, 시험명)
    
    --2. 지역별 학생수 리스트를 보여주세요
        SELECT SADDR, COUNT(*) AS CNT
        FROM STUDENTS
        GROUP BY SADDR;
        
    --3. 지역별 교수숫자 리스트를 보여주세요
            
    --4  국어시험 1을 국어시험으로 치른 학생 리스트를 보여주세요
        SELECT *
        FROM STUDENTS;
        
        SELECT *
        FROM SCORES;
        
        SELECT *
        FROM SUBJECTS;
        
        SELECT *
        FROM EXAMS;
        
        SELECT *
        FROM STUDENTS T1, SCORES T2
        WHERE T1.SID = T2.SID AND
        T2.EID = 'E001';
    --5. 부산에 사는 학생들의 영어시험 평균과 총점을 리스트로 보여주세요
        
        SELECT SUM(T2.SCORE), AVG(T2.SCORE)
        FROM STUDENTS T1, SCORES T2, SUBJECTS T3
        WHERE T1.SID = T2.SID
        AND T2.SUBID = T3.SUBID
        AND T1.SADDR = '부산'
        AND T3.SNAME = '영어'; 
        
        -- DELETE FROM EXAMS
        -- WHERE EID = 'E009';
        
        -- 김기윤 학생이 안친 시험을 찾아내라
        SELECT *
        FROM
        (
            SELECT T1.SID, T1.SNAME, T2.SUBID, T2.SNAME AS SUBNAME
            FROM STUDENTS T1, SUBJECTS T2
            WHERE T1.SID = 'S005'
        ) A,
        (
            SELECT T1.SID, T1.SNAME, T2.EID, T2.SUBID, T2.SCIDX, T2.SCORE
            FROM STUDENTS T1, SCORES T2
            WHERE T1.SID = T2.SID
            AND T1.SID = 'S005'
        ) B
        WHERE A.SID = B.SID(+) AND A.SUBID = B.SUBID(+) AND
        B.SID IS NULL
        ;
        
        -- 평균이 80점이상인 학생 아이디
        SELECT A.SID, A.AVG_SCORE FROM 
        (
            SELECT SID, AVG(SCORE) AS AVG_SCORE
            FROM SCORES
            GROUP BY SID
        )            
        WHERE AVG_SCORE >= 80
        ;
        
        -- 평균점수 높은 학생부터 낮은 학생으로 정렬
        SELECT SID, AVG(SCORE) AS AVG_SCORE
        FROM SCORES
        GROUP BY SID
        HAVING AVG(SCORES) >= 80;
        
        
        
        
        
        
    --6. 남자 교수님들이 출제한 시험의 총점과 평균을 구해주세요
    
    --7. 각 학생별로 시험을 치룬 과목수를 리스트로 보여주세요
        
    --8. 1980년대생 교수들이 출제한 과목을 리스트로 보여주세요
    
    --9. 시험출제를 하지 않은 교수를 보여주세요
    
    --10. 여자교수님들이 출제한 시험의 총점과 평균을 구해주세요
    
    --11. 20대 여학생이 치른 시험의 총점과 평균을 구해주세요
    
    --12. 각 지역별로 학생들의 총점과 평균을 구해주세요
    
    --13. 각 과목(시험아님)별로 평균점수를 구해주세요
    
    --14. 모든학생들의 총점과 평균 점수를 보여주세요
    
    --15. 각 교수별로 출제한 시험의 평균 점수를 보여주세요
    
    --16. 시험별로 시험을 치르지 않은 학생 리스트를 보여주세요
    
    --17. 평균점수가 가장 높은 시험의 가장높은 점수를 받은 학생을 찾아주세요
    
    --18. 평균점수가 가장 낮은 시험의 가장낮은 점수를 받은 학생을 찾아주세요
    
    --19. 60점미만이면 재시험이라고 하면 재시험을 쳐야 하는 시험과 학생수를 보여주세요
    
    --20. 가장 평균이 높은 시험을 출제한 교수가 사는 지역에 살고 있는 학생리스트를 보여주세요