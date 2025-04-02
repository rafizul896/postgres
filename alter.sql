-- Active: 1743563607399@@127.0.0.1@5432@test1
SELECT * FROM person1;

ALTER TABLE person1
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

ALTER TABLE person1
    DROP COLUMN email;

ALTER TABLE person1
    RENAME COLUMN user_age to age;

ALTER TABLE person1 
    ALTER COLUMN user_name TYPE VARCHAR(50);

INSERT INTO person1 VALUES(5,'test1',99,'test@gmail.com');

ALTER TABLE person1
    ALTER COLUMN age set NOT NULL;

ALTER TABLE person1
    ALTER COLUMN age DROP NOT NULL;