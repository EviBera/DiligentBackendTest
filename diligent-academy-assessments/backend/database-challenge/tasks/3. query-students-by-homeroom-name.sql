UPDATE student SET homeroom_id = (SELECT homeroomId FROM homeroom WHERE name = '9A') WHERE name = 'John';
UPDATE student SET homeroom_id = (SELECT homeroomId FROM homeroom WHERE name = '9A') WHERE name = 'Adam';
UPDATE student SET homeroom_id = (SELECT homeroomId FROM homeroom WHERE name = '9B') WHERE name = 'Lucy';

-- Students in 9A room:
SELECT s.name
FROM student s
JOIN homeroom h ON s.homeroom_id = h.homeroomId
WHERE h.name = '9A';

-- Students in 9B room:
SELECT s.name
FROM student s
JOIN homeroom h ON s.homeroom_id = h.homeroomId
WHERE h.name = '9B';

-- Students with their room name:
SELECT s.name AS student_name, h.name AS homeroom_name
FROM student s
JOIN homeroom h ON s.homeroom_id = h.homeroomId;

