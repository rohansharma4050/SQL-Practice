CREATE TABLE sales_data (
    product_name VARCHAR(100),
    revenue DECIMAL(10,2)
);


INSERT INTO sales_data (product_name, revenue) VALUES
('Product A', 5000.00),
('Product B', 3000.00),
('Product C', 2500.00),
('Product D', 1500.00),
('Product E', 1200.00),
('Product F', 900.00),
('Product G', 700.00),
('Product A', 4500.00),
('Product B', 2800.00),
('Product C', 2300.00);

with cte as (select product_name, sum(revenue) as total_sales, 
sum(sum(revenue)) over(order by sum(revenue) desc ) as cumulative_sum,
sum(sum(revenue)) over() as total_sum
from sales_data group by product_name) 

select * from cte where cumulative_sum <= 0.8 * total_sum
