-- 예시테이블
CREATE TABLE goods (
   id NUMBER(6) PRIMARY KEY,
   g_name VARCHAR2(10) NOT NULL,
   price NUMBER(10) DEFAULT 1000,
   reg_date DATE
);

SELECT * FROM GOODS;

INSERT INTO GOODS
(id, g_name, price, reg_date)
VALUES (1, '선풍기', '120000', sysdate);

INSERT INTO GOODS
(id, g_name, reg_date)
VALUES (2, '달고나', sysdate);

INSERT INTO GOODS
(id, g_name)
VALUES (3,'깔깔');


INSERT INTO goods
VALUES 

UPDATE GOODS
SET g_name  = '냉장고'
WHERE id = 2;


--행을 삭제 DELETE
DELETE FROM GOODS
WHERE id= 3;

--모든 행 삭제
DELETE FROM goods;

--select 조회 (ALL생략 가능)
SELECT ALL
	CERTI_CD,
	CERTI_NM,
	ISSUE_INSTI_NM
FROM TB_CERTI;

--중복 제거 distinct
SELECT DISTINCT 
	ISSUE_INSTI_NM
FROM TB_CERTI;

--모든 컬럼 조회
--실무에서는 사용하지 마세요
SELECT 
*
FROM TB_CERTI;

--열 별칭 부여 (allias)
SELECT 
te.emp_nm AS "사원이름",
te.addr AS "사원의 거주지 주소"
FROM TB_EMP te
; 

--문자열 연결하기
SELECT 
	CERTI_NM || '('||ISSUE_INSTI_NM||')' AS "자격증 정보"
FROM TB_CERTI
;









