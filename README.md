# breast-cancer-sql-analysis
SQL-only analysis of Wisconsin Breast Cancer Diagnostic dataset
Breast Cancer Diagnostic Analysis (SQL Only)

📌 Overview
This project presents a structured SQL-only analysis of the Wisconsin Breast Cancer Diagnostic Dataset using PostgreSQL. The goal is to detect statistically significant patterns that distinguish malignant from benign tumors based on diagnostic measurements.

The analysis demonstrates the use of descriptive statistics, correlation analysis, and outlier detection to support clinical decision-making — all through SQL without external analytics tools.

📌 Table of Contents
1. [Problem Statement](#problem-statement)
2. [Data Source](#data-source)
3. [Tools Used](#tools-used)
4. [Data Cleaning](#data-cleaning)
5. [Exploratory Data Analysis](#exploratory-data-analysis)
6. [Key Insights](#key-insights)
7. [Business Value](#business-value)
8. [Author](#author)


## Problem Statement
To identify key diagnostic indicators of breast cancer by analyzing medical features such as radius, area, concavity, and symmetry. The project aims to:
- Distinguish malignant (M) from benign (B) tumors.
- Leverage SQL to reveal statistically meaningful patterns and predictors of malignancy.
- Demonstrate the power of SQL in healthcare analytics and early diagnosis.


## Data Source
* Dataset: Wisconsin Diagnostic Breast Cancer (WDBC)
* Source: [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+%28Diagnostic%29)


## Tools Used
* PostgreSQL (Database)
* pgAdmin and SQL Shell (psql) (Query Execution)
* SQL Functions Used:
     * AVG(), MODE(), PERCENTILE_CONT(), ROUND()
     * COUNT(), CAST(), CORR(), CASE, GROUP BY, HAVING


## Data Cleaning
* Performed robust data preparation to ensure accurate analysis:
    *  Removed duplicate records using GROUP BY id_number HAVING COUNT(*) > 1
    *  Checked for and confirmed absence of missing/null values
    *  Used CAST() and ROUND() to correct and standardize numeric data types
    *  Verified accurate interpretation of all feature columns


## Exploratory Data Analysis
Descriptive and comparative statistical analysis performed using SQL:
* Calculated mean, median, mode of tumor features
* Compared feature averages between malignant and benign tumors
* Identified outliers using PERCENTILE_CONT(0.9)
* Computed correlation between features using CORR()


## Key Insights
* Malignant tumors showed significantly higher values in:
     *  area_mean, perimeter_mean, concavity_mean, and concave_points_mean
*  Strong correlation observed between:
     *  radius_se and perimeter_se → correlation = 0.97
* Tumors with area_worst > 1000 were predominantly malignant
* concave_points_mean emerged as a strong and consistent predictor of malignancy


## Business Value
* Early Detection: Enables clinicians to flag high-risk cases using key feature thresholds
* Data-Driven Triage: Prioritize diagnostic review using statistical indicators
* Accessibility: Proves SQL alone can deliver meaningful, explainable medical insights
* Skill Demonstration: Reflects real-world data analyst capabilities in data wrangling, pattern discovery, and impact-driven storytelling


Author
**Tawakalt Oyeleso**
Data Analyst | Data Storyteller | SQL & Power BI Enthusiast
GitHub: @Oyekem


📎 License
This project is for educational and portfolio use. Data source credit: UCI Machine Learning Repository.

✅ Ready to collaborate remotely and deliver insights that matter.
