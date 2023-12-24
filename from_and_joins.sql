USE platziblog;

-- Me indica los datos de la tabla izquierda con sus intersecciones.
-- A: users | AB: users y posts | B: posts
 
SELECT *
FROM users
	LEFT JOIN posts ON users.id = posts.users_id;

-- El modificador ON nos indica en qué campo irá la relación entre las tablas, las llave primaria con la llave forania.

SELECT *
FROM users
	LEFT JOIN posts ON users.id = posts.users_id
WHERE posts.users_id IS NULL;

-- En esta sentencia decimos que queremos solo los datos izquierdo sin intersección
-- A: users sin la relación con los posts

SELECT *
FROM users
	RIGHT JOIN posts ON users.id = posts.users_id;
    
-- Me indica los datos de la tabla derecha con sus intersecciones.
-- B: posts | BA: posts y users con posts.

SELECT *
FROM users
	RIGHT JOIN posts ON users.id = posts.users_id
WHERE posts.users_id IS NULL;

-- En esta sentencia decimos que queremos solo los datos derecho sin intersección
-- B: posts sin la relación con los users

SELECT *
FROM users
	INNER JOIN posts ON users.id = posts.users_id;

-- En esta sentencia solamente me traigo los datos que intersedan entre las dos tablas.
-- Usuario con su posts y omite los posts que no tengan usuario y viceversa

 SELECT *
 FROM users
	LEFT JOIN posts ON users.id = posts.users_id
UNION
SELECT *
FROM users
	RIGHT JOIN posts ON users.id = posts.users_id;

-- UNION 👆🏼

SELECT *
FROM users
	LEFT JOIN posts ON users.id = posts.users_id
WHERE posts.users_id IS NULL
UNION
SELECT *
FROM users
	RIGHT JOIN posts ON users.id = posts.users_id
WHERE posts.users_id IS NULL;

-- DIFERENCIA 👆🏼
