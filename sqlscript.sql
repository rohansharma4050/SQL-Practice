create table icc_world_cup 
( 
Team_1 Varchar(20), 
Team_2 Varchar(20), 
Winner Varchar(20) 
);

INSERT INTO icc_world_cup values('India','SL','India');

INSERT INTO icc_world_cup values('SL','Aus','Aus');

INSERT INTO icc_world_cup values('SA','Eng','Eng');

INSERT INTO icc_world_cup values('Eng','NZ','NZ');

INSERT INTO icc_world_cup values('Aus','India','India');

select * from icc_world_cup;



select team_1 as team_name, count(*) as matches_played, 
sum(case when team_1 = winner then 1 else 0 end) as no_of_wins, 
(count(*) - sum(case when team_1 = winner then 1 else 0 end) ) as no_of_losses 
from 
(select  team_1, winner from icc_world_cup union all select team_2, winner from icc_world_cup) 
group by team_1 
 
;





#complex query 2


select customer_id, order_date,
case when (select customer_id, order_date,
(case when order_date = (select min(order_date) from customer_orders)then  1
else 0
end) as date_first )
from customer_orders

    




