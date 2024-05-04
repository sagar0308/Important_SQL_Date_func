--select current date
select current_date();

--get current time
select current_timestamp();

--get current time
select current_time();

--add 4 months from current date
select add_months(current_date,4);
select add_months(to_date('2024-11-19'),3);

--3 months back from current date
select add_months(current_date,-3);

--get year from date
select year(to_date('2011-09-18'));
--or
select date_trunc('YEAR',to_date('2011-09-18')) AS get_year;

--get month from the date 
select date_trunc('MONTH',to_date('2008-08-24')) as get_mth;

--get day from the date 
select date_trunc('DAY',to_date('2008-08-03')) as get_date;

--get last date from month
select last_day(to_date('2008-08-03'));

-- GET LAST DAY OF PREVIOUS MONTH
SELECT LAST_DAY(ADD_MONTHS(CURRENT_DATE,-1)) AS LAST_DAY_OF_PRV_MTH;

-- GET FIRST DAY OF PREVIOUS MONTH
SELECT LAST_DAY(ADD_MONTHS(CURRENT_DATE,-2))+ INTERVAL '1 DAY' AS FIRST_DAY_OF_PRV_MTH;

--GET QUARTER 
SELECT QUARTER(CURRENT_DATE());


--CONVERT DATE IN ANY FORMAT
SELECT TO_CHAR(TO_DATE('1993-08-17'),'DD-MM-YYYY') AS DATE_DD_MM_YYYY;
--17-08-1993

--convert date as month-year format
SELECT TO_CHAR(TO_DATE('1993-08-17'),'MON-YYYY') AS DATE_MON_YYYY;
--Aug-1993

--how many days/month/year surpassed from given date
select datediff('month', '2022-06-01',CURRENT_DATE);

select extract(hour,to_timestamp('2018-01-01 21:35:10.000'));