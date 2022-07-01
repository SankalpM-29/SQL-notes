--CREATE TABLE sales.list_prices (
--	product_id INT NOT NULL,
--	valid_from DATE NOT NULL,
--	valid_to DATE NOT NULL,
--	amount DEC (10, 2) NOT NULL,
--	PRIMARY KEY (
--		product_id,
--		valid_from,
--		valid_to
	
--	),
--	FOREIGN KEY (product_id) REFERENCES production.products (product_id)
--	);

--INSERT INTO sales.list_prices VALUES (1, '2021-06-12', '2021-07-12', 500);

--CREATE TABLE sales.visits (
--    visit_id INT PRIMARY KEY IDENTITY,
--    customer_name VARCHAR (50) NOT NULL,
--    phone VARCHAR (25),
--    store_id INT NOT NULL,
--    visit_on DATE NOT NULL,
--    start_at TIME (0) NOT NULL,
--    end_at TIME (0) NOT NULL,
--    FOREIGN KEY (store_id) REFERENCES sales.stores (store_id)
--);

--INSERT INTO sales.visits (
--    customer_name,
--    phone,
--    store_id,
--    visit_on,
--    start_at,
--    end_at
--)
--VALUES
--    (
--        'John Doe',
--        '(408)-993-3853',
--        1,
--        '2018-06-23',
--        '09:10:00',
--        '09:30:00'
--    );

--CREATE SCHEMA marketing
--GO

--CREATE TABLE marketing.customers (
--cutomer_id UNIQUEIDENTIFIER DEFAULT NEWID(),
--first_name NVARCHAR(100) NOT NULL,
--last_name NVARCHAR(100) NOT NULL,
--email VARCHAR(200) NOT NULL
--);
--GO

--INSERT INTO marketing.customers (first_name, last_name, email) VALUES
--('Virat', 'Kohli', 'ck@gmail.com'),
--('MS', 'Dhoni', 'ms@gmail.com');

SELECT * FROM marketing.customers;

