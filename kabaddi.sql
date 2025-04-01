create database kabaddi;

Create table kabaddi_info(
  match_id INT PRIMARY KEY,                    
    season INT NOT NULL,                          
    round INT NOT NULL,                           
    match_date DATE NOT NULL,                     
    match_time TIME NOT NULL,                     
    team_1_id INT NOT NULL,                       
    team_2_id INT NOT NULL,                      
    team_1_score INT NOT NULL,                    
    team_2_score INT NOT NULL,                    
    venue VARCHAR(255) NOT NULL UNIQUE); 
    
    
    
    
    

INSERT INTO kabaddi_info VALUES
(1, 2023, 1, '2023-10-01', '19:30:00', 101, 102, 35, 28, 'Shivaji Stadium'),
(2, 2023, 1, '2023-10-02', '20:00:00', 103, 104, 24, 22, 'Indira Gandhi Stadium'),
(3, 2023, 2, '2023-10-05', '18:30:00', 101, 103, 30, 26, 'Jawaharlal Nehru Stadium'),
(4, 2023, 2, '2023-10-06', '19:45:00', 102, 104, 33, 27, 'Ambedkar Stadium'),
(5, 2023, 3, '2023-10-08', '20:15:00', 101, 104, 40, 32, 'M.A. Chidambaram Stadium'),
(6, 2023, 3, '2023-10-10', '19:00:00', 105, 106, 22, 34, 'Eden Gardens'),
(7, 2023, 4, '2023-10-12', '20:30:00', 107, 108, 38, 29, 'Feroz Shah Kotla'),
(8, 2023, 4, '2023-10-13', '21:00:00', 109, 110, 25, 22, 'Brabourne Stadium'),
(9, 2023, 5, '2023-10-15', '19:45:00', 101, 107, 36, 30, 'Sree Kanteerava Stadium'),
(10, 2023, 5, '2023-10-16', '18:45:00', 102, 108, 33, 31, 'Vidyadhar Nagar Stadium'),
(11, 2023, 6, '2023-10-17', '19:15:00', 103, 109, 28, 34, 'Sardar Vallabhbhai Patel Stadium'),
(12, 2023, 6, '2023-10-19', '20:00:00', 104, 110, 32, 29, 'Salt Lake Stadium'),
(13, 2023, 7, '2023-10-20', '18:30:00', 105, 107, 27, 24, 'Rajiv Gandhi Stadium'),
(14, 2023, 7, '2023-10-22', '21:00:00', 106, 108, 33, 32, 'Kanteerava Stadium'),
(15, 2023, 8, '2023-10-25', '20:15:00', 109, 105, 38, 27, 'Guru Nanak Stadium'),
(16, 2023, 8, '2023-10-26', '19:00:00', 110, 106, 28, 31, 'Sardar ji Vallabhbhai Patel Stadium'),
(17, 2023, 9, '2023-10-28', '19:45:00', 101, 108, 34, 30, 'MCA Stadium'),
(18, 2023, 9, '2023-10-30', '20:00:00', 102, 109, 29, 28, 'Kochi Stadium'),
(19, 2023, 10, '2023-11-01', '21:00:00', 103, 110, 35, 33, 'Nehru Stadium'),
(20, 2023, 10, '2023-11-03', '20:30:00', 104, 107, 31, 28, 'Kalinga Stadium');

Alter table kabaddi_info 
add match_status varchar(30);

UPDATE kabaddi_info
SET match_status = 'Completed'
WHERE match_id  Not IN (1, 3, 5, 7, 9);  

Update kabaddi_info 
set match_status = 'scheduled'
where match_id IN(2,4,5,7,8,12,17,18);


select * from kabaddi_info;

-- SUM
SELECT SUM(team_1_score) + sum(team_2_score) from kabaddi_info;

-- COUNT
SELECT COUNT(*) AS total_matches
FROM kabaddi_info;

-- AVERAGE
SELECT AVG(team_1_score) 
FROM kabaddi_info;

-- MIN
SELECT MIN(team_1_score)
FROM kabaddi_info;

-- MIN
SELECT MAX(team_1_score)
FROM kabaddi_info;

-- GROUP
SELECT season 
FROM kabaddi_info
GROUP BY season;

-- HAVING
SELECT season ,sum(team_1_id) + sum(team_2_id) as team_id 
FROM kabaddi_info
GROUP BY season
having season > 300;




select * from kabaddi_info;

commit;