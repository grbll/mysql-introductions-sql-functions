USE timestampdb;

INSERT INTO users (
   user_email
) VALUES ("hans@email.com"),("susi@amail.de"), ("fred@anothermail.com");

INSERT INTO sessions (
  session_user
) VALUES (1), (2);

SELECT SLEEP(2);

UPDATE sessions
SET logout_time = CURRENT_TIMESTAMP
WHERE session_id = 1;

SELECT SLEEP(2);

UPDATE sessions
SET logout_time = CURRENT_TIMESTAMP
WHERE session_id = 2;

INSERT INTO sessions (
  session_user
) VALUES (1) ;

SELECT SLEEP(2);

UPDATE sessions
SET logout_time = CURRENT_TIMESTAMP
WHERE session_id = 3;
