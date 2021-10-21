-- 그룹함수 (다중행 함수, 집계함수)
--그룹함수 안에있는 salary 때문에 salary 사용못함
select round (AVG(salary)) 평균값 , MAX(salary)최대값, MIN(salary) 최소값, SUM(salary) 합계, count(salary) 카운트
from employees
where job_id like '%REP%';

select  count(*)
from employees;

select count(*)
from employees
where department_id = 80; --80번 부서의 직원들
--그룹함수에서는 널값을 제외하고 계산한다.(예외 count(*))
select count(department_id)
from employees;  --1명이 부서가없음 (사장)

select count(distinct department_id)
from employees; -- 중복되지 않은 부서의 개수

select AVG(commission_pct)
from employees;  -- 널값을 제외한 모든 직원들의 커미션 평균

-- group by 절 : 특정 그룹으로 나누어서 그룹함수를 사용

select department_id 부서번호, round(AVG(salary)) 평균급여
from employees
GROUP BY department_id order by 부서번호;  --부서번호로 그룹나눔

select *
from employees
where department_id is null; -- 부서가 없는 사람

select department_id 부서명,count(*)사원수,max(salary)최고급여,min(salary)최소급여,sum(salary)급여합계,round(avg(salary))평균급여
from employees
GROUP by department_id order by 급여합계 DESC;

select department_id 부서번호,job_id 직업,manager_id 상사번호,sum(salary)월급합계,count(department_id)
from employees
group by department_id,job_id,manager_id order by 부서번호;

select round(avg(max(salary))) 부서별최고월급평균, round(avg(min(salary))) 부서별최저월급평균
from employees
group by department_id;

--그룹 함수의 조건절 having
select department_id 부서명, count(*) 사원수
from employees
group by department_id
having count(*) > 5; --사원수 5명이 넘는 부서

select job_id 직종, sum(salary) 월급여합계
from employees
where job_id != 'AC_MGR'
group by job_id
having avg(salary) > 10000
order by 월급여합계 desc;

select department_id 부서번호, round(avg(salary)) 평균급여
from employees
where department_id != 40
group by department_id
having avg(salary) <= 7000;

select job_id 직종, sum(salary) 급여총액
from employees
where job_id not like '%REP%'
group by job_id
having sum(salary) >= 13000
order by 급여총액 desc;

select department_id 부서번호, round(avg(salary)) 평균급여
from employees
where department_id != 40
group by department_id
having avg(salary) <= 7000;

select job_id 직종, sum(salary) 급여총액
from employees
where job_id not like '%REP%'
group by job_id
having sum(salary)>=13000
order by 급여총액 desc;



