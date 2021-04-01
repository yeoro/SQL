/* 요거트가 담긴 장바구니 목록 : 우유가 담긴 장바구니 목록 을 조인하여 장바구니 아이디가 같은 데이터 출력 */

select 
    distinct y.cart_id
from 
    (select * from cart_products where name like 'Yogurt') as y
inner join
    (select * from cart_products where name like 'Milk') as m
        on y.cart_id = m.cart_id
order by 
	cart_id;
