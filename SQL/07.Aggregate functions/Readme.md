# Movies Table SQL Project

This project demonstrates how to create a simple **Movies** database table and perform various **SQL aggregate operations** such as `COUNT`, `SUM`, `AVG`, `MAX`, `MIN`, `GROUP BY`, and `HAVING`.

It’s ideal for learning and practicing **SQL aggregation functions** on real-world-style data.

---

## Project Overview

The SQL script performs the following steps:

1. Creates a `Movies` table
2. Inserts sample movie data
3. Executes aggregate queries to analyze the data

---

## Database Schema

### **Movies Table**

| Column Name  | Data Type    | Description               |
| ------------ | ------------ | ------------------------- |
| Name         | VARCHAR(100) | Movie title (Primary Key) |
| ActorName    | VARCHAR(100) | Lead actor                |
| ProducerName | VARCHAR(100) | Movie producer            |
| Budget       | INT          | Movie budget (USD)        |
| IMDBRating   | FLOAT        | IMDB rating               |

---

## Sample Data

The table includes popular movies such as:

* Inception
* Interstellar
* Titanic
* The Dark Knight

Each record stores actor, producer, budget, and IMDB rating details.

---

##  SQL Queries Covered

### Basic Aggregations

* Total number of movies (`COUNT`)
* Total budget of all movies (`SUM`)
* Average movie budget (`AVG`)
* Average IMDB rating
* Highest movie budget (`MAX`)
* Lowest IMDB rating (`MIN`)

### Grouped Aggregations

* Number of movies per actor
* Total budget per producer
* Average IMDB rating per actor

###  Advanced Filtering

* Actors who have acted in more than one movie using `HAVING`

---

##  How to Run

1. Open any SQL database tool (MySQL, PostgreSQL, SQL Server, SQLite*)
2. Create a database (optional)
3. Run the SQL script step by step or all at once
4. View query results in the output console

>  *Minor syntax adjustments may be needed depending on the SQL dialect.*

---

##  Learning Objectives

* Understand SQL aggregate functions
* Learn how to use `GROUP BY` and `HAVING`
* Practice analyzing structured data with SQL

---

##  Use Cases

* SQL practice for beginners
* Database coursework or assignments
* Interview preparation for SQL fundamentals

---

Created as a simple SQL aggregation example for learning and demonstration purposes.

---
