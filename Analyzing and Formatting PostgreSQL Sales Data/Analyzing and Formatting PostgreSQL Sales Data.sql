-- 1. Creating the dataset 

CREATE TABLE orders (
	order_id  Text, 
	order_date  Date, 
	market  Text, 
	region  Text, 
	product_id  Text, 
	sales  Numeric, 
	quantity  Int, 
	discount  Numeric, 
	profit  Numeric
	);

CREATE TABLE products (
	product_id  Text, 
	category  Text, 
	sub_category  Text, 
	product_name  Text 
	);



-- 2. Import records from the source into the "orders" table
COPY orders
FROM 'D:\orders.csv'
DELIMITER ','
CSV HEADER;

-- Import records from the source into the "products" table
COPY products
FROM 'D:\products.csv'
DELIMITER ','
CSV HEADER;


--3 Quick overview of the dataset

SELECT *
FROM orders;

SELECT *
FROM products;


-- The First Task: top_five_products_each_category

WITH top_sales AS(
	SELECT category, 
			product_name, ROUND(SUM(sales)::NUMERIC, 2) AS product_total_sales, 
			ROUND(SUM(profit)::NUMERIC, 2) AS product_total_profit,
			ROW_NUMBER() OVER(PARTITION BY category ORDER BY SUM(sales) DESC) AS product_rank
	FROM products 
	INNER JOIN orders
	USING(product_id)
	GROUP BY 1, 2)
SELECT * 
FROM top_sales
WHERE (product_rank <= 5)
ORDER BY category, product_total_sales DESC;



-- The Second Task: Impute_missing_values

WITH unit_prices AS (
    SELECT 
        product_id, 
        discount, 
        sales / quantity::NUMERIC AS unit_price
    FROM orders
    WHERE quantity IS NOT NULL
)
SELECT DISTINCT
    o.product_id, 
    o.discount, 
    market, 
    region, 
    sales, 
    quantity,
    ROUND(sales::NUMERIC / unit_price) AS calculated_quantity
FROM orders AS o
JOIN unit_prices AS up
   USING(product_id, discount)
WHERE o.quantity IS NULL
ORDER BY o.product_id;




