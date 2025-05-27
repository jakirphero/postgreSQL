-- CREATE Table "user" (
--     id SERIAL PRIMARY KEY,
--     userName VARCHAR(25) not null
-- )

-- create TABLE post (
--     id SERIAL PRIMARY KEY,
--     title TEXT not null,
--     user_id INTEGER REFERENCES "user" (id) on delete CASCADE --delete my foreign key post
-- )

-- alter TABLE "user" ADD COLUMN email VARCHAR(25) NOT NULL;

-- SELECT * FROM "user"

-- INSERT INTO
--     "user" (username)
-- VALUES ('Alice', 'alice@example.com'),
--     ('Bob', 'bob@example.com'),
--     (
--         'Charlie',
--         'charlie@example.com'
--     ),
--     ('Diana', 'diana@example.com'),
--     ('Ethan', 'ethan@example.com');

-- SELECT * FROM "user"

-- INSERT INTO
--     post (title, user_id)
-- VALUES (
--         'This is Alice’s first post!',
--         2
--     ),
--     (
--         'Bob is sharing his thoughts.',
--         3
--     ),
--     (
--         'Charlie wrote something cool today.',
--         5
--     ),
--     (
--         'Diana just posted an update.',
--         4
--     ),
--     (
--         'Ethan joined the discussion with this post.',
--         5
--     );

-- -- SELECT * FROM post
-- DROP TABLE post;

-- DROP TABLE "user";
-- -- if i went delete 4 user delete but not delete whey REFERENCES key
-- -- if i went to delete this first delelte my post
-- SELECT * FROM post DELETE id = 4;

-- SELECT * FROM "user"

create table "user1" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) not null
)

alter TABLE "user1" ADD COLUMN email VARCHAR(25) NOT NULL;

INSERT INTO
    user1 (username, email)
VALUES ('jakir', 'jakir@gmail.com');

INSERT INTO
    user1 (username, email)
VALUES ('Bob', 'bob@example.com'),
    (
        'Charlie',
        'charlie@example.com'
    ),
    ('Diana', 'diana@example.com'),
    ('Ethan', 'ethan@example.com');

SELECT * FROM user1

create table post1 (
    id SERIAL PRIMARY KEY,
    title TEXT NOT null,
    user_id INTEGER REFERENCES user1 (id) on delete set DEFAULT DEFAULT 5
)

insert into
    post1 (title, user_id)
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

SELECT * FROM post1

DROP TABLE user1;
DROP TABLE post1;
delete from user1
    where id = 4;