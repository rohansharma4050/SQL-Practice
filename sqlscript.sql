REM   Script: Session 01
REM   sql

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

select distinct team_1, team_2 as team_name from icc_world_cup;

select  team_1 union team_2 as team_name from icc_world_cup;

select team_1 from icc_world_cup union team_2 as team_name from icc_world_cup;

select team_1 from icc_world_cup union select team_2 as team_name from icc_world_cup;

select team_1 from icc_world_cup as team_name  union select team_2 from icc_world_cup;

select team_1 as team_name from icc_world_cup union select team_2 from icc_world_cup;

select team_1 as team_name, count(team_name) as matches_played from icc_world_cup union select team_2 ,count(team_2) as matches_playedfrom icc_world_cup 
;

select team_1 as team_name, count(team_name) as matches_played from icc_world_cup union select team_2 ,count(team_2) as matches_played from icc_world_cup 
;

select team_1 as team_name, count(team_name) as matches_played from icc_world_cup union select team_2 ,count(team_2) as matches_played from icc_world_cup 
;

select team_1 as team_name, count(team_1) as matches_played from icc_world_cup union select team_2 ,count(team_2) as matches_played from icc_world_cup 
;

select team_1 as team_name, count(team_1) as matches_played from icc_world_cup union select team_2  from icc_world_cup 
;

select * from  
(select team_1 as team_name,* from icc_world_cup union select team_2,* from icc_world_cup) 
as sqe 
;

select * from  
(select team_1 as team_name from icc_world_cup union select team_2 from icc_world_cup) 
as sqe 
;

select * from  
(select team_1 as team_name from icc_world_cup union select team_2 from icc_world_cup) 
 
;

select * from  
(select team_1 as team_name,* from icc_world_cup union select team_2,* from icc_world_cup) 
 
;

select * from  
(select team_1 as team_name from icc_world_cup union select team_2 from icc_world_cup) 
 
;

select * from  
(select team_1 as team_name,count(*) as matches_played from icc_world_cup union select team_2 from icc_world_cup) 
 
;

select * from  
(select team_1 as team_name,count(*) as matches_played from icc_world_cup union select team_2,count(*) as matches_played from icc_world_cup) 
 
;

select * from  
(select team_1 as team_name,count(team_name) as matches_played from icc_world_cup union select team_2,count(*) as matches_played from icc_world_cup) 
 
;

select * from  
(select team_1 as team_name,count(team_1) as matches_played from icc_world_cup union select team_2,count(*) as matches_played from icc_world_cup) 
 
;

select * from  
(select team_1 as team_name,count(team_1) as matches_played from icc_world_cup union select team_2 from icc_world_cup) 
 
;

select * from  
(select team_1 as team_name,count(team_1) as matches_played from icc_world_cup union select team_2,count(team_2) as matches_played from icc_world_cup) 
 
;

select * from  
(select *, team_1 as team_name from icc_world_cup union select team_2 from icc_world_cup) 
 
;

select * from  
(select *, team_1 as team_name from icc_world_cup union select team_2 from icc_world_cup) 
 
;

select * from  
(select *, team_1 as team_name from icc_world_cup union select team_2 from icc_world_cup) 
 
;

select * from  
(select *, team_1 as team_name from icc_world_cup union select team_2 from icc_world_cup) 
 
;

select * from  
(select  team_1 as team_name from icc_world_cup union select team_2 from icc_world_cup) 
 
;

select * from  
(select  team_1 as team_name,team_2, winner from icc_world_cup union select team_2 from icc_world_cup) 
 
;

select * from  
(select  team_1 as team_name,team_2, winner from icc_world_cup union select team_2,team_2, winner from icc_world_cup) 
 
;

select * from  
(select  team_1 as team_name,team_2, winner from icc_world_cup union select team_2, winner from icc_world_cup) 
 
;

select * from  
(select  team_1 as team_name,team_2, winner from icc_world_cup union select team_2 winner from icc_world_cup) 
 
;

select * from  
(select  'team_1' as team_name,team_2, winner from icc_world_cup union select team_2 winner from icc_world_cup) 
 
;

select * from  
(select  'team_1' as team_name,team_2, winner from icc_world_cup union select team_2 winner from icc_world_cup) 
 
;

select * from  
(select  team_1 as team_name,team_2, winner from icc_world_cup union select team_2 winner from icc_world_cup) 
 
;

select * from  
(select  * from icc_world_cup union select * from icc_world_cup) 
 
;

select * from  
(select  * from icc_world_cup union all select * from icc_world_cup) 
 
;

select * from  
(select  * from icc_world_cup union  select * from icc_world_cup) 
 
;

select * from  
(select  team_1 as team_name from icc_world_cup union select team_2  from icc_world_cup) 
 
;

select * from  
(select  team_1 as team_name from icc_world_cup union select *  from icc_world_cup) 
 
;

select * from  
(select  team_1 as team_name,count(team_1) as matches_played from icc_world_cup union select team_2,count(team_2) as matches_played  from icc_world_cup) 
 
