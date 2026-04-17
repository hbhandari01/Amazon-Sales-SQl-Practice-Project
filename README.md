# 📊 Amazon Sales SQL Practice Project

## 📌 Project Overview

This project is a **Real-World Amazon Sales Database Simulation** designed to practice and master SQL concepts required for **Data Science roles**.

The database mimics an e-commerce platform like Amazon, covering key business operations such as:

* Customer management
* Product catalog
* Order processing
* Payments & shipping

---

## 🎯 Objectives

* Practice **SQL from Basic to Intermediate level**
* Build strong understanding of:

  * DDL (Data Definition Language)
  * DML (Data Manipulation Language)
  * DQL (Data Query Language)
* Work on **real business-driven queries**
* Prepare for **SQL interview questions**

---

## 🗂️ Database Schema

The project consists of the following tables:

* **customers** → Stores customer details
* **categories** → Product categories
* **products** → Product information
* **orders** → Customer orders
* **order_items** → Products within each order
* **payments** → Payment details
* **shipping** → Delivery information

### 🔗 Relationships

* One customer → Many orders
* One order → Many order items
* One product → Many order items
* One category → Many products

---

## 🛠️ Tech Stack

* SQL (MySQL)
* Relational Database Concepts

---

## 📚 SQL Concepts Covered

### 🔹 DDL (Data Definition Language)

* CREATE DATABASE
* CREATE TABLE
* ALTER TABLE (ADD, MODIFY, RENAME)
* Constraints (PRIMARY KEY, FOREIGN KEY)

### 🔹 DML (Data Manipulation Language)

* INSERT
* UPDATE
* DELETE
* TRUNCATE

### 🔹 DQL (Data Query Language)

* SELECT
* WHERE, ORDER BY, LIMIT
* GROUP BY, HAVING
* Aggregate Functions (SUM, AVG, COUNT)

### 🔹 Joins

* INNER JOIN
* LEFT JOIN
* Multi-table joins

---

## 📈 Sample Business Questions Solved

* Who are the top customers by revenue?
* Which products are selling the most?
* Which category generates the highest revenue?
* Which customers never placed an order?
* What is the total revenue generated?

---

## 📊 Key Learnings

* Writing optimized SQL queries
* Understanding relationships using foreign keys
* Handling real-world business scenarios
* Data aggregation and insights generation

---

## 🔥 Advanced SQL (Window Functions)

Advanced SQL window functions were implemented to perform deeper analytical operations on the Amazon sales dataset.

### 📊 Key Concepts Covered

* ROW_NUMBER() for unique ranking
* RANK() and DENSE_RANK() for comparative ranking
* PARTITION BY for group-wise analysis
* Running totals for revenue tracking
* Moving averages for trend analysis
* LAG() and LEAD() for sequential data comparison
* NTILE() for customer segmentation
* PERCENT_RANK() for relative positioning
* Customer Growth Analysis

---

## 📁 Advanced Queries File

All advanced SQL queries are available in the following file:

📄 `Amazon_Sales_db_Advanced_Queries.sql`

---

## 📈 Analytical Capabilities Demonstrated

* Customer ranking and segmentation
* Revenue trend analysis
* Order pattern analysis
* Comparative purchase behavior
* Time-based analytics

---

## 🚀 Impact

This section demonstrates proficiency in:

* Writing **advanced SQL queries**
* Performing **analytical computations using window functions**
* Solving **real-world business problems using SQL**

---

## 👨‍💻 Author

**Himanshu Bhandari**

* Mechanical Engineer → Data Analyst → Aspiring Data Scientist
* Skilled in SQL, Data Analysis, Machine Learning, Tableau & PowerBI

---

## ⭐ How to Use

1. Insert data using `Amazon_Sales_db_creation.sql`
2. Practice queries from `Amazon_Sales_db_Project_Queries.sql`

---

## 💡 Note

This project is designed for **learning and interview preparation purposes** and simulates real-world e-commerce scenarios.

---


