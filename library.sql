-- Library Management System

DROP DATABASE IF EXISTS library_db;
CREATE DATABASE library_db;
USE library_db;

-- Table: Authors
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50),
    birth_date DATE
);

-- Table: Categories
CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

-- Table: Books
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    isbn VARCHAR(13) NOT NULL UNIQUE,
    publication_year YEAR,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- Junction Table: Book_Authors
CREATE TABLE Book_Authors (
    book_id INT NOT NULL,
    author_id INT NOT NULL,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Table: Members
CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    join_date DATE DEFAULT (CURRENT_DATE)
);

-- Table: Loans
CREATE TABLE Loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT NOT NULL,
    member_id INT NOT NULL,
    loan_date DATE DEFAULT (CURRENT_DATE),
    due_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

-- Sample Data
INSERT INTO Categories (name) VALUES
('Fiction'), ('Non-Fiction'), ('Science'), ('History');

INSERT INTO Authors (name, nationality, birth_date) VALUES
('George Orwell', 'British', '1903-06-25'),
('J.K. Rowling', 'British', '1965-07-31');

INSERT INTO Books (title, isbn, publication_year, category_id) VALUES
('1984', '9783161484100', 1949, 1),
('Animal Farm', '9780452284234', 1945, 1);

INSERT INTO Book_Authors VALUES
(1, 1), (2, 1);

INSERT INTO Members (first_name, last_name, email) VALUES
('Alice', 'Johnson', 'alice@example.com'),
('Bob', 'Smith', 'bob@example.com');

INSERT INTO Loans (book_id, member_id, due_date) VALUES
(1, 1, '2023-12-01');
