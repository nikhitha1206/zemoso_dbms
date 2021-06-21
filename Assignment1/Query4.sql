 /*Find out the list of customers from Canada who have rented “NICK WAHLBERG” movies.*/
select distinct c.*
from customer_list c,rental r,inventory i,film_actor fa,actor a
where c.id=r.customer_id and r.inventory_id=i.inventory_id and i.film_id=fa.film_id and fa.actor_id=a.actor_id
and c.country='Canada' and a.first_name='NICK' and a.last_name='WAHLBERG';