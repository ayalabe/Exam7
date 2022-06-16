/*
--Q1
SELECT * 
FROM Products
WHERE UnitPrice < (
SELECT UnitPrice
FROM Products
WHERE ProductID = 4)
*/
/*
--Q2
SELECT LastName + ' ' + FirstName AS Name, HireDate
FROM Employees
WHERE HireDate > (
SELECT HireDate
FROM Employees
WHERE EmployeeID = 6)
*/
/*
--Q3
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice < ALL (
SELECT UnitPrice
FROM Products
WHERE CategoryID = 7)
*/
/*
--Q4
SELECT *
FROM Suppliers
WHERE SupplierID IN (
SELECT DISTINCT SupplierID
FROM Products
WHERE UnitsOnOrder = (
SELECT MAX(UnitsOnOrder)
FROM Products))
*/
/*
--Q5
SELECT C.City, C.CompanyName, C.ContactName
FROM Customers C
UNION ALL
SELECT S.City, S.CompanyName, S.ContactName
FROM Suppliers S 
GROUP BY City, CompanyName, ContactName
*/