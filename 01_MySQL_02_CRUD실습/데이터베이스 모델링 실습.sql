# 날짜 : 2023/06/27
# 이름 : 한상민
# 내용 : 데이터베이스 모델링 실습1

#  데이터 입력
INSERT INTO `Students` (`stdNo`, `depNo`, `proNo`, `stdName`, `stdJumin`, `stdHp`, `stdAddr`) 
	VALUES (20101001, 10, 'P10101', '정우성', '760121-1234567', '010-1101-7601', '서울');
INSERT INTO `Students` (`stdNo`, `depNo`, `proNo`, `stdName`, `stdJumin`, `stdHp`, `stdAddr`) 
	VALUES (20101002, 10, 'P10101', '이정재', '750611-1234567', '010-1102-7506', '서울');
INSERT INTO `Students` VALUES (20111011, 11, 'P11103', '전지현', '890530-1234567', '010-1103-8905', 'jjh@naver.com', '대전');
INSERT INTO `Students` VALUES (20111013, 11, 'P11103', '이나영', '790413-1234567', '010-2101-7904', 'lee@naver.com', '대전');
INSERT INTO `Students` VALUES (20111014, 11, 'P11104', '원빈', '660912-1234567', '010-2104-6609', 'one@daum.net', '대전');

INSERT INTO `Students` VALUES (21221010, 22, 'P22110', '장동건', '790728-1234567', '010-3101-7907', 'jang@naver.com', '대구');
INSERT INTO `Students` VALUES (21231002, 23, 'P23102', '고소영', '840615-1234567', '010-4101-8406', 'goso@daum.net', '대구');
INSERT INTO `Students` VALUES (22311011, 31, 'P31104', '김연아', '651021-1234567', '010-5101-6510', 'yuna@daum.net', '대구');
INSERT INTO `Students` (`stdNo`, `depNo`, `proNo`, `stdName`, `stdJumin`, `stdHp`, `stdAddr`) 
	VALUES (22311014, 31, 'P31104', '유재석', '721128-1234567', '010-6101-7211', '부산');
INSERT INTO `Students` (`stdNo`, `depNo`, `proNo`, `stdName`, `stdJumin`, `stdHp`, `stdAddr`) 
	VALUES (22401001, 40, 'P40101', '강호동', '920907-1234567', '010-7103-9209', '부산');

INSERT INTO `Students` VALUES (22401002, 40, 'P40101', '조인성', '891209-1234567', '010-7104-8912', 'join@gmail.com', '광주');
INSERT INTO `Students` VALUES (22421003, 42, 'P42103', '강동원', '770314-1234567', '010-8101-7703', 'dong@naver.com', '광주');


INSERT INTO `Professors` VALUES ('P10101', 10, '김유신',   '750120-1234567', '010-1101-1976', 'kimys@hg.ac.kr',   '서울');
INSERT INTO `Professors` VALUES ('P10102', 10, '계백',     '740610-1234567', '010-1102-1975', 'gaeback@hg.ac.kr', '서울');
INSERT INTO `Professors` VALUES ('P11101', 11, '김관창',   '880529-1234567', '010-1103-1989', 'kwanch@hg.ac.kr',  '대전');
INSERT INTO `Professors` VALUES ('P11103', 11, '김춘추',   '780412-1234567', '010-2101-1979', 'kimcc@hg.ac.kr',   '대전');
INSERT INTO `Professors` VALUES ('P11104', 11, '이사부',   '650911-1234567', '010-2104-1966', 'leesabu@hg.ac.kr', '대전');

INSERT INTO `Professors` VALUES ('P22110', 22, '장보고',   '780727-1234567', '010-3101-1979', 'jangbg@hg.ac.kr',  '대구');
INSERT INTO `Professors` VALUES ('P23102', 23, '선덕여왕', '830614-1234567', '010-4101-1984', 'gueen@hg.ac.kr',   '대구');
INSERT INTO `Professors` VALUES ('P31101', 31, '강감찬',   '641020-1234567', '010-5101-1965', 'kang@hg.ac.kr',    '대구');
INSERT INTO `Professors` VALUES ('P31104', 31, '신사임당', '711127-1234567', '010-6101-1972', 'sinsa@hg.ac.kr',   '부산');
INSERT INTO `Professors` VALUES ('P40101', 40, '이이',     '910906-1234567', '010-7103-1992', 'leelee@hg.ac.kr',  '부산');

