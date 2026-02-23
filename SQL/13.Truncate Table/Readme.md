# SQL TRUNCATE TABLE Project – Movies Database

This project demonstrates how to use the SQL `TRUNCATE TABLE` command to **remove all records from a table quickly** while keeping the table structure.

The project uses a simple Movies dataset to understand how TRUNCATE works and how it differs from DELETE.

---

## Project Overview

This SQL project includes:

1. Creating a `Movies` table
2. Inserting movie records
3. Checking data before truncation
4. Using `TRUNCATE TABLE`
5. Checking table after truncation
6. Inserting data again

It is ideal for beginners learning SQL data removal commands.

---

## Database Schema

### Movies Table

| Column Name  | Data Type    | Description               |
| ------------ | ------------ | ------------------------- |
| Name         | VARCHAR(100) | Movie title (Primary Key) |
| ActorName    | VARCHAR(100) | Lead actor                |
| ProducerName | VARCHAR(100) | Movie producer            |
| Budget       | INT          | Movie budget              |
| IMDBRating   | FLOAT        | IMDB rating               |

---

## Dataset Description

The table contains famous movies such as:

* Inception
* Interstellar
* Titanic
* The Dark Knight

These records are used to practice TRUNCATE operations.

---

## Understanding TRUNCATE TABLE

`TRUNCATE TABLE` removes **all rows** from a table instantly.

* Table structure remains
* Data is deleted permanently
* Faster than DELETE

---

### Basic Syntax

```sql
TRUNCATE TABLE table_name;
```

---

## Steps in This Project

---

### 1. Create Table

A Movies table is created with columns for movie details.

---

### 2. Insert Data

Movie records are added to the table for testing.

---

### 3. Check Data Before TRUNCATE

```sql
SELECT * FROM Movies;
```

This shows all records before deletion.

---

### 4. TRUNCATE TABLE

```sql
TRUNCATE TABLE Movies;
```

This removes all rows but keeps the table structure.

---

### 5. Check Table After TRUNCATE

```sql
SELECT * FROM Movies;
```

The table will be empty.

---

### 6. Insert Data Again (Optional)

After truncating, new data can be inserted again.

Example movie added: Avatar.

---

## Difference Between TRUNCATE and DELETE

| TRUNCATE TABLE         | DELETE                        |
| ---------------------- | ----------------------------- |
| Removes all rows       | Removes selected rows         |
| Very fast              | Slower                        |
| Cannot use WHERE       | Can use WHERE                 |
| Resets auto-increment  | Does not reset auto-increment |
| Cannot rollback easily | Can rollback in transactions  |

---

## Important Notes

1. Always backup data before truncating.
2. TRUNCATE cannot use WHERE condition.
3. TRUNCATE is faster than DELETE.
4. Some databases do not allow TRUNCATE if foreign keys exist.

---

## Learning Objectives

After completing this project, you will understand:

* What TRUNCATE TABLE does
* How it differs from DELETE
* When to use TRUNCATE safely
* How to reset a table

---

## Use Cases

* Clearing test data
* Resetting database tables
* Database lab assignments
* Preparing demo databases
* Practice SQL commands

---

## Conclusion

This project provides hands-on practice with SQL `TRUNCATE TABLE` using a movie dataset.

Understanding TRUNCATE is important for database management because it helps quickly clear large tables while keeping the structure intact.


---

Updated by:Ankit Mahato
