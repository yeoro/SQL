select 
	ANIMAL_TYPE,
	case when name = '' then 'No name' else name end as 'NAME',
	SEX_UPON_INTAKE
from 
	animal_ins;