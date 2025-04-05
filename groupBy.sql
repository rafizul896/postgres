SELECT * from students;

SELECT country, count(*), avg(age) from students
    GROUP BY country;

SELECT country,avg(age) from students
    GROUP BY country
        HAVING avg(age) > 20;

SELECT to_char(dob, 'YYYY'), count(*) dob from students
    GROUP BY to_char(dob,'YYYY');
