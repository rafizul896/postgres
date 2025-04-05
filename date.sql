SHOW timezone;

SELECT now();

CREATE TABLE timeZ (ts TIMESTAMP without TIME zone , tsz TIMESTAMP with TIME zone);

INSERT INTO timez VALUES('2024-01-12 12:12:00','2024-01-12 12:12:00')

SELECT * FROM timez

SELECT CURRENT_DATE;

SELECT now()::date;

SELECT now()::time;

SELECT to_char(now(),'yyyy/mm/dd')

SELECT to_char(now(),'DDD');

SELECT CURRENT_DATE - INTERVAL '1 year';

SELECT age(CURRENT_DATE,'2006-12-15');

SELECT extract(month from '2006-12-15'::date)

SELECT *,age(CURRENT_DATE,dob) from students;