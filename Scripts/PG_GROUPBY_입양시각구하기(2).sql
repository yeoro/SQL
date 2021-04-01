/* SET 변수를 1씩 증가시키면서 SET 변수와 같은 값을 테이블에서 꺼내옴 */

set @start = -1;
select 
	(@start := @start + 1) as `HOUR`,
	(select count(*) 
	   from animal_outs 
	  where hour(`datetime`) = @start) as COUNT
  from animal_outs
 where @start < 23;