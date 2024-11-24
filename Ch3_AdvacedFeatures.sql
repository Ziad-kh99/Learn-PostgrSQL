-- Active: 1728485377142@@127.0.0.1@5432@mydb



-- 1. Views:
CREATE VIEW myview AS 
    SELECT name, temp_lo, temp_hi, prcp, date, location
    FROM weather JOIN cities 
        ON city = name;


SELECT * FROM myview;


DROP VIEW myview;

-- 2. Foregin Kyes:
DROP TABLE cities, weather;

CREATE TABLE cities (
    name VARCHAR(80) PRIMARY KEY,
    location POINT
);

CREATE TABLE weather (
    city VARCHAR(80),
    temp_lo INT,
    temp_hi INT,
    prcp REAL,
    date DATE,
    FOREIGN KEY (city) REFERENCES cities(name)
);

INSERT INTO weather 
VALUES ('Berkeley', 45, 53, 0.0, '1994-11-28');




-- 4. Window Functions:
SELECT depname, empno, salary, avg(salary) OVER (PARTITION BY depname)
FROM empsalary;




-- 5. Inheritance:




