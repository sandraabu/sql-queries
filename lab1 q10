SELECT CAST(EXTRACT(year FROM CAST(order_date AS DATE)) AS INTEGER) AS year,
CAST(EXTRACT(month FROM CAST(order_date AS DATE)) AS INTEGER) AS month,
SUM(freight) AS "freight_per_month"
FROM orders
GROUP BY year, month
HAVING SUM(freight) > 5000
ORDER BY year DESC, month DESC;