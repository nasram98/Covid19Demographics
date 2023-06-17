select *
FROM covid19

ALTER TABLE covid19
ALTER COLUMN data_date TYPE date 
USING data_date::date;

Questions:

What year yeilded the most cases
what year yeiled the most deaths
what year yeiled the most hospitalized
within a given year, what was the trend month over month
what is the averges new cases by month
what are the top counties that yeilded the most hospitialized, deaths, total cases 
what are the lowest counties that yeiled for hospitalized, deaths, total cases

------------------
race and ethnicity

select *
from raceandethnicity

Alter Table raceandethnicity Alter Column ethnicity_date 

alter table raceandethnicity 
  alter column_name type date using(column_name::date)

ALTER TABLE raceandethnicity
ALTER COLUMN ethnicity_date TYPE date 
USING ethnicity_date::date;


ALTER TABLE raceandethnicity
ALTER COLUMN ethnicity_totaldeaths TYPE Integer
USING ethnicity_totaldeaths::Integer;


ALTER TABLE raceandethnicity
ALTER COLUMN ethnicity_totaldeaths_percent TYPE decimal (20, 10)
USING ethnicity_totaldeaths_percent::decimal(20,10);
-------------------------
questions??

which ethnicity has top cases, lowest cases
by year by ethnicity what are the trends by total deaths and by year

select distinct ethnicity 
from raceandethnicity




select ethnicity, count (*)
from raceandethnicity
GROUP BY ethnicity

select ethnicity, SUM(ethnicity_totalcases)
FROM raceandethnicity
GROUP BY ethnicity
ORDER BY SUM(ethnicity_totalcases) DESC

------

Agecounty 

select *
from agecounty

ALTER TABLE agecounty
ALTER COLUMN age_date TYPE date 
USING age_date::date;


--which counties had the most cases by age group
--what is the trend by age group for total cases
---what counties had the leaset cases by age grouo
--what age group where at risk


------

select *
from income