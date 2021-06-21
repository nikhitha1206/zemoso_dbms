/*Find out the number of sci-fi movies rented by the store managed by Jon Stephens*/
select distinct(fl.title) as title
from staff s join rental r on s.staff_id=r.staff_id
join inventory i on r.inventory_id=i.inventory_id
join film_list fl on i.film_id=fl.fid
where s.first_name='Jon' and s.last_name='Stephens' and fl.category='Sci-fi';

