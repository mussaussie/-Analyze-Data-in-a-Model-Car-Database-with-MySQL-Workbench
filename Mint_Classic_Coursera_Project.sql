##This query will return a list of products, sorted by their total inventory level in descending order. This can be used to identify the products with the highest inventory levels.

SELECT productname, SUM(quantityInStock) AS totalquantityInStock
FROM mintclassics.products
GROUP BY productname
ORDER BY totalquantityInStock DESC;

##This query will return a list of warehouses, sorted by their total inventory level in descending order. This can be used to identify the warehouses with the highest inventory levels.

SELECT warehouseCode, SUM(quantityInStock) AS totalquantityInStock
FROM products
GROUP BY warehouseCode
ORDER BY totalquantityInStock DESC;

SELECT productCode, SUM(quantityOrdered) AS totalOrderVolume
FROM orderdetails
GROUP BY productCode
ORDER BY totalOrderVolume DESC
LIMIT 10;

SELECT P.ProductName, SUM(quantityOrdered) AS totalOrderVolume
FROM Products as P
Inner Join Orderdetails As O
On P.productCode = O.ProductCode
GROUP BY productname
ORDER BY totalOrderVolume DESC
LIMIT 10;

SELECT warehouseCode, SUM(quantityOrdered) AS totalOrderVolume
FROM orderdetails
JOIN products ON orderdetails.productCode = products.productCode
GROUP BY warehouseCode
ORDER BY totalOrderVolume DESC;

###This query will first join the orderdetails table with the products table on the productCode column. This will create a new table that contains all of the data from both tables, combined.
SELECT
  warehouseCode,
  SUM(quantityOrdered) AS totalOrderVolume,
  SUM(quantityInStock) AS totalInventoryLevel,
  (SUM(quantityOrdered) / SUM(quantityInStock)) * 100 AS orderFillRate
FROM orderdetails
JOIN products p ON orderdetails.productCode = p.productCode
GROUP BY warehouseCode
ORDER BY totalOrderVolume DESC;

