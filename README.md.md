Facebook Page Post Performance Analysis using Python, SQL, and Pandas

Project Overview

This project demonstrates a complete data engineering and exploratory data analysis workflow using the Facebook Metrics Dataset (UCI Machine Learning Repository). The dataset was cleaned, analyzed using Pandas, stored in a SQLite database, queried using SQL, and visualized with Matplotlib.

The objective of this project is to transform raw data into a clean and reliable dataset while generating meaningful business insights through SQL queries and visualizations.

---

 Dataset

Dataset: Facebook Metrics Data Set

 Source: UCI Machine Learning Repository
 Records: 500
 Columns: 19
 File Used: `dataset_Facebook.csv`

The dataset contains information about Facebook page posts, including post type, reach, impressions, likes, comments, shares, and user engagement metrics.

---

 Technologies Used

 Python
 Pandas
 NumPy
 SQLite
 Matplotlib
 Google Colab

---

 Project Structure

```
Facebook-Data-Engineering-Project/
│
├── facebook_analysispart1.ipynb
├── dataset_Facebook.csv
├── facebook.db
├── queries.sql
├── requirements.txt
├── README.md
```

---

 Data Exploration

The following information was generated before cleaning:

 Dataset Shape
 Dataset Information (`info()`)
 Statistical Summary (`describe()`)

---

 Missing Values Found

| Column | Missing Values | Cleaning Strategy   | Justification                                           |
| ------ | -------------: | ------------------- | ------------------------------------------------------- |
| Paid   |              1 | Filled using Mode   | Binary categorical variable with only one missing value |
| like   |              1 | Filled using Median | Numeric column with very few missing values             |
| share  |              4 | Filled using Median | Numeric column with less than 10% missing values        |

No column contained more than **10% missing values**, therefore no columns were removed.

---

 Incorrect Data Types

All columns were loaded with the correct data types using:

```python
pd.read_csv("dataset_Facebook.csv", sep=";")
```

No additional data type conversions were required.

---

 Duplicate Records

Duplicate rows were removed using:

```python
df.drop_duplicates()
```

This ensures the dataset contains only unique observations.

---

 Outlier Detection

Outliers were detected using the **Interquartile Range (IQR)** method for the following numeric columns:

like
share

 Method

Lower Bound = Q1 − 1.5 × IQR
Upper Bound = Q3 + 1.5 × IQR

Outliers were **capped** instead of removed to preserve the dataset size while minimizing the influence of extreme values.

---

 SQLite Database

The cleaned dataset was stored in a local SQLite database named:

```
facebook.db
```

Table created:

```
facebook_posts
```

---

 SQL Queries

The project includes six SQL queries covering:

1. WHERE clause
2. GROUP BY with aggregate function
3. HAVING clause
4. ORDER BY with LIMIT
5. BETWEEN operator
6. Multiple conditions using AND

All SQL statements are stored in:

```
queries.sql
```

---

 Visualizations

The following charts were created:

1. Box Plot (Outlier Detection)
2. Histogram (Distribution of Total Interactions)
3. Bar Chart (Post Type Frequency)
4. Scatter Plot (Engaged Users vs Total Interactions)
5. GroupBy Bar Chart (Average Interactions by Post Type)

Every visualization includes:

 Chart Title
 X-axis Label
 Y-axis Label

---

 Insights

The dataset contains 500 Facebook posts across 19 features.
Photo posts are the most common type of Facebook content in the dataset.
The Total Interactions distribution is right-skewed, indicating that a small number of posts receive exceptionally high engagement.
Posts with a larger number of Lifetime Engaged Users generally achieve higher Total Interactions, showing a positive relationship.
Missing values were minimal (only Paid, like, and share) and were successfully imputed without removing records.
Capping outliers reduced the influence of extreme values while preserving all observations for analysis.

---

 Requirements

Install the required packages using:

```bash
pip install -r requirements.txt
```

Contents of `requirements.txt`:

```
pandas
numpy
matplotlib
google colab
```

---

 How to Run

1. Clone or download this repository.
2. Open **Google Colab**.
3. Upload the notebook (`.ipynb`) and the dataset (`dataset_Facebook(3).csv`).
4. Run all notebook cells from top to bottom.
5. The notebook will:
   - Load and clean the dataset.
   - Create the SQLite database.
   - Execute SQL queries.
   - Generate all required visualizations.

 Learning Outcomes

This project demonstrates practical skills in:

 Data Cleaning
 Missing Value Treatment
 Outlier Detection using IQR
 Duplicate Removal
 SQL Database Creation
 SQL Querying
 Exploratory Data Analysis (EDA)
 Data Visualization
 Business Insight Generation

---

 Author

Sneha Khadke

AI & Machine Learning Learner

GitHub: https://github.com/sneha-khadke
