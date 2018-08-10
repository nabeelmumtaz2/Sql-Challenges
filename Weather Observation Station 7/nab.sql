--Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
SELECT distinct CITY 
FROM STATION 
WHERE REGEXP_LIKE(CITY, '[AaEeIiOoUu]$') 
ORDER BY CITY;
