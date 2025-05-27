SELECT now();
CREATE Table time_z (ts TIMESTAMP without time zone, tsz TIMESTAMP with TIME zone);

INSERT INTO time_z VALUES('2002-01-02 8:48:00', '2000-05-02 10:50:00' );

SELECT * FROM time_z

SELECT current_time;
SELECT CURRENT_DATE;

-- how to set current date time and formet
SELECT to_char(now(), 'dd-mm-yyyy');
SELECT to_char(now(), 'DY');

-- why i went to use INTERVAL
SELECT CURRENT_DATE - INTERVAL '2 year 2 month';

-- how to get age in posgresSQL
SELECT age (CURRENT_DATE, '1995-04-27');
SELECT *, age(CURRENT_DATE, dob) FROM students;
SELECT extract(month from '2024-01-24'::date);

-- how to use GROUP BY in grouping to column data
SELECT country FROM students
    GROUP BY country;
SELECT country, count(*), avg(age) FROM students
    GROUP BY country;

SELECT country, avg(age) FROM students
    GROUP BY country
        HAVING avg(age) > 20;