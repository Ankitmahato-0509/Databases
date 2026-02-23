-- Create Table
CREATE TABLE Movies (
    Name VARCHAR(100) PRIMARY KEY,
    ActorName VARCHAR(100),
    ProducerName VARCHAR(100),
    Budget INT,
    IMDBRating FLOAT
);

--Insert Data
INSERT INTO Movies (Name, ActorName, ProducerName, Budget, IMDBRating)
VALUES
('Inception', 'Leonardo DiCaprio', 'Emma Thomas', 160000000, 8.8),
('Interstellar', 'Matthew McConaughey', 'Christopher Nolan', 165000000, 8.6),
('Titanic', 'Leonardo DiCaprio', 'James Cameron', 200000000, 7.9),
('The Dark Knight', 'Christian Bale', 'Charles Roven', 185000000, 9.0),

---- 1.Add New Column

-- Add a column called ReleaseYear.

ALTER TABLE Movies
ADD ReleaseYear INT;

-- Add another column with default value:

ALTER TABLE Movies
ADD Language VARCHAR(50) DEFAULT 'English';

---- 2. Drop Column

Delete column Language.

ALTER TABLE Movies
DROP COLUMN Language;

---- 3. Rename Table

Rename table Movies to FilmList.

--MySQL
RENAME TABLE Movies TO FilmList;

--PostgreSQL
ALTER TABLE Movies
RENAME TO FilmList;


-- 4. Rename Column

Rename ActorName → LeadActor.

--MySQL
ALTER TABLE Movies
CHANGE ActorName LeadActor VARCHAR(100);

--PostgreSQL
ALTER TABLE Movies
RENAME COLUMN ActorName TO LeadActor;

--SQL Server
EXEC sp_rename 'Movies.ActorName', 'LeadActor', 'COLUMN';

---- 5. Modify Column Datatype

Change Budget from INT → BIGINT.

--MySQL
ALTER TABLE Movies
MODIFY Budget BIGINT;

--PostgreSQL
ALTER TABLE Movies
ALTER COLUMN Budget TYPE BIGINT;

---- 6. Add NOT NULL Constraint

ALTER TABLE Movies
MODIFY Name VARCHAR(100) NOT NULL;

---- 7. Add Primary Key (if not exists)
ALTER TABLE Movies
ADD PRIMARY KEY (Name);


----- 8. Check Table Structure
DESCRIBE Movies;

or

SELECT * FROM Movies;
