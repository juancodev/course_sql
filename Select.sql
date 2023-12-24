USE platziblog;

SELECT *
FROM posts;

SELECT title, post_date, status
FROM posts;

SELECT title AS encabezado, post_date AS fecha_publicacion, status AS estado
FROM posts;

SELECT COUNT(*) AS numero_de_posts
FROM posts;