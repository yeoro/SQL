select 
	i.NAME,
	i.`DATETIME`
from 
	animal_ins i
left outer join animal_outs o 
			 on i.ANIMAL_ID = o.animal_id
where 
	o.`datetime` is null
order by 
	i.`DATETIME`
limit 
	3;