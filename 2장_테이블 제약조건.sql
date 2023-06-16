#날짜 : 2023/06/16
#이름 : 한상민
#내용 : 2. 테이블 제약조건  실습

#실습 2-1 ~ 테이블 생성시 기본키 지정하기
CREATE TABLE `User2` (
			`uid`		VARCHAR(10) PRIMARY KEY,
			`name`	VARCHAR(10),
			`hp`		CHAR(13),
			`age`		INT
);


#실습 2-2 ~ 데이터 추가하기
INSERT INTO `User2` VALUES (1, '강아지', NULL, 1);
INSERT INTO `User2` VALUES (2, '송아지', NULL, 1);
INSERT INTO `User2` VALUES (3, '망아지', NULL, 1);


#실습 2-3 ~ 테이블 생성시 고유키 지정하기
CREATE TABLE `User3` (
			`uid`		VARCHAR(10) PRIMARY KEY,
			`name`	VARCHAR(10),
			`hp`		CHAR(13) UNIQUE,
			`age`		INT
);


#실습 2-4 ~ 데이터 추가하기
INSERT INTO `User3` VALUES (1, '김팬더', '010-1234-1001', 11);
INSERT INTO `User3` VALUES (2, '최뱀', '010-1234-1002', 17);
INSERT INTO `User3` VALUES (3, '이구아나', '010-1234-1003', 29);


#실습 2-5 ~ 테이블 생성시 외래키 지정하기
CREATE TABLE `Parent` (
	`pid`		VARCHAR(10) PRIMARY KEY,
	`name`	VARCHAR(10),
	`hp`		CHAR(13) UNIQUE
);

CREATE TABLE `Child` (
	`cid`		VARCHAR(10) PRIMARY KEY,
	`name`	VARCHAR(10),
	`hp`		CHAR(13) UNIQUE,
	`pid`		VARCHAR(10),
	FOREIGN KEY (`pid`) REFERENCES `Parent` (`pid`)
);


#실습 2-6 ~ 데이터 추가하기
INSERT INTO `Parent` VALUES (1, '하나아', '010-1234-1001');
INSERT INTO `Parent` (`pid`, `name`, `hp`) VALUES (2, '두우울', '010-1234-1002');
INSERT INTO `Parent` SET `pid`=3, `name`='세에엣', `hp`='010-1234-1003';

INSERT INTO `Child` VALUES (1, '하낫', '010-1234-1001', 1);
INSERT INTO `Child` VALUES (2, '두웃', '010-1234-1002', 2);
INSERT INTO `Child` VALUES (3, '세엣', '010-1234-1003', 3);


#실습 2-7 ~ 테이블 생성시 시퀀스 칼럼 지정
CREATE TABLE `User4` (
	`seq`			INT AUTO_INCREMENT PRIMARY KEY,
	`name`		VARCHAR(10),
	`gender`		TINYINT,
	`age`			INT,
	`addr`		VARCHAR(255)
);


#실습 2-8 ~ 데이터 추가하기
INSERT INTO `User4`(`name`, `gender`, `age`, `addr`) 
					VALUES ('철수', 1, 5, '부산광역시');
INSERT INTO `User4`(`name`, `gender`, `age`, `addr`) 
					VALUES ('짱구', 1, 5, '광주광역시');
INSERT INTO `User4`(`name`, `gender`, `age`, `addr`) 
					VALUES ('맹구', 1, 5, '인천광역시');


#실습 2-9 ~ DEFAULT값과 NULL 값
CREATE TABLE `User5` (
	`name`	VARCHAR(10) NOT NULL,
	`gender`	TINYINT,
	`age`		INT DEFAULT 1,
	`addr`	VARCHAR(10)
);


#실습 2-10 ~ 데이터 추가하기
INSERT INTO `User5` VALUES ('짱구',1 ,5 , '울산');
INSERT INTO `User5` VALUES ('철수',1 ,5 , '부산');
INSERT INTO `User5` (`name`, `gender`, `addr`) VALUES ('짱아', 2, '울산');


#실습 2-11 ~ 속성(열) 추가하기
ALTER TABLE `User5` ADD `hp` VARCHAR(20);
ALTER TABLE `User5` ADD `birth` CHAR(10) DEFAULT '0000-00-00' AFTER `name`;


#실습 2-12 ~ 속성(열) 자료형 변경
ALTER TABLE `User5` MODIFY `hp` CHAR(13);
ALTER TABLE `User5` MODIFY `age` TINYINT;


#실습 2-13 ~ 속성(열) 이름과 자료형 변경
ALTER TABLE `User5` CHANGE COLUMN `addr` `address` VARCHAR(100);


#실습 2-14 ~ 속성(열) 삭제
ALTER TABLE `User5` DROP `gender`;


#실습 2-15 ~ 테이블 복사하기
CREATE TABLE `User6` LIKE `User5`; #User5와 같은 서식으로 User6 생성 (틀만 복사됨)


#실습 2-16 ~ 테이블 데이터 복사
INSERT INTO `User6` SELECT * FROM `User5`;