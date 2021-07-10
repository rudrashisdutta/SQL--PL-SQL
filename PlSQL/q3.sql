SET SERVEROUTPUT ON;
DECLARE 
vrec employee%ROWTYPE;
CURSOR CUR is select * from employee where manager_id in (Select man_id from manager where MAN_NAME ='Krishna');
BEGIN 
OPEN CUR; 
LOOP
FETCH CUR INTO vrec;
EXIT WHEN CUR%NOTFOUND;
DBMS_OUTPUT.PUT_LINE(vrec.emp_no || ' - ' || vrec.emp_name || ' - ' || vrec.job || ' - ' ||vrec.manager_id || ' - ' ||vrec.dept_no);
END LOOP; 
CLOSE CUR; 
END; 
/