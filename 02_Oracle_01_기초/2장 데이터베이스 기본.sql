/**
    날짜 : 2023/10/02
    이름 : 한상민
    내용 : 2장 데이터베이스 기본
*/

// 실습 1-1. 테이블 생성 및 삭제
CREATE TABLE USER1 (
    ID      VARCHAR2(20),
    NAME    VARCHAR2(20),
    HP      CHAR(13),
    AGE     NUMBER
);
DROP TABLE USER1;

// 실습 1-2. 데이터 추가(insert)
insert into user1 values ('a101', '김유신', '010-1234-1111', 25);
insert into user1 values ('a102', '김춘추', '010-1234-2222', 23);
insert into user1 values ('a103', '장보고', '010-1234-3333', 32);
insert into user1 (id, name, age) values ('a104', '강감찬', 45);
insert into user1 (id, name, hp) values ('a105', '이순신', '010-1234-5555');

// 실습 1-3. 데이터 조회(select)
select * from user1;
select * from user1 where id='a101';
select * from user1 where name='김춘추';
select * from user1 where age > 30;
select  id, name, age from user1;

// 실습 1-4. 데이터 수정(update)
update user1 set hp='010-1234-4444' where id='a104';
update user1 set age=51 where id='a105';
update user1 set hp='010-1234-1001', age=27 where id='a101';

// 실습 1-5. 데이터 삭제(delete)
delete from user1 where id='a101';
delete from user1 where id='a102' and age=25;
delete from user1 where age >= 30 ;

// 실습 2-1. 기본키 설정
CREATE TABLE USER2 (
    ID      VARCHAR2(20) PRIMARY KEY,
    NAME    VARCHAR2(20),
    HP      CHAR(13),
    AGE     NUMBER(2)
);

insert into user2 values ('a101', '김유신', '010-1234-1001', 21);
insert into user2 values ('a102', '김춘추', '010-1234-1002', 22);
insert into user2 values ('a103', '강감찬', '010-1234-1003', 23);
insert into user2 values ('a104', '장보고', '010-1234-1004', 24);
insert into user2 values ('a105', '이순신', '010-1234-1005', 25);
insert into user2 values ('a106', '정약용', '010-1234-1006', 26);
insert into user2 values ('a107', '이성계', '010-1234-1007', 27);
insert into user2 values ('a108', '안중근', '010-1234-1008', 28);
insert into user2 values ('a109', '안익태', '010-1234-1009', 29);
insert into user2 values ('a110', '연개소문', '010-1234-1010', 30);


// 실습 2-2. 고유키 설정
CREATE TABLE USER3 (
    ID      VARCHAR2(20) PRIMARY KEY,
    NAME    VARCHAR2(20),
    HP      CHAR(13) UNIQUE,
    AGE     NUMBER(3)
);

insert into user3 values ('a101', '김유신', '010-1234-1001', 21);
insert into user3 values ('a102', '김춘추', '010-1234-1002', 22);
insert into user3 values ('a103', '강감찬', '010-1234-1003', 23);
insert into user3 values ('a104', '장보고', '010-1234-1004', 24);
insert into user3 values ('a105', '이순신', '010-1234-1005', 25);
insert into user3 values ('a106', '정약용', '010-1234-1006', 26);
insert into user3 values ('a107', '이성계', '010-1234-1007', 27);
insert into user3 values ('a108', '안중근', '010-1234-1008', 28);
insert into user3 values ('a109', '안익태', '010-1234-1009', 29);
insert into user3 values ('a110', '연개소문', '010-1234-1010', 30);



// 실습 2-3. 외래키 지정하기
CREATE TABLE PARENT (
    PID     VARCHAR2(20) PRIMARY KEY,
    NAME    VARCHAR2(20),
    HP      CHAR(13) UNIQUE
);

CREATE TABLE CHILD (
    CID     VARCHAR2(20) PRIMARY KEY,
    NAME    VARCHAR2(20),
    HP      CHAR(13) UNIQUE,
    PARENT  VARCHAR2(20),
    FOREIGN KEY (PARENT) REFERENCES PARENT (PID)
);

INSERT INTO PARENT VALUES ('P101', '김서현', '010-1234-1001');
INSERT INTO PARENT VALUES ('P102', '이성계', '010-1234-1002');
INSERT INTO PARENT VALUES ('P103', '신사임당', '010-1234-1003');

INSERT INTO CHILD VALUES ('C101', '김유신', '010-1234-2001', 'P101');
INSERT INTO CHILD VALUES ('C102', '이방우', '010-1234-2002', 'P102');
INSERT INTO CHILD VALUES ('C103', '이방원', '010-1234-2003', 'P103');
INSERT INTO CHILD VALUES ('C104', '이이', '010-1234-2004', 'P104'); 
// -> 부모키('P104')가 없어 오류 발생!


