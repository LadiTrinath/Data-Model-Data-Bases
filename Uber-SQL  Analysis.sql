CREATE TABLE customers(id INT,name VARCHAR(200),email VARCHAR(200),createdAT TIMESTAMP,CONSTRAINT PK_cust PRIMARY KEY(id));
INSERT INTO customers(id,name,email,createdAT)VALUES(1,'Trinath','ladi.trinath@gmail.com','2022-04-01 14:05:00');
SELECT * FROM customers;
CREATE TABLE drivers(id INT,name VARCHAR(200),cabID INT,email VARCHAR(200),dob DATE,LOC VARCHAR(200),createdAT TIMESTAMP,CONSTRAINT PK_drivers PRIMARY KEY(id));
CREATE TABLE ratings(id INT,customerID INT,driverID INT,tripID INT,rating INT,feedback VARCHAR(200),CONSTRAINT PK_ratings PRIMARY KEY(id),CONSTRAINT fk_rat_custID FOREIGN KEY(customerID) REFERENCES customers(id),CONSTRAINT fk_rat_drivID FOREIGN KEY(driverID) REFERENCES drivers(id));
INSERT INTO drivers(id,name,cabID,email,dob,location,createdAT)VALUES(1456,'Naresh',432,'ladi.naresh@gmail.com','1995-02-01','Hyderabad','2022-07-01 15:05:00');
INSERT INTO ratings(id,customerID,driverID,tripID,rating,feedback)VALUES(10,1,1456,543,5,'GOOD');
SELECT* FROM ratings;