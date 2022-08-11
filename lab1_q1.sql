SELECT product_id, product_name, supplier_id, unit_price
FROM products
WHERE unit_price > 25
ORDER BY supplier_id DESC, unit_price ASC;
