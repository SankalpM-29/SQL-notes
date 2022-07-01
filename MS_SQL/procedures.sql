--CREATE PROCEDURE uspProductList
--AS
--BEGIN
-- SELECT 
--        product_name, 
--        list_price
--    FROM 
--        production.products
--    ORDER BY 
--        product_name;
--END;

--EXEC uspProductList;

--CREATE PROCEDURE uspFindProducts
--AS
--BEGIN
--    SELECT
--        product_name,
--        list_price
--    FROM 
--        production.products
--    ORDER BY
--        list_price;
--END;

--ALTER PROCEDURE uspFindProducts(@min_list_price AS DECIMAL)
--AS
--BEGIN
--    SELECT
--        product_name,
--        list_price
--    FROM 
--        production.products
--    WHERE
--        list_price >= @min_list_price
--    ORDER BY
--        list_price;
--END;

DECLARE @model_year AS SMALLINT;
