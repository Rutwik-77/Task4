
create TABLE Employee(
	Education varchar(50),
	JoiningYear int,
	City VARCHAR(30),
	PaymentTier int,
	Age int,
	Gender varchar(10),
	Experience int
)
	
	alter table Employee
	add column Message varchar(50)

-- Select Done
select * from Employee

-- 0) 
COPY Employee from 'E:\PstgreSAKLearn\DownloadsPsrgsql\Employee_17_aug_2024_data.csv' DELIMITER ',' csv header


-- 1)
-- Distinct done
select DISTINCT Education from Employee
	
-- alter done
alter table employee
add column Employee_id serial PRIMARY key

-- update done
update  Employee
set Education = 'Masters'
where Employee_id =1
	
-- Delete Done
delete from Employee
where Experience = 0

-- And done
SELECT * from Employee
where Experience > 2 and City = 'Pune' and Gender = 'Male'

-- IN done
SELECT * from Employee
where city in(
'Pune'
)

-- Between done
select * from Employee
where JoiningYear between 2012 and 2013
and City = 'Bangalore'
and Age = 31
and Gender = 'Male'
and Experience = 3


-- 2)

alter table Employee
add constraint chk_age2 check (Age<=45)

-- 3)
alter table Employee
add constraint chk_age2 check (Age<=45)


update  Employee
set Message = case
when Employee_id = 3 then  'a1'
when Employee_id = 4 then  'b1'
when Employee_id = 5 then  'c1'
when Employee_id = 6 then  'd1'
when Employee_id = 7 then  'e1'
when Employee_id = 8 then  'f1'
when Employee_id = 9 then  'g1'
when Employee_id = 10 then  'check'
when Employee_id = 11 then  'check11'
when Employee_id = 12 then  'check12'
when Employee_id = 13 then  'check13'
	else Message
end
where Employee_id in(3,4,5,6,7,8,9,10,11,12,13)

select * from Employee


	
-- Custom constraint
ALTER TABLE Employee
add CONSTRAINT Message
CHECK (Message NOT IN ('a1', 'b1', 'check'));

SELECT * FROM Employee WHERE Message IN ('a1', 'b1', 'check');

DELETE FROM Employee
WHERE Message IN ('a1', 'b1', 'check');



