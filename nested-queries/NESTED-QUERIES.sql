-- jayla jones (NESTED QUERIES)
-- question 1
SELECT  
	p.ProductName, p.UnitPrice
FROM 
	products p 
WHERE 
	p.UnitPrice = (
	select MAX(p.UnitPrice)
	from products p
	);

-- question 2
SELECT
	o.OrderID, o.ShipName, o.ShipAddress
FROM
	orders o
WHERE
	o.ShipVia = (
	select s.ShipperID
	from shippers s
	where s.CompanyName = 'Federal Shipping'
	)
GROUP BY
	o.OrderID;

-- question 3
SELECT 
	o.OrderID
FROM
	`order details` o
WHERE 
	o.ProductID = (
	select p.ProductID
	from products p
	where p.ProductName = 'Sasquatch Ale'
	);

-- question 4
SELECT 
	e.FirstName, e.LastName
FROM
	employees e
WHERE
	e.EmployeeID = ( 
	select o.EmployeeID
	from orders o
	where o.OrderID = 10266
	);

-- question 5
SELECT 
	c.CustomerID, c.CompanyName, c.ContactName
FROM 
	customers c
WHERE 
	c.CustomerID = (
	select o.CustomerID
	from orders o
	where o.OrderID = 10266
	)
	