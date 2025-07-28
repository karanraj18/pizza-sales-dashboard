# top 5 pizza by order quantity 
select pizza_name, count(distinct order_id) as order_quantity from pizza_sales
group by pizza_name
order by order_quantity desc
limit 5;