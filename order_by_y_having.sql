USE platziblog;

-- orden de fecha de forma ascendente

SELECT *
FROM posts
ORDER BY post_date ASC;

SELECT *
FROM posts
ORDER BY post_date ASC;

-- orden de fecha de forma descendente

SELECT *
FROM posts
ORDER BY post_date DESC;

-- ordenar por cadena de texto

SELECT *
FROM posts
ORDER BY title ASC;

SELECT *
FROM posts
ORDER BY title DESC;

-- dar un limite

SELECT *
FROM posts
ORDER BY post_date DESC
LIMIT 10;

-- HAVING

SELECT status, MONTHNAME(post_date) AS post_month, COUNT(*) AS post_quantity
FROM posts
GROUP BY status, post_month
HAVING post_quantity > 1
ORDER BY post_month ASC;

-- HAVING con LIMIT

SELECT status, MONTHNAME(post_date) AS post_month, COUNT(*) AS post_quantity
FROM posts
GROUP BY status, post_month
HAVING post_quantity > 1
ORDER BY post_month ASC
LIMIT 2;