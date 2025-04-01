-- DATABASE --
CREATE DATABASE movies;

-- CREATING VALUES --
CREATE TABLE movies_info (
    movie_id INT PRIMARY KEY,                     
    title VARCHAR(255) NOT NULL UNIQUE,           
    genre VARCHAR(100) NOT NULL,                   
    release_date DATE NOT NULL,                    
    director VARCHAR(255),                         
    duration INT,                                  
    language VARCHAR(100) NOT NULL,                
    rating DECIMAL(3, 1),                          
    budget INT,                                    
    box_office_revenue BIGINT NOT NULL UNIQUE         
);

-- INSERTING VALUES -- 

INSERT INTO movies_info VALUES
(1, 'Baahubali: The Beginning', 'Action', '2015-07-10', 'S. S. Rajamouli', 159, 'Telugu', 8.1, 1800000000, 6000000),
(2, 'Dangal', 'Drama', '2016-12-23', 'Nitesh Tiwari', 161, 'Hindi', 8.4, 700000000, 387000000),
(3, '3 Idiots', 'Comedy', '2009-12-25', 'Rajkumar Hirani', 170, 'Hindi', 8.4, 550000, 392000),
(4, 'Kabhi Khushi Kabhie Gham', 'Drama', '2001-12-14', 'Karan Johar', 210, 'Hindi', 7.4, 400000000, 136000000),
(5, 'Lagaan', 'Drama', '2001-06-15', 'Ashutosh Gowariker', 224, 'Hindi', 8.1, 2500000, 65000),
(6, 'Chennai Express', 'Romance', '2013-08-09', 'Rohit Shetty', 141, 'Hindi', 6.0, 100000000, 42200000),
(7, 'Krrish 3', 'Action', '2013-11-01', 'Rakesh Roshan', 152, 'Hindi', 6.1, 130000000, 372000000),
(8, 'PK', 'Comedy', '2014-12-19', 'Rajkumar Hirani', 153, 'Hindi', 8.1, 850000000, 8350000),
(9, 'Zindagi Na Milegi Dobara', 'Comedy', '2011-07-15', 'Zoya Akhtar', 155, 'Hindi', 8.1, 450000000, 19200000),
(10, 'Mughal-e-Azam', 'Historical', '1960-08-05', 'K. Asif', 197, 'Hindi', 8.2, 4000000, 20000000),
(11, 'Kabir Singh', 'Drama', '2019-06-21', 'Sandeep Reddy Vanga', 174, 'Hindi', 7.1, 600000000, 37000000),
(12, 'Jab Tak Hai Jaan', 'Romance', '2012-11-13', 'Yash Chopra', 138, 'Hindi', 6.7, 900000000, 200000),
(13, 'Tanu Weds Manu', 'Romance', '2011-02-25', 'Aanand L. Rai', 120, 'Hindi', 7.6, 250000000, 1150000),
(14, 'Bajrangi Bhaijaan', 'Drama', '2015-07-17', 'Kabir Khan', 159, 'Hindi', 8.0, 900000000, 9690000),
(15, 'Dhoom 3', 'Action', '2013-12-20', 'Vijay Krishna Acharya', 172, 'Hindi', 6.2, 175000000, 5420000),
(16, 'Dilwale Dulhania Le Jayenge', 'Romance', '1995-10-20', 'Aditya Chopra', 180, 'Hindi', 8.0, 400000000, 10000000),
(17, 'Bhaag Milkha Bhaag', 'Biographical', '2013-07-12', 'Rakeysh Omprakash Mehra', 188, 'Hindi', 8.2, 25000000 ,2000000000),
(18, 'My Name is Khan', 'Drama', '2010-02-12', 'Karan Johar', 160, 'Hindi', 7.8, 800000000, 2230000),
(19, 'Rock On!!', 'Drama', '2008-09-05', 'Abhishek Kapoor', 145, 'Hindi', 7.9, 20000000, 5500000),
(20, 'Queen', 'Comedy', '2014-03-07', 'Vikas Bahl', 146, 'Hindi', 8.2, 150000000, 1370000);

-- ALTER (NEW COLUMN) -- 
ALTER TABLE movies_info
ADD COLUMN HERO VARCHAR(20);

-- UPDATE
update movies_info
set country = 'India'
WHERE movie_id Between 1 and 20;

-- update --
update movies_info 
set country = 'PAKISTAN'
WHERE movies_id = 2;

-- update --
update movies_info 
set country = 'columbia'
WHERE movies_id = 3;

-- update --
update movies_info 
set country = 'nepal'
WHERE movies_id = 4;

-- update --
update movies_info 
set country = 'dubai'
WHERE movies_id = 5;

-- update --
update movies_info 
set country = 'USA'
WHERE movies_id = 6;

-- update --
update movies_info 
set country = 'Bangladesh'
WHERE movies_id = 7;

-- update --
update movies_info 
set country = 'Bhutan'
WHERE movies_id = 8;

-- update --
update movies_info 
set country = 'TURKISTAN'
WHERE movies_id = 9;

-- update --
update movies_info 
set country = 'MYANMAR'
WHERE movies_id = 10;

-- update --
update movies_info 
set country = 'Afghanistan'
WHERE movies_id = 11;

-- update --
update movies_info 
set country = 'United Kingdom'
WHERE movies_id = 12;

-- update --
update movies_info 
set country = 'POLAND'
WHERE movies_id = 14;

-- update --
update movies_info 
set country = 'Germany'
WHERE movies_id = 15;

-- update --
update movies_info 
set country = 'KOREA'
WHERE movies_id = 16;

-- update --
update movies_info 
set country = 'ARGENTINA'
WHERE movies_id = 17;

-- update --
update movies_info 
set country = 'TURKEY'
WHERE movies_id = 18;

-- update --
update movies_info 
set country = 'Sri Lanka'
WHERE movies_id = 19;

-- update --
update movies_info 
set country = 'Australia'
WHERE movies_id = 20;

ALTER TABLE MOVIES_INFO
DROP COLUMN HERO;

-- ADDING NEW COLUMN --
ALTER TABLE MOVIES_INFO
ADD COLUMN PRODUCTION_TEAM VARCHAR(30);

-- ADDING VALUES TO THE COLUMN -- 
UPDATE movies_info
SET PRODUCTION_TEAM = 'WB'
WHERE movie_id IN (1,2,3,5,6,14,13,17);

-- adding to remaining values -- 
update movies_info 
set production_team = "networks"
where movie_id not in (1,2,3,5,6,14,13,17);

-- SUM
select sum(budget) as budget from movies_info;

-- MAX
SELECT MAX(BUDGET)  AS MIN FROM MOVIES_INFO;

-- MIN
SELECT MIN(BUDGET) AS MAX FROM MOVIES_INFO;

-- AVERAGE
SELECT AVG(BUDGET) FROM MOVIES_INFO;

-- COUNT
SELECT COUNT(*) FROM MOVIES_INFO
WHERE MOVIE_ID = 2;

-- COUNT
SELECT COUNT(*) FROM MOVIES_INFO; -- it displays no of columns

-- GROUP
select genre
from movies_info
group by genre ;

-- Having
select duration 
from movies_info
group by duration
having duration > 180;


select * from movies_info;
