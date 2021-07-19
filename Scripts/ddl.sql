create database  login_proj;
use login_proj;

select database();
select * from users;



CREATE TABLE login_proj.users(
		uid 	int not null auto_increment,
     	id 		VARCHAR(12) not null unique comment '아이디',
     	passwd 	CHAR(41) not null comment '비밀번호',   
     	email VARCHAR(60)  comment '이메일',
     	primary key (uid)
       
)
comment '사용자';

INSERT INTO users VALUES(1,'김예진',password('1234'),'aaa@aaa.com');
COMMIT;
-- 계정 권한 부여
grant all 
   on login_proj.* 
   to 'user_login_proj'@'localhost' identified by 'rootroot';

-- file 권한(backup, load) -- root만 권한 부여 가능
GRANT File 
   ON *.* 
   TO 'user_login_proj'@'localhost';