INSERT INTO `Professors` VALUES ('P40102', 40, '이황',     '881208-1234567', '010-7104-1989', 'hwang@hg.ac.kr',   '광주');
INSERT INTO `Professors` VALUES ('P42103', 42, '송상현',   '760313-1234567', '010-8101-1977', 'ssh@hg.ac.kr',     '광주');


INSERT INTO `Departments` VALUES (10, '국어국문학학과', '051-510-1010');
INSERT INTO `Departments` VALUES (11, '영어영문학학과', '051-510-1011');
INSERT INTO `Departments` VALUES (20, '경영학과', '051-510-1020');
INSERT INTO `Departments` VALUES (21, '경제학과', '051-510-1021');
INSERT INTO `Departments` VALUES (22, '정치외교학과', '051-510-1022');

INSERT INTO `Departments` VALUES (23, '사회복지학과', '051-510-1023');
INSERT INTO `Departments` VALUES (30, '수학과', '051-510-1030');
INSERT INTO `Departments` VALUES (31, '통계학과', '051-510-1031');
INSERT INTO `Departments` VALUES (32, '생명과학과', '051-510-1032');
INSERT INTO `Departments` VALUES (40, '기계공학과', '051-510-1040');

INSERT INTO `Departments` VALUES (41, '전자공학과', '051-510-1041');
INSERT INTO `Departments` VALUES (42, '컴퓨터공학과', '051-510-1042');


INSERT INTO `Lectures` VALUES (101001, 'P10101', '대학 글쓰기',    2, 10, '본102');
INSERT INTO `Lectures` VALUES (101002, 'P10102', '한국어음운론',   3, 30, '본102');
INSERT INTO `Lectures` VALUES (101003, 'P10102', '한국현대문학사', 3, 30, '본103');
INSERT INTO `Lectures` VALUES (111011, 'P11103', '중세영문학',     3, 25, '본201');
INSERT INTO `Lectures` VALUES (111012, 'P11104', '영미시',         3, 25, '본201');

INSERT INTO `Lectures` VALUES (231110, 'P23102', '사회복지학개론', 1,  8, '별관103');
INSERT INTO `Lectures` VALUES (311002, 'P31101', '통계학의 이해',  2, 16, '별관303');
INSERT INTO `Lectures` VALUES (311003, 'P31104', '기초 통계학',    3, 26, '별관303');
INSERT INTO `Lectures` VALUES (401019, 'P40101', '기계역학',       3, 36, '공학관 102');
INSERT INTO `Lectures` VALUES (421012, 'P42103', '데이터베이스',   3, 32, '공학관 103');


INSERT INTO `Register` (`stdNo`, `lecNo`, `proNo`) VALUES (20101001, 101001, 'P10101');
INSERT INTO `Register` (`stdNo`, `lecNo`, `proNo`) VALUES (20101001, 101002, 'P10102');
INSERT INTO `Register` (`stdNo`, `lecNo`, `proNo`) VALUES (20111013, 111011, 'P11103');
INSERT INTO `Register` (`stdNo`, `lecNo`, `proNo`) VALUES (21231002, 231110, 'P23102');
INSERT INTO `Register` (`stdNo`, `lecNo`, `proNo`) VALUES (22401001, 401019, 'P40101');

INSERT INTO `Register` (`stdNo`, `lecNo`, `proNo`) VALUES (22401001, 421012, 'P42103');
INSERT INTO `Register` (`stdNo`, `lecNo`, `proNo`) VALUES (20101001, 101003, 'P10102');
INSERT INTO `Register` (`stdNo`, `lecNo`, `proNo`) VALUES (22421003, 311003, 'P31104');
INSERT INTO `Register` (`stdNo`, `lecNo`, `proNo`) VALUES (22421003, 421012, 'P42103');
INSERT INTO `Register` (`stdNo`, `lecNo`, `proNo`) VALUES (20111013, 111012, 'P11104');


#문제 1
SELECT `stdNo`   AS `학생번호`,
		 `stdName` AS `이름`, 
		 `stdHp`   AS `휴대폰`, 
		 a.`depNo` AS `학과번호`, 
		 `depName` AS `학과명`
FROM `Students`    AS a
JOIN `Departments` AS b ON a.depNo = b.depNo;


#문제 2
SELECT 
	`proNo`   AS `학생번호`,
	`proName` AS `이름`, 
	`proHp`   AS `휴대폰`, 
	a.`depNo` AS `학과번호`, 
	`depName` AS `학과명`
FROM `Professors`  AS a
JOIN `Departments` AS b ON a.depNo = b.depNo;


