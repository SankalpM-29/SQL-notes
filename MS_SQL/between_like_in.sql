--SELECT product_name, list_price 
--FROM production.products
--WHERE list_price BETWEEN 1899.00 AND 1999.99
--ORDER BY list_price DESC;	

--SELECT product_name, list_price 
--FROM production.products
--WHERE list_price IN (299.99, 369.99, 489.99)
--ORDER BY list_price DESC;

--SELECT product_name, list_price 
--FROM production.products
--WHERE product_name LIKE 'Trek%'
--ORDER BY list_price DESC;

SELECT product_name, list_price
FROM production.products
WHERE product_id IN (SELECT product_id FROM production.stocks WHERe store_id = 1 AND quantity >= 30)
ORDER BY list_price DESC;