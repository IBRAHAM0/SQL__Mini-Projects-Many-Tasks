-- Creating the Dataset

CREATE TABLE donors (
	donor_id  Int, 
	donor_name  Text, 
	donor_type  Text
	);

CREATE TABLE assignments (
	assignment_id  Int, 
	assignment_name  Text, 
	start_date  Date, 
	end_date  Date, 
	budget  Numeric, 
	region  Text, 
	impact_score  Numeric
	);

CREATE TABLE donations (
	donation_id  Int, 
	donor_id  Int, 
	amount  Numeric, 
	donation_date  Date, 
	assignment_id  Int
	);



-- Importing records from the source into the just created tables

COPY donors
FROM 'D:\donors.csv'
DELIMITER ','
CSV HEADER;

COPY assignments
FROM 'D:\assignments.csv'
DELIMITER ','
CSV HEADER;

COPY donations
FROM 'D:\donations.csv'
DELIMITER ','
CSV HEADER;

-- Task 1: The Highest donation assignments

WITH dons_all AS (
SELECT assignment_id, donor_type, round(SUM(amount), 2) AS rounded_total_donation_amount
FROM donors
JOIN donations 
USING(donor_id)
	GROUP BY assignment_id, donor_type
)
SELECT assignment_name, region, rounded_total_donation_amount, donor_type
FROM dons_all 
JOIN assignments
USING(assignment_id)
ORDER BY rounded_total_donation_amount DESC
LIMIT 5;


-- Task 2: Identifying the assignment with the highest impact score in each region, 
--		   ensuring that each listed assignment has received at least one donation.

WITH don_count AS (
    SELECT assignment_id, COUNT(donation_id) AS num_total_donations
    FROM donations 
    GROUP BY assignment_id
    HAVING COUNT(donation_id) >= 1
),
rankes_ass AS (
    SELECT assignment_name, region, impact_score, num_total_donations,
	DENSE_RANK() OVER(PARTITION BY region ORDER BY impact_score DESC, num_total_donations DESC) AS region_rank 
	FROM assignments
	JOIN don_count
	USING(assignment_id)
)
    SELECT assignment_name, region, impact_score, num_total_donations
	FROM rankes_ass
	WHERE region_rank = 1
	ORDER BY 2;



