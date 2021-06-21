/*Find out the top 3 rented horror movies.*/
select f.title,f.rental_rate,c.name
from film f,category c,film_category fc
where f.film_id=fc.film_id and c.category_id=fc.category_id and c.name='Horror'
order by f.rental_rate desc
Limit 3;
