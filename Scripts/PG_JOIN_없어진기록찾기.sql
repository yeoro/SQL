/* animal_outs : animal_ins 를 동물의 ID로 조인한 후 
 * animal_ins 쪽에 동물의 ID가 존재하지 않으면 유실된 데이터로 판단 */

select 
	o.animal_id, 
	o.name 
from 
	animal_outs o
left outer join animal_ins i 
        on o.animal_id = i.ANIMAL_ID 
where 
	i.ANIMAL_ID is null
order by 
	o.animal_id;