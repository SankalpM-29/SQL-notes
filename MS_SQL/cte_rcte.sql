--WITH cte_sales_amounts (staff, sales, year) AS
--(
--SELECT first_name + ' ' + last_name, SUM(quantity * list_price * (1-discount)), YEAR(order_date)
--FROM sales.orders o
--INNER JOIN sales.order_items i ON i.order_id = o.order_id
--INNER JOIN sales.staffs s ON s.staff_id = o.staff_id
--GROUP BY first_name + ' ' + last_name, year(order_date)
--)

--SELECT staff, sales
--FROM cte_sales_amounts
--WHERE year = 2018;

--WITH cte_sales AS (
--    SELECT 
--        staff_id, 
--        COUNT(*) order_count  
--    FROM
--        sales.orders
--    WHERE 
--        YEAR(order_date) = 2018
--    GROUP BY
--        staff_id
--)

--SELECT
--    AVG(order_count) average_orders_by_staff
--FROM 
--    cte_sales;

--REcursive CTE

--WITH cte_org AS (
--SELECT staff_id, first_name, manager_id
--FROM sales.staffs
--WHERE manager_id IS NULL
--UNION ALL
--SELECT e.staff_id, e.first_name, e.manager_id
--FROM sales.staffs e
--INNER JOIN cte_org o
--	ON o.staff_id = e.manager_id
--)

--SELECT * FROM cte_org;

SELECT * FROM   
(
    SELECT 
        category_name, 
        product_id,
        model_year
    FROM 
        production.products p
        INNER JOIN production.categories c 
            ON c.category_id = p.category_id
) t

PIVOT (
COUNT(product_id)
FOR category_name IN (
[Children Bicycles],
[Comfort Bicycles], 
        [Cruisers Bicycles], 
        [Cyclocross Bicycles], 
        [Electric Bikes], 
        [Mountain Bikes], 
        [Road Bikes])
) AS pivot_table;
