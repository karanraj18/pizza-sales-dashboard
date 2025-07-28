# Average order value : the sum of the total amount / total number of order placed
select sum(total_price) / count(distinct order_id) AS Average_order_value from pizza_sales