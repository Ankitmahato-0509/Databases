
# Movies Table SQL Project

**Overview**  
This project creates a `Movies` table, inserts **4 popular movies**, and queries movies with **IMDb rating > 8.5**. Perfect for beginners learning SQL table creation, data insertion, and **conditional queries**.

***

## Complete SQL Code (Copy-Paste Ready)

```sql
-- 1. Create the Movies table
CREATE TABLE Movies (
    Name VARCHAR(100) PRIMARY KEY,   
    ActorName VARCHAR(100),          
    ProducerName VARCHAR(100),       
    Budget INT,                     
    IMDBRating FLOAT                 
);

-- 2. Insert sample movie data
INSERT INTO Movies (Name, ActorName, ProducerName, Budget, IMDBRating)
VALUES 
    ('Inception', 'Leonardo DiCaprio', 'Emma Thomas', 160000000, 8.8),      
    ('Interstellar', 'Matthew McConaughey', 'Christopher Nolan', 165000000, 8.6), 
    ('Titanic', 'Leonardo DiCaprio', 'James Cameron', 200000000, 7.9),     
    ('The Dark Knight', 'Christian Bale', 'Charles Roven', 185000000, 9.0);  

-- 3. Query movies with IMDB rating > 8.5
SELECT * FROM Movies WHERE IMDBRating > 8.5;
```

***

## Sample Data (All Movies)

| Name | ActorName | ProducerName | Budget | IMDBRating |
|------|-----------|--------------|--------|------------|
| Inception | Leonardo DiCaprio | Emma Thomas | 160,000,000 | 8.8 |
| Interstellar | Matthew McConaughey | Christopher Nolan | 165,000,000 | 8.6 |
| Titanic | Leonardo DiCaprio | James Cameron | 200,000,000 | 7.9 |
| The Dark Knight | Christian Bale | Charles Roven | 185,000,000 | 9.0 |

***

## Query Result: IMDBRating > 8.5

**`SELECT * FROM Movies WHERE IMDBRating > 8.5;` returns:**

| Name | ActorName | ProducerName | Budget | IMDBRating |
|------|-----------|--------------|--------|------------|
| **Inception** | Leonardo DiCaprio | Emma Thomas | 160,000,000 | **8.8** |
| **The Dark Knight** | Christian Bale | Charles Roven | 185,000,000 | **9.0** |

*Note: Interstellar (8.6) appears, Titanic (7.9) is filtered out.*

***

## Table Structure

| Column | Data Type | Example | Purpose |
|--------|-----------|---------|---------|
| `Name` | `VARCHAR(100) PRIMARY KEY` | "Inception" | Unique movie title |
| `ActorName` | `VARCHAR(100)` | "Leonardo DiCaprio" | Lead actor |
| `ProducerName` | `VARCHAR(100)` | "Emma Thomas" | Producer |
| `Budget` | `INT` | 160000000 | Budget in dollars |
| `IMDBRating` | `FLOAT` | 8.8 | IMDb rating |

***

## Key SQL Concepts

- **PRIMARY KEY**: `Name` field ensures unique movies
- **WHERE clause**: `IMDBRating > 8.5` filters results
- **Multiple INSERT**: Adds 4 rows in single command
- **Data Types**: `VARCHAR` (text), `INT` (whole numbers), `FLOAT` (decimals)

***


***

## Run Instructions

1. **Copy entire SQL code** above
2. **Paste into** MySQL, PostgreSQL, SQLite, or any SQL editor
3. **Execute** — table created + data inserted + filtered results shown!

**Add your own movie:**
```sql
INSERT INTO Movies VALUES ('Your Movie', 'Actor', 'Producer', 100000000, 8.5);
```

***
