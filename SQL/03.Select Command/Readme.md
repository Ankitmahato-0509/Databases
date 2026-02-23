# Movies Table SQL Project

**Overview**  
This project demonstrates a complete SQL workflow — creating the `Movies` table, inserting 4 sample movies (Inception, Interstellar, Titanic, The Dark Knight), and running 5 essential queries. Perfect for SQL beginners learning table design, data insertion, and querying.

***

## Complete SQL Code (Copy-Paste Ready)

```sql
-- 1. Create Movies table with detailed comments
CREATE TABLE Movies (
    Name VARCHAR(100) PRIMARY KEY,      -- Movie title (unique identifier)
    ActorName VARCHAR(100),             -- Lead actor's name
    ProducerName VARCHAR(100),          -- Producer's name
    Budget INT,                         -- Movie budget (whole number)
    IMDBRating FLOAT                    -- IMDb rating (decimal)
);

-- 2. Insert 4 sample movies
INSERT INTO Movies (Name, ActorName, ProducerName, Budget, IMDBRating)
VALUES 
    ('Inception', 'Leonardo DiCaprio', 'Emma Thomas', 160000000, 8.8),
    ('Interstellar', 'Matthew McConaughey', 'Christopher Nolan', 165000000, 8.6),
    ('Titanic', 'Leonardo DiCaprio', 'James Cameron', 200000000, 7.9),
    ('The Dark Knight', 'Christian Bale', 'Charles Roven', 185000000, 9.0);

-- 3. Query specific columns
SELECT Name, ActorName FROM Movies;

-- 4. Query all data
SELECT * FROM Movies;

-- 5. Query unique actors
SELECT DISTINCT ActorName FROM Movies;
```

***

## Sample Data Output

**`SELECT * FROM Movies;` produces:**

| Name | ActorName | ProducerName | Budget | IMDBRating |
|------|-----------|--------------|--------|------------|
| Inception | Leonardo DiCaprio | Emma Thomas | 160,000,000 | 8.8 |
| Interstellar | Matthew McConaughey | Christopher Nolan | 165,000,000 | 8.6 |
| Titanic | Leonardo DiCaprio | James Cameron | 200,000,000 | 7.9 |
| The Dark Knight | Christian Bale | Charles Roven | 185,000,000 | 9.0 |

***

## Table Structure

| Column | Data Type | Example | Purpose |
|--------|-----------|---------|---------|
| `Name` | `VARCHAR(100) PRIMARY KEY` | "Inception" | Unique movie title |
| `ActorName` | `VARCHAR(100)` | "Leonardo DiCaprio" | Lead actor |
| `ProducerName` | `VARCHAR(100)` | "Emma Thomas" | Producer |
| `Budget` | `INT` | 160000000 | Budget (dollars) |
| `IMDBRating` | `FLOAT` | 8.8 | IMDb rating |

***

## 5 Essential Queries Demonstrated

| Query | Purpose | Example Output |
|-------|---------|----------------|
| `SELECT Name, ActorName FROM Movies;` | Specific columns | Inception, Leonardo DiCaprio |
| `SELECT * FROM Movies;` | All data | Complete table |
| `SELECT DISTINCT ActorName FROM Movies;` | Unique values | Leonardo DiCaprio, Matthew McConaughey... |

***

## Bonus Queries to Try

```sql
-- Highest rated movies
SELECT * FROM Movies WHERE IMDBRating > 8.5 ORDER BY IMDBRating DESC;

-- Most expensive movie
SELECT * FROM Movies ORDER BY Budget DESC LIMIT 1;

-- Average rating
SELECT AVG(IMDBRating) AS AverageRating FROM Movies;

-- Leo's movies
SELECT * FROM Movies WHERE ActorName = 'Leonardo DiCaprio';
```

***

## Key SQL Concepts Learned

- **PRIMARY KEY**: `Name` ensures no duplicate movies
- **Multiple INSERT**: Add 4 rows in one command
- **SELECT specific columns**: `SELECT Name, ActorName`
- **DISTINCT**: Remove duplicates
- **Data Types**: `VARCHAR`(text), `INT`(numbers), `FLOAT`(decimals)

***

## Run It Now! (3 Steps)

1. Copy entire SQL code above
2. Paste into MySQL, PostgreSQL, SQLite, or any SQL tool
3. Execute — table + data ready instantly!

**Add your movie:**
```sql
INSERT INTO Movies VALUES ('Your Movie', 'Actor', 'Producer', 100000000, 8.5);
```

***
