USE timstampdb;

INSERT INTO users (
   user_email
) VALUES ("hans@email.com"),("susi@amail.de"), ("fred@anothermail.com");

INSERT INTO sessions (
  session_user
) VALUES (1), (2);

UPDATE sessions
SET logout_time = CURRENT_TIMESTAMP
WHERE session_id = 1;

UPDATE sessions
SET logout_time = CURRENT_TIMESTAMP
WHERE session_id = 2;
