# SQL DELETE & DROP Operations Project – Movies Database

This project demonstrates how to use SQL commands to **remove data** from a table using different types of `DELETE` queries and how to remove the entire table using `DROP TABLE`.

The dataset contains popular movies along with actors, producers, budgets, and IMDB ratings.
The goal is to understand **how to safely delete specific rows, multiple rows, or entire tables**.

---

## Project Overview

This SQL project includes:

1. Creating a `Movies` table
2. Inserting movie records
3. Deleting a single row
4. Deleting multiple rows using conditions
5. Deleting all rows from a table
6. Dropping the entire table

It is ideal for beginners learning SQL **data removal operations**.

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

The table contains famous movies such as:

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

These records are used to practice deletion operations.

---

## Understanding DELETE and DROP

### 1. DELETE

The `DELETE` command removes rows from a table.

It **keeps the table structure** but deletes data.

### Basic Syntax

```sql
DELETE FROM table_name
WHERE condition;
```

---

### 2. DROP TABLE

The `DROP TABLE` command removes the **entire table** including structure and data.

```sql
DROP TABLE table_name;
```

Use carefully because it **cannot be undone**.

---

## DELETE Queries Included

### 1. Delete a Single Movie by Name

```sql
DELETE FROM Movies
WHERE Name = 'Inception';
```

This removes only the movie **Inception**.

---

### 2. Delete Movies by Actor

```sql
DELETE FROM Movies
WHERE ActorName = 'Leonardo DiCaprio';
```

This deletes all movies where Leonardo DiCaprio is the actor.

---

### 3. Delete Movies with IMDB Rating Below 8.0

```sql
DELETE FROM Movies
WHERE IMDBRating < 8.0;
```

This removes low-rated movies.

---

### 4. Delete All Rows but Keep Table

```sql
DELETE FROM Movies;
```

This clears all data but keeps the table structure.

Useful when you want to reinsert fresh data.

---

### 5. Drop the Entire Table

```sql
DROP TABLE Movies;
```

This removes both structure and data permanently.

---

## Difference Between DELETE and DROP

| DELETE                         | DROP TABLE                     |
| ------------------------------ | ------------------------------ |
| Deletes rows only              | Deletes table structure + data |
| Table remains                  | Table removed completely       |
| Can use WHERE condition        | No WHERE allowed               |
| Can rollback (in transactions) | Cannot rollback easily         |

---

## Important Tips Before Deleting Data

1. Always use `WHERE` to avoid deleting all rows accidentally.
2. Take database backup before large deletions.
3. Test queries using `SELECT` first.

Example:

```sql
SELECT * FROM Movies
WHERE ActorName = 'Leonardo DiCaprio';
```

Then run DELETE.

---

## Learning Objectives

After completing this project, you will understand:

* How to delete specific records
* How to delete multiple records
* How to clear a table
* How to remove a table completely
* Difference between DELETE and DROP

---

## Use Cases

* SQL beginner practice
* Database lab assignments
* Interview preparation
* GitHub portfolio projects
* Learning safe database operations

---

## Conclusion

This project provides hands-on practice with SQL **DELETE and DROP operations** using a real-world movie dataset.

Understanding these commands is important because deleting data incorrectly can cause serious data loss.
Always use conditions carefully and keep backups before running deletion queries.
