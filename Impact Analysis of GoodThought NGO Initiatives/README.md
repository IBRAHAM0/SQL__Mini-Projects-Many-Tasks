
# Impact Analysis of GoodThought NGO Initiatives - "DataCamp Project"

SQL is used to explore and analyze GoodThought NGO's database, with key insights uncovered from over 13 years of transformative projects.

## Project Description:

Since 2010, GoodThought NGO has led efforts in education, healthcare, and sustainability across the globe. A PostgreSQL database is utilized to analyze key performance metrics between 2010 and 2023, track donations, and evaluate program effectiveness. This project provides an in-depth analysis of the data, aiming to reveal the impact and outcomes of GoodThought's various initiatives.

## Task 1:

The top five assignments are to be listed based on the total value of donations, categorized by donor type.

The output must include the following columns:
- `assignment_name`
- `region`
- `rounded_total_donation_amount` (rounded to two decimal places)
- `donor_type`

The results should be sorted by `rounded_total_donation_amount` in descending order.

## Task 2:

Assignments with the highest impact scores in each region are to be identified, with only those assignments included that have received at least one donation. Duplicate entries within the same region must be avoided.

The output should be sorted by `region` in ascending order and must include:
- `assignment_name`
- `region`
- `impact_score`
- `num_total_donations`
