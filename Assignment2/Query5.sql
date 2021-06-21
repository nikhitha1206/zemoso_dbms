/* Find out the number of R rated movies rented by “SUSAN WILSON”.*/
select count(f.title)
from customer c join rental r on c.customer_id=r.customer_id
join inventory i on r.inventory_id=i.inventory_id
join film f on f.film_id=i.film_id
join film_category fc on fc.film_id=f.film_id
join category ca on ca.category_id=fc.category_id 
where c.first_name='SUSAN' and c.last_name='WILSON' and f.rating='R';