// 실습 2-4. DEFAULT와 NOT NULL 실습
CREATE TABLE USER4 (
    NAME    VARCHAR2(20) NOT NULL,
    GENDER  CHAR(1) NOT NULL,
    AGE     INT DEFAULT 1,
    ADDR    VARCHAR2(255)
);

INSERT INTO USER4 VALUES ('김유신', 'M', 23, '김해시');
INSERT INTO USER4 VALUES ('김춘추', 'M', 21, '경주시');
INSERT INTO USER4 (NAME, GENDER, ADDR) VALUES ('신사임당', 'F', '강릉시');
INSERT INTO USER4 (NAME, GENDER) VALUES ('이순신', 'M');
INSERT INTO USER4 (NAME, GENDER, AGE) VALUES ('정약용', 'M', 23);
// -> GENDER는 NOT NULL이기때문에 반드시 INSERT 해주어야 함.


// 실습 2-5. CHECK 제약조건 실습
CREATE TABLE USER5 (
    NAME    VARCHAR2(20) NOT NULL,
    GENDER  CHAR(1) NOT NULL CHECK(GENDER IN('M', 'F')),
    AGE     INT DEFAULT 1 CHECK(AGE > 0 AND AGE < 100),
    ADDR    VARCHAR2(255)
);

INSERT INTO USER5 VALUES ('김유신', 'M', 23, '김해시');
INSERT INTO USER5 VALUES ('김춘추', 'M', 21, '경주시');
INSERT INTO USER5 (NAME, GENDER, ADDR) VALUES ('신사임당', 'F', '강릉시');
INSERT INTO USER5 (NAME, GENDER) VALUES ('이순신', 'M');
INSERT INTO USER5 (NAME, GENDER, AGE) VALUES ('정약용', 'M', 33);



// 실습 3-1. 데이터 사전 조회
SELECT * FROM DICT;
SELECT TABLE_NAME FROM USER_TABLES;
SELECT OWNER , TABLE_NAME FROM ALL_TABLES;


// 실습 3-2. 인덱스 조회/생성/삭제
-- 현재 사용자 인덱스 조회
SELECT * FROM USER_INDEXES;

-- 현재 사용자 인덱스 정보 조회
SELECT * FROM USER_IND_COLUMNS;

-- 인덱스 생성
CREATE INDEX IDX_USER1_ID ON USER1 (ID);
SELECT * FROM USER_IND_COLUMNS;

-- 인덱스 삭제
DROP INDEX IDX_USER1_ID;
SELECT * FROM USER_IND_COLUMNS;

// 실습 3-3. 뷰 생성 권한 할당
GRANT CREATE VIEW TO scott;

// 실습 3-4. 뷰 생성/조회/삭제
-- 뷰 생성 (가상 테이블)
CREATE VIEW VW_USER1 AS (SELECT NAME, HP, AGE FROM USER1);
CREATE VIEW VW_USER2_AGE_UNDER30 AS (
    SELECT * FROM USER2 WHERE AGE < 30
);

-- 뷰 조회
SELECT * FROM VW_USER1;
SELECT * FROM VW_USER2_AGE_UNDER30;

-- 뷰 삭제
DROP VIEW VW_USER1;
DROP VIEW VW_USER2_AGE_UNDER30;


// 실습 3-5. 시퀀스 실습
CREATE TABLE USER6 (
    SEQ NUMBER PRIMARY KEY,
    NAME VARCHAR2(20),
    GENDER CHAR(1),
    AGE NUMBER,
    ADDR VARCHAR2(255)
);

// 실습 3-6. 시퀀스 생성
CREATE SEQUENCE SEQ_USER6 INCREMENT BY 1 START WITH 1;

// 실습 3-7. 시퀀스 값 입력
INSERT INTO USER6 VALUES (SEQ_USER6.NEXTVAL, '김유신', 'M', 25, '김해시');
INSERT INTO USER6 VALUES (SEQ_USER6.NEXTVAL, '김춘추', 'M', 23, '진주시');
INSERT INTO USER6 VALUES (SEQ_USER6.NEXTVAL, '신사임당', 'f', 27, '강릉시');


// 실습 4-1. 사용자 생성 
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE USER java IDENTIFIED BY "1234";

// 실습 4-2. 사용자 조회
SELECT * FROM ALL_USERS;
SELECT * FROM ALL_USERS WHERE USERNAME='JAVA';

// 실습 4-3. 사용자 변경
ALTER USER JAVA IDENTIFIED BY "12345";
ALTER USER JAVA IDENTIFIED BY "12344";
DROP USER java;
DROP USER java CASCADE;

// 실습 4-4.  ROLE 부여
GRANT CONNECT, RESOURCE TO JAVA;
GRANT UNLIMITED TABLESPACE TO JAVA;