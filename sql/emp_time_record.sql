use test;
drop table employee_time_record;

create table employee_time_record(emp_id varchar(50), record_date date, in_time time,out_time time, floor_id int);

insert into employee_time_record values('45111','2014-03-23','14:00:00' ,'19:00:00' ,6);

insert into employee_time_record values('45111','2014-03-24','10:30:00' ,'12:15:00' ,6);
insert into employee_time_record values('45111','2014-03-24','12:30:00' ,'12:40:00' ,6);
insert into employee_time_record values('45111','2014-03-24','13:00:00' ,'18:00:00' ,6);

insert into employee_time_record values('45222','2014-03-24','10:00:00' ,'11:00:00' ,6);
insert into employee_time_record values('45222','2014-03-24','11:15:00' ,'13:00:00' ,6);
insert into employee_time_record values('45222','2014-03-24','14:00:00' ,'19:00:00' ,6);

insert into employee_time_record values('45333','2014-03-24','11:00:00' ,'11:30:00',6);
insert into employee_time_record values('45333','2014-03-24','11:40:00' ,'13:15:00' ,6);
insert into employee_time_record values('45333','2014-03-24','14:15:00' ,'19:35:00' ,6);

insert into employee_time_record values('45444','2014-03-24','12:00:00' ,'14:30:00',6); -- went home early because of emeergency :)

-- Next day

insert into employee_time_record values('45111','2014-03-25','10:00:00' ,'11:15:00' ,6);
insert into employee_time_record values('45111','2014-03-25','11:30:00' ,'13:10:00' ,6);
insert into employee_time_record values('45111','2014-03-25','14:00:00' , null ,6);

insert into employee_time_record values('45222','2014-03-25','10:00:00' ,'11:00:00' ,6);
insert into employee_time_record values('45222','2014-03-25','11:15:00' ,'13:00:00' ,6);
insert into employee_time_record values('45222','2014-03-25','13:10:00' ,'13:50:00' ,6);

insert into employee_time_record values('45333','2014-03-25','11:00:00' ,'11:30:00',6);
insert into employee_time_record values('45333','2014-03-25','11:40:00' ,'13:15:00' ,6);
insert into employee_time_record values('45333','2014-03-25','13:50:00' ,null ,6);

insert into employee_time_record values('45444','2014-03-25','10:00:00' ,null,6); 


-- Employees in office between 2pm and 3pm - 45111,45222
-- Employees who came before 11 pm - 45111,45222
-- Employees who came before 12 pm - 45111,45222,45333
-- Employees in office at 12.10 pm  - 45111,45222,45333,45444

-- Employees in office at 2.10 pm on 25th - 45111,45333,45444 






