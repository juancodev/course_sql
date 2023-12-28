USE platziblog;

-- valor null y not null, condiciones anidadas 
SELECT *
FROM posts
WHERE users_id IS NOT NULL
AND status = 'activo'
AND YEAR(post_date) = '2023'
AND categories_id = 3
AND title LIKE 'ganan%';