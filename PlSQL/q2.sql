DECLARE
CURSOR CUR IS SELECT MAN_ID,MAN_NAME,HIGHEST_QUALIFICATION,INSTITUTION,DEPT_ID FROM MANAGER;
BEGIN
FOR I IN CUR
LOOP
IF(I.HIGHEST_QUALIFICATION = 'PHD') THEN
UPDATE MANAGER SET DEPT_ID=26 WHERE DEPT_ID=I.DEPT_ID;
END IF;
END LOOP;
END;
/