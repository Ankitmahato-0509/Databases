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


-- Query: Update IMDB Rating
UPDATE Movies
SET IMDBRating = 9.0
WHERE Name = 'Inception';

-- Query: Update Budget
UPDATE Movies
SET Budget = 45000000
WHERE Name = 'The Prestige';

-- Query: Update Multiple Columns
UPDATE Movies
SET Budget = 170000000,
    IMDBRating = 8.7
WHERE Name = 'Interstellar';