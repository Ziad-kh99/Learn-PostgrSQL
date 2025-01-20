create table products (
    pid serial primary key,
    name text,
    price float,
    inventory integer
);

create table sales (
    saleid serial primary key,
    pid integer,
    price float,
    quantity integer
);

insert into products (name, price, inventory)
values ('Phone', 999.99, 100)

BEGIN 
SELECT * FROM products;
UPDATE products SET inventory = inventory - 10;


SELECT * from products;

