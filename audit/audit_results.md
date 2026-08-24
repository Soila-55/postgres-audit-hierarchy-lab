# Audit Log Results

## Test Operations

Two operations were performed on the students table:

1. Updated student ID 1 from `Kofi Mensah` to `Kofi M.`
2. Deleted student ID 3, `Yaw Asante`

## Audit Query

```sql
SELECT
    tbl,
    op,
    old_row->>'name' AS was,
    new_row->>'name' AS now,
    username,
    at
FROM audit_log
ORDER BY at DESC;
