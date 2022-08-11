SELECT products.product_name, suppliers.city AS "S Cities"
FROM suppliers
INNER JOIN products
ON products.supplier_id = suppliers.supplier_id
WHERE city LIKE 'S%'
ORDER BY product_name;
