
DROP TABLE PRODUCT;
DROP TABLE PRODUCT_DETAIL;

-- Create Product Table
CREATE TABLE PRODUCT (
    ProductID NUMBER PRIMARY KEY,
    ItemName VARCHAR2(100),
    Category VARCHAR2(50)
);


-- Create Product Detail Table
CREATE TABLE PRODUCT_DETAIL (
    ProductID NUMBER PRIMARY KEY,
    Brand VARCHAR2(100),
    Weight VARCHAR2(20),
    ExpiryDate DATE,
    StockQuantity NUMBER,
    Price NUMBER(6,2),
    FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID)
);
-- Insert data into Product Table
INSERT INTO PRODUCT VALUES (1, 'Milk', 'Dairy');
INSERT INTO PRODUCT VALUES (2, 'Apple', 'Fruit');
INSERT INTO PRODUCT VALUES (3, 'Rice', 'Grain');
INSERT INTO PRODUCT VALUES (4, 'Toothpaste', 'Personal Care');
INSERT INTO PRODUCT VALUES (5, 'Eggs', 'Poultry');

-- Insert data into Product_Detail Table
INSERT INTO PRODUCT_DETAIL VALUES (1, 'Dutch Lady', '1L', TO_DATE('2025-08-15', 'YYYY-MM-DD'), 100, 4.50);
INSERT INTO PRODUCT_DETAIL VALUES (2, 'Envy', '200g', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 50, 1.20);
INSERT INTO PRODUCT_DETAIL VALUES (3, 'Jasmine', '5kg', TO_DATE('2026-01-01', 'YYYY-MM-DD'), 75, 28.90);
INSERT INTO PRODUCT_DETAIL VALUES (4, 'Colgate', '150g', TO_DATE('2026-05-10', 'YYYY-MM-DD'), 200, 6.80);
INSERT INTO PRODUCT_DETAIL VALUES (5, 'Kampung Egg', '10 pcs', TO_DATE('2025-07-01', 'YYYY-MM-DD'), 60, 7.50);

-- Select all data from table PRODUCT and PRODUCT_DETAIL
SELECT * FROM Product;
SELECT * FROM Product_Detail;

-- Select data from table PRODUCT where category = fruit 
SELECT * FROM PRODUCT WHERE Category = 'Fruit';

-- Project column ITEMNAME from table PRODUCT
SELECT ITEMNAME FROM PRODUCT

-- Select data from table product where productID = 4
SELECT * FROM PRODUCT WHERE ProductID = 4;

-- Example of left, right, full outerjoin (in this case it is 
-- a complete and consistent dataset, LEFT, RIGHT, and FULL OUTER JOIN 
-- will give the same result as INNER JOIN — because there’s no unmatched data to “pad” with NULLs.)
SELECT P.ProductID, P.ItemName, D.Price
FROM Product P 
LEFT OUTER JOIN Product_Detail D 
ON P.ProductID = D.ProductID;

SELECT P.ProductID, P.ItemName, D.Brand, D.Price
FROM Product P
RIGHT OUTER JOIN Product_Detail D
ON P.ProductID = D.ProductID;

SELECT P.ProductID, P.ItemName, D.Brand, D.Price
FROM Product P
FULL OUTER JOIN Product_Detail D
ON P.ProductID = D.ProductID;

-- change column name "ITEMNAME" to "PRODUCTNAME" from table PRODUCT
ALTER TABLE PRODUCT RENAME COLUMN ItemName TO ProductName;
DESCRIBE Product;





