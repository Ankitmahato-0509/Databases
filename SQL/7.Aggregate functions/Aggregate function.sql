-- Step 1: Create the Movies table
CREATE TABLE Movies (
    Name VARCHAR(100) PRIMARY KEY,
    ActorName VARCHAR(100),
    ProducerName VARCHAR(100),
    Budget INT,
    IMDBRating FLOAT
);

-- Step 2: Insert sample movie data
INSERT INTO Movies (Name, ActorName, ProducerName, Budget, IMDBRating)
VALUES
    ('Inception', 'Leonardo DiCaprio', 'Emma Thomas', 160000000, 8.8),
    ('Interstellar', 'Matthew McConaughey', 'Christopher Nolan', 165000000, 8.6),
    ('Titanic', 'Leonardo DiCaprio', 'James Cameron', 200000000, 7.9),
    ('The Dark Knight', 'Christian Bale', 'Charles Roven', 185000000, 9.0);

-- COUNT: Total number of movies
SELECT COUNT(*) AS TotalMovies
FROM Movies;

-- SUM: Total budget of all movies
SELECT SUM(Budget) AS TotalBudget
FROM Movies;

-- AVG: Average movie budget
SELECT AVG(Budget) AS AverageBudget
FROM Movies;

-- AVG: Average IMDB rating
SELECT AVG(IMDBRating) AS AverageRating
FROM Movies;

-- MAX: Highest budget
SELECT MAX(Budget) AS HighestBudget
FROM Movies;

-- MIN: Lowest IMDB rating
SELECT MIN(IMDBRating) AS LowestRating
FROM Movies;

-- COUNT with GROUP BY: Movies per actor
SELECT ActorName, COUNT(*) AS TotalMovies
FROM Movies
GROUP BY ActorName;

-- SUM with GROUP BY: Total budget per producer
SELECT ProducerName, SUM(Budget) AS TotalBudget
FROM Movies
GROUP BY ProducerName;

-- AVG with GROUP BY: Average rating per actor
SELECT ActorName, AVG(IMDBRating) AS AvgRating
FROM Movies
GROUP BY ActorName;

-- HAVING with aggregate: Actors with more than 1 movie
SELECT ActorName, COUNT(*) AS MovieCount
FROM Movies
GROUP BY ActorName
HAVING COUNT(*) > 1;
