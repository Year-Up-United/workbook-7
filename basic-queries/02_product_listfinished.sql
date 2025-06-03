-- question 1
SELECT *
FROM
products;

-- question 2
SELECT
ProductID,
ProductName,
UnitPrice
FROM
products;

-- question 3
SELECT 
ProductID,
ProductName,
UnitPrice
FROM
products
ORDER BY
UnitPrice;

-- question 4
SELECT *
FROM
products
WHERE
UnitPrice <= 7.50;

-- question 5
SELECT *
FROM 
products
WHERE
UnitsInStock >=100;

-- question 6
SELECT *
FROM
products
WHERE
UnitsInStock >= 100
ORDER BY 
UnitPrice DESC,
ProductName ASC;

-- question 7
SELECT *
FROM
products
WHERE
UnitsInStock < 1
ORDER BY
UnitPrice DESC;

-- question 8
SELECT *
FROM
categories;

-- question 9
SELECT *
FROM
categories
WHERE 
CategoryName LIKE 'seafood';


-- question 10
SELECT *
FROM
products
WHERE
CategoryID = 8;


-- question 11
SELECT
LastName,
FirstName
FROM
employees;


-- question 12
SELECT *
FROM 
employees
WHERE
Title LIKE "manager";

-- question 13
SELECT
Title
FROM
employees;


-- question 14
SELECT *
FROM
employees
WHERE
Salary > 2000 AND Salary < 2500;


-- question 15
SELECT *
FROM
suppliers;

-- question 16
SELECT *
FROM
products
WHERE 
SupplierID = 4;
