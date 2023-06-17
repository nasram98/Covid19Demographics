What year yeilded the most cases?

SELECT EXTRACT(YEAR FROM data_date) AS year, SUM(new_cases) AS total_cases
FROM covid19
GROUP BY year
ORDER BY total_cases DESC

what year Yielded the most Deaths?

SELECT EXTRACT(YEAR FROM data_date) AS year, SUM(new_deaths) AS total_deaths
FROM covid19
GROUP BY year
ORDER BY total_deaths DESC

what year yeiled the most hospitalized?

SELECT EXTRACT(YEAR FROM data_date) AS year, SUM(new_hospitalized) AS total_hospitalizations
FROM covid19
GROUP BY year
ORDER BY total_hospitalizations DESC


what are the top counties that yeilded the most hospitialized?

SELECT county, SUM(new_hospitalized) AS total_hospitalizations
FROM covid19
GROUP BY county
ORDER BY total_hospitalizations DESC
LIMIT 10;

what are the top counties that yeilded the most deaths?

SELECT county, SUM(new_deaths) AS total_deaths
FROM covid19
GROUP BY county
ORDER BY total_deaths DESC
LIMIT 10;

what are the top counties that yeiled the most cases ?

SELECT county, SUM(new_cases) AS total_new_cases
FROM covid19
GROUP BY county
ORDER BY total_new_cases DESC
LIMIT 10;

what are the lowest counties that yeiled for hospitalized, deaths, total cases

---Lowest Counties for Hospitalizations:

SELECT county, SUM(new_hospitalized) AS total_hospitalizations
FROM covid19
GROUP BY county
ORDER BY total_hospitalizations ASC
LIMIT 10;

--- Lowest Counties for Deaths:

SELECT county, SUM(new_deaths) AS total_deaths
FROM covid19
GROUP BY county
ORDER BY total_deaths ASC
LIMIT 10;


---Lowest Counties for Total Cases:

SELECT county, SUM(new_cases) AS total_cases
FROM covid19
GROUP BY county
ORDER BY total_cases ASC
LIMIT 10;


---what is the trend for positive and negatives for covid19 by months and year

SELECT EXTRACT(MONTH FROM data_date) AS Month, EXTRACT(YEAR FROM data_date) AS Year, SUM(NEW_POS_TESTS) AS TotalPositiveTests, SUM(NEW_NEG_TESTS) AS TotalNegativeTests
FROM covid19
GROUP BY Year, Month
ORDER BY Year, Month;

----- total number of cases reported for each date, categorized by months in a year and counties... try doing a heatmap from this query possibly using color intensity or shading.---
--- if this was to happen, probably use jupyter notebook or think of a way to use in powerbi??----

SELECT EXTRACT(MONTH FROM data_date) AS Month, EXTRACT(YEAR FROM data_date) AS Year, county, SUM(new_cases) AS TotalCases
FROM covid19
GROUP BY Year, Month, county
ORDER BY Year, Month, county;

--which counties had the most cases by age group

