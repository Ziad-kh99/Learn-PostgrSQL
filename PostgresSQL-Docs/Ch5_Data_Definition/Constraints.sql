-- Check constraint:

CREATE TABLE products (
    product_no integer,
    name text,
    price numeric CHECK (price > 0)
);

CREATE TABLE products (
    product_no integer,
    name text,
    price numeric CONSTRAINT positive_price CHECK (price > 0)
);

CREATE TABLE products (
    product_no integer,
    name text,
    price numeric CHECK (price > 0),
    discounted_price numeric CHECK (discounted_price > 0),

    -- table constraints:
    CONSTRIANT valid_discount CHECK (price > discounted_price)
);


insert into products
values (1, 'pool', 6.99);

insert into products
values (2, 'toy', -4.50)        -- Error: violate check constraint.

select * from products;



-- Not Null constraint:
CREATE TABLE products (
    product_no integer NOT NULL,
    name text NOT NULL,
    price numeric CONSTRAINT price_not_null CHECK (price IS NOT NULL AND price > 0)
);

CREATE TABLE products (
    product_no integer NOT NULL,
    name text,
    price numeric NOT NULL CHECK (price > 0)
);


-- Unique Constraint:

CREATE TABLE products (
    product_no integer UNIQUE,
    name text NOT NULL,
    price numeric CHECK (price > 0)
);

CREATE TABLE products (
    product_no integer,
    name text NOT NULL,
    price numeric CHECK (price > 0),

    -- table constraint:
    UNIQUE (product_no)
);

create table products (
    product_no integer,
    name text,
    price numeric CHECK (price > 0),

    UNIQUE (product_no, name)   -- This specifies that the combination of values in the indicated columns is unique across the whole table,
);

CREATE TABLE products (
    product_no integer UNIQUE NULLS NOT DISTINCT,
    name text,
    price numeric CHECK(price > 0)
);

INSERT INTO products
VALUES (1, 'bool', 2.99),
       (2, 'toy', 2.50),
       (2, 'doll', 3.50);

INSERT INTO products
VALUES (2, 'bool', 1.25);

select * from products;

drop TABLE products;


-- Primary Key Constraint (Unique & Not Null):

create table products (
    product_no integer PRIMARY KEY,
    name text,
    price numeric
);



-- Foreign Key - Referential Integrity:
CREATE TABLE products (         -- referenced table
    product_no integer PRIMARY KEY,
    name text NOT NULL,
    price numeric CHECK (price > 0)
);

CREATE TABLE orders (       -- referencing table
    order_no integer PRIMARY KEY,
    product_no integer REFERENCES products(product_no),
    quantity integer,

    -- FOREIGN KEY (product_no) REFERENCES products(product_no)
);

DROP TABLE products, orders;


-- Example:
CREATE TABLE products (
    product_no integer PRIMARY KEY,
    name text NOT NULL,
    price numeric CHECK (price > 0)
);

CREATE TABLE orders (
    order_id integer PRIMARY KEY,
    shipping_address text NOT NULL
);

CREATE TABLE order_items (
    order_id integer REFERENCES orders ON DELETE CASCADE,       -- delete order times as will.ABORT
    product_no integer REFERENCES products ON DELETE RESTRICT,  -- prevent product from deleting. 
    quantity integer,

    PRIMARY KEY (order_id, product_no)
);


INSERT INTO products
VALUES (1, 'pool', 3.25),
       (2, 'toy', 2.50),
       (3, 'doll', 3.99);

INSERT INTO orders
VALUES (1, 'Cairo'),
       (2, 'Alex'),
       (3, 'Aswan');

INSERT INTO order_items
VALUES (2, 3, 4);


DELETE FROM products WHERE product_no = 1;
DELETE FROM orders WHERE order_id = 3;

SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;

DROP TABLE order_items, orders, products;