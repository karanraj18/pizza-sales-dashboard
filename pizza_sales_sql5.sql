# Average pizza per order : total no of pizza sold / total number of orders
select cast(cast(sum(quantity) as decimal(10,2)) 
/ cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2))as average_pizza_per_order from pizza_sales
# 10,2 means that afetr decimal places there will be 10 decimal places but we will be using 2