CREATE TABLE Players (
    player_id INT PRIMARY KEY AUTO_INCREMENT,  
    first_name VARCHAR(50) NOT NULL,           
    last_name VARCHAR(50) NOT NULL,            
    position VARCHAR(30),                      
    team_name VARCHAR(50),                     
    nationality VARCHAR(50),                   
    date_of_birth DATE,                        
    goals INT DEFAULT 0,                       
    assists INT DEFAULT 0,                     
    matches_played INT DEFAULT 0,              
    yellow_cards INT DEFAULT 0,                
    red_cards INT DEFAULT 0                   
);


INSERT INTO Players VALUES(2,'Cristiano', 'Ronaldo', 'Forward', 'Al Nassr', 'Portugal', '1985-02-05', 805, 223, 1100, 100, 3);
INSERT INTO Players VALUES(3,'Neymar', 'Jr', 'Forward', 'Al Hilal', 'Brazil', '1992-02-05', 400, 210, 600, 65, 1);
INSERT INTO Players VALUES(4,'Kevin', 'De Bruyne', 'Midfielder', 'Manchester City', 'Belgium', '1991-06-28', 60, 100, 380, 40, 0);
INSERT INTO Players VALUES(5,'Virgil', 'van Dijk', 'Defender', 'Liverpool', 'Netherlands', '1991-07-08', 30, 12, 250, 20, 0);

select * from Players;


Create database throwball;