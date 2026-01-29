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

-- 3. Query specific columns
-- Retrieves only the movie name and actor name
SELECT Name, ActorName
FROM Movies;

-- 4. Query all data with a limit
-- Retrieves every column for only 2 movies
-- LIMIT → works in MySQL, PostgreSQL, SQLite.
SELECT *
FROM Movies
LIMIT 2;

-- TOP / OFFSET…FETCH → works in SQL Server.
SELECT TOP 2 *
FROM Movies;

SELECT *
FROM Movies
ORDER BY Name
OFFSET 0 ROWS
FETCH NEXT 2 ROWS ONLY;

-- Limit Results Using LIMIT

-- a) Get Top 2 Movies (MySQL, PostgreSQL, SQLite)
SELECT *
FROM Movies
LIMIT 2;

-- b) Get Top 2 Movies (SQL Server with TOP)
SELECT TOP 2 *
FROM Movies;

-- c) Get Top 2 Movies (SQL Server with OFFSET…FETCH)
SELECT *
FROM Movies
ORDER BY Name
OFFSET 0 ROWS
FETCH NEXT 2 ROWS ONLY;

-- d) Get Highest Rated Movies - Limit to 3 Results
SELECT *
FROM Movies
ORDER BY IMDBRating DESC
LIMIT 3;
