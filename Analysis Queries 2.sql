select*from moviesSS;
select*from DIRECTORSS;


SELECT M.MOVIE_ID, M.TITLE, D.NAME FROM MOVIESSS M
INNER JOIN DIRECTORSS D ON M.DIRECTOR_ID=D.DIRECTOR_ID
LIMIT 8;

SELECT M.MOVIE_ID, M.TITLE, D.NAME FROM MOVIESSS M
LEFT JOIN DIRECTORSS D ON M.DIRECTOR_ID=D.DIRECTOR_ID;

SELECT *  FROM MOVIESSS M
LEFT JOIN DIRECTORSS D ON M.DIRECTOR_ID=D.DIRECTOR_ID;


SELECT *  FROM MOVIESSS M
RIGHT JOIN DIRECTORSS D ON M.DIRECTOR_ID=D.DIRECTOR_ID;

SELECT *  FROM MOVIESSS M
cross JOIN DIRECTORSS D ON M.DIRECTOR_ID=D.DIRECTOR_ID;

select * from moviesss cross join directorss;
 
select a.title as movie1, b.title as movie2, a.release_year
from movies a join movies b on
a.release_year=b.release_year and a.movie_id<b.movie_id ;

SELECT a.title AS movie1, b.title AS movie2, a.release_year
FROM movies a
JOIN movies b
  ON a.release_year = b.release_year
 AND a.movie_id < b.movie_id;
 
select*from movies;
 
CREATE TABLE MOVIESSS(
MOVIE_ID INT,
TITLE varchar(100),
DIRECTOR_ID INT
);

CREATE TABLE DIRECTORSS(
DIRECTOR_ID INT,
NAME VARCHAR(100)
);
INSERT INTO MOVIESSS VALUES
(1,'RRR',101),
(2,'PUSHPA',102),
(3,'KGF',103);

INSERT INTO DIRECTORSS VALUES
(101,'RM'),
(102,'SK'),
(104,'PN');
 show databases;
 use update_cascate;
 show tables;
 create database union_test;
 use union_test;
 
 CREATE TABLE telugu_movies(
MOVIE_ID INT,
TITLE varchar(100),
release_year year);
 
  
 CREATE TABLE hindi_movies(
MOVIE_ID INT,
TITLE varchar(100),
release_year year);
 
 INSERT INTO telugu_movies (MOVIE_ID, TITLE, release_year) VALUES
(1, 'Bahubali', 2015),
(2, 'RRR', 2022),
(3, 'Pushpa', 2021);
 
 INSERT INTO hindi_movies (MOVIE_ID, TITLE, release_year) VALUES
(1, 'Dangal', 2016),
(2, '3 Idiots', 2009),
(3, 'pushpa', 2021);
truncate table hindi_movies;

select*from hindi_movies;


select title, release_year from telugu_movies 
union all
select title, release_year from hindi_movies ;
 
 use movies;
 
 select  movie_id, budget from box_office
 where budget > (select avg(budget) from box_office);
 
 select*from box_office;
 select avg(budget) as avg_budget from box_office;
 
 select title, (SELECT NAME FROM directors where 
 Movies.DIRECTOR_ID=Directors.DIRECTOR_ID) as director_name
from movies; 
 
select release_year,avg(budget) as avg_budget
from(select movies.release_year, box_office.budget from movies 
join box_office on movies.movie_id = box_office.movie_id ) as sub
 group by release_year;
 
 SET SQL_SAFE_UPDATES = 1;