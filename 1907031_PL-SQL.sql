--PL/SQL variable declaration and print value
set serveroutput on
declare 
job_id jobs.job_id%type;
job_title jobs.job_title%type;
salary number;
begin
select job_id, job_title, salary into job_id, job_title, salary from jobs where job_id = 2007;
dbms_output.put_line('job_id: '||job_id|| ' job_title: '||job_title || ' salary: '||salary);
end;
/

--Insert and set default value
set serveroutput on
declare 
app_id applications.app_id%type := 3013;
job_id applications.job_id%type := 2007;
user_id applications.user_id%type := 1008;
status applications.status%type := 'Pending';
begin
insert into applications values(app_id,job_id,user_id,status);
end;
/

--Row type
set serveroutput on
declare 
job_row jobs%rowtype;
begin
select job_id, job_title, salary into job_row.job_id, job_row.job_title, job_row.salary from jobs where job_id = 2007;
dbms_output.put_line('job_id: '||job_row.job_id|| ' job_title: '||job_row.job_title || ' salary: '||job_row.salary);
end;
/

--Cursor and row count
set serveroutput on
declare 
cursor job_cursor is select * from jobs;
job_row jobs%rowtype;
begin
open job_cursor;
fetch job_cursor into job_row.job_id, job_row.job_title, job_row.company_id, job_row.job_type, job_row.salary, job_row.education;
while job_cursor%found loop
dbms_output.put_line('job_id: '||job_row.job_id|| ' job_title: '||job_row.job_title || ' company_id: ' ||job_row.company_id|| ' job_type: ' ||job_row.job_type || ' salary: ' ||job_row.salary || ' education: ' ||job_row.education);
dbms_output.put_line('Row count: '|| job_cursor%rowcount);
fetch job_cursor into job_row.job_id,job_row.job_title,job_row.company_id,job_row.job_type,job_row.salary, job_row.education;
end loop;
close job_cursor;
end;
/

--FOR LOOP/WHILE LOOP/ARRAY with extend() function
set serveroutput on
declare 
  counter number;
  job_title2 jobs.job_title%type;
  TYPE TITLEARRAY IS VARRAY(10) OF jobs.job_title%type; 
  TITLE TITLEARRAY:=TITLEARRAY();
begin
  counter:=1;
  for x in 2001..2010  
  loop
    select job_title into job_title2 from jobs where job_id=x;
    TITLE.EXTEND();
    TITLE(counter):=job_title2;
    counter:=counter+1;
  end loop;
  counter:=1;
  WHILE counter<=TITLE.COUNT 
    LOOP 
    DBMS_OUTPUT.PUT_LINE(TITLE(counter)); 
    counter:=counter+1;
  END LOOP;
end;
/

--ARRAY without extend() function
DECLARE 
   counter NUMBER := 1;
   job_title2 jobs.job_title%TYPE;
   TYPE TITLEARRAY IS VARRAY(10) OF jobs.job_title%TYPE;
   TITLE TITLEARRAY:=TITLEARRAY('job 1', 'job 2', 'job 3', 'job 4', 'job 5', 'job 6', 'job 7', 'job 8', 'job 9', 'job 10'); 
BEGIN
   counter := 1;
   FOR x IN 2001..2010  
   LOOP
      SELECT job_title INTO job_title2 FROM jobs WHERE job_id=x;
      TITLE(counter) := job_title2;
      counter := counter + 1;
   END LOOP;
   counter := 1;
   WHILE counter <= TITLE.COUNT 
   LOOP 
      DBMS_OUTPUT.PUT_LINE(TITLE(counter)); 
      counter := counter + 1;
   END LOOP;
END;

--IF /ELSEIF /ELSE
DECLARE 
   counter NUMBER := 1;
   job_title2 jobs.job_title%TYPE;
   TYPE TITLEARRAY IS VARRAY(10) OF jobs.job_title%TYPE;
   TITLE TITLEARRAY:=TITLEARRAY('job 1', 'job 2', 'job 3', 'job 4', 'job 5', 'job 6', 'job 7', 'job 8', 'job 9', 'job 10'); 
BEGIN
   counter := 1;
   FOR x IN 2001..2010  
   LOOP
      SELECT job_title INTO job_title2 FROM jobs WHERE job_id=x;
      if job_title2 = 'Software Developer' 
        then
        dbms_output.put_line(job_title2||' is a '||'CSE or SWE Job');
      elsif job_title2='Chip Designer'  
        then
        dbms_output.put_line(job_title2||' is a '||'EEE job');
      else 
        dbms_output.put_line(job_title2||' is a '||'other job');
        end if;
   END LOOP;
END;

--Procedure
CREATE OR REPLACE PROCEDURE proc(
  var1 IN NUMBER,
  var2 OUT VARCHAR2,
  var3 IN OUT NUMBER
)
AS
  t_show CHAR(30);
BEGIN
  t_show := 'From procedure: ';
  SELECT job_title INTO var2 FROM jobs WHERE job_id IN (SELECT job_id FROM applications WHERE app_id = var1);
  var3 := var1 + 1; 
  DBMS_OUTPUT.PUT_LINE(t_show || var2 || ' code is ' || var1 || ' In out parameter: ' || var3);
END;
/
--main
set serveroutput on
declare 
app_id applications.app_id%type := 3001;
job_title jobs.job_title%type;
extra number;
begin
proc(app_id, job_title, extra);
end;
/

--Function
set serveroutput on
create or replace function fun(var1 in varchar) return varchar AS
value jobs.job_title%type;
begin
  select job_title into value from jobs where job_id = var1; 
   return value;
end;
/
--main
set serveroutput on
declare 
value varchar(20);
begin
value := fun(2001);
dbms_output.put_line('function returns ' || value);
end;
/

--drop procedure and function
drop procedure proc;
drop function fun;