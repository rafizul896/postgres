CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    userName VARCHAR(25) NOT NULL
);

-- ON DELETE CASCADE ,set NULL

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE set DEFAULT DEFAULT 2
);

ALTER TABLE post
    ALTER COLUMN user_id set NOT NULL

-----------------------------------------------------------

INSERT INTO "user" (username) VALUES 
    ('rafizul'),
    ('islam'),
    ('rafiz');

INSERT INTO post (title,user_id) VALUES
    ('islam ka post',2),
    ('rafizul ka post ',1),
    ('rafiz ka post',3);

SELECT * FROM "user";
SELECT * FROM post;

DROP TABLE post;
DROP TABLE "user";

DELETE FROM "user"
    WHERE id = 1;

INSERT INTO post VALUES(4,'Null ka post',NULL);
INSERT INTO "user" VALUES(4,'user')

-- Joining Tables with Inner Join

SELECT * FROM post 
    INNER JOIN "user" on post.user_id = "user".id;

-- Left and Right Joins

SELECT * FROM post 
    LEFT OUTER JOIN "user" on post.user_id = "user".id;

SELECT * FROM "user"
    RIGHT JOIN post on "user".id = post.user_id;

-- Full, Cross, and Natural Joins

SELECT * FROM post
    FULL OUTER JOIN "user" on post.user_id = "user".id;




