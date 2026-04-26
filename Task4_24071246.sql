BEGIN TRANSACTION;

UPDATE products 
SET stock = stock - 1 
WHERE product_id = 101;

INSERT INTO orders (product_id, user_id) 
VALUES (101, 1);

COMMIT;