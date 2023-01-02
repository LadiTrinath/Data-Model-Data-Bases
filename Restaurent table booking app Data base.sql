CREATE TABLE customers(id INT,name VARCHAR(200),email VARCHAR(500),CONSTRAINT PK_customers PRIMARY KEY(id));
INSERT INTO customers(id,name,email)VALUES(450,'Trinath','ladi.trinath@gmail.com');
CREATE TABLE ratings(id INT,customers  INT,restaurant  INT,TABLE1ID INT,rating INT,feedback VARCHAR(500),CONSTRAINT PK_ratings PRIMARY KEY (id),CONSTRAINT FK_cutid FOREIGN KEY (customers) REFERENCES customers(id));
INSERT INTO ratings(id,customers,restaurant ,TABLE1ID,rating,feedback) VALUES(1,450,2,5,10,'GOOD');
SELECT * FROM customers;
SELECT * FROM ratings;
CREATE TABLE TABLE1(id INT,server_id INT,table_type VARCHAR(500),REG INT,CONSTRAINT PK_TABLE1 PRIMARY KEY (id));
CREATE TABLE servers(id INT,name VARCHAR(200),tableID INT,rating INT,location VARCHAR(1000),CONSTRAINT PK_servers PRIMARY KEY (id),CONSTRAINT FK_tableID FOREIGN KEY (tableID) REFERENCES TABLE1(id));
					 
					 

					 