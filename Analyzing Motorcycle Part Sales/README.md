# Analyzing Motorcycle Part Sales - "DataCamp Project"

- Derive insights about motorcycle part sales over time across multiple warehouse sites!


## Project Description:

Working on behalf of a company that sells motorcycle parts, you'll dig into their data to help them understand their revenue streams. You'll build up a query to find out 
how much net revenue they are generating across their product lines, segregating by date and warehouse.


## The Task:

Your goal is to analyze the revenue generated from **'Wholesale'** transactions for each **product line**, segmented by **month** and **warehouse**.

You will write an SQL query that performs the following:

- Filters the dataset to include only rows where the `channel` is `'Wholesale'`.
- Calculates **net revenue** as the **sum of `total` minus the sum of `payment_fee`**.
- Extracts the **month** from the `date` column and displays it as full month names: `'June'`, `'July'`, and `'August'`.
- Groups the results by:
  - `product_line`
  - `month`
  - `warehouse`
- Sorts the results by:
  - `product_line`
  - `month`
  - `net_revenue` in **descending order**.
- Saves the final output as a named result: **`revenue_by_product_line`**.

This query will help identify which product lines and warehouses are driving the most revenue during the summer months.
	

