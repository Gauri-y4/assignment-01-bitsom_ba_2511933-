## ETL Decisions

### Decision 1 — Standardizing Category Names
Problem: The dataset contains inconsistent category naming such as "electronics" and "Electronics", and also "Grocery" and "Groceries". This inconsistency would cause problems when grouping or aggregating sales by category.

Resolution: During the transformation stage, all category values were standardized to consistent capitalized forms such as "Electronics", "Clothing", and "Grocery". This ensures that analytical queries produce correct aggregated results.

### Decision 2 — Handling Missing Store City Values
Problem: Some rows in the dataset contain missing values in the store_city column.

Resolution: Missing store_city values were replaced using the known city associated with each store_name. For example, "Mumbai Central" was assigned the city "Mumbai". This ensures that store dimension records remain complete.

### Decision 3 — Converting Date Format
Problem: The original dataset stores dates as text in the format DD-MM-YYYY.

Resolution: During the ETL process, the date values were converted into a proper SQL DATE format (YYYY-MM-DD). Additional attributes such as month and year were also extracted for the date dimension table to support time-based analysis.
