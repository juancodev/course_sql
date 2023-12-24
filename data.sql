use platziblog;

SELECT * FROM platziblog.users;

INSERT INTO platziblog.users(login, password, nickname, email)
VALUES ('Juan', 'jmontilla123', 'juancodev', 'juancodev@gmail.com'),
		('Cynthia', 'pepeto23]+.', 'ccreicas', 'ccreicas@gmail.com'),
        ('Vicente', 'vicentexd', 'vicenteamontilla', 'vicenteamontilla@gmail.com');
        
SELECT * FROM platziblog.post;