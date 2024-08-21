CREATE TABLE student (
  studentId SERIAL PRIMARY KEY,
  name VARCHAR(20),
  email VARCHAR(30)
);

INSERT INTO student(name, email) VALUES ('John', 'john@school.com');
INSERT INTO student(name, email) VALUES ('Adam', 'adam@school.com');
INSERT INTO student(name, email) VALUES ('Lucy', 'lucy@school.com');
