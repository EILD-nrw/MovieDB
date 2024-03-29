DROP TABLE Movies;
DROP VIEW Filme;

DROP TABLE Persons;

CREATE TABLE Movies(
  Movie_ID NUMERIC(8) PRIMARY KEY, 
  Title VARCHAR(128), 
  ReleaseDate DATE, 
  Genre_ID NUMERIC(8), 
  Budget NUMERIC(10), 
  OpeningWeek NUMERIC(10), 
  Profit NUMERIC(10), 
  Runtime NUMERIC(3), 
  Certificate NUMERIC(3), 
  SequelOf NUMERIC(8),
  Distribution VARCHAR(32)
);

DESC Movies;

CREATE TABLE Persons(
  Person_ID NUMERIC(8) PRIMARY KEY, 
  Firstname VARCHAR(128),
  Lastname VARCHAR(128)
);

DROP TABLE PersonsMovies;

CREATE TABLE PersonsMovies(
	Person_ID NUMERIC(8),
	Movie_ID NUMERIC(8),
	Role VARCHAR(32),
	PRIMARY KEY (Person_ID, Movie_ID, Role)
);

CREATE VIEW Filme AS
  SELECT
    Movie_ID, 
    Title AS Titel, 
    ReleaseDate AS PremierenDatum, 
    Genre_ID, 
    Budget, 
    OpeningWeek AS EroeffnungWoche, 
    Profit AS Gewinn, 
    Runtime AS Laufzeit, 
    Certificate AS Altersbeschraenkung, 
    SequelOf AS FortsetzungVon,
    distribution AS Verleih
  FROM Movies;


DROP TABLE Genres;

CREATE TABLE Genres (
  Genre_ID NUMERIC(8) PRIMARY KEY, 
  Name VARCHAR(32)
);

INSERT INTO Genres VALUES (1, 'Sci-Fi');
INSERT INTO Genres VALUES (2, 'Drama');
INSERT INTO Genres VALUES (3, 'Comic Verfilmung');
INSERT INTO Genres VALUES (4, 'Action');
INSERT INTO Genres VALUES (5, 'Fantasy');
INSERT INTO Genres VALUES (6, 'Animation');
INSERT INTO Genres VALUES (7, 'Thriller');

SET DEFINE OFF;

INSERT INTO Movies 
  VALUES(1, 'Avatar - Aufbruch nach Pandora', TO_DATE('2009/12/17', 'yyyy/mm/dd'), 1, 237000000, 77025481, 760505847, 162, 12, null, '20th Century Fox');

INSERT INTO Movies
  VALUES(2, 'Titanic', TO_DATE('1997/12/14', 'yyyy/mm/dd'), 2, 200000000, 28638131, 658672302, 194, 12, null, 'Paramount Pictures');

INSERT INTO Movies 
  VALUES(3, 'Star Wars: Das Erwachen der Macht', TO_DATE('2015/12/14', 'yyyy/mm/dd'), 1, 245000000 , 247966675, 936627416, 136, 12, null, 'Walt Disney Studios');

INSERT INTO Movies 
  VALUES(4, 'Jurassic World', TO_DATE('2015/12/14', 'yyyy/mm/dd'), 1, 150000000 , 204600000, 652177271 , 124, 12, null, 'Universal Studios');
  
INSERT INTO Movies 
  VALUES(5, 'The Avengers', TO_DATE('2012/04/11', 'yyyy/mm/dd'), 3, 220000000, 207438708, 623279547  , 143, 12, null, 'Walt Disney Studios');

INSERT INTO Movies 
  VALUES(6, 'Fast & Furios 7', TO_DATE('2016/03/15', 'yyyy/mm/dd'), 4, 190000000, 147187040, 350034110, 137, 12, null, 'Universal Studios');  

INSERT INTO Movies 
  VALUES(7, 'Avengers: Age of Ultron', TO_DATE('2015/04/13', 'yyyy/mm/dd'), 3, 250000000  , 191271109 , 458991599, 141, 12, 5, 'Walt Disney Studios');

INSERT INTO Movies 
  VALUES(8, 'Harry Potter und die Heiligtümer des Todes – Teil 2', TO_DATE('2011/07/11', 'yyyy/mm/dd'), 5, 125000000, 169189427, 380955619, 130, 12, null, 'Warner Bros. Entertainment');

INSERT INTO Movies 
  VALUES(9, 'Die Eiskönigin – Völlig unverfroren', TO_DATE('2011/10/11', 'yyyy/mm/dd'), 6, 150000000, 67391326, 400736600, 102, 0, null, 'Walt Disney Studios');

INSERT INTO Movies 
  VALUES(10, 'Die Schöne und das Biest', TO_DATE('2017/03/17', 'yyyy/mm/dd'), 5, 160000000, 174750616, 503974884, 129, 6, null, 'Walt Disney Studios');
 
INSERT INTO Movies 
  VALUES(11, 'Fast & Furious 8', TO_DATE('2017/04/04', 'yyyy/mm/dd'), 4, 250000000, 98786705, 225697400, 136, 12, 6, 'Universal Studios');

INSERT INTO Movies 
  VALUES(12, 'Iron Man 3', TO_DATE('2013/04/12', 'yyyy/mm/dd'), 4, 200000000, 174144585 , 408992272, 130, 12, null, 'Walt Disney Studios');

