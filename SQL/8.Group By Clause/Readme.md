# SQL GROUP BY Clause Project – Movies Database

This project demonstrates how to use the `GROUP BY` clause in SQL to organize and analyze data from a `Movies` table.

The dataset includes multiple popular movies along with their actors, producers, budgets, and IMDB ratings. The goal is to understand how `GROUP BY` works with aggregate functions such as:

* `COUNT()`
* `SUM()`
* `AVG()`
* `MAX()`
* `MIN()`
* `HAVING`

---

## Project Overview

This SQL project includes:

1. Creating a `Movies` table
2. Inserting movie records
3. Applying multiple `GROUP BY` queries
4. Using `HAVING` to filter grouped results

It is ideal for beginners learning SQL aggregation and data grouping concepts.

---

## Database Schema

### Movies Table

| Column Name  | Data Type    | Description               |
| ------------ | ------------ | ------------------------- |
| Name         | VARCHAR(100) | Movie title (Primary Key) |
| ActorName    | VARCHAR(100) | Lead actor                |
| ProducerName | VARCHAR(100) | Movie producer            |
| Budget       | INT          | Movie budget (USD)        |
| IMDBRating   | FLOAT        | IMDB rating               |

---

## Dataset Description

The table contains well-known movies such as:

* Inception
* Interstellar
* Titanic
* The Dark Knight
* The Revenant
* Django Unchained
* Avengers: Endgame
* Iron Man
* The Wolf of Wall Street
* Batman Begins
* The Prestige
* Shutter Island

Each movie record stores financial and rating information for analysis.

---

## Understanding the GROUP BY Clause

The `GROUP BY` clause groups rows that have the same values in specified columns.

It is commonly used with aggregate functions to perform calculations on each group rather than on the entire table.

### Basic Syntax

```sql
SELECT column_name, AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name;
```

---

## GROUP BY Queries Included

### 1. Count Movies Per Producer

```sql
SELECT ProducerName, COUNT(*) AS TotalMovies
FROM Movies
GROUP BY ProducerName;
```

---

### 2. Average IMDB Rating Per Actor

```sql
SELECT ActorName, AVG(IMDBRating) AS AvgRating
FROM Movies
GROUP BY ActorName;
```

---

### 3. Total Budget Per Producer

```sql
SELECT ProducerName, SUM(Budget) AS TotalBudget
FROM Movies
GROUP BY ProducerName;
```

---

### 4. Highest IMDB Rating Per Actor

```sql
SELECT ActorName, MAX(IMDBRating) AS HighestRating
FROM Movies
GROUP BY ActorName;
```

---

### 5. Lowest Budget Per Actor

```sql
SELECT ActorName, MIN(Budget) AS LowestBudget
FROM Movies
GROUP BY ActorName;
```

---

### 6. Average Budget Per Actor

```sql
SELECT ActorName, AVG(Budget) AS AvgBudget
FROM Movies
GROUP BY ActorName;
```

---

### 7. Using HAVING with GROUP BY

The `HAVING` clause filters grouped results after aggregation.

#### Actors with More Than 2 Movies

```sql
SELECT ActorName, COUNT(*) AS MovieCount
FROM Movies
GROUP BY ActorName
HAVING COUNT(*) > 2;
```

#### Producers with Average Rating Above 8

```sql
SELECT ProducerName, AVG(IMDBRating) AS AvgRating
FROM Movies
GROUP BY ProducerName
HAVING AVG(IMDBRating) > 8;
```

---

### 8. Multiple Aggregations in One Query

```sql
SELECT ActorName,
       COUNT(*) AS TotalMovies,
       AVG(IMDBRating) AS AvgRating
FROM Movies
GROUP BY ActorName;
```

This query demonstrates how multiple aggregate functions can be used together in a single grouped query.

---

## Learning Objectives

After completing this project, you will understand:

* What the `GROUP BY` clause does
* How to use aggregate functions with grouped data
* The difference between `WHERE` and `HAVING`
* How to analyze grouped datasets
* How to combine multiple aggregate functions

---

## Use Cases

* SQL beginner practice
* Database lab exercises
* Interview preparation
* Understanding data summarization
* GitHub portfolio projects

---

## Conclusion

This project provides a practical introduction to the SQL `GROUP BY` clause using a real-world movie dataset.

It strengthens your understanding of data grouping, aggregation, and filtering in SQL.

