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


select * from
( select Product_ID, sum(Sales) as s, 
sum(sum(Sales)) over ( order by sum(Sales) desc ) as run_tot, 
sum(sum(Sales)) over ( ) as tot_sales from orders 
group by Product_ID )
a 
where run_tot <= 0.8*tot_sales;
