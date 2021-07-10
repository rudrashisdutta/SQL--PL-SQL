set serveroutput on;
declare
n number(3);
fact number(3):=1;
rem number(3);
m number(3);
sum1 number(3):=0;
begin
n:=&n;
m:=n;
while(n>0) loop
rem:=mod(n,10);
for i in 1..rem loop
fact:=fact*i;
end loop;
sum1:=sum1+fact;
n:=trunc(n/10);
fact:=1;
end loop;
if(sum1=m) then
dbms_output.put_line(m||' IS STRONG NUMBER');
else
dbms_output.put_line('IT IS NOT STRONG NUMBER');
end if;
end;
/