# Daily trends for our order
SELECT 
    DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS day,
    COUNT(DISTINCT order_id) AS total_orders FROM pizza_sales
GROUP BY 
    day
ORDER BY 
    FIELD(day, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');