USE platziblog;

CREATE TABLE categories(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    category VARCHAR(30) NOT NULL
);

CREATE TABLE tags(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    tag_name VARCHAR(30) NOT NULL
);

CREATE TABLE users(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    login VARCHAR(30) NOT NULL,
    password VARCHAR(32) NOT NULL,
    nickname VARCHAR(40) NOT NULL,
    email VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE post(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    post_date  TIMESTAMP NOT NULL,
    content TEXT,
    status CHAR(8) DEFAULT 'active',
    users_id INTEGER NOT NULL,
    categories_id INTEGER NOT NULL,
    FOREIGN KEY (users_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (categories_id) REFERENCES categories(id) ON UPDATE CASCADE
);

CREATE TABLE comments(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    comment TEXT NOT NULL,
    user_id INTEGER NOT NULL,
	post_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (post_id) REFERENCES post(id) ON UPDATE CASCADE
);

CREATE TABLE posts_tags(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    post_id INTEGER NOT NULL,
    tag_id INTEGER NOT NULL,
    FOREIGN KEY (post_id) REFERENCES post(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (tag_id) REFERENCES tags(id) ON DELETE CASCADE ON UPDATE CASCADE
);