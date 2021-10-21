-- �������� 

--NOT NULL : �ΰ��� �Է� �ȵ�

desc departments;


-- UK ����ũ  : �ߺ����� ����

-- emp_name �� not null ��������, email�� ����ũ ��������
create table emp(
    eno     number(3),
    emp_name VARCHAR2(20) constraint emp1_ename_nn NOT NULL,
    email   VARCHAR2(30),
    CONSTRAINT emp1_email_uk UNIQUE (email)
    );
desc emp;

-- ������ �Է�
insert into emp1 VALUES(208,'KIm', 'KJS@naver.com');
--insert into emp1 values(209, NULL , ABC@naver.com'); -- �ΰ��� �Է��Ҽ� ��� �����߻�
--insert into emp1 VALUES(210,'Lee', 'KJS@naver.com'); -- �ߺ��ȵ� email ����ũ


--check ���� ����

create table emp2(
    eno     number(3),
    emp_name VARCHAR2(20),
    sal   VARCHAR2(10),
    CONSTRAINT emp2_sal_check check(sal>1000)
    );
    
insert into emp2 values(208, 'Kim', 1200);
insert into emp2 values(209, 'Lee', 900); -- sal ���� 1000���� Ŀ�� �ȴ�.

--���� ���� �̸� ���� ���̺� ����
DROP table emp;
create table emp (
    eno NUMBER(4) PRIMARY key,
    ename varchar2(20) Not null,
    gno VARCHAR2(13) UNIQUE check (length(gno) >= 0),
    gender varchar2(5) check (gender in('woman','man'))
    );


insert into emp values (1, 'Kim', '12345678' , 'man');
insert into emp values (2, 'Kim', '123456789' , 'woman');


create table members(
    mumber_id number(2) primary key,
    first_name varchar2(50) not null,
    last_name varchar2(50) not null,
    gender varchar2(5) check (gender in('man','woman')),
    birth_day date DEFAULT sysdate ,
    email varchar2(200) unique not null
    );
    desc members;


















