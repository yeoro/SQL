/**
1. host_id의 count가 2 이상인 테이블(b)을 서브쿼리로 만든다.
2. 위에서 만든 테이블과 places 테이블(a)을 host_id를 기준으로 left join 한다.
3. a 테이블의 id, name과 b 테이블의 host_id 를 select 한다.
4. 헤비 유저를 걸러내기 위해 b 테이블을 사용하고, id와 name을 select 하기 위해 a 테이블과 조인하는 것으로 풀었다.
 */ 

select 
    a.id,
    a.name,
    b.host_id
from
    (select
        host_id,
        count(*)
    from
        places
    group by
        host_id
    having
        count(*) >= 2) b
left join
    places a
on
    b.host_id = a.host_id
order by
    id;



    
    
