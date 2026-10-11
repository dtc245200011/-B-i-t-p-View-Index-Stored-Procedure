-- sql/08_test_calls.sql
USE demo_products;

-- 1. Call get all
CALL sp_getAllProducts();

-- 2. Add a product
CALL sp_addProduct('P011','Portable Charger', 24.99, 250, '10000mAh charger', 'ACTIVE');

-- 3. Verify insert
SELECT * FROM Products WHERE productCode = 'P011';

-- 4. Update product (example: change price and amount)
CALL sp_updateProductById((SELECT Id FROM Products WHERE productCode='P011'), 'Portable Charger', 22.99, 300, '10000mAh charger - updated', 'ACTIVE');

-- 5. Verify update
SELECT * FROM Products WHERE productCode = 'P011';

-- 6. Delete product
CALL sp_deleteProductById((SELECT Id FROM Products WHERE productCode='P011'));

-- 7. Verify delete
SELECT * FROM Products WHERE productCode = 'P011';

-- 8. Query the view
SELECT * FROM product_views LIMIT 50;