;

select team_1,team_2 from icc_world_cup;

select team_1,team_2 from icc_world_cup group by team_1,team_2;

select distinct team_1,team_2 from icc_world_cup ;

select * from (select distinct team_1,team_2 from icc_world_cup );

select * from  
(select  team_1 from icc_world_cup union select team_2 from icc_world_cup) 
;

select * from  
(select  team_1,* from icc_world_cup union select team_2,* from icc_world_cup) 
;

select * from  
(select  team_1 from icc_world_cup union select team_2 from icc_world_cup) 
;

select * from  
(select  team_1,team_2,winner from icc_world_cup union select team_2 from icc_world_cup) 
;

select * from  
(select  team_1,team_2,winner from icc_world_cup union select team_2,team_1,winner from icc_world_cup) 
;

select * from  
(select  team_1,team_2,winner from icc_world_cup union select team_2,winner from icc_world_cup) 
;

select * from  
(select  team_1,team_2,winner from icc_world_cup union select team_2 from icc_world_cup) 
;

select * from  
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
;

select distinct team_1 as team_name from  
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
;

select distinct team_1 as team_name, count(team_name) as matches_played from  
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
;

select distinct team_1 as team_name, count(team_1) as matches_played from  
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
;

select distinct team_1 as team_name, count(*) as matches_played from  
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
;

select distinct team_1 as team_name, count(*) as matches_played from  
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
as sqe 
;

select distinct team_1 as team_name 
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
as sqe 
;

select distinct team_1 as team_name from 
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
 
;

select distinct team_1 as team_name, count(*) from 
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
 
;

select distinct team_1 as team_name, count(*) from 
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
group by team_1 
 
;

select distinct team_1 as team_name, count(*) as matches_played from 
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
group by team_1 
 
;

select distinct team_1 as team_name, count(*) as matches_played, 
count(winner) as no_of_wins 
     
from 
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
group by team_1 
 
;

select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup;

select distinct team_1 as team_name, count(*) as matches_played, 
count(winner) as no_of_wins 
     
from 
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
group by team_1,winner 
 
;

select distinct team_1 as team_name, count(*) as matches_played, 
count(winner) as no_of_wins 
     
from 
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
group by team_1,team_2 
 
;

select distinct team_1 as team_name, count(*) as matches_played, 
count(winner) as no_of_wins 
     
from 
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
group by team_1 
 
;

select distinct team_1 as team_name, count(*) as matches_played, 
count(*) as no_of_wins 
     
from 
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
group by team_1 
 
;

select distinct team_1 as team_name, count(*) as matches_played, 
count() as no_of_wins 
     
from 
(select  team_1,team_2,winner from icc_world_cup union select team_2, team_1, winner from icc_world_cup) 
group by team_1 
 
;

select distinct team_1 as team_name, count(*) as matches_played, 
count() as no_of_wins 
     
from 
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
group by team_1 
 
;

select distinct team_1 as team_name, count(*) as matches_played, 
count() as no_of_wins 
     
from 
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
group by team_1 
 
;

select distinct team_1 as team_name, count(*) as matches_played, 
count() as no_of_wins 
     
from 
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
group by team_1 
 
;

select distinct team_1 as team_name, count(*) as matches_played, 
count(winner) as no_of_wins 
     
from 
(select  team_1,team_2,winner from icc_world_cup union select team_2, team_1, winner from icc_world_cup) 
group by team_1 
 
;

select  team_1,team_2,winner from icc_world_cup union select team_2, team_1, winner from icc_world_cup;

select distinct team_1 as team_name, count(*) as matches_played, 
count(winner) as no_of_wins 
     
from 
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
group by team_1 
 
;

select  team_1 as team_name, count(*) as matches_played, 
count(winner) as no_of_wins 
     
from 
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
group by team_1 
 
;

select team_1 as team_name, count(*) as matches_played, 
count(winner) as no_of_wins 
     
from 
(select  team_1,team_2,winner from icc_world_cup union select team_2, null, null from icc_world_cup) 
group by team_1 
 
;

select team_1 as team_name, count(*) as matches_played, 
count(winner) as no_of_wins 
     
from 
(select  team_1,team_2,winner from icc_world_cup union all select team_2, null, null from icc_world_cup) 
group by team_1 
 
;

select team_1 as team_name, count(*) as matches_played, 
count(winner) as no_of_wins 
     
from 
(select  team_1,team_2,winner from icc_world_cup union all select team_2 from icc_world_cup) 
group by team_1 
 
;

select team_1 as team_name, count(*) as matches_played, 
sum(case when team_1 = winner then 1 else 0 end) as no_of_wins 
     
from 
(select  team_1,team_2,winner from icc_world_cup union all select team_2, null, null from icc_world_cup) 
group by team_1 
 
;

select team_1 as team_name, count(*) as matches_played, 
sum(case when team_1 = winner then 1 else 0 end) as no_of_wins 
     
