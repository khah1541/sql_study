-- DDL ���̺� ���� ���� ����

--���̺� ����
create table �׽�Ʈ (
    ���ڿ� varchar2 (100),
    ���� NUMBER,
    ��¥ date DEFAULT sysdate
    );
    
desc �׽�Ʈ;

select *
from �׽�Ʈ;

-- ������ �Է�
insert into �׽�Ʈ
values ('HTML', 5 , '2021/10/08');
insert into �׽�Ʈ
values ('CSS', 3 , sysdate );
insert into �׽�Ʈ(���ڿ�,����)
values ('�ڹ�',7);

-- ���̺� ����
drop table �׽�Ʈ;

-- ���� ���̺� �����ؼ� ����� ���
-- �� ������ ����
create table EMP_TEMP
as
select *
from employees
where 1 != 1; 

select *
from emp_temp;

-- 80�� �μ��� �����鸸 ���� ���̺� ����
create table EMP80
as
select employee_id ������ȣ, last_name �̸�, salary ���� , salary*12 ����, hire_date �����
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
