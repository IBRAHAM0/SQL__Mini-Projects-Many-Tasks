
# Factors that Fuel Student Performance

## Project Description:

The question of how exam performance can be improved is explored in this intermediate SQL querying project. A database containing comprehensive data on various factors influencing student success—such as study habits, sleep patterns, parental involvement, and access to resources—is analyzed.

Through a series of SQL queries, the impact of different behaviors and conditions on academic achievement is examined. The analysis includes identifying the most influential factors behind high exam scores, assessing whether participation in extracurricular activities correlates with better performance, and determining the effects of sleep duration on academic outcomes. By the conclusion of the project, a data-driven understanding of the key drivers of student success will be developed to support more informed academic strategies.

## Task 1:

The relationship between extended study hours, extracurricular involvement, and exam performance is to be analyzed. Specifically, the focus is on students who study more than 10 hours per week and also participate in extracurricular activities.

The output should include the following columns:
- `hours_studied`
- `avg_exam_score`

The results must be grouped and sorted by `hours_studied` in descending order.

## Task 2:

The optimal range of study hours for improved academic performance is to be explored. Students are to be categorized into the following groups based on weekly study hours:
- 1–5 hours  
- 6–10 hours  
- 11–15 hours  
- 16+ hours  

For each group, the average exam score is to be calculated.

The output should contain:
- `hours_studied_range`
- `avg_exam_score`

Results are to be grouped by `hours_studied_range` and sorted by `avg_exam_score` in descending order.

## Task 3:

To maintain student privacy while communicating relative academic performance, a ranking system is to be developed using a window function. Ranks are to be assigned based on `exam_score`, ensuring students with equal scores share the same rank, and no ranks are skipped.

The output must include:
- `attendance`
- `hours_studied`
- `sleep_hours`
- `tutoring_sessions`
- `exam_rank`

The dataset is to be ordered by `exam_rank` in ascending order, and the results should be limited to the top 30 students.

