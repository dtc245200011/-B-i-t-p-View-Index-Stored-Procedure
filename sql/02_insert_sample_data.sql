-- sql/02_insert_sample_data.sql
USE demo_products;

INSERT INTO Products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
VALUES
('P001','Classic Chair', 49.99, 120, 'Wooden chair, oak finish', 'ACTIVE'),
('P002','Modern Lamp', 29.50, 200, 'LED desk lamp', 'ACTIVE'),
('P003','Office Desk', 199.00, 50, 'Large office desk', 'ACTIVE'),
('P004','Gaming Mouse', 59.99, 300, 'High precision mouse', 'ACTIVE'),
('P005','Noise Cancelling Headphones', 129.99, 80, 'Over-ear headphones', 'INACTIVE'),
('P006','Standing Desk', 399.00, 20, 'Adjustable height desk', 'ACTIVE'),
('P007','Ergonomic Keyboard', 89.00, 150, 'Mechanical keyboard', 'ACTIVE'),
('P008','Monitor 27 inch', 249.00, 60, 'IPS monitor', 'ACTIVE'),
('P009','USB-C Hub', 19.99, 500, '7-in-1 hub', 'ACTIVE'),
('P010','Webcam HD', 39.99, 90, '1080p webcam', 'ACTIVE');
