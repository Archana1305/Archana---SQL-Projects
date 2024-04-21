INSERT INTO user_login (user_id, user_password, first_name, last_name, sign_up_on, email_id) VALUES
('user001', 'pass1234', 'John', 'Doe', '2023-01-01', 'john.doe@example.com'),
('user002', 'pass5678', 'Jane', 'Smith', '2023-02-10', 'jane.smith@example.com');

INSERT INTO publisher (publisher_id, publisher, distributor, releases_count, last_release) VALUES
('pub001', 'Pearson', 'Global Distributors', 120, '2023-04-15'),
('pub002', 'HarperCollins', 'BookWorld', 95, '2023-04-10');

INSERT INTO author (author_id, first_name, last_name, publications_count) VALUES
('auth001', 'Alice', 'Johnson', 10),
('auth002', 'Bob', 'Brown', 15);

INSERT INTO books (book_id, book_code, book_name, author_id, publisher_id, book_version, release_date, available_from, is_available) VALUES
('book001', 'BK100', 'Learning SQL', 'auth001', 'pub001', '1.2', '2022-05-01', '2022-05-10', TRUE),
('book002', 'BK101', 'Advanced Java', 'auth002', 'pub002', '3.4', '2022-06-15', '2022-07-01', TRUE);

INSERT INTO staff (staff_id, first_name, last_name, staff_role, start_date, last_date, is_active, work_shift_start, work_shift_end) VALUES
('staff001', 'Mike', 'Ross', 'Librarian', '2020-01-01', NULL, TRUE, '08:00:00', '16:00:00'),
('staff002', 'Rachel', 'Green', 'Assistant', '2020-05-15', NULL, TRUE, '12:00:00', '20:00:00');


INSERT INTO readers (reader_id, first_name, last_name, registered_on, books_issued_total, books_issued_current, is_issued, last_issue_date, total_fine, current_fine) VALUES
('reader001', 'George', 'Lucas', '2022-07-01', 5, 2, TRUE, '2023-04-10', 10.00, 2.00),
('reader002', 'Linda', 'Carter', '2022-08-15', 3, 1, TRUE, '2023-04-12', 0.00, 0.00);

INSERT INTO books_issue (book_id, issued_to, issued_on, return_on, current_fine, fine_paid, payment_transaction_id) VALUES
('book001', 'reader001', '2023-04-01', '2023-04-15', 1.50, FALSE, NULL),
('book002', 'reader002', '2023-04-05', '2023-04-20', 0.00, TRUE, 'tx1001');

INSERT INTO settings (book_issue_count_per_reader, fine_per_day, book_return_in_days) VALUES
(5, 0.50, 14);


