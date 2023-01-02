CREATE TABLE calendar(id INT,date_time TIMESTAMP,day VARCHAR(500),CONSTRAINT PK_cal PRIMARY KEY (id));
CREATE TABLE city(id INT,city_code VARCHAR(200),city_name VARCHAR(500),CONSTRAINT PK_cit PRIMARY KEY (id));
CREATE TABLE matches_wins(id INT,win_code VARCHAR(200),points INT,CONSTRAINT PK_wi PRIMARY KEY (id));
CREATE TABLE IPL_result(id int,city_code VARCHAR(100),result_outcome VARCHAR(500),CONSTRAINT PK_res PRIMARY KEY (id),CONSTRAINT FK_cit FOREIGN KEY(city_code) REFERENCES city(city_code));