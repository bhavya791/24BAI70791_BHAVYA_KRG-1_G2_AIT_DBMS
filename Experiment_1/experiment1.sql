SELECT CURRENT_USER;

CREATE TABLE Books (
    Book_id INT PRIMARY KEY,
    Book_name VARCHAR(50) NOT NULL,
    author VARCHAR(50),
    available_copies INT CHECK (available_copies >= 0)
);

CREATE TABLE members (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE
);

CREATE TABLE issue_records (
    issue_id INT PRIMARY KEY,
    book_id INT REFERENCES books(book_id),
    member_id INT REFERENCES members(member_id),
    issue_date DATE NOT NULL
);

INSERT INTO books VALUES (1, 'DBMS', 'Korth', 5);
INSERT INTO books VALUES (2, 'Operating Systems', 'Silberschatz', 3);

INSERT INTO members VALUES (101, 'Bhavya', 'bhavya@gmail.com');
INSERT INTO members VALUES (102, 'Akash', 'akash@gmail.com');

INSERT INTO issue_records VALUES (1001, 1, 101, '2025-01-15');
INSERT INTO issue_records VALUES (1002, 2, 102, '2025-06-15');

SELECT book_name
FROM books
WHERE book_id = 1;

UPDATE books
SET available_copies = 4
WHERE book_id = 1;

DELETE FROM issue_records
WHERE issue_id = 1001;

SELECT * FROM books;
SELECT * FROM members;
SELECT * FROM issue_records;

CREATE ROLE librarian2 WITH LOGIN PASSWORD 'lib123';

GRANT SELECT, INSERT, DELETE ON books TO librarian2;
GRANT SELECT, INSERT, DELETE ON members TO librarian2;
GRANT SELECT, INSERT, DELETE ON issue_records TO librarian2;

REVOKE DELETE ON books FROM librarian2;
