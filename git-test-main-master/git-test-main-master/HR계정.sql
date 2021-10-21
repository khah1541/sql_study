SELECT * FROM departments;
SELECT LAST_NAME || 'is a' || JOB_ID AS "직업정보" 
FROM EMPLOYEES;
--예제 
SELECT employee_id, first_name || ' ' || LAST_NAME 풀네임,
        email || '@company.com' 이메일
from employees;

DESC EMPLOYEES;
DESC departments;
