CREATE TABLE Cricket_info (
    player_id INT PRIMARY KEY,              
    player_name VARCHAR(100),               
    team_name VARCHAR(100),                 
    age INT,                                
    matches_played INT,                     
    runs_scored INT,                        
    wickets_taken INT,                      
    batting_average DECIMAL(5,2),           
    bowling_average DECIMAL(5,2),           
    career_high_score INT                   
);

INSERT INTO Cricket_info VALUES(1,'Virat_kohli','Rcb',36,354,26754,12,78.09,23.78,254);
INSERT INTO Cricket_info Values(2,'Steve Smith','RR',35,202,23456,65,56.87,18.87,231);
INSERT INTO Cricket_info VALUES(3, 'Sachin Tendulkar', 'India', 47, 200, 18000, 46, 53.83, 44.60, 200);
INSERT INTO cricket_info VALUES(4, 'Ben Stokes', 'England', 32, 75, 4000, 150, 35.25, 31.50, 200);
INSERT INTO cricket_info VALUES(5, 'Ricky Ponting', 'Australia', 46, 168, 13700, 0, 51.85, NULL, 164);
INSERT INTO cricket_info VALUES(6, 'Jacques Kallis', 'South Africa', 49, 166, 10000, 290, 45.27, 32.65, 189);
INSERT INTO cricket_info VALUES(7, 'Shane Warne', 'Australia', 52, 145, 3000, 708, NULL, 25.41, 99);
INSERT INTO cricket_info VALUES(8, 'AB de Villiers', 'South Africa', 40, 160, 9500, 0, 53.50, NULL, 162);
INSERT INTO cricket_info VALUES(9, 'Muttiah Muralitharan', 'Sri Lanka', 53, 133, 1000, 800, NULL, 22.72, 10);
INSERT INTO cricket_info VALUES(10, 'Glenn McGrath', 'Australia', 53, 124, 2500, 563, NULL, 23.00, 80);




Select * from Cricket_info;


SELECT * FROM Cricket_info WHERE player_id = 1;

SELECT * FROM Cricket_info Where age > 40;
SELECT * FROM Cricket_info Where age <40;
SELECT * FROM Cricket_info Where age < 43 and age > 35;

SELECT * FROM Cricket_info WHERE player_id NOT IN(1,3,5);
SELECT * FROM Cricket_info WHERE player_id IN(1,3,5);

UPDATE Cricket_info
set age = 37
Where player_id = 2;



