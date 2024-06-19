# Inventory Analysis Project for Mint Classics

## Project Overview
The goal of this project was to analyze the inventory data at Mint Classics to identify the warehouses with the highest and lowest order volumes and to make recommendations for reorganizing or reducing inventory.

## Data Analysis
We used SQL to analyze the data in the Mint Classics database, focusing on inventory levels and order volumes. The analysis included the following steps:

1. **Identify Products with Highest Inventory Levels**:
   - We retrieved a list of products sorted by their total inventory level in descending order. This helps to identify the products with the highest inventory levels.

2. **Identify Warehouses with Highest Inventory Levels**:
   - We retrieved a list of warehouses sorted by their total inventory level in descending order. This helps to identify the warehouses with the highest inventory levels.

3. **Determine Top 10 Products by Order Volume**:
   - We identified the top 10 products based on their total order volume. This helps to understand which products are most popular among customers.

4. **Analyze Order Volume by Product**:
   - We retrieved a list of products along with their total order volume, sorted in descending order. This further helps to understand product popularity.

5. **Analyze Order Volume by Warehouse**:
   - We identified the order volume for each warehouse to understand which warehouses handle the most orders.

6. **Calculate Order Fill Rate**:
   - We calculated the order fill rate for each warehouse. The order fill rate is the percentage of orders that were fully filled from the inventory in that warehouse.

## Key Findings
1. **Warehouse with the Lowest Order Volume**:
   - The analysis identified that the warehouse with the lowest order volume is WH00D.

2. **Order Fill Rate**:
   - We calculated the order fill rate for each warehouse, providing insights into how efficiently each warehouse fulfills orders from its inventory.

3. **Product Inventory Levels**:
   - We identified the inventory levels for each product to understand which products have the highest and lowest inventory.

## Recommendations
Based on our analysis, we recommend the following actions to optimize inventory management and warehouse operations at Mint Classics:

1. **Close Warehouse WD**:
   - Due to its low order volume, it is recommended to close warehouse WD.

2. **Reallocate Inventory**:
   - Move inventory from warehouse WD to warehouses WA and WB to better balance inventory levels and order volumes.

3. **Reduce Inventory for Less Popular Products**:
   - Decrease inventory levels for products that are not as popular with customers to reduce holding costs and free up storage space.

4. **Consider Third-Party Logistics**:
   - Explore the option of using a third-party logistics provider to store and ship inventory, which may offer cost savings and improved efficiency.

By implementing these recommendations, Mint Classics can improve its inventory management, reduce costs, and enhance overall operational efficiency.
