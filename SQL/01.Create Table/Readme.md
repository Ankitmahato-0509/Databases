

# Movies Table — SQL Project

Welcome to the **Movies Table SQL Project**!  
This repository demonstrates how to create and understand a basic SQL table for storing movie information — including the movie name, actor, producer, budget, and IMDb rating.  

It’s perfect for **beginners learning SQL database design**, especially the use of **PRIMARY KEY**, **VARCHAR**, **INT**, and **FLOAT** data types.

***

## Table Structure

**Table Name:** `Movies`

SQL command to create the table:

```sql
CREATE TABLE Movies (
    Name VARCHAR(100) PRIMARY KEY,
    ActorName VARCHAR(100),
    ProducerName VARCHAR(100),
    Budget INT,
    IMDBRating FLOAT
);
```

***

## Field Descriptions

| Column Name | Data Type | Description |
|--------------|------------|-------------|
| **Name** | `VARCHAR(100)` **PRIMARY KEY** | The title of the movie. Can store up to 100 characters (letters, numbers, spaces). The **PRIMARY KEY** ensures every movie title is unique and not empty — it’s like the movie’s unique ID. |
| **ActorName** | `VARCHAR(100)` | Stores the name of the lead actor. Can also hold up to 100 characters. |
| **ProducerName** | `VARCHAR(100)` | Stores the producer’s name. Up to 100 characters. |
| **Budget** | `INT` | Stores the movie’s budget as a whole number (integer). Example: `200000000` represents a 200 million budget. |
| **IMDBRating** | `FLOAT` | Stores the IMDb rating as a decimal number. Example: `8.5` or `7.2`. `FLOAT` is used instead of `INT` because ratings often include decimals. |

***

## Key Concepts

### 1. `PRIMARY KEY`
- Ensures the *movie name* is unique.
- Prevents inserting more than one movie with the same name.

### 2. `VARCHAR(100)`
- A flexible text field.
- The number (100) defines the **maximum allowed characters**.

### 3. `INT`
- Used for whole numbers like budgets, box office collections, or counts.

### 4. `FLOAT`
- Used for numeric values that include **decimals**, such as ratings or percentages.



## Example Query

To see all records in the table:
```sql
SELECT * FROM Movies;
```

To find movies with ratings above 8:
```sql
SELECT Name, ActorName, IMDBRating
FROM Movies
WHERE IMDBRating > 8;
```

***

## Summary

- `Movies` table stores essential movie details in a structured SQL format.  
- Demonstrates **SQL fundamentals** — especially data types and primary key usage.  
- Great starting point for learning **database design** and **data querying** with SQL.

***

