INSERT INTO country(id,country_name)VALUES(2,'INDIA');
INSERT INTO country(id,country_name)VALUES(3,'INDIA');
INSERT INTO country(id,country_name)VALUES(4,'INDIA');

INSERT INTO address(id,unit_number,street_number,address_line1,address_line2,city,region,postal_code,country_id)VALUES
(1,10,100,'MCG','Arcade APT','Mumbai','Maharashtra',706101,1);
INSERT INTO address(id,unit_number,street_number,address_line1,address_line2,city,region,postal_code,country_id)VALUES
(2,20,200,'PKG','ADREL APT','Hyderabad','Telangana',50055,2);
INSERT INTO address(id,unit_number,street_number,address_line1,address_line2,city,region,postal_code,country_id)VALUES
(3,30,300,'AKB','Sunshine APT','Bangalore','Karnataka',40022,3);
INSERT INTO address(id,unit_number,street_number,address_line1,address_line2,city,region,postal_code,country_id)VALUES
(4,40,400,'MAA','NAMA APT','Chennai','Tamilnadu',30045,4);

SELECT * FROM address;


