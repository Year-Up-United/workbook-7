-- jayla jones (JOINS)
-- question 1
SELECT 
	p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName
FROM
	products p 
INNER JOIN
	categories c ON p.CategoryID = c.CategoryID
ORDER BY
	c.CategoryName, p.ProductName;

-- question 2
SELECT
	p.ProductID, p.ProductName, p.UnitPrice, s.CompanyName 
FROM
	products p
INNER JOIN 
	suppliers s ON p.SupplierID = s.SupplierID
WHERE
	p.UnitPrice > 75
ORDER BY 
	p.ProductName;

-- question 3
SELECT 
	p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName, s.CompanyName
FROM
	products p 
INNER JOIN 
	suppliers s  ON p.SupplierID = s.SupplierID
INNER JOIN 
	categories c ON p.CategoryID = c.CategoryID
ORDER BY
	p.ProductName;

-- question 4
SELECT 
	p.ProductName, c.CategoryName
FROM
	products p 
INNER JOIN 
	categories c ON p.CategoryID = c.CategoryID
WHERE
	p.UnitPrice = (
	SELECT MAX(UnitPrice)
	FROM products 
	);
	
-- question 5
SELECT 
	o.OrderID, o.ShipName, o.ShipAddress, s.CompanyName
FROM
	orders o
INNER JOIN 
	shippers s ON o.ShipVia = s.ShipperID
WHERE
	o.ShipCountry = 'Germany';

-- question 6
SELECT 
	o.OrderID, o.OrderDate, o.ShipName, o.ShipAddress
FROM 
	orders o
INNER JOIN
	`order details` od ON o.OrderID = od.OrderID
INNER JOIN 
	products p ON p.ProductID = od.ProductID 
WHERE
	p.ProductID = (
	SELECT p.ProductID 
	FROM products p
	WHERE p.ProductName = 'Sasquatch Ale'
	)