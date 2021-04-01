select 
	o.animal_id,
	o.name
from 
	animal_outs o
left outer join animal_ins i
			 on o.animal_id = i.ANIMAL_ID
order by 
	o.`datetime` - i.`DATETIME` desc
limit
	2;