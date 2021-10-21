-- DDL 테이블 생성 수정 삭제

--테이블 생성
create table 테스트 (
    문자열 varchar2 (100),
    숫자 NUMBER,
    날짜 date DEFAULT sysdate
    );
    
desc 테스트;

select *
from 테스트;

-- 데이터 입력
insert into 테스트
values ('HTML', 5 , '2021/10/08');
insert into 테스트
values ('CSS', 3 , sysdate );
insert into 테스트(문자열,숫자)
values ('자바',7);

-- 테이블 삭제
drop table 테스트;

-- 기존 테이블 복사해서 만드는 방법
-- 열 구조만 복사
create table EMP_TEMP
as
select *
from employees
where 1 != 1; 

select *
from emp_temp;

-- 80번 부서의 직원들만 따로 테이블 생성
create table EMP80
as
select employee_id 직원번호, last_name 이름, salary 월급 , salary*12 연봉, hire_date 고용일
from employees
where department_id = 80; 
desc emp80;
select *
from emp80;

--1)
create table stmans(id,job,sal)
as
select employee_id,job_id,salary
from employees
where job_id = 'ST_MAN';

select *
from stmans;

create table sample_product (
                            product_id number,
                            product_name varchar2(20),
                            menu_date date 
                            );

select *
from sample_product;

desc;
