-- create table in databse

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    crouse VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO
    students (
        first_name,
        last_name,
        age,
        grade,
        crouse,
        email,
        dob,
        blood_group,
        country
    )
VALUES (
        'John',
        'Doe',
        20,
        'A',
        'Computer Science',
        'john.doe@example.com',
        '2005-05-15',
        'O+',
        'USA'
    ),
    (
        'Jane',
        'Smith',
        19,
        'B',
        'Mathematics',
        'jane.smith@example.com',
        '2006-03-22',
        'A-',
        'Canada'
    ),
    (
        'Alice',
        'Johnson',
        21,
        'A',
        'Physics',
        'alice.johnson@example.com',
        '2004-11-30',
        'B+',
        'UK'
    ),
    (
        'Bob',
        'Williams',
        22,
        'C',
        'History',
        'bob.williams@example.com',
        '2003-07-08',
        'AB+',
        'Australia'
    ),
    (
        'Charlie',
        'Brown',
        20,
        'B',
        'Chemistry',
        'charlie.brown@example.com',
        '2005-01-14',
        'O-',
        'USA'
    ),
    (
        'Emily',
        'Davis',
        18,
        'A',
        'Biology',
        'emily.davis@example.com',
        '2007-12-05',
        'A+',
        'Germany'
    ),
    (
        'Frank',
        'Garcia',
        23,
        'D',
        'Engineering',
        'frank.garcia@example.com',
        '2002-09-19',
        'B-',
        'Mexico'
    ),
    (
        'Grace',
        'Martinez',
        21,
        'B',
        'Art',
        'grace.martinez@example.com',
        '2004-06-11',
        'AB-',
        'Spain'
    ),
    (
        'Hannah',
        'Lee',
        20,
        'A',
        'Philosophy',
        'hannah.lee@example.com',
        '2005-02-28',
        'O+',
        'South Korea'
    ),
    (
        'Isaac',
        'Kim',
        19,
        'C',
        'Economics',
        'isaac.kim@example.com',
        '2006-10-23',
        'A-',
        'South Korea'
    );

-- i went to table column data ass and desc
SELECT * FROM students ORDER BY last_name DESC;

-- how to filter column in where key word
SELECT * FROM students WHERE country = 'USA'

-- how to filter in WHERE KEY WORD USE
SELECT * FROM students WHERE age >= 20;

-- how to length
SELECT length(first_name) FROM students;

-- how to avarage
SELECT avg(age) FROM students;

-- SELECT count(*) FROM students; total data for table

-- how to get max length in table colum data
SELECT max(length(first_name)) FROM students;

-- SELECT *FROM students
--     WHERE country = 'USA';

SELECT * FROM students WHERE NOT country = 'USA'

-- how to get null value in colum
select * FROM students WHERE email is NOT null;

SELECT * FROM students WHERE grade = 'A';

-- why i went to use COALESCE
-- select * from students
SELECT
    COALESCE(email, 'email not provided') as "Email",
    blood_group,
    first_name
from students;
--i went to ji sokal email null tader okhani text bosbi

-- akadik column data aksate dekar jonno

SELECT * FROM students WHERE country IN ('UK', 'USA')

-- condition check
SELECT * FROM students WHERE age BETWEEN 19 and 20;
--jsokol column age 19 and 20 ta dekaw

SELECT *
FROM students
WHERE
    dob BETWEEN '2001-01-01' and '2004-01-10'
ORDER BY dob;

-- crecter dia data filter
SELECT *
FROM students
    -- WHERE first_name LIKE '--c-';
WHERE
    first_name LIKE 'A%';

-- how to pagination
SELECT * FROM students LIMIT 5;

SELECT * FROM students WHERE country in ('USA', 'UK') LIMIT 5;

SELECT * FROM students LIMIT 5 OFFSET 5 * 0;

SELECT * FROM students LIMIT 5 OFFSET 5 * 1;

SELECT * FROM students

-- how to delete row date in filter

DELETE FROM students WHERE grade = 'D';

DELETE FROM students WHERE grade = 'B';

SELECT * FROM students

-- how to update column data
UPDATE students
set
    email = 'defult@gmail.com'
WHERE
    student_id = 3;

SELECT * FROM students