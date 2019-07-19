DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;

CREATE TABLE user (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      username TEXT UNIQUE NOT NULL,
      password TEXT NOT NULL
);

CREATE TABLE post (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      author_id INTEGER NOT NULL,
      created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
      title TEXT NOT NULL,
      body TEXT NOT NULL,
      FOREIGN KEY (author_id) REFERENCES user (id)
);

CREATE TABLE post_comment (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      post_id INTEGER INTEGER NOT NULL,
      author_id INTEGER NULL,
      author_name TEXT NOT NULL,
      created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
      body TEXT NOT NULL,
      FOREIGN KEY (post_id) REFERENCES post (id)
);
