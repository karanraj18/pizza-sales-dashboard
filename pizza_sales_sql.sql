# percentage of sales by pizza category
select pizza_category, sum(total_price) as total_sales, sum(total_price)*100 /
 (select sum(total_price) from pizza_sales WHERE MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) = 1 ) as sales_percentage
from pizza_sales
WHERE MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) = 1  # 1 gives the sales data of january month
group by pizza_category 