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

 
Project Overview
The goal of this project was to analyze the inventory data at Mint Classics to identify the warehouse with the lowest order volume and to make recommendations for reorganizing or reducing inventory.
Data Analysis
We used SQL to analyze the data in the Mint Classics database. We performed the following analysis:
We identified the warehouse with the lowest order volume. This warehouse is WH00D.
We calculated the order fill rate for each warehouse. The order fill rate is the percentage of orders that were fully filled from the inventory in that warehouse.
We identified the product name for each product.
Recommendations
Based on our analysis, we recommend the following:
Close WD.
Move inventory from WD to WA and WB.
Reduce the inventory levels for products that are not as popular with customers.
Consider using a third-party logistics provider to store and ship inventory.
