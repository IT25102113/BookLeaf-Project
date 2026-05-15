-- ============================================================
-- BookLeaf - Online Bookstore Management System
-- Database: bookleaf_db
-- Run this script in MySQL Workbench or phpMyAdmin
-- ============================================================

CREATE DATABASE IF NOT EXISTS BOOKLEAFPROJECT_db;
USE BOOKLEAFPROJECT_db;

-- Note: Tables are auto-created by JPA/Hibernate (ddl-auto=update)
-- This script adds sample data for testing purposes.

-- ============================================================
-- IMPORTANT: If upgrading from previous version, run these first:
-- ALTER TABLE users ADD COLUMN approved BOOLEAN NOT NULL DEFAULT TRUE;
-- ALTER TABLE users MODIFY COLUMN role ENUM('ADMIN', 'CUSTOMER', 'AUTHOR');
-- ALTER TABLE orders MODIFY COLUMN order_status ENUM('PENDING', 'CONFIRMED', 'PROCESSING', 'READY_FOR_SHIPPING', 'SHIPPED', 'OUT_FOR_DELIVERY', 'DELIVERED', 'EMAIL_SENT', 'CANCELLED');
-- ============================================================

-- ============================================================
-- SAMPLE AUTHORS
-- ============================================================
INSERT INTO authors (name, bio) VALUES
('J.K. Rowling', 'British author, best known for the Harry Potter series.'),
('George Orwell', 'English novelist, essayist, and critic known for 1984 and Animal Farm.'),
('Harper Lee', 'American novelist widely known for To Kill a Mockingbird.'),
('F. Scott Fitzgerald', 'American novelist known for The Great Gatsby.'),
('Paulo Coelho', 'Brazilian lyricist and novelist, best known for The Alchemist.'),
('Yuval Noah Harari', 'Israeli historian and professor, author of Sapiens.');

-- ============================================================
-- SAMPLE BOOKS
-- ============================================================
INSERT INTO books (title, isbn, category, description, price, quantity, has_ebook, author_id, image_url) VALUES
('Harry Potter and the Philosopher''s Stone', '978-0747532699', 'Fantasy', 'Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive.', 24.99, 50, true, 1, 'https://covers.openlibrary.org/b/id/10110415-L.jpg'),
('Harry Potter and the Chamber of Secrets', '978-0747538486', 'Fantasy', 'The Dursleys were so mean and hideous that summer that all Harry Potter wanted was to get back to the Hogwarts School.', 24.99, 40, true, 1, 'https://covers.openlibrary.org/b/id/10392833-L.jpg'),
('1984', '978-0451524935', 'Dystopian', 'Among the seminal texts of the 20th century, Nineteen Eighty-Four is a rare work that grows more haunting as its futuristic purgatory becomes more real.', 14.99, 75, true, 2, 'https://covers.openlibrary.org/b/id/12648891-L.jpg'),
('Animal Farm', '978-0451526342', 'Satire', 'A farm is taken over by its overworked, mistreated animals. With flaming idealism and stirring slogans, they set out to create a paradise of progress.', 11.99, 60, true, 2, 'https://covers.openlibrary.org/b/id/11429219-L.jpg'),
('To Kill a Mockingbird', '978-0060935467', 'Classic', 'The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it.', 18.99, 35, false, 3, 'https://covers.openlibrary.org/b/id/8228691-L.jpg'),
('The Great Gatsby', '978-0743273565', 'Classic', 'The story of the mysteriously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan.', 15.99, 45, true, 4, 'https://covers.openlibrary.org/b/id/8225261-L.jpg'),
('The Alchemist', '978-0062315007', 'Fiction', 'A magical fable about following your dream, by Paulo Coelho.', 16.99, 55, true, 5, 'https://covers.openlibrary.org/b/id/7994988-L.jpg'),
('Sapiens: A Brief History of Humankind', '978-0062316097', 'Non-Fiction', '100,000 years ago, at least six human species inhabited the earth. Today there is just one. Us. Homo sapiens.', 22.99, 30, true, 6, 'https://covers.openlibrary.org/b/id/8406786-L.jpg');

-- ============================================================
-- SAMPLE CUSTOMER (password: "password123" hashed with BCrypt)
-- ============================================================
INSERT INTO users (full_name, email, password, phone, role, approved) VALUES
('John Doe', 'john@example.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', '+94 771234567', 'CUSTOMER', true);

-- ============================================================
-- SAMPLE DISCOUNTS
-- ============================================================
INSERT INTO discounts (name, description, discount_type, percentage, start_date, end_date, price_cap, active) VALUES
('Summer Sale 2026', 'Special summer discount on all books!', 'SEASONAL', 15.0, '2026-06-01', '2026-08-31', NULL, true),
('Welcome Bonus', 'Special discount for new members - 10% off your first month!', 'NEW_USER_BONUS', 10.0, NULL, NULL, NULL, true),
('Big Spender Reward', 'Get 20% off when your cart exceeds $100!', 'PRICE_CAP', 20.0, NULL, NULL, 100.00, true);
