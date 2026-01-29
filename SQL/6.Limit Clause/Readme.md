# Movies Table SQL Project

## Project Overview

This project demonstrates **basic SQL operations** using a `Movies` table. It covers:

- Creating a table
- Inserting multiple records
- Filtering data using `WHERE`
- Sorting results using the `ORDER BY` clause

This project is ideal for **SQL beginners** who want hands-on practice with real-world examples.

---

## Database Table: `Movies`

The `Movies` table stores information about popular movies, including:

- Movie name
- Lead actor
- Producer
- Budget
- IMDb rating

---

## Table Structure

| Column Name    | Data Type                    | Description        |
| -------------- | ---------------------------- | ------------------ |
| `Name`         | `VARCHAR(100)` (PRIMARY KEY) | Movie title        |
| `ActorName`    | `VARCHAR(100)`               | Lead actor         |
| `ProducerName` | `VARCHAR(100)`               | Producer           |
| `Budget`       | `INT`                        | Movie budget (USD) |
| `IMDBRating`   | `FLOAT`                      | IMDb rating        |

---

## SQL Code

### Create the Movies Table

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

### Insert Sample Data

```sql
INSERT INTO Movies (Name, ActorName, ProducerName, Budget, IMDBRating)
VALUES 
    ('Inception', 'Leonardo DiCaprio', 'Emma Thomas', 160000000, 8.8),
    ('Interstellar', 'Matthew McConaughey', 'Christopher Nolan', 165000000, 8.6),
    ('Titanic', 'Leonardo DiCaprio', 'James Cameron', 200000000, 7.9),
    ('The Dark Knight', 'Christian Bale', 'Charles Roven', 185000000, 9.0);
```

---

## SQL Queries

### Filter Movies with IMDb Rating > 8.5

```sql
SELECT * 
FROM Movies 
WHERE IMDBRating > 8.5;
```

---

### Order Results Using `ORDER BY`

**a) Highest Rated Movies First**

```sql
SELECT * 
FROM Movies 
WHERE IMDBRating > 8.5
ORDER BY IMDBRating DESC;
```

**b) Sort by Budget (Lowest to Highest)**

```sql
SELECT * 
FROM Movies 
WHERE IMDBRating > 8.5
ORDER BY Budget ASC;
```

**c) Sort by Actor Name (Alphabetical)**

```sql
SELECT * 
FROM Movies 
WHERE IMDBRating > 8.5
ORDER BY ActorName ASC;
```

**d) Sort by Rating, Then Budget**

```sql
SELECT * 
FROM Movies 
WHERE IMDBRating > 8.5
ORDER BY IMDBRating DESC, Budget ASC;
```

---

### Limit Results Using `LIMIT`

**a) Get Top 2 Movies (MySQL, PostgreSQL, SQLite)**

```sql
SELECT *
FROM Movies
LIMIT 2;
```

**b) Get Top 2 Movies (SQL Server with TOP)**

```sql
SELECT TOP 2 *
FROM Movies;
```

**c) Get Top 2 Movies (SQL Server with OFFSET…FETCH)**

```sql
SELECT *
FROM Movies
ORDER BY Name
OFFSET 0 ROWS
FETCH NEXT 2 ROWS ONLY;
```

**d) Get Highest Rated Movies - Limit to 3 Results**

```sql
SELECT *
FROM Movies
ORDER BY IMDBRating DESC
LIMIT 3;
```

---

## Sample Output (IMDb Rating > 8.5)

| Name            | ActorName           | Budget      | IMDb |
| --------------- | ------------------- | ----------- | ---- |
| The Dark Knight | Christian Bale      | 185,000,000 | 9.0  |
| Inception       | Leonardo DiCaprio   | 160,000,000 | 8.8  |
| Interstellar    | Matthew McConaughey | 165,000,000 | 8.6  |

---

## SQL Concepts Covered

- `CREATE TABLE`
- `PRIMARY KEY`
- `INSERT INTO`
- `SELECT`
- `WHERE`
- `ORDER BY`
- Sorting with `ASC` and `DESC`
- Multi-column sorting
- `LIMIT` clause (MySQL, PostgreSQL, SQLite)
- `TOP` and `OFFSET…FETCH` (SQL Server)

---

## How to Run the Project

1. Copy the SQL code from this repository
2. Paste it into your preferred SQL editor:
   - MySQL
   - PostgreSQL
   - SQLite
   - Any other SQL database system
3. Execute the script

---

## Add Your Own Movie

```sql
INSERT INTO Movies 
VALUES ('Your Movie', 'Actor Name', 'Producer Name', 100000000, 8.5);
```
