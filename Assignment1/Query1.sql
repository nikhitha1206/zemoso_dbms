/*Find out the PG-13 rated comedy movies. DO NOT use the film_list table.*/
select f.title,c.name,f.rating
from film f,category c,film_category fc
where f.film_id=fc.film_id and c.category_id=fc.category_id and c.name='Comedy' and f.rating='PG-13';