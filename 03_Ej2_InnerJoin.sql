USE northwind;

SELECT P.ProductName 'PRODUCTO', P.UnitsInStock 'UNIDADES EN STOCK', S.ContactName 'PROVEEDOR', S.Phone 'TELEFONO'
FROM products AS P
         INNER JOIN suppliers AS S ON P.SupplierID = S.SupplierID
WHERE P.UnitsInStock < 10
  AND S.Phone IS NOT NULL;

SELECT P.ProductName 'PRODUCTO', O.OrderDate 'AÑO DE VENTA', O.ShipCountry 'PAIS DE ORIGEN'
FROM products AS P
         INNER JOIN `order details` AS OD ON P.ProductID = OD.ProductID
         INNER JOIN orders AS O ON OD.OrderID = O.OrderID
WHERE YEAR(O.OrderDate) = 1998;

SELECT T.TerritoryDescription 'TERRITORIO'
FROM territories AS T
         INNER JOIN employeeterritories ET ON T.TerritoryID = ET.TerritoryID
         INNER JOIN employees E ON ET.EmployeeID = E.EmployeeID
WHERE E.FirstName = 'Nancy'
  AND E.LastName = 'Davolio'
ORDER BY T.TerritoryDescription;

SELECT E.FirstName 'NOMBRE', E.LastName 'APELLIDO'
FROM employees AS E
         INNER JOIN orders AS O ON E.EmployeeID = O.EmployeeID
         INNER JOIN CUSTOMERS AS C ON O.CustomerID = C.CustomerID
WHERE C.CompanyName = 'Bottom-Dollar Markets'
  AND YEAR(O.OrderDate) = 1997
  AND MONTH(O.OrderDate) = 4;