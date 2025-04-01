-- CREATING DATABASE --
create database hospital;

-- CREATING TABLE --
CREATE table hospital_info (
patient_id INT PRIMARY KEY,
hospital_name varchar(30),
Name varchar(30),
Date_of_birth varchar(30),
phone_number BIGINT,
city varchar(30),
date varchar(20)
);


-- Insert values for the tables --
Insert into hospital_info values(1,'RAJIV_GANDHI','SAMSON','12-12-1987', 9876543210,'BANGALORE','20-1-2025');
Insert into hospital_info values(2,'SANJAY GANDHI','SHIVU','9-8-1987',9878658751,'CHENNAI','22-02-2022');
Insert into hospital_info values(3,'GOVERNMENT ','KARTHIK','10-12-2000','888776545','PUNJAB','23-7-2024');
Insert into hospital_info values(4,'St.Pauls','SUMANTH','09-08-1978','987876543','KASHMIR','19-09-2023');
Insert into hospital_info values(5,'NARAYANA','KISHORE','18-08-1987','9876543239','ANDRA','10-08-2025');
  



update hospital_info
set date = '12-01-2025'
where patient_id = 3;


-- COUNT --
select count(*) AMOUNT from hospital_info;
select count(*) HOSPITAL_NAME from hospital_info;
select count(*) PHONE_NUMBER from hospital_info;

-- ALTER --
ALTER TABLE HOSPITAL_INFO
ADD AMOUNT BIGINT;


select * from hospital_info;

UPDATE HOSPITAL_INFO 
SET AMOUNT = 150000
WHERE PATIENT_ID = 2; 

UPDATE HOSPITAL_INFO 
SET AMOUNT = 154828
WHERE PATIENT_ID = 3; 


UPDATE HOSPITAL_INFO 
SET AMOUNT = 182000
WHERE PATIENT_ID = 1; 


UPDATE HOSPITAL_INFO 
SET AMOUNT = 98000
WHERE PATIENT_ID = 4; 

UPDATE HOSPITAL_INFO 
SET AMOUNT = 256735
WHERE PATIENT_ID = 5; 


-- SUM -- 
SELECT SUM(AMOUNT) FROM HOSPITAL_INFO;

-- AVERAGE --
SELECT AVG(AMOUNT) FROM HOSPITAL_INFO;

-- MIN -- 
SELECT MIN(AMOUNT) FROM HOSPITAL_INFO;

-- MAX --
SELECT MAX(AMOUNT) AS HIGHEST_PRICE FROM HOSPITAL_INFO;

-- GROUP BY --
SELECT NAME
FROM HOSPITAL_INFO
GROUP BY NAME;

-- GROUP HAVING --
SELECT AMOUNT
FROM HOSPITAL_INFO
GROUP BY AMOUNT
HAVING AMOUNT > 150000;




select * from hospital_info;


COMMIT;

