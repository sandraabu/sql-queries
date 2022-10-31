SELECT count(DISTINCT (rental_id)) as Num_of_rides, extract(year from start_date) as year
FROM santander_2016
Group by year
UNION ALL 
SELECT count(DISTINCT (rental_id)) as Num_of_rides, extract(year from start_date) as year
FROM santander_2017
Group by year
UNION ALL 
SELECT count(DISTINCT (rental_id)) as Num_of_rides, extract(year from start_date) as year
FROM santander_2018
Group by year
UNION ALL 
SELECT count(DISTINCT (rental_id)) as Num_of_rides, extract(year from start_date) as year
FROM santander_2019
Group by year
order by year asc;