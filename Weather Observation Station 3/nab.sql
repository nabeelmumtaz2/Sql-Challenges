--Query a list of CITY names from STATION with even ID numbers only. You may print the results in any order, but must exclude duplicates from your answer.
Select DISTINCT CITY from STATION where MOD(id , 2) = 0;
