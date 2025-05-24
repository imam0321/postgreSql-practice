-- create table
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

-- insert table
INSERT INTO
    students (
        first_name,
        last_name,
        age,
        grade,
        course,
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
        'Math',
        'john.doe@example.com',
        '2004-01-15',
        'O+',
        'USA'
    ),
    (
        'Jane',
        'Smith',
        21,
        'B',
        'History',
        'jane.smith@example.com',
        '2003-05-20',
        'A-',
        'Canada'
    ),
    (
        'Alice',
        'Johnson',
        22,
        'C',
        'Physics',
        'alice.johnson@example.com',
        '2002-07-18',
        'B+',
        'UK'
    ),
    (
        'Bob',
        'Williams',
        23,
        'A',
        'Chemistry',
        'bob.williams@example.com',
        '2001-03-07',
        'AB',
        'Australia'
    ),
    (
        'Charlie',
        'Brown',
        22,
        'B',
        'English',
        NULL,
        '2004-03-30',
        'O-',
        'New Zealand'
    ),
    (
        'Emma',
        'Jones',
        23,
        'C',
        'Biology',
        'emma.jones@example.com',
        '2000-02-12',
        'B+',
        'USA'
    ),
    (
        'Michael',
        'Johnson',
        21,
        'A',
        'Physics',
        'michael.johnson@example.com',
        '2003-11-01',
        'A-',
        'Canada'
    ),
    (
        'Olivia',
        'Davis',
        20,
        'B',
        'Math',
        'olivia.davis@example.com',
        '2003-12-18',
        'O+',
        'UK'
    ),
    (
        'William',
        'Brown',
        20,
        'C',
        'Biology',
        NULL,
        '2001-08-30',
        'AB-',
        'USA'
    ),
    (
        'Sophia',
        'Moore',
        22,
        'A',
        'English',
        'sophia.brown@example.com',
        '2002-01-20',
        'B+',
        'New Zealand'
    ),
    (
        'Liam',
        'Miller',
        21,
        'B',
        'History',
        'liam.miller@example.com',
        '2001-06-11',
        'O+',
        'USA'
    ),
    (
        'Ava',
        'Anderson',
        23,
        'C',
        'Biology',
        'ava.anderson@example.com',
        '2000-07-08',
        'B-',
        'Canada'
    ),
    (
        'Noah',
        'Martinez',
        22,
        'B',
        'Physics',
        NULL,
        '2001-01-28',
        'O-',
        'UK'
    ),
    (
        'Isabella',
        'Clark',
        21,
        'A',
        'Chemistry',
        'isabella.clark@example.com',
        '2003-12-05',
        'AB+',
        'Australia'
    ),
    (
        'Ethan',
        'Garcia',
        23,
        'A',
        'Math',
        'ethan.garcia@example.com',
        '2002-07-22',
        'B+',
        'New Zealand'
    ),
    (
        'Sophie',
        'Moore',
        20,
        'B',
        'English',
        'sophie.moore@example.com',
        '2004-02-11',
        'A-',
        'USA'
    ),
    (
        'Mia',
        'Hernandez',
        22,
        'C',
        'History',
        'mia.hernandez@example.com',
        '2001-05-18',
        'B+',
        'Canada'
    ),
    (
        'James',
        'Young',
        20,
        'A',
        'Biology',
        'james.young@example.com',
        '2003-02-08',
        'O+',
        'USA'
    ),
    (
        'Gonzalez',
        '',
        21,
        'B',
        'Physics',
        NULL,
        '1999-09-30',
        'O-',
        'Australia'
    );

-- SELECT
-- show table all data
SELECT * FROM students;

-- show column name ways data in a table
SELECT first_name, age, dob FROM students;

-- table column show time name change
SELECT email as "Student Email" FROM students;

-- order by show data
SELECT * FROM students ORDER BY first_name ASC;

SELECT country FROM students ORDER BY country ASC;

-- unique data show in column
SELECT DISTINCT country FROM students;

-- condition way to select data
SELECT * FROM students WHERE country = 'USA';

SELECT * FROM students WHERE country = 'USA' AND grade = 'A';

SELECT * FROM students WHERE country = 'USA' OR grade = 'A';

SELECT *
FROM students
WHERE (
        country = 'USA'
        OR country = 'Australia'
    )
    AND age = 20;

SELECT * FROM students WHERE age != 20;

SELECT upper(first_name) FROM students;

-- scalar function (upper, lower, concat, length)
SELECT concat(first_name, ' ', last_name) as "Full Name"
FROM students;

-- aggregate function (max, min, sum, avg, count)
SELECT AVG(age) FROM students;

SELECT MAX(age) FROM students;

SELECT max(length(first_name)) FROM students;

-- Null

SELECT * FROM students WHERE email IS NULL;

SELECT * FROM students WHERE email IS NOT NULL;

SELECT COALESCE(email, 'Email not provided') FROM students

-- In operator
SELECT * FROM students WHERE country IN ('USA', 'UK', 'Canada');

SELECT *
FROM students
WHERE
    country NOT IN ('USA', 'UK', 'Canada')

-- between operator
SELECT * FROM students WHERE age BETWEEN 21 and 22;

-- like operator (case sensitive)
SELECT * FROM students WHERE first_name LIKE '%am';

SELECT * FROM students WHERE first_name LIKE 'M%';

SELECT * FROM students WHERE first_name LIKE '___a%';

SELECT * FROM students WHERE first_name LIKE '___a_';

-- ILike operator (case in sensitive)
SELECT * FROM students WHERE first_name ILIKE 'a%';

-- Limit operator
SELECT * FROM students LIMIT 2

SELECT *
FROM students
WHERE
    country IN ('USA', 'UK', 'Canada')
LIMIT 5;

-- offset operator
SELECT * FROM students LIMIT 5 OFFSET 10

-- DELETE operator
DELETE FROM students WHERE email Is NULL;

SELECT * FROM students WHERE email Is NULL;

-- update operator
SELECT * FROM students

UPDATE students SET grade = 'A' WHERE student_id = 3;

UPDATE students SET grade = 'A+', age = 30 WHERE student_id = 6;