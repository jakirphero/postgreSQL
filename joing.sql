create table user2 (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) not null
)

alter TABLE user2 ADD COLUMN email VARCHAR(25) NOT NULL;

INSERT INTO
    user2 (username, email)
VALUES ('jakir', 'jakir@gmail.com');

INSERT INTO
    user2 (username, email)
VALUES ('Bob', 'bob@example.com'),
    (
        'Charlie',
        'charlie@example.com'
    ),
    ('Diana', 'diana@example.com'),
    ('Ethan', 'ethan@example.com');

SELECT * FROM user2

create table post2 (
    id SERIAL PRIMARY KEY,
    title TEXT NOT null,
    user_id INTEGER REFERENCES user2 (id) on delete set DEFAULT DEFAULT 5
)

insert into
    post2 (title, user_id)
VALUES (
        'This is Alice’s first post!',
        2
    ),
    (
        'Bob is sharing his thoughts.',
        3
    ),
    (
        'Charlie wrote something cool today.',
        5
    ),
    (
        'Diana just posted an update.',
        4
    ),
    (
        'Ethan joined the discussion with this post.',
        5
    );

SELECT * FROM post2;

SELECT * FROM user2;

SELECT post2.id FROM post2
JOIN "user2" ON post2.user_id = "user2".id;
SELECT * FROM post2
JOIN "user2" ON post2.user_id = "user2".id;

-- how to left side table JOIN
INSERT INTO post2(id, title, user_id)
    VALUES (6, 'this is another post', NULL)

SELECT * FROM post2
LEFT JOIN "user2" ON post2.user_id = "user2".id;

-- how to right join
SELECT * FROM post2
RIGHT JOIN "user2" ON post2.user_id = user2.id