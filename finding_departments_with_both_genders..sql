-- [10/31/2023 3:17 PM]
-- question 1
-- Find departments whose name begins with 'S' and there are male and female workers 
-- over the age of 30

-- DLL:
-- Employee
--     id 
--     name 
--     age 
--     gender 
--     dep_id

-- Department: 
    -- id
    -- name

-- Write explanation to your answer

--Narimon Shuhrat o�g�li, [10/31/2023 3:17 PM]
create table DLL (employee_id int, name varchar(20), age int, gender varchar(20), dep_id int)
create table DPT (id int, name varchar(20))

insert into DLL values 
(1, 'Mirshod', 19, 'male', 2),
(2, 'Dilshod', 29, 'male', 1),
(3, 'Elshod', 39, 'male', 2),
(4, 'Shodmon', 49, 'male', 1),
(5, 'SMurod', 59, 'male', 3),
(6, 'Sherzod', 19, 'male', 1),
(7, 'Qurshod', 69, 'male', 1),
(8, 'Hilola',21,'female',2),
(9, 'Zilola',32,'female',1),
(10, 'Dilobar',33,'female',3),
(11, 'SDilbar',34,'female',3),
(12, 'Surayyo',34,'female',1);

insert into DPT values 
(1, 'IT'), (2, 'HR'),(3, 'Marketing');

select d.name, d.id from DPT d join DLL e on d.id = e.dep_id where d.name like 'S%' and e.age > 30 
group by d.name, d.id having count(distinct e.gender) > 1


--At first i created two tables and entered their values. 
--After that, joining two tables i filtered the tables according to the task by using where clause
--At last, by using having clause i checked the both genders' existence 
