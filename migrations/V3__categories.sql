-- V3__categories.sql

CREATE TABLE IF NOT EXISTS categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    parent_id INTEGER REFERENCES categories(id)
);

INSERT INTO categories (name, parent_id)
VALUES ('Electronics', NULL)
ON CONFLICT DO NOTHING;

INSERT INTO categories (name, parent_id)
VALUES
    ('Computers', 1),
    ('Phones', 1),
    ('Laptops', 2)
ON CONFLICT DO NOTHING;
