
# Analyzing Motorcycle Part Sales - "DataCamp Project"

- Insights are to be derived regarding motorcycle part sales over time across multiple warehouse sites.

## Project Description:

This project is conducted on behalf of a company that sells motorcycle parts. The company's data is to be explored to improve understanding of its revenue streams. An SQL query will be developed to determine how much net revenue is being generated across various product lines, segmented by date and warehouse.

## The Task:

The objective is to analyze the revenue generated from **'Wholesale'** transactions for each **product line**, segmented by **month** and **warehouse**.

An SQL query should be constructed with the following requirements:

- The dataset must be filtered to include only rows where the `channel` is `'Wholesale'`.
- **Net revenue** should be calculated as the **sum of `total` minus the sum of `payment_fee`**.
- The **month** should be extracted from the `date` column and displayed as full month names: `'June'`, `'July'`, and `'August'`.
- The results must be grouped by:
  - `product_line`
  - `month`
  - `warehouse`
- The output should be sorted by:
  - `product_line`
  - `month`
  - `net_revenue` in **descending order**.
- The final query should be saved as a named result: **`revenue_by_product_line`**.

Through completion of this task, insights will be obtained into which product lines and warehouse locations contributed the most net revenue during the summer period.



	

