
with floor as(select name,floor, count(*) as visits
,resources
from entries group by name,floor  )

select name,sum(visits) as total_visits, 
case when
max(visits) then floor
end as most_visited_floor,
group_concat(distinct resources) as resources_used
from floor group by name