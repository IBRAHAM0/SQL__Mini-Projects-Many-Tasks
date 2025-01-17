Impact Analysis of GoodThought NGO Initiatives - "DataCamp Project"

Using SQL to explore and analyze GoodThought NGO's database, uncovering key insights from over 13 years of transformative projects.

Project Description:
	Since 2010, GoodThought NGO has led transformative efforts in education, healthcare, and sustainability worldwide. 
	Dive into a PostgreSQL database to analyze key metrics from 2010 to 2023, track donations, and assess program effectiveness. 
	This project offers a deep dive into data, revealing the impact and outcomes of GoodThought's initiatives

		Task 1:
			List the top five assignments based on total value of donations, categorized by donor type. The output should include columns:
			
				1) assignment_name, 
				2) region, 
				3) rounded_total_donation_amount (rounded to two decimal places),
				4) donor_type (sorted by rounded_total_donation_amount in descending order)
				
				
		Task 2:
			Identify the assignment with the highest impact score in each region, ensuring that each listed assignment has received at least one donation. 
			The output should (include only the highest-scoring assignment per region), (avoiding duplicates within the same region),
			(sorted by "region" in ascending order), and include columns:
			
				1) assignment_name, 
				2) region, 
				3) impact_score, 
				4) num_total_donations
