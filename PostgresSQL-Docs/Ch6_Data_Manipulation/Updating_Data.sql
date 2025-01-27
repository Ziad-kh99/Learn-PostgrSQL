

UPDATE products SET product_no = 0, 
                    name = 'Product', 
                    price = 1.99 
                WHERE product_no IS NULL;


UPDATE products SET price = price * 1.10;

SELECT * FROM products;


UPDATE users SET firstname = 'Hossam' WHERE id = 2
RETURNING firstname, lastname;