# 🎓E-Learning-Platform-Database-Management-System-MySQL

## 📌Project Overview

This project demonstrates the design and implementation of an E-Learning Platform Database using MySQL. The database manages learners, courses, and course purchases while providing meaningful business insights through SQL queries.

### The project covers:

- [x] Database creation and table relationships
- [x] Data insertion and management
- [x] SQL Joins (INNER JOIN, LEFT JOIN, RIGHT JOIN)
- [x] Aggregate Functions
- [x] Group By and Having Clauses
- [x] Revenue and Sales Analysis
- [x] Learner Purchase Analysis

---------------------------------------------------------------------------------------------------------

## 🏗️Database Schema

### 👨‍🎓Learners Table

| Column Name | Data Type |
|------------|-----------|
| learner_id | INT (Primary Key) |
| full_name | VARCHAR(100) |
| country | VARCHAR(100) |

---------------------------------------------------------------------------------------------------------

### 📚Courses Table

| Column Name | Data Type |
|------------|-----------|
| course_id | INT (Primary Key) |
| course_name | VARCHAR(100) |
| category | VARCHAR(50) |
| unit_price | DECIMAL(10,2) |

---------------------------------------------------------------------------------------------------------

### 🛒Purchases Table

| Column Name | Data Type |
|------------|-----------|
| purchase_id | INT (Primary Key) |
| learner_id | INT (Foreign Key) |
| course_id | INT (Foreign Key) |
| quantity | INT |
| purchase_date | DATE |

---------------------------------------------------------------------------------------------------------

## 🔗Entity Relationship

- One Learner can purchase multiple Courses.
- One Course can be purchased by multiple Learners.
- Purchases table acts as a bridge between Learners and Courses.

---------------------------------------------------------------------------------------------------------

## 📝 Sample Data

### The database contains:
- 5 Learners
- 5 Courses
- 8 Purchase Records

---------------------------------------------------------------------------------------------------------

### Countries included:

- India
- USA
- UK
- Canada

---------------------------------------------------------------------------------------------------------

### Course Categories:

- Database
- Programming
- Analytics
- Productivity

---------------------------------------------------------------------------------------------------------

## 🔍 SQL Queries

### 1️⃣INNER JOIN

Displays purchase details along with learner and course information.


### 2️⃣LEFT JOIN

Displays all learners, including those without purchases

### 3️⃣RIGHT JOIN

Displays all courses, including courses without purchases.

###  4️⃣Aggregate Functions

Used:

- SUM()
- COUNT()
- DISTINCT()

### 5️⃣GROUP BY

Used to generate category-wise and learner-wise summaries.

### 6️⃣HAVING Clause

Used to filter learners who purchased courses from multiple categories.

---------------------------------------------------------------------------------------------------------

## 📊 Business Analysis Queries

### 1️⃣Total Spending by Each Learner

Calculates total amount spent by each learner.

### 2️⃣Top 3 Most Purchased Courses

Identifies the highest-selling courses based on quantity sold.

### 3️⃣Revenue by Course Category

#### Calculates:

- Total Revenue
- Unique Learners

### 4️⃣Multi-Category Learners

Finds learners who purchased courses from more than one category.

### 5️⃣Unpurchased Courses

Identifies courses that have never been purchased.

---------------------------------------------------------------------------------------------------------

## 📈Key Insights

- Power BI Masterclass and Web Development generated the highest revenue among all courses.
- Programming and Analytics categories contributed significantly to overall sales.
- Some learners purchased courses from multiple categories, indicating diverse learning interests.
- A small group of learners accounted for a large share of total spending.
- Course purchase patterns show strong demand for technical and skill-development courses.

---------------------------------------------------------------------------------------------------------

## 💡 Recommendations

- Introduce course bundles to encourage learners to purchase multiple courses.
- Offer discounts on high-demand courses to increase enrollment volume.
- Develop additional courses in Programming and Analytics categories due to strong demand.
- Implement personalized course recommendations based on learner purchase history.
- Launch promotional campaigns targeting learners who have purchased only one course.

---------------------------------------------------------------------------------------------------------

## ⭐ Conclusion

This project successfully demonstrates the design and implementation of an E-Learning Platform Database using MySQL. By applying relational database concepts, SQL joins, aggregate functions, and analytical queries, valuable insights were generated regarding learner behavior, course performance, and revenue trends. The project highlights practical SQL skills commonly used in real-world data analysis and database management scenarios.

