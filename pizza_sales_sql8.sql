# percentage of sale by pizza size
select pizza_size, cast(sum(total_price) as decimal (10,2)) as total_sale , cast(sum(total_price)*100 /
 (select sum(total_price) from pizza_sales WHERE MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) = 1  ) as decimal(10,2) ) as sale_percentage
from pizza_sales
WHERE MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) = 1 
group by pizza_size
order by sale_percentage desc