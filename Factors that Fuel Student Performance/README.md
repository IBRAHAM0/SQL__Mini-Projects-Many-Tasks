Factors that Fuel Student Performance


Project Description:

How can students improve their exam performance? In this intermediate SQL querying project, you will analyze a database containing 
comprehensive data on various factors influencing student success, such as study habits, sleep patterns, parental involvement, and access to resources.

Through SQL queries, you will investigate which factors have the greatest impact on high exam scores, 
explore whether students who participate in more extracurricular activities perform better, and ascertain the influence of sleep on academic achievement. 
By the end, you will have a data-driven understanding of the drivers of student success, enabling you to make informed decisions for academic improvement.


	Task 1: 
			Do more study hours and extracurricular activities lead to better scores? Analyze how studying more than 10 hours per week, 
			while also participating in extracurricular activities, impacts exam performance. 
			
				The output should include two columns: 
					1) hours_studied  
					2) avg_exam_score. 
					
				Group and sort the results by hours_studied in descending order.
				
				
	Task 2: 
			Is there a sweet spot for study hours? Explore how different ranges of study hours impact exam performance by calculating the average exam score for each study range.
			Categorize students into four groups based on hours studied per week: 1-5 hours, 6-10 hours, 11-15 hours, and 16+ hours. 
			
				The output should contain two columns: 
					1) hours_studied_range  
					2) avg_exam_score. 
					
				Group the results by hours_studied_range and sort them by avg_exam_score in descending order. 


	Task 3: 
			A teacher wants to show their students their relative rank in the class, without revealing their exam scores to each other. 
			Use a window function to assign ranks based on exam_score, ensuring that students with the same exam score share the same rank and no ranks are skipped. 
			
				Return the columns: 
					attendance, 
					hours_studied, 
					sleep_hours, 
					tutoring_sessions, 
					exam_rank. 
					
				The students with the highest exam score should be at the top of the results, so order your query by exam_rank in ascending order. Limit your query to 30 students.