INSERT INTO student_subject (student_id, subject_id, grade) 
VALUES 
((SELECT studentId FROM student WHERE name = 'John'), (SELECT subjectId FROM subject WHERE name = 'Algebra'), 3),
((SELECT studentId FROM student WHERE name = 'John'), (SELECT subjectId FROM subject WHERE name = 'Biology'), 2),
((SELECT studentId FROM student WHERE name = 'John'), (SELECT subjectId FROM subject WHERE name = 'World History'), 5),
((SELECT studentId FROM student WHERE name = 'Adam'), (SELECT subjectId FROM subject WHERE name = 'Algebra'), 4),
((SELECT studentId FROM student WHERE name = 'Adam'), (SELECT subjectId FROM subject WHERE name = 'Biology'), 3),
((SELECT studentId FROM student WHERE name = 'Adam'), (SELECT subjectId FROM subject WHERE name = 'World History'), 2),
((SELECT studentId FROM student WHERE name = 'Lucy'), (SELECT subjectId FROM subject WHERE name = 'Algebra'), 5),
((SELECT studentId FROM student WHERE name = 'Lucy'), (SELECT subjectId FROM subject WHERE name = 'Biology'), 4),
((SELECT studentId FROM student WHERE name = 'Lucy'), (SELECT subjectId FROM subject WHERE name = 'World History'), 3);

SELECT sub.name AS subject_name, AVG(ss.grade) AS average_grade
FROM student_subject ss
JOIN subject sub ON ss.subject_id = sub.subjectId
WHERE sub.name = 'World History'
GROUP BY sub.name;