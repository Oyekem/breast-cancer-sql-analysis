# breast-cancer-sql-analysis
SQL-only analysis of Wisconsin Breast Cancer Diagnostic dataset
Breast Cancer Diagnostic Analysis (SQL Only)

📌 Overview
This project analyzes the **Wisconsin Breast Cancer Diagnostic dataset** using **pure SQL** in PostgreSQL. It explores statistical patterns, differences between **malignant** and **benign** tumors, and discovers key diagnostic insights based on various tumor measurements.


📌 Table of Contents
1. [Problem Statement](#problem-statement)
2. [Data Source](#data-source)
3. [Tools Used](#tools-used)
4. [Data Cleaning](#data-cleaning)
5. [Exploratory Data Analysis](#exploratory-data-analysis)
6. [Key Insights](#key-insights)
7. [Business Value](#business-value)
8. [How to Run This Project](#how-to-run-this-project)
9. [Files Included](#files-included)
10. [Author](#author)



## Problem Statement
To identify statistical patterns and indicators of breast cancer using diagnostic measurements such as `radius`, `area`, `concavity`, and `symmetry`. The analysis focuses on separating **malignant (M)** and **benign (B)** tumors through descriptive SQL queries.


## Data Source
* Dataset: Wisconsin Diagnostic Breast Cancer (WDBC)
* Source: [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+%28Diagnostic%29)


## Tools Used
* PostgreSQL
* pgAdmin / SQL Shell (psql)
* SQL functions: `AVG`, `MODE`, `PERCENTILE_CONT`, `COUNT`, `CORR`, etc.


## Data Cleaning
* Removed duplicates using `GROUP BY id_number HAVING COUNT(*) > 1`
* Checked for missing values
* Used `CAST` and `ROUND` to fix data types
* Verified all columns were correctly interpreted numerically


## Exploratory Data Analysis
Performed using SQL queries:
* Calculated **mean, median, mode** of tumor features
* Compared averages between **malignant** and **benign** groups
* Discovered **outliers** using `PERCENTILE_CONT(0.9)`
* Measured **correlation** between features (`CORR()`)


## Key Insights
* Malignant tumors have significantly higher values in:
  * `area_mean`, `concavity_mean`, `perimeter_mean`, etc.
  * Strong correlation found between `radius_se` and `perimeter_se` (0.97)
  * Tumors with `area_worst > 1000` are predominantly malignant
  * `concave_points_mean` is a strong indicator of malignancy

## Business Value
* SQL alone can uncover meaningful insights for **early cancer detection**
* Can help clinicians prioritize diagnostic reviews based on tumor features
* Offers an accessible, transparent way to explore medical data without complex tooling


Author

**Tawakalt Oyeleso**
*Data Scientist in Training, Data Storyteller*


📎 License
This project is for educational and portfolio use. Data source credit: UCI Machine Learning Repository.
