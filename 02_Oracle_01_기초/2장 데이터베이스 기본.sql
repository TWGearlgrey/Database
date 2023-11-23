/**
    ��¥ : 2023/10/02
    �̸� : �ѻ��
    ���� : 2�� �����ͺ��̽� �⺻
*/

// �ǽ� 1-1. ���̺� ���� �� ����
CREATE TABLE USER1 (
    ID      VARCHAR2(20),
    NAME    VARCHAR2(20),
    HP      CHAR(13),
    AGE     NUMBER
);
DROP TABLE USER1;

// �ǽ� 1-2. ������ �߰�(insert)
insert into user1 values ('a101', '������', '010-1234-1111', 25);
insert into user1 values ('a102', '������', '010-1234-2222', 23);
insert into user1 values ('a103', '�庸��', '010-1234-3333', 32);
insert into user1 (id, name, age) values ('a104', '������', 45);
insert into user1 (id, name, hp) values ('a105', '�̼���', '010-1234-5555');

// �ǽ� 1-3. ������ ��ȸ(select)
select * from user1;
select * from user1 where id='a101';
select * from user1 where name='������';
select * from user1 where age > 30;
select  id, name, age from user1;

// �ǽ� 1-4. ������ ����(update)
update user1 set hp='010-1234-4444' where id='a104';
update user1 set age=51 where id='a105';
update user1 set hp='010-1234-1001', age=27 where id='a101';

// �ǽ� 1-5. ������ ����(delete)
delete from user1 where id='a101';
delete from user1 where id='a102' and age=25;
delete from user1 where age >= 30 ;

// �ǽ� 2-1. �⺻Ű ����
CREATE TABLE USER2 (
    ID      VARCHAR2(20) PRIMARY KEY,
    NAME    VARCHAR2(20),
    HP      CHAR(13),
    AGE     NUMBER(2)
);

insert into user2 values ('a101', '������', '010-1234-1001', 21);
insert into user2 values ('a102', '������', '010-1234-1002', 22);
insert into user2 values ('a103', '������', '010-1234-1003', 23);
insert into user2 values ('a104', '�庸��', '010-1234-1004', 24);
insert into user2 values ('a105', '�̼���', '010-1234-1005', 25);
insert into user2 values ('a106', '�����', '010-1234-1006', 26);
insert into user2 values ('a107', '�̼���', '010-1234-1007', 27);
insert into user2 values ('a108', '���߱�', '010-1234-1008', 28);
insert into user2 values ('a109', '������', '010-1234-1009', 29);
insert into user2 values ('a110', '�����ҹ�', '010-1234-1010', 30);


// �ǽ� 2-2. ����Ű ����
CREATE TABLE USER3 (
    ID      VARCHAR2(20) PRIMARY KEY,
    NAME    VARCHAR2(20),
    HP      CHAR(13) UNIQUE,
    AGE     NUMBER(3)
);

insert into user3 values ('a101', '������', '010-1234-1001', 21);
insert into user3 values ('a102', '������', '010-1234-1002', 22);
insert into user3 values ('a103', '������', '010-1234-1003', 23);
insert into user3 values ('a104', '�庸��', '010-1234-1004', 24);
insert into user3 values ('a105', '�̼���', '010-1234-1005', 25);
insert into user3 values ('a106', '�����', '010-1234-1006', 26);
insert into user3 values ('a107', '�̼���', '010-1234-1007', 27);
insert into user3 values ('a108', '���߱�', '010-1234-1008', 28);
insert into user3 values ('a109', '������', '010-1234-1009', 29);
insert into user3 values ('a110', '�����ҹ�', '010-1234-1010', 30);



// �ǽ� 2-3. �ܷ�Ű �����ϱ�
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

INSERT INTO PARENT VALUES ('P101', '�輭��', '010-1234-1001');
INSERT INTO PARENT VALUES ('P102', '�̼���', '010-1234-1002');
INSERT INTO PARENT VALUES ('P103', '�Ż��Ӵ�', '010-1234-1003');

INSERT INTO CHILD VALUES ('C101', '������', '010-1234-2001', 'P101');
INSERT INTO CHILD VALUES ('C102', '�̹��', '010-1234-2002', 'P102');
INSERT INTO CHILD VALUES ('C103', '�̹��', '010-1234-2003', 'P103');
INSERT INTO CHILD VALUES ('C104', '����', '010-1234-2004', 'P104'); 
// -> �θ�Ű('P104')�� ���� ���� �߻�!


// �ǽ� 2-4. DEFAULT�� NOT NULL �ǽ�
CREATE TABLE USER4 (
    NAME    VARCHAR2(20) NOT NULL,
    GENDER  CHAR(1) NOT NULL,
    AGE     INT DEFAULT 1,
    ADDR    VARCHAR2(255)
);

