Wisconsin Diagnostic Breast Cancer (WDBC)

1. Problem Definition
Goal: Identify characteristics that differentiate **malignant** from **benign** tumors using diagnostic data. 
Use SQL to analyze tumor diagnostic data to determine the characteristics of **malignant** vs **benign** tumors and discover patterns that could assist in early detection of breast cancer.



2. Data Collection
The dataset was collected from the **UCI Machine Learning Repository**. The data was imported from a **CSV file** containing breast cancer diagnostic results and imported into PostgreSQL.
* Source file: 'wdbc.data'
* Imported into PostgreSQL using imort/export command.
* Columns include tumor measurements like 'radius_mean', 'texture_mean', 'concavity_mean', etc.



3. Data Source(s)
*UCI Machine Learning Repository* – Breast Cancer Wisconsin (Diagnostic) Data Set.
📍 Source: [https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+(Diagnostic)](https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+%28Diagnostic%29)



4. Data Cleaning
* Removed non-informative columns (if needed).
* Ensured there were no missing values (confirmed by running 'COUNT(*)' checks).
* Checked for outliers using high percentiles (e.g., tumors with 'area_worst > 1000').
* Verified data types ('numeric', 'varchar') using 'CAST', 'ROUND', and statistical summaries.
* Ensured consistent column naming during import.



5. Exploratory Data Analysis (EDA)**
Conducted in SQL:
* Found **mean, median, mode** for key features using:
* 'AVG()', 'PERCENTILE_CONT()', 'MODE()'
* Used 'GROUP BY diagnosis' to compare **benign vs malignant** cases.
* Identified strong correlation between 'radius_se' and 'perimeter_se' → 'CORR() = 0.97'
* Used subqueries and CTEs to analyze top 10% in 'area_mean'.
* Found percent of malignant cases among tumors with high 'area_worst'.



6. Tools to be Used:
> ✅ SQL (PostgreSQL) — for importing, cleaning, analyzing data
> ✅ Excel — for tabular summaries
> ✅ Power BI — for dashboards and visualizations
> ✅ Python — (optional) for model building and automation (future phase)



7. Procedures Used
No predictive modeling (since it's SQL-only), but used **statistical summaries and correlation analysis** to support diagnosis insight.



8. Deployment
Results can be exported from SQL using Import/Export command



9. Monitoring & Maintenance
If deployed in a healthcare data system, run scheduled SQL scripts to:
* Monitor for unusual values
* Recheck statistics on new data batches
* Visual alerts in Power BI for drift or major anomalies



10. Business or Practical Value
* Supports early detection of breast cancer
* Can assist doctors in making **data-driven diagnostic decisions**
* Improves patient outcomes through faster and more accurate diagnosis
* Help healthcare professionals identify high-risk tumor cases using simple SQL queries.
* Data-driven insights from SQL can flag tumors needing immediate attention based on key features like 'area_mean', 'concavity_mean', and 'perimeter_mean'.



11. Presentation/Dashboard
SQL script (.sql file)
Summary results exported to `.csv` or shared in a `.PDF` report



12. Interpretation / Final Conclusion
* Malignant tumors tend to have **higher means and variability** in size and shape-related features.
* Strong correlations (e.g., between 'radius_se' and 'perimeter_se') support redundancy elimination.
* Key features like 'area_worst', 'concavity_mean', and 'texture_mean' show clear differences across diagnosis types
* Early indicators like 'concave_points_mean', 'area_worst' are crucial for flagging malignancy.
* SQL is powerful enough for in-depth EDA, statistical summaries, and actionable insights. SQL-based analysis proves sufficient for thorough EDA even before modeling.


