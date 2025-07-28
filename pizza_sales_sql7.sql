# monthly trends of the total order
select monthname(str_to_date(order_date,'%d-%m-%Y')) as month ,
count(distinct order_id) as total_order
from pizza_sales
group by month
order by 
     field(month, 'january','february','march','april','march','april','may','june','july','august','september','october','november','december');
