# SQL UPDATE Clause Project – Movies Database

This project demonstrates how to use the `UPDATE` statement in SQL to modify existing records in a `Movies` table.

The database contains popular movies along with their actors, producers, budgets, and IMDB ratings. The project focuses on updating single and multiple columns using proper conditions.

---

## Project Overview

This SQL project includes:

1. Creating a `Movies` table
2. Inserting movie records
3. Updating specific records using the `UPDATE` statement
4. Modifying single and multiple columns

It is ideal for beginners learning how to update data safely and efficiently in SQL.

---

## Database Schema

### Movies Table Structure

| Column Name  | Data Type    | Description               |
| ------------ | ------------ | ------------------------- |
| Name         | VARCHAR(100) | Movie title (Primary Key) |
| ActorName    | VARCHAR(100) | Lead actor                |
| ProducerName | VARCHAR(100) | Movie producer            |
| Budget       | INT          | Movie budget (USD)        |
| IMDBRating   | FLOAT        | IMDB rating               |

---

## Dataset Description

The dataset contains well-known movies such as:

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

Each record includes financial and rating data that can be modified using SQL `UPDATE` queries.

---

## Creating the Table

```sql
CREATE TABLE Movies (
    Name VARCHAR(100) PRIMARY KEY,
    ActorName VARCHAR(100),
    ProducerName VARCHAR(100),
    Budget INT,
    IMDBRating FLOAT
);
```

---

## Inserting Data

```sql
INSERT INTO Movies (Name, ActorName, ProducerName, Budget, IMDBRating)
VALUES
    ('Inception', 'Leonardo DiCaprio', 'Emma Thomas', 160000000, 8.8),
    ('Interstellar', 'Matthew McConaughey', 'Christopher Nolan', 165000000, 8.6),
    ('Titanic', 'Leonardo DiCaprio', 'James Cameron', 200000000, 7.9),
    ('The Dark Knight', 'Christian Bale', 'Charles Roven', 185000000, 9.0),
    ('The Revenant', 'Leonardo DiCaprio', 'Arnon Milchan', 135000000, 8.0),
    ('Django Unchained', 'Jamie Foxx', 'Reginald Hudlin', 100000000, 8.4),
    ('Avengers: Endgame', 'Robert Downey Jr.', 'Kevin Feige', 356000000, 8.4),
    ('Iron Man', 'Robert Downey Jr.', 'Kevin Feige', 140000000, 7.9),
    ('The Wolf of Wall Street', 'Leonardo DiCaprio', 'Emma Thomas', 100000000, 8.2),
    ('Batman Begins', 'Christian Bale', 'Charles Roven', 150000000, 8.2),
    ('The Prestige', 'Christian Bale', 'Emma Thomas', 40000000, 8.5),
    ('Shutter Island', 'Leonardo DiCaprio', 'Mike Medavoy', 80000000, 8.1);
```

---

## Understanding the UPDATE Statement

The `UPDATE` statement is used to modify existing records in a table.

### Basic Syntax

```sql
UPDATE table_name
SET column_name = value
WHERE condition;
```

⚠ Always use a `WHERE` clause to avoid updating all rows unintentionally.

---

## Update Queries Included

### 1. Update IMDB Rating

Update the IMDB rating of **Inception**:

```sql
UPDATE Movies
SET IMDBRating = 9.0
WHERE Name = 'Inception';
```

---

### 2. Update Budget

Update the budget of **The Prestige**:

```sql
UPDATE Movies
SET Budget = 45000000
WHERE Name = 'The Prestige';
```

---

### 3. Update Multiple Columns

Update both budget and rating for **Interstellar**:

```sql
UPDATE Movies
SET Budget = 170000000,
    IMDBRating = 8.7
WHERE Name = 'Interstellar';
```

---

## Learning Objectives

After completing this project, you will understand:

* How to use the `UPDATE` statement
* How to modify a single column
* How to update multiple columns in one query
* Why the `WHERE` clause is important
* How to safely update records in a database

---

## Use Cases

* SQL beginner practice
* Database lab exercises
* Interview preparation
* Learning data modification operations
* GitHub portfolio projects

---

## Conclusion

This project provides a practical introduction to using the SQL `UPDATE` statement in a real-world movie dataset.

It strengthens your understanding of modifying existing data while ensuring safe and controlled updates using conditions.
