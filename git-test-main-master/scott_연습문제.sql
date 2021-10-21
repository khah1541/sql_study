
--예제 1)
select empno 사원번호, ename 이름, sal 월급
from emp
where deptno = 10;

--예제 2)
select ename 이름, hiredate 입사일 , deptno 부서번호
from emp
where empno = 7369;

--예제 3)
select *
from emp
where ename = 'ALLEN';

--예제 4)
select ename 이름, deptno 부서번호 , sal 월급
from emp
where hiredate = '81/02/20';

--예제 5)
select *
from emp
where job != 'MANAGER';

--예제 6)
select *
from emp
where hiredate >= '1981/04/02';

--예제 7)
select ename 이름, sal 급여 , deptno 부서번호
from emp
where sal >= 800;

--예제 8)
select *
from emp
where deptno >= 20;

--예제 9)
select *
from emp
where ename > 'L';

--예제 10)
select *
from emp
where hiredate < '1981/12/09';

--예제 11)
select empno 직원번호, ename 이름
from emp
where empno <= 7698;

--예제 12)
select ename 이름, sal 월급, deptno 부서번호
from emp
where hiredate >= '1981/04/02' and hiredate <= '1982/12/09';
-- where hiredate between '1981/04/02' and '1982/12/09';


--예제 13)
select ename 이름, job 직업, sal 급여
from emp
where sal > 1600 and sal < 3000;

--예제 14)
select *
from emp
where empno not between 7654 and 7782;
--empno < 7654 or empno > 7782;

--예제 15)
select *
from emp
where ename between 'B' and 'J' ;
-- where name >='B' and ename <= 'J';

--예제 16)
select *
from emp
where hiredate not BETWEEN '81/01/01' and '81/12/31';
--where not (joredate >= '81/01/01' and hiredate <= '81/12/31';
--where to_char (hiredate,'yyyy')<>'1981';

--예제 17)
select *
from emp
where job = 'MANAGER' or job = 'SALESMAN';
--where job in ('MGNAGER','SALESMAN');

--예제 18)
select ename 이름, empno 사원번호, deptno 부서번호
from emp
where not deptno in(20,30); --deptno != 20 and deptno != 30;

--예제 19)
select empno 사원번호, ename 이름, hiredate 입사일, deptno 부서번호
from emp
where ename like 'S%';

--예제 20)
select *
from emp
where hiredate between '1981/01/01' and '1981/12/31';
--where hiredate like '81%';

--예제 21)
select *
from emp
where ename like '%S%';

--예제 22)
select *
from emp
where ename like 'M____N';

--예제 23)
select *
from emp
where ename like '_A%';

--예제 24)
select *
from emp
where comm is null;

--예제 25)
select *
from emp
where comm is not null;

--예제 26)
select ename 이름, deptno 부서번호, sal 월급
from emp
where deptno = 30 and sal >= 1500;

--예제 27)
select empno 사원번호, ename 이름, deptno 부서번호
from emp
where ename like 'K%' or deptno = 30;

--예제 28)
select *
from emp
where sal >= 1500 and deptno = 30 and job ='MANAGER';

--예제 29)
select *
from emp
where deptno = 30
order by empno;

--예제 30)
select *
from emp
order by sal desc;

--예제 31)
select *
from emp
order by deptno , sal desc;

--예제 32)
select deptno 부서번호, ename 이름 , sal 월급
from emp
order by deptno desc, ename , sal desc;

--예제 33)
select ename 이름, sal 급여, round(sal*0.13) 보너스금액, deptno 부서번호
from emp
where deptno = 10;

--예제 34)
select ename 이름 , sal 급여, NVL(comm,0) 커미션, NVL(comm+sal,sal) 총액
from emp
order by 총액 desc;
--sal+nvl(comm)

--예제 35)
select ename 이름, sal 급여, to_char(round(sal*0.15,2),'$999,999.0') 회비 --to_char(sal*0.15,'$999,999.0) 
from emp
where sal between 1500 and 3000;

--예제 36)
select d.dname 부서명, count(e.empno) 사원수
from emp e join dept d
on e.deptno = d.deptno
group by d.dname 
having count(e.empno) > 5;


--예제 37)
select job , sum(sal)
from emp
group by job
having sum(sal) > 5000 and job != 'SALESMAN';

--예제 38)
select e.empno 사원번호 , e.ename 사원명 , e.sal 급여 , s.grade 급여등급
from emp e
join salgrade s
on e.sal BETWEEN s.losal and s.hisal;

--예제 39)
select deptno 부서 , count(empno) 사원수, count(comm) "커미션 받은 사원수" --"" 사용시 띄어쓰기 가능
from emp
group by deptno;

--예제 40)
select ename 이름 , deptno , 
    decode (deptno ,10 , '총무부',
                    20 , '개발부',
                    30 , '영업부'
                    ) 부서명
                    from emp;
-- select ename 이름  , deotno ,case deptno
-- when 10 then '총무부'
-- when 20 then '개발부'
-- when 30 then '영업부'
-- end "부서명"
-- from emp;

                    