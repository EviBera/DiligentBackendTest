CREATE TABLE homeroom (
  homeroomId SERIAL PRIMARY KEY,
  name VARCHAR(5) UNIQUE
);

INSERT INTO homeroom(name) VALUES ('9A');
INSERT INTO homeroom(name) VALUES ('9B');

CREATE INDEX idx_homeroom_name ON homeroom(name);


ALTER TABLE student
ADD COLUMN homeroom_id INTEGER,
ADD CONSTRAINT fk_homeroom
FOREIGN KEY (homeroom_id) REFERENCES homeroom(homeroomId);
