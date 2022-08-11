SELECT AVG(CAST(shipped_date AS date) - CAST(order_date AS date)) AS avg_shipping_time, ship_country
FROM orders
WHERE shipped_date IS NOT NULL
GROUP BY ship_country
ORDER BY avg_shipping_time DESC
LIMIT 5;