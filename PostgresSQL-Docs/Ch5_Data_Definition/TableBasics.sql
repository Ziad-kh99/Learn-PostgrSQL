

-- CREATE TABLE:
CREATE TABLE my_first_table (
    first_column text,
    second_column integer 
);


CREATE TABLE products (
    product_no INTEGER,
    name TEXT, price NUMERIC 
);


-- DROP TABLE:
DROP TABLE my_first_table;

DROP TABLE IF EXISTS my_first_table;


-- Default Values:
CREATE TABLE products (
    product_no INTEGER,
    name TEXT,
    price NUMERIC DEFAULT 9.99
);



-- Identity Columns:
    -- An identity column is a special column that is generated automatically from an implicit sequence.

CREATE TABLE people (
    id BIGINT GENERATED ALWAYS AS IDENTITY,   
    ssn BIGINT GENERATED BY DEFAULT AS IDENTITY,   -- can be overriding by explicit user-specified values.
    name TEXT,
    address TEXT 
);

INSERT INTO people (name address)
VALUES ('Ziad', 'Egypt-Aswan-Edfu')


INSERT INTO people (id, ssn, name address)
VALUES (DEFAULT, DEFAULT, 'Ziad', 'Egypt-Aswan-Edfu')





-- Generated Columns:

CREATE TABLE poeple (
    -- ....,
    height_cm NUMERIC,
    height_in NUMERIC GENERATED ALWAYS AS (height_cm / 2.54) STORED 
);


drop table products;

