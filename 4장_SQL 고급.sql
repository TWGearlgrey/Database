#날짜 : 2023/06/16
#이름 : 한상민
#내용 : 4. 고급 실습하기

#실습 4-1 ~ 요구사항에 맞춰 테이블 생성하기 (SQL 실습준비)
CREATE TABLE `Member` (
	`uid`		VARCHAR(10) PRIMARY KEY,
	`name`	VARCHAR(10) NOT NULL,
	`hp`		CHAR(13) UNIQUE,
	`pos`		VARCHAR(10) DEFAULT '사원',
	`dep`		INT,
	`rdate`	DATETIME NOT NULL
);

CREATE TABLE `Department` (
	`depNo`	INT PRIMARY KEY,
	`name`	VARCHAR(10) NOT NULL,
	`tal`		CHAR(12) NOT NULL
);

CREATE TABLE `Sales` (
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`uid`		VARCHAR(10) NOT NULL,
	`year`	YEAR NOT NULL,
	`month`	TINYINT NOT NULL,
	`sale`	INT NOT NULL
);


#실습 4-2
INSERT INTO `Member` VALUES ('a101', '박혁거세', '010-1234-1001', '부장', 101, '2023-06-16 16:46:13');
INSERT INTO `Member` VALUES ('a102', '김유신', '010-1234-1002', '차장', 101, '2023-06-16 16:46:13');
INSERT INTO `Member` VALUES ('a103', '김춘추', '010-1234-1003', '사원', 101, '2023-06-16 16:46:13');
INSERT INTO `Member` VALUES ('a104', '장보고', '010-1234-1004', '대리', 102, '2023-06-16 16:46:13');
INSERT INTO `Member` VALUES ('a105', '강감찬', '010-1234-1005', '과장', 102, '2023-06-16 16:46:13');
INSERT INTO `Member` VALUES ('a106', '이성계', '010-1234-1006', '차장', 103, '2023-06-16 16:46:13');
INSERT INTO `Member` VALUES ('a107', '정철', '010-1234-1007', '차장', 103, '2023-06-16 16:46:13');
INSERT INTO `Member` VALUES ('a108', '이순신', '010-1234-1008', '부장', 104, '2023-06-16 16:46:13');
INSERT INTO `Member` VALUES ('a109', '허균', '010-1234-1009', '부장', 104, '2023-06-16 16:46:13');
INSERT INTO `Member` VALUES ('a110', '정약용', '010-1234-1010', '사원', 105, '2023-06-16 16:46:13');
INSERT INTO `Member` VALUES ('a111', '박지원', '010-1234-1011', '사원', 105, '2023-06-16 16:46:13');

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 1, 98100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 1, 136000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 1, 80100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2018, 1, 78000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 1, 93000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 2, 23500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 2, 126000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 2, 18500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 2, 19000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2018, 2, 53000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2019, 1, 24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 1, 109000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 1, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 1, 53500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2019, 1, 24000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 2, 160000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 2, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 2, 43000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2019, 2, 24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2019, 2, 109000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 1, 201000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 1, 63000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 1, 74000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2020, 1, 122000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2020, 1, 111000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 2, 120000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2020, 2, 93000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 2, 84000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 2, 180000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a108', 2020, 2, 76000);

INSERT INTO `Department` VALUES (101, '영업1부', '051-512-1001');
INSERT INTO `Department` VALUES (102, '영업2부', '051-512-1002');
INSERT INTO `Department` VALUES (103, '영업3부', '051-512-1003');
INSERT INTO `Department` VALUES (104, '영업4부', '051-512-1004');
INSERT INTO `Department` VALUES (105, '영업5부', '051-512-1005');
INSERT INTO `Department` VALUES (106, '영업지원부', '051-512-1006');
INSERT INTO `Department` VALUES (107, '안서부', '051-512-1007');


SELECT * FROM `Member`;
SELECT * FROM `Sales`;
SELECT * FROM `Department`;


#실습 4-3 ~ 조건에 일치하는 레코드 조회
SELECT * FROM `Member` WHERE `name`='김유신';
SELECT * FROM `Member` WHERE `pos`='차장' AND dep=101;
SELECT * FROM `Member` WHERE `pos`='차장' OR dep=101;
SELECT * FROM `Member` WHERE `name`!='김춘추';
SELECT * FROM `Member` WHERE `name`<>'김춘추'; # <>는 같지 않음이다.
SELECT * FROM `Member` WHERE `pos` = '사원' OR '대리'; #pos가 사원 OR 대리인 것
SELECT * FROM `Member` WHERE `pos` IN('사원', '대리'); #pos가 사원 OR 대리인 것
SELECT * FROM `Member` WHERE `dep` IN(101, 102, 103);
SELECT * FROM `Member` WHERE `name` LIKE '%신'; # '신'으로 끝나는 멤버를 조회
SELECT * FROM `Member` WHERE `name` LIKE '김%';
SELECT * FROM `Member` WHERE `name` LIKE '김__';
SELECT * FROM `Member` WHERE `name` LIKE '_성_';
SELECT * FROM `Member` WHERE `name` LIKE '정_'; # '정'으로 시작하는 이름이 두 자인 멤버. 즉 언더바는 자릿수.
SELECT * FROM `Sales` WHERE `sale` > 50000;
SELECT * FROM `Sales` WHERE `sale` >= 50000 AND `sale` < 100000 AND `month`=1;
SELECT * FROM `Sales` WHERE `sale` BETWEEN 50000 AND 100000;
SELECT * FROM `Sales` WHERE `sale` NOT BETWEEN 50000 AND 100000;
SELECT * FROM `Sales` WHERE `year` IN(2020);
SELECT * FROM `Sales` WHERE `month` IN(1, 2);


