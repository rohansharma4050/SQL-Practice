select * from
( select Product_ID, sum(Sales) as s, 
sum(sum(Sales)) over ( order by sum(Sales) desc ) as run_tot, 
sum(sum(Sales)) over ( ) as tot_sales from orders 
group by Product_ID )
a 
where run_tot <= 0.8*tot_sales;
