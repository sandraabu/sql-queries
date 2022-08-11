SELECT categories.category_name, COUNT(products.product_id) AS productpercat
FROM categories
INNER JOIN products
ON categories.category_id = products.category_id
WHERE products.discontinued = 0
GROUP BY categories.category_name
LIMIT 5;