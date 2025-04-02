
# Analyzing and Formatting PostgreSQL Sales Data - "DataCamp Project"

Incorrect data types and missing values are to be cleaned and prepared for analysis.

## Project Description:

A PostgreSQL-based dataset of superstore transactions is to be reformatted and analyzed in order to address common retail business questions. These include identifying top-performing products and imputing missing values in product quantity per order.

## Task 1:

The top 5 products from each category are to be identified based on the highest total sales.

The following steps should be followed:
- Total sales and profit must be calculated for each product.
- Products should be ranked within their respective categories by total sales in descending order.
- The output must be sorted by:
  - `category` in ascending order
  - `sales` in descending order within each category.
- The following columns must be included:
  - `category`
  - `product_name`
  - `product_total_sales` (rounded to two decimal places)
  - `product_total_profit` (rounded to two decimal places)
  - `product_rank`

## Task 2:

Quantities for orders with missing values in the `quantity` column are to be estimated.

The following process should be applied:
- The unit price for each product must be calculated using the available quantity data, taking into account relevant pricing factors.
- This unit price should then be used to estimate missing quantities for orders where `quantity` is not recorded.
- Estimated values must be stored in a new column: `calculated_quantity` (rounded to zero decimal places).
- The following columns must be included:
  - `product_id`
  - `discount`
  - `market`
  - `region`
  - `sales`
  - `quantity`
  - `calculated_quantity`
