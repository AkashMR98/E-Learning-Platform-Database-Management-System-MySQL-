create database e_learning;

use e_learning;

create table learners(
learner_id int primary key,
full_name varchar(100),
country varchar(100)
);

create table courses(
course_id int primary key,
course_name varchar(100),
category varchar(50),
unit_price decimal(10,2)
);

create table purchases(
pruchase_id int primary key,
learner_id int,
course_id int,
quantity int,
purchase_date date,
foreign key (learner_id) references learners(learner_id),
foreign key (course_id) references	courses(course_id)
);

insert into learners values
(1,'Akash','India'),
(2,'Rahul','India'),
(3,'John','USA'),
(4,'Emma','UK'),
(5,'Sophia','Canada');

insert into courses values
(101,'SQL Basics','Database',499.00),
(102,'Python Fundamentals','Programming',799.00),
(103,'Power BI Masterclass','Analytics',999.00),
(104,'Web Development','Programming',899.00),
(105,'Excel Advanced','Productivity',599.00);

insert into purchases values
(1,1,101,2,'2026-05-01'),
(2,2,103,1,'2026-05-02'),
(3,3,102,1,'2026-05-03'),
(4,4,104,3,'2026-05-04'),
(5,5,105,2,'2026-05-05'),
(6,1,103,1,'2026-05-06'),
(7,2,101,2,'2026-05-07'),
(8,3,105,1,'2026-05-08');

show tables;

use e_learning;

select * from learners;

-- inner join

select l.full_name as learner_name,
       c.course_name,
       c.category,
       p.quantity,
       format(p.quantity * c.unit_price, 2) as total_amount,
       p.purchase_date
from purchases p
inner join learners l
on p.learner_id = l.learner_id
inner join courses c
on p.course_id = c.course_id
order by total_amount desc;

-- left join

select l.full_name as learner_name,
       c.course_name,
       c.category,
       p.quantity,
       format(p.quantity * c.unit_price, 2) as total_amount,
       p.purchase_date
from learners l
left join purchases p
on l.learner_id = p.learner_id
left join courses c
on p.course_id = c.course_id
order by total_amount desc;

-- right join

select l.full_name as learner_name,
       c.course_name,
       c.category,
       p.quantity,
       format(p.quantity * c.unit_price, 2) as total_amount,
       p.purchase_date
from purchases p
right join courses c
on p.course_id = c.course_id
left join learners l
on p.learner_id = l.learner_id
order by total_amount desc;

-- . Display each learner’s total spending (quantity × unit_price) along with their country.

select
    l.learner_id,
    l.full_name,
    l.country,
    sum(p.quantity * c.unit_price) as total_spending
from learners l
join purchases p on l.learner_id = p.learner_id
join courses c on p.course_id = c.course_id
group by l.learner_id, l.full_name, l.country;

-- Top 3 most purchased courses based on total quantity sold

select
    c.course_id,
    c.course_name,
    sum(p.quantity) as total_quantity_sold
from courses c
join purchases p on c.course_id = p.course_id
group by c.course_id, c.course_name
order by total_quantity_sold desc
limit 3;


-- Each course category’s total revenue and unique learners

select
    c.category,
    SUM(p.quantity * c.unit_price) as total_revenue,
    COUNT(distinct p.learner_id) as unique_learners
from courses c
join purchases p on c.course_id = p.course_id
group by c.category;

-- Learners who purchased courses from more than one category

select 
    l.learner_id,
    l.full_name
from learners l
join purchases p on l.learner_id = p.learner_id
join courses c on p.course_id = c.course_id
group by l.learner_id, l.full_name
having count(distinct c.category) > 1;

-- Courses that have not been purchased at all


select 
    c.course_id,
    c.course_name
from courses c
left join purchases p on c.course_id = p.course_id
where p.course_id is null;


