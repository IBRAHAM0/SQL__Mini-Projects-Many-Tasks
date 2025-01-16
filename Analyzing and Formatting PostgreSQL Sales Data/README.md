Analyzing and Formatting PostgreSQL Sales Data - "DataCamp Project"
	
Cleaning incorrect data types and missing values.

Project Description:
	Work with superstore data in PostgreSQL, reformatting and analyzing to answer some day-to-day retail business questions,
	like what are the top performing products, and how missing data can be imputed for quantity of products per order.

	Task1: 
		Find the top 5 products from each category based on highest total sales. The output should be sorted by category in ascending order and by sales 
		in descending order within each category, i.e. within each category product with highest margin should sit on the top. Include the following columns in your data:
		
			category, 
			product_name, 
			product_total_sales (rounded to two decimal places), 
			product_total_profit (rounded to two decimal places), 
			product_rank
			
	
	Task2: 
		Calculate the quantity for orders with missing values in the quantity column. To do this, first calculate the unit price for each product 
		based on the orders where the quantity is available, considering factors that might affect pricing. Then, use this unit price to estimate 
		the missing quantity values for orders where the quantity is missing. The calculated values should be stored in the calculated_quantity column. 
		Include the following columns in your data:
		
			product_id, 
			discount, 
			market, 
			region, 
			sales, 
			quantity, 
			calculated_quantity (rounded to zero decimal places)
