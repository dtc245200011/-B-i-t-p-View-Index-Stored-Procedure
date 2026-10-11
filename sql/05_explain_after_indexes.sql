-- sql/05_explain_after_indexes.sql
USE demo_products;

-- Run same EXPLAINs to compare
EXPLAIN SELECT * FROM Products WHERE productCode = 'P004';
EXPLAIN SELECT * FROM Products WHERE productName LIKE '%Desk%';
EXPLAIN SELECT * FROM Products WHERE productPrice BETWEEN 50 AND 300;
EXPLAIN SELECT * FROM Products WHERE productStatus = 'ACTIVE' ORDER BY created_at DESC;

-- Additional example showing composite index usage when both columns used
EXPLAIN SELECT * FROM Products WHERE productName = 'Office Desk' AND productPrice = 199.00;
