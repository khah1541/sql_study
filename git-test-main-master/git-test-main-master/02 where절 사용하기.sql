--where 절
select *
FROM employees
where salary > '14000'; -- 월급이 14000보다 많은 직원

select *
FROM employees
where last_name = 'King'; -- 문자열은 따옴표로 표시, 이름이 King인 직원

select *
from employees
where hire_date < '02/06/10'; --날짜를 비교, 고용일이 2002년 6월 10일 이전

select *
from employees
where employee_id = 100;

SELECT *
FROM employees
where first_name = 'David';

select *
from employees
where employee_id <=105;

select*
from job_history
where start_date >='2006/03/03';

SELECT *
from departments
where location_id <> 1700;

-- 논리 연산자 and or not

select last_name, department_id, salary
from employees
where department_id = 60
    or (department_id = 80
    and salary > 10000);
    
select *
from employees
where not( hire_date > '2004/01/01' or salary > 5000 );
-- hire_date <= '2004/01/01' and salary <= 5000

select *
from employees
where salary > 4000 
    and job_id = 'IT_PROG';
    
select *
from employees
where salary > 4000 
    and ( job_id = 'IT_PROG' or job_id = 'FI_ACCOUNT' );

-- IN 연산자 : () 안의 값과 같을때 or로 연결    
select * 
from employees
where salary in ( 4000, 3000, 2700);

select *
from employees
where salary in (10000,17000,24000);

select *
from employees
where department_ID not in (30,50,80,100,110);

select *
from employees
where salary >= 9000 and salary <=10000;

select *
from employees
where salary BETWEEN 9000 and 10000;

select *
from employees
where salary BETWEEN 10000 and 20000;

select *
from employees
where hire_date between '2004/01/01' and '2004/12/30';

select *
from employees
where salary not between 7000 and 17000;

--like 연산자는 조회 조건 값이 명확하지 않을 때 사용합니다. like 연산자는 '~와 같다'라는 의미입니다.
--like 연산자는 %와 _같은 기호 연산자와 함께 사용합니다.
--조건에는 문자나 숫자를 포함 할 수 있습니다.
--%는'모든 문자'라는 의미고, _는 '한 글자'라는 의미입니다.
--job_id 값에서 AD를 포함하는 모든 정보를 조회해 보겠습니다. %는 조건을 포함하는 '~모든 문자'라는 의미입니다.
--like 연산자 _ %를 같이 사용해서 문자열을 검색
select *
from employees
where last_name like 'B%'; --대문자 B로 시작, 뒤에는 어떤 문자가 와도 상관없음

SELECT *
FROM employees
where last_name like '%b%'; -- 문자열의 중간이 B가 있으면 전부 출력 

select *
from employees
where last_name like '%y'; 

select *
from employees
where last_name like '____y'; -- _ 사용시 정확한 자릿수를 표현

select *
from employees
where job_id like '%AD%';

select *
from employees
where job_id like 'AD___';

select *
from employees
where phone_number like '%1234';

select *
from employees
where phone_number not like '%3%' and phone_number like '%9';

select *
from employees
where job_id like '%MGR%' or job_id like '%ASST%';

select COMMISSION_PCT
from employees;
-- 널(null) 이란?
-- 입력되지 않은 사용할수 없는 값이고 0 또는 공백(' ')이 아니다.
-- 널값을 검색하기 위해 is NULL을 사용
select *
from employees
where commission_pct is null;
-- 널값이 아닐 경우만 찾을 때 is not null
select *
from employees
where commission_pct is not null;

--order by 열 + ASC or DESC 열의 오름차순 또는 내림차순 정렬 
select *
from employees
order by employee_id DESC;

select *
from employees
order by employee_id ASC;  --ASC 기본 정렬은 생략가능

--정렬 열이 2개 이상일때 첫번째 열로 정렬후 두번째 열 정렬
SELECT department_id, employee_id, first_name, last_name 
FROM employees
order by department_id, employee_id;

-- 별칭으로 정렬
SELECT department_id, last_name, salary*12 연봉
FROM employees
order by 연봉 DESC;

--예제1)
select employee_id, first_name, last_name
from employees
order by employee_id DESC;
--예제2)
SELECT *
FROM employees
where job_id like '%CLERK%' order by salary DESC;
--예제3)
select employee_id 직원번호, department_id 부서번호, first_name 직원이름, salary 월급
from employees
where employee_id BETWEEN 120 and 150 order by department_id DESC, salary DESC;





