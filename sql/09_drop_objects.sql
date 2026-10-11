-- sql/09_drop_objects.sql
USE demo_products;

-- Drop procedures
DROP PROCEDURE IF EXISTS sp_getAllProducts;
DROP PROCEDURE IF EXISTS sp_addProduct;
DROP PROCEDURE IF EXISTS sp_updateProductById;
DROP PROCEDURE IF EXISTS sp_deleteProductById;

-- Drop view
DROP VIEW IF EXISTS product_views;

-- Drop indexes (if you want to revert)
ALTER TABLE Products DROP INDEX IF EXISTS ux_productCode;
ALTER TABLE Products DROP INDEX IF EXISTS idx_name_price;

-- Drop table and database (optional)
-- DROP TABLE IF EXISTS Products;
-- DROP DATABASE IF EXISTS demo_products;
