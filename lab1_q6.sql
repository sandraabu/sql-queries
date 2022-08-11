WITH sub as (SELECT unit_price AS "Top 5 A Products", unit_price
FROM products
WHERE product_name LIKE '%a%'
ORDER BY unit_price DESC
LIMIT 5)

SELECT sub."Top 5 A Products", sub.unit_price
FROM sub
ORDER BY unit_price ASC;