INSERT INTO Movies 
  VALUES(13, 'Minions', TO_DATE('2015/06/11', 'yyyy/mm/dd'), 4, 74000000, 115200000, 336029560, 91, 0, null, 'Universal Studios');

INSERT INTO Movies 
  VALUES(14, 'The First Avenger: Civil War', TO_DATE('2016/04/28', 'yyyy/mm/dd'), 3, 250000000, 179139142, 408080554 , 147, 12, null, 'Walt Disney Studios');

INSERT INTO Movies 
  VALUES(15, 'Transformers 3 – Die dunkle Seite des Mondes', TO_DATE('2011/06/29', 'yyyy/mm/dd'), 3, 195000000, 115886050 , 352358779, 154, 12, null, 'Paramount Pictures');

INSERT INTO Movies 
  VALUES(16, 'Der Herr der Ringe: Die Rückkehr des Königs', TO_DATE('2003/12/17', 'yyyy/mm/dd'), 5, 94000000, 72629713, 377019252, 201, 12, null, 'New Line Cinema');

INSERT INTO Movies 
  VALUES(17, 'James Bond 007: Skyfall', TO_DATE('2012/11/01', 'yyyy/mm/dd'), 4, 200000000, 88364714, 304360277, 143, 12, null, 'Metro-Goldwyn-Mayer');

INSERT INTO Movies 
  VALUES(18, 'Transformers: Ära des Untergangs', TO_DATE('2014/07/17', 'yyyy/mm/dd'), 3, 210000000, 100038390, 245428137 , 165, 12, 15, 'Paramount Pictures');

INSERT INTO Movies 
  VALUES(19, 'The Dark Knight Rises', TO_DATE('2012/07/26', 'yyyy/mm/dd'), 3, 250000000, 160887295, 448130642, 164, 12, null, 'Warner Bros. Entertainment');

INSERT INTO Movies 
  VALUES(20, 'Toy Story 3', TO_DATE('2010/07/29', 'yyyy/mm/dd'), 6, 200000000, 109000000, 414984497, 103, 0, null, 'Walt Disney Studios');

INSERT INTO Persons VALUES (1, 'James', 'Cameron');
INSERT INTO Persons VALUES (2, 'J. J.', 'Abrams');
INSERT INTO Persons VALUES (3, 'Colin', 'Trevorrow');
INSERT INTO Persons VALUES(4, 'Joss', 'Whedon');
INSERT INTO Persons VALUES(5, 'James', 'Wan');
INSERT INTO Persons VALUES(6, 'David', 'Yates');
INSERT INTO Persons VALUES(7, 'Chris', 'Buck');
INSERT INTO Persons VALUES(8, 'Jennifer', 'Lee');
INSERT INTO Persons VALUES(9, 'Bill', 'Condon');
INSERT INTO Persons VALUES(10, 'F. Gary', 'Gray');
INSERT INTO Persons VALUES(11, 'Shane', 'Black');
INSERT INTO Persons VALUES(12, 'Pierre', 'Coffin');
INSERT INTO Persons VALUES(13, 'Kyle', 'Balda');
INSERT INTO Persons VALUES(14, 'Anthony', 'Russo');
INSERT INTO Persons VALUES (15, 'Joe', 'Russo');
INSERT INTO Persons VALUES(16, 'Michael', 'Bay');
INSERT INTO Persons VALUES(17, 'Peter', 'Jackson');
INSERT INTO Persons VALUES(18, 'Sam', 'Mendes');
INSERT INTO Persons VALUES(19, 'Christopher', 'Nolan');
INSERT INTO Persons VALUES(20, 'Lee', 'Unkrich');

INSERT INTO PersonsMovies VALUES(1,1, 'direction');
INSERT INTO PersonsMovies VALUES(1,2, 'direction');
INSERT INTO PersonsMovies VALUES(2,3, 'direction');
INSERT INTO PersonsMovies VALUES(3,4, 'direction');
INSERT INTO PersonsMovies VALUES(4,5, 'direction');
INSERT INTO PersonsMovies VALUES(5,6, 'direction');
INSERT INTO PersonsMovies VALUES(4,7, 'direction');
INSERT INTO PersonsMovies VALUES(6,8, 'direction');
INSERT INTO PersonsMovies VALUES(7,9, 'direction');
INSERT INTO PersonsMovies VALUES(8,9, 'direction');
INSERT INTO PersonsMovies VALUES(9,10, 'direction');
INSERT INTO PersonsMovies VALUES(10,11, 'direction');
INSERT INTO PersonsMovies VALUES(11,12, 'direction');
INSERT INTO PersonsMovies VALUES(12,13, 'direction');
INSERT INTO PersonsMovies VALUES(13,13, 'direction');
INSERT INTO PersonsMovies VALUES(14,14, 'direction');
INSERT INTO PersonsMovies VALUES(15,14, 'direction');
INSERT INTO PersonsMovies VALUES(16,15, 'direction');
INSERT INTO PersonsMovies VALUES(17,16, 'direction');
INSERT INTO PersonsMovies VALUES(18,17, 'direction');
INSERT INTO PersonsMovies VALUES(16,18, 'direction');
INSERT INTO PersonsMovies VALUES(19,19, 'direction');
INSERT INTO PersonsMovies VALUES(20,20, 'direction');
