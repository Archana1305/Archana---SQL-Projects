CREATE TABLE IF NOT EXISTS user_login (
    user_id VARCHAR(255) PRIMARY KEY,  -- Changed from TEXT to VARCHAR
    user_password TEXT,
    first_name TEXT,
    last_name TEXT,
    sign_up_on DATE,
    email_id TEXT
);
CREATE TABLE IF NOT EXISTS publisher (
    publisher_id VARCHAR(255) PRIMARY KEY,  -- Changed from TEXT to VARCHAR
    publisher TEXT,
    distributor TEXT,
    releases_count INT,
    last_release DATE
);

CREATE TABLE IF NOT EXISTS author (
    author_id VARCHAR(255) PRIMARY KEY,  -- Changed from TEXT to VARCHAR
    first_name TEXT,
    last_name TEXT,
    publications_count INT
);

CREATE TABLE IF NOT EXISTS books (
    book_id VARCHAR(255) PRIMARY KEY,  -- Changed from TEXT to VARCHAR
    book_code TEXT,
    book_name TEXT,
    author_id VARCHAR(255),  -- Changed from TEXT to VARCHAR
    publisher_id VARCHAR(255),  -- Changed from TEXT to VARCHAR
    book_version TEXT,
    release_date DATE,
    available_from DATE,
    is_available BOOLEAN,
    FOREIGN KEY (author_id) REFERENCES author(author_id),
    FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id)
);

CREATE TABLE IF NOT EXISTS readers (
    reader_id VARCHAR(255) PRIMARY KEY,  -- Changed from TEXT to VARCHAR
    first_name TEXT,
    last_name TEXT,
    registered_on DATE,
    books_issued_total INT,
    books_issued_current INT,
    is_issued BOOLEAN,
    last_issue_date DATE,
    total_fine FLOAT,
    current_fine FLOAT
);

CREATE TABLE IF NOT EXISTS books_issue (
    issue_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id VARCHAR(255),  -- Changed from TEXT to VARCHAR
    issued_to VARCHAR(255),  -- Changed from TEXT to VARCHAR
    issued_on DATE,
    return_on DATE,
    current_fine FLOAT,
    fine_paid BOOLEAN,
    payment_transaction_id TEXT,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (issued_to) REFERENCES readers(reader_id)
);

CREATE TABLE IF NOT EXISTS staff (
    staff_id VARCHAR(255) PRIMARY KEY,  -- Changed from TEXT to VARCHAR
    first_name TEXT,
    last_name TEXT,
    staff_role TEXT,
    start_date DATE,
    last_date DATE,
    is_active BOOLEAN,
    work_shift_start TIME,
    work_shift_end TIME
);



