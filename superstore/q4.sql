select r.country,
		count(distinct r.salesperson) as count_of_sp_per_region,
		count(distinct o.order_id) as orders_placed_in_region
from regions r
join orders o
	on r.region_id = o.region_id
where r.sub_region LIKE '%Europe'
group by 1
order by 3 DESC;