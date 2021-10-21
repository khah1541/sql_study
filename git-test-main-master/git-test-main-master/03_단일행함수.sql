-- ������ �Լ�


-- ���� �Լ�
-- ��ҹ��� ��ȯ UPPER LOWER INITCAP
select upper('SQL course'),lower('SQL course'),initcap('SQL course') from dual; --��� �׽�Ʈ�� ���̺��� �̿��Ͽ� ����

-- ���� ���� �Լ�
select SUBSTR('ABCDEFG',3,4), LENGTH('ABCDEFG'), INSTR('ABCDEFG','D')
from dual;
select trim('  ��ο�  '),'   ��ο�   ' from dual; -- ������ �����ش�.

--���� �Լ� ����(1)
select department_id, last_name, department_id
from employees
where lower(last_name) = 'higgins';

select last_name, CONCAT('�������� ',job_id) AS ������
from employees
where substr(job_id,4,3) = 'REP';

-- ���ڿ��� ���� �� ���� (-1�� ���ڿ��� ���� ��)
select last_name, SUBSTR(last_name,-1,1)
from employees;

select first_name, last_name, upper(concat(first_name, substr(last_name,1,3))) �̸��ռ�
from employees;

-���ڿ� �ٲٱ�
select job_id, replace(job_id, 'ACCOUNT', 'ACCNT') ������
from employees;

--����(1)
select last_name �̸�,upper (last_name), lower(last_name), email �̸���, initcap(email)
from employees;
--����(2)
select job_id ������, substr(job_id,1,2) ����2��
from employees;

-- ������ �Լ�
--�ݿø� �Լ� round(����,�ڸ���), �ڸ����� ������ ������ �ݿø�
select round(15.193), round(15.193,0), round(15.193,1), round(15.193,2)
from dual;

--mod ������ �������� (���� ��ȣ�� ¦������ �����鸸 ����϶�)
select employee_id ¦����°, last_name, employee_id Ȧ����°, last_name
from employees
where mod(employee_id,2)  = 0--¦�� 
order by employee_id; 

select salary ����, round(salary/30) ����, round(salary/30,1) �Ҽ���1,round(salary/30,-1) "10���ڸ�"
from employees;

SELECT sysdate ���ó���, sysdate +1 ����, sysdate -1 ����
from dual;

select  department_id, sysdate, hire_date, months_between(sysdate,hire_date)
from employees
where department_id = 100;

select hire_date , add_months(hire_date,3) , add_months(hire_date,-3)
from employees
where employee_id between 100 and 106;

-- ��ȯ�� �Լ� I
--���� => ���ڷ� ��ȯ

select to_char( 12345678 , '999,999,999') �޸�����,
to_char( 12345678, '999,999,999.99') �޸��Ҽ�������,
to_char( 12345678 , '$999,999,999') �޷�����,
to_char( 12345678 , 'L999,999,999') ������ȭ
from dual;

-- ��¥ => ���ڷ� ��ȯ

SELECT 
    to_char(SYSDATE , 'YYYY/MM/DD') ,
    to_char(SYSDATE , 'YYYY/MM/DD HH24:MI:SS')
FROM dual;

select employee_id ,to_char(sysdate, 'mm/dd') �Ի��
from employees
where department_id = 100;

select last_name �̸� , to_char ( salary, '$99,999.99')
from employees
where salary > 10000 order by salary desc;

-- ���ڿ� => ��¥ ��ȯ
select to_date('2011-01-01', 'yyyy-mm-dd')
from dual;

-- ���ڿ� => ���� ��ȯ
select to_number('0123')+100
from dual;

-- �ΰ� ���� �Լ� (null)
-- NVL( ��, 0 ) => ���� ���� ���̸� 0���� ��ȯ

select last_name �̸�, NVL( manager_id, 0) �Ŵ���
from employees
where last_name = 'King';

-- NVL2 ( ��, 1, 0 ) => ���� ���� �ΰ��� �ƴϸ� ù����, �ΰ��̸� �ι�°
select last_name �̸�, NVL2( manager_id , 1, 0 ) �Ŵ���
from employees 
where last_name = 'King';

SELECT last_name �̸�, salary ����, NVL(commission_pct,0) Ŀ�̼�, salary*12 +salary*12*nvl(commission_pct,0) ����
FROM employees
order by ���� desc;

select last_name �̸� , salary ���� , NVL(commission_pct,0) Ŀ�̼�, salary*12 + salary*12*NVL(commission_pct,0) ����,
NVL2(cocommission_pct,'����+Ŀ�̼�','����')
from employees;



SELECT last_name �̸�, salary ����, NVL(commission_pct,0) Ŀ�̼�, salary*12 +salary*12*nvl(commission_pct,0) ����,
NVL2(commission_pct, '����+���ʽ�' , '���޸�' ) ���������
FROM employees
order by ���� desc;

-- decode �Լ�
select last_name �̸� , job_id, salary,
decode(job_id, 'IT_PROG', salary*1.10,
               'ST_CLERK',salary*1.15,
               'SA_REP', salary*1.20,
                         salary) ��������
from employees;

select last_name �̸�, job_id ����, salary ����,
    DECODE(TRUNC(salary/2000), 0,  0,
                                  0.45) ����
from employees;

--case �Լ� �񱳰���
select last_name �̸�, job_id, salary,
    case when salary<5000 then'low'
         when salary<10000 then 'medium'
         when salary<20000 then 'good'
         else 'excellent'
         end "�޿� ����"
from employees;

select employee_id, first_name, last_name, salary,
case when salary>9000 then '�����޿�'
     when salary>6000 then '�����޿�'
     else '�����޿�'
     end "�޿� ���"
from employees
where job_id = 'IT_PROG';

