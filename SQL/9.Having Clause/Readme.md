# SQL HAVING Clause Project – Movies Database

This project demonstrates how to use the `HAVING` clause in SQL along with `GROUP BY` to filter aggregated data from a `Movies` table.

The dataset includes multiple popular movies along with their actors, producers, budgets, and IMDB ratings. The goal is to understand how `HAVING` works with aggregate functions such as:

* `COUNT()`
* `SUM()`
* `AVG()`
* `MAX()`
* `MIN()`

---

## Project Overview

This SQL project includes:

1. Creating a `Movies` table
2. Inserting movie records
3. Applying multiple `GROUP BY` queries
4. Using `HAVING` to filter grouped results

It is ideal for beginners learning SQL aggregation and post-group filtering concepts.

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

Each movie record stores financial and rating information for aggregation and analysis.

---

## Understanding the HAVING Clause

The `HAVING` clause is used to filter grouped data after aggregation.

Unlike `WHERE`, which filters rows before grouping, `HAVING` filters groups after aggregate calculations are performed.

### Basic Syntax

```sql
SELECT column_name, AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;
```

---

## HAVING Queries Included

### 1. Producers Having at Least 2 Movies

```sql
SELECT ProducerName, COUNT(*) AS TotalMovies
FROM Movies
GROUP BY ProducerName
HAVING COUNT(*) >= 2;
```

---

### 2. Actors Whose Average Rating Is Greater Than 8

```sql
SELECT ActorName, AVG(IMDBRating) AS AvgRating
FROM Movies
GROUP BY ActorName
HAVING AVG(IMDBRating) > 8;
```

---

### 3. Producers Whose Total Budget Exceeds 250 Million

```sql
SELECT ProducerName, SUM(Budget) AS TotalBudget
FROM Movies
GROUP BY ProducerName
HAVING SUM(Budget) > 250000000;
```

---

### 4. Actors Whose Highest Rating Is Above 8.5

```sql
SELECT ActorName, MAX(IMDBRating) AS HighestRating
FROM Movies
GROUP BY ActorName
HAVING MAX(IMDBRating) > 8.5;
```

---

### 5. Actors Whose Lowest Budget Movie Is Below 100 Million

```sql
SELECT ActorName, MIN(Budget) AS LowestBudget
FROM Movies
GROUP BY ActorName
HAVING MIN(Budget) < 100000000;
```

---

### 6. Actors Having More Than 2 Movies

```sql
SELECT ActorName, COUNT(*) AS MovieCount
FROM Movies
GROUP BY ActorName
HAVING COUNT(*) > 2;
```

---

### 7. Producers With Average Rating Above 8

```sql
SELECT ProducerName, AVG(IMDBRating) AS AvgRating
FROM Movies
GROUP BY ProducerName
HAVING AVG(IMDBRating) > 8;
```

---

### 8. Multiple Conditions in HAVING

```sql
SELECT ActorName,
       COUNT(*) AS TotalMovies,
       AVG(IMDBRating) AS AvgRating
FROM Movies
GROUP BY ActorName
HAVING COUNT(*) > 2 
   AND AVG(IMDBRating) > 8;
```

This query demonstrates how multiple aggregate conditions can be applied together using `HAVING`.

---

## Difference Between WHERE and HAVING

| WHERE                          | HAVING                           |
| ------------------------------ | -------------------------------- |
| Filters rows before grouping   | Filters groups after aggregation |
| Cannot use aggregate functions | Can use aggregate functions      |
| Used with SELECT               | Used with GROUP BY               |

---

## Learning Objectives

After completing this project, you will understand:

* What the `HAVING` clause does
* How it works with `GROUP BY`
* How to filter aggregated results
* The difference between `WHERE` and `HAVING`
* How to apply multiple aggregate conditions

---

## Use Cases

* SQL beginner practice
* Database lab exercises
* Interview preparation
* Understanding grouped data filtering
* GitHub portfolio projects

---

## Conclusion

This project provides a practical introduction to the SQL `HAVING` clause using a real-world movie dataset.

It strengthens your understanding of data grouping, aggregation, and filtering grouped results in SQL.
