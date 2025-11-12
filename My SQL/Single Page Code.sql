USE MOVIES;

CREATE TABLE MOVIES(
MOVIE_ID VARCHAR(100),
TITTLE VARCHAR(100),
RELEASE_YEAR YEAR,
LANGUAGE VARCHAR(100),
DURATION_MINS INT NOT NULL,
RATING DECIMAL(3,2),
DIRECTOR_ID INT,
FOREIGN KEY (DIRECTOR_ID) REFERENCES DIRECTORS(DIRECTOR_ID)
);

SHOW TABLES;
CREATE TABLE MOVIES(
MOVIE_ID INT PRIMARY KEY auto_increment,
TITTLE VARCHAR(300) NOT NULL,
RELEASE_YEAR YEAR NOT NULL,
GENER varchar (225) NOT NULL,
LANGUAGE VARCHAR(100) default 'TELUGU',
DURATION_MINS INT NOT NULL,
RATING DECIMAL(3,2),
DIRECTOR_ID INT,
FOREIGN KEY (DIRECTOR_ID) REFERENCES DIRECTORS(DIRECTOR_ID)
);

CREATE TABLE DIRECTORS(
DIRECTOR_ID INT PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(100),
DOB DATE,
NATIONALITY VARCHAR(100),
AWARDS TEXT
);

SHOW TABLES;

CREATE TABLE ACTORS(
ACTOR_ID INT PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(300) NOT NULL, 
DOB DATE,
GENDER CHAR (1),
nationality varchar(100),
debut_year year
);

create table movie_cast(
movie_id int,
actor_id int,
role_name varchar(300),
screen_time_min int not null,
foreign key(movie_id) references movies(movie_id),
foreign key(actor_id) references actors(actor_id),
primary key(movie_id,actor_id)
);

CREATE TABLE BOX_OFFICE(
MOVIE_ID INT, 
BUDGET BIGINT,
BOX_OFFICE_COLLECTION BIGINT,
DOMESTIC_COLLECTION BIGINT, 
INTERNATIONAL_COLLECTION BIGINT,
foreign key(MOVIE_ID) REFERENCES movies(MOVIE_ID),
PRIMARY KEY (MOVIE_ID)
);

insert into directors(name,dob,nationality,awards) values
('SS RAJAMOULI','1990-10-30','INDIAN','NANDI AWARD,PADMA SHRI'),
('TRIVIKRAM','1991-09-29','INDIAN','NANDHI'),
('PURI JAGANNATH','1992-08-28','INDIAN','OSCAR'),
('VISHWANATH','1993-07-27','INDIAN','NULL');

INSERT INTO MOVIES(TITTLE,RELEASE_YEAR,GENER, DURATION_MINS,RATING,DIRECTOR_ID) VALUES
('BAHUBALI','2015','ACTION','160','8.1','1'),
('POKIRI','2021','ACTION','520','8.2','2'),
('RANGASTHALAM','2019','THILLER','220','9.1','3'),
('DOOTHA','2015','ACTION','150','5.1','4'),
('KILLER','2016','SUSPENSE','220','6.0','2');

INSERT INTO MOVIES(TITTLE, RELEASE_YEAR, GENER, LANGUAGE, DURATION_MINS, RATING, DIRECTOR_ID) VALUES
('DHABANG', 2025, 'ACTION', 'HINDI', 250, 9.5, 4),
('PREDESTINATION', 2021, 'ACTION', 'ENGLISH', 210, 8.2, 4);

SHOW TABLES;

INSERT INTO ACTORS(NAME, DOB, GENDER, NATIONALITY, DEBUT_YEAR) VALUES
('PRABAS','1999-12-30','M','INDIAN','2021'),
('MAHESH BABU','1998-11-29','M','INDIAN','2016'),
('ALLU ARJUN','1997-10-28','M','INDIAN','2018'),
('PAWAN KALYAN','1996-09-27','M','INDIAN','2016'),
('JR.NTR','1995-08-26','M','INDIAN','2012'),
('NANI','1994-07-25','M','INDIAN','2026'),
('SAMNTHA','1993-06-24','F','INDIAN','2025');

create table movie_cast(
movie_id int,
actor_id int,
role_name varchar(300),
screen_time_min int not null,
foreign key(movie_id) references movies(movie_id),
foreign key(actor_id) references actors(actor_id),
primary key(movie_id,actor_id)
);
SHOW TABLES;

USE MOVIES;

INSERT INTO movie_cast(movie_id, actor_id, role_name, screen_time_min) VALUES
(1, 1, 'SHIVUDU', 120),
(2, 2, 'BANTU', 140),
(3, 3, 'TAGORE', 130),
(4, 4, 'BHARATH', 120),
(5, 5, 'GANA', 130);

SELECT * FROM movie_cast;

SELECT * FROM movies;
SELECT * FROM actors;


