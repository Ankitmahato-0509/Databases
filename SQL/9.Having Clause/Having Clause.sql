--Step 1: Create Table
CREATE TABLE Movies (
    Name VARCHAR(100) PRIMARY KEY,
    ActorName VARCHAR(100),
    ProducerName VARCHAR(100),
    Budget INT,
    IMDBRating FLOAT
);
--Step 2: Insert Data
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

--Query:Producers having at least 2 movies
SELECT ProducerName, COUNT(*) AS TotalMovies
FROM Movies
GROUP BY ProducerName
HAVING COUNT(*) >= 2;

--Query:Actors whose Average Rating is greater than 8
SELECT ActorName, AVG(IMDBRating) AS AvgRating
FROM Movies
GROUP BY ActorName
HAVING AVG(IMDBRating) > 8;

--Query:Producers whose Total Budget exceeds 250 Million
SELECT ProducerName, SUM(Budget) AS TotalBudget
FROM Movies
GROUP BY ProducerName
HAVING SUM(Budget) > 250000000;

--Query:Actors whose Highest Rating is above 8.5
SELECT ActorName, MAX(IMDBRating) AS HighestRating
FROM Movies
GROUP BY ActorName
HAVING MAX(IMDBRating) > 8.5;

--Query:Actors whose Lowest Budget movie is below 100 Million
SELECT ActorName, MIN(Budget) AS LowestBudget
FROM Movies
GROUP BY ActorName
HAVING MIN(Budget) < 100000000;

--Query:Actors whose Average Budget is above 150 Million
SELECT ActorName, AVG(Budget) AS AvgBudget
FROM Movies
GROUP BY ActorName
HAVING AVG(Budget) > 150000000;


--Query:Actors having more than 2 movies
SELECT ActorName, COUNT(*) AS MovieCount
FROM Movies
GROUP BY ActorName
HAVING COUNT(*) > 2;

-- Query:Producers with Average Rating above 8
SELECT ProducerName, AVG(IMDBRating) AS AvgRating
FROM Movies
GROUP BY ProducerName
HAVING AVG(IMDBRating) > 8;

--Query:Actors having more than 2 movies AND Average Rating above 8
SELECT ActorName,
       COUNT(*) AS TotalMovies,
       AVG(IMDBRating) AS AvgRating
FROM Movies
GROUP BY ActorName
HAVING COUNT(*) > 2 
   AND AVG(IMDBRating) > 8;