/*Find out the number of movies in which “SEAN WILLIAMS” acted.*/
select count(*)
from actor a,film f,film_actor fa
where a.actor_id=fa.actor_id and f.film_id=fa.film_id and a.first_name='SEAN'
and last_name='WILLIAMS';