INSERT INTO BOX_OFFICE (MOVIE_ID, BUDGET, BOX_OFFICE_COLLECTION, DOMESTIC_COLLECTION, INTERNATIONAL_COLLECTION) VALUES
(1, 250000000, 500000000, 300000000, 200000000),
(2, 150000000, 350000000, 200000000, 150000000),
(3, 180000000, 400000000, 220000000, 180000000),
(4, 100000000, 250000000, 150000000, 100000000),
(5, 300000000, 700000000, 400000000, 300000000);

INSERT INTO BOX_OFFICE (MOVIE_ID, BUDGET, BOX_OFFICE_COLLECTION, DOMESTIC_COLLECTION, INTERNATIONAL_COLLECTION) VALUES
(8, 2500000, 500000000, 300000000, 200000000),
(9, 100000000, 250000000, 160000000, 1000000);

SELECT * FROM BOX_OFFICE;

SELECT BUDGET, DOMESTIC_COLLECTION FROM BOX_OFFICE;





CREATE DATABASE SOLVE;

show databases;

USE SOLVE;

CREATE TABLE BOOKS(
BOOK_ID INT PRIMARY KEY AUTO_INCREMENT,
TITLE VARCHAR(150),
AUTHOR VARCHAR(300),
GENER VARCHAR (200),
PRICE INT,
PUBLISHED_YEAR YEAR,
IN_STOCK BOOLEAN
);

INSERT INTO BOOKS (BOOK_ID, TITLE, AUTHOR, GENER, PRICE, PUBLISHED_YEAR, IN_STOCK) VALUES
(1,'IT ENDS WITH US','HELEN','FICTIONAL',250,1999,TRUE),
(2,'IT STARTS WITH US','HELEN','FICTIONAL',250,2000,FALSE),
(3,'PERFECT QUESTION PERFECT ANSWER','BHAKTHI VEDHANTHA BOOK TRUST','SPIRITUAL',100,1997,TRUE);

SELECT* FROM BOOKS;
SELECT TITLE, AUTHOR, GENER, PRICE FROM BOOKS;

USE MOVIES;

SELECT * FROM ACTORS;
SELECT * FROM BOX_OFFICE;
SELECT * FROM DIRECTORS;
SELECT * FROM MOVIES;

CREATE TABLE EMPLOYEES(
EMPLOYEE_ID INT PRIMARY KEY,
NAME VARCHAR(100) NOT NULL,
SALLARY INT
);

INSERT INTO EMPLOYEES VALUES
(120,'BINDU');

SELECT * FROM EMPLOYEES;

INSERT INTO EMPLOYEES(EMPLOYEE_ID,NAME) VALUES
(120,'BINDU');

CREATE TABLE USERS(
USER_ID INT PRIMARY KEY,
USERNAME VARCHAR(100) UNIQUE
);

INSERT INTO USERS VALUES
(100,'BINDU');
SELECT* FROM USERS;

INSERT INTO USERS VALUES
(200,'BINDU');

CREATE TABLE ORDERS(
ORDER_ID INT PRIMARY KEY,
ORDER_DATE DATE DEFAULT '2025-08-22'
);

INSERT INTO ORDERS VALUES
(100,'2024-08-21');

SELECT*FROM ORDERS;

INSERT INTO ORDERS (ORDER_ID,ORDER_DATE) VALUES
(200, default);

use movies;


create table products(
product_id int primary key,
price int,
quantity int check(quantity>=0)
);

insert into products values
(2,200,-1);

insert into products values
(2,200,3);

select*from books;
insert into products values
(5,null,7);

show databases;
show tables;
select*from movies where title = 'bahubali';

select*from movies where release_year=2015;

select*from movies where release_year>=2015;

select*from movies where tittle = 'bahubali';

select*from movies where language = 'telugu';

select*from movies where duration_mins = 220;

select*from box_office;

select box_office_collection, domestic_collection, international_collection, budget as profit_or_loss from box_office;

SELECT CASE WHEN 
(BOX_OFFICE_COLLECTION + DOMESTIC_COLLECTION + INTERNATIONAL_COLLECTION) >= BUDGET 
THEN 'PROFIT' 
ELSE 'LOSS'
END AS Profit_Status 
FROM BOX_OFFICE;

SELECT BOX_OFFICE_COLLECTION-BUDGET AS PROFIT_OR_LOSS FROM BOX_OFFICE;

SELECT BUDGET*2 AS DOUBLED_BUDGET FROM BOX_OFFICE;

SELECT MOVIE_ID,BUDGET,BUDGET*2 AS DOUBLED_BUDGET FROM BOX_OFFICE;

SELECT TITLE, LANGUAGE FROM MOVIES WHERE LANGUAGE!='TELUGU';

SELECT TITLE, LANGUAGE FROM MOVIES WHERE LANGUAGE!='ENGLISH';

SELECT TITLE, RELEASE_YEAR, LANGUAGE FROM MOVIES WHERE RELEASE_YEAR>=2015 AND LANGUAGE='TELUGU';

