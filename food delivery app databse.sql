CREATE TABLE customer (id INT,first_name VARCHAR(200),last_name VARCHAR(200),CONSTRAINT pk_customer PRIMARY KEY(id));
CREATE TABLE delivery_driver (id INT,first_name VARCHAR(200),last_name VARCHAR(200),CONSTRAINT pk_delivery_driver PRIMARY KEY(id),CONSTRAINT pk_delivery_driver PRIMARY KEY(id));
CREATE TABLE address (id INT,unit_number INT,street_number INT,address_line1 VARCHAR(1000),address_line2 VARCHAR(1000),city VARCHAR(500),region VARCHAR(500),postal_code INT,country_id INT,CONSTRAINT pk_address PRIMARY KEY(id),CONSTRAINT fk_address_countid FOREIGN KEY(country_id) REFERENCES country(id));
CREATE TABLE country(id INT,country_name VARCHAR(200),CONSTRAINT pk_country PRIMARY KEY(id));
CREATE TABLE customer_address(id INT,customer_id INT,address_id INT,CONSTRAINT pk_customer_address PRIMARY KEY(id),CONSTRAINT fk_cust_add_custid FOREIGN KEY(customer_id) REFERENCES customer(id),CONSTRAINT fk_cust_add_addid FOREIGN KEY(address_id) REFERENCES address(id));
CREATE TABLE restaurant(id INT,restaurant_name VARCHAR(200),address_id INT,CONSTRAINT pk_customer PRIMARY KEY(id),CONSTRAINT fk_rest_addid FOREIGN KEY(address_id) REFERENCES address(id));
CREATE TABLE menu_item(id INT,restaurant_id INT,item_name VARCHAR(200),price INT,CONSTRAINT pk_menu_item PRIMARY KEY(id),CONSTRAINT fk_menu_item_restid FOREIGN KEY(restaurant_id) REFERENCES restaurant(id));
CREATE TABLE order_status(id INT,staus VARCHAR(10),CONSTRAINT pk_order_status PRIMARY KEY(id));
