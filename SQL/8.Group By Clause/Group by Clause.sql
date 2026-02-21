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
    ('The Dark Knight', 'Christian Bale', 'Charles Roven', 185000000, 9.0),
    ('The Revenant', 'Leonardo DiCaprio', 'Arnon Milchan', 135000000, 8.0),
    ('Django Unchained', 'Jamie Foxx', 'Reginald Hudlin', 100000000, 8.4),
    ('Avengers: Endgame', 'Robert Downey Jr.', 'Kevin Feige', 356000000, 8.4),
    ('Iron Man', 'Robert Downey Jr.', 'Kevin Feige', 140000000, 7.9),
    ('The Wolf of Wall Street', 'Leonardo DiCaprio', 'Emma Thomas', 100000000, 8.2),
    ('Batman Begins', 'Christian Bale', 'Charles Roven', 150000000, 8.2),
    ('The Prestige', 'Christian Bale', 'Emma Thomas', 40000000, 8.5),
    ('Shutter Island', 'Leonardo DiCaprio', 'Mike Medavoy', 80000000, 8.1);


-- 1. Count movies per Producer
SELECT ProducerName, COUNT(*) AS TotalMovies
FROM Movies
GROUP BY ProducerName;


-- 2. Average IMDB Rating per Actor
SELECT ActorName, AVG(IMDBRating) AS AvgRating
FROM Movies
GROUP BY ActorName;


-- 3. Total Budget spent per Producer
SELECT ProducerName, SUM(Budget) AS TotalBudget
FROM Movies
GROUP BY ProducerName;


-- 4. Highest IMDB Rating per Actor
SELECT ActorName, MAX(IMDBRating) AS HighestRating
FROM Movies
GROUP BY ActorName;


-- 5. Lowest Budget movie per Actor
SELECT ActorName, MIN(Budget) AS LowestBudget
FROM Movies
GROUP BY ActorName;


-- 6. Average Budget per Actor
SELECT ActorName, AVG(Budget) AS AvgBudget
FROM Movies
GROUP BY ActorName;


-- 7. Actors having more than 2 movies (Using HAVING)
SELECT ActorName, COUNT(*) AS MovieCount
FROM Movies
GROUP BY ActorName
HAVING COUNT(*) > 2;


-- 8. Producers with Average Rating above 8
SELECT ProducerName, AVG(IMDBRating) AS AvgRating
FROM Movies
GROUP BY ProducerName
HAVING AVG(IMDBRating) > 8;


-- 9. Total Movies and Average Rating per Actor
SELECT ActorName, 
       COUNT(*) AS TotalMovies,
       AVG(IMDBRating) AS AvgRating
FROM Movies
GROUP BY ActorName;