-- Online SQL Editor to Run SQL Online.
-- Use the editor to create new tables, insert data and all other SQL operations.

create table customer_orders (
order_id integer,
customer_id integer,
order_date date,
order_amount integer
);

 INSERT INTO customer_orders (order_id, customer_id, order_date, amount) 
VALUES 
(1, 100, '2022-01-01', 2000),
(2, 200, '2022-01-01', 2500),
(3, 300, '2022-01-01', 2100),
(4, 100, '2022-01-02', 2000),
(5, 400, '2022-01-02', 2200),
(6, 500, '2022-01-02', 2700),
(7, 100, '2022-01-03', 3000),
(8, 400, '2022-01-03', 1000),
(9, 600, '2022-01-03', 3000);


select order_date, sum(
case when new_customer = 1 then 1
else 0
end) as new_customer_count,
sum(
case when new_customer = 0 then 1
else 0
end) as old_customer_count from 

(select *, (case 
when order_date != (select min(order_date) from customer_orders) and
customer_id = prev_id and 
order_date = prev_date then 0
when customer_id = prev_id and order_date != prev_date then 0
else 1
end) as new_customer 
from
 
(select customer_id, order_date,lag(customer_orders.customer_id )over(order by customer_id,order_date)as prev_id, lag(customer_orders.order_date) over(order by order_date,customer_id) as prev_date
from customer_orders
order by customer_id)) group by order_date
