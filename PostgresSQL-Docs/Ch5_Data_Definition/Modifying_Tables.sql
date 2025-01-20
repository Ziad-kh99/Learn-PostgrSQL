CREATE TABLE products (
    product_no integer,
    name text,
    price numeric
);

DROP TABLE products;

-- Adding a Column:
ALTER TABLE products ADD COLUMN description text;
ALTER TABLE products ADD COLUMN description text CHECK (description <> '')


-- Removing a Column:
ALTER TABLE products DROP COLUMN description;
ALTER TABLE products DROP COLUMN description CASCADE;


-- Adding a Constraint:
ALTER TABLE products ADD CHECK (price > 0);
ALTER TABLE products ADD CONSTRAINT unique_product_name UNIQUE(name);
ALTER TABLE products ADD FOREIGN KEY (product_group_id) REFERENCES product_groups(group_id);
ALTER TABLE products ALTER COLUMN name SET NOT NULL;

-- Removing a Constraint:
ALTER TABLE products DROP CONSTRAINT unique_product_name;
ALTER TABLE products ALTER COLUMN name DROP NOT NULL;       -- Not null constraints don't have names.


-- Changing a Column's Defualt Value:
ALTER TABLE products ALTER COLUMN price SET DEFAULT 3.99;
ALTER TABLE products ALTER COLUMN price DROP DEFAULT;


-- Changing a Column's Data Type:
ALTER TABLE products ALTER COLUMN price TYPE numeric(10, 2);


-- Renaming a Column:
ALTER TABLE products RENAME COLUMN product_no TO product_number;


-- Renaming a Table:
ALTER TABLE products RENAME TO items;


select * from items;