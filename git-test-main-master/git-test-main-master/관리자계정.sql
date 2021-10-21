select sysdate from dual;

ALTER USER HR ACCOUNT UNLOCK  
IDENTIFIED BY 1234;

--scott 계정을 설치및 비번 정하기
@C:\oraclexe\app\oracle\product\11.2.0\server\rdbms\admin\scott.sql;
ALTER USER scott ACCOUNT UNLOCK  
IDENTIFIED BY 1234;