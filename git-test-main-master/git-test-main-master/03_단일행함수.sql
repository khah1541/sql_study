-- 단일행 함수


-- 문자 함수
-- 대소문자 변환 UPPER LOWER INITCAP
select upper('SQL course'),lower('SQL course'),initcap('SQL course') from dual; --듀얼 테스트용 테이블을 이용하여 연습

-- 문자 조작 함수
select SUBSTR('ABCDEFG',3,4), LENGTH('ABCDEFG'), INSTR('ABCDEFG','D')
from dual;
select trim('  헬로우  '),'   헬로우   ' from dual; -- 공백을 없애준다.

--문자 함수 예제(1)
select department_id, last_name, department_id
from employees
where lower(last_name) = 'higgins';

select last_name, CONCAT('직업명이 ',job_id) AS 직업명
from employees
where substr(job_id,4,3) = 'REP';

-- 문자열의 가장 끝 글자 (-1은 문자열의 가장 끝)
select last_name, SUBSTR(last_name,-1,1)
from employees;

select first_name, last_name, upper(concat(first_name, substr(last_name,1,3))) 이름합성
from employees;

-문자열 바꾸기
select job_id, replace(job_id, 'ACCOUNT', 'ACCNT') 적용결과
from employees;

--예제(1)
select last_name 이름,upper (last_name), lower(last_name), email 이메일, initcap(email)
from employees;
--예제(2)
select job_id 직업명, substr(job_id,1,2) 앞의2개
from employees;

-- 숫자형 함수
--반올림 함수 round(숫자,자릿수), 자릿수가 없으면 정수로 반올림
select round(15.193), round(15.193,0), round(15.193,1), round(15.193,2)
from dual;

--mod 나눈후 나머지값 (직원 번호가 짝수번인 직원들만 출력하라)
select employee_id 짝수번째, last_name, employee_id 홀수번째, last_name
from employees
where mod(employee_id,2)  = 0--짝수 
order by employee_id; 

select salary 월급, round(salary/30) 정수, round(salary/30,1) 소수점1,round(salary/30,-1) "10의자리"
from employees;

SELECT sysdate 오늘날자, sysdate +1 내일, sysdate -1 어제
from dual;

select  department_id, sysdate, hire_date, months_between(sysdate,hire_date)
from employees
where department_id = 100;

select hire_date , add_months(hire_date,3) , add_months(hire_date,-3)
from employees
where employee_id between 100 and 106;

-- 변환영 함수 I
--숫자 => 문자로 변환

select to_char( 12345678 , '999,999,999') 콤마형식,
to_char( 12345678, '999,999,999.99') 콤마소수점형식,
to_char( 12345678 , '$999,999,999') 달러형식,
to_char( 12345678 , 'L999,999,999') 로컬통화
from dual;

-- 날짜 => 문자로 변환

SELECT 
    to_char(SYSDATE , 'YYYY/MM/DD') ,
    to_char(SYSDATE , 'YYYY/MM/DD HH24:MI:SS')
FROM dual;

select employee_id ,to_char(sysdate, 'mm/dd') 입사월
from employees
where department_id = 100;

select last_name 이름 , to_char ( salary, '$99,999.99')
from employees
where salary > 10000 order by salary desc;

-- 문자열 => 날짜 변환
select to_date('2011-01-01', 'yyyy-mm-dd')
from dual;

-- 문자열 => 숫자 변환
select to_number('0123')+100
from dual;

-- 널값 관련 함수 (null)
-- NVL( 값, 0 ) => 만약 값이 널이면 0으로 변환

select last_name 이름, NVL( manager_id, 0) 매니저
from employees
where last_name = 'King';

-- NVL2 ( 값, 1, 0 ) => 만약 값이 널값이 아니면 첫번쨰, 널값이면 두번째
select last_name 이름, NVL2( manager_id , 1, 0 ) 매니저
from employees 
where last_name = 'King';

SELECT last_name 이름, salary 월급, NVL(commission_pct,0) 커미션, salary*12 +salary*12*nvl(commission_pct,0) 연봉
FROM employees
order by 연봉 desc;

select last_name 이름 , salary 월급 , NVL(commission_pct,0) 커미션, salary*12 + salary*12*NVL(commission_pct,0) 연봉,
NVL2(cocommission_pct,'연봉+커미션','연봉')
from employees;



SELECT last_name 이름, salary 월급, NVL(commission_pct,0) 커미션, salary*12 +salary*12*nvl(commission_pct,0) 연봉,
NVL2(commission_pct, '월급+보너스' , '월급만' ) 연봉계산방법
FROM employees
order by 연봉 desc;

-- decode 함수
select last_name 이름 , job_id, salary,
decode(job_id, 'IT_PROG', salary*1.10,
               'ST_CLERK',salary*1.15,
               'SA_REP', salary*1.20,
                         salary) 수정월급
from employees;

select last_name 이름, job_id 직무, salary 월급,
    DECODE(TRUNC(salary/2000), 0,  0,
                                  0.45) 세율
from employees;

--case 함수 비교가능
select last_name 이름, job_id, salary,
    case when salary<5000 then'low'
         when salary<10000 then 'medium'
         when salary<20000 then 'good'
         else 'excellent'
         end "급여 수준"
from employees;

select employee_id, first_name, last_name, salary,
case when salary>9000 then '상위급여'
     when salary>6000 then '중위급여'
     else '하위급여'
     end "급여 등급"
from employees
where job_id = 'IT_PROG';

