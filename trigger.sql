
/*
A trigger is a database object in PostgreSQL (and other database management systems) that automatically executes a specified set of actions in response to certain database events or conditions. 
*/

-- Table-Level Events:
    -- INSERT, UPDATE, DELETE, TRUNCATE
-- Database-Level Events
    -- Database Startup, Database Shutdown, Connection start and end etc

-- CREATE TRIGGER trigger_name
-- {BEFORE | AFTER | INSTEAD OF} {INSERT | UPDATE | DELETE | TRUNCATE}
-- ON table_name
-- [FOR EACH ROW] 
-- EXECUTE FUNCTION function_name();

CREATE TABLE my_users (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(30),
    email VARCHAR(30)
);

CREATE TABLE delete_user_info(
    delete_user_name VARCHAR(30),
    deletedAt TIMESTAMP
)

INSERT INTO my_users (user_name, email) 
VALUES
('JohnDoe', 'john.doe@example.com'),
('JaneSmith', 'jane.smith@example.com'),
('AlexBrown', 'alex.brown@example.com'),
('EmilyClark', 'emily.clark@example.com'),
('MichaelLee', 'michael.lee@example.com'),
('SarahDavis', 'sarah.davis@example.com'),
('DavidMiller', 'david.miller@example.com'),
('LauraWilson', 'laura.wilson@example.com'),
('ChrisTaylor', 'chris.taylor@example.com'),
('EmmaJohnson', 'emma.johnson@example.com'),
('DanielThomas', 'daniel.thomas@example.com'),
('SophiaWhite', 'sophia.white@example.com'),
('JamesHarris', 'james.harris@example.com'),
('IsabellaMartin', 'isabella.martin@example.com'),
('BenjaminLopez', 'benjamin.lopez@example.com'),
('MiaWalker', 'mia.walker@example.com'),
('LoganHall', 'logan.hall@example.com'),
('GraceYoung', 'grace.young@example.com'),
('ElijahAllen', 'elijah.allen@example.com'),
('ChloeKing', 'chloe.king@example.com');

-- TRIGGER Function
CREATE OR REPLACE FUNCTION save_deleted_user()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
    BEGIN
       INSERT INTO delete_user_info VALUES(OLD.user_name,now());

       RAISE NOTICE 'Deleted user info is saved!';
       RETURN OLD;
    END
$$;


CREATE OR REPLACE TRIGGER save_deleted_user_trigger
BEFORE DELETE
ON my_users
FOR EACH ROW
EXECUTE FUNCTION save_deleted_user();

SELECT * FROM my_users;
SELECT * FROM delete_user_info;

DELETE FROM my_users WHERE id = 18


