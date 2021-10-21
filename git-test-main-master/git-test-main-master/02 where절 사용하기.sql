--where ��
select *
FROM employees
where salary > '14000'; -- ������ 14000���� ���� ����

select *
FROM employees
where last_name = 'King'; -- ���ڿ��� ����ǥ�� ǥ��, �̸��� King�� ����

select *
from employees
where hire_date < '02/06/10'; --��¥�� ��, ������� 2002�� 6�� 10�� ����

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

-- �� ������ and or not

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

-- IN ������ : () ���� ���� ������ or�� ����    
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

--like �����ڴ� ��ȸ ���� ���� ��Ȯ���� ���� �� ����մϴ�. like �����ڴ� '~�� ����'��� �ǹ��Դϴ�.
--like �����ڴ� %�� _���� ��ȣ �����ڿ� �Բ� ����մϴ�.
--���ǿ��� ���ڳ� ���ڸ� ���� �� �� �ֽ��ϴ�.
--%��'��� ����'��� �ǹ̰�, _�� '�� ����'��� �ǹ��Դϴ�.
--job_id ������ AD�� �����ϴ� ��� ������ ��ȸ�� ���ڽ��ϴ�. %�� ������ �����ϴ� '~��� ����'��� �ǹ��Դϴ�.
--like ������ _ %�� ���� ����ؼ� ���ڿ��� �˻�
select *
from employees
where last_name like 'B%'; --�빮�� B�� ����, �ڿ��� � ���ڰ� �͵� �������

SELECT *
FROM employees
where last_name like '%b%'; -- ���ڿ��� �߰��� B�� ������ ���� ��� 

select *
from employees
where last_name like '%y'; 

select *
from employees
where last_name like '____y'; -- _ ���� ��Ȯ�� �ڸ����� ǥ��

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
-- ��(null) �̶�?
-- �Էµ��� ���� ����Ҽ� ���� ���̰� 0 �Ǵ� ����(' ')�� �ƴϴ�.
-- �ΰ��� �˻��ϱ� ���� is NULL�� ���
select *
from employees
where commission_pct is null;
-- �ΰ��� �ƴ� ��츸 ã�� �� is not null
select *
from employees
where commission_pct is not null;

--order by �� + ASC or DESC ���� �������� �Ǵ� �������� ���� 
select *
from employees
order by employee_id DESC;

select *
from employees
order by employee_id ASC;  --ASC �⺻ ������ ��������

--���� ���� 2�� �̻��϶� ù��° ���� ������ �ι�° �� ����
SELECT department_id, employee_id, first_name, last_name 
FROM employees
order by department_id, employee_id;

-- ��Ī���� ����
SELECT department_id, last_name, salary*12 ����
FROM employees
order by ���� DESC;

--����1)
select employee_id, first_name, last_name
from employees
order by employee_id DESC;
--����2)
SELECT *
FROM employees
where job_id like '%CLERK%' order by salary DESC;
--����3)
select employee_id ������ȣ, department_id �μ���ȣ, first_name �����̸�, salary ����
from employees
where employee_id BETWEEN 120 and 150 order by department_id DESC, salary DESC;





