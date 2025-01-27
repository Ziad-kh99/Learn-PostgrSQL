
DROP TABLE employees;

CREATE TABLE employees (
    id SERIAL PRIMARY KEY ,
    name text
);


INSERT INTO employees (name)
VALUES ('Hisham'), ('Kareem'), ('Amr');

SELECT * FROM employees;

DELETE FROM employees;
TRUNCATE employees RESTART IDENTITY;