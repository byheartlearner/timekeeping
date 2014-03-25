
select emp_id, max(in_time) as intime , max(out_time) as outtime, record_date from employee_time_record
group by emp_id,record_date
having record_date = '2014-03-24' ;

-- Employees in office between 2pm and 3pm 
select emp_id , in_time, out_time from employee_time_record 
where in_time <= '14:00:00' and out_time >= '15:00:00' and record_date = '2014-03-24';

-- Employees who came before 12 pm - 45111,45222
-- incorrect query
select emp_id, in_time from employee_time_record 
where in_time < '12:00:00' and record_date = '2014-03-24';
-- correct query
select emp_id , min(in_time) as intime from employee_time_record group by emp_id,record_date 
having intime < '12:00:00' and record_date = '2014-03-24';

select emp_id from employee_time_record 
where in_time < '12:10:00' and out_time > '12:10:00' and record_date = '2014-03-24';

-- Employees in office at 2.10 pm on 25th - 45111,45333,45444 
select emp_id , max(in_time) as intime, ifnull( max(out_time),'00:00:00') as outtime from employee_time_record 
group by emp_id, record_date
having record_date = '2014-03-25'
and intime > outtime ;


-- total hours in company
select emp_id ,  sec_to_time(sum(time_to_sec(out_time)-time_to_sec(in_time))) as total_hours from employee_time_record 
group by emp_id, record_date
having record_date = '2014-03-24';



