use movies;

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