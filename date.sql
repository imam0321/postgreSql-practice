SHOW TIMEZONE;

SELECT now();

create Table timeZ (ts TIMESTAMP without time zone , tsz TIMESTAMP with TIME zone); 

INSERT into timeZ VALUES('2024-01-12 10:25:00', '2024-05-12 11:25:00');

SELECT * FROM timeZ

-- time stamps 
SELECT now();

SELECT CURRENT_DATE;

SELECT now()::date;
SELECT now()::time;

-- formate date time

SELECT to_char(now(), 'yyyy/mm/dd');

-- current date theke pichone jaw
SELECT CURRENT_DATE - INTERVAL '1 year';

SELECT age(CURRENT_DATE, '1999-10-21');


SELECT extract(year FROM '2024-01-25'::date);


SELECT 1::BOOLEAN;


