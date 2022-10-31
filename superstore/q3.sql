select DISTINCT discount,
CASE 
	WHEN discount = 1 THEN 'Free'
	WHEN discount > 0.25 THEN 'High'
	WHEN discount > 0.01 THEN 'Low'
	ELSE 'None'
END AS discount_category
from orders
ORDER BY 1 DESC;