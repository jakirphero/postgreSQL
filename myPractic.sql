-- Active: 1747407712104@@127.0.0.1@5432@testpsql
CREATE TABLE person (
    person_id SERIAL,
    first_name VARCHAR(30) NOT null,
    last_name VARCHAR(30) NOT null,
    age INT,
    PRIMARY KEY (person_id)
);

ALTER TABLE person ADD COLUMN contact VARCHAR(50);

INSERT INTO
    person (
        first_name,
        last_name,
        age,
        contact
    )
VALUES ('lol', 'm', 33, '01829034871'),
    (
        'mor',
        'la',
        29,
        '01854645726'
    ),
    ('kak', 'p', 20, '01874927648'),
    (
        'plo',
        'lmal',
        27,
        '0173483743'
    ),
    (
        'bolo',
        'con',
        55,
        '0189003827937'
    ),
    (
        'norbo',
        'cplo',
        60,
        '0188354725'
    );

DELETE FROM person WHERE person_id = 5;

SELECT * FROM person;

CREATE TABLE orders (
    order_id SERIAL,
    price DECIMAL(6, 2),
    person_id INTEGER,
    PRIMARY KEY (order_id),
    Foreign Key (person_id) REFERENCES person (person_id)
);

DROP TABLE orders;

INSERT INTO
    orders (price, person_id)
VALUES
VALUES (556, 10),
    (457, 8)

SELECT * FROM orders;

SELECT *
FROM orders
    JOIN person on orders.person_id = person.person_id

SELECT orders.order_id, person.first_name
FROM orders
    INNER JOIN person ON orders.person_id = person.person_id;

DELETE FROM orders WHERE order_id = 3;

SELECT * FROM orders;

SELECT *
FROM orders
    right JOIN "person" ON orders.person_id = person.person_id;

SELECT *
FROM orders
    full JOIN "person" ON orders.person_id = person.person_id;

SELECT *
FROM orders
    LEFT JOIN person ON orders.person_id = person.person_id;

-------------- how to use GROUP BY, join, order by----------
SELECT
    first_name,
    count('orders_id') as total_order,
    sum(price) as total_price
FROM orders
    INNER JOIN person ON orders.person_id = person.person_id
GROUP BY
    first_name
ORDER BY total_price DESC;

SELECT count(person_id) FROM person;