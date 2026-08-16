CREATE TABLE Department1 (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

INSERT INTO Department1 (department_id, department_name)
VALUES
(1, 'School of computer science and engineer'),
(2, 'School of business'),
(3, 'School of liberal arts and education'),
(4, 'School of design');
SELECT * FROM Department;

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    student_gender VARCHAR(10),
    student_mail_id VARCHAR(150) UNIQUE,
    department_id INT
);

INSERT INTO Student (student_id, student_name, student_gender, student_mail_id, department_id)
VALUES
(1, 'Neethu', 'Female', 'neethu@gmail.com', 2),
(13, 'Rithu', 'Female', 'ruthu@gmail.com', 1),
(10, 'Rithu', 'Female', 'rithu@gmail.com', 1),
(55, 'Arjun', 'Male', 'arjun@gmail.com', 2),
(34, 'Rekha', 'Female', 'rekha@gmail.com', 3),
(62, 'Bhuvi', 'Female', 'bhuvi@gmail.com', 1),
(28, 'Rahul', 'Male', 'rahul@gmail.com', 4),
(91, 'Karthik', 'Male', 'karthik@gmail.com', 1),
(67, 'Mrudula', 'Female', 'mrudula@gmail.com', 2),
(43, 'Vaishnavi', 'Female', 'vaishnavi@gmail.com', 1),
(101, 'Aditya', 'Male', 'aditya@gmail.com', 3),
(92, 'Rohan', 'Male', 'rohan@gmail.com', 2),
(48, 'Vivek', 'Male', 'vivek@gmail.com', 4),
(90, 'Harshitha', 'Female', 'harshitha@gmail.com', 3);
SELECT * FROM Student;

CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY,
    faculty_name VARCHAR(100) NOT NULL,
    faculty_gender VARCHAR(10),
    faculty_mail_id VARCHAR(150) UNIQUE,
    department_id INT
);

INSERT INTO Faculty (faculty_id, faculty_name, faculty_gender, faculty_mail_id, department_id)
VALUES
(201, 'Anil Kumar', 'Male', 'anil@gmail.com', 1),
(202, 'Priya Sharma', 'Female', 'priya@gmail.com', 2),
(203, 'Meena Rao', 'Female', 'meena@gmail.com', 3),
(204, 'Rahul Kumar', 'Male', 'rahul.faculty@gmail.com', 4);
SELECT * FROM Faculty;

UPDATE Student
SET student_name = 'Neethu R'
WHERE student_id = 1;
SELECT * FROM Student;

DELETE FROM Student
WHERE student_id = 90;
SELECT * FROM Student;
