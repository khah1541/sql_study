-- �׷��Լ� (������ �Լ�, �����Լ�)
--�׷��Լ� �ȿ��ִ� salary ������ salary ������
select round (AVG(salary)) ��հ� , MAX(salary)�ִ밪, MIN(salary) �ּҰ�, SUM(salary) �հ�, count(salary) ī��Ʈ
from employees
where job_id like '%REP%';

select  count(*)
from employees;

select count(*)
from employees
where department_id = 80; --80�� �μ��� ������
--�׷��Լ������� �ΰ��� �����ϰ� ����Ѵ�.(���� count(*))
select count(department_id)
from employees;  --1���� �μ������� (����)

select count(distinct department_id)
from employees; -- �ߺ����� ���� �μ��� ����

select AVG(commission_pct)
from employees;  -- �ΰ��� ������ ��� �������� Ŀ�̼� ���

-- group by �� : Ư�� �׷����� ����� �׷��Լ��� ���

select department_id �μ���ȣ, round(AVG(salary)) ��ձ޿�
from employees
GROUP BY department_id order by �μ���ȣ;  --�μ���ȣ�� �׷쳪��

select *
from employees
where department_id is null; -- �μ��� ���� ���

select department_id �μ���,count(*)�����,max(salary)�ְ�޿�,min(salary)�ּұ޿�,sum(salary)�޿��հ�,round(avg(salary))��ձ޿�
from employees
GROUP by department_id order by �޿��հ� DESC;

select department_id �μ���ȣ,job_id ����,manager_id ����ȣ,sum(salary)�����հ�,count(department_id)
from employees
group by department_id,job_id,manager_id order by �μ���ȣ;

select round(avg(max(salary))) �μ����ְ�������, round(avg(min(salary))) �μ��������������
from employees
group by department_id;

--�׷� �Լ��� ������ having
select department_id �μ���, count(*) �����
from employees
group by department_id
having count(*) > 5; --����� 5���� �Ѵ� �μ�

select job_id ����, sum(salary) ���޿��հ�
from employees
where job_id != 'AC_MGR'
group by job_id
having avg(salary) > 10000
order by ���޿��հ� desc;

select department_id �μ���ȣ, round(avg(salary)) ��ձ޿�
from employees
where department_id != 40
group by department_id
having avg(salary) <= 7000;

select job_id ����, sum(salary) �޿��Ѿ�
from employees
where job_id not like '%REP%'
group by job_id
having sum(salary) >= 13000
order by �޿��Ѿ� desc;

select department_id �μ���ȣ, round(avg(salary)) ��ձ޿�
from employees
where department_id != 40
group by department_id
having avg(salary) <= 7000;

select job_id ����, sum(salary) �޿��Ѿ�
from employees
where job_id not like '%REP%'
group by job_id
having sum(salary)>=13000
order by �޿��Ѿ� desc;



