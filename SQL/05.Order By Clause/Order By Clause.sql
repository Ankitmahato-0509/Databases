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

-- 3. Queries with ORDER BY

-- a) Order by IMDB rating (descending)
SELECT * 
FROM Movies 
WHERE IMDBRating > 8.5
ORDER BY IMDBRating DESC;

-- b) Order by budget (ascending)
SELECT * 
FROM Movies 
WHERE IMDBRating > 8.5
ORDER BY Budget ASC;

-- c) Order by actor name (alphabetical)
SELECT * 
FROM Movies 
WHERE IMDBRating > 8.5
ORDER BY ActorName ASC;

-- d) Order by IMDB rating (descending), then budget (ascending)
SELECT * 
FROM Movies 
WHERE IMDBRating > 8.5
ORDER BY IMDBRating DESC, Budget ASC;
