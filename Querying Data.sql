create database keerth;
use keerth;
create table Country(
Id int primary key,
Country_name varchar(50),
Population int,
Area varchar(50)
);

create table Persons(
Id int primary key,
Fname varchar(50),
Lname varchar(50),
population int,
rating float,
Country_Id int,
Country_name varchar(50)
);

insert into  Country (Id, Country_name, Population, Area) values
(1, 'USA', 331000000, 9833520),
(2, 'Canada', 38000000, 9984670),
(3, 'UK', 67000000, 243610),
(4, 'India', 1393000000, 3287263),
(5, 'Australia', 25600000, 7692024),
(6, 'Germany', 83000000, 357022),
(7, 'Brazil', 212000000, 8515767),
(8, 'Japan', 126000000, 377975),
(9, 'Russia', 144000000, 17098242),
(10, 'China', 1444000000, 9596961);
insert into Persons (Id, Fname, Lname, Population, Rating, Country_id, Country_name) values
(1, 'John', 'Doe', 1000000, 4.3, 1, 'USA'),
(2, 'Emma', 'Smith', 800000, 4.7, 2, 'Canada'),
(3, 'Liam', 'Brown', 700000, 4.1, 3, 'UK'),
(4, 'Aarav', 'Sharma', 1200000, 3.9, 4, 'India'),
(5, 'Olivia', 'Wilson', 950000, 4.6, 5, 'Australia'),
(6, 'Noah', 'Davis', 890000, 4.8, 6, 'Germany'),
(7, 'Isabella', 'Miller', 1100000, 4.9, 7, 'Brazil'),
(8, 'Ethan', 'Garcia', 770000, 4.2, 8, 'Japan'),
(9, 'Sophia', 'Martinez', 660000, 4.0, 9, 'Russia'),
(10, 'Mason', 'Lee', 880000, 3.8, 10, null);

select distinct Country_name from Persons;

select Fname as First_Name, Lname as Last_Name from Persons;

select * from Persons where Rating > 4.0;

select * from Country where Population > 1000000;

select * from Persons 
where Country_name = 'USA' or Rating > 4.5;

select * from Persons where Country_name is null;

select * from Persons 
where Country_name in ('USA', 'Canada', 'UK');

select * from Persons 
where Country_name not in ('India', 'Australia');

select * from Country 
where Population between 500000 and 2000000;

select * from Country 
where Country_name not like 'C%';