
-- create trainer
create table trainer (
  tid int not null AUTO_INCREMENT primary key,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  sex VARCHAR(1),
  age int not null,
  Salary iNT
);
-- alter trainer
ALTER TABLE trainer AUTO_INCREMENT = 200;

-- insert trainer 
insert into trainer ( first_name , last_name , sex, age,  Salary)VALUES ( 'Spencer','Keller', 'M', '22','160000');
insert into trainer ( first_name , last_name , sex, age,  Salary)VALUES ( 'Katerina','Mays', 'F', '24','150000');
insert into trainer ( first_name , last_name , sex, age,  Salary)VALUES ( 'Bill','Tyler', 'M', '25','170000');


-- create class
create table class (
  cid int not null AUTO_INCREMENT primary key,
  class_name varchar(30),
  c_time time,
  tid int not null,
  foreign key (tid ) references trainer(tid)
);

-- alter class
ALTER TABLE class AUTO_INCREMENT = 500;

-- insert class 
insert into class ( class_name  , c_time, tid)VALUES ( 'class_A','08:00','200');
insert into class ( class_name  , c_time,  tid)VALUES ( 'class_B','10:00', '201');
insert into class ( class_name  , c_time,  tid)VALUES ( 'class_C','14:00', '202');



-- create member
create table g_member (
  mid int not null AUTO_INCREMENT primary key,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  sex VARCHAR(1),
  age int not null,
  member_ship_date date,
  cid int not null,
  foreign key (cid ) references class(cid)
);

-- alter g_member
ALTER TABLE g_member AUTO_INCREMENT = 100;


-- insert member
insert into g_member ( first_name , last_name , sex, age, member_ship_date, cid)VALUES ( 'David','Wallace', 'M', '25','2023-09-01' ,'500');
insert into g_member ( first_name , last_name , sex, age, member_ship_date, cid)VALUES ( 'Jan','Levinson', 'F', '27','2023-09-01', '501');
insert into g_member ( first_name , last_name , sex, age, member_ship_date, cid)VALUES ( 'Micheal','Scott', 'M', '22','2023-09-01', '502');
insert into g_member ( first_name , last_name , sex, age, member_ship_date, cid)VALUES ( 'Angela','Martin', 'F', '20','2023-09-01', '500');
insert into g_member ( first_name , last_name , sex, age, member_ship_date, cid)VALUES ( 'Kelly','Kapoor', 'F', '32','2023-09-01', '501');
insert into g_member ( first_name , last_name , sex, age, member_ship_date, cid)VALUES ( 'Stanley','Hudson', 'M', '26','2023-09-01', '502');
insert into g_member ( first_name , last_name , sex, age, member_ship_date, cid)VALUES ( 'Josh','Porter', 'M', '40','2023-09-01', '500');
insert into g_member ( first_name , last_name , sex, age, member_ship_date, cid)VALUES ( 'Andy','Bernard', 'M', '16','2023-10-01', '501');
insert into g_member ( first_name , last_name , sex, age, member_ship_date, cid)VALUES ( 'Jim','Halpert', 'M', '31','2023-10-01', '502');

insert into g_member ( first_name , last_name , sex, age, member_ship_date, cid)VALUES ( 'Alvin','Hall', 'M', '30','2023-10-01', '500');
insert into g_member ( first_name , last_name , sex, age, member_ship_date, cid)VALUES ( 'Janis  ','Bolton', 'F', '32','2023-10-01', '501');
insert into g_member ( first_name , last_name , sex, age, member_ship_date, cid)VALUES ( 'Kari ','Bridges', 'M', '26','2023-10-01', '502');
insert into g_member ( first_name , last_name , sex, age, member_ship_date, cid)VALUES ( 'Aida ','Herring', 'F', '33','2023-11-01', '500');
insert into g_member ( first_name , last_name , sex, age, member_ship_date, cid)VALUES ( 'Taha  ','Scott', 'M', '24','2023-11-01', '501');
insert into g_member ( first_name , last_name , sex, age, member_ship_date, cid)VALUES ( 'Liz ','Daly', 'F', '35','2023-11-01', '502');
insert into g_member ( first_name , last_name , sex, age, member_ship_date, cid)VALUES ( 'Katie ','Gill', 'F', '37','2023-12-01', '500');
insert into g_member ( first_name , last_name , sex, age, member_ship_date, cid)VALUES ( 'Serena ','Hall', 'F', '15','2023-12-01', '501');
insert into g_member ( first_name , last_name , sex, age, member_ship_date, cid)VALUES ( 'Elle ','Monroe', 'F', '18','2023-12-01', '502');



-- create staff
create table staff (
  sid int not null AUTO_INCREMENT primary key,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  sex VARCHAR(1),
  age int not null,
  s_type VARCHAR(40),
  Salary iNT
);

-- insert staff 
insert into staff ( first_name , last_name , sex, age, s_type, Salary)VALUES ( 'sam','claflin', 'M', '37','manager','250000');
insert into staff ( first_name , last_name , sex, age, s_type, Salary)VALUES ( 'jena','melone', 'F', '24', 'secretary','110000');
insert into staff ( first_name , last_name , sex, age, s_type, Salary)VALUES ( 'liam','watson', 'M', '60','worker','50000');
insert into staff ( first_name , last_name , sex, age, s_type, Salary)VALUES ( 'anna','cooper', 'F', '20','secretary','110000');
insert into staff ( first_name , last_name , sex, age, s_type, Salary)VALUES ( 'lily','collins', 'F', '32','accountants','180000');


