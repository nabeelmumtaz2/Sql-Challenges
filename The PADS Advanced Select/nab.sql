--Generate the following two result sets:

    --Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).

    --Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

    --There are a total of [occupation_count] [occupation]s.

    --where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

--Note: There will be at least two entries in the table for each type of occupation.
--Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.
--The results of the second query are ascendingly ordered first by number of names corresponding to each profession and then alphabetically by profession.

SELECT Concat(name, '('
                    || Substr(occupation, 1, 1)
                    || ')')
FROM   occupations
ORDER  BY name;

SELECT 'There are a total of '
       || Count(occupation)
       || ' '
       || Lower(occupation)
       || 's.'
FROM   occupations
GROUP  BY occupation
ORDER  BY Count(occupation),
          occupation;  
