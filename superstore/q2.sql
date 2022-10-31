SELECT r.country,
       orders.ship_mode,
       r.saleperson
FROM orders AS o
JOIN regions AS r
    ON o.region_id = r.region_id
    --USING (region_id)