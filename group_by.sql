USE platziblog;

-- Agrupar estatus de activo e inactivos

SELECT status, COUNT(*) AS post_quantity
FROM posts
GROUP BY status;

-- Agrupar por años

SELECT YEAR(post_date) AS post_year, COUNT(*) AS post_quantity
FROM posts
GROUP BY post_year
ORDER BY post_year asc;

-- Agrupar por mes

SELECT MONTHNAME(post_date) AS post_month, COUNT(*) AS post_quantity
FROM posts
GROUP BY post_month;

-- agrupar los posts que son activos e inactivos y su mes

SELECT status, MONTHNAME(post_date) AS post_month, COUNT(*) AS post_quantity
FROM posts
GROUP BY status, post_month;