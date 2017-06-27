

CREATE TABLE todos(
  id SERIAL PRIMARY KEY,
  title  VARCHAR(255) NOT NULL,
  details  TEXT NULL,
  priority   INTEGER NOT NULL DEFAULT 1,
  created_at  TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('clean', 'kitchen',1,now(),'today');
INSERT INTO todos (title, details, priority, created_at) VALUES ('clean', 'bed room',2,now());
INSERT INTO todos (title, details, priority, created_at) VALUES ('clean', 'restroom',4,now());
INSERT INTO todos (title, details, priority, created_at) VALUES ('exercise', 'basketball',3,now());
INSERT INTO todos (title, details, priority, created_at) VALUES ('exercise', 'lift',2,now());

SELECT * FROM todos WHERE completed_at IS NULL;
SELECT * FROM todos WHERE priority > 1;
UPDATE todos SET completed_at = 'today' WHERE id = 3;
DELETE FROM todos WHERE completed_at IS NOT NULL;
