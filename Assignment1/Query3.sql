/*Find out the list of customers from India who have rented sports movies.*/
select distinct cl.*,fl.category
from customer_list cl,rental r,inventory i,film_list fl
where cl.id=r.customer_id and r.inventory_id=i.inventory_id and i.film_id=fl.fid and fl.category='Sports' and cl.country='India';