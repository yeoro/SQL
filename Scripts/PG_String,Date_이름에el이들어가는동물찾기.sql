select 
	ANIMAL_ID,
	NAME
from 
	animal_ins
where
	name like '%el%'
  and 
  	ANIMAL_TYPE like 'Dog'
order by
	NAME;