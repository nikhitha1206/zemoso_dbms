/*Find out the top 3 rented category of movies by “PATRICIA JOHNSON”.*/
create or replace view film1 as select ca.name as cname
from customer c join rental r on c.customer_id=r.customer_id
join inventory i on r.inventory_id=i.inventory_id
join film f on f.film_id=i.film_id
join film_category fc on fc.film_id=f.film_id
join category ca on ca.category_id=fc.category_id 
where c.first_name='PATRICIA' and c.last_name='JOHNSON' order by f.rental_rate desc;

select distinct(cname) from film1 limit 3;