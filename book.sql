create table publishers(
    publisher_id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    contact_email VARCHAR(20) UNIQUE
);

INSERT INTO publishers(name, contact_email)
VALUES
('jakir', 'jakir@gmail.com'),
('abdur', 'ab@gmail.com'),
('abdul', 'bd@gmail.com'),
('kakrul', 'km@gmail.com'),
('jk', 'jk@gmail.com')

SELECT * FROM publishers;

-- author table here
create Table authors(
    author_id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    bio TEXT
);

INSERT INTO authors(name, bio)
VALUES
('J.K. Rowling', 'British author, best known for the Harry Potter series.'),
('George Orwell', 'English novelist and journalist, author of 1984 and Animal Farm.'),
('Jane Austen', 'Famous for romantic fiction like Pride and Prejudice.'),
('Mark Twain', 'American writer, known for The Adventures of Tom Sawyer.'),
('Rabindranath Tagore', 'Bengali poet, writer, composer, Nobel laureate.');

SELECT * FROM authors;

-- book table here
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author_id INTEGER REFERENCES authors(author_id),
    publisher_id INTEGER REFERENCES publishers(publisher_id),
    price DECIMAL(8, 2),
    stock INTEGER,
    published_date DATE
);
DROP TABLE books;
INSERT INTO books(title, author_id, publisher_id, price, stock, published_date)
VALUES
('hello this is my book', 2, 1, 11.22, 100, '2000-01-01'),
('1984', 2, 2, 14.99, 80, '1949-06-08'),
('Pride and Prejudice', 3, 3, 12.50, 120, '1813-01-28'),
('The Adventures of Tom Sawyer', 4, 4, 10.99, 70, '1876-06-01'),
('Gitanjali', 5, 5, 9.99, 50, '1910-08-01');

SELECT * FROM books;

-- grouping author and title 
SELECT author_id, count(author_id), sum(price) as total_price
FROM books
JOIN authors USING(author_id)
GROUP BY author_id
HAVING count(author_id) > 2;

SELECT extract(MONTH FROM books.published_date)as month, sum(publisher_id) FROM books GROUP BY month