INSERT INTO USER4 VALUES ('������', 'M', 23, '���ؽ�');
INSERT INTO USER4 VALUES ('������', 'M', 21, '���ֽ�');
INSERT INTO USER4 (NAME, GENDER, ADDR) VALUES ('�Ż��Ӵ�', 'F', '������');
INSERT INTO USER4 (NAME, GENDER) VALUES ('�̼���', 'M');
INSERT INTO USER4 (NAME, GENDER, AGE) VALUES ('�����', 'M', 23);
// -> GENDER�� NOT NULL�̱⶧���� �ݵ�� INSERT ���־�� ��.


// �ǽ� 2-5. CHECK �������� �ǽ�
CREATE TABLE USER5 (
    NAME    VARCHAR2(20) NOT NULL,
    GENDER  CHAR(1) NOT NULL CHECK(GENDER IN('M', 'F')),
    AGE     INT DEFAULT 1 CHECK(AGE > 0 AND AGE < 100),
    ADDR    VARCHAR2(255)
);

INSERT INTO USER5 VALUES ('������', 'M', 23, '���ؽ�');
INSERT INTO USER5 VALUES ('������', 'M', 21, '���ֽ�');
INSERT INTO USER5 (NAME, GENDER, ADDR) VALUES ('�Ż��Ӵ�', 'F', '������');
INSERT INTO USER5 (NAME, GENDER) VALUES ('�̼���', 'M');
INSERT INTO USER5 (NAME, GENDER, AGE) VALUES ('�����', 'M', 33);



// �ǽ� 3-1. ������ ���� ��ȸ
SELECT * FROM DICT;
SELECT TABLE_NAME FROM USER_TABLES;
SELECT OWNER , TABLE_NAME FROM ALL_TABLES;


// �ǽ� 3-2. �ε��� ��ȸ/����/����
-- ���� ����� �ε��� ��ȸ
SELECT * FROM USER_INDEXES;

-- ���� ����� �ε��� ���� ��ȸ
SELECT * FROM USER_IND_COLUMNS;

-- �ε��� ����
CREATE INDEX IDX_USER1_ID ON USER1 (ID);
SELECT * FROM USER_IND_COLUMNS;

-- �ε��� ����
DROP INDEX IDX_USER1_ID;
SELECT * FROM USER_IND_COLUMNS;

// �ǽ� 3-3. �� ���� ���� �Ҵ�
GRANT CREATE VIEW TO scott;

// �ǽ� 3-4. �� ����/��ȸ/����
-- �� ���� (���� ���̺�)
CREATE VIEW VW_USER1 AS (SELECT NAME, HP, AGE FROM USER1);
CREATE VIEW VW_USER2_AGE_UNDER30 AS (
    SELECT * FROM USER2 WHERE AGE < 30
);

-- �� ��ȸ
SELECT * FROM VW_USER1;
SELECT * FROM VW_USER2_AGE_UNDER30;

-- �� ����
DROP VIEW VW_USER1;
DROP VIEW VW_USER2_AGE_UNDER30;


// �ǽ� 3-5. ������ �ǽ�
CREATE TABLE USER6 (
    SEQ NUMBER PRIMARY KEY,
    NAME VARCHAR2(20),
    GENDER CHAR(1),
    AGE NUMBER,
    ADDR VARCHAR2(255)
);

// �ǽ� 3-6. ������ ����
CREATE SEQUENCE SEQ_USER6 INCREMENT BY 1 START WITH 1;

// �ǽ� 3-7. ������ �� �Է�
INSERT INTO USER6 VALUES (SEQ_USER6.NEXTVAL, '������', 'M', 25, '���ؽ�');
INSERT INTO USER6 VALUES (SEQ_USER6.NEXTVAL, '������', 'M', 23, '���ֽ�');
INSERT INTO USER6 VALUES (SEQ_USER6.NEXTVAL, '�Ż��Ӵ�', 'f', 27, '������');


// �ǽ� 4-1. ����� ���� 
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE USER java IDENTIFIED BY "1234";

// �ǽ� 4-2. ����� ��ȸ
SELECT * FROM ALL_USERS;
SELECT * FROM ALL_USERS WHERE USERNAME='JAVA';

// �ǽ� 4-3. ����� ����
ALTER USER JAVA IDENTIFIED BY "12345";
ALTER USER JAVA IDENTIFIED BY "12344";
DROP USER java;
DROP USER java CASCADE;

// �ǽ� 4-4.  ROLE �ο�
GRANT CONNECT, RESOURCE TO JAVA;
GRANT UNLIMITED TABLESPACE TO JAVA;