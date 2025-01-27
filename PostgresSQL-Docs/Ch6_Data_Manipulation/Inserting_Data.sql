

CREATE TABLE products (
    product_no integer,
    name text,
    price numeric 
);



INSERT INTO products 
VALUES (1, 'Cheese', 9.99);

INSERT INTO products DEFAULT VALUES;


INSERT INTO products 
SELECT product_no, name, price FROM products;

SELECT * FROM products;


CREATE TABLE users (
    id serial PRIMARY KEY,
    firstname text,
    lastname text
);


INSERT INTO users (firstname, lastname)
VALUES ('Ziad', 'Khaled'),
       ('Hany', 'Yhia')
RETURNING id;

SELECT * FROM users;