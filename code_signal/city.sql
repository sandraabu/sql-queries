SELECT u.id as id, COALESCE(c.country, 'unknown')as country
    FROM users as u
    LEFT JOIN cities as c
    ON u.city = c.city
    ORDER BY u.id;