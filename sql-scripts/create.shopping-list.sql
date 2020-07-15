DROP TYPE IF EXISTS grocery;
CREATE TYPE grocery as ENUM (
    'Main',
    'Snack',
    'Lunch',
    'Breakfast'
);

CREATE TABLE IF NOT EXISTS shopping_list (
    item_id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    item_name TEXT NOT NULL,
    price decimal (10, 2) NOT NULL,
    date_added TIMESTAMP DEFAULT now() NOT NULL,
    checked BOOLEAN DEFAULT false NOT NULL,
    category grocery NOT NULL
);