from 
(select  team_1,team_2,winner from icc_world_cup union  select team_2, null, null from icc_world_cup) 
group by team_1 
 
;

select team_1 as team_name, count(*) as matches_played, 
sum(case when team_1 = winner then 1 else 0 end) as no_of_wins 
     
from 
(select  team_1,winner from icc_world_cup union  select team_2, winner from icc_world_cup) 
group by team_1 
 
;

select team_1 as team_name, count(*) as matches_played, 
sum(case when team_1 = winner then 1 else 0 end) as no_of_wins 
     
from 
(select  team_1, winner from icc_world_cup union all select team_2, winner from icc_world_cup) 
group by team_1 
 
;

select  team_1, winner from icc_world_cup union all select team_2, winner from icc_world_cup;

select team_1 as team_name, count(*) as matches_played, 
sum(case when team_1 = winner then 1 else 0 end) as no_of_wins 
     
from 
(select  team_1, winner from icc_world_cup union all select team_2, winner from icc_world_cup) 
group by team_1 
 
;

select team_1 as team_name, count(*) as matches_played, 
sum(case when team_1 = winner then 1 else 0 end) as no_of_wins, 
(matches_played - no_of_wins) as no_of_losses 
from 
(select  team_1, winner from icc_world_cup union all select team_2, winner from icc_world_cup) 
group by team_1 
 
;

select team_1 as team_name, count(*) as matches_played, 
sum(case when team_1 = winner then 1 else 0 end) as no_of_wins, 
(count(*) - no_of_wins) as no_of_losses 
from 
(select  team_1, winner from icc_world_cup union all select team_2, winner from icc_world_cup) 
group by team_1 
 
;

select team_1 as team_name, count(*) as matches_played, 
sum(case when team_1 = winner then 1 else 0 end) as no_of_wins, 
(count(*) - no_of_wins) as no_of_losses 
from 
(select  team_1, winner from icc_world_cup union all select team_2, winner from icc_world_cup) 
group by team_1 
 
;

select team_1 as team_name, count(*) as matches_played, 
sum(case when team_1 = winner then 1 else 0 end) as no_of_wins, 
(count(*) - no_of_wins) as no_of_losses 
from 
(select  team_1, winner from icc_world_cup union all select team_2, winner from icc_world_cup) 
group by team_1 
 
;

select team_1 as team_name, count(*) as matches_played, 
sum(case when team_1 = winner then 1 else 0 end) as no_of_wins, 
(count(*) - no_of_wins) as no_of_losses 
from 
(select  team_1, winner from icc_world_cup union all select team_2, winner from icc_world_cup) 
group by team_1 
 
;

select team_1 as team_name, count(*) as matches_played, 
sum(case when team_1 = winner then 1 else 0 end) as no_of_wins, 
(matches_played - no_of_wins) as no_of_losses 
from 
(select  team_1, winner from icc_world_cup union all select team_2, winner from icc_world_cup) 
group by team_1 
 
;

select *, (matches_played - no_of_wins) as no_of_losses 
from (select team_1 as team_name, count(*) as matches_played, 
sum(case when team_1 = winner then 1 else 0 end) as no_of_wins 
from 
(select  team_1, winner from icc_world_cup union all select team_2, winner from icc_world_cup) 
group by team_1) 
 
;

select *, (matches_played - no_of_wins) as no_of_losses 
from (select team_1 as team_name, count(*) as matches_played, 
sum(case when team_1 = winner then 1 else 0 end) as no_of_wins 
from 
(select  team_1, winner from icc_world_cup union all select team_2, winner from icc_world_cup) 
group by team_1) 
) 
;

select * from (select team_1 as team_name, count(*) as matches_played, 
sum(case when team_1 = winner then 1 else 0 end) as no_of_wins 
from 
(select  team_1, winner from icc_world_cup union all select team_2, winner from icc_world_cup) 
group by team_1) 
 
;

select *,(matches_played - no_of_wins) as no_of_losses from (select team_1 as team_name, count(*) as matches_played, 
sum(case when team_1 = winner then 1 else 0 end) as no_of_wins 
from 
(select  team_1, winner from icc_world_cup union all select team_2, winner from icc_world_cup) 
group by team_1) 
 
;

select *,(matches_played - no_of_wins) as no_of_losses  
from (select team_1 as team_name, count(*) as matches_played, 
sum(case when team_1 = winner then 1 else 0 end) as no_of_wins 
from 
(select  team_1, winner from icc_world_cup union all select team_2, winner from icc_world_cup) 
group by team_1) as sqe 
 
;

select team_1 as team_name, count(*) as matches_played, 
sum(case when team_1 = winner then 1 else 0 end) as no_of_wins, 
(count(*) - sum(case when team_1 = winner then 1 else 0 end) ) as no_of_losses 
from 
(select  team_1, winner from icc_world_cup union all select team_2, winner from icc_world_cup) 
group by team_1 
 
;