#문제 3
SELECT 
	a.`lecNo` AS `강좌번호`,
	`lecName` AS `강좌명`,
	`proName` AS `담당교수명`,
	`proHp`   AS `휴대폰`
FROM `Lectures`   AS a
JOIN `Professors` AS b ON a.proNo = b.proNo;


#문제 4
SELECT 
	a.`lecNo`   AS `강좌번호`,
	a.`lecName` AS `강좌명`,
	b.`proNo`   AS `담당교수 번호`,
	b.`proName` AS `담당교수명`,
	b.`proHp`   AS `휴대폰`,
	c.`depNo`   AS `학과번호`,
	c.`depName` AS `학과명`
FROM `Lectures` AS a
JOIN `Professors`  AS b ON a.proNo = b.proNo
JOIN `Departments` AS c ON b.depNo = c.depNo;


#문제 5
SELECT
	a.`stdNo`   AS `학생번호`,
	c.`stdName` AS `학생명`,
	a.`lecNo`   AS `강좌번호`,
	d.`lecName` AS `강좌명`,
	a.`proNo`   AS `교수번호`,
	b.`proName` AS `교수명`
FROM `Register` AS a
JOIN `Professors`  AS b ON a.proNo = b.proNo
JOIN `Students`    AS c ON a.stdNo = c.stdNo
JOIN `Lectures`	 AS d ON b.proNo = d.proNo;


#문제 6
UPDATE `Register` 
SET 
	`regAttenScore`=10, `regMidScore`=30, `regFinalScore`=30
WHERE 
	`stdNo`=20101001 AND `lecNo`=101001;

UPDATE `Register` 
SET 
	`regAttenScore`=20, `regMidScore`=20, `regFinalScore`=30
WHERE 
	`stdNo`=20101001 AND `lecNo`=101002;

UPDATE `Register` 
SET 
	`regAttenScore`=20, `regMidScore`=28, `regFinalScore`=40
WHERE 
	`stdNo`=20111013 AND `lecNo`=111011;

UPDATE `Register` 
SET 
	`regAttenScore`=10, `regMidScore`=30, `regFinalScore`=40
WHERE 
	`stdNo`=21231002 AND `lecNo`=231110;

UPDATE `Register` 
SET 
	`regAttenScore`=20, `regMidScore`=28, `regFinalScore`=40
WHERE 
	`stdNo`=22401001 AND `lecNo`=401019;

UPDATE `Register` 
SET 
	`regAttenScore`=10, `regMidScore`=40, `regFinalScore`=40
WHERE 
	`stdNo`=22401001 AND `lecNo`=421012;

UPDATE `Register` 
SET 
	`regAttenScore`=20, `regMidScore`=40, `regFinalScore`=40
WHERE 
	`stdNo`=20101001 AND `lecNo`=101003;

UPDATE `Register` 
SET 
	`regAttenScore`=20, `regMidScore`=40, `regFinalScore`=35
WHERE 
	`stdNo`=22421003 AND `lecNo`=311003;

UPDATE `Register` 
SET 
	`regAttenScore`=15, `regMidScore`=15, `regFinalScore`=10
WHERE 
	`stdNo`=22421003 AND `lecNo`=421012;

UPDATE `Register` 
SET 
	`regAttenScore`=15, `regMidScore`=10, `regFinalScore`=35
WHERE 
	`stdNo`=20111013 AND `lecNo`=111012;



######문제 6 자동점수 넣기
UPDATE `Register` SET
	`regAttenScore` = CEIL(RAND() * 100),
	`regMidScore` = CEIL(RAND() * 100),
	`regFinalScore` = CEIL(RAND() * 100);



#문제 7
UPDATE `Register` SET 
		`regTotal` = (`regAttenScore` + `regMidScore` + `regFinalScore`)/3;


#문제 8
UPDATE `Register` SET 
		`regGrade` = if ( `regTotal` >= 90, 'A',
						if ( `regTotal` >= 80, 'B',
						if ( `regTotal` >= 70, 'C',
						if ( `regTotal` >= 60, 'D', 'F'))));
						
						
#문제 9
SELECT MAX(`regTotal`) AS `총점이 가장 큰 점수`
FROM `Register`;

SELECT `regTotal` FROM `Register` ORDER BY `regTotal` DESC LIMIT 1;


#문제 10
SELECT 
	AVG(`regTotal`) AS 평균
FROM `Register` AS a
JOIN `Students` AS b ON a.stdNo = b.stdNo
WHERE b.stdName = '정우성';