#실습 4-4 ~ 오름/내림차순 정렬
SELECT * FROM `Sales` ORDER BY `sale`;		  #오름차순
SELECT * FROM `Sales` ORDER BY `sale` ASC;  #오름차순
SELECT * FROM `Sales` ORDER BY `sale` DESC; #내림차순
SELECT * FROM `Member` ORDER BY `name`;
SELECT * FROM `Member` ORDER BY `name` DESC;
SELECT * FROM `Member` ORDER BY `rdate` ASC;
SELECT * FROM `Sales` WHERE `sale` > 50000 ORDER BY `sale` DESC;
SELECT * FROM `Sales` WHERE `sale` > 50000 ORDER BY `year`, `month`, `sale` DESC;
															#year와 month에는 ASC가 생략 돼 있음


#실습 4-5 ~ 레코드 수를 제한해서 조회
SELECT * FROM `Sales` LIMIT 3;
SELECT * FROM `Sales` LIMIT 0, 3; # 앞 숫자는 START, 뒷 숫자는 LENGTH
SELECT * FROM `Sales` LIMIT 1, 2;
SELECT * FROM `Sales` LIMIT 5, 3;
SELECT * FROM `Sales` ORDER BY `sale` DESC LIMIT 3, 5;
SELECT * FROM `Sales` WHERE `sale` < 50000 ORDER BY `sale` DESC LIMIT 3;
SELECT * FROM `Sales` WHERE `sale` > 50000 ORDER BY `year` DESC, `month`, `sale` DESC LIMIT 5;
		#year는 내림차순, 거기서 month를 오름차순, 다시 거기서 sale을 내림차순으로 하여 5개로 제한


#실습 4-6 ~ 칼럼명을 별명으로 사용하기
SELECT SUM(`sale`) AS `합계` FROM `Sales`;
SELECT AVG(`sale`) AS `평균` FROM `Sales`; # 별명(AS `평균`)을 생략해도 된다.



SELECT COUNT(*) AS `갯수` FROM `Sales`;

SELECT SUBSTRING(`hp`, 10, 4) AS '전화번호 끝자리' FROM `Member`; #10은 START, 4는 SIZE.

INSERT INTO `Member` VALUES ('b101', '을지문덕', '010-5555-1234', '사장', 107, NOW());


#실습 4-7 ~ 2018년 1월 매출 총합
SELECT SUM(`sale`) AS `총합` FROM `Sales` WHERE `year`=2018 AND `month`=1;


#실습 4-8 ~ 2019년 2월 5만원 이상 매출 총합 및 평균
SELECT 
	SUM(`sale`) AS `총합`, 
	AVG(`sale`) AS `평균` 
FROM `Sales` 
WHERE `year`=2019 AND `month`=2 AND `sale`>=50000;


#실습 4-9 ~ 2020년 전체 매출 가운데 최저, 최고 매출


#실습 4-10
SELECT VERSION();
SELECT `uid` FROM `Sales` GROUP BY `uid`; #8버전부터는 SELECT * FROM으로 그루핑이 안 됨.
SELECT `year` FROM `Sales` GROUP BY `year`;
SELECT `uid`, `year` FROM `Sales` GROUP BY `uid`, `year`;

SELECT 
	`uid`, 
	`year`, 
	SUM(`sale`) AS `합계` 
FROM 
	`Sales` 
GROUP BY 
	`uid`, `year`; #아이디와 연도를 가지고 그루핑. 아이디별, 연도별 합계를 구함.

SELECT 							#조건 WHERE과 ORDER BY가 추가 됨.
	`uid`,
	`year`,
	SUM(`sale`) AS `합계`   #그루핑을 하면서 합을 구한 것.
FROM
	`Sales`
WHERE
	`sale` >= 50000
GROUP BY
	`uid`, `year`
ORDER BY
	`합계` DESC; 				#그루핑, 합을 구한것을 정렬한 것.
	
	
#실습 4-11 ~ 그룹화에 검색조건 설정
SELECT 
	`uid`, 
	SUM(sale) AS `합계` 
