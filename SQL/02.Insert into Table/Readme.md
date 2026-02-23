***

# Movies Table SQL Project

**Overview**  
This project demonstrates how to **create a simple SQL table called `Movies`**, **insert sample movie data**. Perfect for **SQL beginners** learning table creation, data insertion, and basic queries.

***

## Complete SQL Workflow

###  **Create Movies Table**

```sql
CREATE TABLE Movies (
    Name VARCHAR(100) PRIMARY KEY,
    ActorName VARCHAR(100),
    ProducerName VARCHAR(100),
    Budget INT,
    IMDBRating FLOAT
);
```

**Field Explanations:**
| Column | Data Type | Purpose |
|--------|-----------|---------|
| `Name` | `VARCHAR(100) PRIMARY KEY` | **Movie title** (unique identifier) |
| `ActorName` | `VARCHAR(100)` | **Lead actor** name |
| `ProducerName` | `VARCHAR(100)` | **Producer** name |
| `Budget` | `INT` | **Budget** (whole number, e.g., 160000000) |
| `IMDBRating` | `FLOAT` | **IMDb rating** (decimal, e.g., 8.8) |

***

### **Insert Sample Data**

```sql
INSERT INTO Movies (Name, ActorName, ProducerName, Budget, IMDBRating)
VALUES 
    ('Inception', 'Leonardo DiCaprio', 'Emma Thomas', 160000000, 8.8),
    ('Interstellar', 'Matthew McConaughey', 'Christopher Nolan', 165000000, 8.6),
    ('The Dark Knight', 'Christian Bale', 'Charles Roven', 185000000, 9.0);
```

***





##  **Key Learning Points**

**PRIMARY KEY**: Ensures unique movie titles  
 **Multiple INSERT**: Add many rows at once  
**Data Types**: `VARCHAR` (text), `INT` (whole numbers), `FLOAT` (decimals)  

***

## **Try It Yourself!**

1. **Copy the complete SQL code** above
2. **Run in any SQL tool** (MySQL, PostgreSQL, SQLite, DBeaver, etc.)
3. **Add your favorite movies**!

```sql
INSERT INTO Movies VALUES ('Your Movie', 'Actor', 'Producer', 100000000, 8.5);
```

***


This README includes:
- **Proper formatting** (tables, code blocks, emojis)
- **Beginner-friendly explanations**
- **Copy-paste ready SQL**
-  **Professional structure**

***

