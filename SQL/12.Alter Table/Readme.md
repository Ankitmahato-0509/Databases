# SQL ALTER TABLE Operations Project – Movies Database

This project demonstrates how to use the SQL `ALTER TABLE` command to **modify the structure of an existing table**.

You will learn how to:

* Add a new column
* Drop a column
* Rename a table
* Rename a column
* Modify column datatype
* Add constraints
* Check table structure

This project is useful for beginners learning how database tables are updated in real-world applications.

---

## Project Overview

This SQL project includes:

1. Creating a `Movies` table
2. Inserting movie records
3. Applying different `ALTER TABLE` operations
4. Understanding schema modification

It is ideal for SQL beginners and database lab practice.

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

The dataset contains popular movies such as:

* Inception
* Interstellar
* Titanic
* The Dark Knight

These records are used to practice table structure modification.

---

## Understanding ALTER TABLE

The `ALTER TABLE` command is used to **change the structure of an existing table** without deleting the table or data.

It can be used to:

* Add columns
* Remove columns
* Rename table
* Rename columns
* Change datatype
* Add constraints

---

## ALTER TABLE Operations Included

---

### 1. Add New Column

Add a column called `ReleaseYear`.

```sql
ALTER TABLE Movies
ADD ReleaseYear INT;
```

Add another column with default value:

```sql
ALTER TABLE Movies
ADD Language VARCHAR(50) DEFAULT 'English';
```

This adds new information fields to the table.

---

### 2. Drop Column

Remove the column `Language`.

```sql
ALTER TABLE Movies
DROP COLUMN Language;
```

This deletes the column permanently along with its data.

---

### 3. Rename Table

Rename table `Movies` to `FilmList`.

#### MySQL

```sql
RENAME TABLE Movies TO FilmList;
```

#### PostgreSQL

```sql
ALTER TABLE Movies
RENAME TO FilmList;
```

This changes the table name without affecting data.

---

### 4. Rename Column

Rename `ActorName` to `LeadActor`.

#### MySQL

```sql
ALTER TABLE Movies
CHANGE ActorName LeadActor VARCHAR(100);
```

#### PostgreSQL

```sql
ALTER TABLE Movies
RENAME COLUMN ActorName TO LeadActor;
```

#### SQL Server

```sql
EXEC sp_rename 'Movies.ActorName', 'LeadActor', 'COLUMN';
```

This is useful when column names need correction.

---

### 5. Modify Column Datatype

Change datatype of `Budget` from `INT` to `BIGINT`.

#### MySQL

```sql
ALTER TABLE Movies
MODIFY Budget BIGINT;
```

#### PostgreSQL

```sql
ALTER TABLE Movies
ALTER COLUMN Budget TYPE BIGINT;
```

This allows storing larger numbers.

---

### 6. Add NOT NULL Constraint

```sql
ALTER TABLE Movies
MODIFY Name VARCHAR(100) NOT NULL;
```

This ensures movie name cannot be empty.

---

### 7. Add Primary Key

```sql
ALTER TABLE Movies
ADD PRIMARY KEY (Name);
```

This ensures each movie name is unique.

---

### 8. Check Table Structure

```sql
DESCRIBE Movies;
```

or

```sql
SELECT * FROM Movies;
```

This helps verify changes.

---

## Important Notes

1. Always take a database backup before altering tables.
2. Dropping columns deletes data permanently.
3. Syntax may vary in MySQL, SQL Server, PostgreSQL.
4. Some changes fail if constraints exist.

---

## Difference Between ALTER TABLE and UPDATE

| ALTER TABLE             | UPDATE               |
| ----------------------- | -------------------- |
| Changes table structure | Changes table data   |
| Add/remove columns      | Modify row values    |
| Rename table/columns    | Uses WHERE condition |

---

## Learning Objectives

After completing this project, you will understand:

* How to add new columns
* How to delete columns
* How to rename tables
* How to rename columns
* How to modify datatype
* How to add constraints

---

## Use Cases

* Updating database schema
* Adding new features to applications
* Fixing wrong column names
* Increasing storage capacity
* SQL lab assignments

---

## Conclusion

This project provides practical understanding of SQL **ALTER TABLE operations** using a real-world movie dataset.

Database structures change over time, and knowing how to safely modify tables is an essential skill for students and developers.


---


Updated by:Ankit Mahato