FROM 
	`Sales` 
GROUP BY 
	`uid` 
HAVING 
	`합계` >= 200000;

SELECT 
	`uid`, 
	SUM(sale) AS `합계` 
FROM 
	`Sales` 
WHERE
	`sale` >= 100000
GROUP BY 
	`uid`, `year`
HAVING  # 그루핑 결과에 대한 조건.
	`합계` >= 200000
ORDER BY 
	`합계` DESC;
	
	
#실습 4-12 ~ 테이블 합치기
CREATE TABLE `Sales2` LIKE `Sales`;
INSERT INTO `Sales2` SELECT * FROM `Sales`;
UPDATE `Sales2` SET `year` = `year` +3;

SELECT * FROM `Sales` UNION SELECT * FROM `Sales2`;

(SELECT * FROM `Sales`) UNION (SELECT * FROM `Sales2`);

SELECT `uid`, `year`, `sale` FROM `Sales` 
UNION SELECT `uid`, `year`, `sale` FROM `Sales2`;

SELECT `uid`, `year`, SUM(sale) AS `합계` FROM `Sales` GROUP BY `uid`, `year`
UNION
SELECT `uid`, `year`, SUM(SALE) AS `합계` FROM `Sales2` GROUP BY `uid`, `year`
ORDER BY `year` ASC, `합계` DESC;


#실습 4-13
SELECT * FROM `Sales` 
INNER JOIN `Member`					#일반적으로 INNER는 생략
ON `Sales`.uid = `Member`.uid;	# 같은 값끼리 매칭을 해서 합친다는 뜻.

SELECT * FROM `Member` 
INNER JOIN `Department` 
ON `Member`.dep = `Department`.depNo;

SELECT * FROM `Sales` AS a #Sales라는 칼럼을 a로 두는 것.(별칭)
JOIN `Member` AS b 
ON a.uid = b.uid;

SELECT * FROM `Member` AS a 
JOIN `Department` AS b
ON a.dep = b.depNo;

SELECT * FROM `Sales` AS a, `Member` AS b
WHERE a.uid = b.uid;

SELECT * FROM `Member` AS a, `Department` AS b 
WHERE a.dep = b.depNo;

SELECT
	a.`seq`, 
	a.`uid`, 
	a.`sale`, 
	b.`name`, 
	b.`pos`
FROM `Sales` AS a 
JOIN `Member` AS b 
ON a.uid = b.uid; #해당 줄 대신 ' USING(`uid`); '를 사용해도 된다.

SELECT a.`seq`, a.`uid`, a.`sale`, b.`name`, b.`pos`
FROM `Sales` AS a JOIN `Member` AS b ON a.uid = b.uid WHERE `sale` >= 100000;

SELECT * 
FROM `Sales` 		AS a 
JOIN `Member` 		AS b ON a.uid = b.uid
JOIN `Department` AS c ON b.dep = c.depNo;


#실습 4-14 ~ 외부조인(LEFT, RIGHT JOIN)
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`)
	VALUES ('p101', 2018, 1, 35000);

SELECT * FROM `Sales` AS a
LEFT JOIN `Member` AS b
ON a.uid = b.uid; 

SELECT * FROM `Sales` AS a
RIGHT JOIN `Member` AS b
ON a.uid = b.uid;


#실습 4-15 ~ 모든 직원의 아이디, 이름, 직급, 부서명을 조회
SELECT
	a.`uid`,				# name만 사용하면 모호한 데이터로 오류 발생. 출처를 밝힐것.
	a.`name`,
	a.`pos`,
	b.`name`
FROM `Member` AS a
JOIN `Department` AS b
ON a.dep = b.depNo; 		#먼저 전체 조회후 출력할 것을 정하기. 
								#부서명은 Member에 없기 때문에 Department와 결합할 것


#실습 4-16 ~ 김유신 직원의 2019년도 매출의 합을 조회
SELECT 
	SUM(`sale`) AS '매출합'
FROM `Sales` AS a
JOIN `Member` AS b
ON a.uid = b.uid
WHERE `name`='김유신' AND `year` = 2019
GROUP BY `year`;


#실습 4-17 ~ 2019년 50000이상 매출에 대해 직원별 매출의 합이 100000원 이상인 
#직원이름, 부서명, 직급, 년도, 매출 합을 조회. 단, 매출 합이 큰 순서부터 정렬
SELECT
	b.`name` 	AS `직원명`,
	c.`name` 	AS `부서명`,
	b.`pos` 		AS `직급`,
	a.`year` 	AS `년도`,
	SUM(`sale`) AS `매출합`
FROM `Sales` 		AS a
JOIN `Member` 		AS b ON a.uid = b.uid
JOIN `Department` AS c ON b.dep = c.depNo
WHERE a.`year`=2019 AND a.`sale`>=50000
GROUP BY a.`uid`
HAVING `매출합` >= 100000
ORDER BY `매출합` DESC;



