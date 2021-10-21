-- 제약조건 

--NOT NULL : 널값은 입력 안됨

desc departments;


-- UK 유니크  : 중복되지 않음

-- emp_name 은 not null 제약조건, email은 유니크 제약조건
create table emp(
    eno     number(3),
    emp_name VARCHAR2(20) constraint emp1_ename_nn NOT NULL,
    email   VARCHAR2(30),
    CONSTRAINT emp1_email_uk UNIQUE (email)
    );
desc emp;

-- 데이터 입력
insert into emp1 VALUES(208,'KIm', 'KJS@naver.com');
--insert into emp1 values(209, NULL , ABC@naver.com'); -- 널값을 입력할수 없어서 에러발생
--insert into emp1 VALUES(210,'Lee', 'KJS@naver.com'); -- 중복안됨 email 유니크


--check 제약 조건

create table emp2(
    eno     number(3),
    emp_name VARCHAR2(20),
    sal   VARCHAR2(10),
    CONSTRAINT emp2_sal_check check(sal>1000)
    );
    
insert into emp2 values(208, 'Kim', 1200);
insert into emp2 values(209, 'Lee', 900); -- sal 값이 1000보다 커야 된다.

--제약 조건 이름 없이 테이블 생성
DROP table emp;
create table emp (
    eno NUMBER(4) PRIMARY key,
    ename varchar2(20) Not null,
    gno VARCHAR2(13) UNIQUE check (length(gno) >= 0),
    gender varchar2(5) check (gender in('woman','man'))
    );


insert into emp values (1, 'Kim', '12345678' , 'man');
insert into emp values (2, 'Kim', '123456789' , 'woman');


create table members(
    mumber_id number(2) primary key,
    first_name varchar2(50) not null,
    last_name varchar2(50) not null,
    gender varchar2(5) check (gender in('man','woman')),
    birth_day date DEFAULT sysdate ,
    email varchar2(200) unique not null
    );
    desc members;


















