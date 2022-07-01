--CREATE DATABASE TestDb;

--SELECT name FROM master.sys.databases ORDER BY name;

--DROP DATABASE IF EXISTS TestDb;

--CREATE SCHEMA customer_services;
--GO

--SELECT s.name AS schema_name, u.name AS schema_owner
--FROM sys.schemas s
--INNER JOIN sys.sysusers u ON u.uid = s.principal_id
--ORDER BY s.name;

--CREATE TABLE customer_services.jobs(
--    job_id INT PRIMARY KEY IDENTITY,
--    customer_id INT NOT NULL,
--    description VARCHAR(200),
--    created_at DATETIME2 NOT NULL
--);

--CREATE SCHEMA hr;

--CREATE TABLE hr.person (
--person_id INT IDENTITY(1,1) PRIMARY KEY,
--first_name VARCHAR(50) NOT NULL,
--last_name VARCHAR(50) NOT NULL,
--gender CHAR(1) NOT NULL
--);





