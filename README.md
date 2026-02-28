#  Walmart Sales Analysis (SQL + Python)

##  Project Overview

This project performs end-to-end sales analysis on Walmart transactional data using **PostgreSQL and Python**.

The objective was to extract business insights, analyze sales trends, and identify key performance drivers across branches, cities, and product categories.



##  Tools & Technologies Used

*  PostgreSQL
*  Python
*  Pandas
*  Matplotlib
*  Seaborn
*  Jupyter Notebook


##  Dataset Description

The dataset contains transactional sales records with the following key columns:

* `invoice_id`
* `branch`
* `city`
* `category`
* `unit_price`
* `quantity`
* `date`
* `time`
* `payment_method`
* `rating`
* `profit_margin`
* `total`

Derived columns:

* `month`
* `day_of_week`
* `year`
* `hour`

---

##  Project Workflow

### 1️Data Cleaning (Python)

* Checked for missing values
* Converted date and time columns
* Created new time-based features
* Verified data types
* Handled outliers

---

### 2️⃣ Exploratory Data Analysis (EDA)

Performed visual and statistical analysis:

* Category distribution (Countplot)
* Payment method usage (Pie chart)
* Sales distribution (Histogram + KDE)
* Category vs Total comparison (Boxplot)
* Correlation heatmap
* Monthly & Day-wise sales trends

---

### 3️⃣ SQL Business Analysis

Solved real-world business questions using:

* `GROUP BY`
* `COUNT()`, `SUM()`, `AVG()`
* `DENSE_RANK()`
* `PARTITION BY`
* `WITH (CTE)`
* Date extraction using `TO_CHAR()` and casting

### Example Business Questions:

* Identify the highest-rated category in each branch
* Determine the busiest day per branch
*  Find total revenue by category
*  Rank categories based on performance


##  Key Insights

* Certain categories generate higher average revenue per transaction.
* Sales distribution is positively skewed (few high-value transactions).
* Weekend days show higher transaction volume in some branches.
* Payment preferences vary across branches.

---


##  Future Improvements

* Build interactive dashboard using Power BI / Tableau
* Deploy analysis using Streamlit
* Add predictive modeling (Sales Forecasting)
* Automate reporting


## Conclusion

This project demonstrates strong understanding of:

* SQL querying and window functions
* Data cleaning and feature engineering
* Exploratory data analysis
* Business-driven insight generation

---

# 👨‍💻 Author

Kiran
B.Tech CSE | Data Analytics & Data Science Enthusiast

---

