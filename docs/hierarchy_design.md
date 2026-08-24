# Hierarchy Design

## Adjacency List Model

The categories table uses an adjacency-list model.

Each category contains a `parent_id` that points to another row in the same table.

For example:

Electronics
├── Computers
│   └── Laptops
└── Phones

## Self-Referencing Foreign Key

The following constraint creates the relationship:

```sql
parent_id INTEGER REFERENCES categories(id)
