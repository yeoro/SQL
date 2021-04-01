/* 컬럼을 그룹화한 경우에는 where 절이 아닌 having 절에서 조건 처리 */

select 
	name, count(name) as 'count'
from 
	animal_ins
where 
	not name is null 
group by 
	name
having 
	count(name) >= 2
order by 
	name;