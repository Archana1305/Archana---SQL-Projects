-- RETURNING BOOKS

UPDATE books_issue
SET return_on = CURDATE()
WHERE book_id = 'book_id' AND issued_to = 'reader_id';

UPDATE books
SET is_available = TRUE
WHERE book_id = 'book_id';

-- Calculate fine if applicable
UPDATE books_issue
SET current_fine = DATEDIFF(CURDATE(), scheduled_return) * (SELECT fine_per_day FROM settings)
WHERE book_id = 'book_id' AND issued_to = 'reader_id' AND CURDATE() > scheduled_return;

