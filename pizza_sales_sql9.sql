# top 5 bestseller and worst seller by revenue, total quantity and orders
#select pizza_name ,sum(total_price) as total_revenue from pizza_sales
#group by pizza_name
#order by total_revenue desc
#limit 5;

# for least seller pizza 
select pizza_name ,sum(total_price) as total_revenue from pizza_sales
group by pizza_name
order by total_revenue asc
limit 5;