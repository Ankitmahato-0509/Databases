# SQL ALTER TABLE Operations Project – Movies Database

This project demonstrates how to use the SQL `ALTER TABLE` command to **change the structure** of an existing table.

You will learn how to:

* Add a column
* Drop a column
* Rename a table
* Change column name
* Modify column datatype

This is important for real-world databases where table structure needs updates.

---

## Project Overview

This SQL project includes:

1. Creating a `Movies` table
2. Inserting movie records
3. Using different `ALTER TABLE` operations
4. Understanding structure modification

It is ideal for beginners learning SQL table design changes.

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

## Understanding ALTER TABLE

The `ALTER TABLE` command is used to **Always change table structure** without deleting the table.

It allows you to:

* Add new columns
* Remove columns
* Rename table
* Rename columns
* Change datatype

---

## ALTER TABLE Queries Included

---

### 1. Add a New Column

Add a new column called `ReleaseYear`.

```sql
ALTER TABLE Movies
ADD ReleaseYear INT;
```

This adds a new column to store movie release year.

---

### 2. Drop a Column

Remove the column `ReleaseYear`.

```sql
ALTER TABLE Movies
DROP COLUMN ReleaseYear;
```

This deletes the column permanently.

---

### 3. Rename Table

Rename `Movies` table to `FilmList`.

```sql
ALTER TABLE Movies
RENAME TO FilmList;
```

In MySQL, you can also use:

```sql
RENAME TABLE Movies TO FilmList;
```

---

### 4. Change Column Name

Rename column `ActorName` to `LeadActor`.

In MySQL:

```sql
ALTER TABLE Movies
CHANGE ActorName LeadActor VARCHAR(100);
```

In SQL Server:

```sql
EXEC sp_rename 'Movies.ActorName', 'LeadActor', 'COLUMN';
```

---

### 5. Modify Column Datatype

Change datatype of `Budget` from INT to BIGINT.

```sql
ALTER TABLE Movies
MODIFY Budget BIGINT;
```

This allows storing bigger numbers.

---

## Important Notes

1. Always backup data before altering tables.
2. Some changes may fail if column has constraints.
3. Dropping columns deletes data permanently.
4. Syntax may change slightly in MySQL, SQL Server, Oracle, PostgreSQL.

---

## Example Before Alter

```sql
SELECT * FROM Movies;
```

Check structure first.

---

## Difference Between ALTER and UPDATE

| ALTER TABLE             | UPDATE                    |
| ----------------------- | ------------------------- |
| Changes table structure | Changes table data        |
| Add/drop columns        | Modify row values         |
| Rename table/columns    | Uses WHERE to select rows |

---

## Learning Objectives

After completing this project, you will understand:

* How to add columns
* How to remove columns
* How to rename tables
* How to rename columns
* How to change datatype

---

## Use Cases

* Updating database schema
* Adding new features to apps
* Fixing column names
* Expanding storage capacity
* Database lab practice

---

## Conclusion

This project provides hands-on practice with SQL **ALTER TABLE operations**.

Learning ALTER TABLE is important because database structures change over time.
Knowing how to safely modify tables is an essential SQL skill for students and developers.

---

Updated by:Ankit Mahato