select * from bikes;

select * from bikes order by bike_id asc;
select * from bikes where bike_id =11;

--UPDATE
update bikes set price = 95000 where bike_id = 11;

COUNT AND GROUP BY
SELECT year_mfg, COUNT(*) FROM bikes GROUP BY year_mfg;

SELECT bike_id, COUNT(*) FROM bikes GROUP BY bike_id;

--COUNT
SELECT COUNT(*) FROM bikes;
select count (*) from bikes where year_mfg=2020;

--LIMIT 
select * from bikes limit(10);

--OFFSET
--The OFFSET clause is used to specify where to start selecting the records to return.
--If you want to return 20 records, but start at number 40, you can use both LIMIT and OFFSET.

select * from bikes limit(10) offset 15;


--MIN & MAX
select  min(price) from bikes;
select  max(price) from bikes;

SELECT model_name, price
FROM bikes
WHERE price = (SELECT max(price) FROM bikes);

select model_name , price
from bikes
where price = (select(max(price))from bikes);

--SUM
select sum (price) from bikes;
select sum (price)from bikes where year_mfg = 2020;

--AVG
select avg(price)from bikes;
select avg(price :: int)from bikes;

--TYPE CONVERSION
select '2020-10-10 12:34:00':: timestamp :: date;

SELECT AVG(price)::NUMERIC(10,2)
FROM bikes;

--BETWEEN
--The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
select * from  bikes where year_mfg between 2020 and 2021;


