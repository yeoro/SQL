/* animal_ins : animal_outs 를 동물의 ID로 조인한 후, 입양일이 보호일보다 빠른 데이터 출력 */

select 
	i.ANIMAL_ID,
	i.NAME
from 
	animal_ins i
left outer join animal_outs o 
			 on i.ANIMAL_ID = o.animal_id 
where 
	i.`DATETIME` > o.`datetime`
order by 
	i.`DATETIME`;