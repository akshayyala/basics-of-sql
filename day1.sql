---
CREATE DATABASE test;
--we dont have use command in pgadmin unlike in mysql , Just ensure you're connected to the correct database for your operations.

--CREATE A TABLE WITH THE NAME BIKES 
create table bikes (
	bike_id int , primary key, 
	model_name varchar(50) ,
	year_mfg int , 
	price decimal,
	brand varchar(40)
);

--Insert DATA INTO THE TABLE 
INSERT INTO bikes (bike_id, model_name, year_mfg, price, brand) VALUES
(25, 'Speedster 100', 2021, 899.99, 'SpeedyCo'),
(26, 'MountainX Pro', 2022, 1199.50, 'MountainRider'),
(27, 'Urban Glide', 2020, 499.99, 'CityCruiser'),
(28, 'Racer ZX', 2023, 1299.99, 'RaceWorks'),
(29, 'Cyclone 3000', 2021, 849.75, 'CycloTech'),
(30, 'RoadMaster Elite', 2022, 1599.00, 'RoadTech'),
(31, 'Commuter 400', 2021, 349.99, 'CommuterPro'),
(32, 'VeloSprint', 2023, 1099.95, 'VeloMax'),
(33, 'TrailBlazer X', 2022, 999.00, 'BlazeCycle'),
(34, 'CruiseMaster 500', 2020, 899.99, 'CruiseCycle'),
(35, 'TurboSpeed 350', 2023, 1799.50, 'TurboCycle'),
(36, 'CityZoom 200', 2021, 699.00, 'ZoomCycles'),
(37, 'OutlandRider', 2020, 799.99, 'OutlandCycles'),
(38, 'BikeTech Falcon', 2023, 1299.99, 'BikeTech'),
(39, 'SportFlex 1500', 2022, 1699.99, 'SportCycle'),
(40, 'EcoCruiser 700', 2020, 599.99, 'EcoBike');

-- TO VIEW DATA IN THE TABLE 
select * from bikes;

-- ORDER BY FUNCTION 
Select * from bikes order by model_name desc; 
select * from bikes order by model_name , year_mfg;

-- WHERE CLAUSE 
select * from bikes where year_mfg = 2020;
select * from bikes where model_name =  'BMW G310R';


--ALTER CLAUSE
ALTER TABLE bikes
ADD COLUMN engine_cc int;

--DROP 
alter table bikes drop column engine_cc;

--WHERE CLAUSE
--WHERE WITH AND CLAUSE 
/* The LIKE operator matches case-sensitive string patterns
the ILIKE operator matches case-insensitive string patterns */
/* Both % and %% are used as wildcards in ILIKE for pattern matching.
% matches any number of characters, and %% is just redundant syntax (essentially equivalent to a single %).*/

SELECT *
FROM bikes
WHERE year_mfg = 2020 AND model_name LIKE 'y%';

SELECT *
FROM bikes
WHERE year_mfg = 2020 AND model_name iLIKE '%y%';

--OR CLAUSE 
select * from bikes
where year_mfg= 2020 or price= 6000; 

--COMBINE AND & OR CLAUSE 
select * from bikes
where year_mfg = 2020 and model_name ilike '%r%' or price = 1299;

select * from bikes
where year_mfg = 2020 and model_name ilike '%r%' or price > 1299;

select * from bikes
where year_mfg = 2020 and model_name ilike 'r%' or price = 1299.99;

--NOT operator 
--It used in combination with other operators to give the opposite result also called the negative result

SELECT * FROM bikes
WHERE NOT year_mfg = 2020;

select * from bikes
where year_mfg != 2020;  -- using logical operators

select * from bikes
where not model_name ilike 'r%'

SELECT * FROM bikes
WHERE NOT model_name ILIKE '%r'
  AND NOT model_name ILIKE 'r%';
/* The NOT model_name ILIKE '%r' condition ensures that the model_name does not end with the letter 'r'.
The NOT model_name ILIKE 'r%' condition ensures that the model_name does not start with the letter 'r'.
The AND ensures that both conditions are satisfied simultaneously (i.e., the model_name neither starts nor ends with 'r'). */


--ALTER TABLE
-- ADD A NEW COLUMN CC TO THE TABLE OF THE DATA TYPE INT
alter table bikes
add column cc int ; 

alter table bikes
alter column cc type float ; -- DATA TYPE OF COLUMN CC IS CHANGED TO FLOAT FROM INT

-- DROP FUNCION
-- THE COLUMN CC IS DROPPED FROM THE TABLE 
alter table bikes
drop column cc ; 

select * from bikes ; 

-- TO ALTER THE DATATYPE
ALTER TABLE bikes
ALTER COLUMN brand TYPE varchar(100);

--IS NOT NULL Syntax
--shows all the colums which are not null 
SELECT * FROM bikes
WHERE brand IS NOT NULL;







 