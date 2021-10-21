--DML 작업

-- 데이터 입력 INSERT
INSERT into departments(department_id, department_name, manager_id, location_id)
Values (300, 'Game' , 100 , 1700);

select *
from departments
order by department_id desc;

-- 테이블 열의 구조를 확인
DESC departments;

-- 특정 열만 입력 ( 미입력시 NULL)
INSERT into departments(department_id, department_name)
Values (280, 'Music');

--열의 이름들을 생략하면 다 적어야 함
insert into departments
values (290,'Pusan',null,1700);

--1)
insert into departments (department_id,department_name,manager_id,location_id)
values (271,'Sample Dept 1',200,1700);

insert into departments (department_id,department_name,manager_id,location_id)
values (272,'Sample Dept 2',200,1700);

insert into departments (department_id,department_name,manager_id,location_id)
values (273,'Sample Dept 3',200,1700);

-- 데이터의 수정 update : 특정행을 업데이트 함으로 where 절을 작성해야한다.
update departments 
set manager_id = 200
where department_name = 'Game';

select *
from departments
order by department_id desc;

--1)
update departments
set manager_id = 100
where department_id between 150 and 200;

-- 두개이상의 열을 업데이트 ( 열,열, ...)
update departments 
set manager_id = 100 , location_id = 1800
where department_name = 'Game';

-- 데이터의 삭제 delete 
delete from departments
where department_name = 'Music';
 
delete from departments
where department_name = 'Game';
 
delete from departments
where department_name = 'Music';

 
delete from departments
where department_id = 290;

 
delete from departments
where department_name like '%Sample%';

-- 전체 삭제 (where을 적지않았을때)
-- 삭제오류는 직원 테이블에서 사용하고 있는 부서는 바로 삭제 불가
delete from departments;

delete from departments
where department_id >= 120;

-- 커밋 전에 롤백 가능
rollback;

--게임부서를 생성하고 commit 
commit;

--자동 커밋 설정
show autocommit;

--on 실행시에 자동으로 commit
set autocommit on;

-- off 실행시에 수동
set autocommit off;