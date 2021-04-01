select 
	count(distinct name)
  from 
  	animal_ins
 where 
	not name is null;
 