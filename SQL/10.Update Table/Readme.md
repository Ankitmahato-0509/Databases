# SQL UPDATE Operations Project – Movies Database

This project demonstrates how to use the SQL `UPDATE` command to **modify existing data** in a table.

The dataset includes popular movies along with actors, producers, budgets, and IMDB ratings.
The goal is to understand how to safely update **single columns, multiple columns, and specific records**.

---

## Project Overview

This SQL project includes:

1. Creating a `Movies` table
2. Inserting movie records
3. Updating IMDB rating
4. Updating movie budget
5. Updating multiple columns together

It is ideal for beginners learning SQL **data modification commands**.

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

These records are used to practice update operations.

---

## Understanding the UPDATE Command

The `UPDATE` command is used to **modify existing records** in a table.

It changes data but **keeps the table structure and rows**.

---

### Basic Syntax

```sql
UPDATE table_name
SET column1 = value1,
    column2 = value2
WHERE condition;
```

* `SET` specifies new values.
* `WHERE` chooses which rows to update.

If you **do not use WHERE**, all rows will be updated.

---

## UPDATE Queries Included

### 1. Update IMDB Rating of a Movie

```sql
UPDATE Movies
SET IMDBRating = 9.0
WHERE Name = 'Inception';
```

This updates the rating of **Inception** to 9.0.

---

### 2. Update Budget of a Movie

```sql
UPDATE Movies
SET Budget = 45000000
WHERE Name = 'The Prestige';
```

This changes the budget of **The Prestige**.

---

### 3. Update Multiple Columns Together

```sql
UPDATE Movies
SET Budget = 170000000,
    IMDBRating = 8.7
WHERE Name = 'Interstellar';
```

This updates both budget and rating of **Interstellar**.

---

## Important Tips Before Updating Data

1. Always use `WHERE` to avoid updating all rows accidentally.
2. Test using `SELECT` first.
3. Take backup before large updates.

Example:

```sql
SELECT * FROM Movies
WHERE Name = 'Inception';
```

Check result, then run UPDATE.

---

## Difference Between INSERT, UPDATE, and DELETE

| Command | Purpose                 |
| ------- | ----------------------- |
| INSERT  | Add new records         |
| UPDATE  | Modify existing records |
| DELETE  | Remove records          |

---

## Learning Objectives

After completing this project, you will understand:

* How to update a single column
* How to update multiple columns
* How to update specific rows
* Importance of WHERE condition
* Safe data modification practices

---

## Use Cases

* SQL beginner practice
* Database lab assignments
* Interview preparation
* GitHub portfolio projects
* Learning safe database editing

---

## Conclusion

This project provides hands-on practice with SQL **UPDATE operations** using a real-world movie dataset.

---

Updated By - Ankit Mahato

Understanding UPDATE is important for maintaining accurate data in databases.
Always use conditions carefully and test queries before running them.
