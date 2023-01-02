CREATE TABLE vaccine(id INT,vaccine_id INT,vaccine_name VARCHAR(200),CONSTRAINT PK_vacc PRIMARY KEY (id));
CREATE TABLE Time(id INT,date INT,year_id INT,month_id INT,CONSTRAINT PK_Tim PRIMARY KEY(id));
CREATE TABLE healthunit(id INT,healthunit_id INT,healthunit_name VARCHAR(500),address VARCHAR(500),disctrict VARCHAR(500),CONSTRAINT PK_HEA PRIMARY KEY(id));
CREATE TABLE citizen(id INT,citizen_id INT,name VARCHAR(200),surname VARCHAR(200),gender VARCHAR(200),weight INT,height INT,mob_num INT,CONSTRAINT PK_CIT PRIMARY KEY(id));
CREATE TABLE citizenvaccine(id INT,vaccine_id INT,citizen_id INT,healthunit_id INT,date INT,CONSTRAINT PK_CITVACC PRIMARY KEY(id),CONSTRAINT FK_CITIVAC FOREIGN KEY (citizen_id) REFERENCES citizen(id));
INSERT INTO vaccine(id,vaccine_id,vaccine_name)VALUES(123,123,'covaxin');
INSERT INTO Time(id,date,year_id,month_id)VALUES(12,12,1994,11);
INSERT INTO healthunit(id,healthunit_id,healthunit_name,address,disctrict)VALUES(001,001,'APOLLO','HYDERABAD','RANGAREDDY');
INSERT INTO citizen(id,citizen_id,name,surname,gender,weight,height,mob_num)VALUES(1002,1002,'Trinath','Ladi','M',70,7,880132295);
INSERT INTO citizenvaccine(id,vaccine_id,citizen_id,healthunit_id,date)VALUES(000,123,1002,001,1995);
SELECT * FROM citizen;
SELECT * FROM citizenvaccine;
SELECT * FROM healthunit;
SELECT * FROM time;
SELECT * FROM vaccine;

