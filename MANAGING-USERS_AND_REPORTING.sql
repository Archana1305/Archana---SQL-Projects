-- MANAGING USERS AND STAFF

UPDATE user_login
SET email_id = 'new_email@example.com'
WHERE user_id = 'user_id';

UPDATE staff
SET is_active = FALSE
WHERE staff_id = 'staff_id';


-- REPORTING

SELECT book_id, COUNT(issue_id) AS total_issues
FROM books_issue
GROUP BY book_id
ORDER BY total_issues DESC
LIMIT 10;

-- SYSTEM SETTING FOR FINE

SELECT fine_per_day, book_return_in_days
FROM settings;

UPDATE settings
SET fine_per_day = 1.00,  -- Update to the new daily fine rate
    book_return_in_days = 21  -- Update to the new return period
WHERE 1=1;  -- Ensures the update applies even in safe mode, and is safe if there's only one row

ALTER TABLE settings ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY;
