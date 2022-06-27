#show databases;

CREATE database products;

USE PRODUCTS;

CREATE TABLE groceries (
id INTEGER PRIMARY KEY,
name TEXT,
quantity INTEGER
);

INSERT INTO groceries VALUES (1,"Bananas",4),
(2,"Peanut Butter",1),
(3,"Dark Chocolate Bars",2);

SELECT * FROM groceries;

#### Challenge - create library table with books 
CREATE TABLE library(
id INTEGER PRIMARY KEY,
name TEXT,
rating INTEGER);

INSERT INTO library VALUES (1, "the alchemist", 5),
(2, "ATOMIC HABITS", 4),
(3, "Rework", 3);

