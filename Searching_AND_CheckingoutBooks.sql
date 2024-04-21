-- SEARCHING FOR BOOKS

SELECT *
FROM books
WHERE book_name LIKE '%Learning%';  -- Replace 'Learning' with the search term

SELECT books.book_id, books.book_name, author.first_name, author.last_name
FROM books
JOIN author ON books.author_id = author.author_id
WHERE author.first_name LIKE '%Alice%' OR author.last_name LIKE '%Johnson%';  -- Replace 'Alice' and 'Johnson' with the search terms

SELECT books.book_id, books.book_name, publisher.publisher
FROM books
JOIN publisher ON books.publisher_id = publisher.publisher_id
WHERE publisher.publisher LIKE '%Pearson%';  -- Replace 'Pearson' with the search term

-- CHECKING OUT BOOKS

-- Start transaction
START TRANSACTION;

-- Check if the book is available
SELECT is_available FROM books WHERE book_id = 'book001';  -- Replace 'book001' with the actual book ID

-- If the book is available, update its availability
UPDATE books
SET is_available = FALSE
WHERE book_id = 'book001' AND is_available = TRUE;

-- Insert a new record into books_issue if the book was successfully updated to not available
INSERT INTO books_issue (book_id, issued_to, issued_on, return_on, scheduled_return)
SELECT 'book001', 'reader001', CURDATE(), NULL, DATE_ADD(CURDATE(), INTERVAL 14 DAY)
FROM DUAL
WHERE EXISTS (
    SELECT book_id FROM books WHERE book_id = 'book001' AND is_available = FALSE
);

-- Commit the transaction
COMMIT;

