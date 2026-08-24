-- Update a student's name
UPDATE students
SET name = 'Kofi M.'
WHERE id = 1;

-- Delete a student
DELETE FROM students
WHERE id = 3;

-- Display the audit trail
SELECT
    tbl,
    op,
    old_row->>'name' AS was,
    new_row->>'name' AS now,
    username,
    at
FROM audit_log
ORDER BY at DESC;
