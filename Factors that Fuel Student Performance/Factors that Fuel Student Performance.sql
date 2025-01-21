-- Creating and defining the table "student_performance" structure, column names, and their data types.

CREATE TABLE student_performance (
	hours_studied  Int, 
	attendance  Int, 
	extracurricular_activities  Text, 
	sleep_hours  Int, 
	tutoring_sessions  Int, 
	exam_score  Int
	)

	
-- 2. Copying the records from the CSV source file to insert in our table.
	
COPY student_performance (hours_studied, attendance, extracurricular_activities, sleep_hours, tutoring_sessions, exam_score)
FROM 'C:\Factors that Fuel Student Performance\data\student_performance.csv'
DELIMITER ','
CSV HEADER;

-- 3. View the dataset to understand its structure, column names, data types, and overall content. 
SELECT *
FROM student_performance;

-- avg_exam_score_by_study_and_extracurricular (include only those who studied more than 10 hours)

SELECT Hours_Studied, ROUND(AVG(Exam_Score):: NUMERIC, 2) AS avg_exam_score
FROM student_performance
WHERE Hours_Studied > 10
  AND Extracurricular_Activities = 'Yes'
GROUP BY Hours_Studied
ORDER BY Hours_Studied DESC;


-- avg_exam_score_by_hours_studied_range
-- Categorize hours studied into specific ranges: "1-5", "6-10", "11-15", and "16+" hours
SELECT
    CASE
        WHEN Hours_Studied BETWEEN 1 AND 5 THEN '1-5 hours'
        WHEN Hours_Studied BETWEEN 6 AND 10 THEN '6-10 hours'
        WHEN Hours_Studied BETWEEN 11 AND 15 THEN '11-15 hours'
        ELSE '16+ hours'
    END AS hours_studied_range,
    ROUND(AVG(Exam_Score):: NUMERIC, 2) AS avg_exam_score
FROM student_performance
GROUP BY hours_studied_range
ORDER BY avg_exam_score DESC;


-- student_exam_ranking, taking into account the frequency of ranks without skipping it.

SELECT 
    Attendance, 
    Hours_Studied, 
    Sleep_Hours, 
    Tutoring_Sessions, 
    DENSE_RANK() OVER (ORDER BY Exam_Score DESC) AS exam_rank
FROM student_performance
ORDER BY exam_rank ASC
LIMIT 30;



