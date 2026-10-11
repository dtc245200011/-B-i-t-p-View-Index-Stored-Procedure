-- sql/01_create_db_and_table.sql
CREATE DATABASE IF NOT EXISTS demo_products;
USE demo_products;

DROP TABLE IF EXISTS Products;
CREATE TABLE Products (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  productCode VARCHAR(50) NOT NULL,
  productName VARCHAR(255) NOT NULL,
  productPrice DECIMAL(10,2) NOT NULL,
  productAmount INT NOT NULL DEFAULT 0,
  productDescription TEXT,
  productStatus ENUM('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Ensure productCode uniqueness will be added later as Unique Index
