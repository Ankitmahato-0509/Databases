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

-- This retrieves only the movie name and actor name
SELECT Name, ActorName FROM Movies;

-- 4. Query all data

-- This retrieves every column for every movie
SELECT * FROM Movies;

-- 5. Query unique actor names

-- DISTINCT ensures duplicate actor names are not repeated
SELECT DISTINCT ActorName FROM Movies;
