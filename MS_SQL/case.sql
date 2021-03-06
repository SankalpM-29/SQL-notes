SELECT
CASE order_status
WHEN 1 THEN 'Pending'
WHEN 2 THEN 'Processing'
WHEN 3 THEN 'Rejected'
WHEN 4 THEN 'Completed'
END AS order_status, 
COUNT(order_id) order_count
FROM sales.orders
WHERE YEAR(order_date) = 2018
GROUP BY order_status;