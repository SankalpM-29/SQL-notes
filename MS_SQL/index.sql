--CREATE TABLE production.parts(
--    part_id   INT NOT NULL, 
--    part_name VARCHAR(100)
--);

--INSERT INTO 
--    production.parts(part_id, part_name)
--VALUES
--    (1,'Frame'),
--    (2,'Head Tube'),
--    (3,'Handlebar Grip'),
--    (4,'Shock Absorber'),
--    (5,'Fork');

--SELECT 
--    part_id, 
--    part_name
--FROM 
--    production.parts
--WHERE 
--    part_id = 5;

--CREATE TABLE production.part_prices(
--    part_id int,
--    valid_from date,
--    price decimal(18,4) not null,
--    PRIMARY KEY(part_id, valid_from) 
--);

--ALTER TABLE production.parts
--ADD CONSTRAINT added_pk PRIMARY KEY(part_id);

--CREATE INDEX ix_customers_city
--ON sales.customers(city);

--Disable indexes
--ALTER INDEX ix_customers_city 
--ON sales.customers
--DISABLE;

DROP INDEX IF EXISTS ix_customers_city
ON sales.customers;

