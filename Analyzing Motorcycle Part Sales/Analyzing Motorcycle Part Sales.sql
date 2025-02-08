-- 1. Creating a "sales" table 

CREATE TABLE sales (
	order_number  text, 
	date  date, 
	warehouse  text, 
	client_type  text, 
	product_line  text, 
	quantity  int, 
	unit_price  numeric, 
	total  numeric, 
	payment  text, 
	payment_fee  numeric
	);



-- 2. Import records from the source into the "sales" table

COPY sales
FROM 'D:\sales.csv'
DELIMITER ','
CSV HEADER;


-- 3. Quick overview of the dataset
SELECT *
FROM sales;


-- The Task: 
-- Find out how much 'Wholesale' net revenue each "product_line" generated per month as format ('June', 'July', ...) per "warehouse" in the dataset
SELECT product_line, 
	TO_char(date, 'month') AS month, 
	warehouse, 
	SUM(total - payment_fee) AS net_revenue
FROM sales
WHERE client_type = 'Wholesale'
GROUP BY 1, 2, 3
ORDER BY product_line, month, net_revenue DESC;







