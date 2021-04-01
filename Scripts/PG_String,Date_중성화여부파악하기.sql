select 
	ANIMAL_ID,
	NAME,
	case when SEX_UPON_INTAKE 
	 not like 'Intact%' 
	     then 'O' 
	     else 'X' 
	   end as '중성화'
from
	animal_ins
order by
	ANIMAL_ID;