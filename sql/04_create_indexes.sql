-- sql/04_create_indexes.sql
USE demo_products;

-- 1. Unique Index on productCode
ALTER TABLE Products ADD UNIQUE INDEX ux_productCode (productCode);

-- 2. Composite Index on productName and productPrice
--    Useful for queries filtering by name and price together.
ALTER TABLE Products ADD INDEX idx_name_price (productName(100), productPrice);

-- Note: prefix length productName(100) chosen to limit index size while keeping selectivity.
