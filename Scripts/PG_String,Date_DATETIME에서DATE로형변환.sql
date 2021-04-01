select 
	ANIMAL_ID,
	NAME,
	date_format(`DATETIME`, '%Y-%m-%d') 
from 
	animal_ins
order by
	ANIMAL_ID;