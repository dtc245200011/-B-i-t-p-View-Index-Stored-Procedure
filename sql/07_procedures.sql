-- sql/07_procedures.sql
USE demo_products;
DELIMITER //

-- 1. Get all products
DROP PROCEDURE IF EXISTS sp_getAllProducts//
CREATE PROCEDURE sp_getAllProducts()
BEGIN
  SELECT * FROM Products;
END//

-- 2. Add a new product
DROP PROCEDURE IF EXISTS sp_addProduct//
CREATE PROCEDURE sp_addProduct(
  IN p_code VARCHAR(50),
  IN p_name VARCHAR(255),
  IN p_price DECIMAL(10,2),
  IN p_amount INT,
  IN p_description TEXT,
  IN p_status ENUM('ACTIVE','INACTIVE')
)
BEGIN
  INSERT INTO Products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
  VALUES (p_code, p_name, p_price, p_amount, p_description, p_status);
  SELECT LAST_INSERT_ID() AS new_id;
END//

-- 3. Update product by id
DROP PROCEDURE IF EXISTS sp_updateProductById//
CREATE PROCEDURE sp_updateProductById(
  IN p_id INT,
  IN p_name VARCHAR(255),
  IN p_price DECIMAL(10,2),
  IN p_amount INT,
  IN p_description TEXT,
  IN p_status ENUM('ACTIVE','INACTIVE')
)
BEGIN
  UPDATE Products
  SET productName = p_name,
      productPrice = p_price,
      productAmount = p_amount,
      productDescription = p_description,
      productStatus = p_status
  WHERE Id = p_id;
  SELECT ROW_COUNT() AS rows_affected;
END//

-- 4. Delete product by id
DROP PROCEDURE IF EXISTS sp_deleteProductById//
CREATE PROCEDURE sp_deleteProductById(IN p_id INT)
BEGIN
  DELETE FROM Products WHERE Id = p_id;
  SELECT ROW_COUNT() AS rows_deleted;
END//

DELIMITER ;
