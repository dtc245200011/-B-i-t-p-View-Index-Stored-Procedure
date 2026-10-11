-- sql/06_views.sql
USE demo_products;

-- Create view customer-facing product list
CREATE OR REPLACE VIEW product_views AS
SELECT productCode, productName, productPrice, productStatus
FROM Products;

-- Example replace view: include only ACTIVE products and add a computed column
CREATE OR REPLACE VIEW product_views AS
SELECT productCode, productName, productPrice, productStatus,
       (productAmount > 0) AS in_stock
FROM Products
WHERE productStatus = 'ACTIVE';

-- To drop the view
-- DROP VIEW IF EXISTS product_views;
