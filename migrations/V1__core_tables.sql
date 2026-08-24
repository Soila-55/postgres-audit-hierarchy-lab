-- V1__core_tables.sql
-- Core application tables

CREATE TABLE IF NOT EXISTS students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO students (name, email)
VALUES
('Kofi Mensah', 'kofi@example.com'),
('Ama Boateng', 'ama@example.com'),
('Yaw Asante', 'yaw@example.com')
ON CONFLICT (email) DO NOTHING;
