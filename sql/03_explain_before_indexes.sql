-- sql/03_explain_before_indexes.sql
USE demo_products;

-- Example queries to analyze before creating indexes
EXPLAIN SELECT * FROM Products WHERE productCode = 'P004';
EXPLAIN SELECT * FROM Products WHERE productName LIKE '%Desk%';
EXPLAIN SELECT * FROM Products WHERE productPrice BETWEEN 50 AND 300;
EXPLAIN SELECT * FROM Products WHERE productStatus = 'ACTIVE' ORDER BY created_at DESC;