SELECT*FROM MOVIES WHERE RELEASE_YEAR>=2015 AND LANGUAGE='TELUGU';

SELECT*FROM MOVIES;

select*from movies where language='telugu' or release_year=2015;

select*from movies where language='hindi' or release_year=2015;

select*from movies where not language='telugu';

select*from movies where language in ('english');

select*from movies where release_year between 2015 and 2018;

select*from movies where title like 'bahu%';

select*from movies where title like '%nga%';

select*from movies where title like 'd_oth_';

select*from box_office;

select budget, box_office_collection from box_office order by budget asc, box_office_collection asc;

select budget, box_office_collection from box_office order by budget desc, box_office_collection desc;

select movie_id,tittle, release_year, gener, language, duration_mins, rating, director_id from movies
 order by release_year asc, duration_mins asc, rating asc, director_id asc;

select * from movies order by release_year asc, duration_mins asc, rating asc, director_id asc;

select*from movies limit 4;

select count(*) as total_count from movies;

select max(budget) from box_office;

select min(budget) from box_office;

SELECT 
    SUM(box_office_collection)
FROM
    Box_office;

select avg(rating) from movies;

select language, sum(box_office_collection) as total_collection
from movies m join box_office b on m.movie_id = b.Movie_id
group by language;

select* from movies;
show tables;


show databases;


select language, sum(box_office_collection) as total_collection
from box_office b join movies m on m.movie_id = b.Movie_id
group by language;

select * from box_office b join movies m on m.movie_id = b.Movie_id;

select* from box_office;

select language, sum(box_office_collection + international_collection) as total_collection
from box_office b join movies m on m.movie_id = b.Movie_id
group by language having sum(box_office_collection + international_collection) >250000000;

select language, sum(box_office_collection), release_year 
from box_office b join movies m on m.movie_id = b.Movie_id
where m.rating > 5.2
group by m.language= 'telugu', 'hindi', 'english'
having sum(box_office_collection)>0
order by m.release_year asc
limit 4;
 
select language, sum(box_office_collection) as total_collection 
from movies m join box_office b on 
m.movie_id=b.movie_id group by language
having sum(box_office_collection)>100000000;

use movies;
select m.tittle, sum(box_office_collection) as total_collection
from movies m
join box_office b on m.movie_id = b.movie_id
where m.language = 'telugu' and b.budget > 20000000
group by m.tittle
having sum(b.box_office_collection)>0
order by total_collection asc
limit 5;

select*from movies;
select*from box_office;

select m.GENER, sum(box_office_collection) as total_collection
from movies m
join box_office b on m.movie_id=b.movie_id
where language='ENGLISH' and budget>0
group by m.GENER
having sum(box_office_collection)>0
order by total_collection ASC
limit 1;

DESC MOVIES;
UPDATE MOVIES SET RATING = 8.0 WHERE TITTLE = 'BAHUBALI';

UPDATE MOVIES 
SET RATING = 9.0 
WHERE TITTLE = 'BAHUBALI';

update MOVIES 
SET RATING = 9.0 
WHERE MOVIE_ID=1;
SET SQL_SAFE_UPDATES = 0;


ALTER TABLE MOVIES
RENAME COLUMN TITTLE TO TITLE;
INSERT INTO MOVIES VALUES
(10,'DULL',2020,'ACTION','TELUGU',250,2.0,4);

delete FROM MOVIES
WHERE TITLE='DULL';

CREATE DATABASE CASCATE;

USE CASCATE;

USE MOVIES;

CREATE TABLE PLAY(
NAME VARCHAR(1000),
WAKE_UP TIME,
BATH_MINS INT,
BREAKFAST TIME,
COLLEGE time,
STUDY_MINS INT,
SLEEP time
);


INSERT INTO PLAY (NAME, WAKE_UP, BATH_MINS, BREAKFAST, COLLEGE, STUDY_MINS, SLEEP) VALUES
('Bindu', '06:30:00', 20, '07:15:00', '09:00:00', 150, '23:00:00'),
('Arjun', '07:00:00', 15, '07:45:00', '09:20:00', 120, '22:45:00'),
('Meena', '05:45:00', 25, '06:30:00', '08:45:00', 180, '22:30:00'),
('Rahul', '06:15:00', 30, '07:20:00', '09:10:00', 90, '23:15:00'),
('Sneha', '07:10:00', 10, '07:40:00', '09:25:00', 100, '00:00:00');

drop TABLE PLAY;
ALTER TABLE PLAY
ADD PLAY_TIME INT;

ALTER TABLE PLAY
RENAME COLUMN NAME TO NAMES;
SELECT*FROM TABLE_PLAY;

ALTER TABLE PLAY
MODIFY PLAY_TIME TIME;

ALTER TABLE PLAY
DROP COLUMN PLAY_TIME;

RENAME TABLE PLAY TO TABLE_PLAY;

TRUNCATE TABLE TABLE_PLAY;


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