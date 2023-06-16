#날짜 : 2023/06/16
#이름 : 한상민
#내용 : 3. 데이터베이스 관리

#실습 3-1 ~ 관리자 추가하기
CREATE DATABASE `TestDB`;
CREATE USER 'tester'@'%'IDENTIFIED BY '1234'; 			# 일반 관리자 생성
GRANT ALL PRIVILEGES ON TestDB.*	TO 'tester'@'%'; 		# 권한부여
FLUSH PRIVILEGES; 												# 변경사항 적용
			# %는 모든 외부 ip접속을 허용하는 것.
			# 생성이 안 될 시(1396에러) DROP USER 'tester'@'%'; 실행하여 삭제 후 다시하기


#실습 3-2 ~ 관리자 비밀번호 수정 및 계정 삭제
ALTER USER 'tester'@'%' IDENTIFIED BY '12345';
DROP USER 'tester'@'%';
FLUSH PRIVILEGES;
