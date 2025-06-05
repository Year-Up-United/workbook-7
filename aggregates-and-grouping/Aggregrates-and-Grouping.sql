-- jayla jones (aggregates and grouping)
-- question 1
SELECT 
	COUNT(*) AS 'Supplier(s)'
FROM
	suppliers;
    
-- question 2
SELECT
	SUM(Salary) AS 'employee_salaries'
FROM
	employees;
    
-- question 3
SELECT 
	ProductName, UnitPrice AS 'CheapestItem'
FROM 
	products
WHERE 
	UnitPrice = (SELECT MIN(UnitPrice)
					FROM products);
                    
-- question 4
SELECT
	AVG(UnitPrice) AS 'ItemPriceAverage'
FROM 
	products;
    
-- question 5
SELECT
	ProductID, ProductName, UnitPrice AS 'PriciestItem'
FROM 
	products
WHERE
	UnitPrice = (SELECT MAX(UnitPrice)
					FROM products);

-- question 6
SELECT DISTINCT
	SupplierID, COUNT(UnitsInStock) AS 'Stock'
FROM
	products
GROUP BY
	SupplierID;

-- question 7
SELECT DISTINCT
	CategoryID, ProductID, AVG(UnitPrice) AS 'AveragePrice'
FROM
	products
GROUP BY 
	ProductID;
    
-- question 8
SELECT 
    SupplierID, 
    COUNT(*) AS NumberOfItems
FROM 
    products
GROUP BY 
    SupplierID
HAVING 
    COUNT(*) >= 5
ORDER BY 
    NumberOfItems DESC;

-- question 9 
SELECT
	ProductId, ProductName, (UnitPrice * UnitsInStock) AS InventoryValue
FROM
	products
ORDER BY
	InventoryValue DESC,
    ProductName ASC;