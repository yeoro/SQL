select 
	i.ANIMAL_ID,
	i.ANIMAL_TYPE,
	i.NAME,
	i.SEX_UPON_INTAKE,
	o.sex_upon_outcome
from 
	animal_ins i
left outer join animal_outs o 
			 on i.ANIMAL_ID = o.animal_id
where 
	i.SEX_UPON_INTAKE != o.sex_upon_outcome
order by
	i.ANIMAL_ID;