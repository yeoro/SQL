select
	ANIMAL_ID,
	NAME,
	SEX_UPON_INTAKE
from 
	animal_ins
where
	name in ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty');