WITH RECURSIVE category_tree AS (

    -- Root categories
    SELECT
        id,
        name,
        parent_id,
        0 AS level,
        name::TEXT AS path
    FROM categories
    WHERE parent_id IS NULL

    UNION ALL

    -- Child categories
    SELECT
        c.id,
        c.name,
        c.parent_id,
        ct.level + 1,
        ct.path || ' > ' || c.name
    FROM categories c
    INNER JOIN category_tree ct
        ON c.parent_id = ct.id
)

SELECT
    id,
    REPEAT('  ', level) || name AS category,
    parent_id,
    level,
    path
FROM category_tree
ORDER BY path;