-- create bill
create table bill (
  bid int not null AUTO_INCREMENT primary key,
  amount int,
  b_date date,
  mid int not null,
  foreign key (mid ) references g_member(mid),
  sid int not null,
  foreign key (sid ) references staff(sid),
  cid int not null,
  foreign key (cid ) references class(cid)
);

-- alter bill
ALTER TABLE bill AUTO_INCREMENT = 300;

-- insert bill 
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '60000','2023-09-01', '100', '2', '501');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '50000','2023-09-01', '101', '4', '502');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '70000','2023-09-01', '102', '2', '500');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '60000','2023-09-01', '103', '4', '501');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '50000','2023-09-01', '104', '2', '502');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '70000','2023-09-01', '105', '4', '500');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '60000','2023-09-01', '106', '2', '501');


insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '70000','2023-10-01', '100', '2', '502');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '50000','2023-10-01', '101', '4', '501');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '60000','2023-10-01', '102', '2', '500');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '70000','2023-10-01', '103', '4', '502');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '50000','2023-10-01', '104', '2', '501');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '60000','2023-10-01', '105', '4', '500');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '70000','2023-10-01', '106', '2', '502');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '50000','2023-10-01', '107', '4', '501');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '60000','2023-10-01', '108', '2', '500');

insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '70000','2023-10-01', '109', '2', '502');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '50000','2023-10-01', '110', '4', '501');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '60000','2023-10-01', '111', '2', '500');


insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '50000','2023-11-01', '100', '2', '501');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '60000','2023-11-01', '101', '4', '500');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '70000','2023-11-01', '102', '2', '502');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '50000','2023-11-01', '103', '4', '501');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '60000','2023-11-01', '104', '2', '500');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '70000','2023-11-01', '105', '4', '502');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '50000','2023-11-01', '106', '2', '501');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '60000','2023-11-01', '107', '4', '500');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '70000','2023-11-01', '108', '2', '502');

insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '50000','2023-11-01', '109', '2', '501');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '60000','2023-11-01', '110', '4', '500');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '70000','2023-11-01', '111', '2', '502');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '50000','2023-11-01', '112', '4', '501');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '60000','2023-11-01', '113', '2', '500');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '70000','2023-11-01', '114', '4', '502');


insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '60000','2023-12-01', '100', '2', '500');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '50000','2023-12-01', '101', '4', '501');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '70000','2023-12-01', '102', '2', '502');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '60000','2023-12-01', '103', '4', '500');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '50000','2023-12-01', '104', '2', '501');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '70000','2023-12-01', '105', '4', '502');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '60000','2023-12-01', '106', '2', '500');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '50000','2023-12-01', '107', '4', '501');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '70000','2023-12-01', '108', '2', '502');

insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '60000','2023-12-01', '109', '2', '500');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '50000','2023-12-01', '110', '4', '501');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '70000','2023-12-01', '111', '2', '502');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '60000','2023-12-01', '112', '4', '500');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '50000','2023-12-01', '113', '2', '501');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '70000','2023-12-01', '114', '4', '502');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '60000','2023-12-01', '115', '2', '500');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '50000','2023-12-01', '116', '4', '501');
insert into bill ( amount , b_date , mid, sid, cid)VALUES ( '70000','2023-12-01', '117', '2', '502');



-- create diet_plan
create table diet_plan (
  dp_type varchar(30),
  mid int not null references g_member(mid),
  tid int not null references trainer(tid),
  primary key(mid ,tid )
);

-- insert diet_plan
insert into diet_plan VALUES ( 'vegan', '100', '200');
insert into diet_plan VALUES ( 'fasting', '101', '201');
insert into diet_plan VALUES ( 'raw_food','102', '202');
insert into diet_plan VALUES ( 'fasting', '103', '200');
insert into diet_plan VALUES ( 'vegan', '104', '201');
insert into diet_plan VALUES ( 'raw_food','105', '202');
insert into diet_plan VALUES ( 'raw_food', '106', '200');
insert into diet_plan VALUES ( 'fasting', '107', '201');
insert into diet_plan VALUES ( 'vegan','108', '202');
insert into diet_plan VALUES ( 'vegan', '109', '200');
insert into diet_plan VALUES ( 'fasting', '110', '201');
insert into diet_plan VALUES ( 'raw_food','111', '202');
insert into diet_plan VALUES ( 'fasting', '112', '200');
insert into diet_plan VALUES ( 'vegan', '113', '201');
insert into diet_plan VALUES ( 'raw_food','114', '202');
insert into diet_plan VALUES ( 'raw_food', '115', '200');
insert into diet_plan VALUES ( 'fasting', '116', '201');
insert into diet_plan VALUES ( 'vegan','117', '202');





-- 1
select * from g_member
where cid = 500;

-- 2
select cid , count(*) as class_number 
from g_member  
group by cid;

-- 3
select count(*) as men_members
from g_member
group by sex
having sex = 'M';

-- 4
select * from staff
order by salary desc;


-- 5
select trainer.first_name , trainer.last_name
from trainer 
join class 
on class.tid = trainer.tid
join g_member
on g_member.cid = class.cid
where mid = 111;



-- 6
select sum(amount) , b_date
from bill 
where bill.b_date = '2023-12-01'
group by cid;

-- 7
select mid 
from diet_plan 
where tid = 200;

-- 8
select sum(amount) 
from bill 
where cid = 500
group by b_date;


-- 9
select count(*) as old_member
from g_member 
where age>30 ;

-- 10
select first_name
from g_member
order by first_name;

-- 11
select first_name , last_name
from g_member
join class 
on class.cid = g_member.cid
where tid = 201;

-- 12
select mid 
from g_member 
join class 
on class.cid = g_member.cid
join trainer 
on class.tid = trainer.tid
where g_member.sex = trainer.sex
