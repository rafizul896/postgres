
CREATE TABLE students(
    student_id SERIAL PRIMARY KEY UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT ,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(30),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
('John', 'Doe', 20, 'A', 'Computer Science', 'john.doe@example.com', '2004-05-15', 'O+', 'USA'),
('Jane', 'Smith', 22, 'B', 'Mathematics', 'jane.smith@example.com', '2002-08-25', 'A+', 'UK'),
('Alice', 'Brown', 21, 'C', 'Physics', 'alice.brown@example.com', '2003-03-10', 'B+', 'Canada'),
('Bob', 'Johnson', 23, 'A', 'Engineering', 'bob.johnson@example.com', '2001-12-05', 'AB-', 'Australia'),
('Charlie', 'Davis', 20, 'B', 'Biology', 'charlie.davis@example.com', '2004-07-19', 'O-', 'Germany'),
('David', 'Miller', 24, 'C', 'Chemistry', 'david.miller@example.com', '2000-06-30', 'A-', 'France'),
('Emily', 'Wilson', 19, 'A', 'Medicine', 'emily.wilson@example.com', '2005-09-15', 'B-', 'India'),
('Frank', 'Taylor', 22, 'B', 'History', 'frank.taylor@example.com', '2002-04-12', 'AB+', 'Japan'),
('Grace', 'Moore', 21, 'C', 'Philosophy', 'grace.moore@example.com', '2003-11-25', 'O+', 'China'),
('Hannah', 'Anderson', 23, 'A', 'Psychology', 'hannah.anderson@example.com', '2001-10-18', 'A+', 'Brazil'),
('Ian', 'Thomas', 20, 'B', 'Political Science', 'ian.thomas@example.com', '2004-01-05', 'B+', 'Russia'),
('Jack', 'Harris', 22, 'C', 'Economics', 'jack.harris@example.com', '2002-07-22', 'O-', 'Italy'),
('Kelly', 'Martin', 21, 'A', 'Statistics', 'kelly.martin@example.com', '2003-05-11', 'A-', 'South Africa'),
('Liam', 'White', 24, 'B', 'Environmental Science', 'liam.white@example.com', '2000-08-08', 'B-', 'Mexico'),
('Mia', 'Hall', 19, 'C', 'Geography', 'mia.hall@example.com', '2005-02-19', 'AB-', 'Argentina'),
('Noah', 'Allen', 23, 'A', 'Law', 'noah.allen@example.com', '2001-09-14', 'AB+', 'Netherlands'),
('Olivia', 'Young', 20, 'B', 'Nursing', 'olivia.young@example.com', '2004-06-20', 'O+', 'Sweden'),
('Paul', 'Scott', 22, 'C', 'Art', 'paul.scott@example.com', '2002-03-30', 'A+', 'Norway'),
('Quinn', 'Adams', 21, 'A', 'Music', 'quinn.adams@example.com', '2003-11-07', 'B+', 'Switzerland'),
('Ryan', 'Nelson', 23, 'B', 'Linguistics', 'ryan.nelson@example.com', '2001-12-28', 'O-', 'Ireland'),
('Sophia', 'Carter', 20, 'C', 'Education', 'sophia.carter@example.com', '2004-05-17', 'A-', 'Denmark'),
('Tyler', 'Mitchell', 24, 'A', 'Anthropology', 'tyler.mitchell@example.com', '2000-10-25', 'B-', 'Belgium'),
('Uma', 'Perez', 19, 'B', 'Astronomy', 'uma.perez@example.com', '2005-07-29', 'AB-', 'Austria'),
('Victor', 'Roberts', 22, 'C', 'Business', 'victor.roberts@example.com', '2002-06-13', 'AB+', 'Portugal'),
('Willow', 'Turner', 21, 'A', 'Marketing', 'willow.turner@example.com', '2003-09-21', 'O+', 'Greece'),
('Xander', 'Phillips', 23, 'B', 'Finance', 'xander.phillips@example.com', '2001-04-16', 'A+', 'Poland'),
('Yvonne', 'Campbell', 20, 'C', 'Sociology', 'yvonne.campbell@example.com', '2004-02-05', 'B+', 'Finland'),
('Zane', 'Evans', 24, 'A', 'Journalism', 'zane.evans@example.com', '2000-05-20', 'O-', 'Czech Republic');


SELECT * FROM students;

SELECT email as "Student Email", age FROM students;

SELECT * FROM students ORDER BY age DESC;
