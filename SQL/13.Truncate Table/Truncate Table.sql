-- Create Table
CREATE TABLE Movies (
    Name VARCHAR(100) PRIMARY KEY,
    ActorName VARCHAR(100),
    ProducerName VARCHAR(100),
    Budget INT,
    IMDBRating FLOAT
);

-- Insert Data
INSERT INTO Movies (Name, ActorName, ProducerName, Budget, IMDBRating)
VALUES
('Inception', 'Leonardo DiCaprio', 'Emma Thomas', 160000000, 8.8),
('Interstellar', 'Matthew McConaughey', 'Christopher Nolan', 165000000, 8.6),
('Titanic', 'Leonardo DiCaprio', 'James Cameron', 200000000, 7.9),
('The Dark Knight', 'Christian Bale', 'Charles Roven', 185000000, 9.0);

---- 1. Check Data Before TRUNCATE

SELECT * FROM Movies;

---- 2. TRUNCATE TABLE

-- Remove all rows but keep table structure

TRUNCATE TABLE Movies;

---- 3. Check Table After TRUNCATE

SELECT * FROM Movies;

---- 4. Insert Data Again After TRUNCATE (Optional)

INSERT INTO Movies (Name, ActorName, ProducerName, Budget, IMDBRating)
VALUES
('Avatar', 'Sam Worthington', 'James Cameron', 237000000, 7.8);

---- 5. Check Final Data

SELECT * FROM Movies;