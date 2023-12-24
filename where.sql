USE platziblog;

SELECT *
FROM posts
WHERE id < 10;

SELECT *
FROM posts
WHERE id > 10;
-- WHERE id >= numero

SELECT *
FROM posts
WHERE status = 'activo';

SELECT *
FROM posts
WHERE status = 'inactivo';
-- WHERE status != 'valor'

SELECT *
FROM posts
WHERE title LIKE '%escandalo%';

SELECT *
FROM posts
WHERE title LIKE 'escandalo%';

SELECT *
FROM posts
WHERE title LIKE '%roja';

-- condiciones con fecha

SELECT *
FROM posts
WHERE post_date > '2021-01-01';

SELECT *
FROM posts
WHERE post_date < '2023-01-01';

-- rango o entre fechas

SELECT *
FROM posts
WHERE post_date BETWEEN '2021-01-01' AND '2023-12-31';

-- solo por año

SELECT *
FROM posts
WHERE YEAR(post_date) BETWEEN '2023' AND '2024';

-- solo por mes

SELECT *
FROM posts
WHERE MONTH(post_date) = '04';