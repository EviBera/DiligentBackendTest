CREATE TABLE subject (
  subjectID SERIAL PRIMARY KEY,
  name VARCHAR(20)
);

INSERT INTO subject(name) VALUES ('Algebra');
INSERT INTO subject(name) VALUES ('Biology');
INSERT INTO subject(name) VALUES ('World History');

-- To handle many-to-many relationships a junction table is needed:
CREATE TABLE student_subject (
  student_id INTEGER,
  subject_id INTEGER,
  grade INTEGER,
  PRIMARY KEY (student_id, subject_id),
  FOREIGN KEY (student_id) REFERENCES student(studentId),
  FOREIGN KEY (subject_id) REFERENCES subject(subjectId)
);