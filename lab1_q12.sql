SELECT AVG(freight) AS avg_freight, ship_country
FROM orders
WHERE CAST(EXTRACT(year from CAST(shipped_date AS DATE)) AS INTEGER) = 1998
GROUP BY ship_country
ORDER BY AVG(freight) DESC
LIMIT 5;