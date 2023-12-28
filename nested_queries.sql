USE platziblog;

-- query anidado caso 1

SELECT new_table_projection.date, COUNT(*) AS posts_count
FROM (
	SELECT DATE(MIN(post_date)) AS date, YEAR(post_date) AS post_year
    FROM posts
    GROUP BY post_year
) AS new_table_projection
GROUP BY new_table_projection.date
ORDER BY new_table_projection.date;

-- caso 2

SELECT *
FROM posts
WHERE post_date = (
	SELECT MAX(post_date)
    FROM posts
);