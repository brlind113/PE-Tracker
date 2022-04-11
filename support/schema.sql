CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email text NOT NULL,
  password text NOT NULL
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  school INT NOT NULL,
  expires DATE NOT NULL
);

CREATE TABLE schools (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  address TEXT NOT NULL
);

CREATE TABLE observations (
  id SERIAL PRIMARY KEY,
  users_id INT NOT NULL,
  students_id INT NOT NULL,
  tasks_id INT NOT NULL,
  duration INTERVAL NOT NULL
);

CREATE TABLE tasks (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

INSERT INTO tasks (name) VALUES
('Begin Class');
INSERT INTO tasks (name) VALUES
('End Class');
INSERT INTO tasks (name) VALUES
('Planned Presentation');
INSERT INTO tasks (name) VALUES
('Response Presentation');
INSERT INTO tasks (name) VALUES
('Monitoring');
INSERT INTO tasks (name) VALUES
('Performance Feedback');
INSERT INTO tasks (name) VALUES
('Motivational Feedback');
INSERT INTO tasks (name) VALUES
('Equipment Management');
INSERT INTO tasks (name) VALUES
('Organization');
INSERT INTO tasks (name) VALUES
('Behavior Management');
INSERT INTO tasks (name) VALUES
('Other Tasks');

DELETE FROM tasks
WHERE id = 1;