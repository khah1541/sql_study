--DML �۾�

-- ������ �Է� INSERT
INSERT into departments(department_id, department_name, manager_id, location_id)
Values (300, 'Game' , 100 , 1700);

select *
from departments
order by department_id desc;

-- ���̺� ���� ������ Ȯ��
DESC departments;

-- Ư�� ���� �Է� ( ���Է½� NULL)
INSERT into departments(department_id, department_name)
Values (280, 'Music');

--���� �̸����� �����ϸ� �� ����� ��
insert into departments
values (290,'Pusan',null,1700);

--1)
insert into departments (department_id,department_name,manager_id,location_id)
values (271,'Sample Dept 1',200,1700);

insert into departments (department_id,department_name,manager_id,location_id)
values (272,'Sample Dept 2',200,1700);

insert into departments (department_id,department_name,manager_id,location_id)
values (273,'Sample Dept 3',200,1700);

-- �������� ���� update : Ư������ ������Ʈ ������ where ���� �ۼ��ؾ��Ѵ�.
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

-- �ΰ��̻��� ���� ������Ʈ ( ��,��, ...)
update departments 
set manager_id = 100 , location_id = 1800
where department_name = 'Game';

-- �������� ���� delete 
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

-- ��ü ���� (where�� �����ʾ�����)
-- ���������� ���� ���̺��� ����ϰ� �ִ� �μ��� �ٷ� ���� �Ұ�
delete from departments;

delete from departments
where department_id >= 120;

-- Ŀ�� ���� �ѹ� ����
rollback;

--���Ӻμ��� �����ϰ� commit 
commit;

--�ڵ� Ŀ�� ����
show autocommit;

--on ����ÿ� �ڵ����� commit
set autocommit on;

-- off ����ÿ� ����
set autocommit off;