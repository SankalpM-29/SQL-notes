--CREATE TABLE sales.addresses (
--    address_id INT IDENTITY PRIMARY KEY,
--    street VARCHAR (255) NOT NULL,
--    city VARCHAR (50),
--    state VARCHAR (25),
--    zip_code VARCHAR (5)
--); 

--INSERT INTO sales.addresses (street, city, state, zip_code)
--SELECT street, city, state, zip_code
--FROM sales.customers
--ORDER BY first_name, last_name;

--SELECT * FROM sales.addresses;

--TRUNCATE TABLE sales.addresses;

--INSERT TOP (10)
--INTO sales.addresses (street, city, state, zip_code)
--SELECT street, city, state, zip_code
--FROM sales.customers
--ORDER BY first_name, last_name;

--DROP TABLE IF EXISTS sales.targets;

--CREATE TABLE sales.targets
--(
--    target_id  INT	PRIMARY KEY, 
--    percentage DECIMAL(4, 2) 
--        NOT NULL DEFAULT 0
--);

--INSERT INTO 
--    sales.targets(target_id, percentage)
--VALUES
--    (1,0.2),
--    (2,0.3),
--    (3,0.5),
--    (4,0.6),
--    (5,0.8);

--CREATE TABLE sales.commissions
--(
--    staff_id    INT PRIMARY KEY, 
--    target_id   INT, 
--    base_amount DECIMAL(10, 2) 
--        NOT NULL DEFAULT 0, 
--    commission  DECIMAL(10, 2) 
--        NOT NULL DEFAULT 0, 
--    FOREIGN KEY(target_id) 
--        REFERENCES sales.targets(target_id), 
--    FOREIGN KEY(staff_id) 
--        REFERENCES sales.staffs(staff_id),
--);

--INSERT INTO 
--    sales.commissions(staff_id, base_amount, target_id)
--VALUES
--    (1,100000,2),
--    (2,120000,1),
--    (3,80000,3),
--    (4,900000,4),
--    (5,950000,5);

--UPDATE sales.commissions
--SET sales.commissions.commission = c.base_amount * t.percentage
--FROM sales.commissions c
--INNER JOIN sales.targets t
--ON t.target_id = c.target_id;

SELECT * FROM sales.commissions;
